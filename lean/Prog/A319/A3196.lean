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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A319600: Number T(n,k) of plane partitions of n into parts of exactly k sorts; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319600, there is no canonical definition to state claims against.
-/

/-! ## A319600.P4849884251163732309

`A233543(n)*A319730(n)`
-/

namespace A319600.P4849884251163732309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A319730 n

end

end A319600.P4849884251163732309

/-! ## A319600.P4221525797777947562

`A002262(n)!*A319730(n)`
-/

namespace A319600.P4221525797777947562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A319730 n

end

end A319600.P4221525797777947562

/-! ## A319600.P6722641959112469083

`A144328(n+1)!*A319730(n)`
-/

namespace A319600.P6722641959112469083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A319730 n

end

end A319600.P6722641959112469083

/-! ## A319600.P12271766123063507561

`A119502(A061579(n))*A319730(n)`
-/

namespace A319600.P12271766123063507561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A319730 n

end

end A319600.P12271766123063507561

/-! ## A319600.P8187834142635798786

`A166350(A028310(n))*A319730(n)`
-/

namespace A319600.P8187834142635798786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A028310 n).toNat * A319730 n

end

end A319600.P8187834142635798786

/-! ## A319600.P15014478608277175608

`A023443(A002260(n+1))!*A319730(n)`
-/

namespace A319600.P15014478608277175608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A023443 (A002260 (n + 1)).toNat).toNat : ℤ) * A319730 n

end

end A319600.P15014478608277175608

/-! ## A319600.P3792178483532801471

`A166350(A233583(n+1))*A319730(n)`
-/

namespace A319600.P3792178483532801471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A233583 (n + 1)).toNat * A319730 n

end

end A319600.P3792178483532801471

/-! ## A319600.P15349455678308893023

`A265312(A245300(n))*A319730(n)`
-/

namespace A319600.P15349455678308893023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265312 (A245300 n).toNat * A319730 n

end

end A319600.P15349455678308893023

/-! ## A319600.P2710871524606611053

`A265312(A292564(n))*A319730(n)`
-/

namespace A319600.P2710871524606611053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265312 (A292564 n).toNat * A319730 n

end

end A319600.P2710871524606611053

/-! ## A319600.P4151630235385879894

`A112624(A059268(n))*A319730(n)`
-/

namespace A319600.P4151630235385879894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A319730 n

end

end A319600.P4151630235385879894

/-!
# A319601: Number of plane partitions of n into parts of sorts {1, 2, ... }.

The programs for A319601, there is no canonical definition to state claims against.
-/

/-! ## A319601.P839083733564893346

`A192051((C(n, 2)+1)²+1)`
-/

namespace A319601.P839083733564893346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192051 ((Nat.choose n 2 + 1) ^ 2 + 1)

end

end A319601.P839083733564893346

/-!
# A319602: Numbers with at least two representations as truncated triangular numbers.

The programs for A319602, there is no canonical definition to state claims against.
-/

/-! ## A319602.P18382739451616483580

`lt[2, A035194(abs(1-4*n))]`
-/

namespace A319602.P18382739451616483580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035194 |1 - (4 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A319602.P18382739451616483580

/-! ## A319602.P4217855364524545589

`lt[2, A035186(4*n+3)]+1`
-/

namespace A319602.P4217855364524545589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A319602.P4217855364524545589

/-! ## A319602.P13435431440402501740

`lt[2, A035186(A131098(n+1))]`
-/

namespace A319602.P13435431440402501740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A131098 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A319602.P13435431440402501740

/-! ## A319602.P17702991805699620818

`lt[2, A035186(A004280(2*n+1))]`
-/

namespace A319602.P17702991805699620818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A004280 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A319602.P17702991805699620818

/-!
# A319603: a(n) = n^3 + reversal of digits of n^3.

The programs for A319603, there is no canonical definition to state claims against.
-/

/-! ## A319603.P11584708623764087912

`A004086(n^3)+n^3`
-/

namespace A319603.P11584708623764087912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 3) + (n ^ 3 : ℤ)

end

end A319603.P11584708623764087912

/-! ## A319603.P1889284883236945035

`n*n²+A004086(n*n²)`
-/

namespace A319603.P1889284883236945035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) + A004086 (n * n ^ 2)

end

end A319603.P1889284883236945035

/-! ## A319603.P8415623734245123990

`A056964(n^3)`
-/

namespace A319603.P8415623734245123990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n ^ 3)

end

end A319603.P8415623734245123990

/-! ## A319603.P2335897811767700581

`or(char[3], A056964(n*n²))`
-/

namespace A319603.P2335897811767700581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A056964 (n * n ^ 2))

end

end A319603.P2335897811767700581

/-! ## A319603.P16306387041195376

`and(-1, A056964(A000578(n)))`
-/

namespace A319603.P16306387041195376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A056964 (A000578 n).toNat)

end

end A319603.P16306387041195376

/-!
# A319605: a(1) = 1, and for n > 1, a(n) is the least prime power of the form p^k >= n where p is a prime factor of n.

The programs for A319605, there is no canonical definition to state claims against.
-/

/-! ## A319605.P474960795848473473

`A034684(A064446(n+1)*A340679(n+1))`
-/

namespace A319605.P474960795848473473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A064446 (n + 1) * A340679 (n + 1)).toNat

end

end A319605.P474960795848473473

/-!
# A319607: Sum of the n-th powers of the numbers of standard Young tableaux over all partitions of n.

The programs for A319607, there is no canonical definition to state claims against.
-/

/-! ## A319607.P4829237785685760886

`A208447(∑[4*n])`
-/

namespace A319607.P4829237785685760886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319607.P4829237785685760886

/-! ## A319607.P2294011863853982741

`A007318(C(2, n))*A208447(A106232(n+1))`
-/

namespace A319607.P2294011863853982741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A208447 (A106232 (n + 1)).toNat

end

end A319607.P2294011863853982741

/-! ## A319607.P8866530797324273527

`A208447(A106232(n+1))^A000041(C(2, n))`
-/

namespace A319607.P8866530797324273527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208447 (A106232 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A319607.P8866530797324273527

/-! ## A319607.P11480707186823016808

`A208447(A106232(n+1))^A007318(∑[n+1])`
-/

namespace A319607.P11480707186823016808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208447 (A106232 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A319607.P11480707186823016808

/-! ## A319607.P9091236327958831713

`A014963(6*(n+1))*A208447(A106232(n+1))`
-/

namespace A319607.P9091236327958831713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A208447 (A106232 (n + 1)).toNat

end

end A319607.P9091236327958831713

/-!
# A319608: Irregular triangle read by rows: T(n,k) is the number of irreducible numerical semigroups with Frobenius number n and k minimal generators less than n/2.

The programs for A319608, there is no canonical definition to state claims against.
-/

/-! ## A319608.P15966559145585134936

`gcd(A173557(n+1), A385539(A056239(3*n+5)))`
-/

namespace A319608.P15966559145585134936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173557 (n + 1)) (A385539 (A056239 (3 * n + 5)).toNat)

end

end A319608.P15966559145585134936

/-!
# A319609: Numbers in base 10 that are palindromic in bases 4, 8 and 16.

The programs for A319609, there is no canonical definition to state claims against.
-/

/-! ## A319609.P5312057064020416950

`∩[A029730(n+1), A259382(n+1)]`
-/

namespace A319609.P5312057064020416950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319609.P5312057064020416950

/-! ## A319609.P6341538558661930430

`record[A000740(n+1)%A140335(n+1)]`
-/

namespace A319609.P6341538558661930430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000740 (n + 1)) (A140335 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319609.P6341538558661930430

/-!
# A319610: a(n) is the minimal number of successive OFF cells that appears in n-th generation of rule-30 1D cellular automaton started from a single ON cell.

The programs for A319610, the canonical program `A319610.P7561952724239552141` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319610 has offset 0).

The definition of A319610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319610.P7561952724239552141

`ceil(acot(and(n-2, -7)))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319610

/-- `ceil(acot(and(n-2, -7)))` -/
def P7561952724239552141.Spec : Prop :=
  ∀ n, P7561952724239552141.a n = A319610 n

theorem P7561952724239552141.correct : P7561952724239552141.Spec := by
  intro n
  simp only [A319610]

end A319610

/-!
# A319611: a(n) is the number of gaps in the n-th generation of the rule-30 1D cellular automaton started from a single ON.

The programs for A319611, there is no canonical definition to state claims against.
-/

/-! ## A319611.P10312281807944969693

`floor(A226482(n)/2)`
-/

namespace A319611.P10312281807944969693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226482 n : ℚ) / 2⌋

end

end A319611.P10312281807944969693

/-! ## A319611.P12012361204083331008

`A110266(n+1)-1`
-/

namespace A319611.P12012361204083331008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (n + 1) - 1

end

end A319611.P12012361204083331008

/-! ## A319611.P7418831991113069087

`A004524(A226482(n))`
-/

namespace A319611.P7418831991113069087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A226482 n).toNat

end

end A319611.P7418831991113069087

/-! ## A319611.P5590642621116332914

`A023443(A110266(n+1))`
-/

namespace A319611.P5590642621116332914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A110266 (n + 1)).toNat

end

end A319611.P5590642621116332914

/-! ## A319611.P8292209554204712276

`A140106(A226482(n)+1)`
-/

namespace A319611.P8292209554204712276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A226482 n + 1).toNat

end

end A319611.P8292209554204712276

/-! ## A319611.P15360252763179517523

`A001281(A226482(n)-1)`
-/

namespace A319611.P15360252763179517523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A226482 n - 1).toNat

end

end A319611.P15360252763179517523

/-! ## A319611.P11388489751725929212

`A004525(A226482(n)-1)`
-/

namespace A319611.P11388489751725929212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A226482 n - 1).toNat

end

end A319611.P11388489751725929212

/-! ## A319611.P13646469075338283462

`A026741(A226482(n)-1)`
-/

namespace A319611.P13646469075338283462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A226482 n - 1).toNat

end

end A319611.P13646469075338283462

/-! ## A319611.P8141928666692706754

`A002265(2*A226482(n))`
-/

namespace A319611.P8141928666692706754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A226482 n).toNat

end

end A319611.P8141928666692706754

/-! ## A319611.P3533916149907600362

`A002265(lcm(2, A226482(n)))`
-/

namespace A319611.P3533916149907600362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 2 (A226482 n))

end

end A319611.P3533916149907600362

/-!
# A319612: Number of regular simple graphs spanning n vertices.

The programs for A319612, there is no canonical definition to state claims against.
-/

/-! ## A319612.P956394205638235873

`A295193(n)-a(floor(acot(n)²))` with `a(0)=1`
-/

namespace A319612.P956394205638235873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295193 n - a ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋.toNat

end

end A319612.P956394205638235873

/-! ## A319612.P3171188787676909497

`A295193(A028310(n))+A057428(n)`
-/

namespace A319612.P3171188787676909497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295193 (A028310 n).toNat + A057428 n

end

end A319612.P3171188787676909497

/-! ## A319612.P4578115749719544107

`A295193(A028310(n))-A057427(n)`
-/

namespace A319612.P4578115749719544107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295193 (A028310 n).toNat - A057427 n

end

end A319612.P4578115749719544107

/-! ## A319612.P1564481664637181462

`A295193(A028310(n))-A178334(n)`
-/

namespace A319612.P1564481664637181462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295193 (A028310 n).toNat - A178334 n

end

end A319612.P1564481664637181462

/-! ## A319612.P14133766158722579144

`A295193(1-A057427(n)+n)-A057427(n)`
-/

namespace A319612.P14133766158722579144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295193 (1 - A057427 n + (n : ℤ)).toNat - A057427 n

end

end A319612.P14133766158722579144

/-!
# A319613: a(n) = prime(n) * prime(2n).

The programs for A319613, the canonical program `A319613.P13901213373723697006` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319613 has offset 1).

The definition of A319613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319613.P9953245113069355550

`Δ[A007504(n)]*A031215(n+1)`
-/

namespace A319613.P9953245113069355550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A031215 (n + 1)

end

end A319613.P9953245113069355550

namespace A319613

/-- `Δ[A007504(n)]*A031215(n+1)` -/
def P9953245113069355550.Spec : Prop :=
  ∀ n, P9953245113069355550.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P10219773532798216239

`A072672(n+1)-A092390(n+1)`
-/

namespace A319613.P10219773532798216239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072672 (n + 1) - A092390 (n + 1)

end

end A319613.P10219773532798216239

namespace A319613

/-- `A072672(n+1)-A092390(n+1)` -/
def P10219773532798216239.Spec : Prop :=
  ∀ n, P10219773532798216239.a n = A319613 (n + 1)

theorem P10219773532798216239.correct : P10219773532798216239.Spec := by
  intro n
  simp only [A319613, Nat.add_sub_cancel, A319613.P10219773532798216239.a, A319613.P13901213373723697006.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A072672, A072672.P5338413225751562220.a, A092390, A092390.P6063614975695933482.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319613

/-! ## A319613.P13901213373723697006

`A000040(n+1)*A031215(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319613

/-- `A000040(n+1)*A031215(n+1)` -/
def P13901213373723697006.Spec : Prop :=
  ∀ n, P13901213373723697006.a n = A319613 (n + 1)

theorem P13901213373723697006.correct : P13901213373723697006.Spec := by
  intro n
  simp only [A319613, Nat.add_sub_cancel]

end A319613

/-! ## A319613.P9395267603619495808

`abs(Δ[A022837(n)]*A031215(n+1))`
-/

namespace A319613.P9395267603619495808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A031215 (n + 1)|

end

end A319613.P9395267603619495808

namespace A319613

/-- `abs(Δ[A022837(n)]*A031215(n+1))` -/
def P9395267603619495808.Spec : Prop :=
  ∀ n, P9395267603619495808.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P10338087289291887085

`sqrt(A001248(n+1))*A031215(n+1)`
-/

namespace A319613.P10338087289291887085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A031215 (n + 1) : ℝ)

end

end A319613.P10338087289291887085

namespace A319613

/-- `sqrt(A001248(n+1))*A031215(n+1)` -/
def P10338087289291887085.Spec : Prop :=
  ∀ n, P10338087289291887085.a n = (A319613 (n + 1) : ℝ)

end A319613

/-! ## A319613.P10784933863925358420

`∑[A054541(n+1)]*A031215(n+1)`
-/

namespace A319613.P10784933863925358420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A031215 (n + 1)

end

end A319613.P10784933863925358420

namespace A319613

/-- `∑[A054541(n+1)]*A031215(n+1)` -/
def P10784933863925358420.Spec : Prop :=
  ∀ n, P10784933863925358420.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P9417941363383386606

`(A040976(n+1)+2)*A031215(n+1)`
-/

namespace A319613.P9417941363383386606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A031215 (n + 1)

end

end A319613.P9417941363383386606

namespace A319613

/-- `(A040976(n+1)+2)*A031215(n+1)` -/
def P9417941363383386606.Spec : Prop :=
  ∀ n, P9417941363383386606.a n = A319613 (n + 1)

theorem P9417941363383386606.correct : P9417941363383386606.Spec := by
  intro n
  simp only [A319613, Nat.add_sub_cancel, A319613.P9417941363383386606.a, A319613.P13901213373723697006.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A040976, A040976.P11599754272797435513.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319613

/-! ## A319613.P6963197024171307712

`(A052147(n+1)-2)*A031215(n+1)`
-/

namespace A319613.P6963197024171307712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A031215 (n + 1)

end

end A319613.P6963197024171307712

namespace A319613

/-- `(A052147(n+1)-2)*A031215(n+1)` -/
def P6963197024171307712.Spec : Prop :=
  ∀ n, P6963197024171307712.a n = A319613 (n + 1)

theorem P6963197024171307712.correct : P6963197024171307712.Spec := by
  intro n
  simp only [A319613, Nat.add_sub_cancel, A319613.P6963197024171307712.a, A319613.P13901213373723697006.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319613

/-! ## A319613.P6090787409052939955

`A031215(n+1)/2*A100484(n+1)`
-/

namespace A319613.P6090787409052939955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) : ℚ) / 2 * (A100484 (n + 1) : ℚ)

end

end A319613.P6090787409052939955

namespace A319613

/-- `A031215(n+1)/2*A100484(n+1)` -/
def P6090787409052939955.Spec : Prop :=
  ∀ n, P6090787409052939955.a n = (A319613 (n + 1) : ℚ)

theorem P6090787409052939955.correct : P6090787409052939955.Spec := by
  intro n
  simp only [A319613, Nat.add_sub_cancel, A319613.P6090787409052939955.a, A319613.P13901213373723697006.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A100484, A100484.P9678625670825099636.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319613

/-! ## A319613.P7330807358827123914

`(A175222(n+1)-5)*A031215(n+1)`
-/

namespace A319613.P7330807358827123914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175222 (n + 1) - 5) * A031215 (n + 1)

end

end A319613.P7330807358827123914

namespace A319613

/-- `(A175222(n+1)-5)*A031215(n+1)` -/
def P7330807358827123914.Spec : Prop :=
  ∀ n, P7330807358827123914.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P11461300831861182786

`(A008347(n+1)+A008347(n))*A031215(n+1)`
-/

namespace A319613.P11461300831861182786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008347 (n + 1) + A008347 n) * A031215 (n + 1)

end

end A319613.P11461300831861182786

namespace A319613

/-- `(A008347(n+1)+A008347(n))*A031215(n+1)` -/
def P11461300831861182786.Spec : Prop :=
  ∀ n, P11461300831861182786.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P12577628026266075563

`(A007504(n+1)-A007504(n))*A031215(n+1)`
-/

namespace A319613.P12577628026266075563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A031215 (n + 1)

end

end A319613.P12577628026266075563

namespace A319613

/-- `(A007504(n+1)-A007504(n))*A031215(n+1)` -/
def P12577628026266075563.Spec : Prop :=
  ∀ n, P12577628026266075563.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P9556968409711780640

`(A031215(n+1)-A072473(n+1))*A031215(n+1)`
-/

namespace A319613.P9556968409711780640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) - A072473 (n + 1)) * A031215 (n + 1)

end

end A319613.P9556968409711780640

namespace A319613

/-- `(A031215(n+1)-A072473(n+1))*A031215(n+1)` -/
def P9556968409711780640.Spec : Prop :=
  ∀ n, P9556968409711780640.a n = A319613 (n + 1)

theorem P9556968409711780640.correct : P9556968409711780640.Spec := by
  intro n
  simp only [A319613, Nat.add_sub_cancel, A319613.P9556968409711780640.a, A319613.P13901213373723697006.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A072473, A072473.P3407629193092000128.a, A066066, A066066.P11585399840041140735.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319613

/-! ## A319613.P9867757597414696988

`(A031336(n+1)-A275988(n+1))*A031215(n+1)`
-/

namespace A319613.P9867757597414696988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031336 (n + 1) - A275988 (n + 1)) * A031215 (n + 1)

end

end A319613.P9867757597414696988

namespace A319613

/-- `(A031336(n+1)-A275988(n+1))*A031215(n+1)` -/
def P9867757597414696988.Spec : Prop :=
  ∀ n, P9867757597414696988.a n = A319613 (n + 1)

theorem P9867757597414696988.correct : P9867757597414696988.Spec := by
  intro n
  simp only [A319613, Nat.add_sub_cancel, A319613.P9867757597414696988.a, A319613.P13901213373723697006.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A031336, A031336.P9356925525958720186.a, A275988, A275988.P2515707421048682127.a, A001748, A001748.P16019639290970068825.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319613

/-! ## A319613.P17998893416932554944

`A031215(n+1)/A031368(n+1)*A219603(n+1)`
-/

namespace A319613.P17998893416932554944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) : ℚ) / (A031368 (n + 1) : ℚ) * (A219603 (n + 1) : ℚ)

end

end A319613.P17998893416932554944

namespace A319613

/-- `A031215(n+1)/A031368(n+1)*A219603(n+1)` -/
def P17998893416932554944.Spec : Prop :=
  ∀ n, P17998893416932554944.a n = (A319613 (n + 1) : ℚ)

end A319613

/-! ## A319613.P1266204803752167619

`A008578(n+2)*A031215(n+1)`
-/

namespace A319613.P1266204803752167619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A031215 (n + 1)

end

end A319613.P1266204803752167619

namespace A319613

/-- `A008578(n+2)*A031215(n+1)` -/
def P1266204803752167619.Spec : Prop :=
  ∀ n, P1266204803752167619.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P6585119021383597961

`A000040(n+1)*p?[A066207(n+1)]`
-/

namespace A319613.P6585119021383597961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319613.P6585119021383597961

namespace A319613

/-- `A000040(n+1)*p?[A066207(n+1)]` -/
def P6585119021383597961.Spec : Prop :=
  ∀ n, P6585119021383597961.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P1390492378189945368

`A000040(n+1)*A065091(Δ[n²])`
-/

namespace A319613.P1390492378189945368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A319613.P1390492378189945368

namespace A319613

/-- `A000040(n+1)*A065091(Δ[n²])` -/
def P1390492378189945368.Spec : Prop :=
  ∀ n, P1390492378189945368.a n = A319613 (n + 1)

end A319613

/-! ## A319613.P4998541463177428298

`A000040(2*(n+1))*Δ[A007504(n)]`
-/

namespace A319613.P4998541463177428298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A319613.P4998541463177428298

namespace A319613

/-- `A000040(2*(n+1))*Δ[A007504(n)]` -/
def P4998541463177428298.Spec : Prop :=
  ∀ n, P4998541463177428298.a n = A319613 (n + 1)

end A319613

/-!
# A319615: Maximum orbit size of rowmotion on the symmetric group.

The programs for A319615, there is no canonical definition to state claims against.
-/

/-! ## A319615.P4178133823700407851

`record[gcd(C(n+4, 3)-4, A364550(n+1))]`
-/

namespace A319615.P4178133823700407851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.choose (n + 4) 3 : ℤ) - 4) (A364550 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319615.P4178133823700407851

/-! ## A319615.P5895065514392287489

`A261426(C(∑[round((n+3)²/12)]+2, n))`
-/

namespace A319615.P5895065514392287489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261426 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat n)

end

end A319615.P5895065514392287489

/-!
# A319616: Number of non-isomorphic square multiset partitions of weight n.

The programs for A319616, there is no canonical definition to state claims against.
-/

/-! ## A319616.P16592621569277949415

`∑[A321994(n+1)]-A052847(n+1)`
-/

namespace A319616.P16592621569277949415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052847 (n + 1)

end

end A319616.P16592621569277949415

/-! ## A319616.P11448953263989384053

`A023193(A149237(n)+A000296(n))`
-/

namespace A319616.P11448953263989384053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149237 n + A000296 n).toNat

end

end A319616.P11448953263989384053

/-! ## A319616.P3842456330302757407

`A070868(A149045(n)+A034888(n))`
-/

namespace A319616.P3842456330302757407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A149045 n + A034888 n).toNat

end

end A319616.P3842456330302757407

/-! ## A319616.P11242804450039188340

`A023193(A169970(n)+A071725(n))`
-/

namespace A319616.P11242804450039188340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A169970 n + A071725 n).toNat

end

end A319616.P11242804450039188340

/-!
# A319617: Number of Integer solutions to w^2 + x^2 + y^2 + z^2 < n^2; number of lattice points inside a 4-sphere of radius n.

The programs for A319617, there is no canonical definition to state claims against.
-/

/-! ## A319617.P12204913949294624340

`A055410(n)-A267326(n)`
-/

namespace A319617.P12204913949294624340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055410 n - A267326 n

end

end A319617.P12204913949294624340

