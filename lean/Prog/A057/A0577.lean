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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
# A057701: Twin lucky numbers: (n,m) are lucky numbers with |n-m|=2.

The programs for A057701, there is no canonical definition to state claims against.
-/

/-! ## A057701.P13554890575056755921

`∪[A031158(n+1), A031159(n+1)]`
-/

namespace A057701.P13554890575056755921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057701.P13554890575056755921

/-! ## A057701.P13445205566280932521

`A031158(A008619(n))+A010673(n)`
-/

namespace A057701.P13445205566280932521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (A008619 n).toNat + A010673 n

end

end A057701.P13445205566280932521

/-! ## A057701.P5720050253796620621

`A031160(A008619(n))-A033999(n)`
-/

namespace A057701.P5720050253796620621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031160 (A008619 n).toNat - A033999 n

end

end A057701.P5720050253796620621

/-! ## A057701.P4711810517958085486

`A033999(n+1)+A031160(A008619(n))`
-/

namespace A057701.P4711810517958085486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A031160 (A008619 n).toNat

end

end A057701.P4711810517958085486

/-! ## A057701.P13564718114795490148

`A031160(A008619(n))-A009001(2*n)`
-/

namespace A057701.P13564718114795490148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031160 (A008619 n).toNat - A009001 (2 * n)

end

end A057701.P13564718114795490148

/-! ## A057701.P15826509318989052921

`A031160(A008619(n))-A009531(2*n+1)`
-/

namespace A057701.P15826509318989052921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031160 (A008619 n).toNat - A009531 (2 * n + 1)

end

end A057701.P15826509318989052921

/-! ## A057701.P1964881577606291642

`A031160(A008619(n))-A094267(n²)`
-/

namespace A057701.P1964881577606291642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031160 (A008619 n).toNat - A094267 (n ^ 2)

end

end A057701.P1964881577606291642

/-!
# A057702: Even numbers not the sum of a pair of twin lucky numbers.

The programs for A057702, there is no canonical definition to state claims against.
-/

/-! ## A057702.P744093975432526203

`A273876(A112816(n+1))`
-/

namespace A057702.P744093975432526203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273876 (A112816 (n + 1)).toNat

end

end A057702.P744093975432526203

/-! ## A057702.P9943807286378996431

`A050652(lt[4, A089275(3*n+4)+1])`
-/

namespace A057702.P9943807286378996431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089275 (3 * n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A057702.P9943807286378996431

/-!
# A057703: a(n) = n*(94 + 5*n + 25*n^2 - 5*n^3 + n^4)/120.

The programs for A057703, the canonical program `A057703.P9441875660912202182` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057703 has offset 0).

The definition of A057703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057703.P9441875660912202182

`n*(94+5*n+25*n²-5*n^3+n^4)/120`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057703

/-- `n*(94+5*n+25*n²-5*n^3+n^4)/120` -/
def P9441875660912202182.Spec : Prop :=
  ∀ n, P9441875660912202182.a n = (A057703 n : ℚ)

end A057703

/-! ## A057703.P3333944935446599331

`∑[C(n, 4)]+∑[C(n, 2)]+n`
-/

namespace A057703.P3333944935446599331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A057703.P3333944935446599331

namespace A057703

/-- `∑[C(n, 4)]+∑[C(n, 2)]+n` -/
def P3333944935446599331.Spec : Prop :=
  ∀ n, (P3333944935446599331.a n : ℤ) = A057703 n

end A057703

/-! ## A057703.P1951867274604331674

`A006261(n)-1`
-/

namespace A057703.P1951867274604331674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n - 1

end

end A057703.P1951867274604331674

namespace A057703

/-- `A006261(n)-1` -/
def P1951867274604331674.Spec : Prop :=
  ∀ n, P1951867274604331674.a n = A057703 n

end A057703

/-! ## A057703.P14225482695832438555

`Δ[A008859(n)]-1`
-/

namespace A057703.P14225482695832438555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A057703.P14225482695832438555

namespace A057703

/-- `Δ[A008859(n)]-1` -/
def P14225482695832438555.Spec : Prop :=
  ∀ n, P14225482695832438555.a n = A057703 n

end A057703

/-! ## A057703.P10625204728357036413

`A362193(n)-1+n`
-/

namespace A057703.P10625204728357036413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362193 n - 1 + (n : ℤ)

end

end A057703.P10625204728357036413

namespace A057703

/-- `A362193(n)-1+n` -/
def P10625204728357036413.Spec : Prop :=
  ∀ n, P10625204728357036413.a n = A057703 n

end A057703

/-! ## A057703.P5058268641925196742

`∑[A006522(n)+n]-1`
-/

namespace A057703.P5058268641925196742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057703.P5058268641925196742

namespace A057703

/-- `∑[A006522(n)+n]-1` -/
def P5058268641925196742.Spec : Prop :=
  ∀ n, P5058268641925196742.a n = A057703 n

end A057703

/-! ## A057703.P5287511737345705490

`A004006(n)+∑[C(n, 4)]`
-/

namespace A057703.P5287511737345705490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057703.P5287511737345705490

namespace A057703

/-- `A004006(n)+∑[C(n, 4)]` -/
def P5287511737345705490.Spec : Prop :=
  ∀ n, P5287511737345705490.a n = A057703 n

end A057703

/-! ## A057703.P14957651978163591358

`A059174(n+1)/2-1`
-/

namespace A057703.P14957651978163591358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059174 (n + 1) : ℚ) / 2 - 1

end

end A057703.P14957651978163591358

namespace A057703

/-- `A059174(n+1)/2-1` -/
def P14957651978163591358.Spec : Prop :=
  ∀ n, P14957651978163591358.a n = (A057703 n : ℚ)

end A057703

/-! ## A057703.P12805718737105999545

`a(n-1)+A055795(n)+1` with `a(0)=0`
-/

namespace A057703.P12805718737105999545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A055795 n + 1)

end

end A057703.P12805718737105999545

namespace A057703

/-- `a(n-1)+A055795(n)+1` -/
def P12805718737105999545.Spec : Prop :=
  ∀ n, P12805718737105999545.a n = A057703 n

end A057703

/-! ## A057703.P4932780801975732470

`∑[A000332(n)]+∑[C(n, 2)]+n`
-/

namespace A057703.P4932780801975732470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ)

end

end A057703.P4932780801975732470

namespace A057703

/-- `∑[A000332(n)]+∑[C(n, 2)]+n` -/
def P4932780801975732470.Spec : Prop :=
  ∀ n, P4932780801975732470.a n = A057703 n

end A057703

/-! ## A057703.P8146635249167734065

`A362193(n)+A023443(n)`
-/

namespace A057703.P8146635249167734065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362193 n + A023443 n

end

end A057703.P8146635249167734065

namespace A057703

/-- `A362193(n)+A023443(n)` -/
def P8146635249167734065.Spec : Prop :=
  ∀ n, P8146635249167734065.a n = A057703 n

end A057703

/-! ## A057703.P15462111783355008339

`A115567(n)-A000579(n)`
-/

namespace A057703.P15462111783355008339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n - A000579 n

end

end A057703.P15462111783355008339

namespace A057703

/-- `A115567(n)-A000579(n)` -/
def P15462111783355008339.Spec : Prop :=
  ∀ n, P15462111783355008339.a n = A057703 n

end A057703

/-! ## A057703.P11960098573732427667

`A027660(n)-A136396(n)`
-/

namespace A057703.P11960098573732427667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027660 n - A136396 n

end

end A057703.P11960098573732427667

namespace A057703

/-- `A027660(n)-A136396(n)` -/
def P11960098573732427667.Spec : Prop :=
  ∀ n, P11960098573732427667.a n = A057703 n

end A057703

/-! ## A057703.P13519571577355674722

`A362193(n)-A024000(n)`
-/

namespace A057703.P13519571577355674722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362193 n - A024000 n

end

end A057703.P13519571577355674722

namespace A057703

/-- `A362193(n)-A024000(n)` -/
def P13519571577355674722.Spec : Prop :=
  ∀ n, P13519571577355674722.a n = A057703 n

end A057703

/-! ## A057703.P8893222207722242039

`A004006(n)+∑[A000332(n)]`
-/

namespace A057703.P8893222207722242039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057703.P8893222207722242039

namespace A057703

/-- `A004006(n)+∑[A000332(n)]` -/
def P8893222207722242039.Spec : Prop :=
  ∀ n, P8893222207722242039.a n = A057703 n

end A057703

/-! ## A057703.P11312795922007361915

`A055795(n+1)+A000389(n)`
-/

namespace A057703.P11312795922007361915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + A000389 n

end

end A057703.P11312795922007361915

namespace A057703

/-- `A055795(n+1)+A000389(n)` -/
def P11312795922007361915.Spec : Prop :=
  ∀ n, P11312795922007361915.a n = A057703 n

end A057703

/-! ## A057703.P16121847915676427601

`A008859(n)-(A000579(n)+1)`
-/

namespace A057703.P16121847915676427601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - (A000579 n + 1)

end

end A057703.P16121847915676427601

namespace A057703

/-- `A008859(n)-(A000579(n)+1)` -/
def P16121847915676427601.Spec : Prop :=
  ∀ n, P16121847915676427601.a n = A057703 n

end A057703

/-! ## A057703.P11048499629136384499

`A145127(n)-A308305(n+1)`
-/

namespace A057703.P11048499629136384499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n - A308305 (n + 1)

end

end A057703.P11048499629136384499

namespace A057703

/-- `A145127(n)-A308305(n+1)` -/
def P11048499629136384499.Spec : Prop :=
  ∀ n, P11048499629136384499.a n = A057703 n

end A057703

/-!
# A057704: Primorial - 1 prime indices: integers m such that the m-th primorial minus 1 is prime.

The programs for A057704, there is no canonical definition to state claims against.
-/

/-! ## A057704.P15930877797808494177

`A000720(A006794(n+1))`
-/

namespace A057704.P15930877797808494177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006794 (n + 1)).toNat

end

end A057704.P15930877797808494177

/-! ## A057704.P15726783313592214064

`A058933(p?[A006794(n+1)])`
-/

namespace A057704.P15726783313592214064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057704.P15726783313592214064

/-! ## A057704.P10059692927942652154

`A061395(p?[A006794(n+1)])`
-/

namespace A057704.P10059692927942652154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057704.P10059692927942652154

/-! ## A057704.P5051559380036904101

`A066328(p?[A006794(n+1)])`
-/

namespace A057704.P5051559380036904101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057704.P5051559380036904101

/-!
# A057705: Primorial primes: primes p such that p+1 is a primorial number (A002110).

The programs for A057705, there is no canonical definition to state claims against.
-/

/-! ## A057705.P16347253891468569709

`A002110(A057704(n+1))-1`
-/

namespace A057705.P16347253891468569709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A057704 (n + 1)).toNat - 1

end

end A057705.P16347253891468569709

/-!
# A057708: Numbers m such that 2^m reversed is prime.

The programs for A057708, there is no canonical definition to state claims against.
-/

/-! ## A057708.P11439015557905851740

`eq[2, A059215(n+1)]+1`
-/

namespace A057708.P11439015557905851740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057708.P11439015557905851740

/-! ## A057708.P16026526067447544602

`log2(A380992(n+1))`
-/

namespace A057708.P16026526067447544602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A380992 (n + 1) : ℝ)

end

end A057708.P16026526067447544602

/-! ## A057708.P962561698578189399

`eq[1, A102383(n)]`
-/

namespace A057708.P962561698578189399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057708.P962561698578189399

/-! ## A057708.P3233739467848366900

`record[(n+1)/A102383(n+1)]`
-/

namespace A057708.P3233739467848366900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A102383 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057708.P3233739467848366900

/-! ## A057708.P10740679276540665986

`eq[A102382(n), A267537(n)]`
-/

namespace A057708.P10740679276540665986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057708.P10740679276540665986

/-!
# A057709: Numbers k such that there is a unique m for which the sum of the aliquot parts of m (A001065) is k.

The programs for A057709, there is no canonical definition to state claims against.
-/

/-! ## A057709.P11751570339622265411

`eq[1, A048138(n+2)]+2`
-/

namespace A057709.P11751570339622265411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A057709.P11751570339622265411

/-! ## A057709.P7629732420689014067

