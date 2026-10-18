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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A263700: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263700, there is no canonical definition to state claims against.
-/

/-! ## A263700.P4610494296747585651

`A263703(∑[n+5]+6)`
-/

namespace A263700.P4610494296747585651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263700.P4610494296747585651

/-! ## A263700.P10911598409139253678

`abs(1-A263703(Δ[A264443(n)]))+1`
-/

namespace A263700.P10911598409139253678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A263703 (f1 (n + 1) - f1 n).toNat| + 1

end

end A263700.P10911598409139253678

/-! ## A263700.P1787967214397385301

`or(char[9], A263703(A056000(n+1)+6))`
-/

namespace A263700.P1787967214397385301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263703 (A056000 (n + 1) + 6).toNat)

end

end A263700.P1787967214397385301

/-! ## A263700.P12088692576365077835

`gcd(n, n+1)*A263703(A046691(n+3))`
-/

namespace A263700.P12088692576365077835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A263703 (A046691 (n + 3)).toNat

end

end A263700.P12088692576365077835

/-! ## A263700.P359752680330574010

`A263703(A046691(n+3))%A002721(n+2)`
-/

namespace A263700.P359752680330574010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263703 (A046691 (n + 3)).toNat) (A002721 (n + 2))

end

end A263700.P359752680330574010

/-!
# A263701: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263701, there is no canonical definition to state claims against.
-/

/-! ## A263701.P12123121803270787492

`A263703(∑[n+6]+10)`
-/

namespace A263701.P12123121803270787492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A263701.P12123121803270787492

/-! ## A263701.P16312844242474725994

`A263703(A055999(n+3)+1)+char[30]`
-/

namespace A263701.P16312844242474725994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A055999 (n + 3) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263701.P16312844242474725994

/-! ## A263701.P9570936793205143226

`lcm((-1)^n, A263703(A052905(n+3)))`
-/

namespace A263701.P9570936793205143226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A263703 (A052905 (n + 3)).toNat)

end

end A263701.P9570936793205143226

/-! ## A263701.P14488973227166886494

`A014963(6*(n+1))*A263703(A052905(n+3))`
-/

namespace A263701.P14488973227166886494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A263703 (A052905 (n + 3)).toNat

end

end A263701.P14488973227166886494

/-! ## A263701.P13256408905532535065

`A000045(A014963(2*(n+1)))*A263703(A055999(n+3)+1)`
-/

namespace A263701.P13256408905532535065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A263703 (A055999 (n + 3) + 1).toNat

end

end A263701.P13256408905532535065

/-!
# A263702: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263702, there is no canonical definition to state claims against.
-/

/-! ## A263702.P12683456922436865880

`A263703(A055999(n+4))`
-/

namespace A263702.P12683456922436865880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A055999 (n + 4)).toNat

end

end A263702.P12683456922436865880

/-! ## A263702.P7017877485734495711

`A263703(A134227(n+5))`
-/

namespace A263702.P7017877485734495711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A134227 (n + 5)).toNat

end

end A263702.P7017877485734495711

/-! ## A263702.P8169824671784254825

`A263703(eq[4, A219347(n)])`
-/

namespace A263702.P8169824671784254825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263702.P8169824671784254825

/-! ## A263702.P14849603614401091521

`A263703(eq[6, A193592(n)])`
-/

namespace A263702.P14849603614401091521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263702.P14849603614401091521

/-! ## A263702.P10810923438861040135

`A263703(Δ[A023551(n+2)])`
-/

namespace A263702.P10810923438861040135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (f1 (n + 1) - f1 n).toNat

end

end A263702.P10810923438861040135

/-!
# A263703: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263703, there is no canonical definition to state claims against.
-/

/-! ## A263703.P4218036157208428108

`A263752(3^C(a(n-1), 68)+n)` with `a(0)=1`
-/

namespace A263703.P4218036157208428108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263752 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A263703.P4218036157208428108

/-! ## A263703.P4744717693584544437

`A306209(lt[1, A156280(n)])`
-/

namespace A263703.P4744717693584544437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263703.P4744717693584544437

/-! ## A263703.P11569751372934327236

`A263752(n+1)%A222588(n)`
-/

namespace A263703.P11569751372934327236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263752 (n + 1)) (A222588 n)

end

end A263703.P11569751372934327236

/-! ## A263703.P1124730535173127241

`and(A152388(n+1), A263752(n+1))`
-/

namespace A263703.P1124730535173127241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A263752 (n + 1))

end

end A263703.P1124730535173127241

/-! ## A263703.P2434504697972379827

`and(A263752(n+1), A383046(n+3))`
-/

namespace A263703.P2434504697972379827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263752 (n + 1)) (A383046 (n + 3))

end

end A263703.P2434504697972379827

/-!
# A263704: Number of (n+2)X(1+2) arrays of permutations of 0..n*3+5 with each element moved 0 or 1 knight moves and equal numbers of elements advancing and retreating in the array numbered in row major order.

The programs for A263704, there is no canonical definition to state claims against.
-/

/-! ## A263704.P10328523452747352114

`A263706(∑[n+1])`
-/

namespace A263704.P10328523452747352114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263706 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263704.P10328523452747352114

/-! ## A263704.P8340679615585570600

`record[A263706(A130302(n+1))]`
-/

namespace A263704.P8340679615585570600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263706 (A130302 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263704.P8340679615585570600

/-!
# A263705: Number of (n+2)X(2+2) arrays of permutations of 0..n*4+7 with each element moved 0 or 1 knight moves and equal numbers of elements advancing and retreating in the array numbered in row major order.

The programs for A263705, there is no canonical definition to state claims against.
-/

/-! ## A263705.P7643317373357639105

`A263706(∑[n+2])`
-/

namespace A263705.P7643317373357639105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263706 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263705.P7643317373357639105

/-!
# A263707: Number of (1+2)X(n+2) arrays of permutations of 0..n*3+5 with each element moved 0 or 1 knight moves and equal numbers of elements advancing and retreating in the array numbered in row major order.

The programs for A263707, there is no canonical definition to state claims against.
-/

/-! ## A263707.P12565540518988897248

`A263706(∑[n]+1)`
-/

namespace A263707.P12565540518988897248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263706 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263707.P12565540518988897248

/-! ## A263707.P18131306417071123847

`A263706(A000217(n)+1)+char[10]`
-/

namespace A263707.P18131306417071123847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263706 (A000217 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263707.P18131306417071123847

/-! ## A263707.P6445559225589907925

`record[A010054(n)*A263706(n+1)]`
-/

namespace A263707.P6445559225589907925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263707.P6445559225589907925

/-!
# A263708: Number of (2+2) X (n+2) arrays of permutations of 0..n*4+7 with each element moved 0 or 1 knight moves and equal numbers of elements advancing and retreating in the array numbered in row major order.

The programs for A263708, there is no canonical definition to state claims against.
-/

/-! ## A263708.P1985444182627649759

`A263706(∑[n+1]+2)`
-/

namespace A263708.P1985444182627649759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263706 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263708.P1985444182627649759

/-! ## A263708.P15460369839481041537

`record[A010054(n+1)*A263706(n+3)]`
-/

namespace A263708.P15460369839481041537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A263706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263708.P15460369839481041537

/-!
# A263709: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and every four consecutive elements having its maximum within 4 of its minimum.

The programs for A263709, there is no canonical definition to state claims against.
-/

/-! ## A263709.P3617083601027264701

`A110592(n)*A263713(n+1)`
-/

namespace A263709.P3617083601027264701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n * A263713 (n + 1)

end

end A263709.P3617083601027264701

/-! ## A263709.P3232120679007130897

`A060417(n+1)*A263713(n+1)`
-/

namespace A263709.P3232120679007130897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060417 (n + 1) * A263713 (n + 1)

end

end A263709.P3232120679007130897

/-! ## A263709.P13570932613625162069

`A069926(n+1)*A263713(n+1)`
-/

namespace A263709.P13570932613625162069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069926 (n + 1) * A263713 (n + 1)

end

end A263709.P13570932613625162069

/-! ## A263709.P15095580817557558799

`A168353(n+1)*A263713(n+1)`
-/

namespace A263709.P15095580817557558799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168353 (n + 1) * A263713 (n + 1)

end

end A263709.P15095580817557558799

/-! ## A263709.P14179446188395579801

`A217693(n+1)*A263713(n+1)`
-/

namespace A263709.P14179446188395579801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217693 (n + 1) * A263713 (n + 1)

end

end A263709.P14179446188395579801

/-!
# A263710: Number of length n arrays of permutations of 0..n-1 with each element moved by -1 to 1 places and every four consecutive elements having its maximum within 4 of its minimum.

The programs for A263710, the canonical program `A263710.P8025919893343881187` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263710 has offset 1).

The definition of A263710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263710.P8025919893343881187

`a(n-1)+a(n-3)-a(n-4)+2*a(n-5)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8, a(5)=11, a(6)=17`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263710

/-- `a(n-1)+a(n-3)-a(n-4)+2*a(n-5)-a(n-6)+a(n-7)` -/
def P8025919893343881187.Spec : Prop :=
  ∀ n, P8025919893343881187.a n = A263710 (n + 1)

theorem P8025919893343881187.correct : P8025919893343881187.Spec := by
  intro n
  simp only [A263710, Nat.add_sub_cancel]

end A263710

/-! ## A263710.P16284885360689295028

`A263714(∑[n+1])`
-/

namespace A263710.P16284885360689295028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263710.P16284885360689295028

namespace A263710

/-- `A263714(∑[n+1])` -/
def P16284885360689295028.Spec : Prop :=
  ∀ n, P16284885360689295028.a n = A263710 (n + 1)

end A263710

/-! ## A263710.P18055779295807006839

`record[A263714(∑[A110091(n)])]`
-/

namespace A263710.P18055779295807006839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263710.P18055779295807006839

namespace A263710

/-- `record[A263714(∑[A110091(n)])]` -/
def P18055779295807006839.Spec : Prop :=
  ∀ n, P18055779295807006839.a n = A263710 (n + 1)

end A263710

/-! ## A263710.P13640610734945553251

`record[A263714(A134519(n+1))]`
-/

namespace A263710.P13640610734945553251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263710.P13640610734945553251

namespace A263710

/-- `record[A263714(A134519(n+1))]` -/
def P13640610734945553251.Spec : Prop :=
  ∀ n, P13640610734945553251.a n = A263710 (n + 1)

end A263710

/-! ## A263710.P1896159360242926831

`record[A263714(A160791(n+1))]`
-/

namespace A263710.P1896159360242926831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (A160791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263710.P1896159360242926831

namespace A263710

/-- `record[A263714(A160791(n+1))]` -/
def P1896159360242926831.Spec : Prop :=
  ∀ n, P1896159360242926831.a n = A263710 (n + 1)

end A263710

/-!
# A263711: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and every four consecutive elements having its maximum within 4 of its minimum.

The programs for A263711, there is no canonical definition to state claims against.
-/

/-! ## A263711.P9811162555889295773

`A263714(∑[n+2])`
-/

namespace A263711.P9811162555889295773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263711.P9811162555889295773

/-! ## A263711.P14828516422123550985

`and(-1, A263714(A000096(n+1)))`
-/

namespace A263711.P14828516422123550985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A263714 (A000096 (n + 1)).toNat)

end

end A263711.P14828516422123550985

/-! ## A263711.P6432662510582942363

`record[gcd(A222730(n), A263714(n+1))]`
-/

namespace A263711.P6432662510582942363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222730 n) (A263714 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263711.P6432662510582942363

/-! ## A263711.P3779006593174351019

`record[round(A263714(n+1)/A094437(n+2))]`
-/

namespace A263711.P3779006593174351019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A263714 (n + 1) : ℚ) / (A094437 (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263711.P3779006593174351019

/-! ## A263711.P5263655815306596415

`A007318(C(2, n))*A263714(A000096(n+1))`
-/

namespace A263711.P5263655815306596415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263714 (A000096 (n + 1)).toNat

end

end A263711.P5263655815306596415

/-!
# A263712: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and every four consecutive elements having its maximum within 4 of its minimum.

The programs for A263712, there is no canonical definition to state claims against.
-/

/-! ## A263712.P12331036217798152280

`A263714(∑[n+3]+1)`
-/

namespace A263712.P12331036217798152280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263712.P12331036217798152280

/-! ## A263712.P7791635285572729927

`A263714(A034856(n+2))+char[32]`
-/

namespace A263712.P7791635285572729927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263712.P7791635285572729927

/-! ## A263712.P9287496930723651725

`A263714(A034856(n+2))%A129126(n+1)`
-/

namespace A263712.P9287496930723651725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263714 (A034856 (n + 2)).toNat) (A129126 (n + 1))

end

end A263712.P9287496930723651725

/-! ## A263712.P15812797175461613027

`A007318(C(2, n))*A263714(A034856(n+2))`
-/

namespace A263712.P15812797175461613027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263714 (A034856 (n + 2)).toNat

end

end A263712.P15812797175461613027

/-!
# A263713: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and every four consecutive elements having its maximum within 4 of its minimum.

The programs for A263713, there is no canonical definition to state claims against.
-/

/-! ## A263713.P14600145197336985428

`A263714(∑[n+4]+3)`
-/

namespace A263713.P14600145197336985428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263713.P14600145197336985428

/-! ## A263713.P16478235664902257412

`lcm((-1)^n, A263714(A027379(n+2)))`
-/

namespace A263713.P16478235664902257412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A263714 (A027379 (n + 2)).toNat)

end

end A263713.P16478235664902257412

/-! ## A263713.P11707147789727810587

`A263714(A027379(n+2))%A000915(n+1)`
-/

namespace A263713.P11707147789727810587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263714 (A027379 (n + 2)).toNat) (A000915 (n + 1))

end

end A263713.P11707147789727810587

/-! ## A263713.P8796452205383337721

`A263709(n+1)/A110592(n)`
-/

namespace A263713.P8796452205383337721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263709 (n + 1) : ℚ) / (A110592 n : ℚ)

end

end A263713.P8796452205383337721

/-! ## A263713.P6650459578720362651

`A263709(n+1)/A060417(n+1)`
-/

namespace A263713.P6650459578720362651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263709 (n + 1) : ℚ) / (A060417 (n + 1) : ℚ)

end

end A263713.P6650459578720362651

/-!
# A263714: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and every four consecutive elements having its maximum within 4 of its minimum.

The programs for A263714, there is no canonical definition to state claims against.
-/

/-! ## A263714.P7751072876735046094

`A263703(n+1)-A014082(A100851(n))`
-/

namespace A263714.P7751072876735046094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (n + 1) - A014082 (A100851 n).toNat

end

end A263714.P7751072876735046094

/-! ## A263714.P11788196267169393248

`A263752(n+1)-A014082(A100851(n))`
-/

namespace A263714.P11788196267169393248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (n + 1) - A014082 (A100851 n).toNat

end

end A263714.P11788196267169393248

/-! ## A263714.P17138525372254892841

`A000196(A057889(A263703(n+1))²)`
-/

namespace A263714.P17138525372254892841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A057889 (A263703 (n + 1)).toNat ^ 2).toNat

end

end A263714.P17138525372254892841

/-! ## A263714.P15382368731583798590

`A122197(A057889(A263752(n+1))²)`
-/

namespace A263714.P15382368731583798590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A057889 (A263752 (n + 1)).toNat ^ 2).toNat

end

end A263714.P15382368731583798590

/-! ## A263714.P18200131181404196260

`A057889(lcm(A178686(n)!, A263703(n+1)))`
-/

namespace A263714.P18200131181404196260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lcm (Nat.factorial (A178686 n).toNat : ℤ) (A263703 (n + 1)))

end

end A263714.P18200131181404196260

/-!
# A263715: Nonnegative integers that are the sum or difference of two squares.

The programs for A263715, the canonical program `A263715.P12750305825610141629` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263715 has offset 1).

The definition of A263715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263715.P4123691008322257612

`comp[A062316(n+1)]`
-/

namespace A263715.P4123691008322257612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A263715.P4123691008322257612

namespace A263715

