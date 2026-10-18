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
import Seq.B000.C022
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A176603: Smallest prime p of three consecutive primes (p,q,r) with p + q + r equal to a lower twin prime.

The programs for A176603, there is no canonical definition to state claims against.
-/

/-! ## A176603.P8202857263267858777

`A278922(A345042(n+1))`
-/

namespace A176603.P8202857263267858777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278922 (A345042 (n + 1)).toNat

end

end A176603.P8202857263267858777

/-! ## A176603.P15438319465164140118

`A006530(A050842(3*(n+1))*A050879(n+1))`
-/

namespace A176603.P15438319465164140118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A050842 (3 * (n + 1)) * A050879 (n + 1)).toNat

end

end A176603.P15438319465164140118

/-!
# A176604: Sequence defined by the recurrence formula a(n+1) = Sum_{n>=1}(a(p)*a(n-p) + k, p=0..n) + j, with a(0) = 1, a(1) = 0, k = 0 and j = 1.

The programs for A176604, there is no canonical definition to state claims against.
-/

/-! ## A176604.P11317494667061778310

`A123578(A161779(n)-n)`
-/

namespace A176604.P11317494667061778310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A161779 n - (n : ℤ)).toNat

end

end A176604.P11317494667061778310

/-! ## A176604.P8523171550261818018

`A123578(A192744(n)-n)`
-/

namespace A176604.P8523171550261818018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A192744 n - (n : ℤ)).toNat

end

end A176604.P8523171550261818018

/-! ## A176604.P4645217537679454932

`A172471(A161779(n)-n)`
-/

namespace A176604.P4645217537679454932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A161779 n - (n : ℤ)).toNat

end

end A176604.P4645217537679454932

/-!
# A176605: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=1, k=0 and l=1.

The programs for A176605, there is no canonical definition to state claims against.
-/

/-! ## A176605.P9277738537327731066

`A350969(A149863(n))`
-/

namespace A176605.P9277738537327731066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A149863 n).toNat

end

end A176605.P9277738537327731066

/-! ## A176605.P9593159788992959263

`A226762(A149033(n+1))`
-/

namespace A176605.P9593159788992959263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A149033 (n + 1)).toNat

end

end A176605.P9593159788992959263

/-!
# A176606: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=0 and l=1.

The programs for A176606, there is no canonical definition to state claims against.
-/

/-! ## A176606.P5330952099418261931

`A150269(n)+A051903(A185389(n+1))`
-/

namespace A176606.P5330952099418261931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150269 n + A051903 (A185389 (n + 1)).toNat

end

end A176606.P5330952099418261931

/-! ## A176606.P6972197381443063654

`A063895(2*n+3)+A007895(A000254(n))`
-/

namespace A176606.P6972197381443063654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063895 (2 * n + 3) + A007895 (A000254 n).toNat

end

end A176606.P6972197381443063654

/-!
# A176607: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=4, k=0 and l=1.

The programs for A176607, there is no canonical definition to state claims against.
-/

/-! ## A176607.P17773212406186981027

`A015531(n)+A007306(A005346(n+1))`
-/

namespace A176607.P17773212406186981027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + A007306 (A005346 (n + 1)).toNat

end

end A176607.P17773212406186981027

/-!
# A176608: Primes of the form x^2 + 5*y^2, where x and y=x+1 are consecutive natural numbers.

The programs for A176608, there is no canonical definition to state claims against.
-/

/-! ## A176608.P14324221655731253794

`p?[n*(6*n-2)+1]`
-/

namespace A176608.P14324221655731253794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((6 * n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176608.P14324221655731253794

/-! ## A176608.P2540393608473362586

`∑{p}[p?[∑[12*n+4]+1], #]`
-/

namespace A176608.P2540393608473362586
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A176608.P2540393608473362586

/-! ## A176608.P14346327014813601932

`∏{p}[p?[∑[12*n+4]+1], #]`
-/

namespace A176608.P14346327014813601932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A176608.P14346327014813601932

/-! ## A176608.P5958219918669814325

`or(1, p?[A201279(n)])`
-/

namespace A176608.P5958219918669814325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176608.P5958219918669814325

/-! ## A176608.P2862781271936936283

`or(1, p?[A033579(n)+1])`
-/

namespace A176608.P2862781271936936283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176608.P2862781271936936283

/-! ## A176608.P16322022749294444269

`∏{d}[p?[A005919(n)-(n+1)²], #]`
-/

namespace A176608.P16322022749294444269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - ((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A176608.P16322022749294444269

/-! ## A176608.P11901401705596378975

`record[p?[A164097(A093178(n))+2]]`
-/

namespace A176608.P11901401705596378975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (A093178 n).toNat + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176608.P11901401705596378975

/-! ## A176608.P13171418474665505349

`A007318(∑[n])*p?[A201279(n)]`
-/

namespace A176608.P13171418474665505349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A176608.P13171418474665505349

/-! ## A176608.P11991592964234502775

`∩[A033205(n+1), A201279(n)]`
-/

namespace A176608.P11991592964234502775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176608.P11991592964234502775

/-! ## A176608.P13942158982131922427

`∩[A091729(n+1), A201279(n)]`
-/

namespace A176608.P13942158982131922427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176608.P13942158982131922427

/-!
# A176609: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=0 and l=1.

The programs for A176609, there is no canonical definition to state claims against.
-/

/-! ## A176609.P9572667088909776135

`A321739(record[2-xor(1, -n)])+∑{d}[n+1, (-1)^#]+1`
-/

namespace A176609.P9572667088909776135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1)

end

end A176609.P9572667088909776135

/-!
# A176610: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=0, k=1 and l=1.

The programs for A176610, there is no canonical definition to state claims against.
-/

/-! ## A176610.P5909940596772159787

`A229791(A000108(n))-A229764(2*(n+1))`
-/

namespace A176610.P5909940596772159787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (A000108 n).toNat - A229764 (2 * (n + 1))

end

end A176610.P5909940596772159787

/-!
# A176611: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=1, k=1 and l=1.

The programs for A176611, there is no canonical definition to state claims against.
-/

/-! ## A176611.P9814407970430872283

`or(1, A033270(A151163(n)))`
-/

namespace A176611.P9814407970430872283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033270 (A151163 n).toNat)

end

end A176611.P9814407970430872283

/-! ## A176611.P18298386973466963036

`A149427(n)+A091269(A003418(n))`
-/

namespace A176611.P18298386973466963036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149427 n + A091269 (A003418 n).toNat

end

end A176611.P18298386973466963036

/-! ## A176611.P14616636195269412852

`A080605(A138772(n+1)+A000166(n))`
-/

namespace A176611.P14616636195269412852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A138772 (n + 1) + A000166 n).toNat

end

end A176611.P14616636195269412852

/-!
# A176612: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=2, k=1 and l=1.

The programs for A176612, there is no canonical definition to state claims against.
-/

/-! ## A176612.P10762256747595544096

`ceil(sqrt(A325755(∑[n]+n^n)))`
-/

namespace A176612.P10762256747595544096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A325755 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ n) : ℝ)⌉

end

end A176612.P10762256747595544096

/-! ## A176612.P11222538306135080255

`A108711(∑[floor(e*(n+1))]-n)`
-/

namespace A176612.P11222538306135080255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108711 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A176612.P11222538306135080255

/-!
# A176614: Conjectured least number M such that PrimePi(m)*log(m)/m lies between 1+(1/n) and 1-(1/n) for all m >= M.

The programs for A176614, there is no canonical definition to state claims against.
-/

/-! ## A176614.P626949081025580423

`a(n-2)!*A017927(n)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A176614.P626949081025580423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  (Nat.factorial (a (n - 2)).toNat : ℤ) * A017927 n

end

end A176614.P626949081025580423

/-!
# A176615: Number of edges in the graph on n vertices, labeled 1 to n, where two vertices are joined just if their labels sum to a perfect square.

The programs for A176615, the canonical program `A176615.P3860707824598876643` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176615 has offset 1).

The definition of A176615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176615.P3860707824598876643

`∑[A320278(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176615

/-- `∑[A320278(n+1)]` -/
def P3860707824598876643.Spec : Prop :=
  ∀ n, P3860707824598876643.a n = A176615 (n + 1)

theorem P3860707824598876643.correct : P3860707824598876643.Spec := by
  intro n
  simp only [A176615, Nat.add_sub_cancel]

end A176615

/-! ## A176615.P11319328409389035789

`∑[A273190(n+1)]-A000196(n+1)`
-/

namespace A176615.P11319328409389035789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000196 (n + 1)

end

end A176615.P11319328409389035789

namespace A176615

/-- `∑[A273190(n+1)]-A000196(n+1)` -/
def P11319328409389035789.Spec : Prop :=
  ∀ n, P11319328409389035789.a n = A176615 (n + 1)

end A176615

/-! ## A176615.P3125808757912128614

`A337134(n+1)-A022554(n+1)`
-/

namespace A176615.P3125808757912128614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337134 (n + 1) - A022554 (n + 1)

end

end A176615.P3125808757912128614

namespace A176615

/-- `A337134(n+1)-A022554(n+1)` -/
def P3125808757912128614.Spec : Prop :=
  ∀ n, P3125808757912128614.a n = A176615 (n + 1)

end A176615

/-! ## A176615.P14043611658794445372

`∑[A103128(n+1)]-A022554(n+1)`
-/

namespace A176615.P14043611658794445372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022554 (n + 1)

end

end A176615.P14043611658794445372

namespace A176615

/-- `∑[A103128(n+1)]-A022554(n+1)` -/
def P14043611658794445372.Spec : Prop :=
  ∀ n, P14043611658794445372.a n = A176615 (n + 1)

end A176615

/-! ## A176615.P9462563389867415883

`∑[A000196(2*n+1)-A000196(n+1)]`
-/

namespace A176615.P9462563389867415883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n + 1) - A000196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176615.P9462563389867415883

namespace A176615

/-- `∑[A000196(2*n+1)-A000196(n+1)]` -/
def P9462563389867415883.Spec : Prop :=
  ∀ n, P9462563389867415883.a n = A176615 (n + 1)

end A176615

/-! ## A176615.P5145224626980433308

`∑[A003059(2*(n+1))-A003059(n+2)]`
-/

namespace A176615.P5145224626980433308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (2 * (n + 1)) - A003059 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176615.P5145224626980433308

namespace A176615

/-- `∑[A003059(2*(n+1))-A003059(n+2)]` -/
def P5145224626980433308.Spec : Prop :=
  ∀ n, P5145224626980433308.a n = A176615 (n + 1)

end A176615

/-! ## A176615.P11080156913218975241

`A281871(A152950(n+2)-1)-A000007(n)`
-/

namespace A176615.P11080156913218975241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A152950 (n + 2) - 1).toNat - A000007 n

end

end A176615.P11080156913218975241

namespace A176615

/-- `A281871(A152950(n+2)-1)-A000007(n)` -/
def P11080156913218975241.Spec : Prop :=
  ∀ n, P11080156913218975241.a n = A176615 (n + 1)

end A176615

/-! ## A176615.P13830585909602911120

`A157928(n)*A281871(A152950(n+2)-1)`
-/

namespace A176615.P13830585909602911120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A281871 (A152950 (n + 2) - 1).toNat

end

end A176615.P13830585909602911120

namespace A176615

/-- `A157928(n)*A281871(A152950(n+2)-1)` -/
def P13830585909602911120.Spec : Prop :=
  ∀ n, P13830585909602911120.a n = A176615 (n + 1)

end A176615

/-!
# A176616: Primes of the form x^2 + 7*y^2, where x and y=x+1 are consecutive natural numbers.

The programs for A176616, there is no canonical definition to state claims against.
-/

/-! ## A176616.P9045726450134032176

`A285790(n+2)`
-/

namespace A176616.P9045726450134032176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285790 (n + 2)

end

end A176616.P9045726450134032176

/-! ## A176616.P14740786577944686008

`∩[A055469(n+1), A185438(n)]`
-/

namespace A176616.P14740786577944686008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P14740786577944686008

/-! ## A176616.P7102467143450896668

`∩[A055469(n+2), A130883(n)]`
-/

namespace A176616.P7102467143450896668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P7102467143450896668

/-! ## A176616.P9752530616672235655

`∩[A055469(n+2), A266259(n)]`
-/

namespace A176616.P9752530616672235655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P9752530616672235655

/-! ## A176616.P8846824505655244889

`∩[A055469(n+2), A266594(n)]`
-/

namespace A176616.P8846824505655244889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P8846824505655244889

/-! ## A176616.P4540556737555325922

`∩[A055469(n+1), A114113(n+1)]`
-/

namespace A176616.P4540556737555325922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P4540556737555325922

/-! ## A176616.P4180535321274543948

`∩[A055469(n+2), A075855(n+2)]`
-/

namespace A176616.P4180535321274543948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075855 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P4180535321274543948

/-! ## A176616.P17336112037774929827

`∩[A055469(n+1), A249333(n+3)]`
-/

namespace A176616.P17336112037774929827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249333 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P17336112037774929827

/-! ## A176616.P11982154486290663309

`∩[A055469(n+2), A362652(n+2)]`
-/

namespace A176616.P11982154486290663309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362652 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P11982154486290663309

/-! ## A176616.P4253621994130006007

`∩[A055469(n+1), A365892(n+1)-n]`
-/

namespace A176616.P4253621994130006007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365892 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P4253621994130006007

/-! ## A176616.P13424248526846018198

`∩[A077128(n+1), A185438(n)]`
-/

namespace A176616.P13424248526846018198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P13424248526846018198

/-! ## A176616.P9580301633723719573

`∩[A077128(n+1), A114113(n+1)]`
-/

namespace A176616.P9580301633723719573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P9580301633723719573

/-! ## A176616.P8038291637844280743

`∩[A077128(n+1), A249333(n+3)]`
-/

namespace A176616.P8038291637844280743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249333 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176616.P8038291637844280743

/-! ## A176616.P9940377245431921669

`p?[or(1, ∑[n])-n]`
-/

namespace A176616.P9940377245431921669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176616.P9940377245431921669

/-! ## A176616.P16409262565676625003

`p?[xor(1, ∑[n])-n]`
-/

namespace A176616.P16409262565676625003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176616.P16409262565676625003

/-! ## A176616.P17233206828282718794

`p?[C(4*n, 2)+1]`
-/

namespace A176616.P17233206828282718794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176616.P17233206828282718794

/-! ## A176616.P14244400209015940457

`p?[or(1, C(2*n, 2))]`
-/

namespace A176616.P14244400209015940457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (2 * n) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176616.P14244400209015940457

/-! ## A176616.P14238835462994094630

`p?[xor(1, C(2*n, 2))]`
-/

namespace A176616.P14238835462994094630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose (2 * n) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176616.P14238835462994094630

/-! ## A176616.P9137948475941375939

`p?[∑[n+1]+∑[n]%2]`
-/

namespace A176616.P9137948475941375939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176616.P9137948475941375939

/-! ## A176616.P13113463504586925558

`p?[∑[n+1]+and(1, ∑[n])]`
-/

namespace A176616.P13113463504586925558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176616.P13113463504586925558

/-!
# A176617: Primes of the form 14*k^2 + 26*k + 13.

The programs for A176617, there is no canonical definition to state claims against.
-/

/-! ## A176617.P17410391985629282724

`p?[n²+13*(n+1)²]`
-/

namespace A176617.P17410391985629282724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 13 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176617.P17410391985629282724

/-! ## A176617.P17997167655983244077

`or(1, p?[A185019(n)+1+n])`
-/

namespace A176617.P17997167655983244077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176617.P17997167655983244077

/-! ## A176617.P15958383956163461783

`or(1, p?[A056106(n)+A000982(n)])`
-/

namespace A176617.P15958383956163461783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n + A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176617.P15958383956163461783

/-! ## A176617.P10990842816769899121

`A007318(C(2, n))*p?[A185019(n)+1+n]`
-/

namespace A176617.P10990842816769899121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176617.P10990842816769899121

/-! ## A176617.P9154501387327219178

`char[A000108(n+9)]+p?[A185019(n)+n+1]`
-/

namespace A176617.P9154501387327219178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A176617.P9154501387327219178

/-! ## A176617.P17017636252933165984

`A014963(6*(n+1))*p?[A185019(n)+1+n]`
-/

namespace A176617.P17017636252933165984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176617.P17017636252933165984

/-! ## A176617.P10798764037403389002

`p?[A185019(n)+1+n]/A007318(C(2, n+2))`
-/

namespace A176617.P10798764037403389002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + 1 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A176617.P10798764037403389002

/-! ## A176617.P10620360948562763518

`A000041(C(2, 2*n))*p?[A185019(n)+1+n]`
-/

namespace A176617.P10620360948562763518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176617.P10620360948562763518

/-! ## A176617.P5209690517025766203

`p?[A185019(n)+1+n]/log2(A020639(2*(n+1)))`
-/

namespace A176617.P5209690517025766203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + 1 + (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.logb 2 (A020639 (2 * (n + 1)) : ℝ)

end

end A176617.P5209690517025766203

/-! ## A176617.P8907052716848892144

`p?[A185019(n)+1+n]/gcd(n+1, A000040(n+1))`
-/

namespace A176617.P8907052716848892144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + 1 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) : ℚ)

end

end A176617.P8907052716848892144

/-!
# A176619: Primes p such that 2p + 3, 4p + 9, 3p + 2 and 9p + 8 are also primes.

The programs for A176619, there is no canonical definition to state claims against.
-/

/-! ## A176619.P525479288965014419

`∩[A023242(n+1), A023246(n+1)]`
-/

namespace A176619.P525479288965014419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176619.P525479288965014419

/-! ## A176619.P2784713620290885834

`∩[A023242(n+1), floor(A152292(n+1)/3)]`
-/

namespace A176619.P2784713620290885834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152292 (n + 1) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176619.P2784713620290885834

/-! ## A176619.P6270327290003332141

`∩[A023246(n+1), A006530(A247010(n+1)-3)]`
-/

namespace A176619.P6270327290003332141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A247010 (n + 1) - 3).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176619.P6270327290003332141

/-! ## A176619.P12314880417771942992

`∩[A023246(n+1), A014682(A247010(n+1)-3)]`
-/

namespace A176619.P12314880417771942992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A247010 (n + 1) - 3).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176619.P12314880417771942992

/-! ## A176619.P2029450571393328263

`∩[A023242(n+1), A006530(A152292(n+1)-2)]`
-/

namespace A176619.P2029450571393328263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152292 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176619.P2029450571393328263

/-!
# A176620: Primes p for which the factorization of p! over distinct terms of A050376 does not contain 2.

The programs for A176620, the canonical program `A176620.P11195601066460878631` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176620 has offset 1).

The definition of A176620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176620.P16802907281401743790

`A027697(n+2)`
-/

namespace A176620.P16802907281401743790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 2)

end

end A176620.P16802907281401743790

namespace A176620

/-- `A027697(n+2)` -/
def P16802907281401743790.Spec : Prop :=
  ∀ n, P16802907281401743790.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P11195601066460878631