/-! ## A319617.P15307158823352409803

`A055410(n)-A000118(n²)`
-/

namespace A319617.P15307158823352409803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055410 n - A000118 (n ^ 2)

end

end A319617.P15307158823352409803

/-! ## A319617.P8626756407397800834

`A046895(n²)-A267326(n)`
-/

namespace A319617.P8626756407397800834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) - A267326 n

end

end A319617.P8626756407397800834

/-! ## A319617.P9089354316582660995

`A046895(n²)-A000118(n²)`
-/

namespace A319617.P9089354316582660995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) - A000118 (n ^ 2)

end

end A319617.P9089354316582660995

/-!
# A319618: Number of non-isomorphic weight-n antichains of multisets whose dual is a chain of multisets.

The programs for A319618, there is no canonical definition to state claims against.
-/

/-! ## A319618.P4756484099366097814

`A008794(n)+A007306(A001088(n+1))`
-/

namespace A319618.P4756484099366097814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n + A007306 (A001088 (n + 1)).toNat

end

end A319618.P4756484099366097814

/-!
# A319620: Number of connected antichain covers of n vertices by distinct sets whose dual is also a (not necessarily strict) antichain.

The programs for A319620, there is no canonical definition to state claims against.
-/

/-! ## A319620.P11969291291033081784

`A309194(A292592(n!))`
-/

namespace A319620.P11969291291033081784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309194 (A292592 (Nat.factorial n)).toNat

end

end A319620.P11969291291033081784

/-!
# A319623: Number of connected antichain covers of n vertices by distinct sets whose dual is also an antichain of distinct sets.

The programs for A319623, there is no canonical definition to state claims against.
-/

/-! ## A319623.P13489018513204362643

`A073107(or(4, a(n-1)+2))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A319623.P13489018513204362643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  A073107 (Int.lor 4 (a (n - 1) + 2)).toNat

end

end A319623.P13489018513204362643

/-!
# A319626: Primorial deflation of n (numerator): Let f be the completely multiplicative function over the positive rational numbers defined by f(p) = A034386(p) for any prime number p; f constitutes a permutation of the positive rational numbers; let g be the inverse of f; for any n > 0, a(n) is the numerator of g(n).

The programs for A319626, the canonical program `A319626.P18353085358541407591` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319626 has offset 1).

The definition of A319626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319626.P4830852463939529331

`(n+1)/A330749(n+1)`
-/

namespace A319626.P4830852463939529331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330749 (n + 1) : ℚ)

end

end A319626.P4830852463939529331

namespace A319626

/-- `(n+1)/A330749(n+1)` -/
def P4830852463939529331.Spec : Prop :=
  ∀ n, P4830852463939529331.a n = (A319626 (n + 1) : ℚ)

end A319626

/-! ## A319626.P18353085358541407591

`(n+1)/gcd(n+1, A064989(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A319626

/-- `(n+1)/gcd(n+1, A064989(n+1))` -/
def P18353085358541407591.Spec : Prop :=
  ∀ n, P18353085358541407591.a n = (A319626 (n + 1) : ℚ)

end A319626

/-! ## A319626.P12235912589225081379

`(n+1)/A064989(A322361(n+1))`
-/

namespace A319626.P12235912589225081379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (A322361 (n + 1)).toNat : ℚ)

end

end A319626.P12235912589225081379

namespace A319626

/-- `(n+1)/A064989(A322361(n+1))` -/
def P12235912589225081379.Spec : Prop :=
  ∀ n, P12235912589225081379.a n = (A319626 (n + 1) : ℚ)

end A319626

/-! ## A319626.P14398476554954220915

`(n+1)/A064989(n+1)*A319627(n+1)`
-/

namespace A319626.P14398476554954220915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (n + 1) : ℚ) * (A319627 (n + 1) : ℚ)

end

end A319626.P14398476554954220915

namespace A319626

/-- `(n+1)/A064989(n+1)*A319627(n+1)` -/
def P14398476554954220915.Spec : Prop :=
  ∀ n, P14398476554954220915.a n = (A319626 (n + 1) : ℚ)

end A319626

/-! ## A319626.P7615291438821867049

`A064989(A348994(n+1))`
-/

namespace A319626.P7615291438821867049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A348994 (n + 1)).toNat

end

end A319626.P7615291438821867049

namespace A319626

/-- `A064989(A348994(n+1))` -/
def P7615291438821867049.Spec : Prop :=
  ∀ n, P7615291438821867049.a n = A319626 (n + 1)

end A319626

/-! ## A319626.P10303315876943840325

`A064989(lcm(n+1, A003961(n+1))/(n+1))`
-/

namespace A319626.P10303315876943840325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (A003961 (n + 1)) : ℚ) / (n + 1 : ℚ))).toNat

end

end A319626.P10303315876943840325

namespace A319626

/-- `A064989(lcm(n+1, A003961(n+1))/(n+1))` -/
def P10303315876943840325.Spec : Prop :=
  ∀ n, P10303315876943840325.a n = A319626 (n + 1)

end A319626

/-! ## A319626.P7556765391462000609

`A307035(n+1)/A307035(n)*A319627(n+1)`
-/

namespace A319626.P7556765391462000609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307035 (n + 1) : ℚ) / (A307035 n : ℚ) * (A319627 (n + 1) : ℚ)

end

end A319626.P7556765391462000609

namespace A319626

/-- `A307035(n+1)/A307035(n)*A319627(n+1)` -/
def P7556765391462000609.Spec : Prop :=
  ∀ n, P7556765391462000609.a n = (A319626 (n + 1) : ℚ)

end A319626

/-!
# A319627: Primorial deflation of n (denominator): Let f be the completely multiplicative function over the positive rational numbers defined by f(p) = A034386(p) for any prime number p; f constitutes a permutation of the positive rational numbers; let g be the inverse of f; for any n > 0, a(n) is the denominator of g(n).

The programs for A319627, the canonical program `A319627.P4809772185258266634` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319627 has offset 1).

The definition of A319627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319627.P4809772185258266634

`A064989(n+1)/gcd(n+1, A064989(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A319627

/-- `A064989(n+1)/gcd(n+1, A064989(n+1))` -/
def P4809772185258266634.Spec : Prop :=
  ∀ n, P4809772185258266634.a n = (A319627 (n + 1) : ℚ)

end A319627

/-! ## A319627.P17568387466259114564

`lcm(A064989(n+1), n+1)/(n+1)`
-/

namespace A319627.P17568387466259114564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A064989 (n + 1)) (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A319627.P17568387466259114564

namespace A319627

/-- `lcm(A064989(n+1), n+1)/(n+1)` -/
def P17568387466259114564.Spec : Prop :=
  ∀ n, P17568387466259114564.a n = (A319627 (n + 1) : ℚ)

end A319627

/-! ## A319627.P9426239413303344193

`A064989(A348990(n+1))`
-/

namespace A319627.P9426239413303344193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A348990 (n + 1)).toNat

end

end A319627.P9426239413303344193

namespace A319627

/-- `A064989(A348990(n+1))` -/
def P9426239413303344193.Spec : Prop :=
  ∀ n, P9426239413303344193.a n = A319627 (n + 1)

end A319627

/-! ## A319627.P4363552035066770826

`A064989((n+1)/A322361(n+1))`
-/

namespace A319627.P4363552035066770826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A322361 (n + 1) : ℚ))).toNat

end

end A319627.P4363552035066770826

namespace A319627

/-- `A064989((n+1)/A322361(n+1))` -/
def P4363552035066770826.Spec : Prop :=
  ∀ n, P4363552035066770826.a n = A319627 (n + 1)

end A319627

/-! ## A319627.P13671687152562358402

`A064989(n+1)/A330749(n+1)`
-/

namespace A319627.P13671687152562358402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A330749 (n + 1) : ℚ)

end

end A319627.P13671687152562358402

namespace A319627

/-- `A064989(n+1)/A330749(n+1)` -/
def P13671687152562358402.Spec : Prop :=
  ∀ n, P13671687152562358402.a n = (A319627 (n + 1) : ℚ)

end A319627

/-! ## A319627.P5377856093395380716

`A064989(n+1)/(n+1)*A319626(n+1)`
-/

namespace A319627.P5377856093395380716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (n + 1 : ℚ) * (A319626 (n + 1) : ℚ)

end

end A319627.P5377856093395380716

namespace A319627

/-- `A064989(n+1)/(n+1)*A319626(n+1)` -/
def P5377856093395380716.Spec : Prop :=
  ∀ n, P5377856093395380716.a n = (A319627 (n + 1) : ℚ)

end A319627

/-! ## A319627.P7241647794864033379

`A319626(n+1)/A307035(n+1)*A307035(n)`
-/

namespace A319627.P7241647794864033379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319626 (n + 1) : ℚ) / (A307035 (n + 1) : ℚ) * (A307035 n : ℚ)

end

end A319627.P7241647794864033379

namespace A319627

/-- `A319626(n+1)/A307035(n+1)*A307035(n)` -/
def P7241647794864033379.Spec : Prop :=
  ∀ n, P7241647794864033379.a n = (A319627 (n + 1) : ℚ)

end A319627

/-!
# A319628: Number of non-isomorphic connected weight-n antichains of distinct multisets whose dual is also an antichain of (not necessarily distinct) multisets.

The programs for A319628, there is no canonical definition to state claims against.
-/

/-! ## A319628.P14058296395971760410

`A181153(A181153(n))+A002880(n+6)`
-/

namespace A319628.P14058296395971760410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (A181153 n).toNat + A002880 (n + 6)

end

end A319628.P14058296395971760410

/-! ## A319628.P4385484835631686988

`A097003(A383492(n))`
-/

namespace A319628.P4385484835631686988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 (A383492 n).toNat

end

end A319628.P4385484835631686988

/-! ## A319628.P12568887792126180013

`A293783(2*n+1)!*A355089(n)`
-/

namespace A319628.P12568887792126180013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A293783 (2 * n + 1)).toNat : ℤ) * A355089 n

end

end A319628.P12568887792126180013

/-! ## A319628.P8933119377699555966

`A124482(n+1)+A000837(floor(1/Δ[sqrt(n)]))`
-/

namespace A319628.P8933119377699555966
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124482 (n + 1) + A000837 ⌊1 / (f1 (n + 1) - f1 n)⌋.toNat

end

end A319628.P8933119377699555966

/-! ## A319628.P14882967517366245734

`A275444(A102112(n)+A054142(n))`
-/

namespace A319628.P14882967517366245734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275444 (A102112 n + A054142 n).toNat

end

end A319628.P14882967517366245734

/-!
# A319629: Number of non-isomorphic connected weight-n antichains of distinct multisets whose dual is also an antichain of distinct multisets.

The programs for A319629, there is no canonical definition to state claims against.
-/

/-! ## A319629.P13767483835816243370

`or(A136165(A136170(n+1)), A351908(A077943(n+1)))`
-/

namespace A319629.P13767483835816243370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136165 (A136170 (n + 1)).toNat) (A351908 (A077943 (n + 1)).toNat)

end

end A319629.P13767483835816243370

/-! ## A319629.P6145281137419902553

`or(A333919(A133263(n))%A008930(n), A136165(A136170(n+1)))`
-/

namespace A319629.P6145281137419902553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A333919 (A133263 n).toNat) (A008930 n)) (A136165 (A136170 (n + 1)).toNat)

end

end A319629.P6145281137419902553

/-!
# A319630: Positive numbers that are not divisible by two consecutive prime numbers.

The programs for A319630, the canonical program `A319630.P6743274893116773440` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319630 has offset 1).

The definition of A319630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319630.P11084814981088567304

`record[A348990(n+1)]`
-/

namespace A319630.P11084814981088567304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319630.P11084814981088567304

namespace A319630

/-- `record[A348990(n+1)]` -/
def P11084814981088567304.Spec : Prop :=
  ∀ n, P11084814981088567304.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P6743274893116773440

`eq[0, A296210(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A319630

/-- `eq[0, A296210(n+1)]+1` -/
def P6743274893116773440.Spec : Prop :=
  ∀ n, (P6743274893116773440.a n : ℤ) = A319630 (n + 1)

theorem P6743274893116773440.correct : P6743274893116773440.Spec := by
  intro n
  simp only [A319630, Nat.add_sub_cancel]

end A319630

/-! ## A319630.P16172712092387027759

`eq[1, A322361(n+1)]+1`
-/

namespace A319630.P16172712092387027759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319630.P16172712092387027759

namespace A319630

/-- `eq[1, A322361(n+1)]+1` -/
def P16172712092387027759.Spec : Prop :=
  ∀ n, (P16172712092387027759.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P7135696820042330365

`1+eq[1, A330749(n+1)]`
-/

namespace A319630.P7135696820042330365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319630.P7135696820042330365

namespace A319630

/-- `1+eq[1, A330749(n+1)]` -/
def P7135696820042330365.Spec : Prop :=
  ∀ n, (P7135696820042330365.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P8125928010674764135

`lt[A300820(n+1), 2]+1`
-/

namespace A319630.P8125928010674764135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A319630.P8125928010674764135

namespace A319630

/-- `lt[A300820(n+1), 2]+1` -/
def P8125928010674764135.Spec : Prop :=
  ∀ n, (P8125928010674764135.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P9197541462550120263

`lt[0, abs(1-A297173(n+1))]+1`
-/

namespace A319630.P9197541462550120263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A297173 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A319630.P9197541462550120263

namespace A319630

/-- `lt[0, abs(1-A297173(n+1))]+1` -/
def P9197541462550120263.Spec : Prop :=
  ∀ n, (P9197541462550120263.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P12724048111272960019

`∪[A000961(n+1), A162685(n+1)]`
-/

namespace A319630.P12724048111272960019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319630.P12724048111272960019

namespace A319630

/-- `∪[A000961(n+1), A162685(n+1)]` -/
def P12724048111272960019.Spec : Prop :=
  ∀ n, (P12724048111272960019.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P8987307601081879170

`∪[A162685(n+1), A174905(n+1)]`
-/

namespace A319630.P8987307601081879170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319630.P8987307601081879170

namespace A319630

/-- `∪[A162685(n+1), A174905(n+1)]` -/
def P8987307601081879170.Spec : Prop :=
  ∀ n, (P8987307601081879170.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P17158450779478183795

`∪[A162685(n+1), A273130(n+1)]`
-/

namespace A319630.P17158450779478183795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319630.P17158450779478183795

namespace A319630

/-- `∪[A162685(n+1), A273130(n+1)]` -/
def P17158450779478183795.Spec : Prop :=
  ∀ n, (P17158450779478183795.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P9219375120094973301

`∪[A162685(n+1), A317923(n+1)]`
-/

namespace A319630.P9219375120094973301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319630.P9219375120094973301

namespace A319630

/-- `∪[A162685(n+1), A317923(n+1)]` -/
def P9219375120094973301.Spec : Prop :=
  ∀ n, (P9219375120094973301.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P10890941801782819714

`filter[A047253(n+1), A356173(#)]`
-/

namespace A319630.P10890941801782819714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A319630.P10890941801782819714

namespace A319630

/-- `filter[A047253(n+1), A356173(#)]` -/
def P10890941801782819714.Spec : Prop :=
  ∀ n, P10890941801782819714.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P6855387416595985919

`filter[A168186(n+1), A356173(#)]`
-/

namespace A319630.P6855387416595985919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A319630.P6855387416595985919

namespace A319630

/-- `filter[A168186(n+1), A356173(#)]` -/
def P6855387416595985919.Spec : Prop :=
  ∀ n, P6855387416595985919.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P8510198917314862955

`filter[A232741(n+1), A356173(#)]`
-/

namespace A319630.P8510198917314862955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A319630.P8510198917314862955

namespace A319630

/-- `filter[A232741(n+1), A356173(#)]` -/
def P8510198917314862955.Spec : Prop :=
  ∀ n, P8510198917314862955.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P1377108392028981723

`record[A319626(n+1)]`
-/

namespace A319630.P1377108392028981723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319630.P1377108392028981723

namespace A319630

/-- `record[A319626(n+1)]` -/
def P1377108392028981723.Spec : Prop :=
  ∀ n, P1377108392028981723.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P7236825765292213277

`filter[n+1, A356173(#)]`
-/

namespace A319630.P7236825765292213277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j) = 1) n)

end

end A319630.P7236825765292213277

namespace A319630

/-- `filter[n+1, A356173(#)]` -/
def P7236825765292213277.Spec : Prop :=
  ∀ n, (P7236825765292213277.a n : ℤ) = A319630 (n + 1)

end A319630

/-! ## A319630.P8206583673924931067

`A319626(lt[n, A319626(n+1)]+1)`
-/

namespace A319630.P8206583673924931067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A319630.P8206583673924931067

namespace A319630

/-- `A319626(lt[n, A319626(n+1)]+1)` -/
def P8206583673924931067.Spec : Prop :=
  ∀ n, P8206583673924931067.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P10271320083790880783

`A319626(eq[n+1, A319626(n+1)]+1)`
-/

namespace A319630.P10271320083790880783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A319630.P10271320083790880783

namespace A319630

/-- `A319626(eq[n+1, A319626(n+1)]+1)` -/
def P10271320083790880783.Spec : Prop :=
  ∀ n, P10271320083790880783.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P11549156050584412462

`record[A028310(n/A330749(A028310(n)))]`
-/

namespace A319630.P11549156050584412462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A330749 (A028310 n).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319630.P11549156050584412462

namespace A319630

/-- `record[A028310(n/A330749(A028310(n)))]` -/
def P11549156050584412462.Spec : Prop :=
  ∀ n, P11549156050584412462.a n = A319630 (n + 1)

end A319630

/-! ## A319630.P13565096750235148311

`record[A000720(n+2)/A330749(A000720(n+2))]`
-/

namespace A319630.P13565096750235148311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A330749 (A000720 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319630.P13565096750235148311

namespace A319630

/-- `record[A000720(n+2)/A330749(A000720(n+2))]` -/
def P13565096750235148311.Spec : Prop :=
  ∀ n, P13565096750235148311.a n = (A319630 (n + 1) : ℚ)

end A319630

/-! ## A319630.P8771254781185103294

`record[A356164(A003961(n+1))]`
-/

namespace A319630.P8771254781185103294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356164 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319630.P8771254781185103294

namespace A319630

/-- `record[A356164(A003961(n+1))]` -/
def P8771254781185103294.Spec : Prop :=
  ∀ n, P8771254781185103294.a n = A319630 (n + 1)

end A319630

/-!
# A319631: Number of non-isomorphic weight-n antichains of multisets whose dual is a chain of distinct multisets.

The programs for A319631, there is no canonical definition to state claims against.
-/

/-! ## A319631.P15083432869613812909

`A003056(A001405(n)*A343371(n))`
-/

namespace A319631.P15083432869613812909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001405 n * A343371 n).toNat

end

end A319631.P15083432869613812909

/-! ## A319631.P10996165500952527701

`A301761(n+1)-A341023(A301767(n+1))`
-/

namespace A319631.P10996165500952527701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301761 (n + 1) - A341023 ((A301767 (n + 1)).toNat + 56)

end

end A319631.P10996165500952527701

/-! ## A319631.P3322798573957429089

`A329559(C(A319079(n), A055642(n)))`
-/

namespace A319631.P3322798573957429089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (Nat.choose (A319079 n).toNat (A055642 n).toNat)

end

end A319631.P3322798573957429089

/-!
# A319632: Number of non-isomorphic weight-n antichains of (not necessarily distinct) sets whose dual is also an antichain of (not necessarily distinct) sets.

The programs for A319632, there is no canonical definition to state claims against.
-/

/-! ## A319632.P6823149843467958267

`A105356(A178940(n))`
-/

namespace A319632.P6823149843467958267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A178940 n).toNat

end

end A319632.P6823149843467958267

/-! ## A319632.P8934024455370580611

`A105356(A206100(n))`
-/

namespace A319632.P8934024455370580611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A206100 n).toNat

end

end A319632.P8934024455370580611

/-! ## A319632.P9961904658047245906

`A357646(A364523(n))+A006171(n)`
-/

namespace A319632.P9961904658047245906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357646 (A364523 n).toNat + A006171 n

end

end A319632.P9961904658047245906

/-! ## A319632.P418971122645431134

`A105356(A073776(n))+Δ[A104194(n+1)]`
-/

namespace A319632.P418971122645431134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A073776 n).toNat + (f1 (n + 1) - f1 n)

end

end A319632.P418971122645431134

/-!
# A319633: Number of antichain covers of n vertices by distinct sets whose dual is also an antichain of (not necessarily distinct) sets.

The programs for A319633, there is no canonical definition to state claims against.
-/

/-! ## A319633.P10401122473302149122

`ceil(((n+1)*a(n-1)/5)²+n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A319633.P10401122473302149122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌈(((n + 1 : ℤ) * a (n - 1) : ℚ) / 5) ^ 2 + (n : ℚ)⌉

end

end A319633.P10401122473302149122

/-!
# A319635: Number of non-isomorphic weight-n antichains of distinct multisets whose dual is also an antichain of (not necessarily distinct) multisets.

The programs for A319635, there is no canonical definition to state claims against.
-/

/-! ## A319635.P8620701140517413650

`A179822(n)-char[9]`
-/

namespace A319635.P8620701140517413650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179822 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319635.P8620701140517413650

/-! ## A319635.P5077853106694828039

`floor(root(A204450(n+1), 3))`
-/

namespace A319635.P5077853106694828039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204450 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A319635.P5077853106694828039

/-! ## A319635.P15260503034828127894

`round(root(A023113(n+1), 9))`
-/

namespace A319635.P15260503034828127894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023113 (n + 1) : ℝ) ^ (1 / (9 : ℝ)))

end

end A319635.P15260503034828127894

/-! ## A319635.P3103840819186615258

`round(root(A221874(n+1)², 9))`
-/

namespace A319635.P3103840819186615258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A221874 (n + 1) ^ 2 : ℝ) ^ (1 / (9 : ℝ)))

end

end A319635.P3103840819186615258

/-! ## A319635.P13979656751210779899

`A264591(∑[∏{e}[n, #+1]]+7)`
-/

namespace A319635.P13979656751210779899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264591 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A319635.P13979656751210779899

/-!
# A319636: a(n) = Sum_{k=1..n} binomial(2*n - 3*k + 1, n - k)*k/(n - k + 1).

The programs for A319636, there is no canonical definition to state claims against.
-/

/-! ## A319636.P5552784416605375487

`xor(A001462(A192315(n)), A071484(n+1))`
-/

namespace A319636.P5552784416605375487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001462 (A192315 n).toNat) (A071484 (n + 1))

end

end A319636.P5552784416605375487

/-! ## A319636.P14266596328503354782

`xor(A001462(A192315(n)), A071493(n+1))`
-/

namespace A319636.P14266596328503354782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001462 (A192315 n).toNat) (A071493 (n + 1))

end

end A319636.P14266596328503354782

/-! ## A319636.P9694151751855236555

`∑[A331904(A000116(n)+A000194(n)+3)]`
-/

namespace A319636.P9694151751855236555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A000116 n + (A000194 n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319636.P9694151751855236555

/-!
# A319637: Number of non-isomorphic T_0-covers of n vertices by distinct sets.

The programs for A319637, there is no canonical definition to state claims against.
-/

/-! ## A319637.P3451204127186400521

`A326942(n)/2`
-/

namespace A319637.P3451204127186400521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326942 n : ℚ) / 2

end

end A319637.P3451204127186400521

/-!
# A319639: Number of antichain covers of n vertices by distinct sets whose dual is also an antichain of distinct sets.

The programs for A319639, there is no canonical definition to state claims against.
-/

/-! ## A319639.P5163806201900599561

`A296120(n+1)*A336131(A192415(n))`
-/

namespace A319639.P5163806201900599561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) * A336131 (A192415 n).toNat

end

end A319639.P5163806201900599561

/-!
# A319642: Number of non-isomorphic weight-n antichains of distinct multisets whose dual is a chain of (not necessarily distinct) multisets.

The programs for A319642, there is no canonical definition to state claims against.
-/

/-! ## A319642.P1837792919502799088

`A301753(n+1)-char[8]`
-/

namespace A319642.P1837792919502799088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301753 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319642.P1837792919502799088

/-! ## A319642.P1116117080717421321

`A276796(floor(ϕ^(n+1)))`
-/

namespace A319642.P1116117080717421321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 ⌊Real.goldenRatio ^ (n + 1)⌋.toNat

end

end A319642.P1116117080717421321

/-! ## A319642.P8133221537848851983

`A184117(ceil(ϕ^(n-1)))`
-/

namespace A319642.P8133221537848851983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 ⌈Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A319642.P8133221537848851983

/-! ## A319642.P2492131773461437038

`A003251(A147660(n))`
-/

namespace A319642.P2492131773461437038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003251 (A147660 n).toNat

end

end A319642.P2492131773461437038

/-! ## A319642.P7450416488711727262

`A143896(A218507(n))`
-/

namespace A319642.P7450416488711727262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143896 (A218507 n).toNat

end

end A319642.P7450416488711727262

/-!
# A319644: Number of non-isomorphic weight-n antichains of distinct multisets whose dual is also an antichain of distinct multisets.

The programs for A319644, there is no canonical definition to state claims against.
-/

/-! ## A319644.P18191304907073973935

`A163101(A383801(n))`
-/

namespace A319644.P18191304907073973935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A383801 n).toNat

end

end A319644.P18191304907073973935

/-! ## A319644.P9807362552137105724

`A342339(A066372(n+1))`
-/

namespace A319644.P9807362552137105724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (A066372 (n + 1)).toNat

end

end A319644.P9807362552137105724

/-! ## A319644.P11648100789816303072

`A018783(n)+A000196(A328431(n))`
-/

namespace A319644.P11648100789816303072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000196 (A328431 n).toNat

end

end A319644.P11648100789816303072

/-!
# A319645: Number of non-isomorphic weight-n antichains of distinct multisets whose dual is a chain of distinct multisets.

The programs for A319645, there is no canonical definition to state claims against.
-/

/-! ## A319645.P16898656264625392879

`round(sqrt(A218911(n)))`
-/

namespace A319645.P16898656264625392879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A218911 n : ℝ))

end

end A319645.P16898656264625392879

/-! ## A319645.P2912288709653136941

`A287618(round(sqrt(n!)))`
-/

namespace A319645.P2912288709653136941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287618 (SequenceMachineLib.roundAway (Real.sqrt (Nat.factorial n : ℝ))).toNat

end

end A319645.P2912288709653136941

/-! ## A319645.P7590235436836341034

`A112639(floor(∑[atan(n)]))`
-/

namespace A319645.P7590235436836341034
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112639 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A319645.P7590235436836341034

/-! ## A319645.P11390930614575600431

`floor(sqrt(A124818(n+1)))`
-/

namespace A319645.P11390930614575600431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A124818 (n + 1))