/-- `comp[A062316(n+1)]` -/
def P4123691008322257612.Spec : Prop :=
  ∀ n, (P4123691008322257612.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P16588323381596605026

`∪[A000404(n+1), A107750(n)]`
-/

namespace A263715.P16588323381596605026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P16588323381596605026

namespace A263715

/-- `∪[A000404(n+1), A107750(n)]` -/
def P16588323381596605026.Spec : Prop :=
  ∀ n, (P16588323381596605026.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P7424486616559777938

`∪[A000415(n+1), A107750(n)]`
-/

namespace A263715.P7424486616559777938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P7424486616559777938

namespace A263715

/-- `∪[A000415(n+1), A107750(n)]` -/
def P7424486616559777938.Spec : Prop :=
  ∀ n, (P7424486616559777938.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P9391618164529585687

`∪[A001481(n+1), A107750(n)]`
-/

namespace A263715.P9391618164529585687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P9391618164529585687

namespace A263715

/-- `∪[A001481(n+1), A107750(n)]` -/
def P9391618164529585687.Spec : Prop :=
  ∀ n, (P9391618164529585687.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P1348663943127650523

`∪[A005792(n+1), A107750(n)]`
-/

namespace A263715.P1348663943127650523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P1348663943127650523

namespace A263715

/-- `∪[A005792(n+1), A107750(n)]` -/
def P1348663943127650523.Spec : Prop :=
  ∀ n, (P1348663943127650523.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P15856523028383866576

`∪[A046711(n+1), A107750(n)]`
-/

namespace A263715.P15856523028383866576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P15856523028383866576

namespace A263715

/-- `∪[A046711(n+1), A107750(n)]` -/
def P15856523028383866576.Spec : Prop :=
  ∀ n, (P15856523028383866576.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P12750305825610141629

`∪[A097269(n+1), A107750(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A263715

/-- `∪[A097269(n+1), A107750(n)]` -/
def P12750305825610141629.Spec : Prop :=
  ∀ n, (P12750305825610141629.a n : ℤ) = A263715 (n + 1)

theorem P12750305825610141629.correct : P12750305825610141629.Spec := by
  intro n
  simp only [A263715, Nat.add_sub_cancel]

end A263715

/-! ## A263715.P2012331262685083490

`∪[A128106(n+1), A107750(n)]`
-/

namespace A263715.P2012331262685083490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P2012331262685083490

namespace A263715

/-- `∪[A128106(n+1), A107750(n)]` -/
def P2012331262685083490.Spec : Prop :=
  ∀ n, (P2012331262685083490.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P9692339747055401439

`∪[A180161(n+1), A107750(n)]`
-/

namespace A263715.P9692339747055401439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P9692339747055401439

namespace A263715

/-- `∪[A180161(n+1), A107750(n)]` -/
def P9692339747055401439.Spec : Prop :=
  ∀ n, (P9692339747055401439.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P16767192626722386788

`∪[A271787(n+1), A107750(n)]`
-/

namespace A263715.P16767192626722386788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P16767192626722386788

namespace A263715

/-- `∪[A271787(n+1), A107750(n)]` -/
def P16767192626722386788.Spec : Prop :=
  ∀ n, (P16767192626722386788.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P13383784756905906244

`∪[A005792(n+1), A042965(n+1)]`
-/

namespace A263715.P13383784756905906244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P13383784756905906244

namespace A263715

/-- `∪[A005792(n+1), A042965(n+1)]` -/
def P13383784756905906244.Spec : Prop :=
  ∀ n, (P13383784756905906244.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P6728743851545465803

`∪[A042965(n+1), A128106(n+1)]`
-/

namespace A263715.P6728743851545465803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P6728743851545465803

namespace A263715

/-- `∪[A042965(n+1), A128106(n+1)]` -/
def P6728743851545465803.Spec : Prop :=
  ∀ n, (P6728743851545465803.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P16756101875606352676

`∪[A042965(n+1), A271787(n+1)]`
-/

namespace A263715.P16756101875606352676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P16756101875606352676

namespace A263715

/-- `∪[A042965(n+1), A271787(n+1)]` -/
def P16756101875606352676.Spec : Prop :=
  ∀ n, (P16756101875606352676.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P3378508613416639231

`lt[A263765(n)-1, 2]`
-/

namespace A263715.P3378508613416639231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263715.P3378508613416639231

namespace A263715

/-- `lt[A263765(n)-1, 2]` -/
def P3378508613416639231.Spec : Prop :=
  ∀ n, (P3378508613416639231.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P3415236852964516723

`eq[A169695(n), A263765(n)]`
-/

namespace A263715.P3415236852964516723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263715.P3415236852964516723

namespace A263715

/-- `eq[A169695(n), A263765(n)]` -/
def P3415236852964516723.Spec : Prop :=
  ∀ n, (P3415236852964516723.a n : ℤ) = A263715 (n + 1)

end A263715

/-! ## A263715.P16084345640428529001

`eq[A229062(n), A229062(A316631(n))]`
-/

namespace A263715.P16084345640428529001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A316631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263715.P16084345640428529001

namespace A263715

/-- `eq[A229062(n), A229062(A316631(n))]` -/
def P16084345640428529001.Spec : Prop :=
  ∀ n, (P16084345640428529001.a n : ℤ) = A263715 (n + 1)

end A263715

/-!
# A263717: Number of partitions of n into perfect odd powers (1 being excluded).

The programs for A263717, there is no canonical definition to state claims against.
-/

/-! ## A263717.P9495945861701059067

`A335453(A316563(n+1))`
-/

namespace A263717.P9495945861701059067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A316563 (n + 1)).toNat

end

end A263717.P9495945861701059067

/-! ## A263717.P251740343808595668

`A119027(n)%A162510(n+1)`
-/

namespace A263717.P251740343808595668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119027 n) (A162510 (n + 1))

end

end A263717.P251740343808595668

/-! ## A263717.P14079145532608935138

`A036632(n)%A290106(n+1)`
-/

namespace A263717.P14079145532608935138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036632 n) (A290106 (n + 1))

end

end A263717.P14079145532608935138

/-! ## A263717.P4405608726879964385

`A336901(n)%A033272(n+1)`
-/

namespace A263717.P4405608726879964385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336901 n) (A033272 (n + 1))

end

end A263717.P4405608726879964385

/-! ## A263717.P1209159345276182448

`A091807(n)%A336651(n+1)`
-/

namespace A263717.P1209159345276182448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091807 n) (A336651 (n + 1))

end

end A263717.P1209159345276182448

/-!
# A263720: Palindromic numbers such that the sum of the digits equals the number of divisors.

The programs for A263720, there is no canonical definition to state claims against.
-/

/-! ## A263720.P9482423112997087418

`∩[A002113(n+1), A057531(n+1)]`
-/

namespace A263720.P9482423112997087418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263720.P9482423112997087418

/-! ## A263720.P5913729453157210136

`record[A047813(A057531(n+1))]`
-/

namespace A263720.P5913729453157210136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A057531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263720.P5913729453157210136

/-! ## A263720.P45271033480805857

`filter[A057531(n+1), A136522(#)]`
-/

namespace A263720.P45271033480805857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A263720.P45271033480805857

/-! ## A263720.P7057192328302283426

`∩[A057531(n+1), A281625(n+1)]`
-/

namespace A263720.P7057192328302283426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263720.P7057192328302283426

/-!
# A263721: The prime p in the Fouvry-Iwaniec prime k^2 + p^2 (A185086), or the larger of k and p if both are prime.

The programs for A263721, there is no canonical definition to state claims against.
-/

/-! ## A263721.P13788602800057610450

`p?[A325742(n+1)+A002972(n+1)]`
-/

namespace A263721.P13788602800057610450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325742 (n + 1) + A002972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263721.P13788602800057610450

/-!
# A263722: Integers k > 0 such that k^2 + p^2 is composite for all primes p.

The programs for A263722, there is no canonical definition to state claims against.
-/

/-! ## A263722.P22862466506592823

`eq[1, A107393(n²+4)]`
-/

namespace A263722.P22862466506592823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263722.P22862466506592823

/-! ## A263722.P5200578395940104237

`comp[∪[2*n, A007591(n+1)]]`
-/

namespace A263722.P5200578395940104237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A263722.P5200578395940104237

/-! ## A263722.P18070636472266121550

`eq[n²+4, A171435(n²+4)]`
-/

namespace A263722.P18070636472266121550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263722.P18070636472266121550

/-! ## A263722.P7454581713004431135

`eq[and(1, n+1), A010051(n²+4)]`
-/

namespace A263722.P7454581713004431135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263722.P7454581713004431135

/-! ## A263722.P1232750524558561962

`lt[1, A001222((n^(n%2))²+4)]`
-/

namespace A263722.P1232750524558561962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n ^ (n % 2)) ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263722.P1232750524558561962

/-! ## A263722.P3662277319557102182

`lt[A040341(n), A001222(n²+4)]`
-/

namespace A263722.P3662277319557102182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263722.P3662277319557102182

/-! ## A263722.P18265019507507324630

`lt[1, A001222(n^A010673(n)+4)]`
-/

namespace A263722.P18265019507507324630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A010673 n : ℤ) + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263722.P18265019507507324630

/-! ## A263722.P14718242758922471272

`eq[A008683(17-a(n-1)), A010051(n²+4)]` with `a(0)=1`
-/

namespace A263722.P14718242758922471272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008683 (17 - f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263722.P14718242758922471272

/-! ## A263722.P4739240737963664340

`lt[A006530(A087475(n)), A093178(n)²]`
-/

namespace A263722.P4739240737963664340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263722.P4739240737963664340

/-! ## A263722.P8371178064587169008

`lt[A006530(A155966(n)), A093178(n)²]`
-/

namespace A263722.P8371178064587169008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155966 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263722.P8371178064587169008

/-!
# A263723: Number of representations of the prime P = A182479(n) as P = p^2 + q^2 + r^2, where p < q < r are also primes.

The programs for A263723, there is no canonical definition to state claims against.
-/

/-! ## A263723.P3877701541989000975

`gcd(A321453(n+1), A321468(A080100(n)))`
-/

namespace A263723.P3877701541989000975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321453 (n + 1)) (A321468 (A080100 n).toNat)

end

end A263723.P3877701541989000975

/-! ## A263723.P11352455170985310496

`gcd(A001222(A000120(3*(n+1))), A106219(n))`
-/

namespace A263723.P11352455170985310496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A000120 (3 * (n + 1))).toNat) (A106219 n)

end

end A263723.P11352455170985310496

/-! ## A263723.P17908550885217525154

`A327168(A061312(n)%(22^∑{e}[n+1, #]))`
-/

namespace A263723.P17908550885217525154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (Int.tmod (A061312 n) (22 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)).toNat

end

end A263723.P17908550885217525154

/-!
# A263724: Least prime p = prime(n)^2 + prime(n+1)^2 + prime(n+2)^2 + prime(n+3)^2 + q^2, where q > prime(n+3) is also prime.

The programs for A263724, there is no canonical definition to state claims against.
-/

/-! ## A263724.P13910288934299891781

`A133524(n+2)+A263725(n+2)²`
-/

namespace A263724.P13910288934299891781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (n + 2) + A263725 (n + 2) ^ 2

end

end A263724.P13910288934299891781

/-!
# A263725: Smallest prime q > prime(n+3) such that the number p = prime(n)^2 + prime(n+1)^2 + prime(n+2)^2 + prime(n+3)^2 + q^2 is also prime.

The programs for A263725, there is no canonical definition to state claims against.
-/

/-! ## A263725.P3497279172736243459

`sqrt(A263724(n+2)-A133524(n+2))`
-/

namespace A263725.P3497279172736243459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A263724 (n + 2) - A133524 (n + 2) : ℝ)

end

end A263725.P3497279172736243459

/-! ## A263725.P16849821815470837062

`A006530(A263724(n+2)-A133524(n+2))`
-/

namespace A263725.P16849821815470837062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A263724 (n + 2) - A133524 (n + 2)).toNat

end

end A263725.P16849821815470837062

/-! ## A263725.P12614896624771807644

`A020639(A263724(n+2)-A133524(n+2))`
-/

namespace A263725.P12614896624771807644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A263724 (n + 2) - A133524 (n + 2)).toNat

end

end A263725.P12614896624771807644

/-! ## A263725.P13101665654257062087

`A014963(A263724(n+2)-A133524(n+2))`
-/

namespace A263725.P13101665654257062087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A263724 (n + 2) - A133524 (n + 2)).toNat

end

end A263725.P13101665654257062087

/-!
# A263726: Least prime p such that p^2 + A263977(n)^2 is prime.

The programs for A263726, there is no canonical definition to state claims against.
-/

/-! ## A263726.P3695012641979690493

`p?[A263978(n+1)]`
-/

namespace A263726.P3695012641979690493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263726.P3695012641979690493

/-! ## A263726.P6801750775401675345

`A263978(A263977(n+1))`
-/

namespace A263726.P6801750775401675345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (A263977 (n + 1)).toNat

end

end A263726.P6801750775401675345

/-! ## A263726.P6380625806586026013

`filter[A263978(n+1), A014306(#)]`
-/

namespace A263726.P6380625806586026013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A263726.P6380625806586026013

/-! ## A263726.P11267636505656714201

`filter[A263978(n+1), A097325(#)]`
-/

namespace A263726.P11267636505656714201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A263726.P11267636505656714201

/-! ## A263726.P557409748747230561

`filter[A263978(n+1), A098725(#)]`
-/

namespace A263726.P557409748747230561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A263726.P557409748747230561

/-! ## A263726.P6890007982454488507

`filter[A263978(n+1), A115517(#)]`
-/

namespace A263726.P6890007982454488507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A263726.P6890007982454488507

/-! ## A263726.P13686813800378276753

`filter[A263978(n+1), A144609(#)]`
-/

namespace A263726.P13686813800378276753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144609 (f1 j).toNat = 1) n)

end

end A263726.P13686813800378276753

/-! ## A263726.P9620439532125501851

`filter[A263978(n+1), A165560(#)]`
-/

namespace A263726.P9620439532125501851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A263726.P9620439532125501851

/-! ## A263726.P13911803772699523357

`filter[A263978(n+1), A166486(#)]`
-/

namespace A263726.P13911803772699523357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A263726.P13911803772699523357

/-! ## A263726.P10926764155570277713

`filter[A263978(n+1), A168046(#)]`
-/

namespace A263726.P10926764155570277713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A263726.P10926764155570277713

/-!
# A263727: Largest square number less than or equal to the n-th Fibonacci number.

The programs for A263727, the canonical program `A263727.P9447933061179139825` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263727 has offset 0).

The definition of A263727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263727.P11670263014393085431

`A061287(n)²`
-/

namespace A263727.P11670263014393085431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061287 n ^ 2

end

end A263727.P11670263014393085431

namespace A263727

/-- `A061287(n)²` -/
def P11670263014393085431.Spec : Prop :=
  ∀ n, P11670263014393085431.a n = A263727 n

end A263727

/-! ## A263727.P9447933061179139825