`p?[A227921(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176620

/-- `p?[A227921(n+1)]` -/
def P11195601066460878631.Spec : Prop :=
  ∀ n, P11195601066460878631.a n = A176620 (n + 1)

theorem P11195601066460878631.correct : P11195601066460878631.Spec := by
  intro n
  simp only [A176620, Nat.add_sub_cancel]

end A176620

/-! ## A176620.P12858382780223133857

`A000040(A027698(n+2))`
-/

namespace A176620.P12858382780223133857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027698 (n + 2)).toNat

end

end A176620.P12858382780223133857

namespace A176620

/-- `A000040(A027698(n+2))` -/
def P12858382780223133857.Spec : Prop :=
  ∀ n, P12858382780223133857.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P16850587804876533590

`∩[A000040(n+1), A227921(n+1)]`
-/

namespace A176620.P16850587804876533590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176620.P16850587804876533590

namespace A176620

/-- `∩[A000040(n+1), A227921(n+1)]` -/
def P16850587804876533590.Spec : Prop :=
  ∀ n, (P16850587804876533590.a n : ℤ) = A176620 (n + 1)

end A176620

/-! ## A176620.P11611487701013498478

`filter[A227921(n+1), A010051(#)]`
-/

namespace A176620.P11611487701013498478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176620.P11611487701013498478

namespace A176620

/-- `filter[A227921(n+1), A010051(#)]` -/
def P11611487701013498478.Spec : Prop :=
  ∀ n, P11611487701013498478.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P16495632615739760826

`filter[A227921(n+1), A358751(#)]`
-/

namespace A176620.P16495632615739760826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A176620.P16495632615739760826

namespace A176620

/-- `filter[A227921(n+1), A358751(#)]` -/
def P16495632615739760826.Spec : Prop :=
  ∀ n, P16495632615739760826.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P17883241206936934050

`filter[A227921(n+1), A358771(#)]`
-/

namespace A176620.P17883241206936934050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A176620.P17883241206936934050

namespace A176620

/-- `filter[A227921(n+1), A358771(#)]` -/
def P17883241206936934050.Spec : Prop :=
  ∀ n, P17883241206936934050.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P4294329669434231528

`filter[A227921(n+1), A353817(#)]`
-/

namespace A176620.P4294329669434231528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A176620.P4294329669434231528

namespace A176620

/-- `filter[A227921(n+1), A353817(#)]` -/
def P4294329669434231528.Spec : Prop :=
  ∀ n, P4294329669434231528.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P11498962263770162987

`p?[n*(A254377(n)+1)]`
-/

namespace A176620.P11498962263770162987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A254377 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176620.P11498962263770162987

namespace A176620

/-- `p?[n*(A254377(n)+1)]` -/
def P11498962263770162987.Spec : Prop :=
  ∀ n, P11498962263770162987.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P3323353130290766786

`record[p?[A268669(2*n+1)]]`
-/

namespace A176620.P3323353130290766786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176620.P3323353130290766786

namespace A176620

/-- `record[p?[A268669(2*n+1)]]` -/
def P3323353130290766786.Spec : Prop :=
  ∀ n, P3323353130290766786.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P5756851615974460276

`filter[A000040(n+1), A228495(#)]`
-/

namespace A176620.P5756851615974460276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P5756851615974460276

namespace A176620

/-- `filter[A000040(n+1), A228495(#)]` -/
def P5756851615974460276.Spec : Prop :=
  ∀ n, P5756851615974460276.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P14486821317688927724

`filter[A004139(n+1), A228495(#)]`
-/

namespace A176620.P14486821317688927724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P14486821317688927724

namespace A176620

/-- `filter[A004139(n+1), A228495(#)]` -/
def P14486821317688927724.Spec : Prop :=
  ∀ n, P14486821317688927724.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P17753070935053865252

`filter[A045319(n+1), A228495(#)]`
-/

namespace A176620.P17753070935053865252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P17753070935053865252

namespace A176620

/-- `filter[A045319(n+1), A228495(#)]` -/
def P17753070935053865252.Spec : Prop :=
  ∀ n, P17753070935053865252.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P163672375362692643

`filter[A045344(n+1), A228495(#)]`
-/

namespace A176620.P163672375362692643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P163672375362692643

namespace A176620

/-- `filter[A045344(n+1), A228495(#)]` -/
def P163672375362692643.Spec : Prop :=
  ∀ n, P163672375362692643.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P9204548355727444978

`filter[A051948(n+1), A228495(#)]`
-/

namespace A176620.P9204548355727444978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P9204548355727444978

namespace A176620

/-- `filter[A051948(n+1), A228495(#)]` -/
def P9204548355727444978.Spec : Prop :=
  ∀ n, P9204548355727444978.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P2363113945890554075

`filter[A053577(n+1), A228495(#)]`
-/

namespace A176620.P2363113945890554075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P2363113945890554075

namespace A176620

/-- `filter[A053577(n+1), A228495(#)]` -/
def P2363113945890554075.Spec : Prop :=
  ∀ n, P2363113945890554075.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P10640459844823558499

`filter[A053813(n+1), A228495(#)]`
-/

namespace A176620.P10640459844823558499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P10640459844823558499

namespace A176620

/-- `filter[A053813(n+1), A228495(#)]` -/
def P10640459844823558499.Spec : Prop :=
  ∀ n, P10640459844823558499.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P4551343171839470693

`filter[A065091(n+1), A228495(#)]`
-/

namespace A176620.P4551343171839470693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P4551343171839470693

namespace A176620

/-- `filter[A065091(n+1), A228495(#)]` -/
def P4551343171839470693.Spec : Prop :=
  ∀ n, P4551343171839470693.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P7805244144031679591

`filter[A066191(n+1), A228495(#)]`
-/

namespace A176620.P7805244144031679591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P7805244144031679591

namespace A176620

/-- `filter[A066191(n+1), A228495(#)]` -/
def P7805244144031679591.Spec : Prop :=
  ∀ n, P7805244144031679591.a n = A176620 (n + 1)

end A176620

/-! ## A176620.P17399865578819662875

`filter[A066542(n+1), A228495(#)]`
-/

namespace A176620.P17399865578819662875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A176620.P17399865578819662875

namespace A176620

/-- `filter[A066542(n+1), A228495(#)]` -/
def P17399865578819662875.Spec : Prop :=
  ∀ n, P17399865578819662875.a n = A176620 (n + 1)

end A176620

/-!
# A176621: a(n) = 2 + Sum_{k=0..n-1} A176513(4*k+1).

The programs for A176621, there is no canonical definition to state claims against.
-/

/-! ## A176621.P14237270009692442355

`record[A227951(n+1)-A351074(n+1)]`
-/

namespace A176621.P14237270009692442355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227951 (n + 1) - A351074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176621.P14237270009692442355

/-! ## A176621.P17525459966405310422

`A156267(A001844(n))+A001002(n)`
-/

namespace A176621.P17525459966405310422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156267 (A001844 n).toNat + A001002 n

end

end A176621.P17525459966405310422

/-! ## A176621.P1040369205564534602

`A327981(A372233(n))+A001002(n)`
-/

namespace A176621.P1040369205564534602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327981 (A372233 n).toNat + A001002 n

end

end A176621.P1040369205564534602

/-!
# A176622: Primes of the form x^2 + 17*y^2, where x and y=x+1 are consecutive natural numbers.

The programs for A176622, there is no canonical definition to state claims against.
-/

/-! ## A176622.P14537416737270540328

`p?[n*(18*n-2)+1]`
-/

namespace A176622.P14537416737270540328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((18 * n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176622.P14537416737270540328

/-! ## A176622.P17608514237112378270

`or(1, p?[A298034(n)-n])`
-/

namespace A176622.P17608514237112378270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176622.P17608514237112378270

/-! ## A176622.P17196967997077006273

`or(1, p?[A130883(3*n)+n])`
-/

namespace A176622.P17196967997077006273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176622.P17196967997077006273

/-! ## A176622.P15335547199904333400

`∏{d}[p?[A178574(n+1)+1], #]`
-/

namespace A176622.P15335547199904333400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178574 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A176622.P15335547199904333400

/-! ## A176622.P14762898743443687532

`or(1, p?[abs(1-A009946(n)+n)])`
-/

namespace A176622.P14762898743443687532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A009946 n + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176622.P14762898743443687532

/-!
# A176623: A126789 with zeros removed.

The programs for A176623, there is no canonical definition to state claims against.
-/

/-! ## A176623.P18379314784074573829

`A126789(A002473(n+1))`
-/

namespace A176623.P18379314784074573829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (A002473 (n + 1)).toNat

end

end A176623.P18379314784074573829

/-! ## A176623.P4705372334509533909

`A126789(A080194(n+1)/7)`
-/

namespace A176623.P4705372334509533909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (SequenceMachineLib.roundAway ((A080194 (n + 1) : ℚ) / 7)).toNat

end

end A176623.P4705372334509533909

/-! ## A176623.P2353084261256762441

`A126789(∏{digits}[A341634(n+1), #])`
-/

namespace A176623.P2353084261256762441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A176623.P2353084261256762441

/-! ## A176623.P5314847875901795304

`filter[A126789(n+1), A011558(#)]`
-/

namespace A176623.P5314847875901795304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A176623.P5314847875901795304

/-! ## A176623.P10378511030880398348

`filter[A126789(n+1), A023532(#)]`
-/

namespace A176623.P10378511030880398348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A176623.P10378511030880398348

/-!
# A176624: a(n) = prime(n) + n*(-1)^n.

The programs for A176624, the canonical program `A176624.P16337049625333485401` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176624 has offset 1).

The definition of A176624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176624.P16337049625333485401

`A000040(n+1)+A038608(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176624

/-- `A000040(n+1)+A038608(n+1)` -/
def P16337049625333485401.Spec : Prop :=
  ∀ n, P16337049625333485401.a n = A176624 (n + 1)

theorem P16337049625333485401.correct : P16337049625333485401.Spec := by
  intro n
  simp only [A176624, Nat.add_sub_cancel]

end A176624

/-! ## A176624.P7894501649693317639

`abs(A273960(n+1)+1+n)`
-/

namespace A176624.P7894501649693317639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1) + 1 + (n : ℤ)|

end

end A176624.P7894501649693317639

namespace A176624

/-- `abs(A273960(n+1)+1+n)` -/
def P7894501649693317639.Spec : Prop :=
  ∀ n, P7894501649693317639.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P6409829437619809128

`xor(1, A001043(n)-a(n-1))` with `a(0)=1`
-/

namespace A176624.P6409829437619809128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (A001043 n - a (n - 1))

end

end A176624.P6409829437619809128

namespace A176624

/-- `xor(1, A001043(n)-a(n-1))` -/
def P6409829437619809128.Spec : Prop :=
  ∀ n, P6409829437619809128.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P2506058195838549097

`A181983(n)+A172022(n+1)`
-/

namespace A176624.P2506058195838549097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A172022 (n + 1)

end

end A176624.P2506058195838549097

namespace A176624

/-- `A181983(n)+A172022(n+1)` -/
def P2506058195838549097.Spec : Prop :=
  ∀ n, P2506058195838549097.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P4464282812672527184

`A006005(n+1)-A131738(n)`
-/

namespace A176624.P4464282812672527184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A131738 n

end

end A176624.P4464282812672527184

namespace A176624

/-- `A006005(n+1)-A131738(n)` -/
def P4464282812672527184.Spec : Prop :=
  ∀ n, P4464282812672527184.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P13354298945535388638

`A172022(n+1)-A038608(n)`
-/

namespace A176624.P13354298945535388638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172022 (n + 1) - A038608 n

end

end A176624.P13354298945535388638

namespace A176624

/-- `A172022(n+1)-A038608(n)` -/
def P13354298945535388638.Spec : Prop :=
  ∀ n, P13354298945535388638.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P11947886645335520344

`A227832(n+1)+A040976(n+1)`
-/

namespace A176624.P11947886645335520344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227832 (n + 1) + A040976 (n + 1)

end

end A176624.P11947886645335520344

namespace A176624

/-- `A227832(n+1)+A040976(n+1)` -/
def P11947886645335520344.Spec : Prop :=
  ∀ n, P11947886645335520344.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P2501361499728753734

`A172022(n+1)-n*A033999(n)`
-/

namespace A176624.P2501361499728753734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172022 (n + 1) - (n : ℤ) * A033999 n

end

end A176624.P2501361499728753734

namespace A176624

/-- `A172022(n+1)-n*A033999(n)` -/
def P2501361499728753734.Spec : Prop :=
  ∀ n, P2501361499728753734.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P12529736228482096980

`Δ[A007504(n)-A001057(n)]`
-/

namespace A176624.P12529736228482096980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176624.P12529736228482096980

namespace A176624

/-- `Δ[A007504(n)-A001057(n)]` -/
def P12529736228482096980.Spec : Prop :=
  ∀ n, P12529736228482096980.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P13189181736331212595

`A274922(n+1)+A000040(n+1)`
-/

namespace A176624.P13189181736331212595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (n + 1) + A000040 (n + 1)

end

end A176624.P13189181736331212595

namespace A176624

/-- `A274922(n+1)+A000040(n+1)` -/
def P13189181736331212595.Spec : Prop :=
  ∀ n, P13189181736331212595.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P7288099624099241796

`A000040(n+1)-A181983(n+1)`
-/

namespace A176624.P7288099624099241796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A181983 (n + 1)

end

end A176624.P7288099624099241796

namespace A176624

/-- `A000040(n+1)-A181983(n+1)` -/
def P7288099624099241796.Spec : Prop :=
  ∀ n, P7288099624099241796.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P13469256283946991505

`A000040(n+1)+A001057(n)-A001057(n+1)`
-/

namespace A176624.P13469256283946991505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A001057 n - A001057 (n + 1))

end

end A176624.P13469256283946991505

namespace A176624

/-- `A000040(n+1)+A001057(n)-A001057(n+1)` -/
def P13469256283946991505.Spec : Prop :=
  ∀ n, P13469256283946991505.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P8769733186469855659

`A000040(n+1)+A130472(n+1)-A130472(n)`
-/

namespace A176624.P8769733186469855659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A130472 (n + 1) - A130472 n)

end

end A176624.P8769733186469855659

namespace A176624

/-- `A000040(n+1)+A130472(n+1)-A130472(n)` -/
def P8769733186469855659.Spec : Prop :=
  ∀ n, P8769733186469855659.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P9510688248623488069

`Δ[A007504(n)-Δ[A142150(n)]]`
-/

namespace A176624.P9510688248623488069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176624.P9510688248623488069

namespace A176624

/-- `Δ[A007504(n)-Δ[A142150(n)]]` -/
def P9510688248623488069.Spec : Prop :=
  ∀ n, P9510688248623488069.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P13781641886088164051

`A038608(n+1)+record[A020639(n+2)]`
-/

namespace A176624.P13781641886088164051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176624.P13781641886088164051

namespace A176624

/-- `A038608(n+1)+record[A020639(n+2)]` -/
def P13781641886088164051.Spec : Prop :=
  ∀ n, P13781641886088164051.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P9479331514831854642

`A073846(2*(n+1))-∑[A009001(2*n+1)]`
-/

namespace A176624.P9479331514831854642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176624.P9479331514831854642

namespace A176624

/-- `A073846(2*(n+1))-∑[A009001(2*n+1)]` -/
def P9479331514831854642.Spec : Prop :=
  ∀ n, P9479331514831854642.a n = A176624 (n + 1)

end A176624

/-! ## A176624.P4786119577479616367

`A000040(n+1)-A001057(A042948(n+1))`
-/

namespace A176624.P4786119577479616367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A001057 (A042948 (n + 1)).toNat

end

end A176624.P4786119577479616367

namespace A176624

/-- `A000040(n+1)-A001057(A042948(n+1))` -/
def P4786119577479616367.Spec : Prop :=
  ∀ n, P4786119577479616367.a n = A176624 (n + 1)

end A176624

/-!
# A176625: T(n,k) = 1 + 3*k*(k - n), triangle read by rows (n >= 0, 0 <= k <= n).

The programs for A176625, the canonical program `A176625.P3813908032077722047` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176625 has offset 0).

The definition of A176625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176625.P7787526266488305769

`2-A296180(n)`
-/

namespace A176625.P7787526266488305769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A296180 n

end

end A176625.P7787526266488305769

namespace A176625

/-- `2-A296180(n)` -/
def P7787526266488305769.Spec : Prop :=
  ∀ n, P7787526266488305769.a n = A176625 n

end A176625

/-! ## A176625.P3813908032077722047

`1-3*A004247(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176625

/-- `1-3*A004247(n)` -/
def P3813908032077722047.Spec : Prop :=
  ∀ n, P3813908032077722047.a n = A176625 n

theorem P3813908032077722047.correct : P3813908032077722047.Spec := by
  intro n
  simp only [A176625]

end A176625

/-! ## A176625.P9301794188788286778

`3*A176270(n)-2`
-/

namespace A176625.P9301794188788286778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A176270 n - 2

end

end A176625.P9301794188788286778

namespace A176625

/-- `3*A176270(n)-2` -/
def P9301794188788286778.Spec : Prop :=
  ∀ n, P9301794188788286778.a n = A176625 n

end A176625

/-! ## A176625.P10107144869805776571

`(3-A287326(n))/2`
-/

namespace A176625.P10107144869805776571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A287326 n : ℚ) / 2

end

end A176625.P10107144869805776571

namespace A176625

/-- `(3-A287326(n))/2` -/
def P10107144869805776571.Spec : Prop :=
  ∀ n, P10107144869805776571.a n = (A176625 n : ℚ)

end A176625

/-! ## A176625.P9324705240416945518

`4-3*A077028(n)`
-/

namespace A176625.P9324705240416945518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 3 * A077028 n

end

end A176625.P9324705240416945518

namespace A176625

/-- `4-3*A077028(n)` -/
def P9324705240416945518.Spec : Prop :=
  ∀ n, P9324705240416945518.a n = A176625 n

end A176625

/-! ## A176625.P12066572841475186304

`1-A008585(A004247(n))`
-/

namespace A176625.P12066572841475186304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008585 (A004247 n).toNat

end

end A176625.P12066572841475186304

namespace A176625

/-- `1-A008585(A004247(n))` -/
def P12066572841475186304.Spec : Prop :=
  ∀ n, P12066572841475186304.a n = A176625 n

end A176625

/-! ## A176625.P15288041917622693937

`2-A168233(A157528(n))`
-/

namespace A176625.P15288041917622693937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A168233 (A157528 n).toNat

end

end A176625.P15288041917622693937

namespace A176625

/-- `2-A168233(A157528(n))` -/
def P15288041917622693937.Spec : Prop :=
  ∀ n, P15288041917622693937.a n = A176625 n

end A176625

/-! ## A176625.P6028190400386345633

`4-A008486(A077028(n))`
-/

namespace A176625.P6028190400386345633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A008486 (A077028 n).toNat

end

end A176625.P6028190400386345633

namespace A176625

/-- `4-A008486(A077028(n))` -/
def P6028190400386345633.Spec : Prop :=
  ∀ n, P6028190400386345633.a n = A176625 n

end A176625

/-! ## A176625.P483879819008925594

`2-A001651(A130154(n+1))`
-/

namespace A176625.P483879819008925594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001651 (A130154 (n + 1)).toNat

end

end A176625.P483879819008925594

namespace A176625

/-- `2-A001651(A130154(n+1))` -/
def P483879819008925594.Spec : Prop :=
  ∀ n, P483879819008925594.a n = A176625 n

end A176625

/-! ## A176625.P602830289222100040

`2-A016777(A077028(n)-1)`
-/

namespace A176625.P602830289222100040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A016777 (A077028 n - 1).toNat

end

end A176625.P602830289222100040

namespace A176625

/-- `2-A016777(A077028(n)-1)` -/
def P602830289222100040.Spec : Prop :=
  ∀ n, P602830289222100040.a n = A176625 n

end A176625

/-! ## A176625.P1916874313210454772

`A002024(n+1)-A083381(n)`
-/

namespace A176625.P1916874313210454772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A083381 n

end

end A176625.P1916874313210454772

namespace A176625

/-- `A002024(n+1)-A083381(n)` -/
def P1916874313210454772.Spec : Prop :=
  ∀ n, P1916874313210454772.a n = A176625 n

end A176625

/-! ## A176625.P17115081272587388669

`A082043(n)+1-A082110(n)`
-/

namespace A176625.P17115081272587388669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + (1 - A082110 n)

end

end A176625.P17115081272587388669

namespace A176625

/-- `A082043(n)+1-A082110(n)` -/
def P17115081272587388669.Spec : Prop :=
  ∀ n, P17115081272587388669.a n = A176625 n

end A176625

/-! ## A176625.P8460753547739158176

`A114327(n)²+1-A073254(n)`
-/

namespace A176625.P8460753547739158176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n ^ 2 + (1 - A073254 n)

end

end A176625.P8460753547739158176

namespace A176625

/-- `A114327(n)²+1-A073254(n)` -/
def P8460753547739158176.Spec : Prop :=
  ∀ n, P8460753547739158176.a n = A176625 n

end A176625

/-! ## A176625.P7795224431030109488

`A349039(n)+1-A003056(n)²`
-/

namespace A176625.P7795224431030109488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349039 n + (1 - A003056 n ^ 2)

end

end A176625.P7795224431030109488

namespace A176625

/-- `A349039(n)+1-A003056(n)²` -/
def P7795224431030109488.Spec : Prop :=
  ∀ n, P7795224431030109488.a n = A176625 n

end A176625

/-! ## A176625.P4321085032490718001

`A004247(n)²+2-A082046(n)`
-/

namespace A176625.P4321085032490718001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n ^ 2 + (2 - A082046 n)

end

end A176625.P4321085032490718001

namespace A176625

/-- `A004247(n)²+2-A082046(n)` -/
def P4321085032490718001.Spec : Prop :=
  ∀ n, P4321085032490718001.a n = A176625 n

end A176625

/-! ## A176625.P5900578267290275668

`2-(A130154(n+1)+A004247(n))`
-/

namespace A176625.P5900578267290275668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A130154 (n + 1) + A004247 n)

end

end A176625.P5900578267290275668

namespace A176625

/-- `2-(A130154(n+1)+A004247(n))` -/
def P5900578267290275668.Spec : Prop :=
  ∀ n, P5900578267290275668.a n = A176625 n

end A176625

/-! ## A176625.P13800502924131467701

`1-3*A002262(n)*A025581(n)`
-/

namespace A176625.P13800502924131467701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * (A002262 n * A025581 n)

end

end A176625.P13800502924131467701

namespace A176625

/-- `1-3*A002262(n)*A025581(n)` -/
def P13800502924131467701.Spec : Prop :=
  ∀ n, P13800502924131467701.a n = A176625 n

end A176625

/-! ## A176625.P8686238900734108914

`A349039(n)+1-A073254(A057944(n))`
-/

namespace A176625.P8686238900734108914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349039 n + (1 - A073254 (A057944 n).toNat)

end

end A176625.P8686238900734108914

namespace A176625

/-- `A349039(n)+1-A073254(A057944(n))` -/
def P8686238900734108914.Spec : Prop :=
  ∀ n, P8686238900734108914.a n = A176625 n

end A176625

/-! ## A176625.P8411025870352934492

`1-A008585(A002262(n)*A025581(n))`
-/

namespace A176625.P8411025870352934492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008585 (A002262 n * A025581 n).toNat

end

end A176625.P8411025870352934492

namespace A176625

/-- `1-A008585(A002262(n)*A025581(n))` -/
def P8411025870352934492.Spec : Prop :=
  ∀ n, P8411025870352934492.a n = A176625 n

end A176625

/-! ## A176625.P16870465673892081531

`1-A008585(A025581(n)*A191532(n))`
-/

namespace A176625.P16870465673892081531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008585 (A025581 n * A191532 n).toNat

end

end A176625.P16870465673892081531

namespace A176625

/-- `1-A008585(A025581(n)*A191532(n))` -/
def P16870465673892081531.Spec : Prop :=
  ∀ n, P16870465673892081531.a n = A176625 n

end A176625

/-!
# A176626: Hilbert series related to measurement of quantum entanglement - see Hero and Willenbring for precise definition.

The programs for A176626, there is no canonical definition to state claims against.
-/

/-! ## A176626.P14901200074369662714

`A205783(A067139(n+1)*A346424(n))`
-/

namespace A176626.P14901200074369662714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (A067139 (n + 1) * A346424 n).toNat

end

end A176626.P14901200074369662714

/-!
# A176627: Triangle T(n, k) = 12^(k*(n-k)), read by rows.

The programs for A176627, the canonical program `A176627.P2547540132416364305` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176627 has offset 0).

The definition of A176627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176627.P10773290694394046955

`12^A004247(n)`
-/

namespace A176627.P10773290694394046955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A004247 n : ℤ)

end

end A176627.P10773290694394046955

namespace A176627

/-- `12^A004247(n)` -/
def P10773290694394046955.Spec : Prop :=
  ∀ n, P10773290694394046955.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P17885176695418011454

`12^log2(A117401(n))`
-/

namespace A176627.P17885176695418011454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (12 : ℝ) ^ (Real.logb 2 (A117401 n : ℝ))

end

end A176627.P17885176695418011454

namespace A176627

/-- `12^log2(A117401(n))` -/
def P17885176695418011454.Spec : Prop :=
  ∀ n, P17885176695418011454.a n = (A176627 n : ℝ)

end A176627

/-! ## A176627.P2547540132416364305