`eq[2, A000010(a(A048138(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A057709.P7629732420689014067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000010 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P7629732420689014067

/-! ## A057709.P11980478466873299720

`eq[3, A000032(a(A048138(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A057709.P11980478466873299720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000032 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P11980478466873299720

/-! ## A057709.P10148061530361819765

`eq[2, A000040(a(A048138(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A057709.P10148061530361819765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000040 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P10148061530361819765

/-! ## A057709.P8754162598862731419

`eq[3, A000203(a(A048138(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A057709.P8754162598862731419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000203 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P8754162598862731419

/-! ## A057709.P2000641086149963067

`eq[2, A005114(a(A048138(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A057709.P2000641086149963067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A005114 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P2000641086149963067

/-! ## A057709.P15450092476208385747

`eq[2, A238895(a(A048138(n)))%10]` with `a(0)=3, a(1)=1`
-/

namespace A057709.P15450092476208385747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  Int.tmod (A238895 (f2 (A048138 n).toNat).toNat) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P15450092476208385747

/-! ## A057709.P13621930997519991978

`eq[1, A048138(A233583(n+1))]`
-/

namespace A057709.P13621930997519991978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P13621930997519991978

/-! ## A057709.P13236048738782350052

`eq[2, A238895(a(A048138(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A057709.P13236048738782350052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A238895 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057709.P13236048738782350052

/-!
# A057710: Positive integers k with exactly 2 aliquot sequence predecessors. In other words, there are exactly two solutions x for which s(x) = n. The function s(x) here is the sum of all proper divisors of x (A001065).

The programs for A057710, there is no canonical definition to state claims against.
-/

/-! ## A057710.P7147846581482734329

`eq[2, A048138(n+2)]+2`
-/

namespace A057710.P7147846581482734329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A057710.P7147846581482734329

/-! ## A057710.P7953140024842380492

`eq[2, A000010(a(A048138(n)))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A057710.P7953140024842380492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  A000010 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057710.P7953140024842380492

/-! ## A057710.P6263235748078151761

`eq[3, A000203(a(A048138(n)))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A057710.P6263235748078151761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  A000203 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057710.P6263235748078151761

/-! ## A057710.P17801504146120241988

`eq[2, A000040(a(A048138(n)))]` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A057710.P17801504146120241988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f2 =>
  A000040 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057710.P17801504146120241988

/-! ## A057710.P2184274715660179047

`eq[2, A005114(a(A048138(n)))]` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A057710.P2184274715660179047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f2 =>
  A005114 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057710.P2184274715660179047

/-! ## A057710.P4328870067688825984

`eq[2, A238895(a(A048138(n)))%10]` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A057710.P4328870067688825984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f2 =>
  Int.tmod (A238895 (f2 (A048138 n).toNat).toNat) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057710.P4328870067688825984

/-! ## A057710.P11577068720579785594

`eq[2, A238895(a(A048138(n)))]` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A057710.P11577068720579785594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f2 =>
  A238895 (f2 (A048138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057710.P11577068720579785594

/-! ## A057710.P10852611556027600727

`eq[2, A048138(A233583(n+1))]`
-/

namespace A057710.P10852611556027600727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057710.P10852611556027600727

/-!
# A057711: a(0)=0, a(1)=1, a(n) = n*2^(n-2) for n >= 2.

The programs for A057711, the canonical program `A057711.P3141756758756132265` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057711 has offset 0).

The definition of A057711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057711.P3141756758756132265

`ceil(n*2^(n-2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057711

/-- `ceil(n*2^(n-2))` -/
def P3141756758756132265.Spec : Prop :=
  ∀ n, P3141756758756132265.a n = A057711 n

theorem P3141756758756132265.correct : P3141756758756132265.Spec := by
  intro n
  simp only [A057711]

end A057711

/-! ## A057711.P11621089420558111533

`ogf((x-2x^2+2x^3)/(1-4x+4x^2))`
-/

namespace A057711.P11621089420558111533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2] [1, -4, 4] n

end

end A057711.P11621089420558111533

namespace A057711

/-- `ogf((x-2x^2+2x^3)/(1-4x+4x^2))` -/
def P11621089420558111533.Spec : Prop :=
  ∀ n, P11621089420558111533.a n = A057711 n

end A057711

/-! ## A057711.P2528430139086417918

`n*abs((-2)^floor(n-atan(n)))`
-/

namespace A057711.P2528430139086417918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * |(-2 : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)|

end

end A057711.P2528430139086417918

namespace A057711

/-- `n*abs((-2)^floor(n-atan(n)))` -/
def P2528430139086417918.Spec : Prop :=
  ∀ n, P2528430139086417918.a n = (A057711 n : ℚ)

end A057711

/-! ## A057711.P11531744992796713238

`n*Δ[2*a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A057711.P11531744992796713238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A057711.P11531744992796713238

namespace A057711

/-- `n*Δ[2*a(n-1)]` -/
def P11531744992796713238.Spec : Prop :=
  ∀ n, P11531744992796713238.a n = A057711 n

end A057711

/-! ## A057711.P13467815520362118356

`n*∑[2*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A057711.P13467815520362118356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057711.P13467815520362118356

namespace A057711

/-- `n*∑[2*a(n-1)]` -/
def P13467815520362118356.Spec : Prop :=
  ∀ n, (P13467815520362118356.a n : ℤ) = A057711 n

end A057711

/-! ## A057711.P9769306463024182398

`round(2^(n-3)*xor(1, 2*n+1))`
-/

namespace A057711.P9769306463024182398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.xor 1 (2 * n + 1) : ℚ))

end

end A057711.P9769306463024182398

namespace A057711

/-- `round(2^(n-3)*xor(1, 2*n+1))` -/
def P9769306463024182398.Spec : Prop :=
  ∀ n, P9769306463024182398.a n = A057711 n

end A057711

/-! ## A057711.P10991665199868096966

`2*a(n-1)/(1-1/n)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A057711.P10991665199868096966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 1) / (1 - 1 / (n : ℚ))

end

end A057711.P10991665199868096966

namespace A057711

/-- `2*a(n-1)/(1-1/n)` -/
def P10991665199868096966.Spec : Prop :=
  ∀ n, P10991665199868096966.a n = (A057711 n : ℚ)

end A057711

/-! ## A057711.P7215185567032621827

`2*a(n-1)+2^(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A057711.P7215185567032621827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A057711.P7215185567032621827

namespace A057711

/-- `2*a(n-1)+2^(n-2)` -/
def P7215185567032621827.Spec : Prop :=
  ∀ n, P7215185567032621827.a n = (A057711 n : ℚ)

end A057711

/-! ## A057711.P16947317074698791564

`4*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A057711.P16947317074698791564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A057711.P16947317074698791564

namespace A057711

/-- `4*(a(n-1)-a(n-2))` -/
def P16947317074698791564.Spec : Prop :=
  ∀ n, P16947317074698791564.a n = A057711 n

end A057711

/-! ## A057711.P9995822894880423977

`round(2^(n-3)*and(2*n+1, 2*n))`
-/

namespace A057711.P9995822894880423977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.land (2 * n + 1) (2 * n) : ℚ))

end

end A057711.P9995822894880423977

namespace A057711

/-- `round(2^(n-3)*and(2*n+1, 2*n))` -/
def P9995822894880423977.Spec : Prop :=
  ∀ n, P9995822894880423977.a n = A057711 n

end A057711

/-! ## A057711.P5485174904034978747

`n*A166444(n)`
-/

namespace A057711.P5485174904034978747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166444 n

end

end A057711.P5485174904034978747

namespace A057711

/-- `n*A166444(n)` -/
def P5485174904034978747.Spec : Prop :=
  ∀ n, P5485174904034978747.a n = A057711 n

end A057711

/-! ## A057711.P10016802884965498287

`lcm(n, A129952(n))`
-/

namespace A057711.P10016802884965498287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A129952 n)

end

end A057711.P10016802884965498287

namespace A057711

/-- `lcm(n, A129952(n))` -/
def P10016802884965498287.Spec : Prop :=
  ∀ n, (P10016802884965498287.a n : ℤ) = A057711 n

end A057711

/-! ## A057711.P1007333980143850097

`abs(n*A141531(n))`
-/

namespace A057711.P1007333980143850097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A141531 n|

end

end A057711.P1007333980143850097

namespace A057711

/-- `abs(n*A141531(n))` -/
def P1007333980143850097.Spec : Prop :=
  ∀ n, P1007333980143850097.a n = A057711 n

end A057711

/-! ## A057711.P14860510552003663794

`n*Δ[A034008(n)]`
-/

namespace A057711.P14860510552003663794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A057711.P14860510552003663794

namespace A057711

/-- `n*Δ[A034008(n)]` -/
def P14860510552003663794.Spec : Prop :=
  ∀ n, P14860510552003663794.a n = A057711 n

end A057711

/-! ## A057711.P2403860005656247472

`A129954(n)-2^n`
-/

namespace A057711.P2403860005656247472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n - (2 ^ n : ℤ)

end

end A057711.P2403860005656247472

namespace A057711

/-- `A129954(n)-2^n` -/
def P2403860005656247472.Spec : Prop :=
  ∀ n, P2403860005656247472.a n = A057711 n

end A057711

/-! ## A057711.P17979205275171459892

`n*2^A289207(n)`
-/

namespace A057711.P17979205275171459892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ (A289207 n : ℤ)

end

end A057711.P17979205275171459892

namespace A057711

/-- `n*2^A289207(n)` -/
def P17979205275171459892.Spec : Prop :=
  ∀ n, P17979205275171459892.a n = (A057711 n : ℚ)

end A057711

/-! ## A057711.P12954977034897460128

`n*A076736(Δ[n²])`
-/

namespace A057711.P12954977034897460128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057711.P12954977034897460128

namespace A057711

/-- `n*A076736(Δ[n²])` -/
def P12954977034897460128.Spec : Prop :=
  ∀ n, P12954977034897460128.a n = A057711 n

end A057711

/-! ## A057711.P4407270609518010935

`∑{d}[n, n*A123707(#)]`
-/

namespace A057711.P4407270609518010935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A123707 d

end

end A057711.P4407270609518010935

namespace A057711

/-- `∑{d}[n, n*A123707(#)]` -/
def P4407270609518010935.Spec : Prop :=
  ∀ n, P4407270609518010935.a n = A057711 n

end A057711

/-! ## A057711.P4606229068928496291

`char[1]+2*A049610(n)`
-/

namespace A057711.P4606229068928496291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A049610 n

end

end A057711.P4606229068928496291

namespace A057711

/-- `char[1]+2*A049610(n)` -/
def P4606229068928496291.Spec : Prop :=
  ∀ n, P4606229068928496291.a n = A057711 n

end A057711

/-! ## A057711.P16048614258637639374

`n/2*A090129(n+1)`
-/

namespace A057711.P16048614258637639374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A090129 (n + 1) : ℚ)

end

end A057711.P16048614258637639374

namespace A057711

/-- `n/2*A090129(n+1)` -/
def P16048614258637639374.Spec : Prop :=
  ∀ n, P16048614258637639374.a n = (A057711 n : ℚ)

end A057711

/-!
# A057712: Number of "polyhes" of order n: a polyhe of order n is obtained by taking a polyhex made of n hexagons (A000228); cutting each of the n hexagons along a diameter and throwing away half that hexagon, in such a way that the remaining figure (made of n half-hexagons) is connected.

The programs for A057712, there is no canonical definition to state claims against.
-/

/-! ## A057712.P5572635781375728506

`A371429(n)+A001222(A014507(n))`
-/

namespace A057712.P5572635781375728506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371429 n + A001222 (A014507 n).toNat

end

end A057712.P5572635781375728506

/-!
# A057713: Smallest prime divisor of Kummer numbers ( = primorials - 1), or 1 if no such prime exists.

The programs for A057713, there is no canonical definition to state claims against.
-/

/-! ## A057713.P8025938358163630975

`A020639(A057588(n+1))`
-/

namespace A057713.P8025938358163630975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057588 (n + 1)).toNat

end

end A057713.P8025938358163630975

/-! ## A057713.P10635107280682791952

`A020639(∏[p?[xor(1, n)+1]]-1)`
-/

namespace A057713.P10635107280682791952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A057713.P10635107280682791952

/-!
# A057714: Composite numbers m = Product p_i^{e_i} such that p_j^{e_j} < p_k^{e_k} for all p_j < p_k.

The programs for A057714, there is no canonical definition to state claims against.
-/

/-! ## A057714.P17160729569015468094

`∩[A085232(n+1), A383397(n+1)]`
-/

namespace A057714.P17160729569015468094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057714.P17160729569015468094

/-! ## A057714.P1005474552880602936

`∩[A085234(n+1), A383397(n+1)]`
-/

namespace A057714.P1005474552880602936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057714.P1005474552880602936

/-! ## A057714.P7182695476462945033

`∩[A024619(n+1), A383397(n+1)]`
-/

namespace A057714.P7182695476462945033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057714.P7182695476462945033

/-! ## A057714.P12310846220473580475

`filter[A383397(n+1), A143731(#)]`
-/

namespace A057714.P12310846220473580475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A057714.P12310846220473580475

/-! ## A057714.P13381639597555073793

`∩[A085232(n+1), A357862(n+1)]`
-/

namespace A057714.P13381639597555073793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057714.P13381639597555073793

/-!
# A057715: Numbers m = Product p_i^{e_i}, not a power of a prime, such that p_j^{e_j} > p_k^{e_k} for all p_j < p_k.

The programs for A057715, there is no canonical definition to state claims against.
-/

/-! ## A057715.P18352227999920954386

`record[A304233(A085231(n+1))%A332725(n+1)]`
-/

namespace A057715.P18352227999920954386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304233 (A085231 (n + 1)).toNat) (A332725 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057715.P18352227999920954386

/-! ## A057715.P771477710818120531

`∩[A085231(n+1), A383113(n+1)]`
-/

namespace A057715.P771477710818120531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057715.P771477710818120531

/-! ## A057715.P8362483096067247500

`∩[A085236(n+1), A383113(n+1)]`
-/

namespace A057715.P8362483096067247500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057715.P8362483096067247500

/-! ## A057715.P16529715074735017961

`∩[A102749(n+1), A383113(n+1)]`
-/

namespace A057715.P16529715074735017961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057715.P16529715074735017961

/-! ## A057715.P15416000145841618069

`∩[A126855(n+1), A383113(n+1)]`
-/

namespace A057715.P15416000145841618069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057715.P15416000145841618069

/-!
# A057716: The nonpowers of 2.

The programs for A057716, the canonical program `A057716.P12729927747178564493` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057716 has offset 0).

The definition of A057716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057716.P13485303150651173666

`comp[2^n]`
-/

namespace A057716.P13485303150651173666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A057716.P13485303150651173666

namespace A057716

/-- `comp[2^n]` -/
def P13485303150651173666.Spec : Prop :=
  ∀ n, (P13485303150651173666.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P12729927747178564493

`lt[xor(n, n-1), n]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057716

/-- `lt[xor(n, n-1), n]` -/
def P12729927747178564493.Spec : Prop :=
  ∀ n, (P12729927747178564493.a n : ℤ) = A057716 n

theorem P12729927747178564493.correct : P12729927747178564493.Spec := by
  intro n
  simp only [A057716]

end A057716

/-! ## A057716.P1511535228465306559

`lt[-(n+1), xor(n, -n)]`
-/

namespace A057716.P1511535228465306559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057716.P1511535228465306559

namespace A057716

/-- `lt[-(n+1), xor(n, -n)]` -/
def P1511535228465306559.Spec : Prop :=
  ∀ n, (P1511535228465306559.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P7814941431605309969

`lt[n, (and(n, n-1)+1)²]`
-/

namespace A057716.P7814941431605309969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((n : ℤ) - 1) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057716.P7814941431605309969

namespace A057716

/-- `lt[n, (and(n, n-1)+1)²]` -/
def P7814941431605309969.Spec : Prop :=
  ∀ n, (P7814941431605309969.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P555718396827302880

`lt[2*and(n, -n), n+1]`
-/

namespace A057716.P555718396827302880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057716.P555718396827302880

namespace A057716

/-- `lt[2*and(n, -n), n+1]` -/
def P555718396827302880.Spec : Prop :=
  ∀ n, (P555718396827302880.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P5053055124511572701

`lt[n-1, and(n, n-1)²]`
-/

namespace A057716.P5053055124511572701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057716.P5053055124511572701

namespace A057716

/-- `lt[n-1, and(n, n-1)²]` -/
def P5053055124511572701.Spec : Prop :=
  ∀ n, (P5053055124511572701.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P6716232675347812169

`lt[and(n, -n), (n+1)/2]`
-/

namespace A057716.P6716232675347812169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A057716.P6716232675347812169

namespace A057716

/-- `lt[and(n, -n), (n+1)/2]` -/
def P6716232675347812169.Spec : Prop :=
  ∀ n, (P6716232675347812169.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P5012203967247685400

`lt[atan(n-1), and(n, n-1)]`
-/

namespace A057716.P5012203967247685400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A057716.P5012203967247685400

namespace A057716

/-- `lt[atan(n-1), and(n, n-1)]` -/
def P5012203967247685400.Spec : Prop :=
  ∀ n, (P5012203967247685400.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P15556073751747548642

`lt[acot(n-1), and(n, n-1)]`
-/

namespace A057716.P15556073751747548642
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A057716.P15556073751747548642

namespace A057716

/-- `lt[acot(n-1), and(n, n-1)]` -/
def P15556073751747548642.Spec : Prop :=
  ∀ n, (P15556073751747548642.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P15261258182448802492

`lt[n, or(-(n+1), -n)²]`
-/

namespace A057716.P15261258182448802492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(n + 1 : ℤ)) (-(n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057716.P15261258182448802492

namespace A057716

/-- `lt[n, or(-(n+1), -n)²]` -/
def P15261258182448802492.Spec : Prop :=
  ∀ n, (P15261258182448802492.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P6348927889186469877

`lt[or(n, -n)², (1-n)²]`
-/

namespace A057716.P6348927889186469877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057716.P6348927889186469877

namespace A057716

/-- `lt[or(n, -n)², (1-n)²]` -/
def P6348927889186469877.Spec : Prop :=
  ∀ n, (P6348927889186469877.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P2394742988496950504

`lt[n-1, 2*and(n, n-1)]`
-/

namespace A057716.P2394742988496950504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057716.P2394742988496950504

namespace A057716

/-- `lt[n-1, 2*and(n, n-1)]` -/
def P2394742988496950504.Spec : Prop :=
  ∀ n, (P2394742988496950504.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P14532352249355270112

`lt[(n-1)/2, and(n, n-1)]`
-/

namespace A057716.P14532352249355270112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A057716.P14532352249355270112

namespace A057716

/-- `lt[(n-1)/2, and(n, n-1)]` -/
def P14532352249355270112.Spec : Prop :=
  ∀ n, (P14532352249355270112.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P5799802996933723962

`lt[n-1, and(n, n-1)^3]`
-/

namespace A057716.P5799802996933723962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057716.P5799802996933723962

namespace A057716

/-- `lt[n-1, and(n, n-1)^3]` -/
def P5799802996933723962.Spec : Prop :=
  ∀ n, (P5799802996933723962.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P9806329814589371661

`lt[-or(1-2*n, 2*n), n]`
-/

namespace A057716.P9806329814589371661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (1 - (2 * n : ℤ)) (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057716.P9806329814589371661

namespace A057716

/-- `lt[-or(1-2*n, 2*n), n]` -/
def P9806329814589371661.Spec : Prop :=
  ∀ n, (P9806329814589371661.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P1530198667142665601

`record[(n+1)%xor(n, 2*n+1)]`
-/

namespace A057716.P1530198667142665601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.xor n (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057716.P1530198667142665601

namespace A057716

/-- `record[(n+1)%xor(n, 2*n+1)]` -/
def P1530198667142665601.Spec : Prop :=
  ∀ n, (P1530198667142665601.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P17649078369182300320

`lt[n, (2*n-or(n, n-1))²]`
-/

namespace A057716.P17649078369182300320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - Int.lor (n : ℤ) ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057716.P17649078369182300320

namespace A057716

/-- `lt[n, (2*n-or(n, n-1))²]` -/
def P17649078369182300320.Spec : Prop :=
  ∀ n, (P17649078369182300320.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P12897998252747440332

`lt[-(n+1), or(2*n, -(2*n))]`
-/

namespace A057716.P12897998252747440332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057716.P12897998252747440332

namespace A057716

/-- `lt[-(n+1), or(2*n, -(2*n))]` -/
def P12897998252747440332.Spec : Prop :=
  ∀ n, (P12897998252747440332.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P8835170726406533744

`eq[0, C(n, and(2*n+1, 2*n-1))]`
-/

namespace A057716.P8835170726406533744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.land (2 * n + 1 : ℤ) ((2 * n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057716.P8835170726406533744

namespace A057716

/-- `eq[0, C(n, and(2*n+1, 2*n-1))]` -/
def P8835170726406533744.Spec : Prop :=
  ∀ n, (P8835170726406533744.a n : ℤ) = A057716 n

end A057716

/-! ## A057716.P17163560787383077020

`eq[0, A099893(n)]`
-/

namespace A057716.P17163560787383077020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057716.P17163560787383077020

namespace A057716

/-- `eq[0, A099893(n)]` -/
def P17163560787383077020.Spec : Prop :=
  ∀ n, (P17163560787383077020.a n : ℤ) = A057716 n

end A057716

/-!
# A057717: The non-powers of 10.

The programs for A057717, the canonical program `A057717.P7742189628641004801` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057717 has offset 0).

The definition of A057717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057717.P7742189628641004801

`comp[10^n]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057717

/-- `comp[10^n]` -/
def P7742189628641004801.Spec : Prop :=
  ∀ n, (P7742189628641004801.a n : ℤ) = A057717 n

theorem P7742189628641004801.correct : P7742189628641004801.Spec := by
  intro n
  simp only [A057717]

end A057717

/-! ## A057717.P13339777835762909506

`A055642(a(n-1)+1)+n` with `a(0)=0`
-/

namespace A057717.P13339777835762909506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A055642 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A057717.P13339777835762909506

namespace A057717

/-- `A055642(a(n-1)+1)+n` -/
def P13339777835762909506.Spec : Prop :=
  ∀ n, P13339777835762909506.a n = A057717 n

end A057717

/-! ## A057717.P17151560509163510394

`A004216(a(n-1)+1)+n+1` with `a(0)=0`
-/

namespace A057717.P17151560509163510394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004216 (a (n - 1) + 1).toNat + (n + 1 : ℤ)

end

end A057717.P17151560509163510394

namespace A057717

/-- `A004216(a(n-1)+1)+n+1` -/
def P17151560509163510394.Spec : Prop :=
  ∀ n, P17151560509163510394.a n = A057717 n

end A057717

/-! ## A057717.P5069515262794157746

`record[(n+2)%A061205(n+1)+n]/2`
-/

namespace A057717.P5069515262794157746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A061205 (n + 1)) + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A057717.P5069515262794157746

namespace A057717

/-- `record[(n+2)%A061205(n+1)+n]/2` -/
def P5069515262794157746.Spec : Prop :=
  ∀ n, P5069515262794157746.a n = (A057717 n : ℚ)

end A057717

/-! ## A057717.P7232050957652964069

`A004218(comp[A006879(n)])+n`
-/

namespace A057717.P7232050957652964069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (n : ℤ)

end

end A057717.P7232050957652964069

namespace A057717

/-- `A004218(comp[A006879(n)])+n` -/
def P7232050957652964069.Spec : Prop :=
  ∀ n, P7232050957652964069.a n = A057717 n

end A057717

/-! ## A057717.P12739090096355767884

`lt[n, A000010(n+1)^∑{digits}[n, #]]`
-/

namespace A057717.P12739090096355767884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057717.P12739090096355767884

namespace A057717

/-- `lt[n, A000010(n+1)^∑{digits}[n, #]]` -/
def P12739090096355767884.Spec : Prop :=
  ∀ n, (P12739090096355767884.a n : ℤ) = A057717 n

end A057717

/-! ## A057717.P2244682197101507996

`lt[A047813(n), A098660(A047813(n))]`
-/

namespace A057717.P2244682197101507996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098660 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057717.P2244682197101507996

namespace A057717

/-- `lt[A047813(n), A098660(A047813(n))]` -/
def P2244682197101507996.Spec : Prop :=
  ∀ n, (P2244682197101507996.a n : ℤ) = A057717 n

end A057717

/-! ## A057717.P4867423873851669453

`A000196(A028552(n)+A004276(n))`
-/

namespace A057717.P4867423873851669453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028552 n + A004276 n).toNat

end

end A057717.P4867423873851669453

namespace A057717

/-- `A000196(A028552(n)+A004276(n))` -/
def P4867423873851669453.Spec : Prop :=
  ∀ n, P4867423873851669453.a n = A057717 n

end A057717

/-! ## A057717.P11585761175798184769

`A259361(A028552(n)+A008576(n))`
-/

namespace A057717.P11585761175798184769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A028552 n + A008576 n).toNat

end

end A057717.P11585761175798184769

namespace A057717

/-- `A259361(A028552(n)+A008576(n))` -/
def P11585761175798184769.Spec : Prop :=
  ∀ n, P11585761175798184769.a n = A057717 n

end A057717

/-!
# A057718: A036917/8 (omitting leading term of A036917).

The programs for A057718, there is no canonical definition to state claims against.
-/

/-! ## A057718.P7665651013034697985

`A036917(n+1)/8`
-/

namespace A057718.P7665651013034697985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036917 (n + 1) : ℚ) / 8

end

end A057718.P7665651013034697985

/-! ## A057718.P9036719460842233897

`Δ[∑[A036917(n)]/8]`
-/

namespace A057718.P9036719460842233897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036917 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057718.P9036719460842233897

/-! ## A057718.P12283987556929581800

`record[ratio[A036917(A193592(n))]]`
-/

namespace A057718.P12283987556929581800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036917 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057718.P12283987556929581800

/-! ## A057718.P11710200744739673832

`record[ratio[A036917(A193739(n))]]`
-/

namespace A057718.P11710200744739673832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036917 (A193739 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057718.P11710200744739673832

/-! ## A057718.P10817518559577656280

`record[ratio[A036917(A146290(n+1))]]`
-/

namespace A057718.P10817518559577656280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036917 (A146290 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057718.P10817518559577656280

/-!
# A057719: Prime factors of numbers in A006521 (numbers k that divide 2^k + 1).

The programs for A057719, there is no canonical definition to state claims against.
-/

/-! ## A057719.P16583776831782399815

`A161331(A056118(n))+1`
-/

namespace A057719.P16583776831782399815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 (A056118 n).toNat + 1

end

end A057719.P16583776831782399815

/-!
# A057721: a(n) = n^4 + 3*n^2 + 1.

The programs for A057721, the canonical program `A057721.P14460608629272421114` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057721 has offset 0).

The definition of A057721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+3*n²+1` (program `A057721.P14460608629272421114`, by `A057721.P14460608629272421114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057721.P14460608629272421114

`n^4+3*n²+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057721

/-- `n^4+3*n²+1` -/
def P14460608629272421114.Spec : Prop :=
  ∀ n, (P14460608629272421114.a n : ℤ) = A057721 n

theorem P14460608629272421114.correct : P14460608629272421114.Spec := by
  intro n
  simp only [A057721]

end A057721

/-! ## A057721.P3708606339017556222

`xor(3, A304579(n))`
-/

namespace A057721.P3708606339017556222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A304579 n)

end

end A057721.P3708606339017556222

namespace A057721

/-- `xor(3, A304579(n))` -/
def P3708606339017556222.Spec : Prop :=
  ∀ n, P3708606339017556222.a n = A057721 n

end A057721

/-! ## A057721.P11684300430606549730

`or(1, n*A079908(n))`
-/

namespace A057721.P11684300430606549730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A079908 n)

end

end A057721.P11684300430606549730

namespace A057721

/-- `or(1, n*A079908(n))` -/
def P11684300430606549730.Spec : Prop :=
  ∀ n, P11684300430606549730.a n = A057721 n

end A057721

/-! ## A057721.P16933394797604437838

`abs(n²-A082106(n))`
-/

namespace A057721.P16933394797604437838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A082106 n|

end

end A057721.P16933394797604437838

namespace A057721

/-- `abs(n²-A082106(n))` -/
def P16933394797604437838.Spec : Prop :=
  ∀ n, P16933394797604437838.a n = A057721 n

end A057721

/-! ## A057721.P14433372435083870078

`lcm(1-A304579(n), A033999(n))`
-/

namespace A057721.P14433372435083870078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A304579 n) (A033999 n)

end

end A057721.P14433372435083870078

namespace A057721

/-- `lcm(1-A304579(n), A033999(n))` -/
def P14433372435083870078.Spec : Prop :=
  ∀ n, (P14433372435083870078.a n : ℤ) = A057721 n

end A057721

/-! ## A057721.P9221664391731186765

`∑[A008574(A004273(n))*A152947(n+1)]`
-/

namespace A057721.P9221664391731186765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004273 n).toNat * A152947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057721.P9221664391731186765

namespace A057721

/-- `∑[A008574(A004273(n))*A152947(n+1)]` -/
def P9221664391731186765.Spec : Prop :=
  ∀ n, P9221664391731186765.a n = A057721 n

end A057721

/-! ## A057721.P10751710932161532998

`or(1, A028552(n²))`
-/

namespace A057721.P10751710932161532998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028552 (n ^ 2))

end

end A057721.P10751710932161532998

namespace A057721

/-- `or(1, A028552(n²))` -/
def P10751710932161532998.Spec : Prop :=
  ∀ n, P10751710932161532998.a n = A057721 n

end A057721

/-! ## A057721.P13184101695021573266

`xor(1, A028552(A000290(n)))`
-/

namespace A057721.P13184101695021573266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A028552 (A000290 n).toNat)

end

end A057721.P13184101695021573266

namespace A057721

/-- `xor(1, A028552(A000290(n)))` -/
def P13184101695021573266.Spec : Prop :=
  ∀ n, P13184101695021573266.a n = A057721 n

end A057721

/-! ## A057721.P17497965534204647983

`record[A028552(A123596(n))+1]`
-/

namespace A057721.P17497965534204647983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A123596 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057721.P17497965534204647983

namespace A057721

/-- `record[A028552(A123596(n))+1]` -/
def P17497965534204647983.Spec : Prop :=
  ∀ n, P17497965534204647983.a n = A057721 n

end A057721

/-! ## A057721.P14753154548476774166

`A028387(n²)`
-/

namespace A057721.P14753154548476774166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (n ^ 2)

end

end A057721.P14753154548476774166

namespace A057721

/-- `A028387(n²)` -/
def P14753154548476774166.Spec : Prop :=
  ∀ n, P14753154548476774166.a n = A057721 n

end A057721

/-! ## A057721.P15535219592721130465

`sqrt(A062938(n²))`
-/

namespace A057721.P15535219592721130465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062938 (n ^ 2) : ℝ)

end

end A057721.P15535219592721130465

namespace A057721

/-- `sqrt(A062938(n²))` -/
def P15535219592721130465.Spec : Prop :=
  ∀ n, P15535219592721130465.a n = (A057721 n : ℝ)

end A057721

/-! ## A057721.P15423580399253890112

`A165900(n²+2)`
-/

namespace A057721.P15423580399253890112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (n ^ 2 + 2)

end

end A057721.P15423580399253890112

namespace A057721

/-- `A165900(n²+2)` -/
def P15423580399253890112.Spec : Prop :=
  ∀ n, P15423580399253890112.a n = A057721 n

end A057721

/-! ## A057721.P3595269941053719014

`A090288(n²)/2`
-/

namespace A057721.P3595269941053719014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090288 (n ^ 2) : ℚ) / 2

end

end A057721.P3595269941053719014

namespace A057721

/-- `A090288(n²)/2` -/
def P3595269941053719014.Spec : Prop :=
  ∀ n, P3595269941053719014.a n = (A057721 n : ℚ)

end A057721

/-! ## A057721.P10923974784623017784

`abs(A110331(n²+1))`
-/

namespace A057721.P10923974784623017784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110331 (n ^ 2 + 1)|

end

end A057721.P10923974784623017784

namespace A057721

/-- `abs(A110331(n²+1))` -/
def P10923974784623017784.Spec : Prop :=
  ∀ n, P10923974784623017784.a n = A057721 n

end A057721

/-! ## A057721.P4730070575783462482

`xor(3, A002378(n²+1))`
-/

namespace A057721.P4730070575783462482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A002378 (n ^ 2 + 1))

end

end A057721.P4730070575783462482

namespace A057721

/-- `xor(3, A002378(n²+1))` -/
def P4730070575783462482.Spec : Prop :=
  ∀ n, P4730070575783462482.a n = A057721 n

end A057721

/-!
# A057722: a(n) = n^4 - 3*n^2 + 1.

The programs for A057722, the canonical program `A057722.P17503710663781687125` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057722 has offset 0).

The definition of A057722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-3*n²+1` (program `A057722.P17503710663781687125`, by `A057722.P17503710663781687125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057722.P17503710663781687125

`n^4-3*n²+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057722

/-- `n^4-3*n²+1` -/
def P17503710663781687125.Spec : Prop :=
  ∀ n, P17503710663781687125.a n = A057722 n

theorem P17503710663781687125.correct : P17503710663781687125.Spec := by
  intro n
  simp only [A057722]

end A057722

/-! ## A057722.P14226704195044659940

`(A163323(n)/4+1)/4`
-/

namespace A057722.P14226704195044659940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A163323 n : ℚ) / 4 + 1) / 4

end

end A057722.P14226704195044659940

namespace A057722

/-- `(A163323(n)/4+1)/4` -/
def P14226704195044659940.Spec : Prop :=
  ∀ n, P14226704195044659940.a n = (A057722 n : ℚ)

end A057722

/-! ## A057722.P1241649631956101544

`(A000290(n)-(n+1))*(lcm(n, n+1)-1)`
-/

namespace A057722.P1241649631956101544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 n - (n + 1 : ℤ)) * ((Nat.lcm n (n + 1) : ℤ) - 1)

end

end A057722.P1241649631956101544

namespace A057722

/-- `(A000290(n)-(n+1))*(lcm(n, n+1)-1)` -/
def P1241649631956101544.Spec : Prop :=
  ∀ n, P1241649631956101544.a n = A057722 n

end A057722

/-! ## A057722.P13410894133418065057

`∑[A141530(n)-A004273(n)]`
-/

namespace A057722.P13410894133418065057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057722.P13410894133418065057

namespace A057722

/-- `∑[A141530(n)-A004273(n)]` -/
def P13410894133418065057.Spec : Prop :=
  ∀ n, P13410894133418065057.a n = A057722 n

end A057722

/-! ## A057722.P10904831830907656094

`A165900(n+1)*A165900(n)`
-/

namespace A057722.P10904831830907656094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (n + 1) * A165900 n

end

end A057722.P10904831830907656094

namespace A057722

/-- `A165900(n+1)*A165900(n)` -/
def P10904831830907656094.Spec : Prop :=
  ∀ n, P10904831830907656094.a n = A057722 n

end A057722

/-! ## A057722.P16165467362414979072

`(A002378(n)-1)*A165900(n)`
-/

namespace A057722.P16165467362414979072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n - 1) * A165900 n

end

end A057722.P16165467362414979072

namespace A057722

/-- `(A002378(n)-1)*A165900(n)` -/
def P16165467362414979072.Spec : Prop :=
  ∀ n, P16165467362414979072.a n = A057722 n

end A057722

/-! ## A057722.P10832710068830114114

`(A110331(n)+2*n)*A110331(n)`
-/

namespace A057722.P10832710068830114114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110331 n + (2 * n : ℤ)) * A110331 n

end

end A057722.P10832710068830114114

namespace A057722

/-- `(A110331(n)+2*n)*A110331(n)` -/
def P10832710068830114114.Spec : Prop :=
  ∀ n, P10832710068830114114.a n = A057722 n

end A057722

/-! ## A057722.P639011871319177588

`(A014209(n)-A005843(n))*A165900(n)`
-/

namespace A057722.P639011871319177588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014209 n - A005843 n) * A165900 n

end

end A057722.P639011871319177588

namespace A057722

/-- `(A014209(n)-A005843(n))*A165900(n)` -/
def P639011871319177588.Spec : Prop :=
  ∀ n, P639011871319177588.a n = A057722 n

end A057722

/-! ## A057722.P11461314404008567588

`A179272(2*(n+1))*A179272(2*n)`
-/

namespace A057722.P11461314404008567588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179272 (2 * (n + 1)) * A179272 (2 * n)

end

end A057722.P11461314404008567588

namespace A057722

/-- `A179272(2*(n+1))*A179272(2*n)` -/
def P11461314404008567588.Spec : Prop :=
  ∀ n, P11461314404008567588.a n = A057722 n

end A057722

/-! ## A057722.P16221597738987374723

`A060747(∑[n])*A165900(n)`
-/

namespace A057722.P16221597738987374723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (∑ j ∈ Finset.range (n + 1), f1 j) * A165900 n

end

end A057722.P16221597738987374723

namespace A057722

/-- `A060747(∑[n])*A165900(n)` -/
def P16221597738987374723.Spec : Prop :=
  ∀ n, P16221597738987374723.a n = A057722 n

end A057722

/-!
# A057723: Sum of positive divisors of n that are divisible by every prime that divides n.

The programs for A057723, the canonical program `A057723.P9092718560045484766` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057723 has offset 1).