end

end A319645.P11390930614575600431

/-! ## A319645.P16751193814502993900

`round(sqrt(A026548(n)/3))`
-/

namespace A319645.P16751193814502993900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A026548 n : ℚ) / 3 : ℝ))

end

end A319645.P16751193814502993900

/-!
# A319646: Number of non-isomorphic weight-n chains of distinct multisets whose dual is also a chain of distinct multisets.

The programs for A319646, there is no canonical definition to state claims against.
-/

/-! ## A319646.P3690528417487889525

`A033613(A069905(n)%A124889(2*(n+1)))`
-/

namespace A319646.P3690528417487889525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033613 (Int.tmod (A069905 n) (A124889 (2 * (n + 1)))).toNat

end

end A319646.P3690528417487889525

/-! ## A319646.P11821436269064822992

`A229300(A308283(n)²)`
-/

namespace A319646.P11821436269064822992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A308283 n ^ 2).toNat

end

end A319646.P11821436269064822992

/-! ## A319646.P4809490789631557242

`A071521(4^A069905(n))`
-/

namespace A319646.P4809490789631557242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A069905 n : ℤ))).toNat

end

end A319646.P4809490789631557242

/-! ## A319646.P2161197395471666655

`A071521(4^A111133(n))`
-/

namespace A319646.P2161197395471666655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A111133 n : ℤ))).toNat

end

end A319646.P2161197395471666655

/-! ## A319646.P5200326643828559083

`A047210(p?[Δ[A000064(n)]])`
-/

namespace A319646.P5200326643828559083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319646.P5200326643828559083

/-!
# A319647: a(n) = [x^n] Product_{k>=1} 1/(1 - x^k)^sigma_n(k).

The programs for A319647, there is no canonical definition to state claims against.
-/

/-! ## A319647.P15749367730357977114

`A321876(∑[4*n])`
-/

namespace A319647.P15749367730357977114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319647.P15749367730357977114

/-! ## A319647.P3526794574217026073

`A015526(n)*A321876(A046092(n))`
-/

namespace A319647.P3526794574217026073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A321876 (A046092 n).toNat

end

end A319647.P3526794574217026073

/-! ## A319647.P6072763674446903810

`A152847(n)*A321876(A046092(n))`
-/

namespace A319647.P6072763674446903810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A321876 (A046092 n).toNat

end

end A319647.P6072763674446903810

/-! ## A319647.P745143593392927876

`A321876(A046092(n))^A178334(n)`
-/

namespace A319647.P745143593392927876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321876 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A319647.P745143593392927876

/-! ## A319647.P8973129645350276961

`gcd(A000038(n), A321876(A046092(n)))`
-/

namespace A319647.P8973129645350276961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321876 (A046092 n).toNat)

end

end A319647.P8973129645350276961

/-!
# A319648: Total number of parts in all plane partitions of n.

The programs for A319648, there is no canonical definition to state claims against.
-/

/-! ## A319648.P6441385215437167442

`A089643(A187514(n+1))+A001787(n)`
-/

namespace A319648.P6441385215437167442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A187514 (n + 1)).toNat + A001787 n

end

end A319648.P6441385215437167442

/-! ## A319648.P1739555961356452099

`A302242(A342054(n+1))+A001787(n)`
-/

namespace A319648.P1739555961356452099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A342054 (n + 1)).toNat + A001787 n

end

end A319648.P1739555961356452099

/-!
# A319649: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{j=1..n} j^k * floor(n/j).

The programs for A319649, there is no canonical definition to state claims against.
-/

/-! ## A319649.P9282601444512827041

`A137734((∑[∑{d}[n, #]]+1)^A077042(n))`
-/

namespace A319649.P9282601444512827041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) ^ (A077042 n : ℤ))).toNat

end

end A319649.P9282601444512827041

/-! ## A319649.P9288422853006227877

`A137734(A160664(n)^A068914(n))`
-/

namespace A319649.P9288422853006227877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (SequenceMachineLib.roundAway ((A160664 n : ℚ) ^ (A068914 n : ℤ))).toNat

end

end A319649.P9288422853006227877

/-! ## A319649.P4397520267078893329

`A137734(A160664(n)^A077042(n))`
-/

namespace A319649.P4397520267078893329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (SequenceMachineLib.roundAway ((A160664 n : ℚ) ^ (A077042 n : ℤ))).toNat

end

end A319649.P4397520267078893329

/-! ## A319649.P16068039371160666308

`A343510(n+1)-A079294(A060187(n+1))`
-/

namespace A319649.P16068039371160666308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (n + 1) - A079294 (A060187 (n + 1)).toNat

end

end A319649.P16068039371160666308

/-! ## A319649.P5662023008654146389

`A070939(A035347(n+1)*A302173(n+1))`
-/

namespace A319649.P5662023008654146389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A035347 (n + 1) * A302173 (n + 1)).toNat

end

end A319649.P5662023008654146389

/-!
# A319650: a(n) = A073138(n) - n.

The programs for A319650, the canonical program `A319650.P14664312154430006966` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319650 has offset 0).

The definition of A319650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319650.P14664312154430006966

`A073138(n)-n`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A319650

/-- `A073138(n)-n` -/
def P14664312154430006966.Spec : Prop :=
  ∀ n, P14664312154430006966.a n = A319650 n

theorem P14664312154430006966.correct : P14664312154430006966.Spec := by
  intro n
  simp only [A319650]

end A319650

/-! ## A319650.P10094479355044503885

`A048967(A035327(n))`
-/

namespace A319650.P10094479355044503885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A035327 n).toNat

end

end A319650.P10094479355044503885

namespace A319650

/-- `A048967(A035327(n))` -/
def P10094479355044503885.Spec : Prop :=
  ∀ n, P10094479355044503885.a n = A319650 n

end A319650

/-! ## A319650.P17031972275405351769

`A164884(n)-A048967(n)`
-/

namespace A319650.P17031972275405351769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n - A048967 n

end

end A319650.P17031972275405351769

namespace A319650

/-- `A164884(n)-A048967(n)` -/
def P17031972275405351769.Spec : Prop :=
  ∀ n, P17031972275405351769.a n = A319650 n

theorem P17031972275405351769.correct : P17031972275405351769.Spec := by
  intro n
  simp only [A319650, Nat.add_sub_cancel, A319650.P17031972275405351769.a, A319650.P14664312154430006966.a, A048967, A048967.P3595347913858362397.a, A073138, A073138.P4418127481005985757.a, A164884, A164884.P8281495825813713226.a, A000120, A000120.P2816527436160941581.a, A038573, A038573.P5952807231814584452.a, A080100, A080100.P10210311042903193849.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, A001316, A001316.P6850078358198232129.a, A001317, A001317.P8261653114070389448.a, A005187, A005187.P3874015513960485494.a, A080791, A080791.P6131873509789506769.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A048724, A048724.P638821554898421701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319650

/-! ## A319650.P739431648185653724

`A353292(n)-A006257(n)`
-/

namespace A319650.P739431648185653724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 n - A006257 n

end

end A319650.P739431648185653724

namespace A319650

/-- `A353292(n)-A006257(n)` -/
def P739431648185653724.Spec : Prop :=
  ∀ n, P739431648185653724.a n = A319650 n

end A319650

/-! ## A319650.P7246025548088189553

`A073138(n)%A028310(n)`
-/

namespace A319650.P7246025548088189553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073138 n) (A028310 n)

end

end A319650.P7246025548088189553

namespace A319650

/-- `A073138(n)%A028310(n)` -/
def P7246025548088189553.Spec : Prop :=
  ∀ n, P7246025548088189553.a n = A319650 n

end A319650

/-! ## A319650.P12309172835702881408

`A062383(n)-(A080100(n)+n)`
-/

namespace A319650.P12309172835702881408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (A080100 n + (n : ℤ))

end

end A319650.P12309172835702881408

namespace A319650

/-- `A062383(n)-(A080100(n)+n)` -/
def P12309172835702881408.Spec : Prop :=
  ∀ n, P12309172835702881408.a n = A319650 n

end A319650

/-! ## A319650.P5010338603980347905

`A073137(n)+A073139(n)-n`
-/

namespace A319650.P5010338603980347905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n + (A073139 n - (n : ℤ))

end

end A319650.P5010338603980347905

namespace A319650

/-- `A073137(n)+A073139(n)-n` -/
def P5010338603980347905.Spec : Prop :=
  ∀ n, P5010338603980347905.a n = A319650 n

end A319650

/-! ## A319650.P10560994950609293102

`A073140(n)-(A073137(n)+n)`
-/

namespace A319650.P10560994950609293102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073140 n - (A073137 n + (n : ℤ))

end

end A319650.P10560994950609293102

namespace A319650

/-- `A073140(n)-(A073137(n)+n)` -/
def P10560994950609293102.Spec : Prop :=
  ∀ n, P10560994950609293102.a n = A319650 n

theorem P10560994950609293102.correct : P10560994950609293102.Spec := by
  intro n
  simp only [A319650, Nat.add_sub_cancel, A319650.P10560994950609293102.a, A319650.P14664312154430006966.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A073140, A073140.P4323079817452288887.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319650

/-! ## A319650.P8389640923209262669

`A038573(n)+A164884(n)-n`
-/

namespace A319650.P8389640923209262669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n + (A164884 n - (n : ℤ))

end

end A319650.P8389640923209262669

namespace A319650

/-- `A038573(n)+A164884(n)-n` -/
def P8389640923209262669.Spec : Prop :=
  ∀ n, P8389640923209262669.a n = A319650 n

end A319650

/-! ## A319650.P9628687942170266553

`A319785(n)-(A038573(n)+n)`
-/

namespace A319650.P9628687942170266553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n - (A038573 n + (n : ℤ))

end

end A319650.P9628687942170266553

namespace A319650

/-- `A319785(n)-(A038573(n)+n)` -/
def P9628687942170266553.Spec : Prop :=
  ∀ n, P9628687942170266553.a n = A319650 n

theorem P9628687942170266553.correct : P9628687942170266553.Spec := by
  intro n
  simp only [A319650, Nat.add_sub_cancel, A319650.P9628687942170266553.a, A319650.P14664312154430006966.a, A038573, A038573.P5952807231814584452.a, A073138, A073138.P4418127481005985757.a, A319785, A319785.P17238291360876731257.a, A001316, A001316.P6850078358198232129.a, A080100, A080100.P10210311042903193849.a, A000120, A000120.P2816527436160941581.a, A080791, A080791.P6131873509789506769.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319650

/-! ## A319650.P18190556313542805848

`A038573(n)*A080100(n)-n`
-/

namespace A319650.P18190556313542805848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n * A080100 n - (n : ℤ)

end

end A319650.P18190556313542805848

namespace A319650

/-- `A038573(n)*A080100(n)-n` -/
def P18190556313542805848.Spec : Prop :=
  ∀ n, P18190556313542805848.a n = A319650 n

end A319650

/-! ## A319650.P9800897051577442431

`A035327(n)-A000225(A023416(n))`
-/

namespace A319650.P9800897051577442431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n - A000225 (A023416 n).toNat

end

end A319650.P9800897051577442431

namespace A319650

/-- `A035327(n)-A000225(A023416(n))` -/
def P9800897051577442431.Spec : Prop :=
  ∀ n, P9800897051577442431.a n = A319650 n

end A319650

/-! ## A319650.P1273766051429737072

`A048967(A000225(A070939(n))-n)`
-/

namespace A319650.P1273766051429737072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A000225 (A070939 n).toNat - (n : ℤ)).toNat

end

end A319650.P1273766051429737072

namespace A319650

/-- `A048967(A000225(A070939(n))-n)` -/
def P1273766051429737072.Spec : Prop :=
  ∀ n, P1273766051429737072.a n = A319650 n

end A319650

/-! ## A319650.P6645693944270289237

`A048967(A000079(A070939(n))-(n+1))`
-/

namespace A319650.P6645693944270289237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A000079 (A070939 n).toNat - (n + 1 : ℤ)).toNat

end

end A319650.P6645693944270289237

namespace A319650

/-- `A048967(A000079(A070939(n))-(n+1))` -/
def P6645693944270289237.Spec : Prop :=
  ∀ n, P6645693944270289237.a n = A319650 n

end A319650

/-! ## A319650.P8965581833926763753

`A000225(A000120(n))*A080100(n)-n`
-/

namespace A319650.P8965581833926763753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000120 n).toNat * A080100 n - (n : ℤ)

end

end A319650.P8965581833926763753

namespace A319650

/-- `A000225(A000120(n))*A080100(n)-n` -/
def P8965581833926763753.Spec : Prop :=
  ∀ n, P8965581833926763753.a n = A319650 n

end A319650

/-! ## A319650.P10931516126005815114

`(A073139(n)+A073137(n))%ceil(A004277(n)/2)`
-/

namespace A319650.P10931516126005815114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073139 n + A073137 n) ⌈(A004277 n : ℚ) / 2⌉

end

end A319650.P10931516126005815114

namespace A319650

/-- `(A073139(n)+A073137(n))%ceil(A004277(n)/2)` -/
def P10931516126005815114.Spec : Prop :=
  ∀ n, P10931516126005815114.a n = A319650 n

end A319650

/-! ## A319650.P17021360441992186883

`A000027(A073139(n)+A073137(n)+1)%(n+1)`
-/

namespace A319650.P17021360441992186883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A073139 n + A073137 n + 1).toNat) (n + 1 : ℤ)

end

end A319650.P17021360441992186883

namespace A319650

/-- `A000027(A073139(n)+A073137(n)+1)%(n+1)` -/
def P17021360441992186883.Spec : Prop :=
  ∀ n, P17021360441992186883.a n = A319650 n

end A319650

/-! ## A319650.P6576652152231267173

`A035327(A000225(A023416(n))+n)`
-/

namespace A319650.P6576652152231267173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A000225 (A023416 n).toNat + (n : ℤ)).toNat

end

end A319650.P6576652152231267173

namespace A319650

/-- `A035327(A000225(A023416(n))+n)` -/
def P6576652152231267173.Spec : Prop :=
  ∀ n, P6576652152231267173.a n = A319650 n

end A319650

/-! ## A319650.P11532217771183096461

`A383849(A073137(2*n))-n`
-/

namespace A319650.P11532217771183096461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383849 (A073137 (2 * n)).toNat - (n : ℤ)

end

end A319650.P11532217771183096461

namespace A319650

/-- `A383849(A073137(2*n))-n` -/
def P11532217771183096461.Spec : Prop :=
  ∀ n, P11532217771183096461.a n = A319650 n

end A319650

/-! ## A319650.P15549130047954789585

`A030109(A073137(2*n+1))-n`
-/

namespace A319650.P15549130047954789585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A073137 (2 * n + 1)).toNat - (n : ℤ)

end

end A319650.P15549130047954789585

namespace A319650

/-- `A030109(A073137(2*n+1))-n` -/
def P15549130047954789585.Spec : Prop :=
  ∀ n, P15549130047954789585.a n = A319650 n

end A319650

/-!
# A319651: Largest number having in its ternary representation the same number of 0's, 1's and 2's as n.

The programs for A319651, there is no canonical definition to state claims against.
-/

/-! ## A319651.P1739026614994716586

`A164993(n)+A038574(n)`
-/

namespace A319651.P1739026614994716586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n + A038574 n

end

end A319651.P1739026614994716586

/-! ## A319651.P9020665819773048867

`A319803(n)-A038574(n)`
-/

namespace A319651.P9020665819773048867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319803 n - A038574 n

end

end A319651.P9020665819773048867

/-! ## A319651.P5111621661200284989

`A001281(A164993(3*n)-A164993(n))`
-/

namespace A319651.P5111621661200284989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A164993 (3 * n) - A164993 n).toNat

end

end A319651.P5111621661200284989

/-! ## A319651.P2645086821695707487

`A004526(A164993(3*n)-A164993(n))`
-/

namespace A319651.P2645086821695707487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164993 (3 * n) - A164993 n).toNat

end

end A319651.P2645086821695707487

/-! ## A319651.P1978464246116102489

`A164994(n)+A319803(n)/2`
-/

namespace A319651.P1978464246116102489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164994 n : ℚ) + (A319803 n : ℚ) / 2

end

end A319651.P1978464246116102489

/-! ## A319651.P6071842862028928389

`A164994(n)+A004526(A319803(n))`
-/

namespace A319651.P6071842862028928389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164994 n + A004526 (A319803 n).toNat

end

end A319651.P6071842862028928389

/-! ## A319651.P15324129980419835778

`A164994(3*n)-A164994(n)`
-/

namespace A319651.P15324129980419835778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164994 (3 * n) - A164994 n

end

end A319651.P15324129980419835778

/-!
# A319652: Write n in 4-ary, sort digits into increasing order.

The programs for A319652, there is no canonical definition to state claims against.
-/

/-! ## A319652.P2569413887166263174

`A319720(n)-A165012(n)`
-/

namespace A319652.P2569413887166263174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n - A165012 n

end

end A319652.P2569413887166263174

/-! ## A319652.P855075221592201102

`A319804(n)-A319720(n)`
-/

namespace A319652.P855075221592201102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n - A319720 n

end

end A319652.P855075221592201102

/-! ## A319652.P15602010001638055830

`(A319804(n)-A165012(n))/2`
-/

namespace A319652.P15602010001638055830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319804 n - A165012 n : ℚ) / 2

end

end A319652.P15602010001638055830

/-! ## A319652.P14182915316698181988

`A038572(A319804(n)-A165012(n))`
-/

namespace A319652.P14182915316698181988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A319804 n - A165012 n).toNat

end

end A319652.P14182915316698181988

/-! ## A319652.P3991879892197451210

`A319720(n)-A008585(A165013(n))`
-/

namespace A319652.P3991879892197451210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n - A008585 (A165013 n).toNat

end

end A319652.P3991879892197451210

/-! ## A319652.P9805544024448072459

`A001281(A319804(n)-A165012(n))`
-/

namespace A319652.P9805544024448072459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319804 n - A165012 n).toNat

end

end A319652.P9805544024448072459

/-! ## A319652.P9139670713756753493

`A004526(A319804(n)-A165012(n))`
-/

namespace A319652.P9139670713756753493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319804 n - A165012 n).toNat

end

end A319652.P9139670713756753493

/-! ## A319652.P6142167381734238882

`A030103(A319720(n))`
-/

namespace A319652.P6142167381734238882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A319720 n).toNat

end

end A319652.P6142167381734238882

/-! ## A319652.P6080138589674500514

`A165013(A008586(n))-A008586(A165013(n))`
-/

namespace A319652.P6080138589674500514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165013 (A008586 n).toNat - A008586 (A165013 n).toNat

end

end A319652.P6080138589674500514

/-!
# A319653: Write n in 5-ary, sort digits into increasing order.

The programs for A319653, there is no canonical definition to state claims against.
-/

/-! ## A319653.P11579049473419729861

`A319722(n)-A165032(n)`
-/

namespace A319653.P11579049473419729861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n - A165032 n

end

end A319653.P11579049473419729861

/-! ## A319653.P2512652055878107546

`A319805(n)-A319722(n)`
-/

namespace A319653.P2512652055878107546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - A319722 n

end

end A319653.P2512652055878107546

/-! ## A319653.P3537926248171582049

`(A319805(n)-A165032(n))/2`
-/

namespace A319653.P3537926248171582049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319805 n - A165032 n : ℚ) / 2

end

end A319653.P3537926248171582049

/-! ## A319653.P5988267666348099233

`A038572(A319805(n)-A165032(n))`
-/

namespace A319653.P5988267666348099233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A319805 n - A165032 n).toNat

end

end A319653.P5988267666348099233

/-! ## A319653.P9778594558085252885

`A001281(A319805(n)-A165032(n))`
-/

namespace A319653.P9778594558085252885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319805 n - A165032 n).toNat

end

end A319653.P9778594558085252885

/-! ## A319653.P3546633189259376834

`A004525(A319805(n)-A165032(n))`
-/

namespace A319653.P3546633189259376834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319805 n - A165032 n).toNat

end

end A319653.P3546633189259376834

/-! ## A319653.P2884505245569823981

`A004526(A319805(n)-A165032(n))`
-/

namespace A319653.P2884505245569823981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319805 n - A165032 n).toNat

end

end A319653.P2884505245569823981

/-! ## A319653.P2737897277185073339

`A030104(A319722(n))`
-/