`A162466(A130154(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176627

/-- `A162466(A130154(n+1))` -/
def P2547540132416364305.Spec : Prop :=
  ∀ n, P2547540132416364305.a n = A176627 n

theorem P2547540132416364305.correct : P2547540132416364305.Spec := by
  intro n
  simp only [A176627]

end A176627

/-! ## A176627.P11238564133718419373

`A067419(A077028(n))/6`
-/

namespace A176627.P11238564133718419373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067419 (A077028 n).toNat : ℚ) / 6

end

end A176627.P11238564133718419373

namespace A176627

/-- `A067419(A077028(n))/6` -/
def P11238564133718419373.Spec : Prop :=
  ∀ n, P11238564133718419373.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P5102946383329161403

`12^A002262(A285192(n))`
-/

namespace A176627.P5102946383329161403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A002262 (A285192 n).toNat : ℤ)

end

end A176627.P5102946383329161403

namespace A176627

/-- `12^A002262(A285192(n))` -/
def P5102946383329161403.Spec : Prop :=
  ∀ n, P5102946383329161403.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P11117749271188853173

`A118180(n)*A118185(n)`
-/

namespace A176627.P11117749271188853173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118180 n * A118185 n

end

end A176627.P11117749271188853173

namespace A176627

/-- `A118180(n)*A118185(n)` -/
def P11117749271188853173.Spec : Prop :=
  ∀ n, P11117749271188853173.a n = A176627 n

end A176627

/-! ## A176627.P8126012096017316666

`A117401(n)*A158116(n)`
-/

namespace A176627.P8126012096017316666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A158116 n

end

end A176627.P8126012096017316666

namespace A176627

/-- `A117401(n)*A158116(n)` -/
def P8126012096017316666.Spec : Prop :=
  ∀ n, P8126012096017316666.a n = A176627 n

end A176627

/-! ## A176627.P17457850489301079523

`A117401(n)²*A118180(n)`
-/

namespace A176627.P17457850489301079523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n ^ 2 * A118180 n

end

end A176627.P17457850489301079523

namespace A176627

/-- `A117401(n)²*A118180(n)` -/
def P17457850489301079523.Spec : Prop :=
  ∀ n, P17457850489301079523.a n = A176627 n

end A176627

/-! ## A176627.P17918469880018577013

`sqrt(A118185(n))*A158116(n)`
-/

namespace A176627.P17918469880018577013
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A158116 n : ℝ)

end

end A176627.P17918469880018577013

namespace A176627

/-- `sqrt(A118185(n))*A158116(n)` -/
def P17918469880018577013.Spec : Prop :=
  ∀ n, P17918469880018577013.a n = (A176627 n : ℝ)

end A176627

/-! ## A176627.P9592768521630566896

`A118180(n)/A117401(n)*A176642(n)`
-/

namespace A176627.P9592768521630566896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118180 n : ℚ) / (A117401 n : ℚ) * (A176642 n : ℚ)

end

end A176627.P9592768521630566896

namespace A176627

/-- `A118180(n)/A117401(n)*A176642(n)` -/
def P9592768521630566896.Spec : Prop :=
  ∀ n, P9592768521630566896.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P9779560576702303593

`A158116(n)/A118180(n)*A158116(n)`
-/

namespace A176627.P9779560576702303593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158116 n : ℚ) / (A118180 n : ℚ) * (A158116 n : ℚ)

end

end A176627.P9779560576702303593

namespace A176627

/-- `A158116(n)/A118180(n)*A158116(n)` -/
def P9779560576702303593.Spec : Prop :=
  ∀ n, P9779560576702303593.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P9322557292334382624

`A158116(n)/A118190(n)*A158117(n)`
-/

namespace A176627.P9322557292334382624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158116 n : ℚ) / (A118190 n : ℚ) * (A158117 n : ℚ)

end

end A176627.P9322557292334382624

namespace A176627

/-- `A158116(n)/A118190(n)*A158117(n)` -/
def P9322557292334382624.Spec : Prop :=
  ∀ n, P9322557292334382624.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P4653502141816520889

`A158116(n)/A118185(n)*A176642(n)`
-/

namespace A176627.P4653502141816520889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158116 n : ℚ) / (A118185 n : ℚ) * (A176642 n : ℚ)

end

end A176627.P4653502141816520889

namespace A176627

/-- `A158116(n)/A118185(n)*A176642(n)` -/
def P4653502141816520889.Spec : Prop :=
  ∀ n, P4653502141816520889.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P9894964872623532160

`gcd(A000079(n), A158116(n))*A158116(n)`
-/

namespace A176627.P9894964872623532160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000079 n) (A158116 n) : ℤ) * A158116 n

end

end A176627.P9894964872623532160

namespace A176627

/-- `gcd(A000079(n), A158116(n))*A158116(n)` -/
def P9894964872623532160.Spec : Prop :=
  ∀ n, P9894964872623532160.a n = A176627 n

end A176627

/-! ## A176627.P11854205979195887263

`(A158117(n)/A118190(n))²*A118180(n)`
-/

namespace A176627.P11854205979195887263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A158117 n : ℚ) / (A118190 n : ℚ)) ^ 2 * (A118180 n : ℚ)

end

end A176627.P11854205979195887263

namespace A176627

/-- `(A158117(n)/A118190(n))²*A118180(n)` -/
def P11854205979195887263.Spec : Prop :=
  ∀ n, P11854205979195887263.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P12508953010618782986

`A013619(A285192(n))`
-/

namespace A176627.P12508953010618782986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 (A285192 n).toNat

end

end A176627.P12508953010618782986

namespace A176627

/-- `A013619(A285192(n))` -/
def P12508953010618782986.Spec : Prop :=
  ∀ n, P12508953010618782986.a n = A176627 n

end A176627

/-! ## A176627.P15139537933388682801

`A118185(n)/A118190(n)*A176639(n)`
-/

namespace A176627.P15139537933388682801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118185 n : ℚ) / (A118190 n : ℚ) * (A176639 n : ℚ)

end

end A176627.P15139537933388682801

namespace A176627

/-- `A118185(n)/A118190(n)*A176639(n)` -/
def P15139537933388682801.Spec : Prop :=
  ∀ n, P15139537933388682801.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P2356269652657708877

`A176639(n)/A158117(n)*A176642(n)`
-/

namespace A176627.P2356269652657708877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176639 n : ℚ) / (A158117 n : ℚ) * (A176642 n : ℚ)

end

end A176627.P2356269652657708877

namespace A176627

/-- `A176639(n)/A158117(n)*A176642(n)` -/
def P2356269652657708877.Spec : Prop :=
  ∀ n, P2356269652657708877.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P4580050685554798448

`A117401(n)²/A118190(n)*A176639(n)`
-/

namespace A176627.P4580050685554798448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117401 n ^ 2 : ℚ) / (A118190 n : ℚ) * (A176639 n : ℚ)

end

end A176627.P4580050685554798448

namespace A176627

/-- `A117401(n)²/A118190(n)*A176639(n)` -/
def P4580050685554798448.Spec : Prop :=
  ∀ n, P4580050685554798448.a n = (A176627 n : ℚ)

end A176627

/-! ## A176627.P9879819508673638416

`A158116(n)²/A118180(n)`
-/

namespace A176627.P9879819508673638416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158116 n ^ 2 : ℚ) / (A118180 n : ℚ)

end

end A176627.P9879819508673638416

namespace A176627

/-- `A158116(n)²/A118180(n)` -/
def P9879819508673638416.Spec : Prop :=
  ∀ n, P9879819508673638416.a n = (A176627 n : ℚ)

end A176627

/-!
# A176628: a(n) = prime(n) - n*(-1)^prime(n).

The programs for A176628, the canonical program `A176628.P12825066259648755443` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176628 has offset 1).

The definition of A176628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176628.P9195514382367063303

`A055670(n+1)+n`
-/

namespace A176628.P9195514382367063303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) + (n : ℤ)

end

end A176628.P9195514382367063303

namespace A176628

/-- `A055670(n+1)+n` -/
def P9195514382367063303.Spec : Prop :=
  ∀ n, P9195514382367063303.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P12825066259648755443

`A174008(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176628

/-- `A174008(n+1)-(n+1)` -/
def P12825066259648755443.Spec : Prop :=
  ∀ n, P12825066259648755443.a n = A176628 (n + 1)

theorem P12825066259648755443.correct : P12825066259648755443.Spec := by
  intro n
  simp only [A176628, Nat.add_sub_cancel]

end A176628

/-! ## A176628.P1599394228049700810

`∑{d}[A006005(n+1), #]+n`
-/

namespace A176628.P1599394228049700810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + n

end

end A176628.P1599394228049700810

namespace A176628

/-- `∑{d}[A006005(n+1), #]+n` -/
def P1599394228049700810.Spec : Prop :=
  ∀ n, (P1599394228049700810.a n : ℤ) = A176628 (n + 1)

end A176628

/-! ## A176628.P6194540766264694673

`abs(A073579(n+1))+1+n`
-/

namespace A176628.P6194540766264694673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073579 (n + 1)| + 1 + (n : ℤ)

end

end A176628.P6194540766264694673

namespace A176628

/-- `abs(A073579(n+1))+1+n` -/
def P6194540766264694673.Spec : Prop :=
  ∀ n, P6194540766264694673.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P3195452563173482823

`n-xor(1, -A000040(n+1))`
-/

namespace A176628.P3195452563173482823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 1 (-A000040 (n + 1))

end

end A176628.P3195452563173482823

namespace A176628

/-- `n-xor(1, -A000040(n+1))` -/
def P3195452563173482823.Spec : Prop :=
  ∀ n, P3195452563173482823.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P75057161425976487

`Δ[a(n-1)+A000040(n)+n]` with `a(0)=0, a(1)=1`
-/

namespace A176628.P75057161425976487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A000040 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176628.P75057161425976487

namespace A176628

/-- `Δ[a(n-1)+A000040(n)+n]` -/
def P75057161425976487.Spec : Prop :=
  ∀ n, P75057161425976487.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P13318110622838489005

`A000040(gcd(n, a(n-1))+n)+n+1` with `a(0)=1`
-/

namespace A176628.P13318110622838489005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.gcd (n : ℤ) (a (n - 1)) + n) + (n + 1 : ℤ)

end

end A176628.P13318110622838489005

namespace A176628

/-- `A000040(gcd(n, a(n-1))+n)+n+1` -/
def P13318110622838489005.Spec : Prop :=
  ∀ n, P13318110622838489005.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P13980111064793185468

`A000040(C(n-1, a(n-1))+n+1)+n+1` with `a(0)=1`
-/

namespace A176628.P13980111064793185468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)).toNat + (n + 1)) + (n + 1 : ℤ)

end

end A176628.P13980111064793185468

namespace A176628

/-- `A000040(C(n-1, a(n-1))+n+1)+n+1` -/
def P13980111064793185468.Spec : Prop :=
  ∀ n, P13980111064793185468.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P3838500889401515939

`A158388(n)+A095116(n+1)`
-/

namespace A176628.P3838500889401515939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A095116 (n + 1)

end

end A176628.P3838500889401515939

namespace A176628

/-- `A158388(n)+A095116(n+1)` -/
def P3838500889401515939.Spec : Prop :=
  ∀ n, P3838500889401515939.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P12597372750991266524

`A014688(n+1)-A000038(n)`
-/

namespace A176628.P12597372750991266524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A000038 n

end

end A176628.P12597372750991266524

namespace A176628

/-- `A014688(n+1)-A000038(n)` -/
def P12597372750991266524.Spec : Prop :=
  ∀ n, P12597372750991266524.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P692211577898042153

`and(A014688(n+1), A260196(n))`
-/

namespace A176628.P692211577898042153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014688 (n + 1)) (A260196 n)

end

end A176628.P692211577898042153

namespace A176628

/-- `and(A014688(n+1), A260196(n))` -/
def P692211577898042153.Spec : Prop :=
  ∀ n, P692211577898042153.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P7014408897905559554

`A087156(n+1)+A006005(n+1)`
-/

namespace A176628.P7014408897905559554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A006005 (n + 1)

end

end A176628.P7014408897905559554

namespace A176628

/-- `A087156(n+1)+A006005(n+1)` -/
def P7014408897905559554.Spec : Prop :=
  ∀ n, P7014408897905559554.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P9468949712899522897

`A114637(n+1)+A006093(n+1)`
-/

namespace A176628.P9468949712899522897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + A006093 (n + 1)

end

end A176628.P9468949712899522897

namespace A176628

/-- `A114637(n+1)+A006093(n+1)` -/
def P9468949712899522897.Spec : Prop :=
  ∀ n, P9468949712899522897.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P6832289405844864471

`A163300(n+1)+A014689(n+1)`
-/

namespace A176628.P6832289405844864471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + A014689 (n + 1)

end

end A176628.P6832289405844864471

namespace A176628

/-- `A163300(n+1)+A014689(n+1)` -/
def P6832289405844864471.Spec : Prop :=
  ∀ n, P6832289405844864471.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P7733186421752420393

`A171463(n+1)+A040976(n+1)`
-/

namespace A176628.P7733186421752420393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (n + 1) + A040976 (n + 1)

end

end A176628.P7733186421752420393

namespace A176628

/-- `A171463(n+1)+A040976(n+1)` -/
def P7733186421752420393.Spec : Prop :=
  ∀ n, P7733186421752420393.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P5191869403642906232

`and(A014688(n+1), A153881(n+1))`
-/

namespace A176628.P5191869403642906232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014688 (n + 1)) (A153881 (n + 1))

end

end A176628.P5191869403642906232

namespace A176628

/-- `and(A014688(n+1), A153881(n+1))` -/
def P5191869403642906232.Spec : Prop :=
  ∀ n, P5191869403642906232.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P12597401124973773546

`A000040(n+1)+A158388(n)+n`
-/

namespace A176628.P12597401124973773546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A158388 n + (n : ℤ))

end

end A176628.P12597401124973773546

namespace A176628

/-- `A000040(n+1)+A158388(n)+n` -/
def P12597401124973773546.Spec : Prop :=
  ∀ n, P12597401124973773546.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P5367015737913677050

`A000040(n+1)+A171463(n+1)-2`
-/

namespace A176628.P5367015737913677050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A171463 (n + 1) - 2)

end

end A176628.P5367015737913677050

namespace A176628

/-- `A000040(n+1)+A171463(n+1)-2` -/
def P5367015737913677050.Spec : Prop :=
  ∀ n, P5367015737913677050.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P15274706924961754325

`A000040(n+1)-C(2, A005117(2*n+1))+n+1`
-/

namespace A176628.P15274706924961754325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (Nat.choose 2 (A005117 (2 * n + 1)).toNat : ℤ) + (n + 1 : ℤ)

end

end A176628.P15274706924961754325

namespace A176628

/-- `A000040(n+1)-C(2, A005117(2*n+1))+n+1` -/
def P15274706924961754325.Spec : Prop :=
  ∀ n, P15274706924961754325.a n = A176628 (n + 1)

end A176628

/-! ## A176628.P2148693527749687076

`A000040(n+1)-C(2, A006530(2*n+1))+n+1`
-/

namespace A176628.P2148693527749687076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (Nat.choose 2 (A006530 (2 * n + 1)).toNat : ℤ) + (n + 1 : ℤ)

end

end A176628.P2148693527749687076

namespace A176628

/-- `A000040(n+1)-C(2, A006530(2*n+1))+n+1` -/
def P2148693527749687076.Spec : Prop :=
  ∀ n, P2148693527749687076.a n = A176628 (n + 1)

end A176628

/-!
# A176629: a(n) = n-th semiprime - (-1)^(n-th semiprime).

The programs for A176629, the canonical program `A176629.P7851448817385671820` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176629 has offset 1).

The definition of A176629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176629.P7851448817385671820

`A001358(n+1)-(-1)^A001358(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176629

/-- `A001358(n+1)-(-1)^A001358(n+1)` -/
def P7851448817385671820.Spec : Prop :=
  ∀ n, P7851448817385671820.a n = (A176629 (n + 1) : ℚ)

end A176629

/-! ## A176629.P3578695829797772307

`abs(xor(-2, A186621(n+1)))`
-/

namespace A176629.P3578695829797772307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A186621 (n + 1))|

end

end A176629.P3578695829797772307

namespace A176629

/-- `abs(xor(-2, A186621(n+1)))` -/
def P3578695829797772307.Spec : Prop :=
  ∀ n, P3578695829797772307.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P14036499139340576322

`xor(1, A088707(n+1))-1`
-/

namespace A176629.P14036499139340576322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A088707 (n + 1)) - 1

end

end A176629.P14036499139340576322

namespace A176629

/-- `xor(1, A088707(n+1))-1` -/
def P14036499139340576322.Spec : Prop :=
  ∀ n, P14036499139340576322.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P5131149958674612587

`abs(xor(1, -A001358(n+1)))`
-/

namespace A176629.P5131149958674612587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A001358 (n + 1))|

end

end A176629.P5131149958674612587

namespace A176629

/-- `abs(xor(1, -A001358(n+1)))` -/
def P5131149958674612587.Spec : Prop :=
  ∀ n, P5131149958674612587.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P4132292440819502516

`abs(xor(1, -sqrt(A074985(n+1))))`
-/

namespace A176629.P4132292440819502516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (SequenceMachineLib.roundAway (-Real.sqrt (A074985 (n + 1) : ℝ)))|

end

end A176629.P4132292440819502516

namespace A176629

/-- `abs(xor(1, -sqrt(A074985(n+1))))` -/
def P4132292440819502516.Spec : Prop :=
  ∀ n, P4132292440819502516.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P16070088363198701466

`abs(xor(eq[2, A001222(n+1)], -2))`
-/

namespace A176629.P16070088363198701466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (-2)|

end

end A176629.P16070088363198701466

namespace A176629

/-- `abs(xor(eq[2, A001222(n+1)], -2))` -/
def P16070088363198701466.Spec : Prop :=
  ∀ n, P16070088363198701466.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P17321126879396268982

`abs(xor(1, -lt[1, A105700(n)]))`
-/

namespace A176629.P17321126879396268982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ))|

end

end A176629.P17321126879396268982

namespace A176629

/-- `abs(xor(1, -lt[1, A105700(n)]))` -/
def P17321126879396268982.Spec : Prop :=
  ∀ n, P17321126879396268982.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P10394742900885064589

`A014681(A001358(n+1))`
-/

namespace A176629.P10394742900885064589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A001358 (n + 1)).toNat

end

end A176629.P10394742900885064589

namespace A176629

/-- `A014681(A001358(n+1))` -/
def P10394742900885064589.Spec : Prop :=
  ∀ n, P10394742900885064589.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P4968580941635937220

`A014681(A176540(n+2))`
-/

namespace A176629.P4968580941635937220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A176540 (n + 2)).toNat

end

end A176629.P4968580941635937220

namespace A176629

/-- `A014681(A176540(n+2))` -/
def P4968580941635937220.Spec : Prop :=
  ∀ n, P4968580941635937220.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P13152489945069514159

`A121496(A075818(n+1))`
-/

namespace A176629.P13152489945069514159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (A075818 (n + 1)).toNat

end

end A176629.P13152489945069514159

namespace A176629

/-- `A121496(A075818(n+1))` -/
def P13152489945069514159.Spec : Prop :=
  ∀ n, P13152489945069514159.a n = A176629 (n + 1)

end A176629

/-! ## A176629.P3956363863168905149

`A123246(A106349(n+1))`
-/

namespace A176629.P3956363863168905149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123246 (A106349 (n + 1)).toNat

end

end A176629.P3956363863168905149

namespace A176629

/-- `A123246(A106349(n+1))` -/
def P3956363863168905149.Spec : Prop :=
  ∀ n, P3956363863168905149.a n = A176629 (n + 1)

end A176629

/-!
# A176630: Nonpalindromic numbers whose binary representation when reversed is the same as binary representation of the number reversed in decimal.

The programs for A176630, there is no canonical definition to state claims against.
-/

/-! ## A176630.P6606966477467967205

`filter[A081434(n+1), A178226(#)]`
-/

namespace A176630.P6606966477467967205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A176630.P6606966477467967205

/-!
# A176631: Triangle T(n, k) = 22^(k*(n-k)), read by rows.

The programs for A176631, the canonical program `A176631.P214181763268040811` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176631 has offset 0).

The definition of A176631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176631.P8786135390971295637

`22^A004247(n)`
-/

namespace A176631.P8786135390971295637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A004247 n : ℤ)

end

end A176631.P8786135390971295637

namespace A176631

/-- `22^A004247(n)` -/
def P8786135390971295637.Spec : Prop :=
  ∀ n, P8786135390971295637.a n = (A176631 n : ℚ)

end A176631

/-! ## A176631.P15368870683440676267

`22^log2(A117401(n))`
-/

namespace A176631.P15368870683440676267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (22 : ℝ) ^ (Real.logb 2 (A117401 n : ℝ))

end

end A176631.P15368870683440676267

namespace A176631

/-- `22^log2(A117401(n))` -/
def P15368870683440676267.Spec : Prop :=
  ∀ n, P15368870683440676267.a n = (A176631 n : ℝ)

end A176631

/-! ## A176631.P214181763268040811