`A048760(A000045(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263727

/-- `A048760(A000045(n))` -/
def P9447933061179139825.Spec : Prop :=
  ∀ n, P9447933061179139825.a n = A263727 n

theorem P9447933061179139825.correct : P9447933061179139825.Spec := by
  intro n
  simp only [A263727]

end A263727

/-! ## A263727.P9141851559662627812

`floor(sqrt(A212804(n+1)))²`
-/

namespace A263727.P9141851559662627812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A212804 (n + 1)) ^ 2

end

end A263727.P9141851559662627812

namespace A263727

/-- `floor(sqrt(A212804(n+1)))²` -/
def P9141851559662627812.Spec : Prop :=
  ∀ n, P9141851559662627812.a n = A263727 n

end A263727

/-! ## A263727.P4453190465498292605

`floor(sqrt(A103609(2*n)))²`
-/

namespace A263727.P4453190465498292605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A103609 (2 * n)) ^ 2

end

end A263727.P4453190465498292605

namespace A263727

/-- `floor(sqrt(A103609(2*n)))²` -/
def P4453190465498292605.Spec : Prop :=
  ∀ n, P4453190465498292605.a n = A263727 n

end A263727

/-! ## A263727.P754176371676496846

`floor(sqrt(A129982(2*n+1)))²`
-/

namespace A263727.P754176371676496846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A129982 (2 * n + 1)) ^ 2

end

end A263727.P754176371676496846

namespace A263727

/-- `floor(sqrt(A129982(2*n+1)))²` -/
def P754176371676496846.Spec : Prop :=
  ∀ n, P754176371676496846.a n = A263727 n

end A263727

/-! ## A263727.P4589000848279031601

`A000045(n)-A190993(n)`
-/

namespace A263727.P4589000848279031601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A190993 n

end

end A263727.P4589000848279031601

namespace A263727

/-- `A000045(n)-A190993(n)` -/
def P4589000848279031601.Spec : Prop :=
  ∀ n, P4589000848279031601.a n = A263727 n

end A263727

/-! ## A263727.P5545416813134714210

`floor(sqrt(A000045(n)))^A020639(2*(n+1))`
-/

namespace A263727.P5545416813134714210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A000045 n) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A263727.P5545416813134714210

namespace A263727

/-- `floor(sqrt(A000045(n)))^A020639(2*(n+1))` -/
def P5545416813134714210.Spec : Prop :=
  ∀ n, P5545416813134714210.a n = (A263727 n : ℚ)

end A263727

/-! ## A263727.P2119389511389692996

`floor(sqrt(A053602(2*n)))²`
-/

namespace A263727.P2119389511389692996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A053602 (2 * n)) ^ 2

end

end A263727.P2119389511389692996

namespace A263727

/-- `floor(sqrt(A053602(2*n)))²` -/
def P2119389511389692996.Spec : Prop :=
  ∀ n, P2119389511389692996.a n = A263727 n

end A263727

/-! ## A263727.P6279055127991677469

`floor(sqrt(A302126(2*n)))²`
-/

namespace A263727.P6279055127991677469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A302126 (2 * n)) ^ 2

end

end A263727.P6279055127991677469

namespace A263727

/-- `floor(sqrt(A302126(2*n)))²` -/
def P6279055127991677469.Spec : Prop :=
  ∀ n, P6279055127991677469.a n = A263727 n

end A263727

/-! ## A263727.P9459841635947931198

`floor(sqrt(round(ϕ^n/sqrt(5))))²`
-/

namespace A263727.P9459841635947931198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))) ^ 2

end

end A263727.P9459841635947931198

namespace A263727

/-- `floor(sqrt(round(ϕ^n/sqrt(5))))²` -/
def P9459841635947931198.Spec : Prop :=
  ∀ n, P9459841635947931198.a n = A263727 n

end A263727

/-! ## A263727.P10896026844780389175

`floor(sqrt(Δ[A000045(n+1)]))^2`
-/

namespace A263727.P10896026844780389175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n) ^ 2

end

end A263727.P10896026844780389175

namespace A263727

/-- `floor(sqrt(Δ[A000045(n+1)]))^2` -/
def P10896026844780389175.Spec : Prop :=
  ∀ n, P10896026844780389175.a n = A263727 n

end A263727

/-!
# A263729: Primes p where (p - 1)/k - 1 is not prime for any integer k >= 1.

The programs for A263729, the canonical program `A263729.P8218952625031793335` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263729 has offset 1).

The definition of A263729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263729.P11622080600573933612

`record[A020639(gcd(n+2, A322977(n+1)))]`
-/

namespace A263729.P11622080600573933612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n + 2 : ℤ) (A322977 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263729.P11622080600573933612

namespace A263729

/-- `record[A020639(gcd(n+2, A322977(n+1)))]` -/
def P11622080600573933612.Spec : Prop :=
  ∀ n, P11622080600573933612.a n = A263729 (n + 1)

end A263729

/-! ## A263729.P17278557121916562084

`p?[lt[A322702(n+1), 2]+2]`
-/

namespace A263729.P17278557121916562084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263729.P17278557121916562084

namespace A263729

/-- `p?[lt[A322702(n+1), 2]+2]` -/
def P17278557121916562084.Spec : Prop :=
  ∀ n, (P17278557121916562084.a n : ℤ) = A263729 (n + 1)

end A263729

/-! ## A263729.P9343857845164623128

`record[A006530(n+2)/A322702(n+1)]`
-/

namespace A263729.P9343857845164623128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / (A322702 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263729.P9343857845164623128

namespace A263729

/-- `record[A006530(n+2)/A322702(n+1)]` -/
def P9343857845164623128.Spec : Prop :=
  ∀ n, P9343857845164623128.a n = (A263729 (n + 1) : ℚ)

end A263729

/-! ## A263729.P15263690032412664924

`record[A020639(n+2)/A322702(n+1)]`
-/

namespace A263729.P15263690032412664924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / (A322702 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263729.P15263690032412664924

namespace A263729

/-- `record[A020639(n+2)/A322702(n+1)]` -/
def P15263690032412664924.Spec : Prop :=
  ∀ n, P15263690032412664924.a n = (A263729 (n + 1) : ℚ)

end A263729

/-! ## A263729.P8218952625031793335

`p?[lt[A072627(n+1), 1]+2]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A263729

/-- `p?[lt[A072627(n+1), 1]+2]` -/
def P8218952625031793335.Spec : Prop :=
  ∀ n, (P8218952625031793335.a n : ℤ) = A263729 (n + 1)

theorem P8218952625031793335.correct : P8218952625031793335.Spec := by
  intro n
  simp only [A263729, Nat.add_sub_cancel]

end A263729

/-! ## A263729.P4994336252814108970

`p?[(n+2)*A004396(A323156(n+1))]`
-/

namespace A263729.P4994336252814108970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A004396 (A323156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263729.P4994336252814108970

namespace A263729

/-- `p?[(n+2)*A004396(A323156(n+1))]` -/
def P4994336252814108970.Spec : Prop :=
  ∀ n, P4994336252814108970.a n = A263729 (n + 1)

end A263729

/-!
# A263730: Irregular triangle read by rows in which row n > 1 lists k such that (k^2 + k*n)/(k + 1) is an integer.

The programs for A263730, there is no canonical definition to state claims against.
-/

/-! ## A263730.P9005173166581838633

`A027750(n+1)-1`
-/

namespace A263730.P9005173166581838633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - 1

end

end A263730.P9005173166581838633

/-! ## A263730.P15840008562968563442

`abs(A233773(n+1))-1`
-/

namespace A263730.P15840008562968563442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233773 (n + 1)| - 1

end

end A263730.P15840008562968563442

/-! ## A263730.P3781786909179784558

`A023443(A027750(n+1))`
-/

namespace A263730.P3781786909179784558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A027750 (n + 1)).toNat

end

end A263730.P3781786909179784558

/-! ## A263730.P12968626305849359279

`A289207(A027750(n+1)+1)`
-/

namespace A263730.P12968626305849359279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A027750 (n + 1) + 1).toNat

end

end A263730.P12968626305849359279

/-! ## A263730.P6334769346822416933

`A330492(2*A027750(n+1))`
-/

namespace A263730.P6334769346822416933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (2 * A027750 (n + 1)).toNat

end

end A263730.P6334769346822416933

/-! ## A263730.P3637647793737535643

`A024164(6*A027750(n+1))`
-/

namespace A263730.P3637647793737535643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (6 * A027750 (n + 1)).toNat

end

end A263730.P3637647793737535643

/-! ## A263730.P1096028470859494548

`gcd(A000038(n), A233773(n+1))-1`
-/

namespace A263730.P1096028470859494548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A233773 (n + 1)) : ℤ) - 1

end

end A263730.P1096028470859494548

/-! ## A263730.P1919147852973194488

`lcm(A020985(n), A233773(n+1))-1`
-/

namespace A263730.P1919147852973194488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A233773 (n + 1)) : ℤ) - 1

end

end A263730.P1919147852973194488

/-! ## A263730.P8738754379675780653

`A061017(n+1)/A056538(n+1)-1`
-/

namespace A263730.P8738754379675780653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ) - 1

end

end A263730.P8738754379675780653

/-! ## A263730.P15793297078281395358

`A112184(Δ[A050140(n+1)])+A027750(n+1)`
-/

namespace A263730.P15793297078281395358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112184 (f1 (n + 1) - f1 n).toNat + A027750 (n + 1)

end

end A263730.P15793297078281395358

/-! ## A263730.P15286574145472618301

`A057077(A255051(2*(n+2)))+A027750(n+1)`
-/

namespace A263730.P15286574145472618301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A255051 (2 * (n + 2))).toNat + A027750 (n + 1)

end

end A263730.P15286574145472618301

/-! ## A263730.P17473254767439503402

`A002260(A056534(n+1))-1`
-/

namespace A263730.P17473254767439503402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056534 (n + 1)).toNat - 1

end

end A263730.P17473254767439503402

/-! ## A263730.P7693503221836099374

`A103823(C(A027750(n+1), 2))`
-/

namespace A263730.P7693503221836099374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (Nat.choose (A027750 (n + 1)).toNat 2)

end

end A263730.P7693503221836099374

/-! ## A263730.P9622720123638069803

`A025581(C(A027750(n+1), 2))`
-/

namespace A263730.P9622720123638069803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A027750 (n + 1)).toNat 2)

end

end A263730.P9622720123638069803

/-! ## A263730.P17525162902739523113

`A002262(eq[0, A173541(n+1)])`
-/

namespace A263730.P17525162902739523113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263730.P17525162902739523113

/-! ## A263730.P15821296085744012227

`A002262(lt[0, A054523(n+1)])`
-/

namespace A263730.P15821296085744012227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263730.P15821296085744012227

/-! ## A263730.P16425638144661088874

`A002262(lt[0, A127093(n+1)])`
-/

namespace A263730.P16425638144661088874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263730.P16425638144661088874

/-! ## A263730.P12024426939705865493

`A002262(lt[0, A127465(n+1)])`
-/

namespace A263730.P12024426939705865493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263730.P12024426939705865493

/-! ## A263730.P16269252107826269465

`A002262(eq[1, A164306(n+1)])`
-/

namespace A263730.P16269252107826269465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263730.P16269252107826269465

/-! ## A263730.P2466028207034938762

`A002262(lt[0, A286239(n+1)])`
-/

namespace A263730.P2466028207034938762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263730.P2466028207034938762

/-!
# A263731: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and the average of every three consecutive elements is never greater than the median of the previous three elements.

The programs for A263731, there is no canonical definition to state claims against.
-/

/-! ## A263731.P5949425896259039306

`A263736(2*n²+1)`
-/

namespace A263731.P5949425896259039306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (2 * n ^ 2 + 1)

end

end A263731.P5949425896259039306

/-! ## A263731.P5068097656648603350

`record[A263736(∑[A266722(n)])]`
-/

namespace A263731.P5068097656648603350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263731.P5068097656648603350

/-! ## A263731.P6430514463984671868

`record[A263736(∑[A266981(n)])]`
-/

namespace A263731.P6430514463984671868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263731.P6430514463984671868

/-! ## A263731.P4010566363916276749

`record[A263736(A170818(n+1))]`
-/

namespace A263731.P4010566363916276749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A170818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263731.P4010566363916276749

/-! ## A263731.P12394007690777581683

`record[A263736(A263728(n+2))]`
-/

namespace A263731.P12394007690777581683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A263728 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263731.P12394007690777581683

/-!
# A263732: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and the average of every three consecutive elements is never greater than the median of the previous three elements.

The programs for A263732, there is no canonical definition to state claims against.
-/

/-! ## A263732.P18340243775622695358

`A263736(A052905(n+3))`
-/

namespace A263732.P18340243775622695358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A052905 (n + 3)).toNat

end

end A263732.P18340243775622695358

/-! ## A263732.P7817476963300707241

`A263736(A056119(n)+16)`
-/

namespace A263732.P7817476963300707241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A056119 n + 16).toNat

end

end A263732.P7817476963300707241

/-! ## A263732.P12252874806730284457

`A263736(eq[3, A219347(n)])`
-/

namespace A263732.P12252874806730284457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263732.P12252874806730284457

/-! ## A263732.P11399739776125665085

`A263736(eq[5, A193592(n)])`
-/

namespace A263732.P11399739776125665085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263732.P11399739776125665085

/-! ## A263732.P1685896152960712174

`A263736(A055999(n+3)+1)`
-/

namespace A263732.P1685896152960712174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A055999 (n + 3) + 1).toNat

end

end A263732.P1685896152960712174

/-!
# A263733: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and the average of every three consecutive elements is never greater than the median of the previous three elements.

The programs for A263733, there is no canonical definition to state claims against.
-/

/-! ## A263733.P369616237826390041

`A263736(A055999(n+4))`
-/

namespace A263733.P369616237826390041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A055999 (n + 4)).toNat

end

end A263733.P369616237826390041

/-! ## A263733.P4566581213879622735

`A263736(eq[4, A219347(n)])`
-/

namespace A263733.P4566581213879622735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263733.P4566581213879622735

/-! ## A263733.P2933509601157050677

`A263736(eq[6, A193592(n)])`
-/

namespace A263733.P2933509601157050677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263733.P2933509601157050677

/-! ## A263733.P16902985040883349948

`A263736(Δ[A023551(n+2)])`
-/

namespace A263733.P16902985040883349948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (f1 (n + 1) - f1 n).toNat

end

end A263733.P16902985040883349948

/-! ## A263733.P94333435697487916

`A263736(A155212(n+3)+2)`
-/

namespace A263733.P94333435697487916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A155212 (n + 3) + 2).toNat

end

end A263733.P94333435697487916

/-!
# A263734: Number of length n arrays of permutations of 0..n-1 with each element moved by -8 to 8 places and the average of every three consecutive elements is never greater than the median of the previous three elements.

The programs for A263734, there is no canonical definition to state claims against.
-/

/-! ## A263734.P18153529665326718135

`A263736(A056126(n)+29)`
-/

namespace A263734.P18153529665326718135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A056126 n + 29).toNat

end

end A263734.P18153529665326718135

/-! ## A263734.P10033064262091595609

`A263736(eq[5, A219347(n)])`
-/

namespace A263734.P10033064262091595609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263734.P10033064262091595609

/-! ## A263734.P9657139270547544620

`A263736(eq[7, A193592(n)])`
-/

namespace A263734.P9657139270547544620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263734.P9657139270547544620

/-! ## A263734.P6969545025723757377

`A263736(A155212(n+4)+1)`
-/

namespace A263734.P6969545025723757377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A155212 (n + 4) + 1).toNat

end

end A263734.P6969545025723757377

/-! ## A263734.P6497054760423066787

`A263736(A027379(n+6)-4)`
-/

namespace A263734.P6497054760423066787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A027379 (n + 6) - 4).toNat

end

end A263734.P6497054760423066787

/-!
# A263735: Number of length n arrays of permutations of 0..n-1 with each element moved by -9 to 9 places and the average of every three consecutive elements is never greater than the median of the previous three elements.

The programs for A263735, there is no canonical definition to state claims against.
-/

/-! ## A263735.P10177059699298888759

`A263736(A155212(n+5))`
-/

namespace A263735.P10177059699298888759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A155212 (n + 5)).toNat

end

end A263735.P10177059699298888759

/-! ## A263735.P6970605694073933479

`A263736(eq[8, A193592(n)])`
-/

namespace A263735.P6970605694073933479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263735.P6970605694073933479

/-! ## A263735.P15430543410050887398

`A263736(A046691(n+7)-4)`
-/

namespace A263735.P15430543410050887398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A046691 (n + 7) - 4).toNat

end

end A263735.P15430543410050887398

/-! ## A263735.P7027351698016676774

`A263736(A000124(n+9)-9)`
-/

namespace A263735.P7027351698016676774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A000124 (n + 9) - 9).toNat

end

end A263735.P7027351698016676774

/-! ## A263735.P2895417377584837178

`A263736(A000217(n+8)+n+1)`
-/

namespace A263735.P2895417377584837178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A263735.P2895417377584837178

/-!
# A263736: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and the average of every three consecutive elements is never greater than the median of the previous three elements.

The programs for A263736, there is no canonical definition to state claims against.
-/

/-! ## A263736.P8535446208256304106

`A263703(n+1)%A328114(A263724(n+2))`
-/

namespace A263736.P8535446208256304106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263703 (n + 1)) (A328114 (A263724 (n + 2)).toNat)

end

end A263736.P8535446208256304106

/-! ## A263736.P7822597114454790642

`A263714(n+1)%A328114(A263724(n+2))`
-/

namespace A263736.P7822597114454790642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263714 (n + 1)) (A328114 (A263724 (n + 2)).toNat)

end

end A263736.P7822597114454790642

/-! ## A263736.P15630839117791520555

`A263752(n+1)%A328114(A263724(n+2))`
-/

namespace A263736.P15630839117791520555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263752 (n + 1)) (A328114 (A263724 (n + 2)).toNat)

end

end A263736.P15630839117791520555

/-! ## A263736.P18264375533668515896