The definition of A057723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057723.P9092718560045484766

`A007947(n+1)*A000203(A003557(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057723

/-- `A007947(n+1)*A000203(A003557(n+1))` -/
def P9092718560045484766.Spec : Prop :=
  ∀ n, P9092718560045484766.a n = A057723 (n + 1)

theorem P9092718560045484766.correct : P9092718560045484766.Spec := by
  intro n
  simp only [A057723, Nat.add_sub_cancel]

end A057723

/-! ## A057723.P16772987397701063621

`∑{d}[n+1, A384050(#)]`
-/

namespace A057723.P16772987397701063621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384050 d

end

end A057723.P16772987397701063621

namespace A057723

/-- `∑{d}[n+1, A384050(#)]` -/
def P16772987397701063621.Spec : Prop :=
  ∀ n, P16772987397701063621.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P592050523642832031

`A336563(n+1)+1+n`
-/

namespace A057723.P592050523642832031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + 1 + (n : ℤ)

end

end A057723.P592050523642832031

namespace A057723

/-- `A336563(n+1)+1+n` -/
def P592050523642832031.Spec : Prop :=
  ∀ n, P592050523642832031.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P5095730388445867346

`∑{d}[n+1, #*A397412((n+1)/#)]`
-/

namespace A057723.P5095730388445867346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A397412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057723.P5095730388445867346

namespace A057723

/-- `∑{d}[n+1, #*A397412((n+1)/#)]` -/
def P5095730388445867346.Spec : Prop :=
  ∀ n, P5095730388445867346.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P3818687798914976190

`A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]`
-/

namespace A057723.P3818687798914976190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A057723.P3818687798914976190

namespace A057723

/-- `A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]` -/
def P3818687798914976190.Spec : Prop :=
  ∀ n, P3818687798914976190.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P15724740809096200094

`A336564(n+1)+A001065(n+1)`
-/

namespace A057723.P15724740809096200094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + A001065 (n + 1)

end

end A057723.P15724740809096200094

namespace A057723

/-- `A336564(n+1)+A001065(n+1)` -/
def P15724740809096200094.Spec : Prop :=
  ∀ n, P15724740809096200094.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P5414608046403433019

`A389170(n+1)+A048146(n+1)`
-/

namespace A057723.P5414608046403433019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389170 (n + 1) + A048146 (n + 1)

end

end A057723.P5414608046403433019

namespace A057723

/-- `A389170(n+1)+A048146(n+1)` -/
def P5414608046403433019.Spec : Prop :=
  ∀ n, P5414608046403433019.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P15530881045293897290

`A396544(n+1)+A051377(n+1)`
-/

namespace A057723.P15530881045293897290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396544 (n + 1) + A051377 (n + 1)

end

end A057723.P15530881045293897290

namespace A057723

/-- `A396544(n+1)+A051377(n+1)` -/
def P15530881045293897290.Spec : Prop :=
  ∀ n, P15530881045293897290.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P7464674717828510862

`A396549(n+1)+A322857(n+1)`
-/

namespace A057723.P7464674717828510862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396549 (n + 1) + A322857 (n + 1)

end

end A057723.P7464674717828510862

namespace A057723

/-- `A396549(n+1)+A322857(n+1)` -/
def P7464674717828510862.Spec : Prop :=
  ∀ n, P7464674717828510862.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P16203789702847725946

`A000203(n+1)-A308135(n+1)`
-/

namespace A057723.P16203789702847725946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A308135 (n + 1)

end

end A057723.P16203789702847725946

namespace A057723

/-- `A000203(n+1)-A308135(n+1)` -/
def P16203789702847725946.Spec : Prop :=
  ∀ n, P16203789702847725946.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P8831824011178036895

`A007947(n+1)*A335341(n+1)`
-/

namespace A057723.P8831824011178036895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A335341 (n + 1)

end

end A057723.P8831824011178036895

namespace A057723

/-- `A007947(n+1)*A335341(n+1)` -/
def P8831824011178036895.Spec : Prop :=
  ∀ n, P8831824011178036895.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P13141875812198031272

`A389446(n+1)*A389448(n+1)`
-/

namespace A057723.P13141875812198031272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389446 (n + 1) * A389448 (n + 1)

end

end A057723.P13141875812198031272

namespace A057723

/-- `A389446(n+1)*A389448(n+1)` -/
def P13141875812198031272.Spec : Prop :=
  ∀ n, P13141875812198031272.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P6486168432656328128

`A000203(n+1)+A336564(n+1)-(n+1)`
-/

namespace A057723.P6486168432656328128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A336564 (n + 1) - (n + 1 : ℤ))

end

end A057723.P6486168432656328128

namespace A057723

/-- `A000203(n+1)+A336564(n+1)-(n+1)` -/
def P6486168432656328128.Spec : Prop :=
  ∀ n, P6486168432656328128.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P12619337610413633660

`∑{d}[n+1, A023900(#)*A069193((n+1)/#)]`
-/

namespace A057723.P12619337610413633660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A069193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057723.P12619337610413633660

namespace A057723

/-- `∑{d}[n+1, A023900(#)*A069193((n+1)/#)]` -/
def P12619337610413633660.Spec : Prop :=
  ∀ n, P12619337610413633660.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P4263467765889036646

`A000203((n+1)/∏{p}[n+1, #])*A007947(n+1)`
-/

namespace A057723.P4263467765889036646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A007947 (n + 1)

end

end A057723.P4263467765889036646

namespace A057723

/-- `A000203((n+1)/∏{p}[n+1, #])*A007947(n+1)` -/
def P4263467765889036646.Spec : Prop :=
  ∀ n, P4263467765889036646.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P12045288981770592284

`A015052(A015052(n+1))*A335341(n+1)`
-/

namespace A057723.P12045288981770592284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A335341 (n + 1)

end

end A057723.P12045288981770592284

namespace A057723

/-- `A015052(A015052(n+1))*A335341(n+1)` -/
def P12045288981770592284.Spec : Prop :=
  ∀ n, P12045288981770592284.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P17521450152215552731

`A015053(A015053(n+1))*A335341(n+1)`
-/

namespace A057723.P17521450152215552731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A335341 (n + 1)

end

end A057723.P17521450152215552731

namespace A057723

/-- `A015053(A015053(n+1))*A335341(n+1)` -/
def P17521450152215552731.Spec : Prop :=
  ∀ n, P17521450152215552731.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P13803150086953388455

`(A336567(n+1)+A003557(n+1))*A007947(n+1)`
-/

namespace A057723.P13803150086953388455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336567 (n + 1) + A003557 (n + 1)) * A007947 (n + 1)

end

end A057723.P13803150086953388455

namespace A057723

/-- `(A336567(n+1)+A003557(n+1))*A007947(n+1)` -/
def P13803150086953388455.Spec : Prop :=
  ∀ n, P13803150086953388455.a n = A057723 (n + 1)

end A057723

/-! ## A057723.P11962384498154744492

`A389446(n+1)*A389447(n+1)-A308135(n+1)`
-/

namespace A057723.P11962384498154744492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389446 (n + 1) * A389447 (n + 1) - A308135 (n + 1)

end

end A057723.P11962384498154744492

namespace A057723

/-- `A389446(n+1)*A389447(n+1)-A308135(n+1)` -/
def P11962384498154744492.Spec : Prop :=
  ∀ n, P11962384498154744492.a n = A057723 (n + 1)

end A057723

/-!
# A057724: Number of "polyares" of order n (turning over allowed).

The programs for A057724, there is no canonical definition to state claims against.
-/

/-! ## A057724.P11815843774519453413

`A090864(A366237(n))-A245920(n)`
-/

namespace A057724.P11815843774519453413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (A366237 n).toNat - A245920 n

end

end A057724.P11815843774519453413

/-!
# A057725: Number of "polyares" of order n (turning over not allowed).

The programs for A057725, there is no canonical definition to state claims against.
-/

/-! ## A057725.P10746363412401699940

`A189484(A001410(n))`
-/

namespace A057725.P10746363412401699940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189484 (A001410 n).toNat

end

end A057725.P10746363412401699940

/-!
# A057727: a(n) = 3^(2^n) + 2.

The programs for A057727, the canonical program `A057727.P14928751635033758449` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057727 has offset 0).

The definition of A057727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^2^n+2` (program `A057727.P14928751635033758449`, by `A057727.P14928751635033758449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057727.P14928751635033758449

`3^2^n+2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057727

/-- `3^2^n+2` -/
def P14928751635033758449.Spec : Prop :=
  ∀ n, (P14928751635033758449.a n : ℤ) = A057727 n

theorem P14928751635033758449.correct : P14928751635033758449.Spec := by
  intro n
  simp only [A057727]

end A057727

/-! ## A057727.P773536333589822025

`or(2, (2-a(n-1))²)` with `a(0)=5`
-/

namespace A057727.P773536333589822025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor 2 ((2 - a (n - 1)) ^ 2)

end

end A057727.P773536333589822025

namespace A057727

/-- `or(2, (2-a(n-1))²)` -/
def P773536333589822025.Spec : Prop :=
  ∀ n, P773536333589822025.a n = A057727 n

end A057727

/-! ## A057727.P15774023881900120203

`xor(2, (2-a(n-1))²)` with `a(0)=5`
-/

namespace A057727.P15774023881900120203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor 2 ((2 - a (n - 1)) ^ 2)

end

end A057727.P15774023881900120203

namespace A057727

/-- `xor(2, (2-a(n-1))²)` -/
def P15774023881900120203.Spec : Prop :=
  ∀ n, P15774023881900120203.a n = A057727 n

end A057727

/-! ## A057727.P10616966112734146194

`∑[abs(Δ[a(n-1)²])]` with `a(0)=8, a(1)=3`
-/

namespace A057727.P10616966112734146194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 3] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057727.P10616966112734146194

namespace A057727

/-- `∑[abs(Δ[a(n-1)²])]` -/
def P10616966112734146194.Spec : Prop :=
  ∀ n, P10616966112734146194.a n = A057727 n

end A057727

/-!
# A057728: A triangular table of decreasing powers of two (with first column all ones).

The programs for A057728, the canonical program `A057728.P7080586031202781253` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057728 has offset 1).

The definition of A057728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057728.P18291639434002626745

`2^(A193592(n)-1)`
-/

namespace A057728.P18291639434002626745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A193592 n - 1 : ℤ)

end

end A057728.P18291639434002626745

namespace A057728

/-- `2^(A193592(n)-1)` -/
def P18291639434002626745.Spec : Prop :=
  ∀ n, P18291639434002626745.a n = (A057728 (n + 1) : ℚ)

end A057728

/-! ## A057728.P18007135375519465010

`abs(A152568(abs(1-n)))`
-/

namespace A057728.P18007135375519465010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A152568 |1 - (n : ℤ)|.toNat)|

end

end A057728.P18007135375519465010

namespace A057728

/-- `abs(A152568(abs(1-n)))` -/
def P18007135375519465010.Spec : Prop :=
  ∀ n, P18007135375519465010.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P9420843694576394326

`A155038(C(2, n)+n)`
-/

namespace A057728.P9420843694576394326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (Nat.choose 2 n + n)

end

end A057728.P9420843694576394326

namespace A057728

/-- `A155038(C(2, n)+n)` -/
def P9420843694576394326.Spec : Prop :=
  ∀ n, P9420843694576394326.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P7080586031202781253

`A059268(A056943(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057728

/-- `A059268(A056943(n))` -/
def P7080586031202781253.Spec : Prop :=
  ∀ n, P7080586031202781253.a n = A057728 (n + 1)

theorem P7080586031202781253.correct : P7080586031202781253.Spec := by
  intro n
  simp only [A057728, Nat.add_sub_cancel]

end A057728

/-! ## A057728.P13539880972497780506

`A155038(A028310(n))`
-/

namespace A057728.P13539880972497780506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (A028310 n).toNat

end

end A057728.P13539880972497780506

namespace A057728

/-- `A155038(A028310(n))` -/
def P13539880972497780506.Spec : Prop :=
  ∀ n, P13539880972497780506.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P13464501043151633992

`A011782(A193592(n))`
-/

namespace A057728.P13464501043151633992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A193592 n).toNat

end

end A057728.P13464501043151633992

namespace A057728

/-- `A011782(A193592(n))` -/
def P13464501043151633992.Spec : Prop :=
  ∀ n, P13464501043151633992.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P11777089386185328502

`A166444(A193592(n)+1)`
-/

namespace A057728.P11777089386185328502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A193592 n + 1).toNat