`A009966(A077028(n)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176631

/-- `A009966(A077028(n)-1)` -/
def P214181763268040811.Spec : Prop :=
  ∀ n, P214181763268040811.a n = A176631 n

theorem P214181763268040811.correct : P214181763268040811.Spec := by
  intro n
  simp only [A176631]

end A176631

/-! ## A176631.P6364180539991322436

`22^A002262(A285192(n))`
-/

namespace A176631.P6364180539991322436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A002262 (A285192 n).toNat : ℤ)

end

end A176631.P6364180539991322436

namespace A176631

/-- `22^A002262(A285192(n))` -/
def P6364180539991322436.Spec : Prop :=
  ∀ n, P6364180539991322436.a n = (A176631 n : ℚ)

end A176631

/-! ## A176631.P18430529840383523359

`22^A004526(A130154(n+1))`
-/

namespace A176631.P18430529840383523359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A004526 (A130154 (n + 1)).toNat : ℤ)

end

end A176631.P18430529840383523359

namespace A176631

/-- `22^A004526(A130154(n+1))` -/
def P18430529840383523359.Spec : Prop :=
  ∀ n, P18430529840383523359.a n = (A176631 n : ℚ)

end A176631

/-! ## A176631.P4544663121268150635

`22^(A002262(n)*A025581(n))`
-/

namespace A176631.P4544663121268150635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A002262 n * A025581 n : ℤ)

end

end A176631.P4544663121268150635

namespace A176631

/-- `22^(A002262(n)*A025581(n))` -/
def P4544663121268150635.Spec : Prop :=
  ∀ n, P4544663121268150635.a n = (A176631 n : ℚ)

end A176631

/-! ## A176631.P15985257178766921842

`22^(A087061(n)*A261684(n))`
-/

namespace A176631.P15985257178766921842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A087061 n * A261684 n : ℤ)

end

end A176631.P15985257178766921842

namespace A176631

/-- `22^(A087061(n)*A261684(n))` -/
def P15985257178766921842.Spec : Prop :=
  ∀ n, P15985257178766921842.a n = (A176631 n : ℚ)

end A176631

/-!
# A176632: a(n) = 6*a(n-1)-8*a(n-2)-9 for n > 2; a(0) = 77, a(1) = 897, a(2) = 3333.

The programs for A176632, there is no canonical definition to state claims against.
-/

/-! ## A176632.P9173312261860584057

`A075253(4*n)`
-/

namespace A176632.P9173312261860584057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075253 (4 * n)

end

end A176632.P9173312261860584057

/-! ## A176632.P14499263270369936718

`record[gcd(A075253(n), A208457(n))]`
-/

namespace A176632.P14499263270369936718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075253 n) (A208457 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176632.P14499263270369936718

/-! ## A176632.P10447255693089051301

`record[A075253(A005843(A014681(n)))]`
-/

namespace A176632.P10447255693089051301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075253 (A005843 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176632.P10447255693089051301

/-! ## A176632.P2415980457035951888

`record[A075253(A230865(A005843(n)))]`
-/

namespace A176632.P2415980457035951888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075253 (A230865 (A005843 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176632.P2415980457035951888

/-! ## A176632.P10458044078025647371

`A075253(A008586(n))+A000007(n+1)`
-/

namespace A176632.P10458044078025647371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075253 (A008586 n).toNat + A000007 (n + 1)

end

end A176632.P10458044078025647371

/-!
# A176633: a(n) = 6*a(n-1)-8*a(n-2) for n > 2; a(0) = 83, a(1) = 708, a(2) = 2952.

The programs for A176633, there is no canonical definition to state claims against.
-/

/-! ## A176633.P12034132346185143526

`A075253(4*n+1)/2`
-/

namespace A176633.P12034132346185143526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075253 (4 * n + 1) : ℚ) / 2

end

end A176633.P12034132346185143526

/-! ## A176633.P2843538726854317807

`floor(A075253(A016813(n))/2)`
-/

namespace A176633.P2843538726854317807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075253 (A016813 n).toNat : ℚ) / 2⌋

end

end A176633.P2843538726854317807

/-! ## A176633.P8020576544649682718

`A000007(n+1)+A075253(A016813(n))/2`
-/

namespace A176633.P8020576544649682718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A075253 (A016813 n).toNat : ℚ) / 2

end

end A176633.P8020576544649682718

/-! ## A176633.P17091606556520544451

`C(A000122(n), 4)/5+A075253(A016813(n))/2`
-/

namespace A176633.P17091606556520544451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000122 n).toNat 4 : ℚ) / 5 + (A075253 (A016813 n).toNat : ℚ) / 2

end

end A176633.P17091606556520544451

/-! ## A176633.P14559728230051632

`(A075253(A016813(n))/2)^val(A133537(n+4), 2)`
-/

namespace A176633.P14559728230051632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075253 (A016813 n).toNat : ℚ) / 2) ^ SequenceMachineLib.valuation (A133537 (n + 4)).toNat 2

end

end A176633.P14559728230051632

/-!
# A176634: a(n) = 6*a(n-1)-8*a(n-2)-3 for n > 2; a(0) = 89, a(1) = 519, a(2) = 2063.

The programs for A176634, there is no canonical definition to state claims against.
-/

/-! ## A176634.P16404142576307160309

`A075253(4*n+2)/3`
-/

namespace A176634.P16404142576307160309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075253 (4 * n + 2) : ℚ) / 3

end

end A176634.P16404142576307160309

/-! ## A176634.P15677946532278242242

`ceil(A075253(A005843(Δ[n²]))/3)`
-/

namespace A176634.P15677946532278242242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075253 (A005843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 3⌉

end

end A176634.P15677946532278242242

/-! ## A176634.P32875691389159841

`record[gcd(A075253(n+2), A208457(n))/3]`
-/

namespace A176634.P32875691389159841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A075253 (n + 2)) (A208457 n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176634.P32875691389159841

/-! ## A176634.P721746437135094159

`(A075253(A005843(Δ[n²]))/3)%A122232(n+4)`
-/

namespace A176634.P721746437135094159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A075253 (A005843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 3)) (A122232 (n + 4))

end

end A176634.P721746437135094159

/-!
# A176635: a(n) = 6*a(n-1)-8*a(n-2) for n > 1; a(0) = 57, a(1) = 242.

The programs for A176635, the canonical program `A176635.P8287125551383822188` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176635 has offset 0).

The definition of A176635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A176635.P8287125551383822188`, by `A176635.P8287125551383822188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176635.P318458452808549839

`64*4^n-7*2^n`
-/

namespace A176635.P318458452808549839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * 4 ^ n : ℤ) - (7 * 2 ^ n : ℤ)

end

end A176635.P318458452808549839

namespace A176635

/-- `64*4^n-7*2^n` -/
def P318458452808549839.Spec : Prop :=
  ∀ n, P318458452808549839.a n = A176635 n

theorem P318458452808549839.correct : P318458452808549839.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A176635, Nat.add_sub_cancel, A176635.P318458452808549839.a, A176635.P8287125551383822188.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A176635, Nat.add_sub_cancel, A176635.P318458452808549839.a, A176635.P8287125551383822188.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176635

/-! ## A176635.P8287125551383822188

`6*a(n-1)-8*a(n-2)` with `a(0)=57, a(1)=242`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176635

/-- `6*a(n-1)-8*a(n-2)` -/
def P8287125551383822188.Spec : Prop :=
  ∀ n, P8287125551383822188.a n = A176635 n

theorem P8287125551383822188.correct : P8287125551383822188.Spec := by
  intro n
  simp only [A176635]

end A176635

/-! ## A176635.P14787809048112161338

`2^n*A048490(n+3)`
-/

namespace A176635.P14787809048112161338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048490 (n + 3)

end

end A176635.P14787809048112161338

namespace A176635

/-- `2^n*A048490(n+3)` -/
def P14787809048112161338.Spec : Prop :=
  ∀ n, P14787809048112161338.a n = A176635 n

end A176635

/-! ## A176635.P12768913742449433346

`xor(A000079(n), A020522(n+3))`
-/

namespace A176635.P12768913742449433346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A020522 (n + 3))

end

end A176635.P12768913742449433346

namespace A176635

/-- `xor(A000079(n), A020522(n+3))` -/
def P12768913742449433346.Spec : Prop :=
  ∀ n, P12768913742449433346.a n = A176635 n

end A176635

/-! ## A176635.P696490266239422545

`and(-A007283(n), A187560(n+2))`
-/

namespace A176635.P696490266239422545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007283 n) (A187560 (n + 2))

end

end A176635.P696490266239422545

namespace A176635

/-- `and(-A007283(n), A187560(n+2))` -/
def P696490266239422545.Spec : Prop :=
  ∀ n, P696490266239422545.a n = A176635 n

end A176635

/-! ## A176635.P14601876899965756904

`abs(xor(A140683(n), A187560(n+2)))`
-/

namespace A176635.P14601876899965756904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A140683 n) (A187560 (n + 2))|

end

end A176635.P14601876899965756904

namespace A176635

/-- `abs(xor(A140683(n), A187560(n+2)))` -/
def P14601876899965756904.Spec : Prop :=
  ∀ n, P14601876899965756904.a n = A176635 n

end A176635

/-! ## A176635.P10278706662912926684

`xor(A011782(n+1), A020522(n+3))`
-/

namespace A176635.P10278706662912926684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 (n + 1)) (A020522 (n + 3))

end

end A176635.P10278706662912926684

namespace A176635

/-- `xor(A011782(n+1), A020522(n+3))` -/
def P10278706662912926684.Spec : Prop :=
  ∀ n, P10278706662912926684.a n = A176635 n

end A176635

/-!
# A176636: Periodic sequence: Repeat [57, 71].

The programs for A176636, the canonical program `A176636.P14854651960864156009` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176636 has offset 0).

The definition of A176636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176636.P14854651960864156009

`a(n-2)` with `a(0)=57, a(1)=71`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176636

/-- `a(n-2)` -/
def P14854651960864156009.Spec : Prop :=
  ∀ n, (P14854651960864156009.a n : ℤ) = A176636 n

theorem P14854651960864156009.correct : P14854651960864156009.Spec := by
  intro n
  simp only [A176636]

end A176636

/-!
# A176637: Partial sums of A000614.

The programs for A176637, there is no canonical definition to state claims against.
-/

/-! ## A176637.P15273040071881750067

`∑[A000614(n+1)]`
-/

namespace A176637.P15273040071881750067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176637.P15273040071881750067

/-!
# A176638: Partial sums of A018190.

The programs for A176638, there is no canonical definition to state claims against.
-/

/-! ## A176638.P1287044758115030147

`∑[A018190(n+1)]`
-/

namespace A176638.P1287044758115030147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176638.P1287044758115030147

/-! ## A176638.P15633601772698926674

`A018190(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A176638.P15633601772698926674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018190 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A176638.P15633601772698926674

/-! ## A176638.P16754298117136058237

`A018190(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A176638.P16754298117136058237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018190 (n + 1) + a (A023443 n).toNat

end

end A176638.P16754298117136058237

/-! ## A176638.P13701705337996559499

`∑[A000228(n+1)-A038144(n+1)]`
-/

namespace A176638.P13701705337996559499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A038144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176638.P13701705337996559499

/-! ## A176638.P6559340454690565500

`∑[A018190(-xor(n, -1))^A178334(n)]`
-/

namespace A176638.P6559340454690565500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018190 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176638.P6559340454690565500

/-!
# A176639: Triangle T(n, k) = 15^(k*(n-k)), read by rows.

The programs for A176639, the canonical program `A176639.P9327034718319805899` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176639 has offset 0).

The definition of A176639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176639.P13157814619312661948

`15^A004247(n)`
-/

namespace A176639.P13157814619312661948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A004247 n : ℤ)

end

end A176639.P13157814619312661948

namespace A176639

/-- `15^A004247(n)` -/
def P13157814619312661948.Spec : Prop :=
  ∀ n, P13157814619312661948.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P5573763496993281624

`15^log2(A117401(n))`
-/

namespace A176639.P5573763496993281624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (15 : ℝ) ^ (Real.logb 2 (A117401 n : ℝ))

end

end A176639.P5573763496993281624

namespace A176639

/-- `15^log2(A117401(n))` -/
def P5573763496993281624.Spec : Prop :=
  ∀ n, P5573763496993281624.a n = (A176639 n : ℝ)

end A176639

/-! ## A176639.P14701162602675830107

`15^(1-A176270(n))`
-/

namespace A176639.P14701162602675830107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (1 - A176270 n : ℤ)

end

end A176639.P14701162602675830107

namespace A176639

/-- `15^(1-A176270(n))` -/
def P14701162602675830107.Spec : Prop :=
  ∀ n, P14701162602675830107.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P15900424963235681519

`A067420(A077028(n))/7`
-/

namespace A176639.P15900424963235681519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067420 (A077028 n).toNat : ℚ) / 7

end

end A176639.P15900424963235681519

namespace A176639

/-- `A067420(A077028(n))/7` -/
def P15900424963235681519.Spec : Prop :=
  ∀ n, P15900424963235681519.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P1705687835951816945

`15^A002262(A285192(n))`
-/

namespace A176639.P1705687835951816945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A002262 (A285192 n).toNat : ℤ)

end

end A176639.P1705687835951816945

namespace A176639

/-- `15^A002262(A285192(n))` -/
def P1705687835951816945.Spec : Prop :=
  ∀ n, P1705687835951816945.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P10703689266034182900

`15^A008612(A287326(n))`
-/

namespace A176639.P10703689266034182900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A008612 (A287326 n).toNat : ℤ)

end

end A176639.P10703689266034182900

namespace A176639

/-- `15^A008612(A287326(n))` -/
def P10703689266034182900.Spec : Prop :=
  ∀ n, P10703689266034182900.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P9327034718319805899

`A118180(n)*A118190(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176639

/-- `A118180(n)*A118190(n)` -/
def P9327034718319805899.Spec : Prop :=
  ∀ n, P9327034718319805899.a n = A176639 n

theorem P9327034718319805899.correct : P9327034718319805899.Spec := by
  intro n
  simp only [A176639]

end A176639

/-! ## A176639.P4452433868217203394

`15^A028242(A130154(n+1))`
-/

namespace A176639.P4452433868217203394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A028242 (A130154 (n + 1)).toNat : ℤ)

end

end A176639.P4452433868217203394

namespace A176639

/-- `15^A028242(A130154(n+1))` -/
def P4452433868217203394.Spec : Prop :=
  ∀ n, P4452433868217203394.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P3915083392094989324

`A118180(n)/A117401(n)*A158117(n)`
-/

namespace A176639.P3915083392094989324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118180 n : ℚ) / (A117401 n : ℚ) * (A158117 n : ℚ)

end

end A176639.P3915083392094989324

namespace A176639

/-- `A118180(n)/A117401(n)*A158117(n)` -/
def P3915083392094989324.Spec : Prop :=
  ∀ n, P3915083392094989324.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P11918177076909418243

`A118190(n)/A117401(n)*A158116(n)`
-/

namespace A176639.P11918177076909418243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118190 n : ℚ) / (A117401 n : ℚ) * (A158116 n : ℚ)

end

end A176639.P11918177076909418243

namespace A176639

/-- `A118190(n)/A117401(n)*A158116(n)` -/
def P11918177076909418243.Spec : Prop :=
  ∀ n, P11918177076909418243.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P13488694888660064954

`A118190(n)/A118185(n)*A176627(n)`
-/

namespace A176639.P13488694888660064954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118190 n : ℚ) / (A118185 n : ℚ) * (A176627 n : ℚ)

end

end A176639.P13488694888660064954

namespace A176639

/-- `A118190(n)/A118185(n)*A176627(n)` -/
def P13488694888660064954.Spec : Prop :=
  ∀ n, P13488694888660064954.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P14163971798755585810

`A158116(n)/A118185(n)*A158117(n)`
-/

namespace A176639.P14163971798755585810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158116 n : ℚ) / (A118185 n : ℚ) * (A158117 n : ℚ)

end

end A176639.P14163971798755585810

namespace A176639

/-- `A158116(n)/A118185(n)*A158117(n)` -/
def P14163971798755585810.Spec : Prop :=
  ∀ n, P14163971798755585810.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P10961261873548786909

`A118180(n)²/A158116(n)*A158117(n)`
-/

namespace A176639.P10961261873548786909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118180 n ^ 2 : ℚ) / (A158116 n : ℚ) * (A158117 n : ℚ)

end

end A176639.P10961261873548786909

namespace A176639

/-- `A118180(n)²/A158116(n)*A158117(n)` -/
def P10961261873548786909.Spec : Prop :=
  ∀ n, P10961261873548786909.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P4858737581135554663

`A118190(n)²/A158117(n)*A158116(n)`
-/

namespace A176639.P4858737581135554663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118190 n ^ 2 : ℚ) / (A158117 n : ℚ) * (A158116 n : ℚ)

end

end A176639.P4858737581135554663

namespace A176639

/-- `A118190(n)²/A158117(n)*A158116(n)` -/
def P4858737581135554663.Spec : Prop :=
  ∀ n, P4858737581135554663.a n = (A176639 n : ℚ)

end A176639

/-! ## A176639.P3988298380250578631

`A118180(n)/A176642(n)*A176644(n)`
-/

namespace A176639.P3988298380250578631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118180 n : ℚ) / (A176642 n : ℚ) * (A176644 n : ℚ)

end

end A176639.P3988298380250578631

namespace A176639

/-- `A118180(n)/A176642(n)*A176644(n)` -/
def P3988298380250578631.Spec : Prop :=
  ∀ n, P3988298380250578631.a n = (A176639 n : ℚ)

end A176639

/-!
# A176640: Partial sums of A005985.

The programs for A176640, the canonical program `A176640.P14622370455490958492` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176640 has offset 0).

The definition of A176640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176640.P14622370455490958492

`∑[A005985(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176640

/-- `∑[A005985(n)]` -/
def P14622370455490958492.Spec : Prop :=
  ∀ n, P14622370455490958492.a n = A176640 n

theorem P14622370455490958492.correct : P14622370455490958492.Spec := by
  intro n
  simp only [A176640]

end A176640

/-! ## A176640.P18233635455275407701

`∑[A134353(n)-A051049(n)]`
-/

namespace A176640.P18233635455275407701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134353 n - A051049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176640.P18233635455275407701

namespace A176640

/-- `∑[A134353(n)-A051049(n)]` -/
def P18233635455275407701.Spec : Prop :=
  ∀ n, P18233635455275407701.a n = A176640 n

end A176640

/-! ## A176640.P16570468829595904066

`∑[∑[A045623(n)]-A277867(n)]`
-/

namespace A176640.P16570468829595904066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A277867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176640.P16570468829595904066

namespace A176640

/-- `∑[∑[A045623(n)]-A277867(n)]` -/
def P16570468829595904066.Spec : Prop :=
  ∀ n, P16570468829595904066.a n = A176640 n

end A176640

/-! ## A176640.P4697769053148426531

`∑[A000918(n)*A004526(n)+n]`
-/

namespace A176640.P4697769053148426531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n * A004526 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176640.P4697769053148426531

namespace A176640

/-- `∑[A000918(n)*A004526(n)+n]` -/
def P4697769053148426531.Spec : Prop :=
  ∀ n, P4697769053148426531.a n = A176640 n

end A176640

/-! ## A176640.P10619543599137086488

`∑[(n*2^(n+1)-(1-(-1)^n)*(2^n-2))/4]`
-/

namespace A176640.P10619543599137086488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * 2 ^ (n + 1) : ℤ) - (1 - (-1) ^ n) * ((2 ^ n : ℤ) - 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176640.P10619543599137086488

namespace A176640

/-- `∑[(n*2^(n+1)-(1-(-1)^n)*(2^n-2))/4]` -/
def P10619543599137086488.Spec : Prop :=
  ∀ n, P10619543599137086488.a n = (A176640 n : ℚ)

end A176640

/-! ## A176640.P490261076443833306

`a(n-1)+(n*2^(n+1)-(1-(-1)^n)*(2^n-2))/4` with `a(0)=0`
-/

namespace A176640.P490261076443833306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n * 2 ^ (n + 1) : ℤ) - (1 - (-1) ^ n) * ((2 ^ n : ℤ) - 2) : ℚ) / 4

end

end A176640.P490261076443833306

namespace A176640

/-- `a(n-1)+(n*2^(n+1)-(1-(-1)^n)*(2^n-2))/4` -/
def P490261076443833306.Spec : Prop :=
  ∀ n, P490261076443833306.a n = (A176640 n : ℚ)

end A176640

/-!
# A176641: Triangle T(n, k) = 28^(k*(n-k)), read by rows.

The programs for A176641, the canonical program `A176641.P3132728290557681569` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176641 has offset 0).

The definition of A176641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176641.P3132728290557681569

`28^A004247(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176641

/-- `28^A004247(n)` -/
def P3132728290557681569.Spec : Prop :=
  ∀ n, P3132728290557681569.a n = (A176641 n : ℚ)

end A176641

/-! ## A176641.P3613150087416858244

`28^(A077028(n)-1)`
-/

namespace A176641.P3613150087416858244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 : ℚ) ^ (A077028 n - 1 : ℤ)

end

end A176641.P3613150087416858244

namespace A176641

/-- `28^(A077028(n)-1)` -/
def P3613150087416858244.Spec : Prop :=
  ∀ n, P3613150087416858244.a n = (A176641 n : ℚ)

end A176641

/-! ## A176641.P5556315184790677236

`28^A002262(A285192(n))`
-/

namespace A176641.P5556315184790677236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 : ℚ) ^ (A002262 (A285192 n).toNat : ℤ)

end

end A176641.P5556315184790677236

namespace A176641

/-- `28^A002262(A285192(n))` -/
def P5556315184790677236.Spec : Prop :=
  ∀ n, P5556315184790677236.a n = (A176641 n : ℚ)

end A176641

/-! ## A176641.P16721153289707809966

`28^(A002262(n)*A025581(n))`
-/

namespace A176641.P16721153289707809966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 : ℚ) ^ (A002262 n * A025581 n : ℤ)

end

end A176641.P16721153289707809966

namespace A176641

/-- `28^(A002262(n)*A025581(n))` -/
def P16721153289707809966.Spec : Prop :=
  ∀ n, P16721153289707809966.a n = (A176641 n : ℚ)

end A176641

/-! ## A176641.P17866148827792539966

`A118185(n)/A118180(n)*A176643(n)`
-/

namespace A176641.P17866148827792539966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118185 n : ℚ) / (A118180 n : ℚ) * (A176643 n : ℚ)

end

end A176641.P17866148827792539966

namespace A176641

/-- `A118185(n)/A118180(n)*A176643(n)` -/
def P17866148827792539966.Spec : Prop :=
  ∀ n, P17866148827792539966.a n = (A176641 n : ℚ)

end A176641

/-! ## A176641.P5749699252721980972

`A176642(n)/A158116(n)*A176643(n)`
-/

namespace A176641.P5749699252721980972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176642 n : ℚ) / (A158116 n : ℚ) * (A176643 n : ℚ)

end

end A176641.P5749699252721980972

namespace A176641

/-- `A176642(n)/A158116(n)*A176643(n)` -/
def P5749699252721980972.Spec : Prop :=
  ∀ n, P5749699252721980972.a n = (A176641 n : ℚ)

end A176641

/-!
# A176642: Triangle T(n, k) = 8^(k*(n-k)), read by rows.

The programs for A176642, the canonical program `A176642.P6068530808872968804` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176642 has offset 0).

The definition of A176642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176642.P6068530808872968804