`A263905(n+1)%A052435(A223449(n+1))`
-/

namespace A263736.P18264375533668515896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263905 (n + 1)) (A052435 (A223449 (n + 1)).toNat)

end

end A263736.P18264375533668515896

/-! ## A263736.P1131189760048434363

`A263752(n+1)%A115321(n+5)`
-/

namespace A263736.P1131189760048434363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263752 (n + 1)) (A115321 (n + 5))

end

end A263736.P1131189760048434363

/-!
# A263737: Nonnegative integers that are the difference of two squares but not the sum of two squares.

The programs for A263737, the canonical program `A263737.P10222005666591300491` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263737 has offset 1).

The definition of A263737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263737.P9270330761009490569

`eq[and(2, gcd(4, n)), A330574(n)]`
-/

namespace A263737.P9270330761009490569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.gcd 4 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263737.P9270330761009490569

namespace A263737

/-- `eq[and(2, gcd(4, n)), A330574(n)]` -/
def P9270330761009490569.Spec : Prop :=
  ∀ n, (P9270330761009490569.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P8360246528013783283

`eq[and(4, n²)/2, A004018(n)]`
-/

namespace A263737.P8360246528013783283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n ^ 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A263737.P8360246528013783283

namespace A263737

/-- `eq[and(4, n²)/2, A004018(n)]` -/
def P8360246528013783283.Spec : Prop :=
  ∀ n, (P8360246528013783283.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P7872486368180808984

`eq[and(4, n²)/2, A004531(n)]`
-/

namespace A263737.P7872486368180808984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n ^ 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A263737.P7872486368180808984

namespace A263737

/-- `eq[and(4, n²)/2, A004531(n)]` -/
def P7872486368180808984.Spec : Prop :=
  ∀ n, (P7872486368180808984.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P17546571792374769479

`lt[A263765(n), A002828(n)]`
-/

namespace A263737.P17546571792374769479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263737.P17546571792374769479

namespace A263737

/-- `lt[A263765(n), A002828(n)]` -/
def P17546571792374769479.Spec : Prop :=
  ∀ n, (P17546571792374769479.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P14005597499371927321

`eq[1, A000161(A316631(n))+1]`
-/

namespace A263737.P14005597499371927321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A316631 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263737.P14005597499371927321

namespace A263737

/-- `eq[1, A000161(A316631(n))+1]` -/
def P14005597499371927321.Spec : Prop :=
  ∀ n, (P14005597499371927321.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P4825001383357789368

`eq[1, A256282(A216972(n))+1]`
-/

namespace A263737.P4825001383357789368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (A216972 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263737.P4825001383357789368

namespace A263737

/-- `eq[1, A256282(A216972(n))+1]` -/
def P4825001383357789368.Spec : Prop :=
  ∀ n, (P4825001383357789368.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P10222005666591300491

`filter[A022544(n+1), A152822(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A263737

/-- `filter[A022544(n+1), A152822(#)]` -/
def P10222005666591300491.Spec : Prop :=
  ∀ n, P10222005666591300491.a n = A263737 (n + 1)

theorem P10222005666591300491.correct : P10222005666591300491.Spec := by
  intro n
  simp only [A263737, Nat.add_sub_cancel]

end A263737

/-! ## A263737.P5973425896188979527

`eq[A025426(n)+2, A263765(n)]`
-/

namespace A263737.P5973425896188979527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263737.P5973425896188979527

namespace A263737

/-- `eq[A025426(n)+2, A263765(n)]` -/
def P5973425896188979527.Spec : Prop :=
  ∀ n, (P5973425896188979527.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P15580258591640743882

`eq[2, A263765(n)+A063725(n)]`
-/

namespace A263737.P15580258591640743882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 n + A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263737.P15580258591640743882

namespace A263737

/-- `eq[2, A263765(n)+A063725(n)]` -/
def P15580258591640743882.Spec : Prop :=
  ∀ n, (P15580258591640743882.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P14842674564823365988

`∩[A022544(n+1), A107750(n)]`
-/

namespace A263737.P14842674564823365988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263737.P14842674564823365988

namespace A263737

/-- `∩[A022544(n+1), A107750(n)]` -/
def P14842674564823365988.Spec : Prop :=
  ∀ n, (P14842674564823365988.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P6697674009998126923

`eq[n, A216972(n)-A256282(n)]`
-/

namespace A263737.P6697674009998126923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216972 n - A256282 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263737.P6697674009998126923

namespace A263737

/-- `eq[n, A216972(n)-A256282(n)]` -/
def P6697674009998126923.Spec : Prop :=
  ∀ n, (P6697674009998126923.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P18059054771229740877

`lt[A000161(n), char[A042965(n+1)]]`
-/

namespace A263737.P18059054771229740877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263737.P18059054771229740877

namespace A263737

/-- `lt[A000161(n), char[A042965(n+1)]]` -/
def P18059054771229740877.Spec : Prop :=
  ∀ n, (P18059054771229740877.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P11606064601112139905

`lt[A000925(n), char[A042965(n+1)]]`
-/

namespace A263737.P11606064601112139905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263737.P11606064601112139905

namespace A263737

/-- `lt[A000925(n), char[A042965(n+1)]]` -/
def P11606064601112139905.Spec : Prop :=
  ∀ n, (P11606064601112139905.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P6882574921867071011

`lt[A004018(n), char[A042965(n+1)]]`
-/

namespace A263737.P6882574921867071011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263737.P6882574921867071011

namespace A263737

/-- `lt[A004018(n), char[A042965(n+1)]]` -/
def P6882574921867071011.Spec : Prop :=
  ∀ n, (P6882574921867071011.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P9942620096664640088

`lt[A229062(n), char[A042965(n+1)]]`
-/

namespace A263737.P9942620096664640088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263737.P9942620096664640088

namespace A263737

/-- `lt[A229062(n), char[A042965(n+1)]]` -/
def P9942620096664640088.Spec : Prop :=
  ∀ n, (P9942620096664640088.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P11025886093108493077

`eq[1, A229062(n)+A109768(n+1)]`
-/

namespace A263737.P11025886093108493077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n + A109768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263737.P11025886093108493077

namespace A263737

/-- `eq[1, A229062(n)+A109768(n+1)]` -/
def P11025886093108493077.Spec : Prop :=
  ∀ n, (P11025886093108493077.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P9790119431797734728

`eq[1, A236398(n+1)+A229062(n)]`
-/

namespace A263737.P9790119431797734728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236398 (n + 1) + A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263737.P9790119431797734728

namespace A263737

/-- `eq[1, A236398(n+1)+A229062(n)]` -/
def P9790119431797734728.Spec : Prop :=
  ∀ n, (P9790119431797734728.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P5876930866316573703

`∩[A022544(n+1), A024352(n+1)]`
-/

namespace A263737.P5876930866316573703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263737.P5876930866316573703

namespace A263737

/-- `∩[A022544(n+1), A024352(n+1)]` -/
def P5876930866316573703.Spec : Prop :=
  ∀ n, (P5876930866316573703.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P18175596974642696238

`∩[A022544(n+1), A042965(n+1)]`
-/

namespace A263737.P18175596974642696238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263737.P18175596974642696238

namespace A263737

/-- `∩[A022544(n+1), A042965(n+1)]` -/
def P18175596974642696238.Spec : Prop :=
  ∀ n, (P18175596974642696238.a n : ℤ) = A263737 (n + 1)

end A263737

/-! ## A263737.P12763967673568426462

`∩[A022544(n+1), A263715(n+1)]`
-/

namespace A263737.P12763967673568426462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263737.P12763967673568426462

namespace A263737

/-- `∩[A022544(n+1), A263715(n+1)]` -/
def P12763967673568426462.Spec : Prop :=
  ∀ n, (P12763967673568426462.a n : ℤ) = A263737 (n + 1)

end A263737

/-!
# A263738: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and equal numbers of elements moved upwards and downwards.

The programs for A263738, there is no canonical definition to state claims against.
-/

/-! ## A263738.P15753182743920315848

`A263744(∑[n+2])`
-/

namespace A263738.P15753182743920315848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263738.P15753182743920315848

/-! ## A263738.P1744131996650204225

`record[A263744(A347633(n+1)+1)]`
-/

namespace A263738.P1744131996650204225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263738.P1744131996650204225

/-! ## A263738.P9972553199288384973

`A263744(A000096(n+1))+char[41]`
-/

namespace A263738.P9972553199288384973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263738.P9972553199288384973

/-! ## A263738.P4553070556742671358

`record[gcd(A116598(n), A263744(n+1))]`
-/

namespace A263738.P4553070556742671358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 n) (A263744 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263738.P4553070556742671358

/-! ## A263738.P9260778070454279561

`record[and(A167374(n), A263744(n+1))]`
-/

namespace A263738.P9260778070454279561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A263744 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263738.P9260778070454279561

/-!
# A263739: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and equal numbers of elements moved upwards and downwards.

The programs for A263739, there is no canonical definition to state claims against.
-/

/-! ## A263739.P11199966780251013543

`A263744(∑[n+3]+1)`
-/

namespace A263739.P11199966780251013543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263739.P11199966780251013543

/-! ## A263739.P18111631056340633232

`record[A263744(A347633(n+1))]`
-/

namespace A263739.P18111631056340633232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263739.P18111631056340633232

/-! ## A263739.P2747281171246885087

`record[A263744(gcd(n, A116598(n)))]`
-/

namespace A263739.P2747281171246885087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (Int.gcd (n : ℤ) (A116598 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263739.P2747281171246885087

/-! ## A263739.P1205700617947348240

`A263744(Δ[A008778(n)])+char[29]`
-/

namespace A263739.P1205700617947348240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263739.P1205700617947348240

/-! ## A263739.P2219157702652848966

`record[A263744(n+1)/A046899(n+3)]`
-/

namespace A263739.P2219157702652848966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263744 (n + 1) : ℚ) / (A046899 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263739.P2219157702652848966

/-!
# A263740: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and equal numbers of elements moved upwards and downwards.

The programs for A263740, there is no canonical definition to state claims against.
-/

/-! ## A263740.P7616254908115705551

`A263744(∑[n+4]+3)`
-/

namespace A263740.P7616254908115705551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263740.P7616254908115705551

/-! ## A263740.P8188190333472210819

`record[A263744(A027379(n))]`
-/

namespace A263740.P8188190333472210819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263740.P8188190333472210819

/-! ## A263740.P15382145221688502493

`record[A263744(Δ[A116721(n+1)])]`
-/

namespace A263740.P15382145221688502493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263740.P15382145221688502493

/-! ## A263740.P2554329607901405589

`A263744(A027379(n+2))+char[31]`
-/

namespace A263740.P2554329607901405589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263740.P2554329607901405589

/-! ## A263740.P18204632647626803638

`record[A263744(A134227(n+1)-n)]`
-/

namespace A263740.P18204632647626803638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A134227 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263740.P18204632647626803638

/-!
# A263741: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and equal numbers of elements moved upwards and downwards.

The programs for A263741, there is no canonical definition to state claims against.
-/

/-! ## A263741.P14738742250436287479

`A263744(∑[n+5]+6)`
-/

namespace A263741.P14738742250436287479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263741.P14738742250436287479

/-! ## A263741.P825478628602526731

`A263744(A046691(n+3))+char[24]`
-/

namespace A263741.P825478628602526731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263741.P825478628602526731

/-! ## A263741.P8461689833833468279

`A263744(Δ[A023545(n+1)])+char[49]`
-/

namespace A263741.P8461689833833468279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263741.P8461689833833468279

/-! ## A263741.P9682277441260515047

`A263744(A046691(n+3))%A000108(n+7)`
-/

namespace A263741.P9682277441260515047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263744 (A046691 (n + 3)).toNat) (A000108 (n + 7))

end

end A263741.P9682277441260515047

/-! ## A263741.P7026451898737390699

`A007318(val(n+1, 3))*A263744(A046691(n+3))`
-/

namespace A263741.P7026451898737390699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 3) * A263744 (A046691 (n + 3)).toNat

end

end A263741.P7026451898737390699

/-!
# A263742: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and equal numbers of elements moved upwards and downwards.

The programs for A263742, there is no canonical definition to state claims against.
-/

/-! ## A263742.P10639577531999168981

`A263744(A052905(n+3))`
-/

namespace A263742.P10639577531999168981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A052905 (n + 3)).toNat

end

end A263742.P10639577531999168981

/-! ## A263742.P3577213716708062343

`A263744(A056119(n)+16)`
-/

namespace A263742.P3577213716708062343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A056119 n + 16).toNat

end

end A263742.P3577213716708062343

/-! ## A263742.P15904467175981654545

`A263744(eq[3, A219347(n)])`
-/

namespace A263742.P15904467175981654545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263742.P15904467175981654545

/-! ## A263742.P4995973352959440520

`A263744(eq[5, A193592(n)])`
-/

namespace A263742.P4995973352959440520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263742.P4995973352959440520

/-! ## A263742.P11505367495888292524

`A263744(Δ[A055831(n+5)])`
-/

namespace A263742.P11505367495888292524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (f1 (n + 1) - f1 n).toNat

end

end A263742.P11505367495888292524

/-!
# A263743: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and equal numbers of elements moved upwards and downwards.

The programs for A263743, there is no canonical definition to state claims against.
-/

/-! ## A263743.P1008207314741677514

`A263744(A055999(n+4))`
-/

namespace A263743.P1008207314741677514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A055999 (n + 4)).toNat

end

end A263743.P1008207314741677514

/-! ## A263743.P12743184417806090393

`A263744(A134227(n+5))`
-/

namespace A263743.P12743184417806090393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (A134227 (n + 5)).toNat

end

end A263743.P12743184417806090393

/-! ## A263743.P12535021737073576440

`A263744(eq[4, A219347(n)])`
-/

namespace A263743.P12535021737073576440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263743.P12535021737073576440

/-! ## A263743.P12781990694901348762

`A263744(eq[6, A193592(n)])`
-/

namespace A263743.P12781990694901348762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263743.P12781990694901348762

/-! ## A263743.P8439452079839279654

`A263744(Δ[A023551(n+2)])`
-/

namespace A263743.P8439452079839279654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (f1 (n + 1) - f1 n).toNat

end

end A263743.P8439452079839279654

/-!
# A263744: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and equal numbers of elements moved upwards and downwards.

The programs for A263744, there is no canonical definition to state claims against.
-/

/-! ## A263744.P15466738593575432372

`A263905(n+1)-A082859(A102480(n))²-2%A102480(n)`
-/

namespace A263744.P15466738593575432372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (n + 1) - A082859 (A102480 n).toNat ^ 2 - Int.tmod 2 (A102480 n)

end

end A263744.P15466738593575432372

/-! ## A263744.P8455802987344766043

`and(A003961(A030036(n+4)), A263714(n+1))`
-/

namespace A263744.P8455802987344766043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003961 (A030036 (n + 4)).toNat) (A263714 (n + 1))

end

end A263744.P8455802987344766043

/-! ## A263744.P8199450019115990611

`A268956(n+1)-∑{p}[A185213(n), C(#, n)]`
-/

namespace A263744.P8199450019115990611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p n : ℕ) : ℤ)

end

end A263744.P8199450019115990611

/-! ## A263744.P14116277342496453028

`A355173(n)+A189702(A316469(n+1))`
-/

namespace A263744.P14116277342496453028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 n + A189702 (A316469 (n + 1)).toNat

end

end A263744.P14116277342496453028

/-! ## A263744.P9159945015053348901

`A268956(n+1)-A086078(A242839(n+6))`
-/

namespace A263744.P9159945015053348901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (n + 1) - A086078 (A242839 (n + 6)).toNat

end

end A263744.P9159945015053348901

/-!
# A263745: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263745, there is no canonical definition to state claims against.
-/

/-! ## A263745.P11542024503812184637

`A263752(A008619(comp[2*n+3]²))`
-/

namespace A263745.P11542024503812184637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)).toNat

end

end A263745.P11542024503812184637

/-! ## A263745.P6533208421872431754

`A263752(A328399(comp[2*n+3]²))`
-/

namespace A263745.P6533208421872431754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A328399 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)).toNat

end

end A263745.P6533208421872431754

/-! ## A263745.P14625395134661710362

`A263752(A051890(n)-A004273(n))`
-/

namespace A263745.P14625395134661710362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A051890 n - A004273 n).toNat

end

end A263745.P14625395134661710362

/-! ## A263745.P10048718589893775073

`A263752(A093328(n)-A008574(n))`
-/

namespace A263745.P10048718589893775073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A093328 n - A008574 n).toNat

end

end A263745.P10048718589893775073

/-! ## A263745.P7925307273321778342

`A263752((n-1)*2*n+1)`
-/

namespace A263745.P7925307273321778342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (((n : ℤ) - 1) * (2 * n : ℤ) + 1).toNat

end

end A263745.P7925307273321778342

/-!
# A263746: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263746, there is no canonical definition to state claims against.
-/

/-! ## A263746.P14140618435494985823

`A263752(∑[n+2])`
-/

namespace A263746.P14140618435494985823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263746.P14140618435494985823

/-! ## A263746.P1523484482586567176

`and(-1, A263752(A000096(n+1)))`
-/

namespace A263746.P1523484482586567176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A263752 (A000096 (n + 1)).toNat)

end

end A263746.P1523484482586567176

/-! ## A263746.P6828051227639273169

`record[A263752(A347633(n+1)+1)]`
-/

namespace A263746.P6828051227639273169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263746.P6828051227639273169

/-! ## A263746.P11039014392133246026

`record[gcd(A105422(n), A263752(n+1))]`
-/

namespace A263746.P11039014392133246026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A263752 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263746.P11039014392133246026

/-! ## A263746.P15921419053111167361

`A007318(C(2, n))*A263752(A000096(n+1))`
-/

namespace A263746.P15921419053111167361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263752 (A000096 (n + 1)).toNat

end

end A263746.P15921419053111167361

/-!
# A263747: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263747, there is no canonical definition to state claims against.
-/

/-! ## A263747.P10992820999996271058

`A263752(∑[n+3]+1)`
-/

namespace A263747.P10992820999996271058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263747.P10992820999996271058

/-! ## A263747.P17018883239798952237

`record[A263752(A347633(n+1))]`
-/

namespace A263747.P17018883239798952237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263747.P17018883239798952237

/-! ## A263747.P17944754057029067899

`record[A263752(gcd(n, A105422(n)))]`
-/

namespace A263747.P17944754057029067899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (Int.gcd (n : ℤ) (A105422 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263747.P17944754057029067899

/-! ## A263747.P3743482692110908119

`A263752(A034856(n+2))+char[36]`
-/

namespace A263747.P3743482692110908119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263747.P3743482692110908119

/-! ## A263747.P9070556633451619326

`A007318(C(2, n))*A263752(A034856(n+2))`
-/

namespace A263747.P9070556633451619326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263752 (A034856 (n + 2)).toNat

end

end A263747.P9070556633451619326

/-!
# A263748: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263748, there is no canonical definition to state claims against.
-/

/-! ## A263748.P10896837416352639901

`A263752(∑[n+4]+3)`
-/

namespace A263748.P10896837416352639901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263748.P10896837416352639901

/-! ## A263748.P8623699247552724654

`record[A263752(A027379(n))]`
-/

namespace A263748.P8623699247552724654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263748.P8623699247552724654

/-! ## A263748.P1711069845939029992

`record[A263752(A060577(n)+1)]`
-/

namespace A263748.P1711069845939029992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A060577 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263748.P1711069845939029992

/-! ## A263748.P15487704005298572638

`record[A263752(Δ[A116721(n+1)])]`
-/

namespace A263748.P15487704005298572638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263748.P15487704005298572638

/-! ## A263748.P7623604757192689070

`A263752(A027379(n+2))+char[32]`
-/

namespace A263748.P7623604757192689070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263748.P7623604757192689070

/-!
# A263749: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263749, there is no canonical definition to state claims against.
-/

/-! ## A263749.P14469515063568120002

`A263752(∑[n+1]+4*n+10)`
-/

namespace A263749.P14469515063568120002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 10))

end

end A263749.P14469515063568120002

/-! ## A263749.P1975909972075680210

`A263752(A046691(n+3))+char[31]`
-/

namespace A263749.P1975909972075680210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263749.P1975909972075680210

/-! ## A263749.P408186204041880091

`A263752(Δ[A023545(n+1)])+C(n, 64)`
-/

namespace A263749.P408186204041880091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (f1 (n + 1) - f1 n).toNat + (Nat.choose n 64 : ℤ)

end

end A263749.P408186204041880091

/-! ## A263749.P15032697567502374632

`A007318(∑[n])*A263752(A046691(n+3))`
-/

namespace A263749.P15032697567502374632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A263752 (A046691 (n + 3)).toNat

end

end A263749.P15032697567502374632

/-! ## A263749.P17825375035397517684

`A263752(A046691(n+3))/A007318(C(2, n))`
-/

namespace A263749.P17825375035397517684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263752 (A046691 (n + 3)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A263749.P17825375035397517684

/-!
# A263750: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263750, there is no canonical definition to state claims against.
-/

/-! ## A263750.P6364996271138373398

`A263752(A052905(n+3))`
-/

namespace A263750.P6364996271138373398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A052905 (n + 3)).toNat

end

end A263750.P6364996271138373398

/-! ## A263750.P13712309177559488389

`A263752(A056119(n)+16)`
-/

namespace A263750.P13712309177559488389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A056119 n + 16).toNat

end

end A263750.P13712309177559488389

/-! ## A263750.P2988221647673455970

`A263752(eq[3, A219347(n)])`
-/

namespace A263750.P2988221647673455970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263750.P2988221647673455970

/-! ## A263750.P17783127755628637425

`A263752(eq[5, A193592(n)])`
-/

namespace A263750.P17783127755628637425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263750.P17783127755628637425

/-! ## A263750.P8635300956993794161

`A263752(A055999(n+3)+1)`
-/

namespace A263750.P8635300956993794161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A055999 (n + 3) + 1).toNat

end

end A263750.P8635300956993794161

/-!
# A263751: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263751, there is no canonical definition to state claims against.
-/

/-! ## A263751.P11628576938257540632

`A263752(A055999(n+4))`
-/

namespace A263751.P11628576938257540632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A055999 (n + 4)).toNat

end

end A263751.P11628576938257540632

/-! ## A263751.P4417648601983394423

`A263752(A134227(n+5))`
-/

namespace A263751.P4417648601983394423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (A134227 (n + 5)).toNat

end

end A263751.P4417648601983394423

/-! ## A263751.P13405570824794949917

`A263752(eq[4, A219347(n)])`
-/

namespace A263751.P13405570824794949917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263751.P13405570824794949917

/-! ## A263751.P3569550234236968009

`A263752(eq[6, A193592(n)])`
-/

namespace A263751.P3569550234236968009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263751.P3569550234236968009

/-! ## A263751.P5514997041446495207

`A263752(Δ[A023551(n+2)])`
-/

namespace A263751.P5514997041446495207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (f1 (n + 1) - f1 n).toNat

end

end A263751.P5514997041446495207

/-!
# A263752: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and every three consecutive elements having its maximum within 5 of its minimum.

The programs for A263752, there is no canonical definition to state claims against.
-/

/-! ## A263752.P5084654655349245085

`A306209(lt[n, A261762(n)²])`
-/

namespace A263752.P5084654655349245085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261762 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263752.P5084654655349245085

/-! ## A263752.P12864745200699511122

`A306209(lt[n, A109822(n+1)])`
-/

namespace A263752.P12864745200699511122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263752.P12864745200699511122

/-! ## A263752.P8913614081321219644

`A306209(lt[n+1, A103209(n+1)])`
-/

namespace A263752.P8913614081321219644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263752.P8913614081321219644

/-! ## A263752.P5363368901597738264

`A306209(lt[A265370(n), A261762(n)])`
-/

namespace A263752.P5363368901597738264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A263752.P5363368901597738264

/-! ## A263752.P4618858059035864185

`A306209(lt[A328909(n), A261762(n)])`
-/

namespace A263752.P4618858059035864185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A263752.P4618858059035864185

/-!
# A263753: Triangle read by rows: T(n,k) (n>=0, k>=0) is the number of permutations of n with sum of descent tops equal to k.

The programs for A263753, there is no canonical definition to state claims against.
-/

/-! ## A263753.P9423631055133345638

`A292262(∑[A018186(n)])`
-/

namespace A263753.P9423631055133345638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263753.P9423631055133345638

/-! ## A263753.P306441512611536600

`A306682(A288334(n))%4`
-/

namespace A263753.P306441512611536600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306682 (A288334 n).toNat) 4

end

end A263753.P306441512611536600

/-! ## A263753.P14461077658513895445

`A048993(A229913(n+1)-2)`
-/

namespace A263753.P14461077658513895445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A229913 (n + 1) - 2).toNat

end

end A263753.P14461077658513895445

/-! ## A263753.P1218461724171612844

`A090181(A229913(n+1)-2)`
-/

namespace A263753.P1218461724171612844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A229913 (n + 1) - 2).toNat

end

end A263753.P1218461724171612844

/-! ## A263753.P15684072711056676094

`A324173(A229913(n+1)-2)`
-/

namespace A263753.P15684072711056676094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 (A229913 (n + 1) - 2).toNat

end

end A263753.P15684072711056676094

/-!
# A263758: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and exactly one more element moved upwards than downwards.

The programs for A263758, there is no canonical definition to state claims against.
-/

/-! ## A263758.P481412523619177504

`A263764(∑[n+2])`
-/

namespace A263758.P481412523619177504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263758.P481412523619177504

/-! ## A263758.P8889047480258669786

`or(char[2], A263764(A000096(n+1)))`
-/

namespace A263758.P8889047480258669786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263764 (A000096 (n + 1)).toNat)