end

end A057728.P11777089386185328502

namespace A057728

/-- `A166444(A193592(n)+1)` -/
def P11777089386185328502.Spec : Prop :=
  ∀ n, P11777089386185328502.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P4661920395637767469

`A155038(A000007(n)+n)`
-/

namespace A057728.P4661920395637767469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (A000007 n + (n : ℤ)).toNat

end

end A057728.P4661920395637767469

namespace A057728

/-- `A155038(A000007(n)+n)` -/
def P4661920395637767469.Spec : Prop :=
  ∀ n, P4661920395637767469.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P12073274306271352344

`A155038(A023531(n)+n)`
-/

namespace A057728.P12073274306271352344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (A023531 n + (n : ℤ)).toNat

end

end A057728.P12073274306271352344

namespace A057728

/-- `A155038(A023531(n)+n)` -/
def P12073274306271352344.Spec : Prop :=
  ∀ n, P12073274306271352344.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P14937281824739813605

`A059268(A056942(n)-n)`
-/

namespace A057728.P14937281824739813605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A056942 n - (n : ℤ)).toNat

end

end A057728.P14937281824739813605

namespace A057728

/-- `A059268(A056942(n)-n)` -/
def P14937281824739813605.Spec : Prop :=
  ∀ n, P14937281824739813605.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P16217526682668750795

`A038207(n)/A091918(n)`
-/

namespace A057728.P16217526682668750795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A091918 n : ℚ)

end

end A057728.P16217526682668750795

namespace A057728

/-- `A038207(n)/A091918(n)` -/
def P16217526682668750795.Spec : Prop :=
  ∀ n, P16217526682668750795.a n = (A057728 (n + 1) : ℚ)

end A057728

/-! ## A057728.P14731953913070838995

`gcd(A010816(n), A130321(n))`
-/

namespace A057728.P14731953913070838995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A130321 n)

end

end A057728.P14731953913070838995

namespace A057728

/-- `gcd(A010816(n), A130321(n))` -/
def P14731953913070838995.Spec : Prop :=
  ∀ n, (P14731953913070838995.a n : ℤ) = A057728 (n + 1)

end A057728

/-! ## A057728.P3240491089745732825

`gcd(A103452(n), A131817(n))`
-/

namespace A057728.P3240491089745732825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A131817 n)

end

end A057728.P3240491089745732825

namespace A057728

/-- `gcd(A103452(n), A131817(n))` -/
def P3240491089745732825.Spec : Prop :=
  ∀ n, (P3240491089745732825.a n : ℤ) = A057728 (n + 1)

end A057728

/-! ## A057728.P15426944715225644352

`A131577(A193592(n)+1)/2`
-/

namespace A057728.P15426944715225644352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (A193592 n + 1).toNat : ℚ) / 2

end

end A057728.P15426944715225644352

namespace A057728

/-- `A131577(A193592(n)+1)/2` -/
def P15426944715225644352.Spec : Prop :=
  ∀ n, P15426944715225644352.a n = (A057728 (n + 1) : ℚ)

end A057728

/-! ## A057728.P7482544340822666263

`A130321(n*(1-A010054(n)))`
-/

namespace A057728.P7482544340822666263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 ((n : ℤ) * (1 - A010054 n)).toNat

end

end A057728.P7482544340822666263

namespace A057728

/-- `A130321(n*(1-A010054(n)))` -/
def P7482544340822666263.Spec : Prop :=
  ∀ n, P7482544340822666263.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P4629563098251816903

`A059268(n-2*A002262(n))`
-/

namespace A057728.P4629563098251816903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 ((n : ℤ) - 2 * A002262 n).toNat

end

end A057728.P4629563098251816903

namespace A057728

/-- `A059268(n-2*A002262(n))` -/
def P4629563098251816903.Spec : Prop :=
  ∀ n, P4629563098251816903.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P5943846141183449900

`A059268(2*A057944(n)-n)`
-/

namespace A057728.P5943846141183449900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A057944 n - (n : ℤ)).toNat

end

end A057728.P5943846141183449900

namespace A057728

/-- `A059268(2*A057944(n)-n)` -/
def P5943846141183449900.Spec : Prop :=
  ∀ n, P5943846141183449900.a n = A057728 (n + 1)

end A057728

/-! ## A057728.P8360064118934739896

`A130321(n*(2-A035214(n)))`
-/

namespace A057728.P8360064118934739896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 ((n : ℤ) * (2 - A035214 n)).toNat

end

end A057728.P8360064118934739896

namespace A057728

/-- `A130321(n*(2-A035214(n)))` -/
def P8360064118934739896.Spec : Prop :=
  ∀ n, P8360064118934739896.a n = A057728 (n + 1)

end A057728

/-!
# A057729: Number of triangular polyominoes (or polyiamonds) [A000577] with perimeter n.

The programs for A057729, there is no canonical definition to state claims against.
-/

/-! ## A057729.P11791043581354420325

`A284869(n+1)+A036639(A036640(n))`
-/

namespace A057729.P11791043581354420325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284869 (n + 1) + A036639 (A036640 n).toNat

end

end A057729.P11791043581354420325

/-! ## A057729.P15958775453478851905

`A284869(n+1)+A086016(A003239(n))`
-/

namespace A057729.P15958775453478851905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284869 (n + 1) + A086016 (A003239 n).toNat

end

end A057729.P15958775453478851905

/-! ## A057729.P2000584177086724978

`A284869(n+1)+A097249(A007051(n))`
-/

namespace A057729.P2000584177086724978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284869 (n + 1) + A097249 (A007051 n).toNat

end

end A057729.P2000584177086724978

/-! ## A057729.P2840857406433818415

`A284869(n+1)+A107846(A000105(n))`
-/

namespace A057729.P2840857406433818415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284869 (n + 1) + A107846 (A000105 n).toNat

end

end A057729.P2840857406433818415

/-!
# A057730: Number of free polyominoes (A000105) with perimeter 2n.

The programs for A057730, there is no canonical definition to state claims against.
-/

/-! ## A057730.P12691307765382582161

`A130622(n+1)-A130622(A028310(n))`
-/

namespace A057730.P12691307765382582161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130622 (n + 1) - A130622 (A028310 n).toNat

end

end A057730.P12691307765382582161

/-! ## A057730.P13500401937497623108

`A266549(n+1)+A025426(A002057(n))`
-/

namespace A057730.P13500401937497623108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266549 (n + 1) + A025426 (A002057 n).toNat

end

end A057730.P13500401937497623108

/-! ## A057730.P15949315837943991380

`A266549(n+1)+A089233(A003319(n))`
-/

namespace A057730.P15949315837943991380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266549 (n + 1) + A089233 (A003319 n).toNat

end

end A057730.P15949315837943991380

/-! ## A057730.P5724468037769134406

`A266549(n+1)+A137579(A027558(n))`
-/

namespace A057730.P5724468037769134406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266549 (n + 1) + A137579 (A027558 n).toNat

end

end A057730.P5724468037769134406

/-!
# A057731: Irregular triangle read by rows: T(n,k) = number of elements of order k in symmetric group S_n, for n >= 1, 1 <= k <= g(n), where g(n) = A000793(n) is Landau's function.

The programs for A057731, there is no canonical definition to state claims against.
-/

/-! ## A057731.P12805320201341110947

`A126074(n+1)/A061704(A036256(n))`
-/

namespace A057731.P12805320201341110947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126074 (n + 1) : ℚ) / (A061704 (A036256 n).toNat : ℚ)

end

end A057731.P12805320201341110947

/-! ## A057731.P9831121625549846709

`A126074(n+1)/A163100(A094587(n))`
-/

namespace A057731.P9831121625549846709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126074 (n + 1) : ℚ) / (A163100 (A094587 n).toNat : ℚ)

end

end A057731.P9831121625549846709

/-! ## A057731.P3614259043304493399

`A126074(n+1)/A030614(A094587(n)²)`
-/

namespace A057731.P3614259043304493399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126074 (n + 1) : ℚ) / (A030614 (A094587 n ^ 2).toNat : ℚ)

end

end A057731.P3614259043304493399

/-! ## A057731.P4406742514369391009

`A126074(A187829(n+1))/A182172(n)!`
-/

namespace A057731.P4406742514369391009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126074 (A187829 (n + 1)).toNat : ℚ) / (Nat.factorial (A182172 n).toNat : ℚ)

end

end A057731.P4406742514369391009

/-! ## A057731.P3723658414086150491

`gcd(A055932(A078408(2*n+1)), A126074(n+1))`
-/

namespace A057731.P3723658414086150491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055932 (A078408 (2 * n + 1)).toNat) (A126074 (n + 1))

end

end A057731.P3723658414086150491

/-!
# A057732: Numbers k such that 2^k + 3 is prime.

The programs for A057732, there is no canonical definition to state claims against.
-/

/-! ## A057732.P12679780065056046697

`eq[1, gcd(3, A116535(n))]`
-/

namespace A057732.P12679780065056046697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A116535 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057732.P12679780065056046697

/-! ## A057732.P3956825955350163877

`eq[3, A056206(n)]`
-/

namespace A057732.P3956825955350163877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057732.P3956825955350163877

/-! ## A057732.P617133881682393735

`eq[1, A159266(n+1)]+1`
-/

namespace A057732.P617133881682393735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057732.P617133881682393735

/-! ## A057732.P16366816906660471511

`eq[3, A264050(n+1)]+1`
-/

namespace A057732.P16366816906660471511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057732.P16366816906660471511

/-! ## A057732.P4815300476481638857

`eq[A122553(n), A264050(A028310(n))]`
-/

namespace A057732.P4815300476481638857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264050 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057732.P4815300476481638857

/-!
# A057733: Primes of the form 2^k + 3.

The programs for A057733, there is no canonical definition to state claims against.
-/

/-! ## A057733.P12768223794689793804

`2^A057732(n+1)+3`
-/

namespace A057733.P12768223794689793804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057732 (n + 1) : ℤ) + 3

end

end A057733.P12768223794689793804

/-! ## A057733.P1839382447488142923

`record[A162491(n+1)]`
-/

namespace A057733.P1839382447488142923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057733.P1839382447488142923

/-! ## A057733.P8803005449381365218

`A056208(A057732(n+1))`
-/

namespace A057733.P8803005449381365218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 (A057732 (n + 1)).toNat

end

end A057733.P8803005449381365218

/-! ## A057733.P4670653088179018479

`A056208(eq[3, A056206(n)])`
-/

namespace A057733.P4670653088179018479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057733.P4670653088179018479

/-! ## A057733.P13807796162001244148

`∩[A056208(n), A062709(n)]`
-/

namespace A057733.P13807796162001244148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057733.P13807796162001244148

/-!
# A057735: Primes of the form 3^k + 2.

The programs for A057735, there is no canonical definition to state claims against.
-/

/-! ## A057735.P5419610554408772827

`3^A051783(n+1)+2`
-/

namespace A057735.P5419610554408772827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A051783 (n + 1) : ℤ) + 2

end

end A057735.P5419610554408772827

/-! ## A057735.P1960713619110177594

`A080443(A051783(n+1))`
-/

namespace A057735.P1960713619110177594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080443 (A051783 (n + 1)).toNat

end

end A057735.P1960713619110177594

/-! ## A057735.P6417297231523834883

`A168607(lt[A123359(n), 2])`
-/

namespace A057735.P6417297231523834883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057735.P6417297231523834883

/-! ## A057735.P7395997055079645808

`A080443(eq[n, n*A123359(n)])`
-/

namespace A057735.P7395997055079645808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057735.P7395997055079645808

/-! ## A057735.P15088838595398504960

`A168607(A051783(2*n+1-n))`
-/

namespace A057735.P15088838595398504960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (A051783 (2 * n + 1 - n)).toNat

end

end A057735.P15088838595398504960

/-!
# A057742: Maximal order of element of alternating group A_{2n}.

The programs for A057742, there is no canonical definition to state claims against.
-/

/-! ## A057742.P17473660213554335531

`A051593(2*n)`
-/

namespace A057742.P17473660213554335531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 (2 * n)

end

end A057742.P17473660213554335531

/-! ## A057742.P15681111261325359213

`or(char[1], A051593(A004277(n)))`
-/

namespace A057742.P15681111261325359213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051593 (A004277 n).toNat)

end

end A057742.P15681111261325359213

/-! ## A057742.P190020064624808496

`or(char[1], A051593(A005843(n)))`
-/

namespace A057742.P190020064624808496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051593 (A005843 n).toNat)

end

end A057742.P190020064624808496

/-! ## A057742.P10796330844471526719

`A051593(gcd(n, C(2, n))+n)%A000031(n+4)`
-/

namespace A057742.P10796330844471526719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051593 (Nat.gcd n (Nat.choose 2 n) + n)) (A000031 (n + 4))

end

end A057742.P10796330844471526719

/-! ## A057742.P16079735699870038067

`A051593(A005843(n))%A075268(n)`
-/

namespace A057742.P16079735699870038067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051593 (A005843 n).toNat) (A075268 n)

end

end A057742.P16079735699870038067

/-!
# A057743: Maximal order of element of alternating group A_{2n+1}.

The programs for A057743, there is no canonical definition to state claims against.
-/

/-! ## A057743.P5917119754367704150

`A051593(Δ[n²])`
-/

namespace A057743.P5917119754367704150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057743.P5917119754367704150

/-! ## A057743.P4561134921121347973

`or(char[1], A051593(2*n+1))`
-/

namespace A057743.P4561134921121347973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051593 (2 * n + 1))

end

end A057743.P4561134921121347973

/-! ## A057743.P937378224786833151

`gcd(A000038(n), A051593(2*n+1))`
-/

namespace A057743.P937378224786833151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A051593 (2 * n + 1))

end

end A057743.P937378224786833151

/-! ## A057743.P17559383941137400960

`lcm((-1)^n, A051593(A089684(n+1)))`
-/

namespace A057743.P17559383941137400960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A051593 (A089684 (n + 1)).toNat)

end

end A057743.P17559383941137400960

/-! ## A057743.P9582904084847942315

`A335520(n+1)+A051593(2*n+1)`
-/

namespace A057743.P9582904084847942315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (n + 1) + A051593 (2 * n + 1)

end

end A057743.P9582904084847942315

/-!
# A057744: Expansion of (1-2*x^3)/(1-2*x-x^3+2*x^4).

The programs for A057744, the canonical program `A057744.P10807636201568550256` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057744 has offset 0).

The definition of A057744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^3)/(1-2x-x^3+2x^4))` (program `A057744.P10807636201568550256`, by `A057744.P10807636201568550256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057744.P4089853932507463645

`ceil(6/7*2^n)`
-/

namespace A057744.P4089853932507463645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 : ℚ) / 7 * (2 ^ n : ℚ)⌉

end

end A057744.P4089853932507463645

namespace A057744

/-- `ceil(6/7*2^n)` -/
def P4089853932507463645.Spec : Prop :=
  ∀ n, P4089853932507463645.a n = A057744 n

end A057744

/-! ## A057744.P10807636201568550256

`ogf((1-2x^3)/(1-2x-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057744

/-- `ogf((1-2x^3)/(1-2x-x^3+2x^4))` -/
def P10807636201568550256.Spec : Prop :=
  ∀ n, P10807636201568550256.a n = A057744 n

theorem P10807636201568550256.correct : P10807636201568550256.Spec := by
  intro n
  simp only [A057744]

end A057744

/-! ## A057744.P6943574517624010902

`2*a(n-1)+a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A057744.P6943574517624010902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  2 * a (n - 1) + a (n - 3) - 2 * a (n - 4)

end

end A057744.P6943574517624010902

namespace A057744

/-- `2*a(n-1)+a(n-3)-2*a(n-4)` -/
def P6943574517624010902.Spec : Prop :=
  ∀ n, P6943574517624010902.a n = A057744 n

end A057744

/-! ## A057744.P12497100400604830491

`2^n-floor(a(n-1)/3)` with `a(0)=1`
-/

namespace A057744.P12497100400604830491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - ⌊(a (n - 1) : ℚ) / 3⌋

end

end A057744.P12497100400604830491

namespace A057744

/-- `2^n-floor(a(n-1)/3)` -/
def P12497100400604830491.Spec : Prop :=
  ∀ n, P12497100400604830491.a n = A057744 n

end A057744

/-! ## A057744.P4700603708792065284

`2*a(n-1)-4%gcd(3, n)` with `a(0)=1`
-/

namespace A057744.P4700603708792065284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((4 % Nat.gcd 3 n : ℕ) : ℤ)

end

end A057744.P4700603708792065284

namespace A057744

/-- `2*a(n-1)-4%gcd(3, n)` -/
def P4700603708792065284.Spec : Prop :=
  ∀ n, P4700603708792065284.a n = A057744 n

end A057744

/-! ## A057744.P4304117215844056689

`4*a(n-2)-(n+1)%3` with `a(0)=1, a(1)=2`
-/

namespace A057744.P4304117215844056689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) - (((n + 1) % 3 : ℕ) : ℤ)

end

end A057744.P4304117215844056689

namespace A057744

/-- `4*a(n-2)-(n+1)%3` -/
def P4304117215844056689.Spec : Prop :=
  ∀ n, P4304117215844056689.a n = A057744 n

end A057744

/-! ## A057744.P1600089945955043867

`2*a(n-1)-val(a(n-1), 4)` with `a(0)=1`
-/

namespace A057744.P1600089945955043867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (SequenceMachineLib.valuation (a (n - 1)).toNat 4 : ℤ)

end

end A057744.P1600089945955043867

namespace A057744

/-- `2*a(n-1)-val(a(n-1), 4)` -/
def P1600089945955043867.Spec : Prop :=
  ∀ n, P1600089945955043867.a n = A057744 n

end A057744

/-! ## A057744.P15499742146765324220

`2*a(n-1)-(a(n-2)%3-1)` with `a(0)=1, a(1)=2`
-/

namespace A057744.P15499742146765324220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (Int.tmod (a (n - 2)) 3 - 1)

end

end A057744.P15499742146765324220

namespace A057744

/-- `2*a(n-1)-(a(n-2)%3-1)` -/
def P15499742146765324220.Spec : Prop :=
  ∀ n, P15499742146765324220.a n = A057744 n

end A057744

/-! ## A057744.P5549425943818653441

`2*a(n-1)-floor(gcd(4, a(n-1))/3)` with `a(0)=1`
-/

namespace A057744.P5549425943818653441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ⌊(Int.gcd 4 (a (n - 1)) : ℚ) / 3⌋

end

end A057744.P5549425943818653441

namespace A057744

/-- `2*a(n-1)-floor(gcd(4, a(n-1))/3)` -/
def P5549425943818653441.Spec : Prop :=
  ∀ n, P5549425943818653441.a n = A057744 n