`8^A004247(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176642

/-- `8^A004247(n)` -/
def P6068530808872968804.Spec : Prop :=
  ∀ n, P6068530808872968804.a n = (A176642 n : ℚ)

end A176642

/-! ## A176642.P8513872216555880262

`A117401(n)^3`
-/

namespace A176642.P8513872216555880262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n ^ 3

end

end A176642.P8513872216555880262

namespace A176642

/-- `A117401(n)^3` -/
def P8513872216555880262.Spec : Prop :=
  ∀ n, P8513872216555880262.a n = A176642 n

end A176642

/-! ## A176642.P9311828844823702327

`sqrt(A118185(n))^3`
-/

namespace A176642.P9311828844823702327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) ^ 3

end

end A176642.P9311828844823702327

namespace A176642

/-- `sqrt(A118185(n))^3` -/
def P9311828844823702327.Spec : Prop :=
  ∀ n, P9311828844823702327.a n = (A176642 n : ℝ)

end A176642

/-! ## A176642.P13647831041369646383

`2^(1-A176625(n))`
-/

namespace A176642.P13647831041369646383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 - A176625 n : ℤ)

end

end A176642.P13647831041369646383

namespace A176642

/-- `2^(1-A176625(n))` -/
def P13647831041369646383.Spec : Prop :=
  ∀ n, P13647831041369646383.a n = (A176642 n : ℚ)

end A176642

/-! ## A176642.P12474339446681168668

`2^(A296180(n)-1)`
-/

namespace A176642.P12474339446681168668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A296180 n - 1 : ℤ)

end

end A176642.P12474339446681168668

namespace A176642

/-- `2^(A296180(n)-1)` -/
def P12474339446681168668.Spec : Prop :=
  ∀ n, P12474339446681168668.a n = (A176642 n : ℚ)

end A176642

/-! ## A176642.P17138764553010684343

`8^(A077028(n)-1)`
-/

namespace A176642.P17138764553010684343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A077028 n - 1 : ℤ)

end

end A176642.P17138764553010684343

namespace A176642

/-- `8^(A077028(n)-1)` -/
def P17138764553010684343.Spec : Prop :=
  ∀ n, P17138764553010684343.a n = (A176642 n : ℚ)

end A176642

/-! ## A176642.P4465601810030475093

`A016116(A287326(n))`
-/

namespace A176642.P4465601810030475093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A287326 n).toNat

end

end A176642.P4465601810030475093

namespace A176642

/-- `A016116(A287326(n))` -/
def P4465601810030475093.Spec : Prop :=
  ∀ n, P4465601810030475093.a n = A176642 n

end A176642

/-! ## A176642.P10145218002766401589

`A011782(A296180(n))`
-/

namespace A176642.P10145218002766401589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A296180 n).toNat

end

end A176642.P10145218002766401589

namespace A176642

/-- `A011782(A296180(n))` -/
def P10145218002766401589.Spec : Prop :=
  ∀ n, P10145218002766401589.a n = A176642 n

end A176642

/-! ## A176642.P17119253264672796608

`A164683(A157528(n))`
-/

namespace A176642.P17119253264672796608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164683 (A157528 n).toNat

end

end A176642.P17119253264672796608

namespace A176642

/-- `A164683(A157528(n))` -/
def P17119253264672796608.Spec : Prop :=
  ∀ n, P17119253264672796608.a n = A176642 n

end A176642

/-! ## A176642.P9869296190840394305

`A100097(A130154(n+1))`
-/

namespace A176642.P9869296190840394305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100097 (A130154 (n + 1)).toNat

end

end A176642.P9869296190840394305

namespace A176642

/-- `A100097(A130154(n+1))` -/
def P9869296190840394305.Spec : Prop :=
  ∀ n, P9869296190840394305.a n = A176642 n

end A176642

/-! ## A176642.P13729697266148702933

`A001018(1-A176270(n))`
-/

namespace A176642.P13729697266148702933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (1 - A176270 n).toNat

end

end A176642.P13729697266148702933

namespace A176642

/-- `A001018(1-A176270(n))` -/
def P13729697266148702933.Spec : Prop :=
  ∀ n, P13729697266148702933.a n = A176642 n

end A176642

/-! ## A176642.P4280552184670612726

`A000079(A296180(n)-1)`
-/

namespace A176642.P4280552184670612726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A296180 n - 1).toNat

end

end A176642.P4280552184670612726

namespace A176642

/-- `A000079(A296180(n)-1)` -/
def P4280552184670612726.Spec : Prop :=
  ∀ n, P4280552184670612726.a n = A176642 n

end A176642

/-! ## A176642.P9027332375649613241

`A157176(A287326(n)-1)`
-/

namespace A176642.P9027332375649613241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157176 (A287326 n - 1).toNat

end

end A176642.P9027332375649613241

namespace A176642

/-- `A157176(A287326(n)-1)` -/
def P9027332375649613241.Spec : Prop :=
  ∀ n, P9027332375649613241.a n = A176642 n

end A176642

/-! ## A176642.P12227250191608028941

`A117401(n)*A118185(n)`
-/

namespace A176642.P12227250191608028941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A118185 n

end

end A176642.P12227250191608028941

namespace A176642

/-- `A117401(n)*A118185(n)` -/
def P12227250191608028941.Spec : Prop :=
  ∀ n, P12227250191608028941.a n = A176642 n

end A176642

/-! ## A176642.P8643155760068108526

`A011782((A287326(n)+1)/2)`
-/

namespace A176642.P8643155760068108526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.roundAway ((A287326 n + 1 : ℚ) / 2)).toNat

end

end A176642.P8643155760068108526

namespace A176642

/-- `A011782((A287326(n)+1)/2)` -/
def P8643155760068108526.Spec : Prop :=
  ∀ n, P8643155760068108526.a n = A176642 n

end A176642

/-! ## A176642.P7531216321802578504

`A000079((A287326(n)-1)/2)`
-/

namespace A176642.P7531216321802578504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A287326 n - 1 : ℚ) / 2)).toNat

end

end A176642.P7531216321802578504

namespace A176642

/-- `A000079((A287326(n)-1)/2)` -/
def P7531216321802578504.Spec : Prop :=
  ∀ n, P7531216321802578504.a n = A176642 n

end A176642

/-! ## A176642.P13429217005247645516

`A000079(A004247(n)+2*A004247(n))`
-/

namespace A176642.P13429217005247645516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004247 n + 2 * A004247 n).toNat

end

end A176642.P13429217005247645516

namespace A176642

/-- `A000079(A004247(n)+2*A004247(n))` -/
def P13429217005247645516.Spec : Prop :=
  ∀ n, P13429217005247645516.a n = A176642 n

end A176642

/-! ## A176642.P3122449825299505275

`A140426(A287326(n)+2*A287326(n))`
-/

namespace A176642.P3122449825299505275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140426 (A287326 n + 2 * A287326 n).toNat

end

end A176642.P3122449825299505275

namespace A176642

/-- `A140426(A287326(n)+2*A287326(n))` -/
def P3122449825299505275.Spec : Prop :=
  ∀ n, P3122449825299505275.a n = A176642 n

end A176642

/-! ## A176642.P17197223092420113257

`A173862(A296180(n)+2*A296180(n))`
-/

namespace A176642.P17197223092420113257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A296180 n + 2 * A296180 n).toNat

end

end A176642.P17197223092420113257

namespace A176642

/-- `A173862(A296180(n)+2*A296180(n))` -/
def P17197223092420113257.Spec : Prop :=
  ∀ n, P17197223092420113257.a n = A176642 n

end A176642

/-! ## A176642.P9768998168059257838

`A118185(n)/A118180(n)*A158116(n)`
-/

namespace A176642.P9768998168059257838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118185 n : ℚ) / (A118180 n : ℚ) * (A158116 n : ℚ)

end

end A176642.P9768998168059257838

namespace A176642

/-- `A118185(n)/A118180(n)*A158116(n)` -/
def P9768998168059257838.Spec : Prop :=
  ∀ n, P9768998168059257838.a n = (A176642 n : ℚ)

end A176642

/-!
# A176643: Triangle T(n, k) = 21^(k*(n-k)), read by rows.

The programs for A176643, the canonical program `A176643.P4462491862002902358` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176643 has offset 0).

The definition of A176643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176643.P5456517458244960666

`21^A004247(n)`
-/

namespace A176643.P5456517458244960666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A004247 n : ℤ)

end

end A176643.P5456517458244960666

namespace A176643

/-- `21^A004247(n)` -/
def P5456517458244960666.Spec : Prop :=
  ∀ n, P5456517458244960666.a n = (A176643 n : ℚ)

end A176643

/-! ## A176643.P10258216284696421673

`21^log2(A117401(n))`
-/

namespace A176643.P10258216284696421673
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (21 : ℝ) ^ (Real.logb 2 (A117401 n : ℝ))

end

end A176643.P10258216284696421673

namespace A176643

/-- `21^log2(A117401(n))` -/
def P10258216284696421673.Spec : Prop :=
  ∀ n, P10258216284696421673.a n = (A176643 n : ℝ)

end A176643

/-! ## A176643.P122730251437556319

`21^(A077028(n)-1)`
-/

namespace A176643.P122730251437556319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A077028 n - 1 : ℤ)

end

end A176643.P122730251437556319

namespace A176643

/-- `21^(A077028(n)-1)` -/
def P122730251437556319.Spec : Prop :=
  ∀ n, P122730251437556319.a n = (A176643 n : ℚ)

end A176643

/-! ## A176643.P4462491862002902358

`A018105(4*A004247(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176643

/-- `A018105(4*A004247(n))` -/
def P4462491862002902358.Spec : Prop :=
  ∀ n, P4462491862002902358.a n = A176643 n

theorem P4462491862002902358.correct : P4462491862002902358.Spec := by
  intro n
  simp only [A176643]

end A176643

/-! ## A176643.P511928304060846658

`A067422(A077028(n))/9`
-/

namespace A176643.P511928304060846658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067422 (A077028 n).toNat : ℚ) / 9

end

end A176643.P511928304060846658

namespace A176643

/-- `A067422(A077028(n))/9` -/
def P511928304060846658.Spec : Prop :=
  ∀ n, P511928304060846658.a n = (A176643 n : ℚ)

end A176643

/-! ## A176643.P8840588363368581269

`21^A002262(A285192(n))`
-/

namespace A176643.P8840588363368581269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A002262 (A285192 n).toNat : ℤ)

end

end A176643.P8840588363368581269

namespace A176643

/-- `21^A002262(A285192(n))` -/
def P8840588363368581269.Spec : Prop :=
  ∀ n, P8840588363368581269.a n = (A176643 n : ℚ)

end A176643

/-! ## A176643.P14647655644393373019

`21^A008612(A287326(n))`
-/

namespace A176643.P14647655644393373019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A008612 (A287326 n).toNat : ℤ)

end

end A176643.P14647655644393373019

namespace A176643

/-- `21^A008612(A287326(n))` -/
def P14647655644393373019.Spec : Prop :=
  ∀ n, P14647655644393373019.a n = (A176643 n : ℚ)

end A176643

/-! ## A176643.P6959162083314570347

`21^A028242(A130154(n+1))`
-/

namespace A176643.P6959162083314570347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A028242 (A130154 (n + 1)).toNat : ℤ)

end

end A176643.P6959162083314570347

namespace A176643

/-- `21^A028242(A130154(n+1))` -/
def P6959162083314570347.Spec : Prop :=
  ∀ n, P6959162083314570347.a n = (A176643 n : ℚ)

end A176643

/-! ## A176643.P12789732537219447134

`A017969(2*(A004736(n+1)-1)*A002262(n))`
-/

namespace A176643.P12789732537219447134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017969 (2 * ((A004736 (n + 1) - 1) * A002262 n)).toNat

end

end A176643.P12789732537219447134

namespace A176643

/-- `A017969(2*(A004736(n+1)-1)*A002262(n))` -/
def P12789732537219447134.Spec : Prop :=
  ∀ n, P12789732537219447134.a n = A176643 n

end A176643

/-! ## A176643.P1552037397365607450

`A118180(n)/A118185(n)*A176641(n)`
-/

namespace A176643.P1552037397365607450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118180 n : ℚ) / (A118185 n : ℚ) * (A176641 n : ℚ)

end

end A176643.P1552037397365607450

namespace A176643

/-- `A118180(n)/A118185(n)*A176641(n)` -/
def P1552037397365607450.Spec : Prop :=
  ∀ n, P1552037397365607450.a n = (A176643 n : ℚ)

end A176643

/-! ## A176643.P16718686326050629398

`A158116(n)/A176642(n)*A176641(n)`
-/

namespace A176643.P16718686326050629398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158116 n : ℚ) / (A176642 n : ℚ) * (A176641 n : ℚ)

end

end A176643.P16718686326050629398

namespace A176643

/-- `A158116(n)/A176642(n)*A176641(n)` -/
def P16718686326050629398.Spec : Prop :=
  ∀ n, P16718686326050629398.a n = (A176643 n : ℚ)

end A176643

/-!
# A176644: Triangle T(n, k) = 40^(k*(n-k)), read by rows.

The programs for A176644, the canonical program `A176644.P3173982943581009546` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176644 has offset 0).

The definition of A176644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176644.P7247582456834457606

`40^A004247(n)`
-/

namespace A176644.P7247582456834457606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (40 : ℚ) ^ (A004247 n : ℤ)

end

end A176644.P7247582456834457606

namespace A176644

/-- `40^A004247(n)` -/
def P7247582456834457606.Spec : Prop :=
  ∀ n, P7247582456834457606.a n = (A176644 n : ℚ)

end A176644

/-! ## A176644.P17380235866997939422

`40^A002262(A285192(n))`
-/

namespace A176644.P17380235866997939422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (40 : ℚ) ^ (A002262 (A285192 n).toNat : ℤ)

end

end A176644.P17380235866997939422

namespace A176644

/-- `40^A002262(A285192(n))` -/
def P17380235866997939422.Spec : Prop :=
  ∀ n, P17380235866997939422.a n = (A176644 n : ℚ)

end A176644

/-! ## A176644.P3173982943581009546

`A118185(n)*A158117(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A176644

/-- `A118185(n)*A158117(n)` -/
def P3173982943581009546.Spec : Prop :=
  ∀ n, P3173982943581009546.a n = A176644 n

theorem P3173982943581009546.correct : P3173982943581009546.Spec := by
  intro n
  simp only [A176644]

end A176644

/-! ## A176644.P2519214676891022604

`A118190(n)*A176642(n)`
-/

namespace A176644.P2519214676891022604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118190 n * A176642 n

end

end A176644.P2519214676891022604

namespace A176644

/-- `A118190(n)*A176642(n)` -/
def P2519214676891022604.Spec : Prop :=
  ∀ n, P2519214676891022604.a n = A176644 n

end A176644

/-! ## A176644.P13256735282611971286

`A117401(n)²*A158117(n)`
-/

namespace A176644.P13256735282611971286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n ^ 2 * A158117 n

end

end A176644.P13256735282611971286

namespace A176644

/-- `A117401(n)²*A158117(n)` -/
def P13256735282611971286.Spec : Prop :=
  ∀ n, P13256735282611971286.a n = A176644 n

end A176644

/-! ## A176644.P18169041330531009406

`40^(A002262(n)*A025581(n))`
-/

namespace A176644.P18169041330531009406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (40 : ℚ) ^ (A002262 n * A025581 n : ℤ)

end

end A176644.P18169041330531009406

namespace A176644

/-- `40^(A002262(n)*A025581(n))` -/
def P18169041330531009406.Spec : Prop :=
  ∀ n, P18169041330531009406.a n = (A176644 n : ℚ)

end A176644

/-! ## A176644.P17510167983412466251

`A013612(A285192(n))*A176642(n)`
-/

namespace A176644.P17510167983412466251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A285192 n).toNat * A176642 n

end

end A176644.P17510167983412466251

namespace A176644

/-- `A013612(A285192(n))*A176642(n)` -/
def P17510167983412466251.Spec : Prop :=
  ∀ n, P17510167983412466251.a n = A176644 n

end A176644

/-! ## A176644.P8016890071047907246

`A117401(n)*A118185(n)*A118190(n)`
-/

namespace A176644.P8016890071047907246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A118185 n * A118190 n

end

end A176644.P8016890071047907246

namespace A176644

/-- `A117401(n)*A118185(n)*A118190(n)` -/
def P8016890071047907246.Spec : Prop :=
  ∀ n, P8016890071047907246.a n = A176644 n

end A176644

/-! ## A176644.P2969460007280800111

`A158117(n)/A117401(n)*A176642(n)`
-/

namespace A176644.P2969460007280800111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158117 n : ℚ) / (A117401 n : ℚ) * (A176642 n : ℚ)

end

end A176644.P2969460007280800111

namespace A176644

/-- `A158117(n)/A117401(n)*A176642(n)` -/
def P2969460007280800111.Spec : Prop :=
  ∀ n, P2969460007280800111.a n = (A176644 n : ℚ)

end A176644

/-! ## A176644.P3476178378855911037

`A176639(n)/A118180(n)*A176642(n)`
-/

namespace A176644.P3476178378855911037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176639 n : ℚ) / (A118180 n : ℚ) * (A176642 n : ℚ)

end

end A176644.P3476178378855911037

namespace A176644

/-- `A176639(n)/A118180(n)*A176642(n)` -/
def P3476178378855911037.Spec : Prop :=
  ∀ n, P3476178378855911037.a n = (A176644 n : ℚ)

end A176644

/-! ## A176644.P9373990447908844264

`(A158116(n)/A118180(n))²*A158117(n)`
-/

namespace A176644.P9373990447908844264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A158116 n : ℚ) / (A118180 n : ℚ)) ^ 2 * (A158117 n : ℚ)

end

end A176644.P9373990447908844264

namespace A176644

/-- `(A158116(n)/A118180(n))²*A158117(n)` -/
def P9373990447908844264.Spec : Prop :=
  ∀ n, P9373990447908844264.a n = (A176644 n : ℚ)

end A176644

/-! ## A176644.P12974650186266274183

`(A158117(n)/A118190(n))²*A158117(n)`
-/

namespace A176644.P12974650186266274183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A158117 n : ℚ) / (A118190 n : ℚ)) ^ 2 * (A158117 n : ℚ)

end

end A176644.P12974650186266274183

namespace A176644

/-- `(A158117(n)/A118190(n))²*A158117(n)` -/
def P12974650186266274183.Spec : Prop :=
  ∀ n, P12974650186266274183.a n = (A176644 n : ℚ)

end A176644

/-! ## A176644.P18423142920044915262

`A118185(n)²/A158116(n)*A176639(n)`
-/

namespace A176644.P18423142920044915262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118185 n ^ 2 : ℚ) / (A158116 n : ℚ) * (A176639 n : ℚ)

end

end A176644.P18423142920044915262

namespace A176644

/-- `A118185(n)²/A158116(n)*A176639(n)` -/
def P18423142920044915262.Spec : Prop :=
  ∀ n, P18423142920044915262.a n = (A176644 n : ℚ)

end A176644

/-!
# A176645: a(n+1) = m + Sum_{j=0..n} (a(j)*a(n-j) + k) for n>=1, with a(0)=1, a(1)=4, k=1 and m=1.

The programs for A176645, there is no canonical definition to state claims against.
-/

/-! ## A176645.P16265563647857732155

`A049687(or(A116891(n+1), A186651(n+1)))`
-/

namespace A176645.P16265563647857732155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (Int.lor (A116891 (n + 1)) (A186651 (n + 1))).toNat

end

end A176645.P16265563647857732155

/-! ## A176645.P895924139556772193

`A049687(or(A186651(n+1), A186685(n+1)))`
-/

namespace A176645.P895924139556772193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (Int.lor (A186651 (n + 1)) (A186685 (n + 1))).toNat

end

end A176645.P895924139556772193

/-!
# A176646: a(n) is the number of convex pentagons in an n-triangular net.

The programs for A176646, the canonical program `A176646.P6348940574288927037` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176646 has offset 1).

The definition of A176646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176646.P6348940574288927037

`a(n-2)+C(n², 2)-C(∑[n], 2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176646

/-- `a(n-2)+C(n², 2)-C(∑[n], 2)` -/
def P6348940574288927037.Spec : Prop :=
  ∀ n, P6348940574288927037.a n = A176646 (n + 1)

theorem P6348940574288927037.correct : P6348940574288927037.Spec := by
  intro n
  simp only [A176646, Nat.add_sub_cancel]

end A176646

/-! ## A176646.P14698619994191354021

`∑[A204185(n)-∑[A135503(n)]]`
-/

namespace A176646.P14698619994191354021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204185 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176646.P14698619994191354021

namespace A176646

/-- `∑[A204185(n)-∑[A135503(n)]]` -/
def P14698619994191354021.Spec : Prop :=
  ∀ n, P14698619994191354021.a n = A176646 (n + 1)

end A176646

/-! ## A176646.P16532687986414147503

`∑[A389363(n+1)]-A389363(n+1)`
-/

namespace A176646.P16532687986414147503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A389363 (n + 1)

end

end A176646.P16532687986414147503

namespace A176646

/-- `∑[A389363(n+1)]-A389363(n+1)` -/
def P16532687986414147503.Spec : Prop :=
  ∀ n, P16532687986414147503.a n = A176646 (n + 1)

end A176646

/-! ## A176646.P18162685060088801615

`∑[∑[A175724(A004273(n)+n)]]`
-/

namespace A176646.P18162685060088801615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175724 (A004273 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176646.P18162685060088801615

namespace A176646

/-- `∑[∑[A175724(A004273(n)+n)]]` -/
def P18162685060088801615.Spec : Prop :=
  ∀ n, P18162685060088801615.a n = A176646 (n + 1)

end A176646

/-! ## A176646.P9088944105559130907

`∑[∑[A175724(A289207(3*n+1))]]`
-/

namespace A176646.P9088944105559130907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175724 (A289207 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176646.P9088944105559130907

namespace A176646

/-- `∑[∑[A175724(A289207(3*n+1))]]` -/
def P9088944105559130907.Spec : Prop :=
  ∀ n, P9088944105559130907.a n = A176646 (n + 1)

end A176646

/-! ## A176646.P3756849806850000601

`∑[A204185(n)-A161680(∑[n])]`
-/

namespace A176646.P3756849806850000601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204185 n - A161680 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176646.P3756849806850000601

namespace A176646

/-- `∑[A204185(n)-A161680(∑[n])]` -/
def P3756849806850000601.Spec : Prop :=
  ∀ n, P3756849806850000601.a n = A176646 (n + 1)

end A176646

/-!
# A176647: Triangle T(n, k) = f(n, k) + f(n, n-k) - f(n, n), where f(n, k) = binomial(n*(3*n-1)/2 + k, k), read by rows.

The programs for A176647, there is no canonical definition to state claims against.
-/

/-! ## A176647.P17009435423313558605

`A128642(A356116(n+1)%A141838(n+1))`
-/

namespace A176647.P17009435423313558605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128642 (Int.tmod (A356116 (n + 1)) (A141838 (n + 1))).toNat

end

end A176647.P17009435423313558605

/-! ## A176647.P17126283865731604019

`A205973(A318753(∑[n²]))`
-/

namespace A176647.P17126283865731604019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205973 (A318753 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A176647.P17126283865731604019

/-! ## A176647.P6852528976652321089

`(-A001470(n))^A271141(n+1)`
-/

namespace A176647.P6852528976652321089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A001470 n : ℚ) ^ (A271141 (n + 1) : ℤ)

end

end A176647.P6852528976652321089

/-! ## A176647.P5332071481546120253

`A205973(A298133(n+1)^(gcd(n, n%2)+1))`
-/

namespace A176647.P5332071481546120253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205973 (A298133 (n + 1) ^ (Nat.gcd n (n % 2) + 1)).toNat

end

end A176647.P5332071481546120253

/-!
# A176648: a(n+1) = m + Sum_{j=0..n} (a(j)*a(n-j) + k) for n>=1, with a(0)=1, a(1)=5, k=1 and m=1.

The programs for A176648, there is no canonical definition to state claims against.
-/

/-! ## A176648.P3160346559976491939

`A177152(a(n-1))-a(n-3)` with `a(0)=1, a(1)=5, a(2)=13`
-/

namespace A176648.P3160346559976491939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 13] fun n a =>
  A177152 (a (n - 1)).toNat - a (n - 3)

end

end A176648.P3160346559976491939

/-!
# A176653: Triangle, read by rows, defined by T(n, m) = f(n-m)*f(n) - f(n-0)*f(0) + 1, where f(n) is 1 if n = 0 and Prime(n) otherwise.

The programs for A176653, there is no canonical definition to state claims against.
-/

/-! ## A176653.P2806662057285105682

`A146985(n)+1-A146985(A057944(n))`
-/

namespace A176653.P2806662057285105682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146985 n + (1 - A146985 (A057944 n).toNat)

end

end A176653.P2806662057285105682

/-! ## A176653.P7633179750579808103

`A005361(A008300(n)*A323211(n))`
-/

namespace A176653.P7633179750579808103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A008300 n * A323211 n).toNat

end

end A176653.P7633179750579808103

/-! ## A176653.P5175287650193415981

`A005361(A008300(n)*A300119(n+1))`
-/

namespace A176653.P5175287650193415981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A008300 n * A300119 (n + 1)).toNat