end

end A263758.P8889047480258669786

/-! ## A263758.P4664113369583054926

`A263764(A000096(n+1))%A000108(n)`
-/

namespace A263758.P4664113369583054926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263764 (A000096 (n + 1)).toNat) (A000108 n)

end

end A263758.P4664113369583054926

/-! ## A263758.P17560663969821112212

`char[A007318(n)]*A263764(A000096(n+1))`
-/

namespace A263758.P17560663969821112212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A263764 (A000096 (n + 1)).toNat

end

end A263758.P17560663969821112212

/-! ## A263758.P5244427038143803691

`A032548(n+1)*A263764(A000096(n+1))`
-/

namespace A263758.P5244427038143803691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (n + 1) * A263764 (A000096 (n + 1)).toNat

end

end A263758.P5244427038143803691

/-!
# A263759: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and exactly one more element moved upwards than downwards.

The programs for A263759, there is no canonical definition to state claims against.
-/

/-! ## A263759.P8411677624243579750

`A263764(∑[n+3]+1)`
-/

namespace A263759.P8411677624243579750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263759.P8411677624243579750

/-! ## A263759.P9619707551260374913

`or(char[2], A263764(A034856(n+2)))`
-/

namespace A263759.P9619707551260374913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263764 (A034856 (n + 2)).toNat)

end

end A263759.P9619707551260374913

/-! ## A263759.P16209561798326771900

`A000108(C(2, n))*A263764(A034856(n+2))`
-/

namespace A263759.P16209561798326771900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A263764 (A034856 (n + 2)).toNat

end

end A263759.P16209561798326771900

/-! ## A263759.P7620218634989811235

`A007318(C(n, 2))*A263764(A034856(n+2))`
-/

namespace A263759.P7620218634989811235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A263764 (A034856 (n + 2)).toNat

end

end A263759.P7620218634989811235

/-! ## A263759.P9740697853642484080

`A000040(n+1)%2*A263764(A034856(n+2))`
-/

namespace A263759.P9740697853642484080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A263764 (A034856 (n + 2)).toNat

end

end A263759.P9740697853642484080

/-!
# A263760: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and exactly one more element moved upwards than downwards.

The programs for A263760, there is no canonical definition to state claims against.
-/

/-! ## A263760.P10305597480350739537

`A263764(∑[n+4]+3)`
-/

namespace A263760.P10305597480350739537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263760.P10305597480350739537

/-! ## A263760.P6352714608695259337

`A263764(A034856(n+3)-1)+char[30]`
-/

namespace A263760.P6352714608695259337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (A034856 (n + 3) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263760.P6352714608695259337

/-! ## A263760.P5164573112943603530

`A032548(n+1)*A263764(A027379(n+2))`
-/

namespace A263760.P5164573112943603530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (n + 1) * A263764 (A027379 (n + 2)).toNat

end

end A263760.P5164573112943603530

/-! ## A263760.P7607898145813975725

`A000041(C(2, n))*A263764(A034856(n+3)-1)`
-/

namespace A263760.P7607898145813975725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A263764 (A034856 (n + 3) - 1).toNat

end

end A263760.P7607898145813975725

/-! ## A263760.P14023008557105819052

`A007318(C(n, 2))*A263764(A034856(n+3)-1)`
-/

namespace A263760.P14023008557105819052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A263764 (A034856 (n + 3) - 1).toNat

end

end A263760.P14023008557105819052

/-!
# A263761: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and exactly one more element moved upwards than downwards.

The programs for A263761, there is no canonical definition to state claims against.
-/

/-! ## A263761.P2293568994360999105

`A263764(∑[n+5]+6)`
-/

namespace A263761.P2293568994360999105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263761.P2293568994360999105

/-! ## A263761.P7649907552470211682

`A263764(A046691(n+3))%A005258(n)`
-/

namespace A263761.P7649907552470211682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263764 (A046691 (n + 3)).toNat) (A005258 n)

end

end A263761.P7649907552470211682

/-! ## A263761.P5181788718095509289

`A263764(Δ[A023545(n+1)])%A221663(n+1)`
-/

namespace A263761.P5181788718095509289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263764 (f1 (n + 1) - f1 n).toNat) (A221663 (n + 1))

end

end A263761.P5181788718095509289

/-!
# A263762: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and exactly one more element moved upwards than downwards.

The programs for A263762, there is no canonical definition to state claims against.
-/

/-! ## A263762.P2252947022817461661

`A263764(A052905(n+3))`
-/

namespace A263762.P2252947022817461661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (A052905 (n + 3)).toNat

end

end A263762.P2252947022817461661

/-! ## A263762.P15467926487973106015

`A263764(A056119(n)+16)`
-/

namespace A263762.P15467926487973106015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (A056119 n + 16).toNat

end

end A263762.P15467926487973106015

/-! ## A263762.P4786668547527085800

`A263764(eq[3, A219347(n)])`
-/

namespace A263762.P4786668547527085800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263762.P4786668547527085800

/-! ## A263762.P9351674026610588149

`A263764(eq[5, A193592(n)])`
-/

namespace A263762.P9351674026610588149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263762.P9351674026610588149

/-! ## A263762.P12659714025948800498

`A263764(A055999(n+3)+1)`
-/

namespace A263762.P12659714025948800498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (A055999 (n + 3) + 1).toNat

end

end A263762.P12659714025948800498

/-!
# A263763: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and exactly one more element moved upwards than downwards.

The programs for A263763, there is no canonical definition to state claims against.
-/

/-! ## A263763.P18291863170342097616

`A263764(A055999(n+4))`
-/

namespace A263763.P18291863170342097616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (A055999 (n + 4)).toNat

end

end A263763.P18291863170342097616

/-! ## A263763.P16036481650371444516

`A263764(eq[4, A219347(n)])`
-/

namespace A263763.P16036481650371444516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263763.P16036481650371444516

/-! ## A263763.P17999272819648705044

`A263764(eq[6, A193592(n)])`
-/

namespace A263763.P17999272819648705044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263763.P17999272819648705044

/-! ## A263763.P8121293716269409066

`A263764(Δ[A023551(n+2)])`
-/

namespace A263763.P8121293716269409066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (f1 (n + 1) - f1 n).toNat

end

end A263763.P8121293716269409066

/-! ## A263763.P18284925961688849871

`A263764(∑[A020719(n)]+15)`
-/

namespace A263763.P18284925961688849871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A263763.P18284925961688849871

/-!
# A263764: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and exactly one more element moved upwards than downwards.

The programs for A263764, there is no canonical definition to state claims against.
-/

/-! ## A263764.P9276158268915507618

`A163352(A276921(n)-A143842(n))`
-/

namespace A263764.P9276158268915507618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A276921 n - A143842 n).toNat

end

end A263764.P9276158268915507618

/-! ## A263764.P1511604835730404134

`A154453(A320751(n+1)%A327497(n))`
-/

namespace A263764.P1511604835730404134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (Int.tmod (A320751 (n + 1)) (A327497 n)).toNat