end A057744

/-! ## A057744.P8964817250584993196

`a(n-1)+a(n-1)-val(a(n-1), 4)` with `a(0)=1`
-/

namespace A057744.P8964817250584993196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - (SequenceMachineLib.valuation (a (n - 1)).toNat 4 : ℤ))

end

end A057744.P8964817250584993196

namespace A057744

/-- `a(n-1)+a(n-1)-val(a(n-1), 4)` -/
def P8964817250584993196.Spec : Prop :=
  ∀ n, P8964817250584993196.a n = A057744 n

end A057744

/-! ## A057744.P5112198464434784325

`a(n-1)-(val(a(n-1), 4)-a(n-1))` with `a(0)=1`
-/

namespace A057744.P5112198464434784325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((SequenceMachineLib.valuation (a (n - 1)).toNat 4 : ℤ) - a (n - 1))

end

end A057744.P5112198464434784325

namespace A057744

/-- `a(n-1)-(val(a(n-1), 4)-a(n-1))` -/
def P5112198464434784325.Spec : Prop :=
  ∀ n, P5112198464434784325.a n = A057744 n

end A057744

/-! ## A057744.P3887316201150842534

`a(n-1)+a(n-1)+(1-a(n-2))%3` with `a(0)=1, a(1)=2`
-/

namespace A057744.P3887316201150842534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + Int.tmod (1 - a (n - 2)) 3)

end

end A057744.P3887316201150842534

namespace A057744

/-- `a(n-1)+a(n-1)+(1-a(n-2))%3` -/
def P3887316201150842534.Spec : Prop :=
  ∀ n, P3887316201150842534.a n = A057744 n

end A057744

/-! ## A057744.P4732322616220215572

`a(n-1)-((a(n-2)-1)%3-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A057744.P4732322616220215572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2) - 1) 3 - a (n - 1))

end

end A057744.P4732322616220215572

namespace A057744

/-- `a(n-1)-((a(n-2)-1)%3-a(n-1))` -/
def P4732322616220215572.Spec : Prop :=
  ∀ n, P4732322616220215572.a n = A057744 n

end A057744

/-! ## A057744.P10450148014300884560

`A033129(n)+1`
-/

namespace A057744.P10450148014300884560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 n + 1

end

end A057744.P10450148014300884560

namespace A057744

/-- `A033129(n)+1` -/
def P10450148014300884560.Spec : Prop :=
  ∀ n, P10450148014300884560.a n = A057744 n

end A057744

/-! ## A057744.P18194099236668234372

`∑[A294627(n)]+1`
-/

namespace A057744.P18194099236668234372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A057744.P18194099236668234372

namespace A057744

/-- `∑[A294627(n)]+1` -/
def P18194099236668234372.Spec : Prop :=
  ∀ n, P18194099236668234372.a n = A057744 n

end A057744

/-! ## A057744.P15442602946563789270

`2^n-A155803(n)`
-/

namespace A057744.P15442602946563789270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A155803 n

end

end A057744.P15442602946563789270

namespace A057744

/-- `2^n-A155803(n)` -/
def P15442602946563789270.Spec : Prop :=
  ∀ n, P15442602946563789270.a n = A057744 n

end A057744

/-! ## A057744.P35922654310871757

`A155803(n+1)+A046630(n)`
-/

namespace A057744.P35922654310871757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (n + 1) + A046630 n

end

end A057744.P35922654310871757

namespace A057744

/-- `A155803(n+1)+A046630(n)` -/
def P35922654310871757.Spec : Prop :=
  ∀ n, P35922654310871757.a n = A057744 n

end A057744

/-! ## A057744.P12703919126776602037

`Δ[A136169(n+1)]`
-/

namespace A057744.P12703919126776602037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057744.P12703919126776602037

namespace A057744

/-- `Δ[A136169(n+1)]` -/
def P12703919126776602037.Spec : Prop :=
  ∀ n, P12703919126776602037.a n = A057744 n

end A057744

/-! ## A057744.P13154015843340525882

`2^(n+1)-A033138(n+1)`
-/

namespace A057744.P13154015843340525882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A033138 (n + 1)

end

end A057744.P13154015843340525882

namespace A057744

/-- `2^(n+1)-A033138(n+1)` -/
def P13154015843340525882.Spec : Prop :=
  ∀ n, P13154015843340525882.a n = A057744 n

end A057744

/-! ## A057744.P7332968388512114180

`A267210(n)-A000225(n)`
-/

namespace A057744.P7332968388512114180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267210 n - A000225 n

end

end A057744.P7332968388512114180

namespace A057744

/-- `A267210(n)-A000225(n)` -/
def P7332968388512114180.Spec : Prop :=
  ∀ n, P7332968388512114180.a n = A057744 n

end A057744

/-!
# A057747: Number of decompositions of 2n-1 into sum of a lucky number and an even-lucky-number (from A045954).

The programs for A057747, there is no canonical definition to state claims against.
-/

/-! ## A057747.P10458031836421943991

`A007895(A294627(n)+A023803(n+1))`
-/

namespace A057747.P10458031836421943991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A294627 n + A023803 (n + 1)).toNat

end

end A057747.P10458031836421943991

/-!
# A057749: Prime degrees of absolutely reducible trinomials: primes p such that x^p + x^k + 1 is reducible over GF(2) for all k, p>k>0.

The programs for A057749, there is no canonical definition to state claims against.
-/

/-! ## A057749.P533307928267146021

`p?[A057486(n+1)]`
-/

namespace A057749.P533307928267146021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057749.P533307928267146021

/-! ## A057749.P8423481931067730467

`p?[comp[A073571(n+1)]]`
-/

namespace A057749.P8423481931067730467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A057749.P8423481931067730467

/-! ## A057749.P18043967073195609354

`A059646(A055495(n+2))`
-/

namespace A057749.P18043967073195609354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059646 (A055495 (n + 2)).toNat

end

end A057749.P18043967073195609354

/-! ## A057749.P17595051450785310985

`A059646(A257542(n+2))`
-/

namespace A057749.P17595051450785310985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059646 (A257542 (n + 2)).toNat

end

end A057749.P17595051450785310985

/-! ## A057749.P16325777912203516481

`p?[record[A057486(A324347(n))]]`
-/

namespace A057749.P16325777912203516481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057749.P16325777912203516481

/-! ## A057749.P11900729072532783174

`p?[record[A057486(A328395(n))]]`
-/

namespace A057749.P11900729072532783174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057749.P11900729072532783174

/-! ## A057749.P6471670361537675453

`record[A006530(A057486(n+2))]`
-/

namespace A057749.P6471670361537675453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057486 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057749.P6471670361537675453

/-! ## A057749.P18136495948793369839

`filter[A057486(n+1), A010051(#)]`
-/

namespace A057749.P18136495948793369839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A057749.P18136495948793369839

/-! ## A057749.P5390108754787143579

`filter[A057486(n+1), A080339(#)]`
-/

namespace A057749.P5390108754787143579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A057749.P5390108754787143579

/-! ## A057749.P14541391824300025952

`filter[A057486(n+1), A080545(#)]`
-/

namespace A057749.P14541391824300025952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A057749.P14541391824300025952

/-!
# A057750: Number of non-factorable subsets of size >= 2 of a 1 X n uniform grid.

The programs for A057750, there is no canonical definition to state claims against.
-/

/-! ## A057750.P5416238739625896384

`2^(n+1)-(n+2)-A057765(n+1)`
-/

namespace A057750.P5416238739625896384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (n + 2 : ℤ) - A057765 (n + 1)

end

end A057750.P5416238739625896384

/-! ## A057750.P17694422503404653032

`A000079(n+1)-(A057765(n+1)+n+2)`
-/

namespace A057750.P17694422503404653032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A057765 (n + 1) + (n + 2 : ℤ))

end

end A057750.P17694422503404653032

/-! ## A057750.P8902062552244667154

`∑[A000225(n)]-A356841(A246360(n+1)-n)`
-/

namespace A057750.P8902062552244667154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A356841 (A246360 (n + 1) - (n : ℤ)).toNat

end

end A057750.P8902062552244667154

/-! ## A057750.P16888637947070736073

`∑[A172471(Δ[A006803(2*(n+1))])]`
-/

namespace A057750.P16888637947070736073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006803 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057750.P16888637947070736073

/-!
# A057751: Irreducible trinomials of prime degree for some k: x^p + x^k + 1 is irreducible over GF(2) for at least one k, p>k>0.

The programs for A057751, there is no canonical definition to state claims against.
-/

/-! ## A057751.P2273326276929306318

`p?[A073571(n+1)]`
-/

namespace A057751.P2273326276929306318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057751.P2273326276929306318

/-! ## A057751.P7980182344948684072

`p?[comp[A057486(n+1)]]`
-/

namespace A057751.P7980182344948684072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A057751.P7980182344948684072

/-! ## A057751.P7778415164800775861

`filter[A073571(n+1), A010051(#)]`
-/

namespace A057751.P7778415164800775861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A057751.P7778415164800775861

/-! ## A057751.P7260410918364979764

`filter[A073571(n+1), A080339(#)]`
-/

namespace A057751.P7260410918364979764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A057751.P7260410918364979764

/-! ## A057751.P1321473942011105491

`record[A006530(2*A073571(n+1))]`
-/

namespace A057751.P1321473942011105491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A073571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057751.P1321473942011105491

/-! ## A057751.P9756315734686313737

`record[A006530(lcm(2, A073571(n+1)))]`
-/

namespace A057751.P9756315734686313737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A073571 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057751.P9756315734686313737

/-! ## A057751.P7911731353174922946

`record[A006530(A073571(abs(2-n)+1))]`
-/

namespace A057751.P7911731353174922946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073571 (|2 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057751.P7911731353174922946

/-! ## A057751.P7110885843194962592

`∩[A000040(n+1), A073571(n+1)]`
-/

namespace A057751.P7110885843194962592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057751.P7110885843194962592

/-! ## A057751.P4805399062500565195

`∩[A008578(n+1), A073571(n+1)]`
-/

namespace A057751.P4805399062500565195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057751.P4805399062500565195

/-! ## A057751.P7036531394863536060

`∩[A049573(n+1), A073571(n+1)]`
-/

namespace A057751.P7036531394863536060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057751.P7036531394863536060

/-!
# A057752: Difference between nearest integer to Li(10^n) and pi(10^n), where Li(x) = integral of log(x) and pi(10^n) = number of primes <= 10^n (A006880).

The programs for A057752, there is no canonical definition to state claims against.
-/

/-! ## A057752.P10369296260713734357

`A106313(n+1)+1`
-/

namespace A057752.P10369296260713734357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106313 (n + 1) + 1

end

end A057752.P10369296260713734357

/-! ## A057752.P187225182022046737

`A057754(n+1)-A006880(n+1)`
-/

namespace A057752.P187225182022046737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) - A006880 (n + 1)

end

end A057752.P187225182022046737

/-! ## A057752.P7652521533357020767

`A057754(n+1)+A057794(n+1)-A057793(n+1)`
-/

namespace A057752.P7652521533357020767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) + (A057794 (n + 1) - A057793 (n + 1))

end

end A057752.P7652521533357020767

/-! ## A057752.P5220384811852145631

`A057754(n+1)+A058290(n+1)-A058289(n+1)`
-/

namespace A057752.P5220384811852145631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) + (A058290 (n + 1) - A058289 (n + 1))

end

end A057752.P5220384811852145631

/-! ## A057752.P664937381381497226

`A057754(n+1)+A223167(n+1)-A223166(n+1)`
-/

namespace A057752.P664937381381497226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) + (A223167 (n + 1) - A223166 (n + 1))

end

end A057752.P664937381381497226

/-!
# A057753: Total area of all polyominoes with perimeter 2n.

The programs for A057753, there is no canonical definition to state claims against.
-/

/-! ## A057753.P18356320791151086300

`A359402(a(n-1))` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A057753.P18356320791151086300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  A359402 (a (n - 1)).toNat

end

end A057753.P18356320791151086300

/-!
# A057754: Integer nearest to Li(10^n), where Li(x) = Integral_{t=0..x} dt/log(t).

The programs for A057754, there is no canonical definition to state claims against.
-/

/-! ## A057754.P8859983263071751935

`A190802(n+1)+A001222(A154942(n+1))`
-/

namespace A057754.P8859983263071751935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) + A001222 (A154942 (n + 1)).toNat

end

end A057754.P8859983263071751935

/-! ## A057754.P2101547116445954825

`A190802(n+1)+A001222(A154944(n+1))`
-/

namespace A057754.P2101547116445954825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) + A001222 (A154944 (n + 1)).toNat

end

end A057754.P2101547116445954825

/-! ## A057754.P8365333733519465244

`A345932(A232161(n+1))+A190802(n+1)`
-/

namespace A057754.P8365333733519465244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A232161 (n + 1)).toNat + A190802 (n + 1)

end

end A057754.P8365333733519465244

/-! ## A057754.P7742257953985599353

`A190802(n+1)+A001222(A154941(n+1))`
-/

namespace A057754.P7742257953985599353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) + A001222 (A154941 (n + 1)).toNat

end

end A057754.P7742257953985599353

/-! ## A057754.P10138431581868821626

`A057752(n+1)+A006880(n+1)`
-/

namespace A057754.P10138431581868821626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057752 (n + 1) + A006880 (n + 1)

end

end A057754.P10138431581868821626

/-!
# A057755: Number of digits in n-th Fermat number (A000215).

The programs for A057755, there is no canonical definition to state claims against.
-/

/-! ## A057755.P16395696673233057300

`A129784(floor(acot(n)+n))+1`
-/

namespace A057755.P16395696673233057300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129784 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A057755.P16395696673233057300

/-! ## A057755.P8977774675823058610

`A129784(round(sqrt(n²+1)))+1`
-/

namespace A057755.P8977774675823058610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129784 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A057755.P8977774675823058610

/-! ## A057755.P8997061027384605546

`floor(A129784(n+1)/2)+1`
-/

namespace A057755.P8997061027384605546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129784 (n + 1) : ℚ) / 2⌋ + 1

end

end A057755.P8997061027384605546

/-! ## A057755.P17466311607974333924

`A000027(floor(A000079(n)/log2(10))+1)`
-/

namespace A057755.P17466311607974333924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(A000079 n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1).toNat

end

end A057755.P17466311607974333924

/-! ## A057755.P10950757664496832191

`A000027(floor(A131577(n+1)/log2(10))+1)`
-/

namespace A057755.P10950757664496832191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(A131577 (n + 1) : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1).toNat

end

end A057755.P10950757664496832191

/-!
# A057756: Least nonnegative square root of -1 mod n for n in A008784.

The programs for A057756, there is no canonical definition to state claims against.
-/

/-! ## A057756.P5867860925175131564

`A070669(A008784(n+1))%A343290(n+1)`
-/

namespace A057756.P5867860925175131564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (A008784 (n + 1)).toNat) (A343290 (n + 1))

end

end A057756.P5867860925175131564

/-! ## A057756.P6228094175861746922

`A070669(eq[n, A047210(n+1)]+1)%A343290(n+1)`
-/

namespace A057756.P6228094175861746922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) (A343290 (n + 1))

end

end A057756.P6228094175861746922

/-! ## A057756.P5533561706144091630

`A070669(eq[n, A047214(n+1)]+1)%A343290(n+1)`
-/

namespace A057756.P5533561706144091630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) (A343290 (n + 1))

end

end A057756.P5533561706144091630

/-! ## A057756.P7323471438381683593

`A371479(n+1)+A000007(A094143(n+1))`
-/

namespace A057756.P7323471438381683593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371479 (n + 1) + A000007 (A094143 (n + 1)).toNat

end

end A057756.P7323471438381683593

/-! ## A057756.P5866159506760555374

`A186809(A082108(3*n))*A371479(n+1)`
-/

namespace A057756.P5866159506760555374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186809 (A082108 (3 * n)).toNat * A371479 (n + 1)

end

end A057756.P5866159506760555374

/-!
# A057760: Numbers n such that 2 is a cube mod n.

The programs for A057760, there is no canonical definition to state claims against.
-/

/-! ## A057760.P17893068695715575592

`record[gcd((n+1)^3+2, A054531(n+1))]`
-/

namespace A057760.P17893068695715575592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 3 + 2 : ℤ) (A054531 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057760.P17893068695715575592

/-! ## A057760.P3765593202077055293

`record[gcd(A034324(n+1), A130855(n))]`
-/

namespace A057760.P3765593202077055293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034324 (n + 1)) (A130855 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057760.P3765593202077055293

/-! ## A057760.P5985365208931445303

`record[gcd(A084380(n), A103128(n+1))]`
-/

namespace A057760.P5985365208931445303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084380 n) (A103128 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057760.P5985365208931445303

/-! ## A057760.P1091031414257067601

`record[gcd(A002024(n+1), A229013(n+1))]`
-/

namespace A057760.P1091031414257067601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A229013 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057760.P1091031414257067601

/-!
# A057762: Numbers k such that 5 is a square mod k.

The programs for A057762, the canonical program `A057762.P15004611033991826201` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057762 has offset 1).

The definition of A057762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057762.P15004611033991826201

`record[gcd(round(sqrt(2*n))+1, 5-n²)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057762

/-- `record[gcd(round(sqrt(2*n))+1, 5-n²)]` -/
def P15004611033991826201.Spec : Prop :=
  ∀ n, (P15004611033991826201.a n : ℤ) = A057762 (n + 1)

theorem P15004611033991826201.correct : P15004611033991826201.Spec := by
  intro n
  simp only [A057762, Nat.add_sub_cancel]

end A057762

/-! ## A057762.P15507589058781094219

`record[A038387(A035259(A156251(n+1)))]`
-/

namespace A057762.P15507589058781094219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A035259 (A156251 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057762.P15507589058781094219

namespace A057762

/-- `record[A038387(A035259(A156251(n+1)))]` -/
def P15507589058781094219.Spec : Prop :=
  ∀ n, P15507589058781094219.a n = A057762 (n + 1)

end A057762

/-!
# A057764: Triangle T(n,k) = number of nonzero elements of multiplicative order k in Galois field GF(2^n) (n >= 1, 1 <= k <= 2^n-1).

The programs for A057764, the canonical program `A057764.P12807561923847807720` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057764 has offset 1).

The definition of A057764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057764.P12807561923847807720

`A054522(∑[comp[floor(2^(n-1))]])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A057764

/-- `A054522(∑[comp[floor(2^(n-1))]])` -/
def P12807561923847807720.Spec : Prop :=
  ∀ n, P12807561923847807720.a n = A057764 (n + 1)

theorem P12807561923847807720.correct : P12807561923847807720.Spec := by
  intro n
  simp only [A057764, Nat.add_sub_cancel]

end A057764

/-!
# A057765: Number of factorable subsets of a 1 X n uniform grid.

The programs for A057765, there is no canonical definition to state claims against.
-/

/-! ## A057765.P2996071449630629610

`∑[A000225(n)]-A057750(n+1)`
-/

namespace A057765.P2996071449630629610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057750 (n + 1)

end

end A057765.P2996071449630629610

/-! ## A057765.P702566715002173146

`A000295(n+1)-A057750(n+1)`
-/

namespace A057765.P702566715002173146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) - A057750 (n + 1)

end

end A057765.P702566715002173146

/-! ## A057765.P14037636404145642860

`A035327(A057750(n+1)+n+1)`
-/

namespace A057765.P14037636404145642860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A057750 (n + 1) + (n + 1 : ℤ)).toNat

end

end A057765.P14037636404145642860

/-! ## A057765.P3802296778005879564

`A108602(A259273(n))-n`
-/

namespace A057765.P3802296778005879564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A259273 n).toNat - (n : ℤ)

end

end A057765.P3802296778005879564

/-! ## A057765.P7615605436686981926

`A356841(A246360(n+1)-n)`
-/

namespace A057765.P7615605436686981926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (A246360 (n + 1) - (n : ℤ)).toNat

end

end A057765.P7615605436686981926

/-!
# A057766: Total area of all n-celled polyominoes.

The programs for A057766, there is no canonical definition to state claims against.
-/

/-! ## A057766.P7061376371334759460

`(n+1)*A000105(n+1)`
-/

namespace A057766.P7061376371334759460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000105 (n + 1)