end

end A176653.P5175287650193415981

/-! ## A176653.P4938501298657457455

`A216763(A146767(n))`
-/

namespace A176653.P4938501298657457455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A146767 n).toNat

end

end A176653.P4938501298657457455

/-! ## A176653.P16881394652710480732

`A069010(A322220(n))`
-/

namespace A176653.P16881394652710480732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A322220 n).toNat

end

end A176653.P16881394652710480732

/-!
# A176654: Numbers k such that both semiprime(k)/p and semiprime(semiprime(k))/p are prime for some prime p.

The programs for A176654, there is no canonical definition to state claims against.
-/

/-! ## A176654.P2984255927232507453

`A058933(A175706(n+1))`
-/

namespace A176654.P2984255927232507453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A175706 (n + 1)).toNat

end

end A176654.P2984255927232507453

/-! ## A176654.P6799261784903145155

`A072000(A175706(-xor(n, -1)))`
-/

namespace A176654.P6799261784903145155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A175706 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A176654.P6799261784903145155

/-! ## A176654.P8140241525677510477

`∑{d}[A175706(n+1), A174956(#)]`
-/

namespace A176654.P8140241525677510477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174956 d

end

end A176654.P8140241525677510477

/-! ## A176654.P13459611049546526071

`A335097(A175706(Δ[n²]-n))+1`
-/

namespace A176654.P13459611049546526071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335097 (A175706 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1

end

end A176654.P13459611049546526071

/-! ## A176654.P2041906081975344938

`A335097(A175706(n+1))%A000712(n)+1`
-/

namespace A176654.P2041906081975344938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335097 (A175706 (n + 1)).toNat) (A000712 n) + 1

end

end A176654.P2041906081975344938

/-! ## A176654.P14651851579776058715

`A174956(A175706(n+1))%A000040(n+1)²`
-/

namespace A176654.P14651851579776058715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174956 (A175706 (n + 1)).toNat) (A000040 (n + 1) ^ 2)

end

end A176654.P14651851579776058715

/-! ## A176654.P5332634838530612895

`A007318(∑[n+1])*A174956(A175706(n+1))`
-/

namespace A176654.P5332634838530612895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A174956 (A175706 (n + 1)).toNat

end

end A176654.P5332634838530612895

/-! ## A176654.P4318057775410081572

`A174956(A175706(n+1))^ceil(n/A000041(n))`
-/

namespace A176654.P4318057775410081572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174956 (A175706 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A176654.P4318057775410081572

/-! ## A176654.P8414432389934676668

`A014963(6*(n+2))*A174956(A175706(n+1))`
-/

namespace A176654.P8414432389934676668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A174956 (A175706 (n + 1)).toNat

end

end A176654.P8414432389934676668

/-! ## A176654.P644040075202688030

`A174956(A014963(n+1))+A174956(A175706(n+1))`
-/

namespace A176654.P644040075202688030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A014963 (n + 1)).toNat + A174956 (A175706 (n + 1)).toNat

end

end A176654.P644040075202688030

/-!
# A176655: Numbers that are divisible by exactly 7 distinct primes.

The programs for A176655, there is no canonical definition to state claims against.
-/

/-! ## A176655.P17000094145648054109

`A272598(n+1)/4`
-/

namespace A176655.P17000094145648054109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272598 (n + 1) : ℚ) / 4

end

end A176655.P17000094145648054109

/-!
# A176656: The positions of single (or isolated or non-twin) primes in A000040.

The programs for A176656, the canonical program `A176656.P7092438726384079930` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176656 has offset 1).

The definition of A176656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176656.P6862990091630044346

`comp[A334142(n+1)-1]+1`
-/

namespace A176656.P6862990091630044346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176656.P6862990091630044346

namespace A176656

/-- `comp[A334142(n+1)-1]+1` -/
def P6862990091630044346.Spec : Prop :=
  ∀ n, (P6862990091630044346.a n : ℤ) = A176656 (n + 1)

end A176656

/-! ## A176656.P248521568816148703

`lt[n-(2*n)%(n+2), A237260(n+1)]`
-/

namespace A176656.P248521568816148703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * n % (n + 2) : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176656.P248521568816148703

namespace A176656

/-- `lt[n-(2*n)%(n+2), A237260(n+1)]` -/
def P248521568816148703.Spec : Prop :=
  ∀ n, (P248521568816148703.a n : ℤ) = A176656 (n + 1)

end A176656

/-! ## A176656.P7092438726384079930

`A000720(A007510(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176656

/-- `A000720(A007510(n+1))` -/
def P7092438726384079930.Spec : Prop :=
  ∀ n, P7092438726384079930.a n = A176656 (n + 1)

theorem P7092438726384079930.correct : P7092438726384079930.Spec := by
  intro n
  simp only [A176656, Nat.add_sub_cancel]

end A176656

/-! ## A176656.P17538305531382458446

`a(n-1)+A176704(n)+1` with `a(0)=1`
-/

namespace A176656.P17538305531382458446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A176704 n + 1)

end

end A176656.P17538305531382458446

namespace A176656

/-- `a(n-1)+A176704(n)+1` -/
def P17538305531382458446.Spec : Prop :=
  ∀ n, P17538305531382458446.a n = A176656 (n + 1)

end A176656

/-! ## A176656.P1986636404329261843

`A036234(A167277(n+1))`
-/

namespace A176656.P1986636404329261843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A167277 (n + 1)).toNat

end

end A176656.P1986636404329261843

namespace A176656

/-- `A036234(A167277(n+1))` -/
def P1986636404329261843.Spec : Prop :=
  ∀ n, P1986636404329261843.a n = A176656 (n + 1)

end A176656

/-! ## A176656.P8000214183047189018

`A219109(A164534(n+1))`
-/

namespace A176656.P8000214183047189018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A164534 (n + 1)).toNat

end

end A176656.P8000214183047189018

namespace A176656

/-- `A219109(A164534(n+1))` -/
def P8000214183047189018.Spec : Prop :=
  ∀ n, P8000214183047189018.a n = A176656 (n + 1)

end A176656

/-! ## A176656.P11855883754502584674

`A033270(A167278(n+1))`
-/

namespace A176656.P11855883754502584674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A167278 (n + 1)).toNat

end

end A176656.P11855883754502584674

namespace A176656

/-- `A033270(A167278(n+1))` -/
def P11855883754502584674.Spec : Prop :=
  ∀ n, P11855883754502584674.a n = A176656 (n + 1)

end A176656

/-! ## A176656.P15050507441264882511

`floor(2/acot(A162310(n+1)))+n`
-/

namespace A176656.P15050507441264882511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A162310 (n + 1) : ℝ)⌋ + (n : ℤ)

end

end A176656.P15050507441264882511

namespace A176656

/-- `floor(2/acot(A162310(n+1)))+n` -/
def P15050507441264882511.Spec : Prop :=
  ∀ n, P15050507441264882511.a n = A176656 (n + 1)

end A176656

/-! ## A176656.P13194323018357811486

`n+1+A162308(n+1)`
-/

namespace A176656.P13194323018357811486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A162308 (n + 1)

end

end A176656.P13194323018357811486

namespace A176656

/-- `n+1+A162308(n+1)` -/
def P13194323018357811486.Spec : Prop :=
  ∀ n, P13194323018357811486.a n = A176656 (n + 1)

end A176656

/-!
# A176657: Numbers k such that prime(k) is not a twin prime and prime(prime(k)) is a twin prime.

The programs for A176657, the canonical program `A176657.P12577566922255081420` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176657 has offset 1).

The definition of A176657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176657.P12577566922255081420

`A000720(∩[A007510(n+1), A334142(n+1)])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176657

/-- `A000720(∩[A007510(n+1), A334142(n+1)])` -/
def P12577566922255081420.Spec : Prop :=
  ∀ n, P12577566922255081420.a n = A176657 (n + 1)

theorem P12577566922255081420.correct : P12577566922255081420.Spec := by
  intro n
  simp only [A176657, Nat.add_sub_cancel]

end A176657

/-! ## A176657.P2592223517005012541

`A061395(∩[A007510(n+1), A334142(n+1)])`
-/

namespace A176657.P2592223517005012541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176657.P2592223517005012541

namespace A176657

/-- `A061395(∩[A007510(n+1), A334142(n+1)])` -/
def P2592223517005012541.Spec : Prop :=
  ∀ n, P2592223517005012541.a n = A176657 (n + 1)

end A176657

/-! ## A176657.P18078446538214356709

`A055396(∩[A007510(n+1), A334142(n+1)])`
-/

namespace A176657.P18078446538214356709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176657.P18078446538214356709

namespace A176657

/-- `A055396(∩[A007510(n+1), A334142(n+1)])` -/
def P18078446538214356709.Spec : Prop :=
  ∀ n, P18078446538214356709.a n = A176657 (n + 1)

end A176657

/-! ## A176657.P13600141061421377565

`A056239(∩[A007510(n+1), A334142(n+1)])`
-/

namespace A176657.P13600141061421377565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176657.P13600141061421377565

namespace A176657

/-- `A056239(∩[A007510(n+1), A334142(n+1)])` -/
def P13600141061421377565.Spec : Prop :=
  ∀ n, P13600141061421377565.a n = A176657 (n + 1)

end A176657

/-! ## A176657.P12499674317765405147

`A156061(∩[A007510(n+1), A334142(n+1)])`
-/

namespace A176657.P12499674317765405147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176657.P12499674317765405147

namespace A176657

/-- `A156061(∩[A007510(n+1), A334142(n+1)])` -/
def P12499674317765405147.Spec : Prop :=
  ∀ n, P12499674317765405147.a n = A176657 (n + 1)

end A176657

/-!
# A176658: Numbers k such that semiprime(semiprime(k)) + 1 = semiprime(semiprime(k+1)).

The programs for A176658, there is no canonical definition to state claims against.
-/

/-! ## A176658.P9519106344115375574

`A072000(∩[A070552(n+1), A151916(n+1)])`
-/

namespace A176658.P9519106344115375574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151916 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176658.P9519106344115375574

/-!
# A176659: Partial sums of A038770.

The programs for A176659, there is no canonical definition to state claims against.
-/

/-! ## A176659.P7941784547415832442

`∑[A038770(n+1)]`
-/

namespace A176659.P7941784547415832442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P7941784547415832442

/-! ## A176659.P11077350295642581169

`∑[record[A038770(A324533(n))]]`
-/

namespace A176659.P11077350295642581169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (A324533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P11077350295642581169

/-! ## A176659.P5615271598446307045

`∑[record[A038770(A328395(n))]]`
-/

namespace A176659.P5615271598446307045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P5615271598446307045

/-! ## A176659.P240233791520617470

`A038770(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A176659.P240233791520617470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038770 (n + 1) + a (A023443 n).toNat

end

end A176659.P240233791520617470

/-! ## A176659.P18414934875471407874

`∑[eq[1, a(A038769(n))²]]` with `a(0)=0, a(1)=1`
-/

namespace A176659.P18414934875471407874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (A038769 n).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P18414934875471407874

/-! ## A176659.P199892897000084966

`∑[record[A038770(A126759(n))]]`
-/

namespace A176659.P199892897000084966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P199892897000084966

/-! ## A176659.P6281337512489477562

`∑[record[A038770(A154958(n))]]`
-/

namespace A176659.P6281337512489477562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P6281337512489477562

/-! ## A176659.P11527652152068981547

`∑[record[A038770(A286552(n))]]`
-/

namespace A176659.P11527652152068981547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (A286552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P11527652152068981547

/-! ## A176659.P15532319907223429013

`∑[record[A038770(A065648(n))]]`
-/

namespace A176659.P15532319907223429013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176659.P15532319907223429013

/-!
# A176660: Partial sums of A038772.

The programs for A176660, there is no canonical definition to state claims against.
-/

/-! ## A176660.P8459049804263577174

`∑[A038772(n+1)]`
-/

namespace A176660.P8459049804263577174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P8459049804263577174

/-! ## A176660.P18007675564395652280

`∑[record[A038772(A126759(n))]]`
-/

namespace A176660.P18007675564395652280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P18007675564395652280

/-! ## A176660.P8598704220250213211

`∑[eq[0, A038769(n+1)]+1]`
-/

namespace A176660.P8598704220250213211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P8598704220250213211

/-! ## A176660.P5694530510486636222

`∑[eq[0, A038769(A028310(n))]]`
-/

namespace A176660.P5694530510486636222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P5694530510486636222

/-! ## A176660.P8994627830249769236

`∑[record[A038772(A351085(n))]]`
-/

namespace A176660.P8994627830249769236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (A351085 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P8994627830249769236

/-! ## A176660.P15636869381807839458

`∑[eq[0, A038769(A233583(n+1))]]`
-/

namespace A176660.P15636869381807839458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A233583 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P15636869381807839458

/-! ## A176660.P11972861436718507744

`∑[record[A038772(A134478(n))]]`
-/

namespace A176660.P11972861436718507744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P11972861436718507744

/-! ## A176660.P16204142058115323134

`∑[record[A038772(A144968(n))]]`
-/

namespace A176660.P16204142058115323134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (A144968 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176660.P16204142058115323134

/-!
# A176661: Partial sums of A061262.

The programs for A176661, there is no canonical definition to state claims against.
-/

/-! ## A176661.P15138358037966036850

`∑[A061262(n+1)]`
-/

namespace A176661.P15138358037966036850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176661.P15138358037966036850

/-! ## A176661.P10335268342111446151

`A061262(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A176661.P10335268342111446151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061262 (n + 1) + a (A023443 n).toNat

end

end A176661.P10335268342111446151

/-!
# A176662: a(0)=2, a(1)=7, and a(n) = (3*n+1)*2^(n-1) if n > 1.

The programs for A176662, the canonical program `A176662.P17799874913978087431` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176662 has offset 0).

The definition of A176662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176662.P17799874913978087431

`4*a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=7, a(2)=14, a(3)=40`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176662

/-- `4*a(n-1)-4*a(n-2)` -/
def P17799874913978087431.Spec : Prop :=
  ∀ n, P17799874913978087431.a n = A176662 n

theorem P17799874913978087431.correct : P17799874913978087431.Spec := by
  intro n
  simp only [A176662]

end A176662

/-! ## A176662.P4327549529380510945

`A001787(n)+lcm(2, A128135(n+1))`
-/

namespace A176662.P4327549529380510945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (Int.lcm 2 (A128135 (n + 1)) : ℤ)

end

end A176662.P4327549529380510945

namespace A176662

/-- `A001787(n)+lcm(2, A128135(n+1))` -/
def P4327549529380510945.Spec : Prop :=
  ∀ n, P4327549529380510945.a n = A176662 n

end A176662

/-! ## A176662.P7066591097293019349

`(A163985(2*n)+A163985(n+2))*A076736(2*n+1)`
-/

namespace A176662.P7066591097293019349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163985 (2 * n) + A163985 (n + 2)) * A076736 (2 * n + 1)

end

end A176662.P7066591097293019349

namespace A176662

/-- `(A163985(2*n)+A163985(n+2))*A076736(2*n+1)` -/
def P7066591097293019349.Spec : Prop :=
  ∀ n, P7066591097293019349.a n = A176662 n

end A176662

/-! ## A176662.P7113907530362569614

`lcm(2, A080929(n))-A178987(n)`
-/

namespace A176662.P7113907530362569614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A080929 n) : ℤ) - A178987 n

end

end A176662.P7113907530362569614

namespace A176662

/-- `lcm(2, A080929(n))-A178987(n)` -/
def P7113907530362569614.Spec : Prop :=
  ∀ n, P7113907530362569614.a n = A176662 n

end A176662

/-! ## A176662.P11276866833651221123

`A011782(n)*A094727(A090288(n))`
-/

namespace A176662.P11276866833651221123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A094727 (A090288 n).toNat

end

end A176662.P11276866833651221123

namespace A176662

/-- `A011782(n)*A094727(A090288(n))` -/
def P11276866833651221123.Spec : Prop :=
  ∀ n, P11276866833651221123.a n = A176662 n

end A176662

/-!
# A176667: A triangle of polynomial coefficients:p(x,n)=Sum[(k + 1)^n*Binomial[x, k], {k, 0, Infinity}]/2^(x - n).

The programs for A176667, there is no canonical definition to state claims against.
-/

/-! ## A176667.P14441774135655755257

`A000196(A112358(A061579(n))²)`
-/

namespace A176667.P14441774135655755257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A112358 (A061579 n).toNat ^ 2).toNat

end

end A176667.P14441774135655755257

/-! ## A176667.P5856304339498881185

`A033676(A112358(A061579(n))²)`
-/

namespace A176667.P5856304339498881185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A112358 (A061579 n).toNat ^ 2).toNat

end

end A176667.P5856304339498881185

/-! ## A176667.P3643673934384868378

`A033677(A112358(A061579(n))²)`
-/

namespace A176667.P3643673934384868378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A112358 (A061579 n).toNat ^ 2).toNat

end

end A176667.P3643673934384868378

/-! ## A176667.P16765866782905789297

`A112358(A061579(n)%A001395(n))`
-/

namespace A176667.P16765866782905789297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112358 (Int.tmod (A061579 n) (A001395 n)).toNat

end

end A176667.P16765866782905789297

/-! ## A176667.P18160912201788708081

`A112358(A061579(n))*A157928(A014150(n+1))`
-/

namespace A176667.P18160912201788708081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112358 (A061579 n).toNat * A157928 (A014150 (n + 1)).toNat

end

end A176667.P18160912201788708081

/-!
# A176669: A triangle of polynomial coefficients:p(x,n)=Sum[(2*k - 1)^n*Binomial[x, k], {k, 0, Infinity}]/2^x.

The programs for A176669, there is no canonical definition to state claims against.
-/

/-! ## A176669.P5815279512459047786

`A154556(n)-A250002(A109971(n))`
-/

namespace A176669.P5815279512459047786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154556 n - A250002 (A109971 n).toNat

end

end A176669.P5815279512459047786

/-! ## A176669.P7980983242604862800

`A154556(n)*A294935(A126646(n))`
-/

namespace A176669.P7980983242604862800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154556 n * A294935 (A126646 n).toNat

end

end A176669.P7980983242604862800

/-! ## A176669.P3648276838228960605

`and(A154556(n), A253414(A022367(n)))`
-/

namespace A176669.P3648276838228960605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154556 n) (A253414 (A022367 n).toNat)

end

end A176669.P3648276838228960605

/-! ## A176669.P14033412801996610163

`A154556(n)-A250002(A296712(n+1))`
-/

namespace A176669.P14033412801996610163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154556 n - A250002 (A296712 (n + 1)).toNat

end

end A176669.P14033412801996610163

/-! ## A176669.P17405256611920739564

`A154556(n)%A360377(A212448(n+1))`
-/

namespace A176669.P17405256611920739564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154556 n) (A360377 (A212448 (n + 1)).toNat)

end

end A176669.P17405256611920739564

/-!
# A176671: Primes not of the form p + 2^k*k^2 for p prime and k > 0.

The programs for A176671, there is no canonical definition to state claims against.
-/

/-! ## A176671.P3969164821884260646

`A325119(or(A048448(n), A142150(n)))`
-/

namespace A176671.P3969164821884260646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325119 (Int.lor (A048448 n) (A142150 n)).toNat

end

end A176671.P3969164821884260646

/-! ## A176671.P3108548681899624310

`∩[A093510(n+1), A235482(n+1)]`
-/

namespace A176671.P3108548681899624310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176671.P3108548681899624310

/-! ## A176671.P6831877716045240746

`∩[A172409(n+1), A235482(n+1)]`
-/

namespace A176671.P6831877716045240746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176671.P6831877716045240746

/-! ## A176671.P14013586222964757082

`A151800(eq[A329273(n+4), A334461(2*n+3)])`
-/

namespace A176671.P14013586222964757082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329273 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176671.P14013586222964757082

/-!
# A176672: a(2*n) = 1 + 6*n, a(2*n+1) = A165367(n).

The programs for A176672, the canonical program `A176672.P2974903812384479320` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176672 has offset 0).

The definition of A176672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176672.P2974903812384479320

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=5, a(4)=13, a(5)=4, a(6)=19, a(7)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176672

/-- `2*a(n-4)-a(n-8)` -/
def P2974903812384479320.Spec : Prop :=
  ∀ n, P2974903812384479320.a n = A176672 n