end

end A263764.P1511604835730404134

/-! ## A263764.P11528699931145696943

`A154453(A320751(n+1))%A123061(n+1)`
-/

namespace A263764.P11528699931145696943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154453 (A320751 (n + 1)).toNat) (A123061 (n + 1))

end

end A263764.P11528699931145696943

/-! ## A263764.P9066302268440645729

`A154453(and(A320751(n+1), A332216(n+1)))`
-/

namespace A263764.P9066302268440645729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (Int.land (A320751 (n + 1)) (A332216 (n + 1))).toNat

end

end A263764.P9066302268440645729

/-!
# A263765: Minimum number of squares necessary to write n as a sum or difference of squares.

The programs for A263765, the canonical program `A263765.P8094858940995282891` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263765 has offset 0).

The definition of A263765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263765.P8094858940995282891

`A169695(n)+char[A062316(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A263765

/-- `A169695(n)+char[A062316(n+1)]` -/
def P8094858940995282891.Spec : Prop :=
  ∀ n, P8094858940995282891.a n = A263765 n

theorem P8094858940995282891.correct : P8094858940995282891.Spec := by
  intro n
  simp only [A263765]

end A263765

/-! ## A263765.P11952424432608993178

`A067694(A306862(2*n)+n)`
-/

namespace A263765.P11952424432608993178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (A306862 (2 * n) + (n : ℤ)).toNat

end

end A263765.P11952424432608993178

namespace A263765

/-- `A067694(A306862(2*n)+n)` -/
def P11952424432608993178.Spec : Prop :=
  ∀ n, P11952424432608993178.a n = A263765 n

end A263765

/-! ## A263765.P1218469225875480487

`A067694(or(n, A306862(2*n)))`
-/

namespace A263765.P1218469225875480487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (Int.lor (n : ℤ) (A306862 (2 * n))).toNat

end

end A263765.P1218469225875480487

namespace A263765

/-- `A067694(or(n, A306862(2*n)))` -/
def P1218469225875480487.Spec : Prop :=
  ∀ n, P1218469225875480487.a n = A263765 n

end A263765

/-! ## A263765.P16461775306420590429

`A169695(n)+A064911(A284466(n))`
-/

namespace A263765.P16461775306420590429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n + A064911 (A284466 n).toNat

end

end A263765.P16461775306420590429

namespace A263765

/-- `A169695(n)+A064911(A284466(n))` -/
def P16461775306420590429.Spec : Prop :=
  ∀ n, P16461775306420590429.a n = A263765 n

end A263765

/-! ## A263765.P11332835553458027322

`A010873(gcd(A002203(n), A334496(3*(n+1))))`
-/

namespace A263765.P11332835553458027322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (Int.gcd (A002203 n) (A334496 (3 * (n + 1))))

end

end A263765.P11332835553458027322

namespace A263765

/-- `A010873(gcd(A002203(n), A334496(3*(n+1))))` -/
def P11332835553458027322.Spec : Prop :=
  ∀ n, P11332835553458027322.a n = A263765 n

end A263765

/-!
# A263766: a(n) = Product_{k=1..n} (k^2 - 2).

The programs for A263766, the canonical program `A263766.P16970932358393002796` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263766 has offset 0).

The definition of A263766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263766.P16970932358393002796

`(n²-2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263766

/-- `(n²-2)*a(n-1)` -/
def P16970932358393002796.Spec : Prop :=
  ∀ n, P16970932358393002796.a n = A263766 n

theorem P16970932358393002796.correct : P16970932358393002796.Spec := by
  intro n
  simp only [A263766]

end A263766

/-! ## A263766.P14688013028759334941

`-∏[n²-2]/2`
-/

namespace A263766.P14688013028759334941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A263766.P14688013028759334941

namespace A263766

/-- `-∏[n²-2]/2` -/
def P14688013028759334941.Spec : Prop :=
  ∀ n, P14688013028759334941.a n = (A263766 n : ℚ)

end A263766

/-! ## A263766.P3909681393727503780

`floor((n*n-2)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263766.P3909681393727503780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n * n : ℤ) - 2) * a (n - 1)

end

end A263766.P3909681393727503780

namespace A263766

/-- `floor((n*n-2)*a(n-1))` -/
def P3909681393727503780.Spec : Prop :=
  ∀ n, P3909681393727503780.a n = A263766 n

theorem P3909681393727503780.correct : P3909681393727503780.Spec := by
  intro n
  simp only [A263766, Nat.add_sub_cancel, A263766.P3909681393727503780.a, A263766.P16970932358393002796.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A263766

/-! ## A263766.P11401022310054283712

`a(n-1)/(n²-2)^(-1)` with `a(0)=1`
-/

namespace A263766.P11401022310054283712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n ^ 2 : ℤ) - 2 : ℚ) ^ (-1 : ℤ)

end

end A263766.P11401022310054283712

namespace A263766

/-- `a(n-1)/(n²-2)^(-1)` -/
def P11401022310054283712.Spec : Prop :=
  ∀ n, P11401022310054283712.a n = (A263766 n : ℚ)

end A263766

/-! ## A263766.P7726279894606720662

`(n-2/n)*n*a(n-1)` with `a(0)=1`
-/

namespace A263766.P7726279894606720662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℚ) - 2 / (n : ℚ)) * ((n : ℚ) * a (n - 1))

end

end A263766.P7726279894606720662

namespace A263766

/-- `(n-2/n)*n*a(n-1)` -/
def P7726279894606720662.Spec : Prop :=
  ∀ n, P7726279894606720662.a n = (A263766 n : ℚ)

end A263766

/-!
# A263767: Expansion of phi(-x) * psi(-x^8) * chi(x^24) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A263767, there is no canonical definition to state claims against.
-/

/-! ## A263767.P18261670976862925187

`(-1)^n*A257400(char[or(2, n)]+2*n)`
-/

namespace A263767.P18261670976862925187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257400 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)

end

end A263767.P18261670976862925187

/-! ## A263767.P8891289784671282138

`(-1)^n*A257400(∑[gcd(4, n)%4]+n)`
-/

namespace A263767.P8891289784671282138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257400 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A263767.P8891289784671282138

/-! ## A263767.P981380613177661666

`A219977(n)*A257400(2*n)`
-/

namespace A263767.P981380613177661666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A257400 (2 * n)

end

end A263767.P981380613177661666

/-! ## A263767.P17806739328132879265

`A209229(A270698(n+1))-A226864(3*n+4)`
-/

namespace A263767.P17806739328132879265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A270698 (n + 1)).toNat - A226864 (3 * n + 4)

end

end A263767.P17806739328132879265

/-! ## A263767.P7205063131458690765

`A226862(A226829(n+4))-A226864(3*n+4)`
-/

namespace A263767.P7205063131458690765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226862 (A226829 (n + 4)).toNat - A226864 (3 * n + 4)

end

end A263767.P7205063131458690765

/-!
# A263768: Number of necklaces with n beads colored white or red, where the number of white beads is odd and at least three and turning over is allowed.

The programs for A263768, the canonical program `A263768.P14993877093812272533` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263768 has offset 3).

The definition of A263768 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007147, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263768.P14993877093812272533

`A007147(n+3)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A263768

/-- `A007147(n+3)-1` -/
def P14993877093812272533.Spec : Prop :=
  ∀ n, P14993877093812272533.a n = A263768 (n + 3)

theorem P14993877093812272533.correct : P14993877093812272533.Spec := by
  intro n
  simp only [A263768, Nat.add_sub_cancel]

end A263768

/-! ## A263768.P736315017110342647

`(A000016(n+3)+A016116(n+2))/2-1`
-/

namespace A263768.P736315017110342647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000016 (n + 3) + A016116 (n + 2) : ℚ) / 2 - 1

end

end A263768.P736315017110342647

namespace A263768

/-- `(A000016(n+3)+A016116(n+2))/2-1` -/
def P736315017110342647.Spec : Prop :=
  ∀ n, P736315017110342647.a n = (A263768 (n + 3) : ℚ)

end A263768

/-! ## A263768.P15943438636206639913

`∑[abs(Δ[A007147(n+2)])]`
-/

namespace A263768.P15943438636206639913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263768.P15943438636206639913

namespace A263768

/-- `∑[abs(Δ[A007147(n+2)])]` -/
def P15943438636206639913.Spec : Prop :=
  ∀ n, P15943438636206639913.a n = A263768 (n + 3)

end A263768

/-! ## A263768.P15544365160536025506

`A054539(n+3)+A016116(n)-1`
-/

namespace A263768.P15544365160536025506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054539 (n + 3) + (A016116 n - 1)

end

end A263768.P15544365160536025506

namespace A263768

/-- `A054539(n+3)+A016116(n)-1` -/
def P15544365160536025506.Spec : Prop :=
  ∀ n, P15544365160536025506.a n = A263768 (n + 3)

end A263768

/-! ## A263768.P6271664679669549394

`∑[Δ[A007147(n+2)]^A324113(2*n+3)]`
-/

namespace A263768.P6271664679669549394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A324113 (2 * n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263768.P6271664679669549394

namespace A263768

/-- `∑[Δ[A007147(n+2)]^A324113(2*n+3)]` -/
def P6271664679669549394.Spec : Prop :=
  ∀ n, P6271664679669549394.a n = (A263768 (n + 3) : ℚ)

end A263768

/-! ## A263768.P15235654111395914763

`A054539(n+3)+A000225(A004526(n))`
-/

namespace A263768.P15235654111395914763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054539 (n + 3) + A000225 (A004526 n).toNat

end

end A263768.P15235654111395914763

namespace A263768

/-- `A054539(n+3)+A000225(A004526(n))` -/
def P15235654111395914763.Spec : Prop :=
  ∀ n, P15235654111395914763.a n = A263768 (n + 3)

end A263768

/-!
# A263769: Smallest prime q such that q == -1 (mod prime(n)-1).

The programs for A263769, there is no canonical definition to state claims against.
-/

/-! ## A263769.P13876231735668632475

`A038700(record[A037225(n)])`
-/

namespace A263769.P13876231735668632475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263769.P13876231735668632475

/-! ## A263769.P17364596482145031857

`A038700(A006093(n+1))`
-/

namespace A263769.P17364596482145031857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A006093 (n + 1)).toNat

end

end A263769.P17364596482145031857

/-! ## A263769.P4905164598637047686

`A038700(A039915(n+1))`
-/

namespace A263769.P4905164598637047686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A039915 (n + 1)).toNat

end

end A263769.P4905164598637047686

/-! ## A263769.P16318879056390550496

`A038700(Δ[A007504(n)]-1)`
-/

namespace A263769.P16318879056390550496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (n + 1) - f1 n - 1).toNat

end

end A263769.P16318879056390550496

/-! ## A263769.P1911463380285549370

`A038700(record[A000010(n+1)])`
-/

namespace A263769.P1911463380285549370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263769.P1911463380285549370

/-! ## A263769.P17233908532549674776

`A038700(A000040(n+1)-1)`
-/

namespace A263769.P17233908532549674776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A000040 (n + 1) - 1).toNat

end

end A263769.P17233908532549674776

/-! ## A263769.P14281444221236269124

`A038700(A008578(n+2)-1)`
-/

namespace A263769.P14281444221236269124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A008578 (n + 2) - 1).toNat

end

end A263769.P14281444221236269124

/-! ## A263769.P6666465497000081239

`A038700(A008864(n+1)-2)`
-/

namespace A263769.P6666465497000081239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A008864 (n + 1) - 2).toNat

end

end A263769.P6666465497000081239

/-! ## A263769.P4055208020695960942

`A038700(A182986(n+2)-1)`
-/

namespace A263769.P4055208020695960942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A182986 (n + 2) - 1).toNat

end

end A263769.P4055208020695960942

/-! ## A263769.P10240457527681145263

`A038700(xor(1, A000040(n+1)))`
-/

namespace A263769.P10240457527681145263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (Int.xor 1 (A000040 (n + 1))).toNat

end

end A263769.P10240457527681145263

/-! ## A263769.P12913203007459641017

`A038700(eq[1, A001222(n+1)])`
-/

namespace A263769.P12913203007459641017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263769.P12913203007459641017

/-! ## A263769.P18123408410972436980

`A038700(eq[2, A000005(n+1)])`
-/

namespace A263769.P18123408410972436980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263769.P18123408410972436980

/-! ## A263769.P4985759363141149383

`A038700(eq[n, A000010(n+1)])`
-/

namespace A263769.P4985759363141149383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263769.P4985759363141149383

/-! ## A263769.P15831651299755926081

`A038700(record[A006530(n+2)-1])`
-/

namespace A263769.P15831651299755926081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263769.P15831651299755926081

/-! ## A263769.P12640098428761268557

`A038700(record[A020639(n+2)-1])`
-/

namespace A263769.P12640098428761268557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263769.P12640098428761268557

/-! ## A263769.P7169530619504848385

`A038700(A100484(n+1)/2-1)`
-/

namespace A263769.P7169530619504848385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A263769.P7169530619504848385

/-! ## A263769.P808692276459413106

`A038700(A000010(Δ[A007504(n)]))`
-/

namespace A263769.P808692276459413106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A000010 (f1 (n + 1) - f1 n).toNat).toNat

end

end A263769.P808692276459413106

/-! ## A263769.P17584787916821280321

`A038700(A000010(A008578(n+2)))`
-/

namespace A263769.P17584787916821280321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A263769.P17584787916821280321

/-! ## A263769.P13367011777168952958

`A038700(eq[1, A001065(n+1)])`
-/

namespace A263769.P13367011777168952958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263769.P13367011777168952958

/-! ## A263769.P8304823391586570381

`A038700(record[A014963(n+2)-1])`
-/

namespace A263769.P8304823391586570381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263769.P8304823391586570381

/-!
# A263770: Smallest prime q such that (prime(n)^2 + q*prime(n))/(prime(n) + 1) is an integer.

The programs for A263770, there is no canonical definition to state claims against.
-/

/-! ## A263770.P17100406078882648599

`A034694(p?[xor(1, n)+1]+1)`
-/

namespace A263770.P17100406078882648599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A263770.P17100406078882648599

/-! ## A263770.P8894631356557547587

`A034694(p?[round(8*n/7)]+1)`
-/

namespace A263770.P8894631356557547587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A263770.P8894631356557547587

/-! ## A263770.P11760396369622373164

`A034694(A008864(n+1))`
-/

namespace A263770.P11760396369622373164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A008864 (n + 1)).toNat

end

end A263770.P11760396369622373164

/-! ## A263770.P12784487673850505646

`A034694(A028815(n+1))`
-/

namespace A263770.P12784487673850505646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A028815 (n + 1)).toNat

end

end A263770.P12784487673850505646

/-! ## A263770.P1254079860592564306

`A034694(A306591(n+1))`
-/

namespace A263770.P1254079860592564306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A306591 (n + 1)).toNat

end

end A263770.P1254079860592564306

/-! ## A263770.P7994698153947443239

`A034694(A299763(n+2))`
-/

namespace A263770.P7994698153947443239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A299763 (n + 2)).toNat

end

end A263770.P7994698153947443239

/-! ## A263770.P18170818664821520931

`A034694(∑{d}[p?[A259153(n)], #])`
-/

namespace A263770.P18170818664821520931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A263770.P18170818664821520931

/-! ## A263770.P17805066750471017858

`A034694(A000040(n+1)+1)`
-/

namespace A263770.P17805066750471017858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A000040 (n + 1) + 1).toNat

end

end A263770.P17805066750471017858

/-! ## A263770.P10491094260132822041

`A034694(A006093(n+1)+2)`
-/

namespace A263770.P10491094260132822041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A006093 (n + 1) + 2).toNat

end

end A263770.P10491094260132822041

/-! ## A263770.P790193781967400720

`A034694(A008578(n+2)+1)`
-/

namespace A263770.P790193781967400720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A008578 (n + 2) + 1).toNat

end

end A263770.P790193781967400720

/-!
# A263772: Perimeters of integer-sided scalene triangles.

The programs for A263772, the canonical program `A263772.P3077290956512923738` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263772 has offset 1).

The definition of A263772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263772.P3077290956512923738