namespace A319653.P2737897277185073339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A319722 n).toNat

end

end A319653.P2737897277185073339

/-! ## A319653.P382013795575513774

`A319722(n)-A008586(A165033(n))`
-/

namespace A319653.P382013795575513774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n - A008586 (A165033 n).toNat

end

end A319653.P382013795575513774

/-! ## A319653.P2584226378830099884

`A165033(A008587(n))-A008587(A165033(n))`
-/

namespace A319653.P2584226378830099884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (A008587 n).toNat - A008587 (A165033 n).toNat

end

end A319653.P2584226378830099884

/-!
# A319654: Write n in 6-ary, sort digits into increasing order.

The programs for A319654, there is no canonical definition to state claims against.
-/

/-! ## A319654.P3954267897109161385

`A319723(n)-A165051(n)`
-/

namespace A319654.P3954267897109161385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n - A165051 n

end

end A319654.P3954267897109161385

/-! ## A319654.P7022895804811191537

`A319806(n)-A319723(n)`
-/

namespace A319654.P7022895804811191537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319806 n - A319723 n

end

end A319654.P7022895804811191537

/-! ## A319654.P17113365403945020179

`(A319806(n)-A165051(n))/2`
-/

namespace A319654.P17113365403945020179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319806 n - A165051 n : ℚ) / 2

end

end A319654.P17113365403945020179

/-! ## A319654.P9293359255072246312

`A030105(A319723(n))`
-/

namespace A319654.P9293359255072246312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A319723 n).toNat

end

end A319654.P9293359255072246312

/-! ## A319654.P10985702418847813613

`A001281(A319806(n)-A165051(n))`
-/

namespace A319654.P10985702418847813613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319806 n - A165051 n).toNat

end

end A319654.P10985702418847813613

/-! ## A319654.P4868313243957082919

`A004525(A319806(n)-A165051(n))`
-/

namespace A319654.P4868313243957082919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319806 n - A165051 n).toNat

end

end A319654.P4868313243957082919

/-! ## A319654.P15579391907875965317

`A004526(A319806(n)-A165051(n))`
-/

namespace A319654.P15579391907875965317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319806 n - A165051 n).toNat

end

end A319654.P15579391907875965317

/-! ## A319654.P2514173336028007310

`A025480(A319806(n)-A165051(n))`
-/

namespace A319654.P2514173336028007310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319806 n - A165051 n).toNat

end

end A319654.P2514173336028007310

/-! ## A319654.P11956071862331199020

`A319723(n)-A008587(A165052(n))`
-/

namespace A319654.P11956071862331199020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n - A008587 (A165052 n).toNat

end

end A319654.P11956071862331199020

/-! ## A319654.P15696067988308942370

`A165052(A008588(n))-A008588(A165052(n))`
-/

namespace A319654.P15696067988308942370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 (A008588 n).toNat - A008588 (A165052 n).toNat

end

end A319654.P15696067988308942370

/-!
# A319655: Write n in 7-ary, sort digits into increasing order.

The programs for A319655, there is no canonical definition to state claims against.
-/

/-! ## A319655.P4846902824426974945

`A319724(n)-A165071(n)`
-/

namespace A319655.P4846902824426974945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n - A165071 n

end

end A319655.P4846902824426974945

/-! ## A319655.P4107937005696479455

`A319807(n)-A319724(n)`
-/

namespace A319655.P4107937005696479455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319807 n - A319724 n

end

end A319655.P4107937005696479455

/-! ## A319655.P9654121214226359343

`(A319807(n)-A165071(n))/2`
-/

namespace A319655.P9654121214226359343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319807 n - A165071 n : ℚ) / 2

end

end A319655.P9654121214226359343

/-! ## A319655.P9676501397889881553

`A038572(A319807(n)-A165071(n))`
-/

namespace A319655.P9676501397889881553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A319807 n - A165071 n).toNat

end

end A319655.P9676501397889881553

/-! ## A319655.P4509023637105125680

`A001281(A319807(n)-A165071(n))`
-/

namespace A319655.P4509023637105125680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319807 n - A165071 n).toNat

end

end A319655.P4509023637105125680

/-! ## A319655.P2428742957740556378

`A004525(A319807(n)-A165071(n))`
-/

namespace A319655.P2428742957740556378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319807 n - A165071 n).toNat

end

end A319655.P2428742957740556378

/-! ## A319655.P10521210486902621383

`A025480(A319807(n)-A165071(n))`
-/

namespace A319655.P10521210486902621383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319807 n - A165071 n).toNat

end

end A319655.P10521210486902621383

/-! ## A319655.P11389545939756160320

`A030106(A319724(n))`
-/

namespace A319655.P11389545939756160320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A319724 n).toNat

end

end A319655.P11389545939756160320

/-! ## A319655.P7777478390919578225

`A319724(n)-A008588(A165072(n))`
-/

namespace A319655.P7777478390919578225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n - A008588 (A165072 n).toNat

end

end A319655.P7777478390919578225

/-! ## A319655.P3878671734557660583

`A165072(A008589(n))-A008589(A165072(n))`
-/

namespace A319655.P3878671734557660583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165072 (A008589 n).toNat - A008589 (A165072 n).toNat

end

end A319655.P3878671734557660583

/-!
# A319656: Write n in 8-ary, sort digits into increasing order.

The programs for A319656, there is no canonical definition to state claims against.
-/

/-! ## A319656.P475037252539046359

`A319725(n)-A165090(n)`
-/

namespace A319656.P475037252539046359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n - A165090 n

end

end A319656.P475037252539046359

/-! ## A319656.P16473663674689984889

`A319808(n)-A319725(n)`
-/

namespace A319656.P16473663674689984889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 n - A319725 n

end

end A319656.P16473663674689984889

/-! ## A319656.P7585443803317232234

`(A319808(n)-A165090(n))/2`
-/

namespace A319656.P7585443803317232234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319808 n - A165090 n : ℚ) / 2

end

end A319656.P7585443803317232234

/-! ## A319656.P4385386339829974949

`A025480(A319808(n)-A165090(n))`
-/

namespace A319656.P4385386339829974949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319808 n - A165090 n).toNat

end

end A319656.P4385386339829974949

/-! ## A319656.P7066938422976672196

`A030107(A319725(n))`
-/

namespace A319656.P7066938422976672196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A319725 n).toNat

end

end A319656.P7066938422976672196

/-! ## A319656.P16894838175855931730

`A319725(n)-A008589(A165091(n))`
-/

namespace A319656.P16894838175855931730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n - A008589 (A165091 n).toNat

end

end A319656.P16894838175855931730

/-!
# A319657: Write n in 9-ary, sort digits into increasing order.

The programs for A319657, there is no canonical definition to state claims against.
-/

/-! ## A319657.P15440656243074289845

`A319726(n)-A165110(n)`
-/

namespace A319657.P15440656243074289845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n - A165110 n

end

end A319657.P15440656243074289845

/-! ## A319657.P12406122034502891590

`A319747(n)-A319726(n)`
-/

namespace A319657.P12406122034502891590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319747 n - A319726 n

end

end A319657.P12406122034502891590

/-! ## A319657.P9311538090259600904

`A030108(A319726(n))`
-/

namespace A319657.P9311538090259600904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A319726 n).toNat

end

end A319657.P9311538090259600904

/-! ## A319657.P10537410699071277900

`A055958(A319726(A264979(n)))-A319726(n)`
-/

namespace A319657.P10537410699071277900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 (A319726 (A264979 n).toNat).toNat - A319726 n

end

end A319657.P10537410699071277900

/-! ## A319657.P11142279038541617347

`A319726(n)-8*A165111(n)`
-/

namespace A319657.P11142279038541617347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n - 8 * A165111 n

end

end A319657.P11142279038541617347

/-! ## A319657.P1512752788714272532

`A165111(A008591(n))-A008591(A165111(n))`
-/

namespace A319657.P1512752788714272532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 (A008591 n).toNat - A008591 (A165111 n).toNat

end

end A319657.P1512752788714272532

/-!
# A319658: a(n) is the minimal number of successive ON cells that appears in n-th generation of rule-30 1D cellular automaton started from a single ON cell.

The programs for A319658, there is no canonical definition to state claims against.
-/

/-! ## A319658.P11745198692987877994

`round(ratio[A053262(n+3)])`
-/

namespace A319658.P11745198692987877994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053262 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A319658.P11745198692987877994

/-!
# A319659: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A003657(n).

The programs for A319659, the canonical program `A319659.P863151469873212101` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319659 has offset 1).

The definition of A319659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003640, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319659.P863151469873212101

`log2(A003640(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A319659

/-- `log2(A003640(n+1))` -/
def P863151469873212101.Spec : Prop :=
  ∀ n, P863151469873212101.a n = (A319659 (n + 1) : ℝ)

end A319659

/-! ## A319659.P13430446484640601843

`val(A003640(C(2, C(3, n²))+n), 2)`
-/

namespace A319659.P13430446484640601843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003640 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)).toNat 2

end

end A319659.P13430446484640601843

namespace A319659

/-- `val(A003640(C(2, C(3, n²))+n), 2)` -/
def P13430446484640601843.Spec : Prop :=
  ∀ n, (P13430446484640601843.a n : ℤ) = A319659 (n + 1)

end A319659

/-! ## A319659.P9261051815856874865

`A346700(A003640(n+1)²)`
-/

namespace A319659.P9261051815856874865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A003640 (n + 1) ^ 2).toNat

end

end A319659.P9261051815856874865

namespace A319659

/-- `A346700(A003640(n+1)²)` -/
def P9261051815856874865.Spec : Prop :=
  ∀ n, P9261051815856874865.a n = A319659 (n + 1)

end A319659

/-! ## A319659.P13650908941731354591

`A347395(A003640(n+1)²)`
-/

namespace A319659.P13650908941731354591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A003640 (n + 1) ^ 2).toNat

end

end A319659.P13650908941731354591

namespace A319659

/-- `A347395(A003640(n+1)²)` -/
def P13650908941731354591.Spec : Prop :=
  ∀ n, P13650908941731354591.a n = A319659 (n + 1)

end A319659

/-! ## A319659.P3133228929217264700

`A001221(A003657(n+1))-1`
-/

namespace A319659.P3133228929217264700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003657 (n + 1)).toNat - 1

end

end A319659.P3133228929217264700

namespace A319659

/-- `A001221(A003657(n+1))-1` -/
def P3133228929217264700.Spec : Prop :=
  ∀ n, P3133228929217264700.a n = A319659 (n + 1)

end A319659

/-! ## A319659.P4903975161770615035

`A297155(A003657(n+1))`
-/

namespace A319659.P4903975161770615035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A003657 (n + 1)).toNat

end

end A319659.P4903975161770615035

namespace A319659

/-- `A297155(A003657(n+1))` -/
def P4903975161770615035.Spec : Prop :=
  ∀ n, P4903975161770615035.a n = A319659 (n + 1)

end A319659

/-!
# A319660: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A039957(n).

The programs for A319660, the canonical program `A319660.P2765349370195988953` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319660 has offset 1).

The definition of A319660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319660.P5001723178477861450

`log2(A003641(n+1))`
-/

namespace A319660.P5001723178477861450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003641 (n + 1) : ℝ)

end

end A319660.P5001723178477861450

namespace A319660

/-- `log2(A003641(n+1))` -/
def P5001723178477861450.Spec : Prop :=
  ∀ n, P5001723178477861450.a n = (A319660 (n + 1) : ℝ)

end A319660

/-! ## A319660.P2765349370195988953

`∑{e}[A039957(n+1), #]-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A319660

/-- `∑{e}[A039957(n+1), #]-1` -/
def P2765349370195988953.Spec : Prop :=
  ∀ n, P2765349370195988953.a n = A319660 (n + 1)

theorem P2765349370195988953.correct : P2765349370195988953.Spec := by
  intro n
  simp only [A319660, Nat.add_sub_cancel]

end A319660

/-! ## A319660.P8064219070865382609

`val(A003641(ceil(sqrt(n²+4))), 2)`
-/

namespace A319660.P8064219070865382609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003641 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat).toNat 2

end

end A319660.P8064219070865382609

namespace A319660

/-- `val(A003641(ceil(sqrt(n²+4))), 2)` -/
def P8064219070865382609.Spec : Prop :=
  ∀ n, (P8064219070865382609.a n : ℤ) = A319660 (n + 1)

end A319660

/-! ## A319660.P6510246632986746087

`A001221(A039957(n+1))-1`
-/

namespace A319660.P6510246632986746087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039957 (n + 1)).toNat - 1

end

end A319660.P6510246632986746087

namespace A319660

/-- `A001221(A039957(n+1))-1` -/
def P6510246632986746087.Spec : Prop :=
  ∀ n, P6510246632986746087.a n = A319660 (n + 1)

end A319660

/-! ## A319660.P6717044406532095529

`∑{d}[A003641(n+1), A056170(#²)]`
-/

namespace A319660.P6717044406532095529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056170 (d ^ 2)

end

end A319660.P6717044406532095529

namespace A319660

/-- `∑{d}[A003641(n+1), A056170(#²)]` -/
def P6717044406532095529.Spec : Prop :=
  ∀ n, P6717044406532095529.a n = A319660 (n + 1)

end A319660

/-! ## A319660.P6902470931104194355

`A001222(record[∏{p}[4*n+3, #]])-1`
-/

namespace A319660.P6902470931104194355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 1

end

end A319660.P6902470931104194355

namespace A319660

/-- `A001222(record[∏{p}[4*n+3, #]])-1` -/
def P6902470931104194355.Spec : Prop :=
  ∀ n, P6902470931104194355.a n = A319660 (n + 1)

end A319660

/-! ## A319660.P7205871758971906879

`A076754(A039957(n+1))`
-/

namespace A319660.P7205871758971906879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076754 (A039957 (n + 1)).toNat

end

end A319660.P7205871758971906879

namespace A319660

/-- `A076754(A039957(n+1))` -/
def P7205871758971906879.Spec : Prop :=
  ∀ n, P7205871758971906879.a n = A319660 (n + 1)

end A319660

/-!
# A319661: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A191483(n).

The programs for A319661, the canonical program `A319661.P15202188947145428024` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319661 has offset 1).

The definition of A319661 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319661.P15202188947145428024

`log2(A003642(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319661

/-- `log2(A003642(n+1))` -/
def P15202188947145428024.Spec : Prop :=
  ∀ n, P15202188947145428024.a n = (A319661 (n + 1) : ℝ)

end A319661

/-! ## A319661.P12113655262981035321

`∑{e}[∏{p}[A191483(n+1), #], #]-1`
-/

namespace A319661.P12113655262981035321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A319661.P12113655262981035321

namespace A319661

/-- `∑{e}[∏{p}[A191483(n+1), #], #]-1` -/
def P12113655262981035321.Spec : Prop :=
  ∀ n, P12113655262981035321.a n = A319661 (n + 1)

end A319661

/-! ## A319661.P5935682235434854906

`A235127(A003642(n+1)²)`
-/

namespace A319661.P5935682235434854906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A003642 (n + 1) ^ 2).toNat

end

end A319661.P5935682235434854906

namespace A319661

/-- `A235127(A003642(n+1)²)` -/
def P5935682235434854906.Spec : Prop :=
  ∀ n, P5935682235434854906.a n = A319661 (n + 1)

end A319661

/-! ## A319661.P6968975534460186181

`A000120(A003642(n+1)-1)`
-/

namespace A319661.P6968975534460186181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003642 (n + 1) - 1).toNat

end

end A319661.P6968975534460186181

namespace A319661

/-- `A000120(A003642(n+1)-1)` -/
def P6968975534460186181.Spec : Prop :=
  ∀ n, P6968975534460186181.a n = A319661 (n + 1)

end A319661

/-! ## A319661.P15200727365736195086

`A001221(A191483(n+1))-1`
-/

namespace A319661.P15200727365736195086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A191483 (n + 1)).toNat - 1

end

end A319661.P15200727365736195086

namespace A319661

/-- `A001221(A191483(n+1))-1` -/
def P15200727365736195086.Spec : Prop :=
  ∀ n, P15200727365736195086.a n = A319661 (n + 1)

end A319661

/-! ## A319661.P7077392455413527909

`A005087(A089269(n+1))`
-/

namespace A319661.P7077392455413527909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A089269 (n + 1)).toNat

end

end A319661.P7077392455413527909

namespace A319661

/-- `A005087(A089269(n+1))` -/
def P7077392455413527909.Spec : Prop :=
  ∀ n, P7077392455413527909.a n = A319661 (n + 1)

end A319661

/-! ## A319661.P18167328044918685254

`A005087(A191483(n+1)/2)`
-/

namespace A319661.P18167328044918685254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (SequenceMachineLib.roundAway ((A191483 (n + 1) : ℚ) / 2)).toNat

end

end A319661.P18167328044918685254

namespace A319661

/-- `A005087(A191483(n+1)/2)` -/
def P18167328044918685254.Spec : Prop :=
  ∀ n, P18167328044918685254.a n = A319661 (n + 1)

end A319661

/-! ## A319661.P1662573161274163144

`A005087(A191483(n+1))`
-/

namespace A319661.P1662573161274163144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A191483 (n + 1)).toNat

end

end A319661.P1662573161274163144

namespace A319661

/-- `A005087(A191483(n+1))` -/
def P1662573161274163144.Spec : Prop :=
  ∀ n, P1662573161274163144.a n = A319661 (n + 1)

end A319661

/-!
# A319662: 2-rank of the class group of Q(sqrt(-k)), k squarefree.

The programs for A319662, there is no canonical definition to state claims against.
-/

/-! ## A319662.P7839629986934582668

`log2(A003643(n+1))`
-/

namespace A319662.P7839629986934582668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003643 (n + 1) : ℝ)

end

end A319662.P7839629986934582668

/-! ## A319662.P5227231440518869039

`A231204(A003643(n+1)+1)`
-/

namespace A319662.P5227231440518869039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A003643 (n + 1) + 1).toNat

end

end A319662.P5227231440518869039

/-! ## A319662.P9784355398801424784

`A000120(A003643(n+1)-1)`
-/

namespace A319662.P9784355398801424784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003643 (n + 1) - 1).toNat

end

end A319662.P9784355398801424784

/-! ## A319662.P12244440691700162449

`A002487(A003643(n+1)-1)`
-/

namespace A319662.P12244440691700162449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003643 (n + 1) - 1).toNat

end

end A319662.P12244440691700162449

/-! ## A319662.P7206127784011543455

`∑{d}[A003643(n+1), A188973(#)]`
-/

namespace A319662.P7206127784011543455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A188973 d

end

end A319662.P7206127784011543455

/-!
# A319663: Irregular triangle read by rows: T(n,k) = 5^k mod 2^n, n >= 2, 0 <= k <= 2^(n-2) - 1.

The programs for A319663, there is no canonical definition to state claims against.
-/

/-! ## A319663.P13600577094054930710

`(5*a(n-1))%A062383(2*n)` with `a(0)=1`
-/

namespace A319663.P13600577094054930710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (5 * a (n - 1)) (A062383 (2 * n))

end

end A319663.P13600577094054930710

/-! ## A319663.P12360411875221654716

`and(5*a(n-1), A003817(2*n))` with `a(0)=1`
-/

namespace A319663.P12360411875221654716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (5 * a (n - 1)) (A003817 (2 * n))

end

end A319663.P12360411875221654716

/-! ## A319663.P9375667699722834287

`and(5*a(n-1), A142151(2*n+1))` with `a(0)=1`
-/

namespace A319663.P9375667699722834287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (5 * a (n - 1)) (A142151 (2 * n + 1))

end

end A319663.P9375667699722834287

/-! ## A319663.P11285318359997729214

`and(5*a(n-1), A005408(A003817(n)))` with `a(0)=1`
-/

namespace A319663.P11285318359997729214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (5 * a (n - 1)) (A005408 (A003817 n).toNat)

end

end A319663.P11285318359997729214

/-! ## A319663.P17117819852485507482

`A000351(n+1)%A000079(A070939(2*n))`
-/

namespace A319663.P17117819852485507482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 (n + 1)) (A000079 (A070939 (2 * n)).toNat)

end

end A319663.P17117819852485507482

/-!
# A319664: Irregular triangle read by rows: T(n,k) = (-3)^k mod 2^n, n >= 2, 0 <= k <= 2^(n-2) - 1.

The programs for A319664, there is no canonical definition to state claims against.
-/

/-! ## A319664.P14922224691805463538

`and(-(3*a(n-1)), A003817(2*n))` with `a(0)=1`
-/

namespace A319664.P14922224691805463538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-(3 * a (n - 1))) (A003817 (2 * n))

end

end A319664.P14922224691805463538

/-! ## A319664.P10830019511144526626

`and((-3)^(n+1), A006068(A062383(n)))`
-/

namespace A319664.P10830019511144526626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-3) ^ (n + 1)) (A006068 (A062383 n).toNat)

end

end A319664.P10830019511144526626

/-! ## A319664.P13229652071786702941

`A116873(n)%A000079(A029837(2*(n+1)))`
-/

namespace A319664.P13229652071786702941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116873 n) (A000079 (A029837 (2 * (n + 1))).toNat)

end

end A319664.P13229652071786702941

/-! ## A319664.P5455457418758663982

`and(A000225(A029837(n+1)+1), A141413(n+3))`
-/

namespace A319664.P5455457418758663982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A029837 (n + 1) + 1).toNat) (A141413 (n + 3))

end

end A319664.P5455457418758663982

/-!
# A319665: Irregular triangle read by rows: T(n,k) is the discrete logarithm log_5(4*k + 1) in the cyclic group 1+4Z/2^nZ, n >= 2, 0 <= k <= 2^(n-2) - 1.

The programs for A319665, there is no canonical definition to state claims against.
-/

/-! ## A319665.P1164884295047240957

`A039724(A077168(n))%A053644(n+1)`
-/

namespace A319665.P1164884295047240957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039724 (A077168 n).toNat) (A053644 (n + 1))

end

end A319665.P1164884295047240957

/-!
# A319666: Irregular triangle read by rows: T(n,k) is the discrete logarithm log_(-3)(4*k + 1) in the cyclic group 1+4Z/2^nZ, n >= 2, 0 <= k <= 2^(n-2) - 1.

The programs for A319666, there is no canonical definition to state claims against.
-/

/-! ## A319666.P13465319303622897507

`∑[a(n-1)+12]%A065291(2*(n+1))` with `a(0)=11`
-/

namespace A319666.P13465319303622897507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A065291 (2 * (n + 1)))

end

end A319666.P13465319303622897507

/-! ## A319666.P9471992816685876479

`A055437(n+1)%A037445(A000029(n))`
-/

namespace A319666.P9471992816685876479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055437 (n + 1)) (A037445 (A000029 n).toNat)

end

end A319666.P9471992816685876479

/-! ## A319666.P17593637742800544178

`xor(A164089(2*n+4), A179184(A113239(n+1)))`
-/

namespace A319666.P17593637742800544178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A164089 (2 * n + 4)) (A179184 (A113239 (n + 1)).toNat)

end

end A319666.P17593637742800544178

/-! ## A319666.P16947332354694333509

`A053645(A053645(n+2)+A014551(n))`
-/

namespace A319666.P16947332354694333509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A053645 (n + 2) + A014551 n).toNat

end

end A319666.P16947332354694333509

/-! ## A319666.P15886458249391671131

`xor(A164089(2*n+4), A179184(A062838(n+1)))`
-/

namespace A319666.P15886458249391671131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A164089 (2 * n + 4)) (A179184 (A062838 (n + 1)).toNat)

end