theorem P2974903812384479320.correct : P2974903812384479320.Spec := by
  intro n
  simp only [A176672]

end A176672

/-! ## A176672.P15669202555087052519

`lcm(4, 3*n+1)/4`
-/

namespace A176672.P15669202555087052519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (3 * n + 1) : ℚ) / 4

end

end A176672.P15669202555087052519

namespace A176672

/-- `lcm(4, 3*n+1)/4` -/
def P15669202555087052519.Spec : Prop :=
  ∀ n, P15669202555087052519.a n = (A176672 n : ℚ)

end A176672

/-! ## A176672.P15733068332775050165

`(3*n+1)/gcd(4, 1-n)`
-/

namespace A176672.P15733068332775050165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) / (Int.gcd 4 (1 - (n : ℤ)) : ℚ)

end

end A176672.P15733068332775050165

namespace A176672

/-- `(3*n+1)/gcd(4, 1-n)` -/
def P15733068332775050165.Spec : Prop :=
  ∀ n, P15733068332775050165.a n = (A176672 n : ℚ)

end A176672

/-! ## A176672.P14367203466430234718

`floor((2*n+1+n)/gcd(n+3, (n+1)²))`
-/

namespace A176672.P14367203466430234718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 + n : ℚ) / (Nat.gcd (n + 3) ((n + 1) ^ 2) : ℚ)⌋

end

end A176672.P14367203466430234718

namespace A176672

/-- `floor((2*n+1+n)/gcd(n+3, (n+1)²))` -/
def P14367203466430234718.Spec : Prop :=
  ∀ n, P14367203466430234718.a n = A176672 n

end A176672

/-! ## A176672.P1742030836049589751

`A177049(n)/A302773(n)`
-/

namespace A176672.P1742030836049589751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177049 n : ℚ) / (A302773 n : ℚ)

end

end A176672.P1742030836049589751

namespace A176672

/-- `A177049(n)/A302773(n)` -/
def P1742030836049589751.Spec : Prop :=
  ∀ n, P1742030836049589751.a n = (A176672 n : ℚ)

end A176672

/-! ## A176672.P14330055233866677394

`gcd(A001296(n), A165355(n))`
-/

namespace A176672.P14330055233866677394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001296 n) (A165355 n)

end

end A176672.P14330055233866677394

namespace A176672

/-- `gcd(A001296(n), A165355(n))` -/
def P14330055233866677394.Spec : Prop :=
  ∀ n, (P14330055233866677394.a n : ℤ) = A176672 n

end A176672

/-! ## A176672.P6300617373492618779

`gcd(A005449(n), A177049(n))`
-/

namespace A176672.P6300617373492618779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005449 n) (A177049 n)

end

end A176672.P6300617373492618779

namespace A176672

/-- `gcd(A005449(n), A177049(n))` -/
def P6300617373492618779.Spec : Prop :=
  ∀ n, (P6300617373492618779.a n : ℤ) = A176672 n

end A176672

/-! ## A176672.P9785624043385741624

`A165355(n)/A138191(n+1)`
-/

namespace A176672.P9785624043385741624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165355 n : ℚ) / (A138191 (n + 1) : ℚ)

end

end A176672.P9785624043385741624

namespace A176672

/-- `A165355(n)/A138191(n+1)` -/
def P9785624043385741624.Spec : Prop :=
  ∀ n, P9785624043385741624.a n = (A176672 n : ℚ)

end A176672

/-! ## A176672.P10755918250897216809

`A165367(A165355(n)-(n+1))`
-/

namespace A176672.P10755918250897216809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (A165355 n - (n + 1 : ℤ)).toNat

end

end A176672.P10755918250897216809

namespace A176672

/-- `A165367(A165355(n)-(n+1))` -/
def P10755918250897216809.Spec : Prop :=
  ∀ n, P10755918250897216809.a n = A176672 n

end A176672

/-! ## A176672.P8687173465512165976

`A165367(A165355(n)-1-n)`
-/

namespace A176672.P8687173465512165976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (A165355 n - 1 - (n : ℤ)).toNat

end

end A176672.P8687173465512165976

namespace A176672

/-- `A165367(A165355(n)-1-n)` -/
def P8687173465512165976.Spec : Prop :=
  ∀ n, P8687173465512165976.a n = A176672 n

end A176672

/-! ## A176672.P7622805825651757714

`(A166304(n+1)-A089146(2*n))/A089146(n+1)`
-/

namespace A176672.P7622805825651757714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166304 (n + 1) - A089146 (2 * n) : ℚ) / (A089146 (n + 1) : ℚ)

end

end A176672.P7622805825651757714

namespace A176672

/-- `(A166304(n+1)-A089146(2*n))/A089146(n+1)` -/
def P7622805825651757714.Spec : Prop :=
  ∀ n, P7622805825651757714.a n = (A176672 n : ℚ)

end A176672

/-! ## A176672.P4225413375162208003

`A165367(2*n)/(A236398(2*n+1)*A236398(n+2))`
-/

namespace A176672.P4225413375162208003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165367 (2 * n) : ℚ) / (A236398 (2 * n + 1) * A236398 (n + 2) : ℚ)

end

end A176672.P4225413375162208003

namespace A176672

/-- `A165367(2*n)/(A236398(2*n+1)*A236398(n+2))` -/
def P4225413375162208003.Spec : Prop :=
  ∀ n, P4225413375162208003.a n = (A176672 n : ℚ)

end A176672

/-! ## A176672.P10074173674353750364

`A051724(3*n+1)`
-/

namespace A176672.P10074173674353750364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * n + 1)

end

end A176672.P10074173674353750364

namespace A176672

/-- `A051724(3*n+1)` -/
def P10074173674353750364.Spec : Prop :=
  ∀ n, P10074173674353750364.a n = A176672 n

end A176672

/-! ## A176672.P8336625418098690216

`A060819(3*n+1)`
-/

namespace A176672.P8336625418098690216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (3 * n + 1)

end

end A176672.P8336625418098690216

namespace A176672

/-- `A060819(3*n+1)` -/
def P8336625418098690216.Spec : Prop :=
  ∀ n, P8336625418098690216.a n = A176672 n

end A176672

/-! ## A176672.P15837772473919089223

`A026741(A165355(n))`
-/

namespace A176672.P15837772473919089223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165355 n).toNat

end

end A176672.P15837772473919089223

namespace A176672

/-- `A026741(A165355(n))` -/
def P15837772473919089223.Spec : Prop :=
  ∀ n, P15837772473919089223.a n = A176672 n

end A176672

/-! ## A176672.P3634463712984774889

`A026741(A302773(2*n))`
-/

namespace A176672.P3634463712984774889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A302773 (2 * n)).toNat

end

end A176672.P3634463712984774889

namespace A176672

/-- `A026741(A302773(2*n))` -/
def P3634463712984774889.Spec : Prop :=
  ∀ n, P3634463712984774889.a n = A176672 n

end A176672

/-! ## A176672.P11466498827554640358

`A026741(A026741(3*n+1))`
-/

namespace A176672.P11466498827554640358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (3 * n + 1)).toNat

end

end A176672.P11466498827554640358

namespace A176672

/-- `A026741(A026741(3*n+1))` -/
def P11466498827554640358.Spec : Prop :=
  ∀ n, P11466498827554640358.a n = A176672 n

end A176672

/-! ## A176672.P6859077653323063433

`A350509(A350509(3*n+1))`
-/

namespace A176672.P6859077653323063433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (A350509 (3 * n + 1)).toNat

end

end A176672.P6859077653323063433

namespace A176672

/-- `A350509(A350509(3*n+1))` -/
def P6859077653323063433.Spec : Prop :=
  ∀ n, P6859077653323063433.a n = A176672 n

end A176672

/-! ## A176672.P4043475330741366056

`A060789(A060789(2*n+1+n))`
-/

namespace A176672.P4043475330741366056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A060789 (2 * n + 1 + n)).toNat

end

end A176672.P4043475330741366056

namespace A176672

/-- `A060789(A060789(2*n+1+n))` -/
def P4043475330741366056.Spec : Prop :=
  ∀ n, P4043475330741366056.a n = A176672 n

end A176672

/-! ## A176672.P8048185686533114805

`A076934(A076934(2*n+1+n))`
-/

namespace A176672.P8048185686533114805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (A076934 (2 * n + 1 + n)).toNat

end

end A176672.P8048185686533114805

namespace A176672

/-- `A076934(A076934(2*n+1+n))` -/
def P8048185686533114805.Spec : Prop :=
  ∀ n, P8048185686533114805.a n = A176672 n

end A176672

/-!
# A176673: Partial sums of A001168.

The programs for A176673, there is no canonical definition to state claims against.
-/

/-! ## A176673.P8186549271855852683

`∑[A001168(n+1)]`
-/

namespace A176673.P8186549271855852683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176673.P8186549271855852683

/-! ## A176673.P12003906736166263760

`∑[∑[A283110(n)]+1]`
-/

namespace A176673.P12003906736166263760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176673.P12003906736166263760

/-! ## A176673.P12968160070070407645

`∑[A006762(n+1)+2]-1`
-/

namespace A176673.P12968160070070407645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006762 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A176673.P12968160070070407645

/-! ## A176673.P5106363769699642966

`∑[A048664(n+1)/(n+1)]`
-/

namespace A176673.P5106363769699642966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048664 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176673.P5106363769699642966

/-! ## A176673.P15005453497122447307

`∑[∑[A283110(A028310(n))]]`
-/

namespace A176673.P15005453497122447307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283110 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176673.P15005453497122447307

/-! ## A176673.P10932775381044126922

`∑[record[A001168(A002262(n))]]`
-/

namespace A176673.P10932775381044126922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176673.P10932775381044126922

/-! ## A176673.P5389552084450631792

`∑[record[A001168(A025581(n))]]`
-/

namespace A176673.P5389552084450631792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176673.P5389552084450631792

/-! ## A176673.P16148661544024926684

`∑[record[A001168(A103221(n))]]`
-/

namespace A176673.P16148661544024926684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A103221 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176673.P16148661544024926684

/-!
# A176676: Primes not of the form prime + k^2*2^(k-1).

The programs for A176676, there is no canonical definition to state claims against.
-/

/-! ## A176676.P13541296792076501495

`p?[∑[A094310(A222111(n+1))]]`
-/

namespace A176676.P13541296792076501495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A222111 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176676.P13541296792076501495

/-! ## A176676.P12002706381616342941

`p?[lcm(A220655(n+1), A327642(n))]`
-/

namespace A176676.P12002706381616342941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A220655 (n + 1)) (A327642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176676.P12002706381616342941

/-! ## A176676.P13770936633682929577

`p?[A326836(n+1)-A067538(3*n+5)]`
-/

namespace A176676.P13770936633682929577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326836 (n + 1) - A067538 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176676.P13770936633682929577

/-!
# A176677: Sequence defined by the recurrence formula a(n+1) = Sum_{p=0..n} (a(p)*a(n-p)+k) + l for n>=1, with here a(0)=1, a(1)=1, k=0 and l=-1.

The programs for A176677, there is no canonical definition to state claims against.
-/

/-! ## A176677.P17147873708976101783

`A107037(A131868(n+1))`
-/

namespace A176677.P17147873708976101783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A131868 (n + 1)).toNat

end

end A176677.P17147873708976101783

/-! ## A176677.P13313340977464361680

`A326597(A214657(n))+A157271(A309159(n))`
-/

namespace A176677.P13313340977464361680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 (A214657 n).toNat + A157271 (A309159 n).toNat

end

end A176677.P13313340977464361680

/-! ## A176677.P702789475645175126

`A265911(∏[p?[∑[char[∑[n+1]]]]])`
-/

namespace A176677.P702789475645175126
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265911 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A176677.P702789475645175126

/-! ## A176677.P16575802671558176154

`A023193(A148399(n))`
-/

namespace A176677.P16575802671558176154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148399 n).toNat

end

end A176677.P16575802671558176154

/-!
# A176678: a(n+1) = Sum_{p=0..n} a(p)*a(n-p)+k+l for n>=1, with here a(0)=1, a(1)=2, k=0 and l=-1.

The programs for A176678, there is no canonical definition to state claims against.
-/

/-! ## A176678.P8418851652720259326

`A065033(A149984(n)+A054154(n))`
-/

namespace A176678.P8418851652720259326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149984 n + A054154 n).toNat

end

end A176678.P8418851652720259326

/-! ## A176678.P7990209661472099505

`A008616(A001834(n))+A000009(n)`
-/

namespace A176678.P7990209661472099505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A001834 n).toNat + A000009 n

end

end A176678.P7990209661472099505

/-!
# A176679: Conjecturally, numbers j for which f(m) > f(j) for all m > j, where f(k) = H(k) + exp(H(k))*log(H(k)) - sigma(k).

The programs for A176679, there is no canonical definition to state claims against.
-/

/-! ## A176679.P15356549163480229350

`∩[A265719(n+1), A323762(n+1)]`
-/

namespace A176679.P15356549163480229350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176679.P15356549163480229350

/-! ## A176679.P13034142183732928972

`A139770(A206917(n+1))`
-/

namespace A176679.P13034142183732928972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A206917 (n + 1)).toNat

end

end A176679.P13034142183732928972

/-! ## A176679.P7917062159371755573

`∩[A303703(n+1), A323762(n+1)]`
-/

namespace A176679.P7917062159371755573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176679.P7917062159371755573

/-! ## A176679.P17241276390329211535

`record[gcd(A058199(n+1), A103931(n+1))]`
-/

namespace A176679.P17241276390329211535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058199 (n + 1)) (A103931 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176679.P17241276390329211535

/-! ## A176679.P4253821272477638072

`record[gcd(A129902(n+1), A291834(n+1))]`
-/

namespace A176679.P4253821272477638072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129902 (n + 1)) (A291834 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176679.P4253821272477638072

/-!
# A176680: 

The programs for A176680, there is no canonical definition to state claims against.
-/

/-! ## A176680.P2905120907037244331

`A269018(comp[A278222(n)-1])`
-/

namespace A176680.P2905120907037244331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A176680.P2905120907037244331

/-!
# A176681: Numbers k such that k^2 +-5 are primes.

The programs for A176681, there is no canonical definition to state claims against.
-/

/-! ## A176681.P17940406363137460612

`∩[A028876(n+1), A078402(n+1)]`
-/

namespace A176681.P17940406363137460612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176681.P17940406363137460612

/-! ## A176681.P7223490630507341762

`6*A154712(n+1)`
-/

namespace A176681.P7223490630507341762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A154712 (n + 1)

end

end A176681.P7223490630507341762

/-! ## A176681.P11684084165711227801

`A008458(A154712(n+1))`
-/

namespace A176681.P11684084165711227801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A154712 (n + 1)).toNat

end

end A176681.P11684084165711227801

/-! ## A176681.P11123873418052216024

`record[6*A154712(A133310(n))]`
-/

namespace A176681.P11123873418052216024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A154712 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176681.P11123873418052216024

/-! ## A176681.P7598734138332960422

`record[6*A154712(A134478(n))]`
-/

namespace A176681.P7598734138332960422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A154712 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176681.P7598734138332960422

/-! ## A176681.P15998803871776062819

`record[6*A154712(A154958(n))]`
-/

namespace A176681.P15998803871776062819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A154712 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176681.P15998803871776062819

/-! ## A176681.P12575952805464400350

`A008588(A154712(n+1)%∑[n+3])`
-/

namespace A176681.P12575952805464400350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.tmod (A154712 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A176681.P12575952805464400350

/-! ## A176681.P8234154345947490905

`A008588(gcd(C(2, n+2), A154712(n+1)))`
-/

namespace A176681.P8234154345947490905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A154712 (n + 1)))

end

end A176681.P8234154345947490905

/-! ## A176681.P6194300364060855700

`lcm(A001221(n+2), A008588(A154712(n+1)))`
-/

namespace A176681.P6194300364060855700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A008588 (A154712 (n + 1)).toNat)

end

end A176681.P6194300364060855700

/-! ## A176681.P2387360461128519990

`A008588(A154712(n+1))%A000045(n+11)`
-/

namespace A176681.P2387360461128519990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008588 (A154712 (n + 1)).toNat) (A000045 (n + 11))

end

end A176681.P2387360461128519990

/-!
# A176682: Numbers k such that k^2 +-7 are primes.

The programs for A176682, there is no canonical definition to state claims against.
-/

/-! ## A176682.P3738232521124398755

`∩[A028882(n+1), A114270(n+1)]`
-/

namespace A176682.P3738232521124398755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176682.P3738232521124398755

/-! ## A176682.P6423912616218573726

`record[∑{d}[∏{e}[n+1, #+1], A160729(#)]]`
-/

namespace A176682.P6423912616218573726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A160729 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176682.P6423912616218573726

/-! ## A176682.P1108039210033571954

`∑[6*A071450(A000142(n))]`
-/

namespace A176682.P1108039210033571954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A071450 (A000142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176682.P1108039210033571954

/-! ## A176682.P18009572618020711391

`record[∑{d}[A028310(n), A160729(#)]]`
-/

namespace A176682.P18009572618020711391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A160729 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176682.P18009572618020711391

/-!
# A176683: Numbers k such that k^2 +-11 are primes.

The programs for A176683, there is no canonical definition to state claims against.
-/

/-! ## A176683.P11655969740371746006

`∩[A090696(n+1), A114274(n+1)]`
-/

namespace A176683.P11655969740371746006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176683.P11655969740371746006

/-!
# A176684: Numbers k such that k^3 +-5 are primes.

The programs for A176684, there is no canonical definition to state claims against.
-/

/-! ## A176684.P17996158293782970274

`root(A154713(n+1), 3)`
-/

namespace A176684.P17996158293782970274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154713 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A176684.P17996158293782970274

/-! ## A176684.P2360409197213581073

`A154713(n+1)^(A309873(n+1)²/3)`
-/

namespace A176684.P2360409197213581073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154713 (n + 1) : ℝ) ^ ((A309873 (n + 1) ^ 2 : ℚ) / 3 : ℝ)

end

end A176684.P2360409197213581073

/-! ## A176684.P120387087722253066

`A154713(n+1)^(ceil(ratio[A011782(n)]/3)/3)`
-/

namespace A176684.P120387087722253066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154713 (n + 1) : ℝ) ^ ((⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 3⌉ : ℚ) / 3 : ℝ)

end

end A176684.P120387087722253066

/-! ## A176684.P1315419399762883352

`A004151(A154713(n+1)^(1/3))`
-/

namespace A176684.P1315419399762883352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A154713 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A176684.P1315419399762883352

/-!
# A176686: Numbers n such that n^2-1 are products of 3 distinct primes.

The programs for A176686, there is no canonical definition to state claims against.
-/

/-! ## A176686.P6020201842222309326

`eq[10, A077462(A082562(n))]`
-/

namespace A176686.P6020201842222309326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176686.P6020201842222309326

/-! ## A176686.P15115399756367662791

`eq[10, A077462(A132411(n))]`
-/

namespace A176686.P15115399756367662791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A132411 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176686.P15115399756367662791

/-! ## A176686.P14043568116582556417

`eq[5, A033273(A106230(n+1))]`
-/

namespace A176686.P14043568116582556417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176686.P14043568116582556417

/-! ## A176686.P9979720228102454160

`eq[4, A281116(A081350(n))]`
-/

namespace A176686.P9979720228102454160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A081350 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176686.P9979720228102454160

/-! ## A176686.P12118109928036426794

`record[A127093(A046386(n+3)+2)]`
-/

namespace A176686.P12118109928036426794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A046386 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176686.P12118109928036426794

/-!
# A176687: Numbers k such that k^2-1 is the product of 4 distinct primes.

The programs for A176687, there is no canonical definition to state claims against.
-/

/-! ## A176687.P5926761609344732744

`eq[22, A101296(A081350(n))]`
-/

namespace A176687.P5926761609344732744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A081350 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176687.P5926761609344732744

/-! ## A176687.P557850893071963160

`eq[22, A101296(A082562(n))]`
-/

namespace A176687.P557850893071963160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176687.P557850893071963160

/-! ## A176687.P12277444161248682348

`eq[22, A101296(A106230(n+1))]`
-/

namespace A176687.P12277444161248682348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176687.P12277444161248682348

/-! ## A176687.P8745784238777304709

`eq[10, A000010(A101296(lcm(n+1, n+3)))]+2`
-/

namespace A176687.P8745784238777304709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A101296 (Nat.lcm (n + 1) (n + 3))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A176687.P8745784238777304709

/-! ## A176687.P6068479420759698120

`eq[5, A090885(2*(A184220(n+1)+1))]`
-/