end

end A057766.P7061376371334759460

/-! ## A057766.P11411725266317921496

`(n+1)*Δ[A173271(n)]`
-/

namespace A057766.P11411725266317921496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A057766.P11411725266317921496

/-! ## A057766.P13024374969676902810

`∑[abs(Δ[n*A000105(n)])]`
-/

namespace A057766.P13024374969676902810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057766.P13024374969676902810

/-! ## A057766.P7062436389262728925

`(n+1)*(A006765(n+1)+1)`
-/

namespace A057766.P7062436389262728925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A006765 (n + 1) + 1)

end

end A057766.P7062436389262728925

/-! ## A057766.P3514870713943987071

`record[A000105(A007599(n))*A007599(n)]`
-/

namespace A057766.P3514870713943987071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (A007599 n).toNat * A007599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057766.P3514870713943987071

/-!
# A057767: Number of twin prime pairs between P(n)^2 and P(n+1)^2 where P(n) is the n-th prime.

The programs for A057767, there is no canonical definition to state claims against.
-/

/-! ## A057767.P16671812798717560136

`Δ[A000885(n+1)+A000007(n)]`
-/

namespace A057767.P16671812798717560136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000885 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057767.P16671812798717560136

/-! ## A057767.P3377946251015380401

`Δ[A057428(n)+A000885(n+1)]`
-/

namespace A057767.P3377946251015380401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A000885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057767.P3377946251015380401

/-! ## A057767.P8804570838022590213

`Δ[A000885(n+1)-A057427(n)]`
-/

namespace A057767.P8804570838022590213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000885 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057767.P8804570838022590213

/-! ## A057767.P8757474528205839517

`Δ[A000885(n+1)-A178334(A178334(n))]`
-/

namespace A057767.P8757474528205839517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000885 (n + 1) - A178334 (A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057767.P8757474528205839517

/-! ## A057767.P8818188730637678990

`ceil(Δ[A308777(n+1)/2])`
-/

namespace A057767.P8818188730637678990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308777 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A057767.P8818188730637678990

/-! ## A057767.P9613039796494831943

`Δ[A000885(n+1)-A122458(2*n)]`
-/

namespace A057767.P9613039796494831943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000885 (n + 1) - A122458 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057767.P9613039796494831943

/-! ## A057767.P12838043304716106846

`Δ[A000885(n+1)]-A134746(2*n)`
-/

namespace A057767.P12838043304716106846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A134746 (2 * n)

end

end A057767.P12838043304716106846

/-! ## A057767.P6317681702227999192

`A065033(Δ[A308777(n+1)])`
-/

namespace A057767.P6317681702227999192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A057767.P6317681702227999192

/-! ## A057767.P8313786181332909568

`A110654(Δ[A308777(n+1)])`
-/

namespace A057767.P8313786181332909568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A057767.P8313786181332909568

/-! ## A057767.P13287749867821622650

`abs(A001057(Δ[A308777(n+1)]))`
-/

namespace A057767.P13287749867821622650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (f1 (n + 1) - f1 n).toNat|

end

end A057767.P13287749867821622650

/-!
# A057768: From Goldbach problem: number of decompositions of 2n-1 into sum of a prime lucky number(from A031157) and a twin even-lucky-number(from A045955, A045956).

The programs for A057768, there is no canonical definition to state claims against.
-/

/-! ## A057768.P9153560712388784529

`A153246(∑[A063196(A000265(n+1))])`
-/

namespace A057768.P9153560712388784529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057768.P9153560712388784529

/-! ## A057768.P15899035249409750936

`A319661(A298436(n)+A260885(n+1))`
-/

namespace A057768.P15899035249409750936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319661 (A298436 n + A260885 (n + 1)).toNat

end

end A057768.P15899035249409750936

/-! ## A057768.P10081992285811501880

`A001359(A036376(n))%A026834(n+1)`
-/

namespace A057768.P10081992285811501880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (A036376 n).toNat) (A026834 (n + 1))

end

end A057768.P10081992285811501880

/-! ## A057768.P2203246767482965356

`A016789(A173884(n))%A026834(n+1)`
-/

namespace A057768.P2203246767482965356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 (A173884 n).toNat) (A026834 (n + 1))

end

end A057768.P2203246767482965356

/-! ## A057768.P657583753117282918

`A282707(A022166(n))%A026834(n+1)`
-/

namespace A057768.P657583753117282918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282707 (A022166 n).toNat) (A026834 (n + 1))

end

end A057768.P657583753117282918

/-!
# A057769: a(n) = 4*n^4 + 8*n^3 - 4*n - 1 = (2*n^2 - 1)*(2*n^2 + 4*n + 1).

The programs for A057769, the canonical program `A057769.P4527469839372896610` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057769 has offset 0).

The definition of A057769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4+8*n^3-4*n-1` (program `A057769.P4527469839372896610`, by `A057769.P4527469839372896610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057769.P4527469839372896610

`4*n^4+8*n^3-4*n-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057769

/-- `4*n^4+8*n^3-4*n-1` -/
def P4527469839372896610.Spec : Prop :=
  ∀ n, P4527469839372896610.a n = A057769 n

theorem P4527469839372896610.correct : P4527469839372896610.Spec := by
  intro n
  simp only [A057769]

end A057769

/-! ## A057769.P12696133743347015179

`(2*n²-1)*(2*n²+4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057769.P12696133743347015179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) - 1) * (2 * n ^ 2 + 4 * n + 1 : ℤ)

end

end A057769.P12696133743347015179

namespace A057769

/-- `(2*n²-1)*(2*n²+4*n+1)` -/
def P12696133743347015179.Spec : Prop :=
  ∀ n, P12696133743347015179.a n = A057769 n

theorem P12696133743347015179.correct : P12696133743347015179.Spec := by
  intro n
  simp only [A057769, Nat.add_sub_cancel, A057769.P12696133743347015179.a, A057769.P4527469839372896610.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057769

/-! ## A057769.P14421582734879742184

`or(1, A132209(n)²-2)`
-/

namespace A057769.P14421582734879742184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132209 n ^ 2 - 2)

end

end A057769.P14421582734879742184

namespace A057769

/-- `or(1, A132209(n)²-2)` -/
def P14421582734879742184.Spec : Prop :=
  ∀ n, P14421582734879742184.a n = A057769 n

end A057769

/-! ## A057769.P11002486173610570820

`or(1, (1-A046092(n))²-3)`
-/

namespace A057769.P11002486173610570820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - A046092 n) ^ 2 - 3)

end

end A057769.P11002486173610570820

namespace A057769

/-- `or(1, (1-A046092(n))²-3)` -/
def P11002486173610570820.Spec : Prop :=
  ∀ n, P11002486173610570820.a n = A057769 n

end A057769

/-! ## A057769.P6177649215102397654

`(A365206(n+1)-A001539(n))/2`
-/

namespace A057769.P6177649215102397654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365206 (n + 1) - A001539 n : ℚ) / 2

end

end A057769.P6177649215102397654

namespace A057769

/-- `(A365206(n+1)-A001539(n))/2` -/
def P6177649215102397654.Spec : Prop :=
  ∀ n, P6177649215102397654.a n = (A057769 n : ℚ)

end A057769

/-! ## A057769.P18238055631947427039

`record[A110326(n)²-2]`
-/

namespace A057769.P18238055631947427039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110326 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057769.P18238055631947427039

namespace A057769

/-- `record[A110326(n)²-2]` -/
def P18238055631947427039.Spec : Prop :=
  ∀ n, P18238055631947427039.a n = A057769 n

end A057769

/-! ## A057769.P553308952789117306

`A272870(2*n+1)/4`
-/

namespace A057769.P553308952789117306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272870 (2 * n + 1) : ℚ) / 4

end

end A057769.P553308952789117306

namespace A057769

/-- `A272870(2*n+1)/4` -/
def P553308952789117306.Spec : Prop :=
  ∀ n, P553308952789117306.a n = (A057769 n : ℚ)

end A057769

/-! ## A057769.P14037182603583554694

`record[A151890(n)²-A027170(n)²]`
-/

namespace A057769.P14037182603583554694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n ^ 2 - A027170 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057769.P14037182603583554694

namespace A057769

/-- `record[A151890(n)²-A027170(n)²]` -/
def P14037182603583554694.Spec : Prop :=
  ∀ n, P14037182603583554694.a n = A057769 n

end A057769

/-!
# A057770: The primes in A045574.

The programs for A057770, the canonical program `A057770.P11641716882874667681` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057770 has offset 1).

The definition of A057770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057770.P15720630874413801082

`p?[A045574(n+1)]`
-/

namespace A057770.P15720630874413801082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057770.P15720630874413801082

namespace A057770

/-- `p?[A045574(n+1)]` -/
def P15720630874413801082.Spec : Prop :=
  ∀ n, P15720630874413801082.a n = A057770 (n + 1)

end A057770

/-! ## A057770.P4798185826694671328

`∩[A034844(n+1), A045574(n+1)]`
-/

namespace A057770.P4798185826694671328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P4798185826694671328

namespace A057770