end A319666.P15886458249391671131

/-!
# A319667: Palindromes a(n) = (10^n + 1)*(10^(n+1) + 1).

The programs for A319667, the canonical program `A319667.P6425395202759245963` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319667 has offset 0).

The definition of A319667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+1)*(10^(n+1)+1)` (program `A319667.P6425395202759245963`, by `A319667.P6425395202759245963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319667.P6425395202759245963

`(10^n+1)*(10^(n+1)+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319667

/-- `(10^n+1)*(10^(n+1)+1)` -/
def P6425395202759245963.Spec : Prop :=
  ∀ n, (P6425395202759245963.a n : ℤ) = A319667 n

theorem P6425395202759245963.correct : P6425395202759245963.Spec := by
  intro n
  simp only [A319667]

end A319667

/-! ## A319667.P16145329506879429094

`A065983((n+1)²+1)`
-/

namespace A319667.P16145329506879429094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065983 ((n + 1) ^ 2 + 1)

end

end A319667.P16145329506879429094

namespace A319667

/-- `A065983((n+1)²+1)` -/
def P16145329506879429094.Spec : Prop :=
  ∀ n, P16145329506879429094.a n = A319667 n

end A319667

/-! ## A319667.P16572005949425255348

`A081930(A033816(n))`
-/

namespace A319667.P16572005949425255348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081930 (A033816 n).toNat

end

end A319667.P16572005949425255348

namespace A319667

/-- `A081930(A033816(n))` -/
def P16572005949425255348.Spec : Prop :=
  ∀ n, P16572005949425255348.a n = A319667 n

end A319667

/-! ## A319667.P17028956955500123139

`lcm(A062397(n+1), A062397(n))`
-/

namespace A319667.P17028956955500123139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062397 (n + 1)) (A062397 n)

end

end A319667.P17028956955500123139

namespace A319667

/-- `lcm(A062397(n+1), A062397(n))` -/
def P17028956955500123139.Spec : Prop :=
  ∀ n, (P17028956955500123139.a n : ℤ) = A319667 n

end A319667

/-! ## A319667.P11043696252031972067

`A002283(n+1)+A152577(n+1)+A062397(n)`
-/

namespace A319667.P11043696252031972067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) + (A152577 (n + 1) + A062397 n)

end

end A319667.P11043696252031972067

namespace A319667

/-- `A002283(n+1)+A152577(n+1)+A062397(n)` -/
def P11043696252031972067.Spec : Prop :=
  ∀ n, P11043696252031972067.a n = A319667 n

end A319667

/-! ## A319667.P15038734559661378646

`A000533(n+1)+A000533(n+1)*A011557(n)`
-/

namespace A319667.P15038734559661378646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 1) + A000533 (n + 1) * A011557 n

end

end A319667.P15038734559661378646

namespace A319667

/-- `A000533(n+1)+A000533(n+1)*A011557(n)` -/
def P15038734559661378646.Spec : Prop :=
  ∀ n, P15038734559661378646.a n = A319667 n

end A319667

/-!
# A319670: a(n) = [x^n] Product_{k>=2} 1/(1 - x^k)^n.

The programs for A319670, there is no canonical definition to state claims against.
-/

/-! ## A319670.P16542132113784311770

`A128627(A004277(n²))`
-/

namespace A319670.P16542132113784311770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128627 (A004277 (n ^ 2)).toNat

end

end A319670.P16542132113784311770

/-! ## A319670.P9297032486099010532

`A128627(A004277(n)*A028310(n))`
-/

namespace A319670.P9297032486099010532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128627 (A004277 n * A028310 n).toNat

end

end A319670.P9297032486099010532

/-! ## A319670.P12453936072899184904

`A220700(n)+A122200(A000079(n))`
-/

namespace A319670.P12453936072899184904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220700 n + A122200 (A000079 n).toNat

end

end A319670.P12453936072899184904

/-!
# A319671: a(n) = [x^n] Product_{k>=2} (1 + x^k)^n.

The programs for A319671, there is no canonical definition to state claims against.
-/

/-! ## A319671.P15427937853004387981

`A301971(A024652(n))`
-/

namespace A319671.P15427937853004387981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301971 (A024652 n).toNat

end

end A319671.P15427937853004387981

/-! ## A319671.P6342784281706674000

`A301971(A024653(n))`
-/

namespace A319671.P6342784281706674000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301971 (A024653 n).toNat

end

end A319671.P6342784281706674000

/-! ## A319671.P4758446221022967809

`A301971(A024654(n))`
-/

namespace A319671.P4758446221022967809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301971 (A024654 n).toNat

end

end A319671.P4758446221022967809

/-! ## A319671.P2087115695656693810

`A301971(A024655(n))`
-/

namespace A319671.P2087115695656693810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301971 (A024655 n).toNat

end

end A319671.P2087115695656693810

/-! ## A319671.P18245306235324188913

`A301971(A024656(n))`
-/

namespace A319671.P18245306235324188913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301971 (A024656 n).toNat

end

end A319671.P18245306235324188913

/-!
# A319672: a(n) = [x^n] Product_{k>=2} ((1 + x^k)/(1 - x^k))^n.

The programs for A319672, there is no canonical definition to state claims against.
-/

/-! ## A319672.P5267149796577114481

`lcm(A072088(a(n-1))-1, 2*n)` with `a(0)=1`
-/

namespace A319672.P5267149796577114481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A072088 (a (n - 1)) - 1) (2 * n : ℤ)

end

end A319672.P5267149796577114481

/-! ## A319672.P6019307239295250246

`(Δ[a(n-1)+2*(n-1)*a(n-2)]/2)%A173379(n+1)` with `a(0)=0, a(1)=2`
-/

namespace A319672.P6019307239295250246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 2 * (((n : ℤ) - 1) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 2)) (A173379 (n + 1))

end

end A319672.P6019307239295250246

/-!
# A319673: Primes that are neither a twin prime nor a Sophie Germain or safe prime.

The programs for A319673, the canonical program `A319673.P333362481988995367` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319673 has offset 1).

The definition of A319673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3878 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319673.P7102287295743972028

`∩[A007510(n+1), A059500(n+1)]`
-/

namespace A319673.P7102287295743972028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P7102287295743972028

namespace A319673

/-- `∩[A007510(n+1), A059500(n+1)]` -/
def P7102287295743972028.Spec : Prop :=
  ∀ n, (P7102287295743972028.a n : ℤ) = A319673 (n + 1)

end A319673

/-! ## A319673.P5746746487252187217

`∩[A059500(n+1), A134797(n+1)]`
-/

namespace A319673.P5746746487252187217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P5746746487252187217

namespace A319673

/-- `∩[A059500(n+1), A134797(n+1)]` -/
def P5746746487252187217.Spec : Prop :=
  ∀ n, (P5746746487252187217.a n : ℤ) = A319673 (n + 1)

end A319673

/-! ## A319673.P4633281129259330132

`∩[A059500(n+1), A167706(n+1)]`
-/

namespace A319673.P4633281129259330132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P4633281129259330132

namespace A319673

/-- `∩[A059500(n+1), A167706(n+1)]` -/
def P4633281129259330132.Spec : Prop :=
  ∀ n, (P4633281129259330132.a n : ℤ) = A319673 (n + 1)

end A319673

/-! ## A319673.P333362481988995367

`filter[A059500(n+1), A283265(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A319673

/-- `filter[A059500(n+1), A283265(#)]` -/
def P333362481988995367.Spec : Prop :=
  ∀ n, P333362481988995367.a n = A319673 (n + 1)

theorem P333362481988995367.correct : P333362481988995367.Spec := by
  intro n
  simp only [A319673, Nat.add_sub_cancel]

end A319673

/-! ## A319673.P11278699998772072725

`∩[A059500(n+1), A062729(n+1)]`
-/

namespace A319673.P11278699998772072725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P11278699998772072725

namespace A319673

/-- `∩[A059500(n+1), A062729(n+1)]` -/
def P11278699998772072725.Spec : Prop :=
  ∀ n, (P11278699998772072725.a n : ℤ) = A319673 (n + 1)

end A319673

/-! ## A319673.P14006057909814482347

`∩[A059500(n+1), A110673(n+1)]`
-/

namespace A319673.P14006057909814482347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P14006057909814482347

namespace A319673

/-- `∩[A059500(n+1), A110673(n+1)]` -/
def P14006057909814482347.Spec : Prop :=
  ∀ n, (P14006057909814482347.a n : ℤ) = A319673 (n + 1)

end A319673

/-! ## A319673.P442839402054424490

`∩[A059500(n+1), A396571(n+1)]`
-/

namespace A319673.P442839402054424490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P442839402054424490

namespace A319673

/-- `∩[A059500(n+1), A396571(n+1)]` -/
def P442839402054424490.Spec : Prop :=
  ∀ n, (P442839402054424490.a n : ℤ) = A319673 (n + 1)

end A319673

/-! ## A319673.P10015852366976848375

`∩[A059500(n+1), A255763(n+1)]`
-/

namespace A319673.P10015852366976848375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319673.P10015852366976848375

namespace A319673

/-- `∩[A059500(n+1), A255763(n+1)]` -/
def P10015852366976848375.Spec : Prop :=
  ∀ n, (P10015852366976848375.a n : ℤ) = A319673 (n + 1)

end A319673

/-!
# A319674: a(n) = 1 + 2 + 3 - 4 - 5 - 6 + 7 + 8 + 9 - 10 - 11 - 12 + ... - (up to n).

The programs for A319674, the canonical program `A319674.P12093248680778255113` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319674 has offset 1).

The definition of A319674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319674.P12093248680778255113

`a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=2, a(4)=-3, a(5)=-9, a(6)=-2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319674

/-- `a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)+a(n-7)` -/
def P12093248680778255113.Spec : Prop :=
  ∀ n, P12093248680778255113.a n = A319674 (n + 1)

theorem P12093248680778255113.correct : P12093248680778255113.Spec := by
  intro n
  simp only [A319674, Nat.add_sub_cancel]

end A319674

/-! ## A319674.P4721594611009751361

`∑[(n+1)*(-1)^floor(n/3)]`
-/

namespace A319674.P4721594611009751361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319674.P4721594611009751361

namespace A319674

/-- `∑[(n+1)*(-1)^floor(n/3)]` -/
def P4721594611009751361.Spec : Prop :=
  ∀ n, P4721594611009751361.a n = (A319674 (n + 1) : ℚ)

end A319674

/-! ## A319674.P337726772351207311

`-∑[(n+1)*A033999(A008620(n))]`
-/

namespace A319674.P337726772351207311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319674.P337726772351207311

namespace A319674

/-- `-∑[(n+1)*A033999(A008620(n))]` -/
def P337726772351207311.Spec : Prop :=
  ∀ n, P337726772351207311.a n = A319674 (n + 1)

end A319674

/-! ## A319674.P7512487836745594901

`∑[2*(n+1)*A033999(A002264(n))]/2`
-/

namespace A319674.P7512487836745594901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A033999 (A002264 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A319674.P7512487836745594901

namespace A319674

/-- `∑[2*(n+1)*A033999(A002264(n))]/2` -/
def P7512487836745594901.Spec : Prop :=
  ∀ n, P7512487836745594901.a n = (A319674 (n + 1) : ℚ)

end A319674

/-! ## A319674.P11206662316474838069

`A187601(n+1)+A187601(n+1)-A028357(n)`
-/

namespace A319674.P11206662316474838069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187601 (n + 1) + (A187601 (n + 1) - A028357 n)

end

end A319674.P11206662316474838069

namespace A319674

/-- `A187601(n+1)+A187601(n+1)-A028357(n)` -/
def P11206662316474838069.Spec : Prop :=
  ∀ n, P11206662316474838069.a n = A319674 (n + 1)

end A319674

/-! ## A319674.P5641662277970214873

`A122841(2*n+1)+∑[(n+1)*A033999(A002264(n))]`
-/

namespace A319674.P5641662277970214873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319674.P5641662277970214873

namespace A319674

/-- `A122841(2*n+1)+∑[(n+1)*A033999(A002264(n))]` -/
def P5641662277970214873.Spec : Prop :=
  ∀ n, P5641662277970214873.a n = A319674 (n + 1)

end A319674

/-!
# A319675: Sum of digits of prime(n) and digits of prime(n+1).

The programs for A319675, there is no canonical definition to state claims against.
-/

/-! ## A319675.P4010894430497656061

`∑{digits}[A045533(n+1), #]`
-/

namespace A319675.P4010894430497656061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A319675.P4010894430497656061

/-! ## A319675.P12721608327760244417

`∑{digits}[A049851(p?[2*n+1]), #]`
-/

namespace A319675.P12721608327760244417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A319675.P12721608327760244417

/-! ## A319675.P4966766195047160741

`A051351(n+2)-A051351(n)`
-/

namespace A319675.P4966766195047160741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 (n + 2) - A051351 n

end

end A319675.P4966766195047160741

/-! ## A319675.P13017085351131297721

`∑{p}[A006094(n+1), A007953(#)]`
-/

namespace A319675.P13017085351131297721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007953 p

end

end A319675.P13017085351131297721

/-! ## A319675.P6471724102962379701

`∑{p}[A006094(n+1), A095402(#)]`
-/

namespace A319675.P6471724102962379701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A095402 p

end

end A319675.P6471724102962379701

/-! ## A319675.P10301158518271776880

`∑{digits}[A049852(A000040(n+1)), #]`
-/

namespace A319675.P10301158518271776880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A319675.P10301158518271776880

/-! ## A319675.P16090225421042130347

`∑{digits}[A049851(A000040(n+2)), #]`
-/

namespace A319675.P16090225421042130347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A000040 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A319675.P16090225421042130347

/-! ## A319675.P4568180985051079219

`∑{digits}[A049852(record[A006530(n+2)]), #]`
-/

namespace A319675.P4568180985051079219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A319675.P4568180985051079219

/-! ## A319675.P1819527825482078438

`∑{digits}[A049852(record[A020639(n+2)]), #]`
-/

namespace A319675.P1819527825482078438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A319675.P1819527825482078438

/-! ## A319675.P7168997649749845517

`A007605(n+1)+A007605(n+2)`
-/

namespace A319675.P7168997649749845517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + A007605 (n + 2)

end

end A319675.P7168997649749845517

/-!
# A319676: Numerator of A047994(n)/n where A047994 is the unitary totient function.

The programs for A319676, the canonical program `A319676.P6719959262025814008` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319676 has offset 1).

The definition of A319676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319676.P6719959262025814008

`lcm(n+1, A047994(n+1))/(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A319676

/-- `lcm(n+1, A047994(n+1))/(n+1)` -/
def P6719959262025814008.Spec : Prop :=
  ∀ n, P6719959262025814008.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P3641018633944591219

`∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1]/A323409(C(2, C(3, n²))+n)`
-/

namespace A319676.P3641018633944591219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)) : ℤ) : ℚ) / (A323409 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n) : ℚ)

end

end A319676.P3641018633944591219

namespace A319676

/-- `∑{d}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #-1]/A323409(C(2, C(3, n²))+n)` -/
def P3641018633944591219.Spec : Prop :=
  ∀ n, P3641018633944591219.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P11134108700511900482

`A047994(n+1)/A323409(n+1)`
-/

namespace A319676.P11134108700511900482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A323409 (n + 1) : ℚ)

end

end A319676.P11134108700511900482

namespace A319676

/-- `A047994(n+1)/A323409(n+1)` -/
def P11134108700511900482.Spec : Prop :=
  ∀ n, P11134108700511900482.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P8835036352512272234

`A047994(n+1)/(n+1)*A319677(n+1)`
-/

namespace A319676.P8835036352512272234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (n + 1 : ℚ) * (A319677 (n + 1) : ℚ)

end

end A319676.P8835036352512272234

namespace A319676

/-- `A047994(n+1)/(n+1)*A319677(n+1)` -/
def P8835036352512272234.Spec : Prop :=
  ∀ n, P8835036352512272234.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P1393267874827031769

`A047994(n+1)/gcd(n+1, A323410(n+1))`
-/

namespace A319676.P1393267874827031769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A323410 (n + 1)) : ℚ)

end

end A319676.P1393267874827031769

namespace A319676

/-- `A047994(n+1)/gcd(n+1, A323410(n+1))` -/
def P1393267874827031769.Spec : Prop :=
  ∀ n, P1393267874827031769.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P12278257993194808518

`A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]/A323409(n+1)`
-/

namespace A319676.P12278257993194808518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) : ℤ) : ℚ) / (A323409 (n + 1) : ℚ)

end

end A319676.P12278257993194808518

namespace A319676

/-- `A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]/A323409(n+1)` -/
def P12278257993194808518.Spec : Prop :=
  ∀ n, P12278257993194808518.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P1657573527229046124

`A047994(n+1)/gcd(A047994(n+1), A131738(n))`
-/

namespace A319676.P1657573527229046124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (Int.gcd (A047994 (n + 1)) (A131738 n) : ℚ)

end

end A319676.P1657573527229046124

namespace A319676

/-- `A047994(n+1)/gcd(A047994(n+1), A131738(n))` -/
def P1657573527229046124.Spec : Prop :=
  ∀ n, P1657573527229046124.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P5823710515691719066

`A319677(n+1)-A323410(n+1)/A323409(n+1)`
-/

namespace A319676.P5823710515691719066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319677 (n + 1) : ℚ) - (A323410 (n + 1) : ℚ) / (A323409 (n + 1) : ℚ)

end

end A319676.P5823710515691719066

namespace A319676

/-- `A319677(n+1)-A323410(n+1)/A323409(n+1)` -/
def P5823710515691719066.Spec : Prop :=
  ∀ n, P5823710515691719066.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P11668585853292787608

`(A323408(n+1)-A323407(n+1))/A323409(n+1)`
-/

namespace A319676.P11668585853292787608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323408 (n + 1) - A323407 (n + 1) : ℚ) / (A323409 (n + 1) : ℚ)

end

end A319676.P11668585853292787608

namespace A319676

/-- `(A323408(n+1)-A323407(n+1))/A323409(n+1)` -/
def P11668585853292787608.Spec : Prop :=
  ∀ n, P11668585853292787608.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P5144221127728239465

`A345937(n+1)/A323409(n+1)*A345938(n+1)`
-/

namespace A319676.P5144221127728239465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345937 (n + 1) : ℚ) / (A323409 (n + 1) : ℚ) * (A345938 (n + 1) : ℚ)

end

end A319676.P5144221127728239465

namespace A319676

/-- `A345937(n+1)/A323409(n+1)*A345938(n+1)` -/
def P5144221127728239465.Spec : Prop :=
  ∀ n, P5144221127728239465.a n = (A319676 (n + 1) : ℚ)

end A319676

/-! ## A319676.P6566479692670063126

`A164306(A047994(n+1)+∑[n])`
-/

namespace A319676.P6566479692670063126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A047994 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A319676.P6566479692670063126

namespace A319676

/-- `A164306(A047994(n+1)+∑[n])` -/
def P6566479692670063126.Spec : Prop :=
  ∀ n, P6566479692670063126.a n = A319676 (n + 1)

end A319676

/-!
# A319677: Denominator of A047994(n)/n where A047994 is the unitary totient function.

The programs for A319677, the canonical program `A319677.P17823138448930020068` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319677 has offset 1).

The definition of A319677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319677.P17823138448930020068