namespace A176687.P6068479420759698120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (2 * (A184220 (n + 1) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176687.P6068479420759698120

/-!
# A176688: Partial sums of A058681.

The programs for A176688, there is no canonical definition to state claims against.
-/

/-! ## A176688.P15171824447505876146

`∑[A058681(n+2)]`
-/

namespace A176688.P15171824447505876146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058681 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P15171824447505876146

/-! ## A176688.P14850360112985194710

`∑[A211561(∑[n+3]+1)]`
-/

namespace A176688.P14850360112985194710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P14850360112985194710

/-! ## A176688.P11488882866341656895

`∑[A094762(n+2)-(n+3)]`
-/

namespace A176688.P11488882866341656895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094762 (n + 2) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P11488882866341656895

/-! ## A176688.P1883118570715127233

`∑[A133611(A052905(n)+9)]`
-/

namespace A176688.P1883118570715127233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P1883118570715127233

/-! ## A176688.P13247430170603795752

`∑[A133611(Δ[A008778(n)]+6)]`
-/

namespace A176688.P13247430170603795752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (f2 (n + 1) - f2 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P13247430170603795752

/-! ## A176688.P17947763229742093160

`∑[A133611(A000096(n+2)+5)]`
-/

namespace A176688.P17947763229742093160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A000096 (n + 2) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P17947763229742093160

/-! ## A176688.P8932119077058629934

`∑[A133611(A034856(n+2)+6)]`
-/

namespace A176688.P8932119077058629934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A034856 (n + 2) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P8932119077058629934

/-! ## A176688.P14543321789650883560

`∑[A133611(A046691(n+1)+8)]`
-/

namespace A176688.P14543321789650883560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A046691 (n + 1) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P14543321789650883560

/-! ## A176688.P4599440297079152832

`∑[A000110(n+3)-A020707(n)]`
-/

namespace A176688.P4599440297079152832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 3) - A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176688.P4599440297079152832

/-!
# A176689: Prime factors of 2^128 - 1.

The programs for A176689, there is no canonical definition to state claims against.
-/

/-! ## A176689.P12240013451852666085

`A050922(A340401(n))`
-/

namespace A176689.P12240013451852666085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050922 (A340401 n).toNat

end

end A176689.P12240013451852666085

/-! ## A176689.P523189882141965960

`record[A050922(A025429(n))]`
-/

namespace A176689.P523189882141965960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050922 (A025429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176689.P523189882141965960

/-! ## A176689.P13744172760848711165

`A050922(A342265(n+1))`
-/

namespace A176689.P13744172760848711165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050922 (A342265 (n + 1)).toNat

end

end A176689.P13744172760848711165

/-! ## A176689.P18202287528133706659

`A050922(A123718(n+1)-1)`
-/

namespace A176689.P18202287528133706659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050922 (A123718 (n + 1) - 1).toNat

end

end A176689.P18202287528133706659

/-! ## A176689.P5523271484594755062

`record[A050922(A327657(n+1)-1)]`
-/

namespace A176689.P5523271484594755062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050922 (A327657 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176689.P5523271484594755062

/-!
# A176690: Partial sums of A048200.

The programs for A176690, there is no canonical definition to state claims against.
-/

/-! ## A176690.P2961342976343933964

`∑[A048200(n+1)]`
-/

namespace A176690.P2961342976343933964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176690.P2961342976343933964

/-! ## A176690.P3081297903481528968

`A004525(∑[3*C(n, 2)]+∑[(n^4)%5])`
-/

namespace A176690.P3081297903481528968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A176690.P3081297903481528968

/-! ## A176690.P2133790964353998044

`A004524(floor(n^3/2))+∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A176690.P2133790964353998044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ⌊(n ^ 3 : ℚ) / 2⌋.toNat + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A176690.P2133790964353998044

/-! ## A176690.P14421225414088775479

`∑[record[A048200(A020986(n))]]`
-/

namespace A176690.P14421225414088775479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048200 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176690.P14421225414088775479

/-! ## A176690.P10698197840665912023

`∑[record[A048200(A025453(n))]]`
-/

namespace A176690.P10698197840665912023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048200 (A025453 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176690.P10698197840665912023

/-!
# A176691: a(n) = 2^n + 2*n + 1.

The programs for A176691, the canonical program `A176691.P17064043536026468314` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176691 has offset 0).

The definition of A176691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2*n+1` (program `A176691.P17064043536026468314`, by `A176691.P17064043536026468314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176691.P17064043536026468314

`2^n+2*n+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176691

/-- `2^n+2*n+1` -/
def P17064043536026468314.Spec : Prop :=
  ∀ n, (P17064043536026468314.a n : ℤ) = A176691 n

theorem P17064043536026468314.correct : P17064043536026468314.Spec := by
  intro n
  simp only [A176691]

end A176691

/-! ## A176691.P7726908437802115683

`ogf((-2+3x+x^2)/(-1+4x-5x^2+2x^3))`
-/

namespace A176691.P7726908437802115683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -1] [1, -4, 5, -2] n

end

end A176691.P7726908437802115683

namespace A176691

/-- `ogf((-2+3x+x^2)/(-1+4x-5x^2+2x^3))` -/
def P7726908437802115683.Spec : Prop :=
  ∀ n, P7726908437802115683.a n = A176691 n

end A176691

/-! ## A176691.P3261786046226722039

`record[(-sqrt(2))^n+n+1]`
-/

namespace A176691.P3261786046226722039
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (2 : ℝ)) ^ n + (n + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176691.P3261786046226722039

namespace A176691

/-- `record[(-sqrt(2))^n+n+1]` -/
def P3261786046226722039.Spec : Prop :=
  ∀ n, P3261786046226722039.a n = (A176691 n : ℝ)

end A176691

/-! ## A176691.P13279320950761573594

`∑[2*(a(n-1)-1)]` with `a(0)=2, a(1)=3`
-/

namespace A176691.P13279320950761573594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176691.P13279320950761573594

namespace A176691

/-- `∑[2*(a(n-1)-1)]` -/
def P13279320950761573594.Spec : Prop :=
  ∀ n, P13279320950761573594.a n = A176691 n

end A176691

/-! ## A176691.P10933603349303991585

`floor(2*(a(n-1)+ϕ-n))` with `a(0)=2`
-/

namespace A176691.P10933603349303991585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) + (Real.goldenRatio - (n : ℝ)))⌋

end

end A176691.P10933603349303991585

namespace A176691

/-- `floor(2*(a(n-1)+ϕ-n))` -/
def P10933603349303991585.Spec : Prop :=
  ∀ n, P10933603349303991585.a n = A176691 n

end A176691

/-! ## A176691.P11657830264174949031

`floor(2*(ϕ-(n-a(n-1))))` with `a(0)=2`
-/

namespace A176691.P11657830264174949031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊2 * (Real.goldenRatio - ((n : ℤ) - a (n - 1) : ℝ))⌋

end

end A176691.P11657830264174949031

namespace A176691

/-- `floor(2*(ϕ-(n-a(n-1))))` -/
def P11657830264174949031.Spec : Prop :=
  ∀ n, P11657830264174949031.a n = A176691 n

end A176691

/-! ## A176691.P9814210395119317834

`2*(3/2+a(n-1)-n)` with `a(0)=2`
-/

namespace A176691.P9814210395119317834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((3 : ℚ) / 2 + (a (n - 1) - (n : ℚ)))

end

end A176691.P9814210395119317834

namespace A176691

/-- `2*(3/2+a(n-1)-n)` -/
def P9814210395119317834.Spec : Prop :=
  ∀ n, P9814210395119317834.a n = (A176691 n : ℚ)

theorem P9814210395119317834.correct : P9814210395119317834.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176691, Nat.add_sub_cancel, A176691.P9814210395119317834.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176691, Nat.add_sub_cancel, A176691.P9814210395119317834.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176691

/-! ## A176691.P17064059005146168300

`2*(3/2-(n-a(n-1)))` with `a(0)=2`
-/

namespace A176691.P17064059005146168300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((3 : ℚ) / 2 - ((n : ℚ) - a (n - 1)))

end

end A176691.P17064059005146168300

namespace A176691

/-- `2*(3/2-(n-a(n-1)))` -/
def P17064059005146168300.Spec : Prop :=
  ∀ n, P17064059005146168300.a n = (A176691 n : ℚ)

theorem P17064059005146168300.correct : P17064059005146168300.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176691, Nat.add_sub_cancel, A176691.P17064059005146168300.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176691, Nat.add_sub_cancel, A176691.P17064059005146168300.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176691

/-! ## A176691.P5464746175837562596

`∑[a(n-1)+2^(n-2)]` with `a(0)=2, a(1)=3`
-/

namespace A176691.P5464746175837562596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176691.P5464746175837562596

namespace A176691

/-- `∑[a(n-1)+2^(n-2)]` -/
def P5464746175837562596.Spec : Prop :=
  ∀ n, P5464746175837562596.a n = (A176691 n : ℚ)

end A176691

/-! ## A176691.P8153655615315604791

`floor(2*a(n-1)+3-2*n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A176691.P8153655615315604791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + (3 - (2 * n : ℤ))

end

end A176691.P8153655615315604791

namespace A176691

/-- `floor(2*a(n-1)+3-2*n)` -/
def P8153655615315604791.Spec : Prop :=
  ∀ n, P8153655615315604791.a n = A176691 n

theorem P8153655615315604791.correct : P8153655615315604791.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176691, Nat.add_sub_cancel, A176691.P8153655615315604791.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176691, Nat.add_sub_cancel, A176691.P8153655615315604791.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176691

/-! ## A176691.P4882416509561866284

`floor(2*a(n-1)-(n-3)-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A176691.P4882416509561866284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 3) - (n : ℤ)

end

end A176691.P4882416509561866284

namespace A176691

/-- `floor(2*a(n-1)-(n-3)-n)` -/
def P4882416509561866284.Spec : Prop :=
  ∀ n, P4882416509561866284.a n = A176691 n

theorem P4882416509561866284.correct : P4882416509561866284.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176691, Nat.add_sub_cancel, A176691.P4882416509561866284.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176691, Nat.add_sub_cancel, A176691.P4882416509561866284.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176691

/-! ## A176691.P12827954599269164600

`∑[floor(a(n-1)+a(n-1)-2)]` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A176691.P12827954599269164600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176691.P12827954599269164600

namespace A176691

/-- `∑[floor(a(n-1)+a(n-1)-2)]` -/
def P12827954599269164600.Spec : Prop :=
  ∀ n, P12827954599269164600.a n = A176691 n

end A176691

/-! ## A176691.P3006460939417835182

`∑[floor(a(n-1)-(2-a(n-1)))]` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A176691.P3006460939417835182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176691.P3006460939417835182

namespace A176691

/-- `∑[floor(a(n-1)-(2-a(n-1)))]` -/
def P3006460939417835182.Spec : Prop :=
  ∀ n, P3006460939417835182.a n = A176691 n

end A176691

/-! ## A176691.P854040387974634874

`floor(3-n+a(n-1)+a(n-1)-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A176691.P854040387974634874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 - (n : ℤ) + (a (n - 1) + (a (n - 1) - (n : ℤ)))

end

end A176691.P854040387974634874

namespace A176691

/-- `floor(3-n+a(n-1)+a(n-1)-n)` -/
def P854040387974634874.Spec : Prop :=
  ∀ n, P854040387974634874.a n = A176691 n

theorem P854040387974634874.correct : P854040387974634874.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176691, Nat.add_sub_cancel, A176691.P854040387974634874.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176691, Nat.add_sub_cancel, A176691.P854040387974634874.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176691

/-! ## A176691.P15951711255865826510

`floor(3-(n-a(n-1)-a(n-1))-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A176691.P15951711255865826510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 - ((n : ℤ) - a (n - 1) - a (n - 1)) - (n : ℤ)

end

end A176691.P15951711255865826510

namespace A176691

/-- `floor(3-(n-a(n-1)-a(n-1))-n)` -/
def P15951711255865826510.Spec : Prop :=
  ∀ n, P15951711255865826510.a n = A176691 n

theorem P15951711255865826510.correct : P15951711255865826510.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176691, Nat.add_sub_cancel, A176691.P15951711255865826510.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176691, Nat.add_sub_cancel, A176691.P15951711255865826510.a, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176691

/-! ## A176691.P15968302010547633662

`∑[A056469(n)]`
-/

namespace A176691.P15968302010547633662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176691.P15968302010547633662

namespace A176691

/-- `∑[A056469(n)]` -/
def P15968302010547633662.Spec : Prop :=
  ∀ n, P15968302010547633662.a n = A176691 n

end A176691

/-!
# A176692: Partial sums of A000617.

The programs for A176692, there is no canonical definition to state claims against.
-/

/-! ## A176692.P8800054427308149691

`∑[A000617(n)]`
-/

namespace A176692.P8800054427308149691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176692.P8800054427308149691

/-! ## A176692.P6508118260108678751

`∑[∑[A000619(n)]]`
-/

namespace A176692.P6508118260108678751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176692.P6508118260108678751

/-! ## A176692.P17805570003348435522

`A000617(n)+a(A235049(n))` with `a(0)=2`
-/

namespace A176692.P17805570003348435522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000617 n + a (A235049 n).toNat

end

end A176692.P17805570003348435522

/-! ## A176692.P16074618234024070914

`A000617(n)+a(A056064(n+1)-2)` with `a(0)=2`
-/

namespace A176692.P16074618234024070914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000617 n + a (A056064 (n + 1) - 2).toNat

end

end A176692.P16074618234024070914

/-!
# A176693: Union of squares and the even numbers.

The programs for A176693, the canonical program `A176693.P3589519140441633409` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176693 has offset 1).

The definition of A176693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176693.P3589519140441633409

`∪[2*n, n²]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176693

/-- `∪[2*n, n²]` -/
def P3589519140441633409.Spec : Prop :=
  ∀ n, (P3589519140441633409.a n : ℤ) = A176693 (n + 1)

theorem P3589519140441633409.correct : P3589519140441633409.Spec := by
  intro n
  simp only [A176693, Nat.add_sub_cancel]

end A176693

/-! ## A176693.P14066889971245456019

`comp[or(1, comp[∑[n]]+n)]`
-/

namespace A176693.P14066889971245456019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A176693.P14066889971245456019

namespace A176693

/-- `comp[or(1, comp[∑[n]]+n)]` -/
def P14066889971245456019.Spec : Prop :=
  ∀ n, (P14066889971245456019.a n : ℤ) = A176693 (n + 1)

end A176693

/-! ## A176693.P8358032365106850048

`comp[2*comp[∑[4*n]]+1]`
-/

namespace A176693.P8358032365106850048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A176693.P8358032365106850048

namespace A176693

/-- `comp[2*comp[∑[4*n]]+1]` -/
def P8358032365106850048.Spec : Prop :=
  ∀ n, (P8358032365106850048.a n : ℤ) = A176693 (n + 1)

end A176693

/-! ## A176693.P5538427904861341555

`lt[ceil(sqrt(n))², lcm(2, n+1)]`
-/

namespace A176693.P5538427904861341555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A176693.P5538427904861341555

namespace A176693

/-- `lt[ceil(sqrt(n))², lcm(2, n+1)]` -/
def P5538427904861341555.Spec : Prop :=
  ∀ n, (P5538427904861341555.a n : ℤ) = A176693 (n + 1)

end A176693

/-! ## A176693.P5443432271589363164

`∪[2*n+1, ∑[2*n-1]]+1`
-/

namespace A176693.P5443432271589363164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A176693.P5443432271589363164

namespace A176693

/-- `∪[2*n+1, ∑[2*n-1]]+1` -/
def P5443432271589363164.Spec : Prop :=
  ∀ n, (P5443432271589363164.a n : ℤ) = A176693 (n + 1)

end A176693

/-! ## A176693.P12554400643862238886

`∪[∑[2*n+1], 2*n]%(2*n+1)`
-/

namespace A176693.P12554400643862238886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n % (2 * n + 1)

end

end A176693.P12554400643862238886

namespace A176693

/-- `∪[∑[2*n+1], 2*n]%(2*n+1)` -/
def P12554400643862238886.Spec : Prop :=
  ∀ n, (P12554400643862238886.a n : ℤ) = A176693 (n + 1)

end A176693

/-! ## A176693.P9997639656817248758

`eq[1, A354034(n)]`
-/

namespace A176693.P9997639656817248758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176693.P9997639656817248758

namespace A176693

/-- `eq[1, A354034(n)]` -/
def P9997639656817248758.Spec : Prop :=
  ∀ n, (P9997639656817248758.a n : ℤ) = A176693 (n + 1)

end A176693

/-! ## A176693.P15825528669047124450

`eq[A098108(n), A135481(n)]`
-/

namespace A176693.P15825528669047124450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176693.P15825528669047124450

namespace A176693

/-- `eq[A098108(n), A135481(n)]` -/
def P15825528669047124450.Spec : Prop :=
  ∀ n, (P15825528669047124450.a n : ℤ) = A176693 (n + 1)

end A176693

/-! ## A176693.P14713739522686984099

`filter[A047412(n+1), A354034(#)]`
-/

namespace A176693.P14713739522686984099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P14713739522686984099

namespace A176693

/-- `filter[A047412(n+1), A354034(#)]` -/
def P14713739522686984099.Spec : Prop :=
  ∀ n, P14713739522686984099.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P9740167795634842463

`filter[A374049(n+1), A354034(#)]`
-/

namespace A176693.P9740167795634842463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P9740167795634842463

namespace A176693

/-- `filter[A374049(n+1), A354034(#)]` -/
def P9740167795634842463.Spec : Prop :=
  ∀ n, P9740167795634842463.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P2896714589152494243

`filter[A004773(n), A354034(#)]`
-/

namespace A176693.P2896714589152494243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P2896714589152494243

namespace A176693

/-- `filter[A004773(n), A354034(#)]` -/
def P2896714589152494243.Spec : Prop :=
  ∀ n, P2896714589152494243.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P16081609875083466692

`filter[A047513(n+1), A354034(#)]`
-/

namespace A176693.P16081609875083466692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P16081609875083466692

namespace A176693

/-- `filter[A047513(n+1), A354034(#)]` -/
def P16081609875083466692.Spec : Prop :=
  ∀ n, P16081609875083466692.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P12326281515440205238

`filter[A047420(n+1), A354034(#)]`
-/

namespace A176693.P12326281515440205238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P12326281515440205238

namespace A176693

/-- `filter[A047420(n+1), A354034(#)]` -/
def P12326281515440205238.Spec : Prop :=
  ∀ n, P12326281515440205238.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P7684349893879755247

`filter[A151988(n), A354034(#)]`
-/

namespace A176693.P7684349893879755247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P7684349893879755247

namespace A176693

/-- `filter[A151988(n), A354034(#)]` -/
def P7684349893879755247.Spec : Prop :=
  ∀ n, P7684349893879755247.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P8547907759870701647

`filter[A047226(n+1), A354034(#)]`
-/

namespace A176693.P8547907759870701647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P8547907759870701647

namespace A176693

/-- `filter[A047226(n+1), A354034(#)]` -/
def P8547907759870701647.Spec : Prop :=
  ∀ n, P8547907759870701647.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P4205820645021430786

`filter[A047573(n+1), A354034(#)]`
-/

namespace A176693.P4205820645021430786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P4205820645021430786

namespace A176693

/-- `filter[A047573(n+1), A354034(#)]` -/
def P4205820645021430786.Spec : Prop :=
  ∀ n, P4205820645021430786.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P9006809931017262647

`filter[A004775(n+1), A354034(#)]`
-/

namespace A176693.P9006809931017262647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P9006809931017262647

namespace A176693

/-- `filter[A004775(n+1), A354034(#)]` -/
def P9006809931017262647.Spec : Prop :=
  ∀ n, P9006809931017262647.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P5785919554549302781

`filter[A004776(n+1), A354034(#)]`
-/

namespace A176693.P5785919554549302781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P5785919554549302781

namespace A176693

/-- `filter[A004776(n+1), A354034(#)]` -/
def P5785919554549302781.Spec : Prop :=
  ∀ n, P5785919554549302781.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P7112211062470588964

`filter[A004777(n+1), A354034(#)]`
-/

namespace A176693.P7112211062470588964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P7112211062470588964

namespace A176693

/-- `filter[A004777(n+1), A354034(#)]` -/
def P7112211062470588964.Spec : Prop :=
  ∀ n, P7112211062470588964.a n = A176693 (n + 1)

end A176693

/-! ## A176693.P10534539957848127444

`filter[A173905(n+1), A354034(#)]`
-/

namespace A176693.P10534539957848127444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A176693.P10534539957848127444

namespace A176693

/-- `filter[A173905(n+1), A354034(#)]` -/
def P10534539957848127444.Spec : Prop :=
  ∀ n, P10534539957848127444.a n = A176693 (n + 1)

end A176693

/-!
# A176695: Primes of the form x^2 + 29*(x+1)^2.

The programs for A176695, there is no canonical definition to state claims against.
-/

/-! ## A176695.P17323729828875452385

`∩[A033219(n+1), A393681(n)]`
-/

namespace A176695.P17323729828875452385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393681 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176695.P17323729828875452385

/-! ## A176695.P12744820163559433718

`p?[n²+29*(n+1)²]`
-/

namespace A176695.P12744820163559433718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 29 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176695.P12744820163559433718

/-! ## A176695.P9738649482924666861

`or(1, p?[A158558(n)-A005843(n)])`
-/

namespace A176695.P9738649482924666861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176695.P9738649482924666861

/-! ## A176695.P17075723918600653690

`∑{p}[p?[A316724(n)+A000217(3*n+4)], #]`
-/

namespace A176695.P17075723918600653690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316724 n + A000217 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A176695.P17075723918600653690

/-! ## A176695.P10822494633154089398

`A106400(n)²*p?[A158558(n)-A005843(n)]`
-/

namespace A176695.P10822494633154089398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176695.P10822494633154089398

/-!
# A176696: E.g.f.: exp(6*arcsin(x))-6*arcsin(x).

The programs for A176696, there is no canonical definition to state claims against.
-/

/-! ## A176696.P9468761820172744310

`record[A330989(n)]*A307333(n+3)`
-/

namespace A176696.P9468761820172744310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A307333 (n + 3)

end

end A176696.P9468761820172744310

/-!
# A176697: G.f. satisfies: A(x) = 1 + x^2 + x*A(x)^2.

The programs for A176697, there is no canonical definition to state claims against.
-/

/-! ## A176697.P2209005056802992518

`A176701(∑[n]+n)`
-/

namespace A176697.P2209005056802992518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176701 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A176697.P2209005056802992518

/-! ## A176697.P7250509579777009336

`abs(A176701(A000096(n)))`
-/

namespace A176697.P7250509579777009336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176701 (A000096 n).toNat|

end

end A176697.P7250509579777009336

/-! ## A176697.P17192946015357284092

`abs(A176701(A061579(∑[n])))`
-/

namespace A176697.P17192946015357284092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176701 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A176697.P17192946015357284092

/-! ## A176697.P2097869522537307586

`abs(A176701(record[A061579(n)]))`
-/

namespace A176697.P2097869522537307586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A176697.P2097869522537307586

/-!
# A176698: A symmetrical sum triangle sequence:a(n)=vector(a(n-1)).Reverse(vector(a(n-1));a(0)=1;a(1)=2;t(n,m)=2+a(n)-a(m)-a(n-m).

The programs for A176698, there is no canonical definition to state claims against.
-/

/-! ## A176698.P5045478155490068917

`A045912(A004874(n+1))%37-A005131(A045912(n))`
-/

namespace A176698.P5045478155490068917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045912 (A004874 (n + 1)).toNat) 37 - A005131 (A045912 n).toNat

end

end A176698.P5045478155490068917

/-!
# A176699: Fermi-Dirac composite numbers that are not a sum of two Fermi-Dirac primes (A050376).

The programs for A176699, there is no canonical definition to state claims against.
-/

/-! ## A176699.P14294351532325469225

`A146564(A128353(n+4))+A092125(n+3)`
-/

namespace A176699.P14294351532325469225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (A128353 (n + 4)).toNat + A092125 (n + 3)

end

end A176699.P14294351532325469225

/-! ## A176699.P8339585490402224215

`A082131(n+3)+A000005(A246491(n+5))`
-/

namespace A176699.P8339585490402224215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 3) + A000005 (A246491 (n + 5)).toNat

end

end A176699.P8339585490402224215