/-- `∩[A034844(n+1), A045574(n+1)]` -/
def P4798185826694671328.Spec : Prop :=
  ∀ n, (P4798185826694671328.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P2056822505912011107

`∩[A045574(n+1), A152312(n+1)]`
-/

namespace A057770.P2056822505912011107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P2056822505912011107

namespace A057770

/-- `∩[A045574(n+1), A152312(n+1)]` -/
def P2056822505912011107.Spec : Prop :=
  ∀ n, (P2056822505912011107.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P14709366315227635817

`∩[A045574(n+1), A342961(n+1)]`
-/

namespace A057770.P14709366315227635817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P14709366315227635817

namespace A057770

/-- `∩[A045574(n+1), A342961(n+1)]` -/
def P14709366315227635817.Spec : Prop :=
  ∀ n, (P14709366315227635817.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P11641716882874667681

`p?[A054047(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A057770

/-- `p?[A054047(n)]` -/
def P11641716882874667681.Spec : Prop :=
  ∀ n, P11641716882874667681.a n = A057770 (n + 1)

theorem P11641716882874667681.correct : P11641716882874667681.Spec := by
  intro n
  simp only [A057770, Nat.add_sub_cancel]

end A057770

/-! ## A057770.P11396471497048127650

`∩[A034844(n+1), A054047(n)]`
-/

namespace A057770.P11396471497048127650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P11396471497048127650

namespace A057770

/-- `∩[A034844(n+1), A054047(n)]` -/
def P11396471497048127650.Spec : Prop :=
  ∀ n, (P11396471497048127650.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P13519105755742079635

`∩[A038611(n+1), A054047(n)]`
-/

namespace A057770.P13519105755742079635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P13519105755742079635

namespace A057770

/-- `∩[A038611(n+1), A054047(n)]` -/
def P13519105755742079635.Spec : Prop :=
  ∀ n, (P13519105755742079635.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P9280369449663748115

`∩[A152312(n+1), A054047(n)]`
-/

namespace A057770.P9280369449663748115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P9280369449663748115

namespace A057770

/-- `∩[A152312(n+1), A054047(n)]` -/
def P9280369449663748115.Spec : Prop :=
  ∀ n, (P9280369449663748115.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P14044398455055565682

`∩[A329760(n+1), A054047(n)]`
-/

namespace A057770.P14044398455055565682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P14044398455055565682

namespace A057770

/-- `∩[A329760(n+1), A054047(n)]` -/
def P14044398455055565682.Spec : Prop :=
  ∀ n, (P14044398455055565682.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P14934520853142930970

`∩[A342961(n+1), A054047(n)]`
-/

namespace A057770.P14934520853142930970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P14934520853142930970

namespace A057770

/-- `∩[A342961(n+1), A054047(n)]` -/
def P14934520853142930970.Spec : Prop :=
  ∀ n, (P14934520853142930970.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P8940046092906485596

`∩[A045574(n+1), A386342(n+1)]`
-/

namespace A057770.P8940046092906485596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P8940046092906485596

namespace A057770

/-- `∩[A045574(n+1), A386342(n+1)]` -/
def P8940046092906485596.Spec : Prop :=
  ∀ n, (P8940046092906485596.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P13511892273146234039

`∩[A038615(n+1), A054047(n)]`
-/

namespace A057770.P13511892273146234039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P13511892273146234039

namespace A057770

/-- `∩[A038615(n+1), A054047(n)]` -/
def P13511892273146234039.Spec : Prop :=
  ∀ n, (P13511892273146234039.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P7083054235230484680

`∩[A038872(n+1), A054047(n)]`
-/

namespace A057770.P7083054235230484680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P7083054235230484680

namespace A057770

/-- `∩[A038872(n+1), A054047(n)]` -/
def P7083054235230484680.Spec : Prop :=
  ∀ n, (P7083054235230484680.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P15549318259142634977

`∩[A045468(n+1), A054047(n)]`
-/

namespace A057770.P15549318259142634977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P15549318259142634977

namespace A057770

/-- `∩[A045468(n+1), A054047(n)]` -/
def P15549318259142634977.Spec : Prop :=
  ∀ n, (P15549318259142634977.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P5655326053033147553

`∩[A064739(n+1), A054047(n)]`
-/

namespace A057770.P5655326053033147553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P5655326053033147553

namespace A057770

/-- `∩[A064739(n+1), A054047(n)]` -/
def P5655326053033147553.Spec : Prop :=
  ∀ n, (P5655326053033147553.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P16150376393301211125

`∩[A034844(n+1), A386347(n+1)]`
-/

namespace A057770.P16150376393301211125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P16150376393301211125

namespace A057770

/-- `∩[A034844(n+1), A386347(n+1)]` -/
def P16150376393301211125.Spec : Prop :=
  ∀ n, (P16150376393301211125.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P2693910694089555847

`∩[A152312(n+1), A386336(n+1)]`
-/

namespace A057770.P2693910694089555847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P2693910694089555847

namespace A057770

/-- `∩[A152312(n+1), A386336(n+1)]` -/
def P2693910694089555847.Spec : Prop :=
  ∀ n, (P2693910694089555847.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P10852824604684045596

`∩[A081027(n+1), A054047(n)]`
-/

namespace A057770.P10852824604684045596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P10852824604684045596

namespace A057770

/-- `∩[A081027(n+1), A054047(n)]` -/
def P10852824604684045596.Spec : Prop :=
  ∀ n, (P10852824604684045596.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P9859339620118929482

`∩[A328896(n+1), A054047(n)]`
-/

namespace A057770.P9859339620118929482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P9859339620118929482

namespace A057770

/-- `∩[A328896(n+1), A054047(n)]` -/
def P9859339620118929482.Spec : Prop :=
  ∀ n, (P9859339620118929482.a n : ℤ) = A057770 (n + 1)

end A057770

/-! ## A057770.P4714519036177964986

`∩[A154386(n+1), A054047(n)]`
-/

namespace A057770.P4714519036177964986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057770.P4714519036177964986

namespace A057770

/-- `∩[A154386(n+1), A054047(n)]` -/
def P4714519036177964986.Spec : Prop :=
  ∀ n, (P4714519036177964986.a n : ℤ) = A057770 (n + 1)

end A057770

/-!
# A057771: Number of loops (quasigroups with an identity element) of order n.

The programs for A057771, there is no canonical definition to state claims against.
-/

/-! ## A057771.P16829801667713577673

`A318986(n)+A000001(n)`
-/

namespace A057771.P16829801667713577673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318986 n + A000001 n

end

end A057771.P16829801667713577673

/-! ## A057771.P10803229345876717306

`A318986(n)+sqrt(A297420(n))`
-/

namespace A057771.P10803229345876717306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A318986 n : ℝ) + Real.sqrt (A297420 n : ℝ)

end

end A057771.P10803229345876717306

/-! ## A057771.P15900642926139935241

`A318986(n)+A002262(A297420(n)+1)`
-/

namespace A057771.P15900642926139935241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318986 n + A002262 (A297420 n + 1).toNat

end

end A057771.P15900642926139935241

/-! ## A057771.P3139529321907892159

`A318986(n)+A088226(A297420(n)+2)`
-/

namespace A057771.P3139529321907892159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318986 n + A088226 (A297420 n + 2).toNat

end

end A057771.P3139529321907892159

/-! ## A057771.P8451290819535493554

`A318986(n)+A003984(2*A297420(n))`
-/

namespace A057771.P8451290819535493554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318986 n + A003984 (2 * A297420 n).toNat

end

end A057771.P8451290819535493554

/-!
# A057772: Inverse Euler transform of A000016.

The programs for A057772, there is no canonical definition to state claims against.
-/

/-! ## A057772.P1725921395184554356

`A367068(A334548(n)+A317878(n+1))`
-/

namespace A057772.P1725921395184554356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367068 (A334548 n + A317878 (n + 1)).toNat

end

end A057772.P1725921395184554356

/-!
# A057773: a(n) = Sum_{i=1..n} nu_2(prime(i) - 1) where nu_2(m) = exponent of highest power of 2 dividing m.

The programs for A057773, the canonical program `A057773.P3425110863733540674` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057773 has offset 1).

The definition of A057773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057773.P3425110863733540674

`∑[A023506(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A057773

/-- `∑[A023506(n+1)]` -/
def P3425110863733540674.Spec : Prop :=
  ∀ n, P3425110863733540674.a n = A057773 (n + 1)

theorem P3425110863733540674.correct : P3425110863733540674.Spec := by
  intro n
  simp only [A057773, Nat.add_sub_cancel]

end A057773

/-! ## A057773.P14839013516715317424

`∑[log2(A058384(n+1))]`
-/

namespace A057773.P14839013516715317424
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A058384 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P14839013516715317424

namespace A057773

/-- `∑[log2(A058384(n+1))]` -/
def P14839013516715317424.Spec : Prop :=
  ∀ n, P14839013516715317424.a n = (A057773 (n + 1) : ℝ)

end A057773

/-! ## A057773.P17070463021752015963

`∑[val(A006093(n+1), 2)]`
-/

namespace A057773.P17070463021752015963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P17070463021752015963

namespace A057773

/-- `∑[val(A006093(n+1), 2)]` -/
def P17070463021752015963.Spec : Prop :=
  ∀ n, (P17070463021752015963.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P7296109711015978375

`∑[val(A037167(n+1), 2)]`
-/

namespace A057773.P7296109711015978375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A037167 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P7296109711015978375

namespace A057773

/-- `∑[val(A037167(n+1), 2)]` -/
def P7296109711015978375.Spec : Prop :=
  ∀ n, (P7296109711015978375.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P15799868401643579702

`∑[val(A039915(n+1), 2)]`
-/

namespace A057773.P15799868401643579702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039915 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P15799868401643579702

namespace A057773

/-- `∑[val(A039915(n+1), 2)]` -/
def P15799868401643579702.Spec : Prop :=
  ∀ n, (P15799868401643579702.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P15270034185921085264

`∑[val(Δ[A007504(n)]-1, 2)]`
-/

namespace A057773.P15270034185921085264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n - 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P15270034185921085264

namespace A057773

/-- `∑[val(Δ[A007504(n)]-1, 2)]` -/
def P15270034185921085264.Spec : Prop :=
  ∀ n, (P15270034185921085264.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P13912985404755007428

`∑[val(A153481(n+1)+1, 2)]`
-/

namespace A057773.P13912985404755007428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A153481 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P13912985404755007428

namespace A057773

/-- `∑[val(A153481(n+1)+1, 2)]` -/
def P13912985404755007428.Spec : Prop :=
  ∀ n, (P13912985404755007428.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P7311826828953605097

`∑[val(A000040(n+1)-1, 2)]`
-/

namespace A057773.P7311826828953605097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) - 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P7311826828953605097

namespace A057773

/-- `∑[val(A000040(n+1)-1, 2)]` -/
def P7311826828953605097.Spec : Prop :=
  ∀ n, (P7311826828953605097.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P5071545745722670111

`∑[val(A036689(n+1), 2)]-1`
-/

namespace A057773.P5071545745722670111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036689 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A057773.P5071545745722670111

namespace A057773

/-- `∑[val(A036689(n+1), 2)]-1` -/
def P5071545745722670111.Spec : Prop :=
  ∀ n, P5071545745722670111.a n = A057773 (n + 1)

end A057773

/-! ## A057773.P10816901241370958831

`∑[val(A008864(n+1)-2, 2)]`
-/

namespace A057773.P10816901241370958831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008864 (n + 1) - 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P10816901241370958831

namespace A057773

/-- `∑[val(A008864(n+1)-2, 2)]` -/
def P10816901241370958831.Spec : Prop :=
  ∀ n, (P10816901241370958831.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P10756554377767365980

`∑[log2(A006093(n+1)/A057023(n+1))]`
-/

namespace A057773.P10756554377767365980
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A006093 (n + 1) : ℚ) / (A057023 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P10756554377767365980

namespace A057773

/-- `∑[log2(A006093(n+1)/A057023(n+1))]` -/
def P10756554377767365980.Spec : Prop :=
  ∀ n, P10756554377767365980.a n = (A057773 (n + 1) : ℝ)

end A057773

/-! ## A057773.P16450718840278712762

`∑[val(record[A000010(n+1)], 2)]`
-/

namespace A057773.P16450718840278712762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P16450718840278712762

namespace A057773

/-- `∑[val(record[A000010(n+1)], 2)]` -/
def P16450718840278712762.Spec : Prop :=
  ∀ n, (P16450718840278712762.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P10712506907967826458

`∑[val(record[A006530(n+2)-1], 2)]`
-/

namespace A057773.P10712506907967826458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P10712506907967826458

namespace A057773

/-- `∑[val(record[A006530(n+2)-1], 2)]` -/
def P10712506907967826458.Spec : Prop :=
  ∀ n, (P10712506907967826458.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P5292587524901739365

`∑[val(A000010(A000040(n+1)), 2)]`
-/

namespace A057773.P5292587524901739365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A000040 (n + 1)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P5292587524901739365

namespace A057773

/-- `∑[val(A000010(A000040(n+1)), 2)]` -/
def P5292587524901739365.Spec : Prop :=
  ∀ n, (P5292587524901739365.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P9659234816090764813

`∑[A354110(A267101(n+1))]`
-/

namespace A057773.P9659234816090764813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354110 (A267101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P9659234816090764813

namespace A057773

/-- `∑[A354110(A267101(n+1))]` -/
def P9659234816090764813.Spec : Prop :=
  ∀ n, P9659234816090764813.a n = A057773 (n + 1)

end A057773

/-! ## A057773.P955560114620800585

`∑[A302045(A000040(n+1)-1)]`
-/

namespace A057773.P955560114620800585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P955560114620800585

namespace A057773

/-- `∑[A302045(A000040(n+1)-1)]` -/
def P955560114620800585.Spec : Prop :=
  ∀ n, P955560114620800585.a n = A057773 (n + 1)

end A057773

/-! ## A057773.P1982940161772952854

`∑[val(eq[1, A001222(n+1)], 2)]`
-/

namespace A057773.P1982940161772952854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P1982940161772952854

namespace A057773

/-- `∑[val(eq[1, A001222(n+1)], 2)]` -/
def P1982940161772952854.Spec : Prop :=
  ∀ n, (P1982940161772952854.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P2257999172856952170

`∑[val(eq[2, A000005(n+1)], 2)]`
-/

namespace A057773.P2257999172856952170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P2257999172856952170

namespace A057773

/-- `∑[val(eq[2, A000005(n+1)], 2)]` -/
def P2257999172856952170.Spec : Prop :=
  ∀ n, (P2257999172856952170.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P4263524187607901783

`∑[val(eq[n+2, A000203(n+1)], 2)]`
-/

namespace A057773.P4263524187607901783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P4263524187607901783

namespace A057773

/-- `∑[val(eq[n+2, A000203(n+1)], 2)]` -/
def P4263524187607901783.Spec : Prop :=
  ∀ n, (P4263524187607901783.a n : ℤ) = A057773 (n + 1)

end A057773

/-! ## A057773.P10196747996441478001

`∑[A089309(A040976(n+1))]`
-/

namespace A057773.P10196747996441478001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A040976 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P10196747996441478001

namespace A057773

/-- `∑[A089309(A040976(n+1))]` -/
def P10196747996441478001.Spec : Prop :=
  ∀ n, P10196747996441478001.a n = A057773 (n + 1)

end A057773

/-!
# A057775: a(n) is the least prime p such that p-1 is divisible by 2^n and not by 2^(n+1).

The programs for A057775, there is no canonical definition to state claims against.
-/

/-! ## A057775.P16405978510351336047

`A057777(n)+1`
-/

namespace A057775.P16405978510351336047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057777 n + 1

end

end A057775.P16405978510351336047

/-! ## A057775.P11299419563926377002

`2^n*A057778(n)+1`
-/

namespace A057775.P11299419563926377002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057778 n + 1

end

end A057775.P11299419563926377002

/-! ## A057775.P10402628330097286488

`lcm(A000079(n), A057778(n))+1`
-/

namespace A057775.P10402628330097286488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A057778 n) + 1

end

end A057775.P10402628330097286488

/-! ## A057775.P4598281151509004251

`A057778(n)*A131577(n+1)+1`
-/

namespace A057775.P4598281151509004251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 n * A131577 (n + 1) + 1

end

end A057775.P4598281151509004251

/-! ## A057775.P8883179002777041863

`A000079(n)*A005408(A334296(n))+1`
-/

namespace A057775.P8883179002777041863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005408 (A334296 n).toNat + 1

end

end A057775.P8883179002777041863

/-! ## A057775.P18151596738587983850

`A005408(A334296(n))*A011782(n+1)+1`
-/

namespace A057775.P18151596738587983850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334296 n).toNat * A011782 (n + 1) + 1

end

end A057775.P18151596738587983850

/-!
# A057776: a(n) is the least number k such that prime(k) - 1 is divisible by 2^(n-1) and the quotient is odd.

The programs for A057776, there is no canonical definition to state claims against.
-/

/-! ## A057776.P17233981542230400318

`A000720(A057775(n))`
-/

namespace A057776.P17233981542230400318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057775 n).toNat

end

end A057776.P17233981542230400318

/-! ## A057776.P10954336662546311825

`A061395(p?[A057775(n)])`
-/

namespace A057776.P10954336662546311825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057776.P10954336662546311825

/-! ## A057776.P9902302665279073896

`A066328(p?[A057775(n)])`
-/

namespace A057776.P9902302665279073896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057776.P9902302665279073896

/-! ## A057776.P7961052000338244501

`A302039(p?[A057775(n)])`
-/

namespace A057776.P7961052000338244501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057776.P7961052000338244501

/-! ## A057776.P13525459125088254250

`A000720(A057777(n)+1)`
-/

namespace A057776.P13525459125088254250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057777 n + 1).toNat

end

end A057776.P13525459125088254250

/-!
# A057777: a(n) is the smallest number such that a(n)+1 is a prime and the largest power of 2 which divides it is 2^n.

The programs for A057777, there is no canonical definition to state claims against.
-/

/-! ## A057777.P14798874768012536582

`A057775(n)-1`
-/

namespace A057777.P14798874768012536582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 n - 1

end

end A057777.P14798874768012536582

/-! ## A057777.P13331222665806170268

`2^n*A057778(n)`
-/

namespace A057777.P13331222665806170268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057778 n

end

end A057777.P13331222665806170268

/-! ## A057777.P999457037282553692

`2^n*(2*A334296(n)+1)`
-/

namespace A057777.P999457037282553692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (2 * A334296 n + 1)

end

end A057777.P999457037282553692

/-! ## A057777.P17978270931690531153

`lcm(2^n, A057778(round(acot(n)+n)))`
-/

namespace A057777.P17978270931690531153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A057778 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A057777.P17978270931690531153

/-! ## A057777.P14671370628621748948

`lcm(A000079(n), A057778(n))`
-/

namespace A057777.P14671370628621748948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A057778 n)

end

end A057777.P14671370628621748948

/-! ## A057777.P10544212834486761580

`A057778(n)*A131577(n+1)`
-/

namespace A057777.P10544212834486761580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 n * A131577 (n + 1)

end

end A057777.P10544212834486761580

/-! ## A057777.P5709643346794470648

`A000079(n)*A005408(A334296(n))`
-/

namespace A057777.P5709643346794470648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005408 (A334296 n).toNat

end

end A057777.P5709643346794470648

/-!
# A057778: a(n) is the least odd k such that k*2^n + 1 is prime.

The programs for A057778, there is no canonical definition to state claims against.
-/

/-! ## A057778.P8761871930659775034

`2*A334296(n)+1`
-/

namespace A057778.P8761871930659775034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334296 n + 1

end

end A057778.P8761871930659775034

/-! ## A057778.P16904337028217022282

`A005408(A334296(n))`
-/

namespace A057778.P16904337028217022282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334296 n).toNat

end

end A057778.P16904337028217022282

/-! ## A057778.P3241871611467242856

`A004273(A334296(n)+1)`
-/

namespace A057778.P3241871611467242856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A334296 n + 1).toNat

end

end A057778.P3241871611467242856

/-! ## A057778.P8699148754343921764

`A334296(n)+A334296(n)+A178764(A178764(n+1))`
-/

namespace A057778.P8699148754343921764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334296 n + (A334296 n + A178764 (A178764 (n + 1)).toNat)

end

end A057778.P8699148754343921764

/-! ## A057778.P14297500254437859107

`A004442(2*A334296(n))`
-/

namespace A057778.P14297500254437859107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A334296 n).toNat

end

end A057778.P14297500254437859107

/-! ## A057778.P10537591752935140725

`A029579(A334296(n)+A334296(n)+1)`
-/

namespace A057778.P10537591752935140725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A334296 n + (A334296 n + 1)).toNat

end

end A057778.P10537591752935140725

/-! ## A057778.P3196558917199916418

`A029579(4*A334296(n))`
-/

namespace A057778.P3196558917199916418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (4 * A334296 n).toNat

end

end A057778.P3196558917199916418

/-! ## A057778.P3986879854494406593

`A057777(n)/2^n`
-/

namespace A057778.P3986879854494406593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057777 n : ℚ) / (2 ^ n : ℚ)

end

end A057778.P3986879854494406593

/-! ## A057778.P10837781437129621413

`(A057775(n)-1)/2^n`
-/

namespace A057778.P10837781437129621413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057775 n - 1 : ℚ) / (2 ^ n : ℚ)

end

end A057778.P10837781437129621413

/-!
# A057779: Number of hexagonal polyominoes (or polyhexes, A000228) with perimeter 2n.

The programs for A057779, there is no canonical definition to state claims against.
-/

/-! ## A057779.P9486053403910846316

`A258019(n+1)+char[11]`
-/

namespace A057779.P9486053403910846316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258019 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A057779.P9486053403910846316

/-! ## A057779.P3596668907759000648

`A222252(A258019(n+1))`
-/

namespace A057779.P3596668907759000648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A258019 (n + 1)).toNat

end

end A057779.P3596668907759000648

/-! ## A057779.P15494137098907334455

`A277157(n+1)+A258019(n+1)`
-/

namespace A057779.P15494137098907334455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 (n + 1) + A258019 (n + 1)

end

end A057779.P15494137098907334455

/-! ## A057779.P10115203012397101087

`A281155(n+1)+A258019(n+1)`
-/

namespace A057779.P10115203012397101087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (n + 1) + A258019 (n + 1)

end

end A057779.P10115203012397101087

/-! ## A057779.P5684508714150808101

`A308069(n+1)+A258019(n+1)`
-/

namespace A057779.P5684508714150808101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308069 (n + 1) + A258019 (n + 1)

end

end A057779.P5684508714150808101

/-!
# A057780: Multiples of 3 that are one less than a perfect square.

The programs for A057780, the canonical program `A057780.P6736132701367680443` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057780 has offset 1).

The definition of A057780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057780.P6736132701367680443

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=15, a(3)=24, a(4)=48`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057780

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6736132701367680443.Spec : Prop :=
  ∀ n, P6736132701367680443.a n = A057780 (n + 1)

theorem P6736132701367680443.correct : P6736132701367680443.Spec := by
  intro n
  simp only [A057780, Nat.add_sub_cancel]

end A057780

/-! ## A057780.P9570406497860248641

`3/8*(6*(n+1)²-2*((-1)^(n+1)+3)*(n+1)+(-1)^(n+1)-1)`
-/

namespace A057780.P9570406497860248641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 8 * ((6 * (n + 1) ^ 2 : ℤ) - 2 * ((-1) ^ (n + 1) + 3) * (n + 1 : ℤ) + (-1) ^ (n + 1) - 1 : ℚ)

end

end A057780.P9570406497860248641

namespace A057780

/-- `3/8*(6*(n+1)²-2*((-1)^(n+1)+3)*(n+1)+(-1)^(n+1)-1)` -/
def P9570406497860248641.Spec : Prop :=
  ∀ n, P9570406497860248641.a n = (A057780 (n + 1) : ℚ)

theorem P9570406497860248641.correct : P9570406497860248641.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A057780, Nat.add_sub_cancel, A057780.P9570406497860248641.a, A057780.P6736132701367680443.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A057780, Nat.add_sub_cancel, A057780.P9570406497860248641.a, A057780.P6736132701367680443.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057780

/-! ## A057780.P2525987304571478816

`A001651(n+1)²-1`
-/

namespace A057780.P2525987304571478816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) ^ 2 - 1

end

end A057780.P2525987304571478816

namespace A057780

/-- `A001651(n+1)²-1` -/
def P2525987304571478816.Spec : Prop :=
  ∀ n, P2525987304571478816.a n = A057780 (n + 1)

end A057780

/-! ## A057780.P14179335015523165582

`∑[3*n*gcd(2, n)]`
-/

namespace A057780.P14179335015523165582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P14179335015523165582

namespace A057780

/-- `∑[3*n*gcd(2, n)]` -/
def P14179335015523165582.Spec : Prop :=
  ∀ n, (P14179335015523165582.a n : ℤ) = A057780 (n + 1)

end A057780

/-! ## A057780.P135925554424306733

`∑[(2-n%2)*3*n]`
-/

namespace A057780.P135925554424306733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P135925554424306733

namespace A057780

/-- `∑[(2-n%2)*3*n]` -/
def P135925554424306733.Spec : Prop :=
  ∀ n, P135925554424306733.a n = A057780 (n + 1)

end A057780

/-! ## A057780.P3232397127805466764

`record[n*(n-1-gcd(3, 1-n))]`
-/

namespace A057780.P3232397127805466764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1 - (Int.gcd 3 (1 - (n : ℤ)) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057780.P3232397127805466764

namespace A057780

/-- `record[n*(n-1-gcd(3, 1-n))]` -/
def P3232397127805466764.Spec : Prop :=
  ∀ n, P3232397127805466764.a n = A057780 (n + 1)

end A057780

/-! ## A057780.P2304342159398483506

`∑[3*lcm(n+1, 2*n)/(n+1)]`
-/

namespace A057780.P2304342159398483506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.lcm (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P2304342159398483506

namespace A057780

/-- `∑[3*lcm(n+1, 2*n)/(n+1)]` -/
def P2304342159398483506.Spec : Prop :=
  ∀ n, P2304342159398483506.a n = (A057780 (n + 1) : ℚ)

end A057780

/-! ## A057780.P18385644113891577122

`∑[A165988(n)]`
-/

namespace A057780.P18385644113891577122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P18385644113891577122

namespace A057780

/-- `∑[A165988(n)]` -/
def P18385644113891577122.Spec : Prop :=
  ∀ n, P18385644113891577122.a n = A057780 (n + 1)

end A057780

/-! ## A057780.P17129047230539710597

`∑[n*A040007(n)]`
-/

namespace A057780.P17129047230539710597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P17129047230539710597

namespace A057780

/-- `∑[n*A040007(n)]` -/
def P17129047230539710597.Spec : Prop :=
  ∀ n, P17129047230539710597.a n = A057780 (n + 1)

end A057780

/-! ## A057780.P9071742363771330015

`(A298039(n)-1)/2`
-/

namespace A057780.P9071742363771330015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298039 n - 1 : ℚ) / 2

end

end A057780.P9071742363771330015

namespace A057780

/-- `(A298039(n)-1)/2` -/
def P9071742363771330015.Spec : Prop :=
  ∀ n, P9071742363771330015.a n = (A057780 (n + 1) : ℚ)

end A057780

/-! ## A057780.P8248746285009670097

`∑[n*dr(A040133(n))]`
-/

namespace A057780.P8248746285009670097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (A040133 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P8248746285009670097

namespace A057780

/-- `∑[n*dr(A040133(n))]` -/
def P8248746285009670097.Spec : Prop :=
  ∀ n, (P8248746285009670097.a n : ℤ) = A057780 (n + 1)

end A057780

/-! ## A057780.P12671760086256379020

`∑[n*dr(A040139(n))]`
-/

namespace A057780.P12671760086256379020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (A040139 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P12671760086256379020

namespace A057780

/-- `∑[n*dr(A040139(n))]` -/
def P12671760086256379020.Spec : Prop :=
  ∀ n, (P12671760086256379020.a n : ℤ) = A057780 (n + 1)

end A057780

/-! ## A057780.P9070643978629665489

`∑[n*dr(A040421(n))]`
-/

namespace A057780.P9070643978629665489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (A040421 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P9070643978629665489

namespace A057780

/-- `∑[n*dr(A040421(n))]` -/
def P9070643978629665489.Spec : Prop :=
  ∀ n, (P9070643978629665489.a n : ℤ) = A057780 (n + 1)

end A057780

/-! ## A057780.P7708710931086485602

`∑[n*dr(A040433(n))]`
-/

namespace A057780.P7708710931086485602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (A040433 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057780.P7708710931086485602

namespace A057780

/-- `∑[n*dr(A040433(n))]` -/
def P7708710931086485602.Spec : Prop :=
  ∀ n, (P7708710931086485602.a n : ℤ) = A057780 (n + 1)

end A057780

/-!
# A057781: a(n) = n^4+4 = (n^2-2*n+2)*(n^2+2*n+2) = ((n-1)^2+1)*((n+1)^2+1).

The programs for A057781, the canonical program `A057781.P5803759320674587886` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057781 has offset 0).

The definition of A057781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+4` (program `A057781.P5803759320674587886`, by `A057781.P5803759320674587886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057781.P5803759320674587886

`n^4+4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057781

/-- `n^4+4` -/
def P5803759320674587886.Spec : Prop :=
  ∀ n, (P5803759320674587886.a n : ℤ) = A057781 n

theorem P5803759320674587886.correct : P5803759320674587886.Spec := by
  intro n
  simp only [A057781]

end A057781

/-! ## A057781.P2619603017691910722

`((n-1)²+1)*((n+1)²+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057781.P2619603017691910722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2 + 1) * ((n + 1) ^ 2 + 1 : ℤ)

end

end A057781.P2619603017691910722

namespace A057781

/-- `((n-1)²+1)*((n+1)²+1)` -/
def P2619603017691910722.Spec : Prop :=
  ∀ n, P2619603017691910722.a n = A057781 n

theorem P2619603017691910722.correct : P2619603017691910722.Spec := by
  intro n
  simp only [A057781, Nat.add_sub_cancel, A057781.P2619603017691910722.a, A057781.P5803759320674587886.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057781

/-! ## A057781.P9605879365080586036

`(n²-2*n+2)*(n²+2*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057781.P9605879365080586036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (2 * n : ℤ) + 2) * (n ^ 2 + 2 * n + 2 : ℤ)

end

end A057781.P9605879365080586036

namespace A057781

/-- `(n²-2*n+2)*(n²+2*n+2)` -/
def P9605879365080586036.Spec : Prop :=
  ∀ n, P9605879365080586036.a n = A057781 n

theorem P9605879365080586036.correct : P9605879365080586036.Spec := by
  intro n
  simp only [A057781, Nat.add_sub_cancel, A057781.P9605879365080586036.a, A057781.P5803759320674587886.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057781

/-!
# A057784: Number of polypons with n cells.

The programs for A057784, there is no canonical definition to state claims against.
-/

/-! ## A057784.P13876851999378340064

`A329394(n+1)+A107846(A041981(n))`
-/

namespace A057784.P13876851999378340064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329394 (n + 1) + A107846 (A041981 n).toNat

end

end A057784.P13876851999378340064

/-! ## A057784.P12486850732998296817

`A329394(n+1)+A107846(A110391(n))`
-/

namespace A057784.P12486850732998296817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329394 (n + 1) + A107846 (A110391 n).toNat

end

end A057784.P12486850732998296817

/-! ## A057784.P4876028746965147031

`A383492(n+1)+A025435(A078343(n+2))`
-/

namespace A057784.P4876028746965147031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383492 (n + 1) + A025435 (A078343 (n + 2)).toNat

end

end A057784.P4876028746965147031

/-! ## A057784.P2030831323317613473

`A329394(n+1)+A295875(A239465(n+2))`
-/

namespace A057784.P2030831323317613473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329394 (n + 1) + A295875 (A239465 (n + 2)).toNat

end

end A057784.P2030831323317613473

/-! ## A057784.P762028055697143238

`A383492(A381225(n))`
-/

namespace A057784.P762028055697143238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383492 (A381225 n).toNat

end

end A057784.P762028055697143238

/-!
# A057786: Number of polykites with n cells.

The programs for A057786, there is no canonical definition to state claims against.
-/

/-! ## A057786.P4748831852077993452

`A339484(n+2)+A058494(n)`
-/

namespace A057786.P4748831852077993452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339484 (n + 2) + A058494 n

end

end A057786.P4748831852077993452

/-! ## A057786.P7750804406848829054

`∑[A000006(∑[A218945(n)])]`
-/

namespace A057786.P7750804406848829054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057786.P7750804406848829054

/-! ## A057786.P17596290379573819198

`A023193(A104551(n)+A001700(n))`
-/

namespace A057786.P17596290379573819198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A104551 n + A001700 n).toNat

end

end A057786.P17596290379573819198

/-!
# A057787: Number of polyarcs with n cells.

The programs for A057787, there is no canonical definition to state claims against.
-/

/-! ## A057787.P9509025905440716331

`Δ[record[floor(A323791(n)/(n+1))]]`
-/

namespace A057787.P9509025905440716331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323791 n : ℚ) / (n + 1 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057787.P9509025905440716331

/-!
# A057788: Expansion of (1+x)/(1-x)^12.

The programs for A057788, the canonical program `A057788.P14382721858771730472` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057788 has offset 0).

The definition of A057788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057788.P14382721858771730472

`C(n+10, 10)+2*C(n+10, 11)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057788

/-- `C(n+10, 10)+2*C(n+10, 11)` -/
def P14382721858771730472.Spec : Prop :=
  ∀ n, (P14382721858771730472.a n : ℤ) = A057788 n

theorem P14382721858771730472.correct : P14382721858771730472.Spec := by
  intro n
  simp only [A057788]

end A057788

/-! ## A057788.P9456378852872925074

`∑[∑[∑[∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]]]]`
-/

namespace A057788.P9456378852872925074
noncomputable section

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057788.P9456378852872925074

namespace A057788

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]]]]` -/
def P9456378852872925074.Spec : Prop :=
  ∀ n, (P9456378852872925074.a n : ℤ) = A057788 n

end A057788

/-! ## A057788.P10545404028826211313

`A054334(n)+a(n-1)` with `a(0)=1`
-/

namespace A057788.P10545404028826211313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054334 n + a (n - 1)

end

end A057788.P10545404028826211313

namespace A057788

/-- `A054334(n)+a(n-1)` -/
def P10545404028826211313.Spec : Prop :=
  ∀ n, P10545404028826211313.a n = A057788 n

end A057788

/-! ## A057788.P1084072068167479373

`gcd(∑[A054334(n)], A000038(n))`
-/

namespace A057788.P1084072068167479373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A057788.P1084072068167479373

namespace A057788

/-- `gcd(∑[A054334(n)], A000038(n))` -/
def P1084072068167479373.Spec : Prop :=
  ∀ n, (P1084072068167479373.a n : ℤ) = A057788 n

end A057788

/-! ## A057788.P14045616668575369974

`or(∑[A054334(n)], A000007(n))`
-/

namespace A057788.P14045616668575369974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A057788.P14045616668575369974

namespace A057788

/-- `or(∑[A054334(n)], A000007(n))` -/
def P14045616668575369974.Spec : Prop :=
  ∀ n, P14045616668575369974.a n = A057788 n

end A057788

/-! ## A057788.P3851081439656524312

`2*A001288(n)-A001287(n)`
-/

namespace A057788.P3851081439656524312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001288 (n + 11) - A001287 (n + 10)

end

end A057788.P3851081439656524312

namespace A057788

/-- `2*A001288(n)-A001287(n)` -/
def P3851081439656524312.Spec : Prop :=
  ∀ n, P3851081439656524312.a n = A057788 n

end A057788

/-! ## A057788.P16186042330182827940

`lcm(∑[A054334(n)], A008836(n+1))`
-/

namespace A057788.P16186042330182827940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A008836 (n + 1))

end

end A057788.P16186042330182827940

namespace A057788

/-- `lcm(∑[A054334(n)], A008836(n+1))` -/
def P16186042330182827940.Spec : Prop :=
  ∀ n, (P16186042330182827940.a n : ℤ) = A057788 n

end A057788

/-! ## A057788.P10526288304343702073

`A266561(n+1)-(A266561(n)+A054334(n+1))`
-/

namespace A057788.P10526288304343702073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266561 (n + 1) - (A266561 n + A054334 (n + 1))

end

end A057788.P10526288304343702073

namespace A057788

/-- `A266561(n+1)-(A266561(n)+A054334(n+1))` -/
def P10526288304343702073.Spec : Prop :=
  ∀ n, P10526288304343702073.a n = A057788 n

end A057788

/-! ## A057788.P4601069406402222204

`A000035(A130824(n))+∑[A054334(n)]`
-/

namespace A057788.P4601069406402222204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A130824 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057788.P4601069406402222204

namespace A057788

/-- `A000035(A130824(n))+∑[A054334(n)]` -/
def P4601069406402222204.Spec : Prop :=
  ∀ n, P4601069406402222204.a n = A057788 n

end A057788

/-! ## A057788.P17823743168871656808

`∑[A054334(n)]^A014963(A263827(n+1))`
-/

namespace A057788.P17823743168871656808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054334 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A014963 (A263827 (n + 1)).toNat : ℤ)

end

end A057788.P17823743168871656808

namespace A057788

/-- `∑[A054334(n)]^A014963(A263827(n+1))` -/
def P17823743168871656808.Spec : Prop :=
  ∀ n, P17823743168871656808.a n = (A057788 n : ℚ)

end A057788

/-!
# A057789: a(n) = Sum_{k = 1..n, gcd(k,n)=1} k*(n-k).

The programs for A057789, the canonical program `A057789.P16127120602619535770` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057789 has offset 1).