`(n+1)/A323409(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A319677

/-- `(n+1)/A323409(n+1)` -/
def P17823138448930020068.Spec : Prop :=
  ∀ n, P17823138448930020068.a n = (A319677 (n + 1) : ℚ)

end A319677

/-! ## A319677.P14472860403315883932

`(n+1)/gcd(n+1, A047994(n+1))`
-/

namespace A319677.P14472860403315883932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A047994 (n + 1)) : ℚ)

end

end A319677.P14472860403315883932

namespace A319677

/-- `(n+1)/gcd(n+1, A047994(n+1))` -/
def P14472860403315883932.Spec : Prop :=
  ∀ n, P14472860403315883932.a n = (A319677 (n + 1) : ℚ)

end A319677

/-! ## A319677.P3197024830272676243

`(n+1)/A047994(n+1)*A319676(n+1)`
-/

namespace A319677.P3197024830272676243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A047994 (n + 1) : ℚ) * (A319676 (n + 1) : ℚ)

end

end A319677.P3197024830272676243

namespace A319677

/-- `(n+1)/A047994(n+1)*A319676(n+1)` -/
def P3197024830272676243.Spec : Prop :=
  ∀ n, P3197024830272676243.a n = (A319677 (n + 1) : ℚ)

end A319677

/-! ## A319677.P17618930837884618476

`lcm(n+1, A345938(n+1))/A345938(n+1)`
-/

namespace A319677.P17618930837884618476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A345938 (n + 1)) : ℚ) / (A345938 (n + 1) : ℚ)

end

end A319677.P17618930837884618476

namespace A319677

/-- `lcm(n+1, A345938(n+1))/A345938(n+1)` -/
def P17618930837884618476.Spec : Prop :=
  ∀ n, P17618930837884618476.a n = (A319677 (n + 1) : ℚ)

end A319677

/-! ## A319677.P2063008222450461684

`A000027(n+1)/gcd(A000027(n+1), A345938(n+1))`
-/

namespace A319677.P2063008222450461684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A345938 (n + 1)) : ℚ)

end

end A319677.P2063008222450461684

namespace A319677

/-- `A000027(n+1)/gcd(A000027(n+1), A345938(n+1))` -/
def P2063008222450461684.Spec : Prop :=
  ∀ n, P2063008222450461684.a n = (A319677 (n + 1) : ℚ)

end A319677

/-! ## A319677.P1959440392773528181

`lcm(A000027(n+1), A047994(n+1))/A047994(n+1)`
-/

namespace A319677.P1959440392773528181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A047994 (n + 1)) : ℚ) / (A047994 (n + 1) : ℚ)

end

end A319677.P1959440392773528181

namespace A319677

/-- `lcm(A000027(n+1), A047994(n+1))/A047994(n+1)` -/
def P1959440392773528181.Spec : Prop :=
  ∀ n, P1959440392773528181.a n = (A319677 (n + 1) : ℚ)

end A319677

/-! ## A319677.P13628512582724504778

`A054531(A047994(n+1)+A000217(n))`
-/

namespace A319677.P13628512582724504778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A047994 (n + 1) + A000217 n).toNat

end

end A319677.P13628512582724504778

namespace A319677

/-- `A054531(A047994(n+1)+A000217(n))` -/
def P13628512582724504778.Spec : Prop :=
  ∀ n, P13628512582724504778.a n = A319677 (n + 1)

end A319677

/-!
# A319678: Numbers with property that the first digit is the length of the number (written in base 10).

The programs for A319678, there is no canonical definition to state claims against.
-/

/-! ## A319678.P5201069066205466932

`∑[gcd(A222210(n), A232882(n+1))]`
-/

namespace A319678.P5201069066205466932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222210 n) (A232882 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319678.P5201069066205466932

/-!
# A319679: Number of distinct prime signatures that occur when map x -> A268674(x) is iterated, starting from x = n, until an even number is reached; a(1) = 0 by convention.

The programs for A319679, there is no canonical definition to state claims against.
-/

/-! ## A319679.P10812833578974458756

`A131576(n+1)^and(A059841(n), A266531(n+1))`
-/

namespace A319679.P10812833578974458756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131576 (n + 1) : ℚ) ^ (Int.land (A059841 n) (A266531 (n + 1)) : ℤ)

end

end A319679.P10812833578974458756

/-! ## A319679.P9668472984305116246

`A319689(n+1)^A105806(A287641(n))`
-/

namespace A319679.P9668472984305116246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319689 (n + 1) : ℚ) ^ (A105806 (A287641 n).toNat : ℤ)

end

end A319679.P9668472984305116246

/-! ## A319679.P5025047748831724022

`gcd(A131576(n+1), A305614(A094045(n+1)))`
-/

namespace A319679.P5025047748831724022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131576 (n + 1)) (A305614 (A094045 (n + 1)).toNat)

end

end A319679.P5025047748831724022

/-! ## A319679.P151384820172897217

`A319689(n+1)^A276719(A276719(n))`
-/

namespace A319679.P151384820172897217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319689 (n + 1) : ℚ) ^ (A276719 (A276719 n).toNat : ℤ)

end

end A319679.P151384820172897217

/-! ## A319679.P9642543496520640512

`gcd(A165289(n+1), A319689(n+1))`
-/

namespace A319679.P9642543496520640512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165289 (n + 1)) (A319689 (n + 1))

end

end A319679.P9642543496520640512

/-! ## A319679.P17939865552207865693

`A319689(A162537(n+1))`
-/

namespace A319679.P17939865552207865693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 (A162537 (n + 1)).toNat

end

end A319679.P17939865552207865693

/-! ## A319679.P14249958557839033861

`gcd(A249442(A272416(n)), A319700(n+1))`
-/

namespace A319679.P14249958557839033861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249442 (A272416 n).toNat) (A319700 (n + 1))

end

end A319679.P14249958557839033861

/-!
# A319680: a(n) = Product_{d|n} A019565(d)^[moebius(n/d) = +1].

The programs for A319680, there is no canonical definition to state claims against.
-/

/-! ## A319680.P16269457044832270568

`A019565(n+1)*A300831(n+1)`
-/

namespace A319680.P16269457044832270568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1) * A300831 (n + 1)

end

end A319680.P16269457044832270568

/-! ## A319680.P60252649310193941

`Δ[A288570(n)]*A300831(n+1)`
-/

namespace A319680.P60252649310193941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A300831 (n + 1)

end

end A319680.P60252649310193941

/-! ## A319680.P11757212438750234322

`A101278(A005836(n+2))*A300831(n+1)`
-/

namespace A319680.P11757212438750234322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 (A005836 (n + 2)).toNat * A300831 (n + 1)

end

end A319680.P11757212438750234322

/-! ## A319680.P14071462722659457662

`A293442(A198633(n))*A349056(n+1)`
-/

namespace A319680.P14071462722659457662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A198633 n).toNat * A349056 (n + 1)

end

end A319680.P14071462722659457662

/-! ## A319680.P9153619178563402209

`A008480(n+1)*A293442(A000079(n+1))`
-/

namespace A319680.P9153619178563402209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A293442 (A000079 (n + 1)).toNat

end

end A319680.P9153619178563402209

/-!
# A319681: Restricted growth sequence transform of A319680.

The programs for A319681, there is no canonical definition to state claims against.
-/

/-! ## A319681.P9547455840495381308

`∑[2-A108244(A046206(n+1)+1)]`
-/

namespace A319681.P9547455840495381308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108244 (A046206 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319681.P9547455840495381308

/-! ## A319681.P11875578490301356070

`∑[A117286(A322853(n))%2]`
-/

namespace A319681.P11875578490301356070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117286 (A322853 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319681.P11875578490301356070

/-! ## A319681.P8926431561934080914

`∑[and(1, A081810(A243071(2*(n+2))+1))]`
-/

namespace A319681.P8926431561934080914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081810 (A243071 (2 * (n + 2)) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319681.P8926431561934080914

/-! ## A319681.P11039318541505235232

`∑[A133872(A002415(A142150(n)))]`
-/

namespace A319681.P11039318541505235232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A002415 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319681.P11039318541505235232

/-! ## A319681.P7548123541420024700

`∑[and(2, A055820(A055820(n+3)+3))/2]`
-/

namespace A319681.P7548123541420024700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A055820 (A055820 (n + 3) + 3).toNat) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319681.P7548123541420024700

/-!
# A319683: Sum of A003415(d) over the proper divisors d of n, where A003415 is arithmetic derivative.

The programs for A319683, the canonical program `A319683.P12610436916634477773` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319683 has offset 1).

The definition of A319683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A319684, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319683.P12610436916634477773

`A319684(n+1)-A003415(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A319683

/-- `A319684(n+1)-A003415(n+1)` -/
def P12610436916634477773.Spec : Prop :=
  ∀ n, P12610436916634477773.a n = A319683 (n + 1)

theorem P12610436916634477773.correct : P12610436916634477773.Spec := by
  intro n
  simp only [A319683, Nat.add_sub_cancel]

end A319683

/-! ## A319683.P17053069439104135005

`∑{d}[n+1, A300252(#)]`
-/

namespace A319683.P17053069439104135005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300252 d

end

end A319683.P17053069439104135005

namespace A319683

/-- `∑{d}[n+1, A300252(#)]` -/
def P17053069439104135005.Spec : Prop :=
  ∀ n, P17053069439104135005.a n = A319683 (n + 1)

end A319683

/-! ## A319683.P7384727767422485315

`∑{d}[n+1, A003415(#%(n+1))]`
-/

namespace A319683.P7384727767422485315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (d % (n + 1))

end

end A319683.P7384727767422485315

namespace A319683

/-- `∑{d}[n+1, A003415(#%(n+1))]` -/
def P7384727767422485315.Spec : Prop :=
  ∀ n, P7384727767422485315.a n = A319683 (n + 1)

end A319683

/-! ## A319683.P16449254679781872394

`A344584(n+1)-A211991(n+1)`
-/

namespace A319683.P16449254679781872394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344584 (n + 1) - A211991 (n + 1)

end

end A319683.P16449254679781872394

namespace A319683

/-- `A344584(n+1)-A211991(n+1)` -/
def P16449254679781872394.Spec : Prop :=
  ∀ n, P16449254679781872394.a n = A319683 (n + 1)

theorem P16449254679781872394.correct : P16449254679781872394.Spec := by
  intro n
  simp only [A319683, Nat.add_sub_cancel, A319683.P16449254679781872394.a, A319683.P12610436916634477773.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A211991, A211991.P15084257827643114560.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A344584, A344584.P9009511371490729863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319683

/-! ## A319683.P17981228362858402578

`∑{d}[n+1, A003415(#)]-A003415(n+1)`
-/

namespace A319683.P17981228362858402578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d - A003415 (n + 1)

end

end A319683.P17981228362858402578

namespace A319683

/-- `∑{d}[n+1, A003415(#)]-A003415(n+1)` -/
def P17981228362858402578.Spec : Prop :=
  ∀ n, P17981228362858402578.a n = A319683 (n + 1)

end A319683

/-! ## A319683.P7989126989115966549

`∑{d}[n+1, A032741(#)*A300251((n+1)/#)]`
-/

namespace A319683.P7989126989115966549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319683.P7989126989115966549

namespace A319683

/-- `∑{d}[n+1, A032741(#)*A300251((n+1)/#)]` -/
def P7989126989115966549.Spec : Prop :=
  ∀ n, P7989126989115966549.a n = A319683 (n + 1)

end A319683

/-! ## A319683.P12193173878148969980

`∑{d}[n+1, A001065(#)*A349394((n+1)/#)]`
-/

namespace A319683.P12193173878148969980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319683.P12193173878148969980

namespace A319683

/-- `∑{d}[n+1, A001065(#)*A349394((n+1)/#)]` -/
def P12193173878148969980.Spec : Prop :=
  ∀ n, P12193173878148969980.a n = A319683 (n + 1)

end A319683

/-! ## A319683.P8662570958454065176

`∑{d}[n+1, A157658(#)*A319684((n+1)/#)]`
-/

namespace A319683.P8662570958454065176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319683.P8662570958454065176

namespace A319683

/-- `∑{d}[n+1, A157658(#)*A319684((n+1)/#)]` -/
def P8662570958454065176.Spec : Prop :=
  ∀ n, P8662570958454065176.a n = A319683 (n + 1)

end A319683

/-! ## A319683.P796220299383844146

`A001065(n+1)+A344584(n+1)-A003415(n+1)`
-/

namespace A319683.P796220299383844146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A344584 (n + 1) - A003415 (n + 1))

end

end A319683.P796220299383844146

namespace A319683

/-- `A001065(n+1)+A344584(n+1)-A003415(n+1)` -/
def P796220299383844146.Spec : Prop :=
  ∀ n, P796220299383844146.a n = A319683 (n + 1)

theorem P796220299383844146.correct : P796220299383844146.Spec := by
  intro n
  simp only [A319683, Nat.add_sub_cancel, A319683.P796220299383844146.a, A319683.P12610436916634477773.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A344584, A344584.P9009511371490729863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319683

/-! ## A319683.P17437843011290342350

`A319684(n+1)-(A211991(n+1)+A001065(n+1))`
-/

namespace A319683.P17437843011290342350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - (A211991 (n + 1) + A001065 (n + 1))

end

end A319683.P17437843011290342350

namespace A319683

/-- `A319684(n+1)-(A211991(n+1)+A001065(n+1))` -/
def P17437843011290342350.Spec : Prop :=
  ∀ n, P17437843011290342350.a n = A319683 (n + 1)

theorem P17437843011290342350.correct : P17437843011290342350.Spec := by
  intro n
  simp only [A319683, Nat.add_sub_cancel, A319683.P17437843011290342350.a, A319683.P12610436916634477773.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A211991, A211991.P15084257827643114560.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319683

/-! ## A319683.P18296117087806354194

`A319684(n+1)-(A344178(n+1)+A051953(n+1))`
-/

namespace A319683.P18296117087806354194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - (A344178 (n + 1) + A051953 (n + 1))

end

end A319683.P18296117087806354194

namespace A319683

/-- `A319684(n+1)-(A344178(n+1)+A051953(n+1))` -/
def P18296117087806354194.Spec : Prop :=
  ∀ n, P18296117087806354194.a n = A319683 (n + 1)

theorem P18296117087806354194.correct : P18296117087806354194.Spec := by
  intro n
  simp only [A319683, Nat.add_sub_cancel, A319683.P18296117087806354194.a, A319683.P12610436916634477773.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051953, A051953.P12093122754958550118.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A344178, A344178.P7382453285315687724.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A318305, A318305.P17845263951644339002.a, A349394, A349394.P210516795435731064.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319683

/-! ## A319683.P910898385034496879

`A319684(n+1)-(A300252(n+1)+A300251(n+1))`
-/

namespace A319683.P910898385034496879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - (A300252 (n + 1) + A300251 (n + 1))

end

end A319683.P910898385034496879

namespace A319683

/-- `A319684(n+1)-(A300252(n+1)+A300251(n+1))` -/
def P910898385034496879.Spec : Prop :=
  ∀ n, P910898385034496879.a n = A319683 (n + 1)

theorem P910898385034496879.correct : P910898385034496879.Spec := by
  intro n
  simp only [A319683, Nat.add_sub_cancel, A319683.P910898385034496879.a, A319683.P12610436916634477773.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A300252, A300252.P5081431345107026110.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319683

/-!
# A319684: Sum of A003415(d) over the divisors d of n, where A003415 is arithmetic derivative.

The programs for A319684, the canonical program `A319684.P10446271486458079777` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319684 has offset 1).

The definition of A319684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319684.P4261282038143793440

`A319683(n+1)+A003415(n+1)`
-/

namespace A319684.P4261282038143793440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319683 (n + 1) + A003415 (n + 1)

end

end A319684.P4261282038143793440

namespace A319684

/-- `A319683(n+1)+A003415(n+1)` -/
def P4261282038143793440.Spec : Prop :=
  ∀ n, P4261282038143793440.a n = A319684 (n + 1)

theorem P4261282038143793440.correct : P4261282038143793440.Spec := by
  intro n
  simp only [A319684, Nat.add_sub_cancel, A319684.P4261282038143793440.a, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A319683, A319683.P12610436916634477773.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319684

/-! ## A319684.P16322355833614698581

`∑{d}[n+1, A003415(#)]`
-/

namespace A319684.P16322355833614698581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d

end

end A319684.P16322355833614698581

namespace A319684

/-- `∑{d}[n+1, A003415(#)]` -/
def P16322355833614698581.Spec : Prop :=
  ∀ n, P16322355833614698581.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P3696287720005000445

`∑{d}[n+1, A168036(#)+#]`
-/

namespace A319684.P3696287720005000445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A168036 d + (d : ℤ))

end

end A319684.P3696287720005000445

namespace A319684

/-- `∑{d}[n+1, A168036(#)+#]` -/
def P3696287720005000445.Spec : Prop :=
  ∀ n, P3696287720005000445.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P1328868493361741759

`∑{d}[n+1, A129283(#)-#]`
-/

namespace A319684.P1328868493361741759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A129283 d - (d : ℤ))

end

end A319684.P1328868493361741759

namespace A319684

/-- `∑{d}[n+1, A129283(#)-#]` -/
def P1328868493361741759.Spec : Prop :=
  ∀ n, P1328868493361741759.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P17237031961354471364

`A344584(n+1)+A001065(n+1)`
-/

namespace A319684.P17237031961354471364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344584 (n + 1) + A001065 (n + 1)

end

end A319684.P17237031961354471364

namespace A319684

/-- `A344584(n+1)+A001065(n+1)` -/
def P17237031961354471364.Spec : Prop :=
  ∀ n, P17237031961354471364.a n = A319684 (n + 1)

theorem P17237031961354471364.correct : P17237031961354471364.Spec := by
  intro n
  simp only [A319684, Nat.add_sub_cancel, A319684.P17237031961354471364.a, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A344584, A344584.P9009511371490729863.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319684

/-! ## A319684.P8119123932219056051

`∑{d}[n+1, A000005(#)*A300251((n+1)/#)]`
-/

namespace A319684.P8119123932219056051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P8119123932219056051

namespace A319684

/-- `∑{d}[n+1, A000005(#)*A300251((n+1)/#)]` -/
def P8119123932219056051.Spec : Prop :=
  ∀ n, P8119123932219056051.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P10446271486458079777

`∑{d}[n+1, A000203(#)*A349394((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319684

/-- `∑{d}[n+1, A000203(#)*A349394((n+1)/#)]` -/
def P10446271486458079777.Spec : Prop :=
  ∀ n, P10446271486458079777.a n = A319684 (n + 1)

theorem P10446271486458079777.correct : P10446271486458079777.Spec := by
  intro n
  simp only [A319684, Nat.add_sub_cancel]

end A319684

/-! ## A319684.P84272276044074339

`∑{d}[n+1, A003967(#)*A349620((n+1)/#)]`
-/

namespace A319684.P84272276044074339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P84272276044074339

namespace A319684

/-- `∑{d}[n+1, A003967(#)*A349620((n+1)/#)]` -/
def P84272276044074339.Spec : Prop :=
  ∀ n, P84272276044074339.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P17210392643820825387

`∑{d}[n+1, A003969(#)*A349621((n+1)/#)]`
-/

namespace A319684.P17210392643820825387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P17210392643820825387

namespace A319684

/-- `∑{d}[n+1, A003969(#)*A349621((n+1)/#)]` -/
def P17210392643820825387.Spec : Prop :=
  ∀ n, P17210392643820825387.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P7741044918836580123

`∑{d}[n+1, A023900(#)*A347130((n+1)/#)]`
-/

namespace A319684.P7741044918836580123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P7741044918836580123

namespace A319684

/-- `∑{d}[n+1, A023900(#)*A347130((n+1)/#)]` -/
def P7741044918836580123.Spec : Prop :=
  ∀ n, P7741044918836580123.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P3311199559411145045

`∑{d}[n+1, A062953(#)*A349173((n+1)/#)]`
-/

namespace A319684.P3311199559411145045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062953 d * A349173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P3311199559411145045

namespace A319684

/-- `∑{d}[n+1, A062953(#)*A349173((n+1)/#)]` -/
def P3311199559411145045.Spec : Prop :=
  ∀ n, P3311199559411145045.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P7994487702222367372

`∑{d}[n+1, A101035(#)*A349123((n+1)/#)]`
-/

namespace A319684.P7994487702222367372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A349123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P7994487702222367372

namespace A319684

/-- `∑{d}[n+1, A101035(#)*A349123((n+1)/#)]` -/
def P7994487702222367372.Spec : Prop :=
  ∀ n, P7994487702222367372.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P1977052038887129913

`∑{d}[n+1, A130054(#)*A347131((n+1)/#)]`
-/

namespace A319684.P1977052038887129913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A347131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P1977052038887129913

namespace A319684

/-- `∑{d}[n+1, A130054(#)*A347131((n+1)/#)]` -/
def P1977052038887129913.Spec : Prop :=
  ∀ n, P1977052038887129913.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P1001291133920020685

`∑{d}[n+1, A191750(#)*A349618((n+1)/#)]`
-/

namespace A319684.P1001291133920020685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191750 d * A349618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P1001291133920020685

namespace A319684

/-- `∑{d}[n+1, A191750(#)*A349618((n+1)/#)]` -/
def P1001291133920020685.Spec : Prop :=
  ∀ n, P1001291133920020685.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P16611357323654800383

`∑{d}[n+1, A276833(#)*A349133((n+1)/#)]`
-/

namespace A319684.P16611357323654800383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276833 d * A349133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P16611357323654800383

namespace A319684

/-- `∑{d}[n+1, A276833(#)*A349133((n+1)/#)]` -/
def P16611357323654800383.Spec : Prop :=
  ∀ n, P16611357323654800383.a n = A319684 (n + 1)

end A319684

/-! ## A319684.P7822182237894526803

`A001065(n+1)+A319683(n+1)+A211991(n+1)`
-/

namespace A319684.P7822182237894526803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A319683 (n + 1) + A211991 (n + 1))

end

end A319684.P7822182237894526803

namespace A319684

/-- `A001065(n+1)+A319683(n+1)+A211991(n+1)` -/
def P7822182237894526803.Spec : Prop :=
  ∀ n, P7822182237894526803.a n = A319684 (n + 1)

theorem P7822182237894526803.correct : P7822182237894526803.Spec := by
  intro n
  simp only [A319684, Nat.add_sub_cancel, A319684.P7822182237894526803.a, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A211991, A211991.P15084257827643114560.a, A319683, A319683.P12610436916634477773.a, A349394, A349394.P210516795435731064.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319684

/-! ## A319684.P5038917809619270943

`A051953(n+1)+A344178(n+1)+A319683(n+1)`
-/

namespace A319684.P5038917809619270943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A344178 (n + 1) + A319683 (n + 1))

end

end A319684.P5038917809619270943

namespace A319684

/-- `A051953(n+1)+A344178(n+1)+A319683(n+1)` -/
def P5038917809619270943.Spec : Prop :=
  ∀ n, P5038917809619270943.a n = A319684 (n + 1)

theorem P5038917809619270943.correct : P5038917809619270943.Spec := by
  intro n
  simp only [A319684, Nat.add_sub_cancel, A319684.P5038917809619270943.a, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P12093122754958550118.a, A319683, A319683.P12610436916634477773.a, A344178, A344178.P7382453285315687724.a, A349394, A349394.P210516795435731064.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A318305, A318305.P17845263951644339002.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319684

/-! ## A319684.P2187232248083131957

`A300251(n+1)+A319683(n+1)+A300252(n+1)`
-/

namespace A319684.P2187232248083131957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (n + 1) + (A319683 (n + 1) + A300252 (n + 1))

end

end A319684.P2187232248083131957

namespace A319684

/-- `A300251(n+1)+A319683(n+1)+A300252(n+1)` -/
def P2187232248083131957.Spec : Prop :=
  ∀ n, P2187232248083131957.a n = A319684 (n + 1)

theorem P2187232248083131957.correct : P2187232248083131957.Spec := by
  intro n
  simp only [A319684, Nat.add_sub_cancel, A319684.P2187232248083131957.a, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A300252, A300252.P5081431345107026110.a, A319683, A319683.P12610436916634477773.a, A349394, A349394.P210516795435731064.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319684

/-! ## A319684.P2921204229575483894

`A003415(n+1)+A344584(n+1)-A211991(n+1)`
-/

namespace A319684.P2921204229575483894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A344584 (n + 1) - A211991 (n + 1))

end

end A319684.P2921204229575483894

namespace A319684

/-- `A003415(n+1)+A344584(n+1)-A211991(n+1)` -/
def P2921204229575483894.Spec : Prop :=
  ∀ n, P2921204229575483894.a n = A319684 (n + 1)

theorem P2921204229575483894.correct : P2921204229575483894.Spec := by
  intro n
  simp only [A319684, Nat.add_sub_cancel, A319684.P2921204229575483894.a, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A211991, A211991.P15084257827643114560.a, A344584, A344584.P9009511371490729863.a, A349394, A349394.P210516795435731064.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319684

/-! ## A319684.P991473673040185051

`A344584(n+1)+A007517(n+1)/A000010(n+1)`
-/

namespace A319684.P991473673040185051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344584 (n + 1) : ℚ) + (A007517 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A319684.P991473673040185051

namespace A319684

/-- `A344584(n+1)+A007517(n+1)/A000010(n+1)` -/
def P991473673040185051.Spec : Prop :=
  ∀ n, P991473673040185051.a n = (A319684 (n + 1) : ℚ)

end A319684

/-!
# A319685: Number of distinct values obtained when arithmetic derivative (A003415) is applied to proper divisors of n.

The programs for A319685, there is no canonical definition to state claims against.
-/

/-! ## A319685.P6585579192067119529

`A319686(n+1)-1`
-/

namespace A319685.P6585579192067119529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319686 (n + 1) - 1

end

end A319685.P6585579192067119529

/-! ## A319685.P18294029360536174347

`A259361(A319686(n+1)²)`
-/

namespace A319685.P18294029360536174347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A319686 (n + 1) ^ 2).toNat

end

end A319685.P18294029360536174347

/-! ## A319685.P12129605630954106497

`A025581(2*A319686(n+1)²)`
-/

namespace A319685.P12129605630954106497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A319686 (n + 1) ^ 2).toNat

end

end A319685.P12129605630954106497

/-! ## A319685.P269738015988729469

`A081490(A319686(n+1)²)%A319686(n+1)`
-/

namespace A319685.P269738015988729469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081490 (A319686 (n + 1) ^ 2).toNat) (A319686 (n + 1))

end

end A319685.P269738015988729469

/-! ## A319685.P9119226789412025561

`A200748(n)%A319686(n+1)`
-/

namespace A319685.P9119226789412025561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A319686 (n + 1))

end

end A319685.P9119226789412025561

/-! ## A319685.P318358168827883948

`A117010(n+1)%A319686(n+1)`
-/

namespace A319685.P318358168827883948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A319686 (n + 1))

end

end A319685.P318358168827883948

/-! ## A319685.P2050339649513026039

`A070198(n)%A319686(n+1)`
-/

namespace A319685.P2050339649513026039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A319686 (n + 1))

end

end A319685.P2050339649513026039

/-! ## A319685.P10638535542617311388

`A079782(n+1)%A319686(n+1)`
-/

namespace A319685.P10638535542617311388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A319686 (n + 1))

end

end A319685.P10638535542617311388

/-! ## A319685.P5117585311046092045

`A083685(n+1)%A319686(n+1)`
-/

namespace A319685.P5117585311046092045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A319686 (n + 1))

end

end A319685.P5117585311046092045

/-! ## A319685.P9992406929189751712

`A121934(n+1)%A319686(n+1)`
-/

namespace A319685.P9992406929189751712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A319686 (n + 1))

end

end A319685.P9992406929189751712

/-! ## A319685.P4858895866070126847