`a(n-1)+1` with `a(0)=9, a(1)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263772

/-- `a(n-1)+1` -/
def P3077290956512923738.Spec : Prop :=
  ∀ n, (P3077290956512923738.a n : ℤ) = A263772 (n + 1)

theorem P3077290956512923738.correct : P3077290956512923738.Spec := by
  intro n
  simp only [A263772, Nat.add_sub_cancel]

end A263772

/-!
# A263773: Expansion of b(-q)^2 in powers of q where b() is a cubic AGM theta function.

The programs for A263773, there is no canonical definition to state claims against.
-/

/-! ## A263773.P16014033949072508415

`(-1)^n*A242874(n)`
-/

namespace A263773.P16014033949072508415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A242874 n

end

end A263773.P16014033949072508415

/-! ## A263773.P11791847074972532207

`A057079(n)*A096726(n)`
-/

namespace A263773.P11791847074972532207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A096726 n

end

end A263773.P11791847074972532207

/-! ## A263773.P3402879696788759891

`A008653(n)/A132954(n)`
-/

namespace A263773.P3402879696788759891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A132954 n : ℚ)

end

end A263773.P3402879696788759891

/-! ## A263773.P9838236991015496770

`A242874(n)/A057077(2*n)`
-/

namespace A263773.P9838236991015496770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242874 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A263773.P9838236991015496770

/-! ## A263773.P3857620132604334592

`A282610(9*n)/A132954(n)`
-/

namespace A263773.P3857620132604334592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (9 * n) : ℚ) / (A132954 n : ℚ)

end

end A263773.P3857620132604334592

/-!
# A263774: Sequence is defined by the condition that Sum_{d|n} a(d)^(n/d) = mu(n)^2, where mu(n) is the Möbius function.

The programs for A263774, there is no canonical definition to state claims against.
-/

/-! ## A263774.P3518060148033687741

`A080576(A363130(3*n+4))-A003557(n+1)`
-/

namespace A263774.P3518060148033687741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080576 (A363130 (3 * n + 4)).toNat - A003557 (n + 1)

end

end A263774.P3518060148033687741

/-! ## A263774.P10704287691884445070

`A000007(n)-A080791(A108081(A063514(n+1)))`
-/

namespace A263774.P10704287691884445070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A080791 (A108081 (A063514 (n + 1)).toNat).toNat

end

end A263774.P10704287691884445070

/-! ## A263774.P15373002627885275796

`C(2, n+2)-A290136(n+1)%((n+1)/∏{p}[n+1, #])`
-/

namespace A263774.P15373002627885275796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - Int.tmod (A290136 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))

end

end A263774.P15373002627885275796

/-!
# A263776: Triangle read by rows: T(n,k) (n>=0, 0<=k<=A002620(n-1)) is the number of permutations of [n] with k nestings.

The programs for A263776, there is no canonical definition to state claims against.
-/

/-! ## A263776.P4082339951815445293

`A145879(gcd(n, A217799(n)))`
-/

namespace A263776.P4082339951815445293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145879 (Int.gcd (n : ℤ) (A217799 n))

end

end A263776.P4082339951815445293

/-! ## A263776.P6926467645675449911

`∏{e}[A000351(n), A145879(#)]`
-/

namespace A263776.P6926467645675449911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A145879 (Nat.factorization (f1 n).natAbs p)

end

end A263776.P6926467645675449911

/-! ## A263776.P12547870129871495265

`A145879(A228676(n+9)+n)`
-/

namespace A263776.P12547870129871495265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145879 (A228676 (n + 9) + (n : ℤ)).toNat

end

end A263776.P12547870129871495265

/-! ## A263776.P7209633248817487190

`A145879(C(A006820(n), n)+n)`
-/

namespace A263776.P7209633248817487190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145879 (Nat.choose (A006820 n).toNat n + n)

end

end A263776.P7209633248817487190

/-! ## A263776.P2380023887594753156

`A145879(A028310(n))%A080104(n)`
-/

namespace A263776.P2380023887594753156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145879 (A028310 n).toNat) (A080104 n)

end

end A263776.P2380023887594753156

/-!
# A263777: Number of inversion sequences avoiding pattern 201 (or 210).

The programs for A263777, there is no canonical definition to state claims against.
-/

/-! ## A263777.P5354219045113836568

`A088713(n)-A014082(A001096(n))`
-/

namespace A263777.P5354219045113836568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088713 n - A014082 (A001096 n).toNat

end

end A263777.P5354219045113836568

/-! ## A263777.P3967968438099250813

`A088713(n)-A014082(A058182(n))`
-/

namespace A263777.P3967968438099250813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088713 n - A014082 (A058182 n).toNat

end

end A263777.P3967968438099250813

/-! ## A263777.P18224968769221693874

`A088713(n)-A097795(A027432(n))`
-/

namespace A263777.P18224968769221693874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088713 n - A097795 (A027432 n).toNat

end

end A263777.P18224968769221693874

/-! ## A263777.P11158574137294754210

`A088713(n)-A086079(A060103(n))`
-/

namespace A263777.P11158574137294754210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088713 n - A086079 (A060103 n).toNat

end

end A263777.P11158574137294754210

/-!
# A263778: Number of inversion sequences avoiding pattern 120.

The programs for A263778, there is no canonical definition to state claims against.
-/

/-! ## A263778.P13796789450370292227

`A022558(n)+A007814(A028468(n))`
-/

namespace A263778.P13796789450370292227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n + A007814 (A028468 n).toNat

end

end A263778.P13796789450370292227

/-! ## A263778.P15691919420350151198

`A008621(A045499(n)+A007091(n))`
-/

namespace A263778.P15691919420350151198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A045499 n + A007091 n).toNat

end

end A263778.P15691919420350151198

/-! ## A263778.P14905933396924169035

`A060953(A005802(n))+A005802(n)`
-/

namespace A263778.P14905933396924169035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A005802 n).toNat + A005802 n

end

end A263778.P14905933396924169035

/-!
# A263779: Number of inversion sequences avoiding pattern 010.

The programs for A263779, there is no canonical definition to state claims against.
-/

/-! ## A263779.P879297266406304281

`A034887(A000734(n)+2-n)`
-/

namespace A263779.P879297266406304281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A000734 n + (2 - (n : ℤ))).toNat

end

end A263779.P879297266406304281

/-! ## A263779.P13033509188283574930

`A034887(2-(n-A000734(n)))`
-/

namespace A263779.P13033509188283574930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (2 - ((n : ℤ) - A000734 n)).toNat

end

end A263779.P13033509188283574930

/-! ## A263779.P17032162758244931958

`A120567(n+1)+A086079(A328441(n))`
-/

namespace A263779.P17032162758244931958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120567 (n + 1) + A086079 (A328441 n).toNat

end

end A263779.P17032162758244931958

/-! ## A263779.P11651586155000083017

`A328431(n)+A005165(A324088(n+2))`
-/

namespace A263779.P11651586155000083017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328431 n + A005165 (A324088 (n + 2)).toNat

end

end A263779.P11651586155000083017

/-!
# A263780: Number of inversion sequences avoiding pattern 100.

The programs for A263780, there is no canonical definition to state claims against.
-/

/-! ## A263780.P7214936036430275986

`∏{p}[A193321(n)², #]`
-/

namespace A263780.P7214936036430275986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193321 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A263780.P7214936036430275986

/-! ## A263780.P11768256384216713242

`A225819(A107590(n+1))`
-/

namespace A263780.P11768256384216713242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A107590 (n + 1)).toNat

end

end A263780.P11768256384216713242

/-! ## A263780.P8904389691266618834

`A075861(3*A193321(n))`
-/

namespace A263780.P8904389691266618834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (3 * A193321 n).toNat

end

end A263780.P8904389691266618834

/-!
# A263781: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and exactly two more elements moved upwards than downwards.

The programs for A263781, there is no canonical definition to state claims against.
-/

/-! ## A263781.P13278687226612980659

`A263787(∑[n+2])`
-/

namespace A263781.P13278687226612980659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263781.P13278687226612980659

/-! ## A263781.P216068358455231901

`A002375(C(A324770(n+1), A002375(n+1)))`
-/

namespace A263781.P216068358455231901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (Nat.choose (A324770 (n + 1)).toNat (A002375 (n + 1)).toNat)

end

end A263781.P216068358455231901

/-! ## A263781.P2379475436165315747

`A360265(floor(A002135(n)/A367361(2*(n+2))))`
-/

namespace A263781.P2379475436165315747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360265 ⌊(A002135 n : ℚ) / (A367361 (2 * (n + 2)) : ℚ)⌋.toNat

end

end A263781.P2379475436165315747

/-! ## A263781.P3505012437243052650

`A103786(A119336(n))`
-/

namespace A263781.P3505012437243052650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103786 (A119336 n).toNat

end

end A263781.P3505012437243052650

/-! ## A263781.P13602350885444775767

`A123576(A187260(n))`
-/

namespace A263781.P13602350885444775767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A187260 n).toNat

end

end A263781.P13602350885444775767

/-!
# A263782: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and exactly two more elements moved upwards than downwards.

The programs for A263782, there is no canonical definition to state claims against.
-/

/-! ## A263782.P8824063562011873959

`A263787(∑[n+3]+1)`
-/

namespace A263782.P8824063562011873959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263782.P8824063562011873959

/-! ## A263782.P16425146216343985873

`or(char[3], A263787(A034856(n+2)))`
-/

namespace A263782.P16425146216343985873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263787 (A034856 (n + 2)).toNat)

end

end A263782.P16425146216343985873

/-! ## A263782.P3353023176427272592

`A263787(A034856(n+2))%A000108(n)`
-/

namespace A263782.P3353023176427272592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263787 (A034856 (n + 2)).toNat) (A000108 n)

end

end A263782.P3353023176427272592

/-! ## A263782.P16565505580815579131

`char[A007318(n)]*A263787(A034856(n+2))`
-/

namespace A263782.P16565505580815579131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A263787 (A034856 (n + 2)).toNat

end

end A263782.P16565505580815579131

/-! ## A263782.P8672161509885411592

`A000108(C(2, n+2))*A263787(A034856(n+2))`
-/

namespace A263782.P8672161509885411592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A263787 (A034856 (n + 2)).toNat

end

end A263782.P8672161509885411592

/-!
# A263783: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and exactly two more elements moved upwards than downwards.

The programs for A263783, there is no canonical definition to state claims against.
-/

/-! ## A263783.P12443771064521266838

`A263787(∑[n+4]+3)`
-/

namespace A263783.P12443771064521266838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263783.P12443771064521266838

/-! ## A263783.P10218026863420500907

`A263787(A055998(n+2))%A182189(n)`
-/

namespace A263783.P10218026863420500907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263787 (A055998 (n + 2)).toNat) (A182189 n)

end

end A263783.P10218026863420500907

/-! ## A263783.P13839092506092077417

`A317711(a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=5`
-/

namespace A263783.P13839092506092077417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 5] fun n a =>
  A317711 (a (n - 1) + 1).toNat

end

end A263783.P13839092506092077417

/-!
# A263784: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and exactly two more elements moved upwards than downwards.

The programs for A263784, there is no canonical definition to state claims against.
-/

/-! ## A263784.P6530215118183162402

`A263787(∑[n+5]+6)`
-/

namespace A263784.P6530215118183162402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263784.P6530215118183162402

/-! ## A263784.P17442517060211092173

`A054977(n)*A263787(A046691(n+3))`
-/

namespace A263784.P17442517060211092173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A263787 (A046691 (n + 3)).toNat

end

end A263784.P17442517060211092173

/-! ## A263784.P6972044092998495280

`A233275(C(A001088(n), 2))`
-/

namespace A263784.P6972044092998495280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (Nat.choose (A001088 n).toNat 2)

end

end A263784.P6972044092998495280

/-!
# A263785: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and exactly two more elements moved upwards than downwards.

The programs for A263785, there is no canonical definition to state claims against.
-/

/-! ## A263785.P17718048659785714203

`A263787(∑[n+6]+10)`
-/

namespace A263785.P17718048659785714203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A263785.P17718048659785714203

/-! ## A263785.P9462549982670167231

`xor(1, xor(1, A263787(A055999(n+3)+1)))`
-/

namespace A263785.P9462549982670167231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A263787 (A055999 (n + 3) + 1).toNat))

end

end A263785.P9462549982670167231

/-! ## A263785.P3060480881545730305

`char[A007318(n)]*A263787(A055999(n+3)+1)`
-/

namespace A263785.P3060480881545730305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A263787 (A055999 (n + 3) + 1).toNat

end

end A263785.P3060480881545730305

/-! ## A263785.P17754263048105242149

`A007318(C(n, 2))*A263787(A055999(n+3)+1)`
-/

namespace A263785.P17754263048105242149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A263787 (A055999 (n + 3) + 1).toNat

end

end A263785.P17754263048105242149

/-! ## A263785.P16082060191885055955

`A007318(and(1, -n))*A263787(A055999(n+3)+1)`
-/

namespace A263785.P16082060191885055955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A263787 (A055999 (n + 3) + 1).toNat

end

end A263785.P16082060191885055955

/-!
# A263786: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and exactly two more elements moved upwards than downwards.

The programs for A263786, there is no canonical definition to state claims against.
-/

/-! ## A263786.P6488724263155352090

`A263787(A055999(n+4))`
-/

namespace A263786.P6488724263155352090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (A055999 (n + 4)).toNat

end

end A263786.P6488724263155352090

/-! ## A263786.P10759925228361725327

`A263787(eq[4, A219347(n)])`
-/

namespace A263786.P10759925228361725327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263786.P10759925228361725327

/-! ## A263786.P14661448258070958372

`A263787(eq[6, A193592(n)])`
-/

namespace A263786.P14661448258070958372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263786.P14661448258070958372

/-! ## A263786.P1951865256269741107

`A263787(Δ[A023551(n+2)])`
-/

namespace A263786.P1951865256269741107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (f1 (n + 1) - f1 n).toNat

end

end A263786.P1951865256269741107

/-! ## A263786.P746651321700395771

`A263787(A052905(n+4)-1)`
-/

namespace A263786.P746651321700395771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (A052905 (n + 4) - 1).toNat

end

end A263786.P746651321700395771

/-!
# A263787: T(n,k) = Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and exactly two more elements moved upwards than downwards.

The programs for A263787, there is no canonical definition to state claims against.
-/

/-! ## A263787.P5312042783124333153

`A161262(A263666(n+1)%A020634(n+1))`
-/

namespace A263787.P5312042783124333153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (Int.tmod (A263666 (n + 1)) (A020634 (n + 1))).toNat

end

end A263787.P5312042783124333153

/-! ## A263787.P12346801705263599615

`A133144(A382100(n))`
-/

namespace A263787.P12346801705263599615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133144 (A382100 n).toNat

end

end A263787.P12346801705263599615

/-! ## A263787.P12064414393625371427

`dr(A184943(A287417(n)))`
-/

namespace A263787.P12064414393625371427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A184943 (A287417 n).toNat)

end

end A263787.P12064414393625371427

/-! ## A263787.P2141789948755458141

`val(A233044(A306209(n)), 3)`
-/

namespace A263787.P2141789948755458141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233044 (A306209 n).toNat).toNat 3

end

end A263787.P2141789948755458141

/-! ## A263787.P11389640960883728266

`∑{e}[A001678(A293108(n)), #]`
-/

namespace A263787.P11389640960883728266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (A293108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A263787.P11389640960883728266

/-!
# A263790: The number of length-n permutations avoiding the patterns 1234, 1324 and 2143.

The programs for A263790, the canonical program `A263790.P17889479900882049318` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263790 has offset 0).

The definition of A263790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263790.P17889479900882049318