The definition of A057789 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A053818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057789.P16127120602619535770

`(n+1)*A023896(n+1)-A053818(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057789

/-- `(n+1)*A023896(n+1)-A053818(n+1)` -/
def P16127120602619535770.Spec : Prop :=
  ∀ n, P16127120602619535770.a n = A057789 (n + 1)

theorem P16127120602619535770.correct : P16127120602619535770.Spec := by
  intro n
  simp only [A057789, Nat.add_sub_cancel]

end A057789

/-! ## A057789.P17991141941796404033

`(n+1)/6*(A002618(n+1)-A023900(n+1))`
-/

namespace A057789.P17991141941796404033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (A002618 (n + 1) - A023900 (n + 1) : ℚ)

end

end A057789.P17991141941796404033

namespace A057789

/-- `(n+1)/6*(A002618(n+1)-A023900(n+1))` -/
def P17991141941796404033.Spec : Prop :=
  ∀ n, P17991141941796404033.a n = (A057789 (n + 1) : ℚ)

end A057789

/-! ## A057789.P16352643101602315241

`1/6*(A053191(n+1)-(n+1)*A023900(n+1))`
-/

namespace A057789.P16352643101602315241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (A053191 (n + 1) - (n + 1 : ℤ) * A023900 (n + 1) : ℚ)

end

end A057789.P16352643101602315241

namespace A057789

/-- `1/6*(A053191(n+1)-(n+1)*A023900(n+1))` -/
def P16352643101602315241.Spec : Prop :=
  ∀ n, P16352643101602315241.a n = (A057789 (n + 1) : ℚ)

end A057789

/-! ## A057789.P12992084016994373844

`2/3*((n+1)*A023896(n+1)-A053819(n+1)/(n+1))`
-/

namespace A057789.P12992084016994373844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (((n + 1 : ℤ) * A023896 (n + 1) : ℚ) - (A053819 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A057789.P12992084016994373844

namespace A057789

/-- `2/3*((n+1)*A023896(n+1)-A053819(n+1)/(n+1))` -/
def P12992084016994373844.Spec : Prop :=
  ∀ n, P12992084016994373844.a n = (A057789 (n + 1) : ℚ)

end A057789

/-! ## A057789.P16478419761444117396

`ceil(atan(n))*A334628(n+1)`
-/

namespace A057789.P16478419761444117396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ * A334628 (n + 1)

end

end A057789.P16478419761444117396

namespace A057789

/-- `ceil(atan(n))*A334628(n+1)` -/
def P16478419761444117396.Spec : Prop :=
  ∀ n, P16478419761444117396.a n = A057789 (n + 1)

end A057789

/-! ## A057789.P886246746397977726

`A130130(n)*A334628(n+1)`
-/

namespace A057789.P886246746397977726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n * A334628 (n + 1)

end

end A057789.P886246746397977726

namespace A057789

/-- `A130130(n)*A334628(n+1)` -/
def P886246746397977726.Spec : Prop :=
  ∀ n, P886246746397977726.a n = A057789 (n + 1)

end A057789

/-! ## A057789.P9871238656787946776

`gcd(2, A002088(n))*A334628(n+1)`
-/

namespace A057789.P9871238656787946776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002088 n) : ℤ) * A334628 (n + 1)

end

end A057789.P9871238656787946776

namespace A057789

/-- `gcd(2, A002088(n))*A334628(n+1)` -/
def P9871238656787946776.Spec : Prop :=
  ∀ n, P9871238656787946776.a n = A057789 (n + 1)

end A057789

/-! ## A057789.P9230660857431079420

`A000032(C(n, n²))*A334628(n+1)`
-/

namespace A057789.P9230660857431079420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n (n ^ 2)) * A334628 (n + 1)

end

end A057789.P9230660857431079420

namespace A057789

/-- `A000032(C(n, n²))*A334628(n+1)` -/
def P9230660857431079420.Spec : Prop :=
  ∀ n, P9230660857431079420.a n = A057789 (n + 1)

end A057789

/-! ## A057789.P15756441246069370191

`∑{d}[n+1, A006580(#)*A055615((n+1)/#)]`
-/

namespace A057789.P15756441246069370191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006580 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057789.P15756441246069370191

namespace A057789

/-- `∑{d}[n+1, A006580(#)*A055615((n+1)/#)]` -/
def P15756441246069370191.Spec : Prop :=
  ∀ n, P15756441246069370191.a n = A057789 (n + 1)

end A057789

/-! ## A057789.P4454086684393343521

`∑{d}[n+1, A053822(#)*A363604((n+1)/#)]`
-/

namespace A057789.P4454086684393343521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A363604 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057789.P4454086684393343521

namespace A057789

/-- `∑{d}[n+1, A053822(#)*A363604((n+1)/#)]` -/
def P4454086684393343521.Spec : Prop :=
  ∀ n, P4454086684393343521.a n = A057789 (n + 1)

end A057789

/-! ## A057789.P3351823912910779546

`∑{d}[n+1, A000292(#-1)*A334657((n+1)/#)]`
-/

namespace A057789.P3351823912910779546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000292 (d - 1) * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057789.P3351823912910779546

namespace A057789

/-- `∑{d}[n+1, A000292(#-1)*A334657((n+1)/#)]` -/
def P3351823912910779546.Spec : Prop :=
  ∀ n, P3351823912910779546.a n = A057789 (n + 1)

end A057789

/-!
# A057790: Table read by antidiagonals: T(n,k) = number of restricted knight's walks from (n,k) (n >= 0, k >= 0).

The programs for A057790, there is no canonical definition to state claims against.
-/

/-! ## A057790.P4537405150621905748

`A030530(A227690(n)%A335735(n+1))`
-/

namespace A057790.P4537405150621905748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (Int.tmod (A227690 n) (A335735 (n + 1))).toNat

end

end A057790.P4537405150621905748

/-! ## A057790.P15368229405207711105

`A045796(A008327(n))`
-/

namespace A057790.P15368229405207711105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045796 (A008327 n).toNat

end

end A057790.P15368229405207711105

/-! ## A057790.P10500833754900290593

`A102746(A119329(n))`
-/

namespace A057790.P10500833754900290593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102746 (A119329 n).toNat

end

end A057790.P10500833754900290593

/-! ## A057790.P5404742471401111242

`A008335(A008327(n)^3)`
-/

namespace A057790.P5404742471401111242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008335 (A008327 n ^ 3).toNat

end

end A057790.P5404742471401111242

/-! ## A057790.P13615043454137299074

`A008335(A008327(n)²*A008327(n))`
-/

namespace A057790.P13615043454137299074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008335 (A008327 n ^ 2 * A008327 n).toNat

end

end A057790.P13615043454137299074

/-!
# A057792: Sum[k^k], where sum is over positive integers, k, where k <= n and gcd(k,n) = 1.

The programs for A057792, there is no canonical definition to state claims against.
-/

/-! ## A057792.P12908635066677083439

`A003415(A024451(n))+n^n`
-/

namespace A057792.P12908635066677083439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A024451 n).toNat + (n ^ n : ℤ)

end

end A057792.P12908635066677083439

/-! ## A057792.P15469805296250100000

`A034448(n^n-A316801(n+1))`
-/

namespace A057792.P15469805296250100000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((n ^ n : ℤ) - A316801 (n + 1)).toNat

end

end A057792.P15469805296250100000

/-!
# A057793: Integer nearest Riemann(10^n), where Riemann(x) = Sum_{k=1..infinity} mu(k)/k * Integral Log( x^(1/k) ).

The programs for A057793, there is no canonical definition to state claims against.
-/

/-! ## A057793.P11614072797665580246

`∑[A228113(n+1)]`
-/

namespace A057793.P11614072797665580246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057793.P11614072797665580246

/-! ## A057793.P5348694418715703000

`A057794(n+1)+A006880(n+1)`
-/

namespace A057793.P5348694418715703000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) + A006880 (n + 1)

end

end A057793.P5348694418715703000

/-! ## A057793.P14498055082322747354

`A057794(n+1)+A228724(n+1)+A226945(n+1)`
-/

namespace A057793.P14498055082322747354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) + (A228724 (n + 1) + A226945 (n + 1))

end

end A057793.P14498055082322747354

/-! ## A057793.P3627406736514745424

`A057754(n+1)+A057794(n+1)-A057752(n+1)`
-/

namespace A057793.P3627406736514745424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) + (A057794 (n + 1) - A057752 (n + 1))

end

end A057793.P3627406736514745424

/-! ## A057793.P11771693264128781414

`A057794(n+1)+A223166(n+1)-A223167(n+1)`
-/

namespace A057793.P11771693264128781414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) + (A223166 (n + 1) - A223167 (n + 1))

end

end A057793.P11771693264128781414

/-!
# A057794: (Integer nearest R(10^n)) - pi(10^n), where pi(x) is the number of primes <= x, R(x) = Sum_{ k>=1 } (mu(k)/k * li(x^(1/k))) and li(x) is the Cauchy principal value of the integral from 0 to x of dt/log(t).

The programs for A057794, there is no canonical definition to state claims against.
-/

/-! ## A057794.P2116011800396297402

`A057793(n+1)-A006880(n+1)`
-/

namespace A057794.P2116011800396297402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057793 (n + 1) - A006880 (n + 1)

end

end A057794.P2116011800396297402

/-! ## A057794.P2060481969847002001

`∑[A228113(n+1)-Δ[A006880(n)]]`
-/

namespace A057794.P2060481969847002001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228113 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057794.P2060481969847002001

/-! ## A057794.P7533633444234498647

`-∑[A006879(n+1)-A228113(n+1)]`
-/

namespace A057794.P7533633444234498647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057794.P7533633444234498647

/-! ## A057794.P12133715055108219339

`∑[A228113(n+1)-Δ[A090226(n+1)]]`
-/

namespace A057794.P12133715055108219339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228113 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057794.P12133715055108219339

/-! ## A057794.P10413072707241281968

`A057752(n+1)+A057793(n+1)-A057754(n+1)`
-/

namespace A057794.P10413072707241281968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057752 (n + 1) + (A057793 (n + 1) - A057754 (n + 1))

end

end A057794.P10413072707241281968

/-!
# A057795: Sum k!, where sum is over positive integers k <= n with gcd(k,n) = 1.

The programs for A057795, there is no canonical definition to state claims against.
-/

/-! ## A057795.P4685089341087610790

`A059590(A054432(n+1))`
-/

namespace A057795.P4685089341087610790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A054432 (n + 1)).toNat

end

end A057795.P4685089341087610790

/-! ## A057795.P3521932757932913221

`A306584(or(1, A006154(n)))`
-/

namespace A057795.P3521932757932913221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306584 (Int.lor 1 (A006154 n)).toNat

end

end A057795.P3521932757932913221

/-! ## A057795.P13815352186241428651

`or(1, A211363(A211374(n+1)))`
-/

namespace A057795.P13815352186241428651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A211363 (A211374 (n + 1)).toNat)

end

end A057795.P13815352186241428651

/-!
# A057796: Number of ways of getting 5 of a kind, a straight flush, 4 of a kind, full house, flush, straight, 3 of a kind, 2 pair, a pair in deuces-wild poker.

The programs for A057796, there is no canonical definition to state claims against.
-/

/-! ## A057796.P5309412832147520522

`A057805(A044734(n+1)%A000124(n))`
-/

namespace A057796.P5309412832147520522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057805 (Int.tmod (A044734 (n + 1)) (A000124 n)).toNat

end

end A057796.P5309412832147520522

/-!
# A057798: Number of ways of getting 5 of a kind, a straight flush, 4 of a kind, full house, flush, straight, 3 of a kind, 2 pair, a pair in wild-card poker with 2 jokers.

The programs for A057798, there is no canonical definition to state claims against.
-/

/-! ## A057798.P6587706378873344537

`A057799(n+1)+A057800(n)-A057801(n+1)`
-/

namespace A057798.P6587706378873344537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057799 (n + 1) + (A057800 n - A057801 (n + 1))

end

end A057798.P6587706378873344537

/-! ## A057798.P16269194411551017751

`A057800(A325693(n))`
-/

namespace A057798.P16269194411551017751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057800 (A325693 n).toNat

end

end A057798.P16269194411551017751

/-!
# A057799: Number of ways of getting 5 of a kind, a straight flush, 4 of a kind, full house, flush, straight, 3 of a kind, 2 pair, a pair in wild-card poker with 1 joker.

The programs for A057799, there is no canonical definition to state claims against.
-/

/-! ## A057799.P3254180402457295979

`A014404(n+1)-A200430(A070077(n+1))`
-/

namespace A057799.P3254180402457295979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (n + 1) - A200430 (A070077 (n + 1)).toNat

end

end A057799.P3254180402457295979

/-! ## A057799.P7362469435964968078

`A057801(n+1)+A057798(n)-A057800(n)`
-/

namespace A057799.P7362469435964968078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057801 (n + 1) + (A057798 n - A057800 n)

end

end A057799.P7362469435964968078

/-! ## A057799.P6865518865328107590

`A014404(n+1)-A093144(A151670(2*n+3))`
-/

namespace A057799.P6865518865328107590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (n + 1) - A093144 (A151670 (2 * n + 3)).toNat

end

end A057799.P6865518865328107590

/-! ## A057799.P11596037095970744353

`A014404(n+1)-A172200(A001511(3*n+5))`
-/

namespace A057799.P11596037095970744353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (n + 1) - A172200 (A001511 (3 * n + 5)).toNat

end

end A057799.P11596037095970744353

/-! ## A057799.P14467387358400042241

`A014404(n+1)-A211241(A320834(3*n+1)+1)`
-/

namespace A057799.P14467387358400042241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (n + 1) - A211241 (A320834 (3 * n + 1) + 1).toNat

end

end A057799.P14467387358400042241