`A030494(n+1)%A319686(n+1)`
-/

namespace A319685.P4858895866070126847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A319686 (n + 1))

end

end A319685.P4858895866070126847

/-! ## A319685.P5463551908795176768

`A072828(n+1)%A319686(n+1)`
-/

namespace A319685.P5463551908795176768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A319686 (n + 1))

end

end A319685.P5463551908795176768

/-! ## A319685.P11650772871106615747

`A198277(n)%A319686(n+1)`
-/

namespace A319685.P11650772871106615747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A319686 (n + 1))

end

end A319685.P11650772871106615747

/-! ## A319685.P16745914327599455222

`A033273(n+1)*A267084(A045896(n))`
-/

namespace A319685.P16745914327599455222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) * A267084 (A045896 n).toNat

end

end A319685.P16745914327599455222

/-! ## A319685.P12503366609624267108

`and(A003817(n²), A033273(n+1))`
-/

namespace A319685.P12503366609624267108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (n ^ 2)) (A033273 (n + 1))

end

end A319685.P12503366609624267108

/-! ## A319685.P12844325563639089024

`A057427(n²)+A055212(n+1)`
-/

namespace A319685.P12844325563639089024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2) + A055212 (n + 1)

end

end A319685.P12844325563639089024

/-! ## A319685.P10830650419007492111

`A055212(n+1)+A055212(A066048(n+1))`
-/

namespace A319685.P10830650419007492111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + A055212 (A066048 (n + 1)).toNat

end

end A319685.P10830650419007492111

/-! ## A319685.P48651145664329050

`∑{d}[n+1, A267683(A267682(#))]-A079553(n+1)`
-/

namespace A319685.P48651145664329050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267683 (A267682 d).toNat - A079553 (n + 1)

end

end A319685.P48651145664329050

/-!
# A319686: Number of distinct values obtained when arithmetic derivative (A003415) is applied to the divisors of n.

The programs for A319686, there is no canonical definition to state claims against.
-/

/-! ## A319686.P1171943208500963856

`1+A319685(n+1)`
-/

namespace A319686.P1171943208500963856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A319685 (n + 1)

end

end A319686.P1171943208500963856

/-! ## A319686.P3565364117856453464

`A033273(n+1)%A006156(n)+1`
-/

namespace A319686.P3565364117856453464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033273 (n + 1)) (A006156 n) + 1

end

end A319686.P3565364117856453464

/-! ## A319686.P3973236778247928330

`A055212(n+1)+A014673(A132200(n))`
-/

namespace A319686.P3973236778247928330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + A014673 (A132200 n).toNat

end

end A319686.P3973236778247928330

/-! ## A319686.P2652935480398503923

`A043545(A160664(n))+A033273(n+1)`
-/

namespace A319686.P2652935480398503923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A160664 n).toNat + A033273 (n + 1)

end

end A319686.P2652935480398503923

/-! ## A319686.P18404077463230371803

`A267084(A132200(n))+A033273(n+1)`
-/

namespace A319686.P18404077463230371803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (A132200 n).toNat + A033273 (n + 1)

end

end A319686.P18404077463230371803

/-! ## A319686.P15461805974273325812

`A178334(A130734(n+1))+A033273(n+1)`
-/

namespace A319686.P15461805974273325812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A130734 (n + 1)).toNat + A033273 (n + 1)

end

end A319686.P15461805974273325812

/-! ## A319686.P16344379828382645954

`A000005(n+1)-A297155((n+1)²)`
-/

namespace A319686.P16344379828382645954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A297155 ((n + 1) ^ 2)

end

end A319686.P16344379828382645954

/-! ## A319686.P4846333331023478302

`A267084(A045896(n))+A033273(n+1)`
-/

namespace A319686.P4846333331023478302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (A045896 n).toNat + A033273 (n + 1)

end

end A319686.P4846333331023478302

/-! ## A319686.P8229230194472277608

`A057427(n²)+A033273(n+1)`
-/

namespace A319686.P8229230194472277608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2) + A033273 (n + 1)

end

end A319686.P8229230194472277608

/-!
# A319687: a(n) = A318509(n) - A002487(n).

The programs for A319687, the canonical program `A319687.P11150699516326577001` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319687 has offset 1).

The definition of A319687 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318509, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319687.P11150699516326577001

`A318509(n+1)-A002487(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A319687

/-- `A318509(n+1)-A002487(n+1)` -/
def P11150699516326577001.Spec : Prop :=
  ∀ n, P11150699516326577001.a n = A319687 (n + 1)

theorem P11150699516326577001.correct : P11150699516326577001.Spec := by
  intro n
  simp only [A319687, Nat.add_sub_cancel]

end A319687

/-! ## A319687.P12488221945113200272

`A318509(n+1)-A007306(A003602(n+1))`
-/

namespace A319687.P12488221945113200272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A007306 (A003602 (n + 1)).toNat

end

end A319687.P12488221945113200272

namespace A319687

/-- `A318509(n+1)-A007306(A003602(n+1))` -/
def P12488221945113200272.Spec : Prop :=
  ∀ n, P12488221945113200272.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P11214458464533680045

`A318509(n+1)+A174868(n)-A174868(n+1)`
-/

namespace A319687.P11214458464533680045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) + (A174868 n - A174868 (n + 1))

end

end A319687.P11214458464533680045

namespace A319687

/-- `A318509(n+1)+A174868(n)-A174868(n+1)` -/
def P11214458464533680045.Spec : Prop :=
  ∀ n, P11214458464533680045.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P11466999930180999702

`A317843(n+1)+A318509(n+1)-A323365(n+1)`
-/

namespace A319687.P11466999930180999702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317843 (n + 1) + (A318509 (n + 1) - A323365 (n + 1))

end

end A319687.P11466999930180999702

namespace A319687

/-- `A317843(n+1)+A318509(n+1)-A323365(n+1)` -/
def P11466999930180999702.Spec : Prop :=
  ∀ n, P11466999930180999702.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P16700508904815684701

`A318509(n+1)-A007306(A028242(A036044(n)))`
-/

namespace A319687.P16700508904815684701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A007306 (A028242 (A036044 n).toNat).toNat

end

end A319687.P16700508904815684701

namespace A319687

/-- `A318509(n+1)-A007306(A028242(A036044(n)))` -/
def P16700508904815684701.Spec : Prop :=
  ∀ n, P16700508904815684701.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P10971789149316190770

`A318509(n+1)+A070990(2*n+1)`
-/

namespace A319687.P10971789149316190770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) + A070990 (2 * n + 1)

end

end A319687.P10971789149316190770

namespace A319687

/-- `A318509(n+1)+A070990(2*n+1)` -/
def P10971789149316190770.Spec : Prop :=
  ∀ n, P10971789149316190770.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P17785448948072042576

`A318509(n+1)-A288003(2*n+1)`
-/

namespace A319687.P17785448948072042576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A288003 (2 * n + 1)

end

end A319687.P17785448948072042576

namespace A319687

/-- `A318509(n+1)-A288003(2*n+1)` -/
def P17785448948072042576.Spec : Prop :=
  ∀ n, P17785448948072042576.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P11109491387779327216

`A318509(n+1)-A323365(4*(n+1))`
-/

namespace A319687.P11109491387779327216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A323365 (4 * (n + 1))

end

end A319687.P11109491387779327216

namespace A319687

/-- `A318509(n+1)-A323365(4*(n+1))` -/
def P11109491387779327216.Spec : Prop :=
  ∀ n, P11109491387779327216.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P4173741003468273008

`A318509(n+1)-A309014(2*n+1)`
-/

namespace A319687.P4173741003468273008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A309014 (2 * n + 1)

end

end A319687.P4173741003468273008

namespace A319687

/-- `A318509(n+1)-A309014(2*n+1)` -/
def P4173741003468273008.Spec : Prop :=
  ∀ n, P4173741003468273008.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P4108605217714689311

`A318509(n+1)-A054390(A005836(n+1))`
-/

namespace A319687.P4108605217714689311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A054390 (A005836 (n + 1)).toNat

end

end A319687.P4108605217714689311

namespace A319687

/-- `A318509(n+1)-A054390(A005836(n+1))` -/
def P4108605217714689311.Spec : Prop :=
  ∀ n, P4108605217714689311.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P7349693149135885393

`A318509(n+1)-A117535(A005823(n+1))`
-/

namespace A319687.P7349693149135885393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A117535 (A005823 (n + 1)).toNat

end

end A319687.P7349693149135885393

namespace A319687

/-- `A318509(n+1)-A117535(A005823(n+1))` -/
def P7349693149135885393.Spec : Prop :=
  ∀ n, P7349693149135885393.a n = A319687 (n + 1)

end A319687

/-! ## A319687.P660891749371424596

`A318509(n+1)-A054390(A191107(n+1))`
-/

namespace A319687.P660891749371424596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A054390 (A191107 (n + 1)).toNat

end

end A319687.P660891749371424596

namespace A319687

/-- `A318509(n+1)-A054390(A191107(n+1))` -/
def P660891749371424596.Spec : Prop :=
  ∀ n, P660891749371424596.a n = A319687 (n + 1)

end A319687

/-!
# A319688: Sum of digits when n is represented in phitorial (A001088) base.

The programs for A319688, there is no canonical definition to state claims against.
-/

/-! ## A319688.P12108457400087127090

`A336921(A052330(n))+A000120(n)`
-/

namespace A319688.P12108457400087127090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A052330 n).toNat + A000120 n

end

end A319688.P12108457400087127090

/-! ## A319688.P1817468921196665646

`A336921(A052330(n))+log2(A001316(n))`
-/

namespace A319688.P1817468921196665646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336921 (A052330 n).toNat : ℝ) + Real.logb 2 (A001316 n : ℝ)

end

end A319688.P1817468921196665646

/-! ## A319688.P6956478494478168348

`A336921(A052330(n))+A048881(2*n)`
-/

namespace A319688.P6956478494478168348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A052330 n).toNat + A048881 (2 * n)

end

end A319688.P6956478494478168348

/-! ## A319688.P18338658149993100787

`A336921(A052330(n))+A274009(2*n+1)`
-/

namespace A319688.P18338658149993100787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A052330 n).toNat + A274009 (2 * n + 1)

end

end A319688.P18338658149993100787

/-! ## A319688.P14784766701991785705

`A000035(n)+A001222(A300840(A052330(n)))`
-/

namespace A319688.P14784766701991785705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A001222 (A300840 (A052330 n).toNat).toNat

end

end A319688.P14784766701991785705

/-! ## A319688.P12148887310925201749

`A336921(A052330(n))+A001222(A278222(n))`
-/

namespace A319688.P12148887310925201749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A052330 n).toNat + A001222 (A278222 n).toNat

end

end A319688.P12148887310925201749

/-! ## A319688.P6332682253082317536

`A336921(A052330(n))+A001222(A005940(n+1))`
-/

namespace A319688.P6332682253082317536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A052330 n).toNat + A001222 (A005940 (n + 1)).toNat

end

end A319688.P6332682253082317536

/-! ## A319688.P16243306604943335027

`∑{p}[A019565(2*n), A057368(A057368(#))]`
-/

namespace A319688.P16243306604943335027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057368 (A057368 p).toNat

end

end A319688.P16243306604943335027

/-! ## A319688.P13440583698466924727

`A001222(∑{d}[A052330(n), A003963(#)])`
-/

namespace A319688.P13440583698466924727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d).toNat

end

end A319688.P13440583698466924727

/-! ## A319688.P4809547743099190300

`A001222(A336882(n))`
-/

namespace A319688.P4809547743099190300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336882 n).toNat

end

end A319688.P4809547743099190300

/-!
# A319689: Number of distinct values of A078898 that occur when map x -> A064989(x) is iterated, starting from x = n, until an even number is reached; a(1) = 0 by convention.

The programs for A319689, there is no canonical definition to state claims against.
-/

/-! ## A319689.P16162393231061353449

`A131576(n+1)!%A342594(n+1)`
-/

namespace A319689.P16162393231061353449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A131576 (n + 1)).toNat : ℤ) (A342594 (n + 1))

end

end A319689.P16162393231061353449

/-! ## A319689.P16985181141155223410

`round(sqrt(A131576(n+1)²+1))%A196269(n+1)`
-/

namespace A319689.P16985181141155223410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A131576 (n + 1) ^ 2 + 1 : ℝ))) (A196269 (n + 1))

end

end A319689.P16985181141155223410

/-! ## A319689.P13109464133093958179

`A000041(A131576(n+1))%A255650(n)`
-/

namespace A319689.P13109464133093958179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A131576 (n + 1)).toNat) (A255650 n)

end

end A319689.P13109464133093958179

/-! ## A319689.P7920349599562569189

`A028310(A131576(n+1))%A256139(n)`
-/

namespace A319689.P7920349599562569189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A131576 (n + 1)).toNat) (A256139 n)

end

end A319689.P7920349599562569189

/-! ## A319689.P2737423919002413435

`A008619(A131576(n+1))%A136332(n+1)`
-/

namespace A319689.P2737423919002413435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A131576 (n + 1)).toNat) (A136332 (n + 1))

end

end A319689.P2737423919002413435

/-! ## A319689.P487432652014069888

`A006125(A131576(n+1))%A178859(n+1)`
-/

namespace A319689.P487432652014069888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006125 (A131576 (n + 1)).toNat) (A178859 (n + 1))

end

end A319689.P487432652014069888

/-! ## A319689.P15868102592344069590

`A007318(A281009(n+1))%A085735(n+1)`
-/

namespace A319689.P15868102592344069590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A281009 (n + 1)).toNat) (A085735 (n + 1))

end

end A319689.P15868102592344069590

/-!
# A319690: Fully multiplicative with a(p^e) = (p mod 3)^e.

The programs for A319690, the canonical program `A319690.P7951034641680093575` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319690 has offset 1).

The definition of A319690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319690.P7951034641680093575

`∏{d}[n+1, A014963(#)%3]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A319690

/-- `∏{d}[n+1, A014963(#)%3]` -/
def P7951034641680093575.Spec : Prop :=
  ∀ n, P7951034641680093575.a n = A319690 (n + 1)

theorem P7951034641680093575.correct : P7951034641680093575.Spec := by
  intro n
  simp only [A319690, Nat.add_sub_cancel]

end A319690

/-! ## A319690.P17178037148572506303

`∏{d}[n+1, A010872(A014963(#))]`
-/

namespace A319690.P17178037148572506303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A010872 (A014963 d).toNat

end

end A319690.P17178037148572506303

namespace A319690

/-- `∏{d}[n+1, A010872(A014963(#))]` -/
def P17178037148572506303.Spec : Prop :=
  ∀ n, P17178037148572506303.a n = A319690 (n + 1)

end A319690

/-! ## A319690.P7278961158345812960

`∏{d}[A131738(n), A083218(A014963(#))]`
-/

namespace A319690.P7278961158345812960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A083218 (A014963 d).toNat

end

end A319690.P7278961158345812960

namespace A319690

/-- `∏{d}[A131738(n), A083218(A014963(#))]` -/
def P7278961158345812960.Spec : Prop :=
  ∀ n, P7278961158345812960.a n = A319690 (n + 1)

end A319690

/-! ## A319690.P15193509791341029355

`lcm(A010892(n), A061142(A343430(n+1)))`
-/

namespace A319690.P15193509791341029355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A061142 (A343430 (n + 1)).toNat)

end

end A319690.P15193509791341029355

namespace A319690

/-- `lcm(A010892(n), A061142(A343430(n+1)))` -/
def P15193509791341029355.Spec : Prop :=
  ∀ n, (P15193509791341029355.a n : ℤ) = A319690 (n + 1)

end A319690

/-! ## A319690.P9982925027716027100

`∏{d}[A000027(n+1), A100286(A014963(#))]`
-/

namespace A319690.P9982925027716027100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A100286 (A014963 d).toNat

end

end A319690.P9982925027716027100

namespace A319690

/-- `∏{d}[A000027(n+1), A100286(A014963(#))]` -/
def P9982925027716027100.Spec : Prop :=
  ∀ n, P9982925027716027100.a n = A319690 (n + 1)

end A319690

/-! ## A319690.P7994084468048193372

`∏{e}[A181821(n+1), A039701(#)]`
-/

namespace A319690.P7994084468048193372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A039701 (Nat.factorization (f1 n).natAbs p)

end

end A319690.P7994084468048193372

namespace A319690

/-- `∏{e}[A181821(n+1), A039701(#)]` -/
def P7994084468048193372.Spec : Prop :=
  ∀ n, P7994084468048193372.a n = A319690 (n + 1)

end A319690

/-! ## A319690.P14922856810282103151

`∏{e}[A181821(n+1), A083218(A000040(#))]`
-/

namespace A319690.P14922856810282103151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A083218 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A319690.P14922856810282103151

namespace A319690

/-- `∏{e}[A181821(n+1), A083218(A000040(#))]` -/
def P14922856810282103151.Spec : Prop :=
  ∀ n, P14922856810282103151.a n = A319690 (n + 1)

end A319690

/-!
# A319691: a(n) = 1 if n is either 1 or divisible only by primes congruent to 1 mod 3, 0 otherwise.

The programs for A319691, the canonical program `A319691.P3091071718083807352` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319691 has offset 1).

The definition of A319691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319691.P3091071718083807352

`∏{d}[n+1, (#%3)%2]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319691

/-- `∏{d}[n+1, (#%3)%2]` -/
def P3091071718083807352.Spec : Prop :=
  ∀ n, (P3091071718083807352.a n : ℤ) = A319691 (n + 1)

theorem P3091071718083807352.correct : P3091071718083807352.Spec := by
  intro n
  simp only [A319691, Nat.add_sub_cancel]

end A319691

/-! ## A319691.P16855775556601924743

`A319690(n+1)%2`
-/

namespace A319691.P16855775556601924743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319690 (n + 1)) 2

end

end A319691.P16855775556601924743

namespace A319691

/-- `A319690(n+1)%2` -/
def P16855775556601924743.Spec : Prop :=
  ∀ n, P16855775556601924743.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P9680541623786667977

`A133205(n+1)%3`
-/

namespace A319691.P9680541623786667977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133205 (n + 1)) 3

end

end A319691.P9680541623786667977

namespace A319691

/-- `A133205(n+1)%3` -/
def P9680541623786667977.Spec : Prop :=
  ∀ n, P9680541623786667977.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P8394417282782416436

`∏{p}[n+1, A005088(#)]`
-/

namespace A319691.P8394417282782416436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005088 p

end

end A319691.P8394417282782416436

namespace A319691

/-- `∏{p}[n+1, A005088(#)]` -/
def P8394417282782416436.Spec : Prop :=
  ∀ n, P8394417282782416436.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P14482370526610170116

`A070563(∏{p}[n+1, #])`
-/

namespace A319691.P14482370526610170116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070563 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A319691.P14482370526610170116

namespace A319691

/-- `A070563(∏{p}[n+1, #])` -/
def P14482370526610170116.Spec : Prop :=
  ∀ n, P14482370526610170116.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P10687057517498559318

`∏{p}[n+1, A092573(#)]`
-/

namespace A319691.P10687057517498559318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092573 p

end

end A319691.P10687057517498559318

namespace A319691

/-- `∏{p}[n+1, A092573(#)]` -/
def P10687057517498559318.Spec : Prop :=
  ∀ n, P10687057517498559318.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P5597406322055198840

`∏{p}[n+1, A092575(#)]`
-/

namespace A319691.P5597406322055198840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092575 p

end

end A319691.P5597406322055198840

namespace A319691

/-- `∏{p}[n+1, A092575(#)]` -/
def P5597406322055198840.Spec : Prop :=
  ∀ n, P5597406322055198840.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P7779721949736263668

`∏{p}[n+1, A343023(#)]`
-/

namespace A319691.P7779721949736263668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A343023 p

end

end A319691.P7779721949736263668

namespace A319691

/-- `∏{p}[n+1, A343023(#)]` -/
def P7779721949736263668.Spec : Prop :=
  ∀ n, P7779721949736263668.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P13963970005123370937

`floor(acot(A326395(n+1)))`
-/

namespace A319691.P13963970005123370937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A326395 (n + 1) : ℝ)⌋

end

end A319691.P13963970005123370937

namespace A319691

/-- `floor(acot(A326395(n+1)))` -/
def P13963970005123370937.Spec : Prop :=
  ∀ n, P13963970005123370937.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P1792147199994244825

`∏{d}[A082050(n+1), log(#)]`
-/

namespace A319691.P1792147199994244825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082050 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A319691.P1792147199994244825

namespace A319691

/-- `∏{d}[A082050(n+1), log(#)]` -/
def P1792147199994244825.Spec : Prop :=
  ∀ n, P1792147199994244825.a n = (A319691 (n + 1) : ℝ)

end A319691

/-! ## A319691.P9415923618832220369

`C(A248909(n+1), n+1)`
-/

namespace A319691.P9415923618832220369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A248909 (n + 1)).toNat (n + 1)

end

end A319691.P9415923618832220369

namespace A319691

/-- `C(A248909(n+1), n+1)` -/
def P9415923618832220369.Spec : Prop :=
  ∀ n, (P9415923618832220369.a n : ℤ) = A319691 (n + 1)

end A319691

/-! ## A319691.P13120532836992513628

`C(abs(A113447(n+1)), ∏{e}[n+1, #+1])`
-/

namespace A319691.P13120532836992513628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A113447 (n + 1)|.toNat (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A319691.P13120532836992513628

namespace A319691

/-- `C(abs(A113447(n+1)), ∏{e}[n+1, #+1])` -/
def P13120532836992513628.Spec : Prop :=
  ∀ n, (P13120532836992513628.a n : ℤ) = A319691 (n + 1)

end A319691

/-! ## A319691.P2006078222508906315

`A070563(A007947(n+1))`
-/

namespace A319691.P2006078222508906315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070563 (A007947 (n + 1)).toNat

end

end A319691.P2006078222508906315

namespace A319691

/-- `A070563(A007947(n+1))` -/
def P2006078222508906315.Spec : Prop :=
  ∀ n, P2006078222508906315.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P14828323146333035196

`A007814(A319690(n+1)+1)`
-/

namespace A319691.P14828323146333035196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A319690 (n + 1) + 1).toNat

end

end A319691.P14828323146333035196

namespace A319691

/-- `A007814(A319690(n+1)+1)` -/
def P14828323146333035196.Spec : Prop :=
  ∀ n, P14828323146333035196.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P18285800883365624401

`A059841(A319690(n+1)+1)`
-/

namespace A319691.P18285800883365624401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A319690 (n + 1) + 1).toNat

end

end A319691.P18285800883365624401

namespace A319691

/-- `A059841(A319690(n+1)+1)` -/
def P18285800883365624401.Spec : Prop :=
  ∀ n, P18285800883365624401.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P1167876521523677933

`A160891(n+1)%A321091(n)`
-/

namespace A319691.P1167876521523677933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160891 (n + 1)) (A321091 n)

end

end A319691.P1167876521523677933

namespace A319691

/-- `A160891(n+1)%A321091(n)` -/
def P1167876521523677933.Spec : Prop :=
  ∀ n, P1167876521523677933.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P15155580161342191691

`A160957(n+1)%A321091(n)`
-/

namespace A319691.P15155580161342191691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160957 (n + 1)) (A321091 n)

end

end A319691.P15155580161342191691

namespace A319691

/-- `A160957(n+1)%A321091(n)` -/
def P15155580161342191691.Spec : Prop :=
  ∀ n, P15155580161342191691.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P3115308812904178422

`A020639(A319690(n+1)+2)-2`
-/