`ogf((1-3x-2x^3)/(1-4x+2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263790

/-- `ogf((1-3x-2x^3)/(1-4x+2x^2-2x^3+x^4))` -/
def P17889479900882049318.Spec : Prop :=
  ∀ n, P17889479900882049318.a n = A263790 n

theorem P17889479900882049318.correct : P17889479900882049318.Spec := by
  intro n
  simp only [A263790]

end A263790

/-! ## A263790.P3759595301300160645

`A335793(n)-A004526(A001835(n))`
-/

namespace A263790.P3759595301300160645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335793 n - A004526 (A001835 n).toNat

end

end A263790.P3759595301300160645

namespace A263790

/-- `A335793(n)-A004526(A001835(n))` -/
def P3759595301300160645.Spec : Prop :=
  ∀ n, P3759595301300160645.a n = A263790 n

end A263790

/-! ## A263790.P14008604413445571274

`A335793(n)-A004526(A005246(2*n))`
-/

namespace A263790.P14008604413445571274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335793 n - A004526 (A005246 (2 * n)).toNat

end

end A263790.P14008604413445571274

namespace A263790

/-- `A335793(n)-A004526(A005246(2*n))` -/
def P14008604413445571274.Spec : Prop :=
  ∀ n, P14008604413445571274.a n = A263790 n

end A263790

/-!
# A263791: Number of permutations of [n] avoiding the generalized patterns 1(k+2)-(u_1+1)-...-(u_k+1) for all permutations u of [k].

The programs for A263791, there is no canonical definition to state claims against.
-/

/-! ## A263791.P4451592869352376093

`A307668(n^A273693(n))`
-/

namespace A263791.P4451592869352376093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307668 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A273693 n : ℤ))).toNat

end

end A263791.P4451592869352376093

/-! ## A263791.P15241032801955170525

`A307668(n*A273693(n)²)`
-/

namespace A263791.P15241032801955170525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307668 ((n : ℤ) * A273693 n ^ 2).toNat

end

end A263791.P15241032801955170525

/-! ## A263791.P1119196426368051782

`A209761(A209698(A209575(n+1)))`
-/

namespace A263791.P1119196426368051782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (A209698 (A209575 (n + 1)).toNat).toNat

end

end A263791.P1119196426368051782

/-! ## A263791.P17372419005104879894

`A072649(A360333(n+1)^A267383(n))`
-/

namespace A263791.P17372419005104879894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((A360333 (n + 1) : ℚ) ^ (A267383 n : ℤ))).toNat

end

end A263791.P17372419005104879894

/-! ## A263791.P12567285821609307804

`A268448(A027935(n)%A057197(3*(n+1)))`
-/

namespace A263791.P12567285821609307804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (Int.tmod (A027935 n) (A057197 (3 * (n + 1)))).toNat

end

end A263791.P12567285821609307804

/-!
# A263793: Number of (n+1) X (n+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

The programs for A263793, there is no canonical definition to state claims against.
-/

/-! ## A263793.P14541932798696629653

`A263799(∑[4*n]+1)`
-/

namespace A263793.P14541932798696629653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263793.P14541932798696629653

/-! ## A263793.P3628967373122186742

`A263799(A001844(n))+C(n, 64)`
-/

namespace A263793.P3628967373122186742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A001844 n).toNat + (Nat.choose n 64 : ℤ)

end

end A263793.P3628967373122186742

/-! ## A263793.P14202520299835415213

`A263799(A001844(n))+A025465(n)`
-/

namespace A263793.P14202520299835415213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A001844 n).toNat + A025465 n

end

end A263793.P14202520299835415213

/-! ## A263793.P9663918787746183222

`A263799(A001844(n))+A138472(n)`
-/

namespace A263793.P9663918787746183222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A001844 n).toNat + A138472 n

end

end A263793.P9663918787746183222

/-!
# A263794: Number of (n+1) X (3+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

The programs for A263794, the canonical program `A263794.P2113053867351144171` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263794 has offset 1).

The definition of A263794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263794.P2113053867351144171

`A004006(floor(n/2)+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263794

/-- `A004006(floor(n/2)+2)` -/
def P2113053867351144171.Spec : Prop :=
  ∀ n, P2113053867351144171.a n = A263794 (n + 1)

theorem P2113053867351144171.correct : P2113053867351144171.Spec := by
  intro n
  simp only [A263794, Nat.add_sub_cancel]

end A263794

/-! ## A263794.P8417561094683060736

`A283551(floor(n/2)+2)+1`
-/

namespace A263794.P8417561094683060736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 (⌊(n : ℚ) / 2⌋ + 2).toNat + 1

end

end A263794.P8417561094683060736

namespace A263794

/-- `A283551(floor(n/2)+2)+1` -/
def P8417561094683060736.Spec : Prop :=
  ∀ n, P8417561094683060736.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P13774931438424911163

`A058187(n)+floor((n+4)/2)`
-/

namespace A263794.P13774931438424911163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n + ⌊(n + 4 : ℚ) / 2⌋

end

end A263794.P13774931438424911163

namespace A263794

/-- `A058187(n)+floor((n+4)/2)` -/
def P13774931438424911163.Spec : Prop :=
  ∀ n, P13774931438424911163.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P743384817460819532

`A003600(A008619(n))+1`
-/

namespace A263794.P743384817460819532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (A008619 n).toNat + 1

end

end A263794.P743384817460819532

namespace A263794

/-- `A003600(A008619(n))+1` -/
def P743384817460819532.Spec : Prop :=
  ∀ n, P743384817460819532.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P17458274273871351138

`A000125(A008619(n)+1)-1`
-/

namespace A263794.P17458274273871351138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A008619 n + 1).toNat - 1

end

end A263794.P17458274273871351138

namespace A263794

/-- `A000125(A008619(n)+1)-1` -/
def P17458274273871351138.Spec : Prop :=
  ∀ n, P17458274273871351138.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P7628899634258402702

`A000125(A004526(n)+2)-1`
-/

namespace A263794.P7628899634258402702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A004526 n + 2).toNat - 1

end

end A263794.P7628899634258402702

namespace A263794

/-- `A000125(A004526(n)+2)-1` -/
def P7628899634258402702.Spec : Prop :=
  ∀ n, P7628899634258402702.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P7776699209500685113

`A008619(n)+A058187(n)+1`
-/

namespace A263794.P7776699209500685113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A058187 n + 1)

end

end A263794.P7776699209500685113

namespace A263794

/-- `A008619(n)+A058187(n)+1` -/
def P7776699209500685113.Spec : Prop :=
  ∀ n, P7776699209500685113.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P3860240951394483950

`A004526(n)+A058187(n)+2`
-/

namespace A263794.P3860240951394483950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A058187 n + 2)

end

end A263794.P3860240951394483950

namespace A263794

/-- `A004526(n)+A058187(n)+2` -/
def P3860240951394483950.Spec : Prop :=
  ∀ n, P3860240951394483950.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P3401560108401514365

`A341209(n-A110654(n))+2`
-/

namespace A263794.P3401560108401514365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 ((n : ℤ) - A110654 n).toNat + 2

end

end A263794.P3401560108401514365

namespace A263794

/-- `A341209(n-A110654(n))+2` -/
def P3401560108401514365.Spec : Prop :=
  ∀ n, P3401560108401514365.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P14530167799110468587

`A004526(n)+A000292(A008619(n))+2`
-/

namespace A263794.P14530167799110468587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A000292 (A008619 n).toNat + 2)

end

end A263794.P14530167799110468587

namespace A263794

/-- `A004526(n)+A000292(A008619(n))+2` -/
def P14530167799110468587.Spec : Prop :=
  ∀ n, P14530167799110468587.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P16035070797675564249

`A000125(A065033(n)+A040001(n))-1`
-/

namespace A263794.P16035070797675564249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A065033 n + A040001 n).toNat - 1

end

end A263794.P16035070797675564249

namespace A263794

/-- `A000125(A065033(n)+A040001(n))-1` -/
def P16035070797675564249.Spec : Prop :=
  ∀ n, P16035070797675564249.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P4505123435141018276

`A167875(A110654(n+1))-A058187(n)`
-/

namespace A263794.P4505123435141018276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 (A110654 (n + 1)).toNat - A058187 n

end

end A263794.P4505123435141018276

namespace A263794

/-- `A167875(A110654(n+1))-A058187(n)` -/
def P4505123435141018276.Spec : Prop :=
  ∀ n, P4505123435141018276.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P12683187357084810811

`A008619(n+2)+A000292(A008619(n))`
-/

namespace A263794.P12683187357084810811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 2) + A000292 (A008619 n).toNat

end

end A263794.P12683187357084810811

namespace A263794

/-- `A008619(n+2)+A000292(A008619(n))` -/
def P12683187357084810811.Spec : Prop :=
  ∀ n, P12683187357084810811.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P11782798498921007155

`A000125(A065033(n+3))-1`
-/

namespace A263794.P11782798498921007155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A065033 (n + 3)).toNat - 1

end

end A263794.P11782798498921007155

namespace A263794

/-- `A000125(A065033(n+3))-1` -/
def P11782798498921007155.Spec : Prop :=
  ∀ n, P11782798498921007155.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P8158417720793741606

`A175686(A213222(n+4))`
-/

namespace A263794.P8158417720793741606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175686 (A213222 (n + 4)).toNat

end

end A263794.P8158417720793741606

namespace A263794

/-- `A175686(A213222(n+4))` -/
def P8158417720793741606.Spec : Prop :=
  ∀ n, P8158417720793741606.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P5994977091663497899

`A175686(2*(A004526(n)+2))`
-/

namespace A263794.P5994977091663497899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175686 (2 * (A004526 n + 2)).toNat

end

end A263794.P5994977091663497899

namespace A263794

/-- `A175686(2*(A004526(n)+2))` -/
def P5994977091663497899.Spec : Prop :=
  ∀ n, P5994977091663497899.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P18028601131379070925

`A175686(A000035(n+1)+n+3)`
-/

namespace A263794.P18028601131379070925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175686 (A000035 (n + 1) + (n + 3 : ℤ)).toNat

end

end A263794.P18028601131379070925

namespace A263794

/-- `A175686(A000035(n+1)+n+3)` -/
def P18028601131379070925.Spec : Prop :=
  ∀ n, P18028601131379070925.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P3904109679702222504

`A175686(2*(A158416(n)+A152271(n)))`
-/

namespace A263794.P3904109679702222504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175686 (2 * (A158416 n + A152271 n)).toNat

end

end A263794.P3904109679702222504

namespace A263794

/-- `A175686(2*(A158416(n)+A152271(n)))` -/
def P3904109679702222504.Spec : Prop :=
  ∀ n, P3904109679702222504.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P16650425724475843655

`A175686(A057979(A124625(n+1))+n+3)`
-/

namespace A263794.P16650425724475843655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175686 (A057979 (A124625 (n + 1)).toNat + (n + 3 : ℤ)).toNat

end

end A263794.P16650425724475843655

namespace A263794

/-- `A175686(A057979(A124625(n+1))+n+3)` -/
def P16650425724475843655.Spec : Prop :=
  ∀ n, P16650425724475843655.a n = A263794 (n + 1)

end A263794

/-! ## A263794.P3091224128538638313

`A175686(A124625(A124625(n+1))+n+3)`
-/

namespace A263794.P3091224128538638313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175686 (A124625 (A124625 (n + 1)).toNat + (n + 3 : ℤ)).toNat

end

end A263794.P3091224128538638313

namespace A263794

/-- `A175686(A124625(A124625(n+1))+n+3)` -/
def P3091224128538638313.Spec : Prop :=
  ∀ n, P3091224128538638313.a n = A263794 (n + 1)

end A263794

/-!
# A263795: Number of (n+1)X(4+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

The programs for A263795, there is no canonical definition to state claims against.
-/

/-! ## A263795.P17708276488921888435

`A263799(C(n+5, 2)-n)`
-/

namespace A263795.P17708276488921888435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (Nat.choose (n + 5) 2 - n)

end

end A263795.P17708276488921888435

/-! ## A263795.P4429485512105062879

`A263799(A374004(n+1))`
-/

namespace A263795.P4429485512105062879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A374004 (n + 1)).toNat

end

end A263795.P4429485512105062879

/-! ## A263795.P11093483131508839788

`A263799(A145018(n+4))`
-/

namespace A263795.P11093483131508839788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A145018 (n + 4)).toNat

end

end A263795.P11093483131508839788

/-! ## A263795.P9884458344712025759

`A263799(A141214(n)+7)`
-/

namespace A263795.P9884458344712025759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A141214 n + 7).toNat

end

end A263795.P9884458344712025759

/-! ## A263795.P11052215400152184431

`A263799(A052905(n)+9)`
-/

namespace A263795.P11052215400152184431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A052905 n + 9).toNat

end

end A263795.P11052215400152184431

/-!
# A263796: Number of (n+1)X(5+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

The programs for A263796, there is no canonical definition to state claims against.
-/

/-! ## A263796.P5230647448101792260

`A263799(A374005(n+1))`
-/

namespace A263796.P5230647448101792260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A374005 (n + 1)).toNat

end

end A263796.P5230647448101792260

/-! ## A263796.P10691741479336429578

`A263799(A167499(n+3))`
-/

namespace A263796.P10691741479336429578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A167499 (n + 3)).toNat

end

end A263796.P10691741479336429578

/-! ## A263796.P10110061114327765590

`A263799(A155212(n)+13)`
-/

namespace A263796.P10110061114327765590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A155212 n + 13).toNat

end

end A263796.P10110061114327765590

/-! ## A263796.P12507781014063325043

`A263799(A056000(n)+15)`
-/

namespace A263796.P12507781014063325043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A056000 n + 15).toNat

end

end A263796.P12507781014063325043

/-! ## A263796.P13565907579068325909

`A263799(eq[7, A066657(n)])`
-/

namespace A263796.P13565907579068325909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263796.P13565907579068325909

/-!
# A263797: Number of (n+1) X (6+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

The programs for A263797, there is no canonical definition to state claims against.
-/

/-! ## A263797.P13735523284051899189

`A263799(A374007(n+1))`
-/

namespace A263797.P13735523284051899189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A374007 (n + 1)).toNat

end

end A263797.P13735523284051899189

/-! ## A263797.P7066673214425221809

`A263799(A166136(n+4))`
-/

namespace A263797.P7066673214425221809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A166136 (n + 4)).toNat

end

end A263797.P7066673214425221809

/-! ## A263797.P11431794325779813855

`A263799(A056115(n)+21)`
-/

namespace A263797.P11431794325779813855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A056115 n + 21).toNat

end

end A263797.P11431794325779813855

/-! ## A263797.P102390690356474570

`A263799(A000124(n+5)+5)`
-/

namespace A263797.P102390690356474570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A000124 (n + 5) + 5).toNat

end

end A263797.P102390690356474570

/-! ## A263797.P5115793890340708268

`A263799(A000217(n+5)+6)`
-/

namespace A263797.P5115793890340708268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A000217 (n + 5) + 6).toNat

end

end A263797.P5115793890340708268

/-!
# A263798: Number of (n+1)X(7+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

The programs for A263798, there is no canonical definition to state claims against.
-/

/-! ## A263798.P17894582769721611454

`A263799(A374008(n+1))`
-/

namespace A263798.P17894582769721611454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A374008 (n + 1)).toNat

end

end A263798.P17894582769721611454

/-! ## A263798.P6669592532543834336

`A263799(A056119(n)+28)`
-/

namespace A263798.P6669592532543834336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A056119 n + 28).toNat

end

end A263798.P6669592532543834336

/-! ## A263798.P7666395231242380402

`A263799(eq[11, A066657(n)])`
-/

namespace A263798.P7666395231242380402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263798.P7666395231242380402

/-! ## A263798.P6783535410026752637

`A263799(A167499(n+5)+2)`
-/

namespace A263798.P6783535410026752637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A167499 (n + 5) + 2).toNat

end

end A263798.P6783535410026752637

/-! ## A263798.P2244938124915978308

`A263799(A000124(n+6)+6)`
-/

namespace A263798.P2244938124915978308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263799 (A000124 (n + 6) + 6).toNat

end

end A263798.P2244938124915978308

/-!
# A263799: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

The programs for A263799, there is no canonical definition to state claims against.
-/

/-! ## A263799.P18170665109568755873

`A037144(A263873(n+1)%A014872(2*(n+1)))`
-/

namespace A263799.P18170665109568755873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (Int.tmod (A263873 (n + 1)) (A014872 (2 * (n + 1)))).toNat

end

end A263799.P18170665109568755873

/-! ## A263799.P9176681404421235008

`or(A144200(A103794(n+1)), A263873(n+1))`
-/

namespace A263799.P9176681404421235008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144200 (A103794 (n + 1)).toNat) (A263873 (n + 1))

end

end A263799.P9176681404421235008

/-! ## A263799.P14887689260704352537

`gcd(A092007(n+1), A263873(n+1))`
-/

namespace A263799.P14887689260704352537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092007 (n + 1)) (A263873 (n + 1))

end

end A263799.P14887689260704352537

/-! ## A263799.P7895944976352645750

`A263873(n+1)+A000122(A152529(n+2))`
-/

namespace A263799.P7895944976352645750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (n + 1) + A000122 (A152529 (n + 2)).toNat

end

end A263799.P7895944976352645750