namespace A319691.P3115308812904178422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A319690 (n + 1) + 2).toNat - 2

end

end A319691.P3115308812904178422

namespace A319691

/-- `A020639(A319690(n+1)+2)-2` -/
def P3115308812904178422.Spec : Prop :=
  ∀ n, P3115308812904178422.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P4759355477149101171

`A008683(2*(A319690(n+1)+2))`
-/

namespace A319691.P4759355477149101171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (A319690 (n + 1) + 2)).toNat

end

end A319691.P4759355477149101171

namespace A319691

/-- `A008683(2*(A319690(n+1)+2))` -/
def P4759355477149101171.Spec : Prop :=
  ∀ n, P4759355477149101171.a n = A319691 (n + 1)

end A319691

/-! ## A319691.P18163326501565679764

`C(A078181(n+1), A000203(n+1))`
-/

namespace A319691.P18163326501565679764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A078181 (n + 1)).toNat (A000203 (n + 1)).toNat

end

end A319691.P18163326501565679764

namespace A319691

/-- `C(A078181(n+1), A000203(n+1))` -/
def P18163326501565679764.Spec : Prop :=
  ∀ n, (P18163326501565679764.a n : ℤ) = A319691 (n + 1)

end A319691

/-!
# A319692: a(n) = Product_{d|n, d

The programs for A319692, there is no canonical definition to state claims against.
-/

/-! ## A319692.P18440972382853220269

`A319352(A064988(n+1))`
-/

namespace A319692.P18440972382853220269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319352 (A064988 (n + 1)).toNat

end

end A319692.P18440972382853220269

/-! ## A319692.P12142556480574723809

`∏{p}[A319352(A319985(n+1)), #]`
-/

namespace A319692.P12142556480574723809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319352 (A319985 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A319692.P12142556480574723809

/-! ## A319692.P4214949056416548027

`A008835(A319352(n+1))*A319352(A319985(n+1))`
-/

namespace A319692.P4214949056416548027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A319352 (n + 1)).toNat * A319352 (A319985 (n + 1)).toNat

end

end A319692.P4214949056416548027

/-! ## A319692.P3521899366965898458

`A319352(A319985(n+1)%A294917(n+1))`
-/

namespace A319692.P3521899366965898458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319352 (Int.tmod (A319985 (n + 1)) (A294917 (n + 1))).toNat

end

end A319692.P3521899366965898458

/-! ## A319692.P10925719949465578365

`A319352(A319985(n+1)^A008835(n+1))`
-/

namespace A319692.P10925719949465578365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319352 (SequenceMachineLib.roundAway ((A319985 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A319692.P10925719949465578365

/-!
# A319694: Product of A078899(x) for all x encountered when map x -> A252463(x) is iterated, starting from x = A252463(n); a(1) = 1.

The programs for A319694, there is no canonical definition to state claims against.
-/

/-! ## A319694.P1132237338895745738

`A005811(A318810(n+1)!)`
-/

namespace A319694.P1132237338895745738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Nat.factorial (A318810 (n + 1)).toNat)

end

end A319694.P1132237338895745738

/-! ## A319694.P18130569910540442275

`A352825(A003961(n+1))!`
-/

namespace A319694.P18130569910540442275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A352825 (A003961 (n + 1)).toNat).toNat

end

end A319694.P18130569910540442275

/-! ## A319694.P12202181535066243216

`gcd(6, A022562(A318360(n+1)))`
-/

namespace A319694.P12202181535066243216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A022562 (A318360 (n + 1)).toNat)

end

end A319694.P12202181535066243216

/-! ## A319694.P14818456830810938847

`∏{p}[A001088(A321757(n+1)), #]`
-/

namespace A319694.P14818456830810938847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001088 (A321757 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A319694.P14818456830810938847

/-!
# A319695: Number of distinct values obtained when Euler phi (A000010) is applied to proper divisors of n.

The programs for A319695, there is no canonical definition to state claims against.
-/

/-! ## A319695.P15706870619164697523

`A319696(n+1)-A131379(n)²`
-/

namespace A319695.P15706870619164697523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (n + 1) - A131379 n ^ 2

end

end A319695.P15706870619164697523

/-! ## A319695.P4322411517063175920

`A319696(n+1)-A000035(A057979(n))`
-/

namespace A319695.P4322411517063175920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (n + 1) - A000035 (A057979 n).toNat

end

end A319695.P4322411517063175920

/-! ## A319695.P1321444956137645734

`A319696(n+1)-A000035(A055231(n+1))`
-/

namespace A319695.P1321444956137645734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (n + 1) - A000035 (A055231 (n + 1)).toNat

end

end A319695.P1321444956137645734

/-! ## A319695.P12072382337985143548

`A319696(n+1)-A000035(A277698(n+1))`
-/

namespace A319695.P12072382337985143548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (n + 1) - A000035 (A277698 (n + 1)).toNat

end

end A319695.P12072382337985143548

/-! ## A319695.P15901716725221370926

`A319696(n+1)-A285277(A006519(n+1))`
-/

namespace A319695.P15901716725221370926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (n + 1) - A285277 (A006519 (n + 1)).toNat

end

end A319695.P15901716725221370926

/-! ## A319695.P5272698537144521535

`A319696(n+1)+A004525(n)-A008619(n)`
-/

namespace A319695.P5272698537144521535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (n + 1) + (A004525 n - A008619 n)

end

end A319695.P5272698537144521535

/-! ## A319695.P14010004468646221532

`∑{p}[A319342(n+1), A001221(#)]`
-/

namespace A319695.P14010004468646221532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A319695.P14010004468646221532

/-! ## A319695.P17149978310132960475

`∑{p}[A319342(n+1), A001222(#)]`
-/

namespace A319695.P17149978310132960475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A319695.P17149978310132960475

/-! ## A319695.P9300887320830597436

`A001222(∏{p}[A319342(n+1), #])`
-/

namespace A319695.P9300887320830597436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A319695.P9300887320830597436

/-! ## A319695.P17954899576344235253

`∑{e}[A319342(n+1), A007318(#)]`
-/

namespace A319695.P17954899576344235253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A319695.P17954899576344235253

/-!
# A319696: Number of distinct values obtained when Euler phi (A000010) is applied to the divisors of n.

The programs for A319696, there is no canonical definition to state claims against.
-/

/-! ## A319696.P11533654756682540065

`A319695(n+1)+A000035(A057979(n))`
-/

namespace A319696.P11533654756682540065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (n + 1) + A000035 (A057979 n).toNat

end

end A319696.P11533654756682540065

/-! ## A319696.P12642789938007389146

`A319695(n+1)+A166486(A004442(n))`
-/

namespace A319696.P12642789938007389146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (n + 1) + A166486 (A004442 n).toNat

end

end A319696.P12642789938007389146

/-! ## A319696.P1207069394830260047

`A319695(n+1)+A166486(A016777(n))`
-/

namespace A319696.P1207069394830260047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (n + 1) + A166486 (A016777 n).toNat

end

end A319696.P1207069394830260047

/-! ## A319696.P4395401854960933778

`A319695(n+1)+A005171(A006519(n+1))`
-/

namespace A319696.P4395401854960933778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (n + 1) + A005171 (A006519 (n + 1)).toNat

end

end A319696.P4395401854960933778

/-! ## A319696.P13346398588332426443

`A319695(n+1)+A051437(n)%3`
-/

namespace A319696.P13346398588332426443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (n + 1) + Int.tmod (A051437 n) 3

end

end A319696.P13346398588332426443

/-! ## A319696.P13638670273035776027

`A319695(A033286(n+1))-A319695(n+1)`
-/

namespace A319696.P13638670273035776027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (A033286 (n + 1)).toNat - A319695 (n + 1)

end

end A319696.P13638670273035776027

/-! ## A319696.P13837168818471820828

`A319695((n+1)*A045319(n+1))-A319695(n+1)`
-/

namespace A319696.P13837168818471820828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 ((n + 1 : ℤ) * A045319 (n + 1)).toNat - A319695 (n + 1)

end

end A319696.P13837168818471820828

/-!
# A319697: Sum of even squarefree divisors of n.

The programs for A319697, the canonical program `A319697.P10360673897274092248` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319697 has offset 1).

The definition of A319697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319697.P10360673897274092248

`A048250(n+1)-A206787(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319697

/-- `A048250(n+1)-A206787(n+1)` -/
def P10360673897274092248.Spec : Prop :=
  ∀ n, P10360673897274092248.a n = A319697 (n + 1)

theorem P10360673897274092248.correct : P10360673897274092248.Spec := by
  intro n
  simp only [A319697, Nat.add_sub_cancel]

end A319697

/-! ## A319697.P1209362066890149653

`A146076(∏{p}[n+1, #])`
-/

namespace A319697.P1209362066890149653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A319697.P1209362066890149653

namespace A319697

/-- `A146076(∏{p}[n+1, #])` -/
def P1209362066890149653.Spec : Prop :=
  ∀ n, P1209362066890149653.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P17861584289917036773

`A048146(2*∏{p}[n+1, #])`
-/

namespace A319697.P17861584289917036773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (2 * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A319697.P17861584289917036773

namespace A319697

/-- `A048146(2*∏{p}[n+1, #])` -/
def P17861584289917036773.Spec : Prop :=
  ∀ n, P17861584289917036773.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P7928523245473290129

`∑{d}[n+1, #*A379966(#)]`
-/

namespace A319697.P7928523245473290129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A379966 d

end

end A319697.P7928523245473290129

namespace A319697

/-- `∑{d}[n+1, #*A379966(#)]` -/
def P7928523245473290129.Spec : Prop :=
  ∀ n, P7928523245473290129.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P1595333020605948830

`A352047(∏{p}[n+1, #]^(n%2))`
-/

namespace A319697.P1595333020605948830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352047 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (n % 2))

end

end A319697.P1595333020605948830

namespace A319697

/-- `A352047(∏{p}[n+1, #]^(n%2))` -/
def P1595333020605948830.Spec : Prop :=
  ∀ n, P1595333020605948830.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P14464494281902861806

`∏{p}[n+1, #+1]-A048250((n+1)/and(n+1, -(n+1)))`
-/

namespace A319697.P14464494281902861806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A319697.P14464494281902861806

namespace A319697

/-- `∏{p}[n+1, #+1]-A048250((n+1)/and(n+1, -(n+1)))` -/
def P14464494281902861806.Spec : Prop :=
  ∀ n, P14464494281902861806.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P7343781864221939678

`A146076(A007947(n+1))`
-/

namespace A319697.P7343781864221939678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A007947 (n + 1)).toNat

end

end A319697.P7343781864221939678

namespace A319697

/-- `A146076(A007947(n+1))` -/
def P7343781864221939678.Spec : Prop :=
  ∀ n, P7343781864221939678.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P11410754924973619010

`A048146(2*A007947(n+1))`
-/

namespace A319697.P11410754924973619010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (2 * A007947 (n + 1)).toNat

end

end A319697.P11410754924973619010

namespace A319697

/-- `A048146(2*A007947(n+1))` -/
def P11410754924973619010.Spec : Prop :=
  ∀ n, P11410754924973619010.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P3646324098609223870

`A348029(2*A007947(n+1))`
-/

namespace A319697.P3646324098609223870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (2 * A007947 (n + 1)).toNat

end

end A319697.P3646324098609223870

namespace A319697

/-- `A348029(2*A007947(n+1))` -/
def P3646324098609223870.Spec : Prop :=
  ∀ n, P3646324098609223870.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P18418137088897582749

`A010673(n)*A206787(n+1)`
-/

namespace A319697.P18418137088897582749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A206787 (n + 1)

end

end A319697.P18418137088897582749

namespace A319697

/-- `A010673(n)*A206787(n+1)` -/
def P18418137088897582749.Spec : Prop :=
  ∀ n, P18418137088897582749.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P4454119690390940744

`A348732(2*A007947(n+1))/2`
-/

namespace A319697.P4454119690390940744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348732 (2 * A007947 (n + 1)).toNat : ℚ) / 2

end

end A319697.P4454119690390940744

namespace A319697

/-- `A348732(2*A007947(n+1))/2` -/
def P4454119690390940744.Spec : Prop :=
  ∀ n, P4454119690390940744.a n = (A319697 (n + 1) : ℚ)

end A319697

/-! ## A319697.P2857646473880908735

`A146076((n+1)/A003557(n+1))`
-/

namespace A319697.P2857646473880908735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A319697.P2857646473880908735

namespace A319697

/-- `A146076((n+1)/A003557(n+1))` -/
def P2857646473880908735.Spec : Prop :=
  ∀ n, P2857646473880908735.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P6727312744393673174

`(A010684(n)-1)*A206787(n+1)`
-/

namespace A319697.P6727312744393673174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010684 n - 1) * A206787 (n + 1)

end

end A319697.P6727312744393673174

namespace A319697

/-- `(A010684(n)-1)*A206787(n+1)` -/
def P6727312744393673174.Spec : Prop :=
  ∀ n, P6727312744393673174.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P2967137216609994365

`A010873(2*n)*A206787(n+1)`
-/

namespace A319697.P2967137216609994365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * n) * A206787 (n + 1)

end

end A319697.P2967137216609994365

namespace A319697

/-- `A010873(2*n)*A206787(n+1)` -/
def P2967137216609994365.Spec : Prop :=
  ∀ n, P2967137216609994365.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P6580551109106721461

`A348029(2*(n+1)/A003557(n+1))`
-/

namespace A319697.P6580551109106721461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ)))).toNat

end

end A319697.P6580551109106721461

namespace A319697

/-- `A348029(2*(n+1)/A003557(n+1))` -/
def P6580551109106721461.Spec : Prop :=
  ∀ n, P6580551109106721461.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P13982039853890344618

`A048250(n+1)-A048250((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A319697.P13982039853890344618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A319697.P13982039853890344618

namespace A319697

/-- `A048250(n+1)-A048250((n+1)/ceil(xor(n, n+1)/2))` -/
def P13982039853890344618.Spec : Prop :=
  ∀ n, P13982039853890344618.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P17822912905796640288

`A048146(A007947(n+1)+A007947(n+1))`
-/

namespace A319697.P17822912905796640288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A007947 (n + 1) + A007947 (n + 1)).toNat

end

end A319697.P17822912905796640288

namespace A319697

/-- `A048146(A007947(n+1)+A007947(n+1))` -/
def P17822912905796640288.Spec : Prop :=
  ∀ n, P17822912905796640288.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P17394451106984874203

`A048250(n+1)-A048250(A000265(n+1))`
-/

namespace A319697.P17394451106984874203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A000265 (n + 1)).toNat

end

end A319697.P17394451106984874203

namespace A319697

/-- `A048250(n+1)-A048250(A000265(n+1))` -/
def P17394451106984874203.Spec : Prop :=
  ∀ n, P17394451106984874203.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P1014852574658634235

`A048250(n+1)-A192066(A007947(n+1))`
-/

namespace A319697.P1014852574658634235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A192066 (A007947 (n + 1)).toNat

end

end A319697.P1014852574658634235

namespace A319697

/-- `A048250(n+1)-A192066(A007947(n+1))` -/
def P1014852574658634235.Spec : Prop :=
  ∀ n, P1014852574658634235.a n = A319697 (n + 1)

end A319697

/-! ## A319697.P16255156859307662059

`A048250(n+1)-A048250(A204455(n+1))`
-/

namespace A319697.P16255156859307662059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A048250 (A204455 (n + 1)).toNat

end

end A319697.P16255156859307662059

namespace A319697

/-- `A048250(n+1)-A048250(A204455(n+1))` -/
def P16255156859307662059.Spec : Prop :=
  ∀ n, P16255156859307662059.a n = A319697 (n + 1)

end A319697

/-!
# A319698: Filter sequence combining A003557(n) [n divided by largest squarefree divisor of n] with A319697(n) [sum of even squarefree divisors of n].

The programs for A319698, there is no canonical definition to state claims against.
-/

/-! ## A319698.P3998851916540968013

`gcd(A094838(n+1)+1, A087003(n+1))`
-/

namespace A319698.P3998851916540968013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094838 (n + 1) + 1) (A087003 (n + 1))

end

end A319698.P3998851916540968013

/-! ## A319698.P2579565033389563161

`gcd(A087003(n+1), A131738(A094838(n+1)))`
-/

namespace A319698.P2579565033389563161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087003 (n + 1)) (A131738 (A094838 (n + 1)).toNat)

end

end A319698.P2579565033389563161

/-! ## A319698.P10967688408452900388

`A179943(lt[A279527(n+1), A259046(n)])`
-/

namespace A319698.P10967688408452900388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319698.P10967688408452900388

/-! ## A319698.P14267505757931165618

`A303003(n+2)^A001221(A081373(n+1))`
-/

namespace A319698.P14267505757931165618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303003 (n + 2) : ℚ) ^ (A001221 (A081373 (n + 1)).toNat : ℤ)

end

end A319698.P14267505757931165618

/-! ## A319698.P8518757199684048658

`A303003(n+2)^A001221(A303757(n*(C(2, n)+1)+1))`
-/

namespace A319698.P8518757199684048658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303003 (n + 2) : ℚ) ^ (A001221 (A303757 (n * (Nat.choose 2 n + 1) + 1)).toNat : ℤ)

end

end A319698.P8518757199684048658

/-!
# A319699: a(n) = A001065(A252463(n)).

The programs for A319699, the canonical program `A319699.P7648533886871432432` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319699 has offset 1).

The definition of A319699 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319699.P7648533886871432432

`A001065(A252463(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A319699

/-- `A001065(A252463(n+1))` -/
def P7648533886871432432.Spec : Prop :=
  ∀ n, P7648533886871432432.a n = A319699 (n + 1)

theorem P7648533886871432432.correct : P7648533886871432432.Spec := by
  intro n
  simp only [A319699, Nat.add_sub_cancel]

end A319699

/-! ## A319699.P9309146630739697898

`A001065(n+1)-A318889(n+1)`
-/

namespace A319699.P9309146630739697898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A318889 (n + 1)

end

end A319699.P9309146630739697898

namespace A319699

/-- `A001065(n+1)-A318889(n+1)` -/
def P9309146630739697898.Spec : Prop :=
  ∀ n, P9309146630739697898.a n = A319699 (n + 1)

theorem P9309146630739697898.correct : P9309146630739697898.Spec := by
  intro n
  simp only [A319699, Nat.add_sub_cancel, A319699.P9309146630739697898.a, A319699.P7648533886871432432.a, A001065, A001065.P4097147489331274860.a, A252463, A252463.P9404790189412916411.a, A318889, A318889.P3452767076121308080.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A064216, A064216.P5935432423843156478.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319699

/-! ## A319699.P13030254540820855300

`∑{d}[A252463(n+1), A051953(#)]`
-/

namespace A319699.P13030254540820855300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051953 d

end

end A319699.P13030254540820855300

namespace A319699

/-- `∑{d}[A252463(n+1), A051953(#)]` -/
def P13030254540820855300.Spec : Prop :=
  ∀ n, P13030254540820855300.a n = A319699 (n + 1)

end A319699

/-! ## A319699.P5625032058330640481

`∑{d}[A252463(n+1), #-A000010(#)]`
-/

namespace A319699.P5625032058330640481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A319699.P5625032058330640481

namespace A319699

/-- `∑{d}[A252463(n+1), #-A000010(#)]` -/
def P5625032058330640481.Spec : Prop :=
  ∀ n, P5625032058330640481.a n = A319699 (n + 1)

end A319699

/-! ## A319699.P5173534633710815961

`A000203(n+1)-(n+1)-A318889(n+1)`
-/

namespace A319699.P5173534633710815961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ) - A318889 (n + 1)

end

end A319699.P5173534633710815961

namespace A319699

/-- `A000203(n+1)-(n+1)-A318889(n+1)` -/
def P5173534633710815961.Spec : Prop :=
  ∀ n, P5173534633710815961.a n = A319699 (n + 1)

theorem P5173534633710815961.correct : P5173534633710815961.Spec := by
  intro n
  simp only [A319699, Nat.add_sub_cancel, A319699.P5173534633710815961.a, A319699.P7648533886871432432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A252463, A252463.P9404790189412916411.a, A318889, A318889.P3452767076121308080.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A064216, A064216.P5935432423843156478.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319699

/-! ## A319699.P2439482724533826370

`A173455(A252463(n+1))%A002061(n)`
-/

namespace A319699.P2439482724533826370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (A252463 (n + 1)).toNat) (A002061 n)

end

end A319699.P2439482724533826370

namespace A319699

/-- `A173455(A252463(n+1))%A002061(n)` -/
def P2439482724533826370.Spec : Prop :=
  ∀ n, P2439482724533826370.a n = A319699 (n + 1)

end A319699

/-! ## A319699.P16496176204086716634

`∑{d}[A252463(A000027(n+1)), #]-A252463(n+1)`
-/

namespace A319699.P16496176204086716634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A252463 (n + 1)

end

end A319699.P16496176204086716634

namespace A319699

/-- `∑{d}[A252463(A000027(n+1)), #]-A252463(n+1)` -/
def P16496176204086716634.Spec : Prop :=
  ∀ n, P16496176204086716634.a n = A319699 (n + 1)

end A319699

/-! ## A319699.P3835278540945694970

`A134675(n+1)-(A318889(n+1)+A007434(n+1))`
-/

namespace A319699.P3835278540945694970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134675 (n + 1) - (A318889 (n + 1) + A007434 (n + 1))

end

end A319699.P3835278540945694970

namespace A319699

/-- `A134675(n+1)-(A318889(n+1)+A007434(n+1))` -/
def P3835278540945694970.Spec : Prop :=
  ∀ n, P3835278540945694970.a n = A319699 (n + 1)

theorem P3835278540945694970.correct : P3835278540945694970.Spec := by
  intro n
  simp only [A319699, Nat.add_sub_cancel, A319699.P3835278540945694970.a, A319699.P7648533886871432432.a, A001065, A001065.P4097147489331274860.a, A007434, A007434.P3432859153295839493.a, A134675, A134675.P852948724655989853.a, A252463, A252463.P9404790189412916411.a, A318889, A318889.P3452767076121308080.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064216, A064216.P5935432423843156478.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319699

/-! ## A319699.P2742704851635448227

`A003415(n+1)-(A318889(n+1)+A211991(n+1))`
-/

namespace A319699.P2742704851635448227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - (A318889 (n + 1) + A211991 (n + 1))

end

end A319699.P2742704851635448227

namespace A319699

/-- `A003415(n+1)-(A318889(n+1)+A211991(n+1))` -/
def P2742704851635448227.Spec : Prop :=
  ∀ n, P2742704851635448227.a n = A319699 (n + 1)

theorem P2742704851635448227.correct : P2742704851635448227.Spec := by
  intro n
  simp only [A319699, Nat.add_sub_cancel, A319699.P2742704851635448227.a, A319699.P7648533886871432432.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A211991, A211991.P15084257827643114560.a, A252463, A252463.P9404790189412916411.a, A318889, A318889.P3452767076121308080.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A064216, A064216.P5935432423843156478.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A064989, A064989.P13349672914146769936.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319699

/-! ## A319699.P10434978976278698693

`∑{d}[A285727(2*(n+1)), #]-A285727(2*(n+1))`
-/

namespace A319699.P10434978976278698693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A285727 (2 * (n + 1))

end

end A319699.P10434978976278698693

namespace A319699

/-- `∑{d}[A285727(2*(n+1)), #]-A285727(2*(n+1))` -/
def P10434978976278698693.Spec : Prop :=
  ∀ n, P10434978976278698693.a n = A319699 (n + 1)

end A319699

