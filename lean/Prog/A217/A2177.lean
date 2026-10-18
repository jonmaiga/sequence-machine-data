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
import Seq.B003.C003
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A217700: Numbers n where n is a prime to the (nonzero) power of a prime, and each digit of n is also a prime to the (nonzero) power of a prime.

The programs for A217700, there is no canonical definition to state claims against.
-/

/-! ## A217700.P2316551148002256212

`A367176(A317811(n+1))`
-/

namespace A217700.P2316551148002256212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367176 (A317811 (n + 1)).toNat

end

end A217700.P2316551148002256212

/-!
# A217701: Permanent of the n X n matrix with all diagonal entries n and all off diagonal entries 1.

The programs for A217701, there is no canonical definition to state claims against.
-/

/-! ## A217701.P15605076469992012989

`A080955(2*n²)`
-/

namespace A217701.P15605076469992012989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 (2 * n ^ 2)

end

end A217701.P15605076469992012989

/-! ## A217701.P3525174050549038810

`A089258(∑[4*n])`
-/

namespace A217701.P3525174050549038810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217701.P3525174050549038810

/-!
# A217703: a(0)=1, a(1)=0, and a(n+1) = 2*n*(n+1)*a(n)-n^4*a(n-1) for n>0.

The programs for A217703, there is no canonical definition to state claims against.
-/

/-! ## A217703.P18202564006354704844

`2-A048201(A046965(n+1))`
-/

namespace A217703.P18202564006354704844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A048201 (A046965 (n + 1)).toNat

end

end A217703.P18202564006354704844

/-!
# A217704: Smallest number k > n for which sigma(k-n) = sigma(k+n).

The programs for A217704, there is no canonical definition to state claims against.
-/

/-! ## A217704.P17863146440144954131

`A007365(2*(n+1))+n+1`
-/

namespace A217704.P17863146440144954131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007365 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A217704.P17863146440144954131

/-! ## A217704.P16779258171079582283

`A007365(Δ[n²]+1)+n+1`
-/

namespace A217704.P16779258171079582283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007365 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + (n : ℤ) + 1

end

end A217704.P16779258171079582283

/-! ## A217704.P10522572020066109220

`n+1+A007365(A004275(n+2))`
-/

namespace A217704.P10522572020066109220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007365 (A004275 (n + 2)).toNat

end

end A217704.P10522572020066109220

/-! ## A217704.P10677134615908950895

`A065475(A007365(2*(n+1))+n)`
-/

namespace A217704.P10677134615908950895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A007365 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A217704.P10677134615908950895

/-!
# A217705: Smallest number greater than 1 that is happy under bases 2 through n.

The programs for A217705, there is no canonical definition to state claims against.
-/

/-! ## A217705.P7401318281140721851

`A051698(lcm(A000079(n), A082679(n)))`
-/

namespace A217705.P7401318281140721851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (Int.lcm (A000079 n) (A082679 n))

end

end A217705.P7401318281140721851

/-!
# A217707: Numbers k such that both 4*k-1 and 4*k+1 are composite.

The programs for A217707, there is no canonical definition to state claims against.
-/

/-! ## A217707.P14249854868254765668

`lt[2, A051699(4*n)]`
-/

namespace A217707.P14249854868254765668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217707.P14249854868254765668

/-! ## A217707.P9644972080064856245

`lt[2, A051700(4*n)]`
-/

namespace A217707.P9644972080064856245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217707.P9644972080064856245

/-! ## A217707.P18072962811646911938

`eq[2, A218850(n+1)]+1`
-/

namespace A217707.P18072962811646911938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217707.P18072962811646911938

/-! ## A217707.P15598867529974214065

`lt[2, A067760(2*n)]+1`
-/

namespace A217707.P15598867529974214065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A217707.P15598867529974214065

/-! ## A217707.P6226107203293705857

`lt[4, A049716(2*n+1)]`
-/

namespace A217707.P6226107203293705857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217707.P6226107203293705857

/-! ## A217707.P9824743777150186628

`lt[5, A020481(2*(n+1))]`
-/

namespace A217707.P9824743777150186628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217707.P9824743777150186628

/-! ## A217707.P7394660279262642644

`lt[3, A175851(4*n+1)]`
-/

namespace A217707.P7394660279262642644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217707.P7394660279262642644

/-! ## A217707.P17802977593664851384

`lt[4, A103509(4*n+2)]`
-/

namespace A217707.P17802977593664851384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217707.P17802977593664851384

/-! ## A217707.P3860898990563902960

`comp[round(A006093(n+1)/4)]`
-/

namespace A217707.P3860898990563902960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006093 (n + 1) : ℚ) / 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A217707.P3860898990563902960

/-! ## A217707.P13439927652253042064

`comp[round(A008578(n+1)/4)]`
-/

namespace A217707.P13439927652253042064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008578 (n + 1) : ℚ) / 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A217707.P13439927652253042064

/-!
# A217709: Numbers of the form p^q^r, for p,q,r primes.

The programs for A217709, there is no canonical definition to state claims against.
-/

/-! ## A217709.P14432385171078560048

`A217261(∑[∏{e}[A216999(n), #]])`
-/

namespace A217709.P14432385171078560048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216999 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217261 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217709.P14432385171078560048

/-! ## A217709.P7745557960394462801

`record[A028233(A277562(n+1))]`
-/

namespace A217709.P7745557960394462801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A277562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217709.P7745557960394462801

/-! ## A217709.P11605653551958129470

`filter[A277562(n+1), A010055(#)]`
-/

namespace A217709.P11605653551958129470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A217709.P11605653551958129470

/-!
# A217710: Cardinality of the set of possible heights of AVL trees with n (leaf-) nodes.

The programs for A217710, the canonical program `A217710.P15686075439153067836` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217710 has offset 1).

The definition of A217710 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217710.P15686075439153067836

`A072649(n+1)-A029837(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A217710

/-- `A072649(n+1)-A029837(n+1)` -/
def P15686075439153067836.Spec : Prop :=
  ∀ n, P15686075439153067836.a n = A217710 (n + 1)

theorem P15686075439153067836.correct : P15686075439153067836.Spec := by
  intro n
  simp only [A217710, Nat.add_sub_cancel]

end A217710

/-! ## A217710.P11313607186608771433

`A095791(n)-∑[char[2^(n+1)]]`
-/

namespace A217710.P11313607186608771433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A217710.P11313607186608771433

namespace A217710

/-- `A095791(n)-∑[char[2^(n+1)]]` -/
def P11313607186608771433.Spec : Prop :=
  ∀ n, P11313607186608771433.a n = A217710 (n + 1)

end A217710

/-! ## A217710.P2668076366539356992

`A072649(n+1)-A000523(2*n+1)`
-/

namespace A217710.P2668076366539356992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - A000523 (2 * n + 1)

end

end A217710.P2668076366539356992

namespace A217710

/-- `A072649(n+1)-A000523(2*n+1)` -/
def P2668076366539356992.Spec : Prop :=
  ∀ n, P2668076366539356992.a n = A217710 (n + 1)

end A217710

/-! ## A217710.P3867608915911231106

`A130233(n+1)-A029837(2*(n+1))`
-/

namespace A217710.P3867608915911231106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (n + 1) - A029837 (2 * (n + 1))

end

end A217710.P3867608915911231106

namespace A217710

/-- `A130233(n+1)-A029837(2*(n+1))` -/
def P3867608915911231106.Spec : Prop :=
  ∀ n, P3867608915911231106.a n = A217710 (n + 1)

end A217710

/-! ## A217710.P1053526395327900594

`A130233(n+1)-A113473(2*n+1)`
-/

namespace A217710.P1053526395327900594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (n + 1) - A113473 (2 * n + 1)

end

end A217710.P1053526395327900594

namespace A217710

/-- `A130233(n+1)-A113473(2*n+1)` -/
def P1053526395327900594.Spec : Prop :=
  ∀ n, P1053526395327900594.a n = A217710 (n + 1)

end A217710

/-! ## A217710.P1536027509782595225

`A070939(A003754(n+1))+1-A070939(n)`
-/

namespace A217710.P1536027509782595225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003754 (n + 1)).toNat + (1 - A070939 n)

end

end A217710.P1536027509782595225

namespace A217710

/-- `A070939(A003754(n+1))+1-A070939(n)` -/
def P1536027509782595225.Spec : Prop :=
  ∀ n, P1536027509782595225.a n = A217710 (n + 1)

end A217710

/-! ## A217710.P10912914178932134836

`A029837(A003714(n+1)+1)-A029837(n+1)`
-/

namespace A217710.P10912914178932134836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A003714 (n + 1) + 1).toNat - A029837 (n + 1)

end

end A217710.P10912914178932134836

namespace A217710

/-- `A029837(A003714(n+1)+1)-A029837(n+1)` -/
def P10912914178932134836.Spec : Prop :=
  ∀ n, P10912914178932134836.a n = A217710 (n + 1)

end A217710

/-! ## A217710.P18180116489255723384

`A029837(A003714(n+2))-A029837(n+1)`
-/

namespace A217710.P18180116489255723384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A003714 (n + 2)).toNat - A029837 (n + 1)

end

end A217710.P18180116489255723384

namespace A217710

/-- `A029837(A003714(n+2))-A029837(n+1)` -/
def P18180116489255723384.Spec : Prop :=
  ∀ n, P18180116489255723384.a n = A217710 (n + 1)

end A217710

/-! ## A217710.P4603170035750973532

`A070939(A022340(n+1))-A070939(2*n)`
-/

namespace A217710.P4603170035750973532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A022340 (n + 1)).toNat - A070939 (2 * n)

end

end A217710.P4603170035750973532

namespace A217710

/-- `A070939(A022340(n+1))-A070939(2*n)` -/
def P4603170035750973532.Spec : Prop :=
  ∀ n, P4603170035750973532.a n = A217710 (n + 1)

end A217710

/-!
# A217712: Number of primes occurring exactly once as numerators in sums generated from the set 1, 1/2, 1/3,..., 1/n.

The programs for A217712, there is no canonical definition to state claims against.
-/

/-! ## A217712.P14234655324826107332

`A233567(A000045(2*n+3)-A217922(n+1))`
-/

namespace A217712.P14234655324826107332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233567 (A000045 (2 * n + 3) - A217922 (n + 1)).toNat

end

end A217712.P14234655324826107332

/-!
# A217713: Integer part of log(n)^2.

The programs for A217713, the canonical program `A217713.P4257931371871427143` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217713 has offset 0).

The definition of A217713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217713.P4257931371871427143

`floor(log(n+1)²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217713

/-- `floor(log(n+1)²)` -/
def P4257931371871427143.Spec : Prop :=
  ∀ n, P4257931371871427143.a n = A217713 n

theorem P4257931371871427143.correct : P4257931371871427143.Spec := by
  intro n
  simp only [A217713]

end A217713

/-! ## A217713.P13236965188035964850

`-ceil(-log(n+1)²)%(n+1)`
-/

namespace A217713.P13236965188035964850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ⌈-(Real.log (n + 1 : ℝ) ^ 2)⌉ (n + 1 : ℤ)

end

end A217713.P13236965188035964850

namespace A217713

/-- `-ceil(-log(n+1)²)%(n+1)` -/
def P13236965188035964850.Spec : Prop :=
  ∀ n, P13236965188035964850.a n = A217713 n

end A217713

/-! ## A217713.P15430595595644269221

`ceil(ceil(log(n+1)²)-atan(n+1))`
-/

namespace A217713.P15430595595644269221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈Real.log (n + 1 : ℝ) ^ 2⌉ : ℝ) - Real.arctan (n + 1 : ℝ)⌉

end

end A217713.P15430595595644269221

namespace A217713

/-- `ceil(ceil(log(n+1)²)-atan(n+1))` -/
def P15430595595644269221.Spec : Prop :=
  ∀ n, P15430595595644269221.a n = A217713 n

end A217713

/-! ## A217713.P4567843947548716728

`ceil(log(n+1)²-n²%(n+1))`
-/

namespace A217713.P4567843947548716728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ) ^ 2 - ((n ^ 2 % (n + 1) : ℕ) : ℝ)⌉

end

end A217713.P4567843947548716728

namespace A217713

/-- `ceil(log(n+1)²-n²%(n+1))` -/
def P4567843947548716728.Spec : Prop :=
  ∀ n, P4567843947548716728.a n = A217713 n

end A217713

/-! ## A217713.P5038715974590676318

`∑[char[A058577(n+1)]]`
-/

namespace A217713.P5038715974590676318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058577 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217713.P5038715974590676318

namespace A217713

/-- `∑[char[A058577(n+1)]]` -/
def P5038715974590676318.Spec : Prop :=
  ∀ n, (P5038715974590676318.a n : ℤ) = A217713 n

end A217713

/-!
# A217714: Modified Euler numbers.

The programs for A217714, there is no canonical definition to state claims against.
-/

/-! ## A217714.P14726728648923597197

`1-A342161(n)`
-/

namespace A217714.P14726728648923597197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A342161 n

end

end A217714.P14726728648923597197

/-! ## A217714.P9934066856707903074

`-(A163982(n)+1)`
-/

namespace A217714.P9934066856707903074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A163982 n + 1)

end

end A217714.P9934066856707903074

/-! ## A217714.P16926379014054828122

`xor((-1)^n, A163747(n))`
-/

namespace A217714.P16926379014054828122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) (A163747 n)

end

end A217714.P16926379014054828122

/-! ## A217714.P15846085419927778305

`A155585(n)-A009832(n)`
-/

namespace A217714.P15846085419927778305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n - A009832 n

end

end A217714.P15846085419927778305

/-! ## A217714.P6894561745079907121

`A155585(n)+1-A119880(n)`
-/

namespace A217714.P6894561745079907121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n + (1 - A119880 n)

end

end A217714.P6894561745079907121

/-! ## A217714.P16858665895221647373

`A122045(n)+A155585(n)-1`
-/

namespace A217714.P16858665895221647373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n + (A155585 n - 1)

end

end A217714.P16858665895221647373

/-! ## A217714.P3493215258919434357

`A218529(n)+2*A155585(n)`
-/

namespace A217714.P3493215258919434357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218529 n + 2 * A155585 n

end

end A217714.P3493215258919434357

/-! ## A217714.P2711265250064712462

`Δ[A009390(n)]+A155585(n)-1`
-/

namespace A217714.P2711265250064712462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A155585 n - 1)

end

end A217714.P2711265250064712462

/-! ## A217714.P15860925523287283633

`(1-and(2, n))*A108040(∑[n])-A009832(n)`
-/

namespace A217714.P15860925523287283633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A108040 (∑ j ∈ Finset.range (n + 1), f1 j) - A009832 n

end

end A217714.P15860925523287283633

/-! ## A217714.P16080355182585718226

`A119879(A000217(n))+A155585(n)-1`
-/

namespace A217714.P16080355182585718226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000217 n).toNat + (A155585 n - 1)

end

end A217714.P16080355182585718226

/-!
# A217715: Numbers equal to the Euler totient function of their arithmetic derivative: k = phi(k').

The programs for A217715, there is no canonical definition to state claims against.
-/

/-! ## A217715.P14901432899338059981

`eq[n, A229340(abs(1-n)+1)]`
-/

namespace A217715.P14901432899338059981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217715.P14901432899338059981

/-! ## A217715.P8689083802964426061

`eq[n+1, A229340(n+1)]+1`
-/

namespace A217715.P8689083802964426061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217715.P8689083802964426061

/-! ## A217715.P16324945653720600844

`lt[(A229340(abs(n-1)+1)-n)², 1]`
-/

namespace A217715.P16324945653720600844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A229340 (|(n : ℤ) - 1| + 1).toNat - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A217715.P16324945653720600844

/-! ## A217715.P12522505684144088727

`A011760(eq[n+1, A229340(n+1)])`
-/

namespace A217715.P12522505684144088727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217715.P12522505684144088727

/-!
# A217717: Primes of the form x^2 + y^2 - 1, where x and y are primes.

The programs for A217717, there is no canonical definition to state claims against.
-/

/-! ## A217717.P9191156139768774741

`p?[A045636(n+1)-1]`
-/

namespace A217717.P9191156139768774741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217717.P9191156139768774741

/-! ## A217717.P2292389975154375360

`p?[A087960(2*or(1, n))+A045636(n+1)]`
-/

namespace A217717.P2292389975154375360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * Nat.lor 1 n) + A045636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217717.P2292389975154375360

/-! ## A217717.P2556897709146213636

`p?[A214514(n+1)-5]`
-/

namespace A217717.P2556897709146213636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214514 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217717.P2556897709146213636

/-! ## A217717.P17465553955993227511

`∩[A000040(n+1), A045636(n+1)-1]`
-/

namespace A217717.P17465553955993227511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217717.P17465553955993227511

/-! ## A217717.P8979326062225538314

`record[A020639(A045636(n+1)-1)]`
-/

namespace A217717.P8979326062225538314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045636 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217717.P8979326062225538314

/-! ## A217717.P7624524340265870902

`p?[A014681(A045636(n+1))]`
-/

namespace A217717.P7624524340265870902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A045636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217717.P7624524340265870902

/-! ## A217717.P14787271610930995462

`record[A014963(A045636(n+1)-1)]`
-/

namespace A217717.P14787271610930995462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A045636 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217717.P14787271610930995462

/-! ## A217717.P9774522598507871796

`record[A014963(A214514(n+1)-5)]`
-/

namespace A217717.P9774522598507871796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A214514 (n + 1) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217717.P9774522598507871796

/-!
# A217718: Primes of the form x^3 + y^3 - 1, where x and y are primes.

The programs for A217718, there is no canonical definition to state claims against.
-/

/-! ## A217718.P6006583851372833096

`p?[A086119(n+1)-1]`
-/

namespace A217718.P6006583851372833096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P6006583851372833096

/-! ## A217718.P16030505001700887712

`p?[A258865(n+1)-9]`
-/

namespace A217718.P16030505001700887712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258865 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P16030505001700887712

/-! ## A217718.P7899058129597802128

`p?[A260196(n+1)+A086119(n+2)]`
-/

namespace A217718.P7899058129597802128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 1) + A086119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P7899058129597802128

/-! ## A217718.P5933229281868358176

`p?[∪[A120398(n+1), A172190(n+1)]-1]`
-/

namespace A217718.P5933229281868358176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P5933229281868358176

/-! ## A217718.P11427370516301510000

`p?[∪[2*A030078(n+1), A120398(n+1)]-1]`
-/

namespace A217718.P11427370516301510000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030078 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P11427370516301510000

/-! ## A217718.P4507445373666238266

`p?[A133574(A001316(n))+A086119(n+1)]`
-/

namespace A217718.P4507445373666238266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 (A001316 n).toNat + A086119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P4507445373666238266

/-! ## A217718.P9583748775936475509

`p?[A133574(A020639(2*(n+1)))+A086119(n+2)]`
-/

namespace A217718.P9583748775936475509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 (A020639 (2 * (n + 1))).toNat + A086119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P9583748775936475509

/-! ## A217718.P15364473107120254580

`p?[A305974(A005384(n+1))+A086119(n+1)]`
-/

namespace A217718.P15364473107120254580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A005384 (n + 1)).toNat + A086119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217718.P15364473107120254580

/-!
# A217720: Number of one-sided polydrafters with n cells.

The programs for A217720, there is no canonical definition to state claims against.
-/

/-! ## A217720.P8145400926315983265

`A128929(A192750(3*n)+A129902(n+3))`
-/

namespace A217720.P8145400926315983265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (A192750 (3 * n) + A129902 (n + 3)).toNat

end

end A217720.P8145400926315983265

/-!
# A217721: Number of primes between n^2 - log_2(n)^2 and n^2 (inclusive).

The programs for A217721, there is no canonical definition to state claims against.
-/

/-! ## A217721.P10880747530692893028

`A306446(xor(A005044(n), A278822(n)))`
-/

namespace A217721.P10880747530692893028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (Int.xor (A005044 n) (A278822 n)).toNat

end

end A217721.P10880747530692893028

/-! ## A217721.P9914130693288971155

`A001221(A325244(2*n)+A256403(n+1))`
-/

namespace A217721.P9914130693288971155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325244 (2 * n) + A256403 (n + 1)).toNat

end

end A217721.P9914130693288971155

/-! ## A217721.P4443062064475750499

`A353835(A364533(3*n+4)-A194975(n+1))`
-/

namespace A217721.P4443062064475750499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A364533 (3 * n + 4) - A194975 (n + 1)).toNat

end

end A217721.P4443062064475750499

/-! ## A217721.P6836096729307503945

`A295664(or(1, A291250(n)))`
-/

namespace A217721.P6836096729307503945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (Int.lor 1 (A291250 n)).toNat

end

end A217721.P6836096729307503945

/-! ## A217721.P6119731843682466058

`A036430(A000041(∑[A132044(n)]))`
-/

namespace A217721.P6119731843682466058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036430 (A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A217721.P6119731843682466058

/-!
# A217722: Primes one less than the sum of the square of a prime and the cube of a prime.

The programs for A217722, there is no canonical definition to state claims against.
-/

/-! ## A217722.P5779095605644402637

`p?[A045699(n+1)-1]`
-/

namespace A217722.P5779095605644402637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217722.P5779095605644402637

/-! ## A217722.P2591337102486231354

`p?[A014681(A045699(n+1))]`
-/

namespace A217722.P2591337102486231354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A045699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217722.P2591337102486231354

/-! ## A217722.P13168734532302296798

`record[A014963(A045699(n+1)-1)]`
-/

namespace A217722.P13168734532302296798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A045699 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217722.P13168734532302296798

/-! ## A217722.P4418567409389784618

`record[A020639(A045699(n+1)-1)]`
-/

namespace A217722.P4418567409389784618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045699 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217722.P4418567409389784618

/-! ## A217722.P2304270794413030380

`∩[A000040(n+1), A045699(n+1)-1]`
-/

namespace A217722.P2304270794413030380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217722.P2304270794413030380

/-!
# A217723: a(n) = (sum of first n primorial numbers) minus 1.

The programs for A217723, there is no canonical definition to state claims against.
-/

/-! ## A217723.P14890531155336184432

`∑[∏[p?[xor(1, n)]]]-2`
-/

namespace A217723.P14890531155336184432
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A217723.P14890531155336184432

/-! ## A217723.P6467215293307618283

`∏[p?[xor(1, n)]]+a(n-1)` with `a(0)=1`
-/

namespace A217723.P6467215293307618283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A217723.P6467215293307618283

/-! ## A217723.P15306427152290751065

`∑[A231209(n)]`
-/

namespace A217723.P15306427152290751065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217723.P15306427152290751065

/-! ## A217723.P1891271280376484681

`A060389(n+1)-1`
-/

namespace A217723.P1891271280376484681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060389 (n + 1) - 1

end

end A217723.P1891271280376484681

/-! ## A217723.P14699986607435337441

`A143293(n+1)-2`
-/

namespace A217723.P14699986607435337441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 (n + 1) - 2

end

end A217723.P14699986607435337441

/-! ## A217723.P7417460626613065445

`A084737(n+3)-3`
-/

namespace A217723.P7417460626613065445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084737 (n + 3) - 3

end

end A217723.P7417460626613065445

/-! ## A217723.P6212532164203332081

`∑[record[A096334(n+2)]]`
-/

namespace A217723.P6212532164203332081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217723.P6212532164203332081

/-! ## A217723.P17396567929833129434

`∑[record[A121281(n+2)]]`
-/

namespace A217723.P17396567929833129434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217723.P17396567929833129434

/-! ## A217723.P5201744934355265187

`∑[∑[A061720(n)]]+n`
-/

namespace A217723.P5201744934355265187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A217723.P5201744934355265187

/-! ## A217723.P7614123173161212997

`∑[A002110(n+1)]-1`
-/

namespace A217723.P7614123173161212997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A217723.P7614123173161212997

/-!
# A217724: Smallest prime producing a gap with the next prime, the size of the gap being a composite number with 2n+1 as a factor.

The programs for A217724, there is no canonical definition to state claims against.
-/

/-! ## A217724.P14208944486707478044

`A000230(3*n+5)`
-/

namespace A217724.P14208944486707478044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (3 * n + 5)

end

end A217724.P14208944486707478044

/-! ## A217724.P12603954673619732445

`A045881(3*n+5)-1`
-/

namespace A217724.P12603954673619732445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (3 * n + 5) - 1

end

end A217724.P12603954673619732445

/-! ## A217724.P17481965897204084462

`or(1, A000230(A180486(n+1)))`
-/

namespace A217724.P17481965897204084462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (A180486 (n + 1)).toNat)

end

end A217724.P17481965897204084462

/-! ## A217724.P11635717997544518461

`or(1, A000230(A016777(n)+4))`
-/

namespace A217724.P11635717997544518461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (A016777 n + 4).toNat)

end

end A217724.P11635717997544518461

/-! ## A217724.P17034385399379678929

`or(1, A000230(A016825(n+1)-(n+1)))`
-/

namespace A217724.P17034385399379678929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (A016825 (n + 1) - (n + 1 : ℤ)).toNat)

end

end A217724.P17034385399379678929

/-! ## A217724.P12967507921965212166

`lcm(A000230(A180486(n+1)), A033999(n))`
-/

namespace A217724.P12967507921965212166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000230 (A180486 (n + 1)).toNat) (A033999 n)

end

end A217724.P12967507921965212166

/-! ## A217724.P12706921764812616493

`A000230(A180486(n+1))+Δ[A014206(n)]%2`
-/

namespace A217724.P12706921764812616493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A180486 (n + 1)).toNat + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A217724.P12706921764812616493

/-! ## A217724.P2034651064882436722

`A002262(∑[n])+A000230(A103517(n+1)+n+1)`
-/

namespace A217724.P2034651064882436722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + A000230 (A103517 (n + 1) + (n + 1 : ℤ)).toNat

end

end A217724.P2034651064882436722

/-! ## A217724.P1496678584218345069

`A000230(A180486(n+1))+A008683(xor(3, n)+n+1)`
-/

namespace A217724.P1496678584218345069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A180486 (n + 1)).toNat + A008683 (Nat.xor 3 n + n + 1)

end

end A217724.P1496678584218345069

/-! ## A217724.P15063588346461288048

`A000230(A180486(n+1))/A250068(A000040(n+1))`
-/

namespace A217724.P15063588346461288048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000230 (A180486 (n + 1)).toNat : ℚ) / (A250068 (A000040 (n + 1)).toNat : ℚ)

end

end A217724.P15063588346461288048

/-!
# A217725: Numbers n such that 5n is a partition number.

The programs for A217725, there is no canonical definition to state claims against.
-/

/-! ## A217725.P6869091911577809110

`A225325(n+1)/5`
-/

namespace A217725.P6869091911577809110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225325 (n + 1) : ℚ) / 5

end

end A217725.P6869091911577809110

/-! ## A217725.P17039440828356391316

`A000041(A243935(n+1))/5`
-/

namespace A217725.P17039440828356391316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A243935 (n + 1)).toNat : ℚ) / 5

end

end A217725.P17039440828356391316

/-! ## A217725.P14136230946190244059

`A000041(eq[0, A068908(n)])/5`
-/

namespace A217725.P14136230946190244059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 5

end

end A217725.P14136230946190244059

/-! ## A217725.P11620696970225950782

`A000041(lt[A068908(n), 1])/5`
-/

namespace A217725.P11620696970225950782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 5

end

end A217725.P11620696970225950782

/-! ## A217725.P10956277520473077583

`A139582(eq[0, A068908(n)])/10`
-/

namespace A217725.P10956277520473077583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 10

end

end A217725.P10956277520473077583

/-!
# A217726: Numbers n such that 6n is a partition number.

The programs for A217726, there is no canonical definition to state claims against.
-/

/-! ## A217726.P8998993121379347277

`A225326(n+1)/6`
-/

namespace A217726.P8998993121379347277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225326 (n + 1) : ℚ) / 6

end

end A217726.P8998993121379347277

/-! ## A217726.P3422170539376341769

`A000041(eq[0, A000041(n)%6])/6`
-/

namespace A217726.P3422170539376341769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 6

end

end A217726.P3422170539376341769

/-! ## A217726.P230169798443737660

`A000041(eq[6, gcd(6, A000041(n))])/6`
-/

namespace A217726.P230169798443737660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 6

end

end A217726.P230169798443737660

/-! ## A217726.P11214628806678896235

`∩[A052001(n+1), A087183(n+1)]/6`
-/

namespace A217726.P11214628806678896235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087183 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A217726.P11214628806678896235

/-! ## A217726.P4458721529373269350

`∩[2*A213179(n+1), A087183(n+1)]/6`
-/

namespace A217726.P4458721529373269350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087183 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A217726.P4458721529373269350

/-!
# A217728: a(n) = a(n-1)^3 + a(n-2)^3 - (a(n-1) - a(n-2))^3, a(1) = a(2) = 1.

The programs for A217728, there is no canonical definition to state claims against.
-/

/-! ## A217728.P15020264147742442847

`a(n-1)^3+a(n-2)^3-(a(n-1)-a(n-2))^3` with `a(0)=1, a(1)=1`
-/

namespace A217728.P15020264147742442847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 3 + a (n - 2) ^ 3 - (a (n - 1) - a (n - 2)) ^ 3

end

end A217728.P15020264147742442847

/-!
# A217729: Trajectory of 40 under the map n-> A006369(n).

The programs for A217729, there is no canonical definition to state claims against.
-/

/-! ## A217729.P11032020245944326873

`A006369(a(n-1))` with `a(0)=40`
-/

namespace A217729.P11032020245944326873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A217729.P11032020245944326873

/-! ## A217729.P10903667548975535538

`sqrt(A173536(a(n-1)+2))` with `a(0)=40`
-/

namespace A217729.P10903667548975535538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [40] fun n a =>
  Real.sqrt (A173536 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℝ)

end

end A217729.P10903667548975535538

/-! ## A217729.P12786410900116752914

`A265667(a(n-1)+1)-1` with `a(0)=40`
-/

namespace A217729.P12786410900116752914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A265667 (a (n - 1) + 1).toNat - 1

end

end A217729.P12786410900116752914

/-! ## A217729.P7093321656117494263

`lcm(2, A042965(a(n-1)+1))/2` with `a(0)=40`
-/

namespace A217729.P7093321656117494263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [40] fun n a =>
  (Int.lcm 2 (A042965 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat) : ℚ) / 2

end

end A217729.P7093321656117494263

/-! ## A217729.P9777649656490094229

`A168222(A006368(a(n-1)))` with `a(0)=40`
-/

namespace A217729.P9777649656490094229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A168222 (A006368 (a (n - 1)).toNat).toNat

end

end A217729.P9777649656490094229

/-! ## A217729.P4984113018738527559

`A168222(A351412(xor(1, a(n-1))))` with `a(0)=40`
-/

namespace A217729.P4984113018738527559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A168222 (A351412 (Int.xor 1 (a (n - 1))).toNat).toNat

end

end A217729.P4984113018738527559

/-! ## A217729.P14756014487862083977

`A168222(floor(A165355(a(n-1))/2))` with `a(0)=40`
-/

namespace A217729.P14756014487862083977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A168222 ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋.toNat

end

end A217729.P14756014487862083977

/-! ## A217729.P7780352634827569639

`A089598(A047271(a(n-1)))` with `a(0)=40`
-/

namespace A217729.P7780352634827569639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A089598 (A047271 (a (n - 1)).toNat).toNat

end

end A217729.P7780352634827569639

/-!
# A217730: Expansion of (1+2*x-x^3)/(1-4*x^2+2*x^4).

The programs for A217730, the canonical program `A217730.P13250617641348565591` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217730 has offset 0).

The definition of A217730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3)/(1-4x^2+2x^4))` (program `A217730.P13250617641348565591`, by `A217730.P13250617641348565591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217730.P13250617641348565591

`ogf((1+2x-x^3)/(1-4x^2+2x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217730

/-- `ogf((1+2x-x^3)/(1-4x^2+2x^4))` -/
def P13250617641348565591.Spec : Prop :=
  ∀ n, P13250617641348565591.a n = A217730 n

theorem P13250617641348565591.correct : P13250617641348565591.Spec := by
  intro n
  simp only [A217730]

end A217730

/-! ## A217730.P9457355706997540721

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A217730.P9457355706997540721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  4 * a (n - 2) - 2 * a (n - 4)

end

end A217730.P9457355706997540721

namespace A217730

/-- `4*a(n-2)-2*a(n-4)` -/
def P9457355706997540721.Spec : Prop :=
  ∀ n, P9457355706997540721.a n = A217730 n

end A217730

/-! ## A217730.P16392239036020117962

`a(n-2)-floor(a(n-2)/(1-sqrt(2)))` with `a(0)=1, a(1)=2`
-/

namespace A217730.P16392239036020117962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - ⌊(a (n - 2) : ℝ) / (1 - Real.sqrt (2 : ℝ))⌋

end

end A217730.P16392239036020117962

namespace A217730

/-- `a(n-2)-floor(a(n-2)/(1-sqrt(2)))` -/
def P16392239036020117962.Spec : Prop :=
  ∀ n, P16392239036020117962.a n = A217730 n

end A217730

/-! ## A217730.P2531305492037466070

`A062113(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A217730.P2531305492037466070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062113 (n - 1) + a (n - 1)

end

end A217730.P2531305492037466070

namespace A217730

/-- `A062113(n-1)+a(n-1)` -/
def P2531305492037466070.Spec : Prop :=
  ∀ n, P2531305492037466070.a n = A217730 n

end A217730

/-! ## A217730.P17057074697843993236

`∪[A003480(n), A007070(n)]`
-/

namespace A217730.P17057074697843993236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217730.P17057074697843993236

namespace A217730

/-- `∪[A003480(n), A007070(n)]` -/
def P17057074697843993236.Spec : Prop :=
  ∀ n, (P17057074697843993236.a n : ℤ) = A217730 n

end A217730

/-! ## A217730.P9757025174098320190

`A030436(n)+∑[A062112(n)]`
-/

namespace A217730.P9757025174098320190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217730.P9757025174098320190

namespace A217730

/-- `A030436(n)+∑[A062112(n)]` -/
def P9757025174098320190.Spec : Prop :=
  ∀ n, P9757025174098320190.a n = A217730 n

end A217730

/-! ## A217730.P5054330168224534307

`A030436(n+2)-A030436(n)`
-/

namespace A217730.P5054330168224534307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (n + 2) - A030436 n

end

end A217730.P5054330168224534307

namespace A217730

/-- `A030436(n+2)-A030436(n)` -/
def P5054330168224534307.Spec : Prop :=
  ∀ n, P5054330168224534307.a n = A217730 n

end A217730

/-! ## A217730.P9230684818891502629

`A121720(n+1)+A121720(n+2)`
-/

namespace A217730.P9230684818891502629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (n + 1) + A121720 (n + 2)

end

end A217730.P9230684818891502629

namespace A217730

/-- `A121720(n+1)+A121720(n+2)` -/
def P9230684818891502629.Spec : Prop :=
  ∀ n, P9230684818891502629.a n = A217730 n

end A217730

/-! ## A217730.P4296847815625271586

`A007068(A000034(n)+n)/A000034(n)`
-/

namespace A217730.P4296847815625271586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007068 (A000034 n + (n : ℤ)).toNat : ℚ) / (A000034 n : ℚ)

end

end A217730.P4296847815625271586

namespace A217730

/-- `A007068(A000034(n)+n)/A000034(n)` -/
def P4296847815625271586.Spec : Prop :=
  ∀ n, P4296847815625271586.a n = (A217730 n : ℚ)

end A217730

/-! ## A217730.P14379418867081578315

`A062113(n)+A000035(n+1)*A062112(n)`
-/

namespace A217730.P14379418867081578315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 n + A000035 (n + 1) * A062112 n

end

end A217730.P14379418867081578315

namespace A217730

/-- `A062113(n)+A000035(n+1)*A062112(n)` -/
def P14379418867081578315.Spec : Prop :=
  ∀ n, P14379418867081578315.a n = A217730 n

end A217730

/-! ## A217730.P17836460784888966455

`A068912(n+1)/2`
-/

namespace A217730.P17836460784888966455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068912 (n + 1) : ℚ) / 2

end

end A217730.P17836460784888966455

namespace A217730

/-- `A068912(n+1)/2` -/
def P17836460784888966455.Spec : Prop :=
  ∀ n, P17836460784888966455.a n = (A217730 n : ℚ)

end A217730

/-! ## A217730.P6222615169380780531

`∪[A007070(n), A020727(n)]`
-/

namespace A217730.P6222615169380780531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217730.P6222615169380780531

namespace A217730

/-- `∪[A007070(n), A020727(n)]` -/
def P6222615169380780531.Spec : Prop :=
  ∀ n, (P6222615169380780531.a n : ℤ) = A217730 n

end A217730

/-! ## A217730.P14929822514147465591

`Δ[A030436(n+1)+A030436(n)]`
-/

namespace A217730.P14929822514147465591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (n + 1) + A030436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217730.P14929822514147465591

namespace A217730

/-- `Δ[A030436(n+1)+A030436(n)]` -/
def P14929822514147465591.Spec : Prop :=
  ∀ n, P14929822514147465591.a n = A217730 n

end A217730

/-! ## A217730.P12166879314946527921

`∑[A062113(n)]+1-A062113(n)`
-/

namespace A217730.P12166879314946527921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A062113 n)

end

end A217730.P12166879314946527921

namespace A217730

/-- `∑[A062113(n)]+1-A062113(n)` -/
def P12166879314946527921.Spec : Prop :=
  ∀ n, P12166879314946527921.a n = A217730 n

end A217730

/-! ## A217730.P1646881157915240560

`∪[A007070(n)+A007052(n), A007070(n)]`
-/

namespace A217730.P1646881157915240560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + A007052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217730.P1646881157915240560

namespace A217730

/-- `∪[A007070(n)+A007052(n), A007070(n)]` -/
def P1646881157915240560.Spec : Prop :=
  ∀ n, (P1646881157915240560.a n : ℤ) = A217730 n

end A217730

/-! ## A217730.P13033347607196344009

`∪[A020727(n)-A007052(n), A020727(n)]`
-/

namespace A217730.P13033347607196344009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - A007052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217730.P13033347607196344009

namespace A217730

/-- `∪[A020727(n)-A007052(n), A020727(n)]` -/
def P13033347607196344009.Spec : Prop :=
  ∀ n, (P13033347607196344009.a n : ℤ) = A217730 n

end A217730

/-! ## A217730.P1051916490284883910

`A007068(n+2)-A000034(n+1)*A062113(n)`
-/

namespace A217730.P1051916490284883910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (n + 2) - A000034 (n + 1) * A062113 n

end

end A217730.P1051916490284883910

namespace A217730

/-- `A007068(n+2)-A000034(n+1)*A062113(n)` -/
def P1051916490284883910.Spec : Prop :=
  ∀ n, P1051916490284883910.a n = A217730 n

end A217730

/-! ## A217730.P377705179947573913

`∑[A062113(log2(A011782(n)))]`
-/

namespace A217730.P377705179947573913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217730.P377705179947573913

namespace A217730

/-- `∑[A062113(log2(A011782(n)))]` -/
def P377705179947573913.Spec : Prop :=
  ∀ n, P377705179947573913.a n = A217730 n

end A217730

/-! ## A217730.P17372427008086482902

`∑[A228405(∑[or(1, n)])]`
-/

namespace A217730.P17372427008086482902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217730.P17372427008086482902

namespace A217730

/-- `∑[A228405(∑[or(1, n)])]` -/
def P17372427008086482902.Spec : Prop :=
  ∀ n, P17372427008086482902.a n = A217730 n

end A217730

/-! ## A217730.P12259250157918440099

`∑[A228405(∑[A109613(n)])]`
-/

namespace A217730.P12259250157918440099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217730.P12259250157918440099

namespace A217730

/-- `∑[A228405(∑[A109613(n)])]` -/
def P12259250157918440099.Spec : Prop :=
  ∀ n, P12259250157918440099.a n = A217730 n

end A217730

/-!
# A217731: Numbers n such that in Collatz (3x+1) trajectory of n, the number of terms < n equals number of terms > n.

The programs for A217731, there is no canonical definition to state claims against.
-/

/-! ## A217731.P9552922238403660913

`eq[A076228(n+1), A222597(n+1)]+1`
-/

namespace A217731.P9552922238403660913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217731.P9552922238403660913

/-! ## A217731.P15180229758218275924

`eq[A159999(n+1), A213204(n+1)]+1`
-/

namespace A217731.P15180229758218275924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217731.P15180229758218275924

/-!
# A217733: Expansion of (1+x-x^2)/((1-x)*(1-3*x^2-x^3)).

The programs for A217733, the canonical program `A217733.P2409440368573080498` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217733 has offset 0).

The definition of A217733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-x-3x^2+2x^3+x^4))` (program `A217733.P2409440368573080498`, by `A217733.P2409440368573080498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217733.P2409440368573080498

`ogf((1+x-x^2)/(1-x-3x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217733

/-- `ogf((1+x-x^2)/(1-x-3x^2+2x^3+x^4))` -/
def P2409440368573080498.Spec : Prop :=
  ∀ n, P2409440368573080498.a n = A217733 n

theorem P2409440368573080498.correct : P2409440368573080498.Spec := by
  intro n
  simp only [A217733]

end A217733

/-! ## A217733.P4764842017695204983

`a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A217733.P4764842017695204983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A217733.P4764842017695204983

namespace A217733

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P4764842017695204983.Spec : Prop :=
  ∀ n, P4764842017695204983.a n = A217733 n

end A217733

/-! ## A217733.P8905974082392706885

`∑[a(n-3)+3*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A217733.P8905974082392706885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 3) + 3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217733.P8905974082392706885

namespace A217733

/-- `∑[a(n-3)+3*a(n-2)]` -/
def P8905974082392706885.Spec : Prop :=
  ∀ n, (P8905974082392706885.a n : ℤ) = A217733 n

end A217733

/-! ## A217733.P7335205656533253847

`3*a(n-2)+a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A217733.P7335205656533253847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 2) + (a (n - 3) + 1)

end

end A217733.P7335205656533253847

namespace A217733

/-- `3*a(n-2)+a(n-3)+1` -/
def P7335205656533253847.Spec : Prop :=
  ∀ n, (P7335205656533253847.a n : ℤ) = A217733 n

end A217733

/-! ## A217733.P15979101883410748789

`A065455(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A217733.P15979101883410748789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065455 (n - 1) + a (n - 1)

end

end A217733.P15979101883410748789

namespace A217733

/-- `A065455(n-1)+a(n-1)` -/
def P15979101883410748789.Spec : Prop :=
  ∀ n, P15979101883410748789.a n = A217733 n

end A217733

/-! ## A217733.P16808885541892980329

`A061551(n)+∑[A188022(n)]`
-/

namespace A217733.P16808885541892980329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217733.P16808885541892980329

namespace A217733

/-- `A061551(n)+∑[A188022(n)]` -/
def P16808885541892980329.Spec : Prop :=
  ∀ n, P16808885541892980329.a n = A217733 n

end A217733

/-! ## A217733.P10085525805089035264

`∑[A065455(A004273(n)-n)]`
-/

namespace A217733.P10085525805089035264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217733.P10085525805089035264

namespace A217733

/-- `∑[A065455(A004273(n)-n)]` -/
def P10085525805089035264.Spec : Prop :=
  ∀ n, P10085525805089035264.a n = A217733 n

end A217733

/-! ## A217733.P8205015786989854854

`A188022(n+1)+A188021(n+1)`
-/

namespace A217733.P8205015786989854854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (n + 1) + A188021 (n + 1)

end

end A217733.P8205015786989854854

namespace A217733

/-- `A188022(n+1)+A188021(n+1)` -/
def P8205015786989854854.Spec : Prop :=
  ∀ n, P8205015786989854854.a n = A217733 n

end A217733

/-! ## A217733.P15003312428222289787

`A061551(n+1)+A061551(n)-1`
-/

namespace A217733.P15003312428222289787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n + 1) + A061551 n - 1

end

end A217733.P15003312428222289787

namespace A217733

/-- `A061551(n+1)+A061551(n)-1` -/
def P15003312428222289787.Spec : Prop :=
  ∀ n, P15003312428222289787.a n = A217733 n

end A217733

/-! ## A217733.P8448467172654325866

`∑[A188048(n)+A052931(n)]-A052931(n)`
-/

namespace A217733.P8448467172654325866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n + A052931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052931 n

end

end A217733.P8448467172654325866

namespace A217733

/-- `∑[A188048(n)+A052931(n)]-A052931(n)` -/
def P8448467172654325866.Spec : Prop :=
  ∀ n, P8448467172654325866.a n = A217733 n

end A217733

/-! ## A217733.P13432080406572608043

`A188021(n+1)+A188021(n)+A061551(n)`
-/

namespace A217733.P13432080406572608043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (n + 1) + (A188021 n + A061551 n)

end

end A217733.P13432080406572608043

namespace A217733

/-- `A188021(n+1)+A188021(n)+A061551(n)` -/
def P13432080406572608043.Spec : Prop :=
  ∀ n, P13432080406572608043.a n = A217733 n

end A217733

/-! ## A217733.P453920282684120322

`∑[A065455(n)]+1-A065455(n)`
-/

namespace A217733.P453920282684120322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A065455 n)

end

end A217733.P453920282684120322

namespace A217733

/-- `∑[A065455(n)]+1-A065455(n)` -/
def P453920282684120322.Spec : Prop :=
  ∀ n, P453920282684120322.a n = A217733 n

end A217733

/-! ## A217733.P14881756766001594153

`A188021(n+3)-A188048(n+1)`
-/

namespace A217733.P14881756766001594153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (n + 3) - A188048 (n + 1)

end

end A217733.P14881756766001594153

namespace A217733

/-- `A188021(n+3)-A188048(n+1)` -/
def P14881756766001594153.Spec : Prop :=
  ∀ n, P14881756766001594153.a n = A217733 n

end A217733

/-! ## A217733.P17811015491285751311

`∑[A065455(log2(A011782(n)))]`
-/

namespace A217733.P17811015491285751311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217733.P17811015491285751311

namespace A217733

/-- `∑[A065455(log2(A011782(n)))]` -/
def P17811015491285751311.Spec : Prop :=
  ∀ n, P17811015491285751311.a n = A217733 n

end A217733

/-!
# A217734: Primes of the form x^2 + y^3 + 1 where x and y are prime.

The programs for A217734, there is no canonical definition to state claims against.
-/

/-! ## A217734.P565075758283822766

`p?[A045699(n+1)+1]`
-/

namespace A217734.P565075758283822766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217734.P565075758283822766

/-! ## A217734.P11282425092078218915

`∩[A000040(n+1), A045699(n+1)+1]`
-/

namespace A217734.P11282425092078218915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217734.P11282425092078218915

/-! ## A217734.P18152099605659993912

`record[A020639(A045699(n+1)+1)]`
-/

namespace A217734.P18152099605659993912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045699 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217734.P18152099605659993912

/-! ## A217734.P10176266544897371334

`record[A006530(xor(1, A045699(n+1)))]`
-/

namespace A217734.P10176266544897371334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 1 (A045699 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217734.P10176266544897371334

/-! ## A217734.P2132817388057154223

`record[A108077(A045699(n+1))]`
-/

namespace A217734.P2132817388057154223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A045699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217734.P2132817388057154223

/-!
# A217736: Sum of first n squares of semiprimes.

The programs for A217736, the canonical program `A217736.P10962452601645080754` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217736 has offset 1).

The definition of A217736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217736.P1657571308424674505

`∑[A074985(n+1)]`
-/

namespace A217736.P1657571308424674505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P1657571308424674505

namespace A217736

/-- `∑[A074985(n+1)]` -/
def P1657571308424674505.Spec : Prop :=
  ∀ n, P1657571308424674505.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P9928366730992236023

`∑[A001358(n+1)²]`
-/

namespace A217736.P9928366730992236023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P9928366730992236023

namespace A217736

/-- `∑[A001358(n+1)²]` -/
def P9928366730992236023.Spec : Prop :=
  ∀ n, P9928366730992236023.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P3267787657548735984

`∑[(A186621(n+1)+1)²]`
-/

namespace A217736.P3267787657548735984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186621 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P3267787657548735984

namespace A217736

/-- `∑[(A186621(n+1)+1)²]` -/
def P3267787657548735984.Spec : Prop :=
  ∀ n, P3267787657548735984.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P2076014157989504757

`∑[(1-A088707(n+1))²]`
-/

namespace A217736.P2076014157989504757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088707 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P2076014157989504757

namespace A217736

/-- `∑[(1-A088707(n+1))²]` -/
def P2076014157989504757.Spec : Prop :=
  ∀ n, P2076014157989504757.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P15882046720522029824

`∑[(A075818(n+1)/2)²]`
-/

namespace A217736.P15882046720522029824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075818 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P15882046720522029824

namespace A217736

/-- `∑[(A075818(n+1)/2)²]` -/
def P15882046720522029824.Spec : Prop :=
  ∀ n, P15882046720522029824.a n = (A217736 (n + 1) : ℚ)

end A217736

/-! ## A217736.P15188464373341612738

`∑[(eq[2, A001222(n+1)]+1)²]`
-/

namespace A217736.P15188464373341612738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P15188464373341612738

namespace A217736

/-- `∑[(eq[2, A001222(n+1)]+1)²]` -/
def P15188464373341612738.Spec : Prop :=
  ∀ n, (P15188464373341612738.a n : ℤ) = A217736 (n + 1)

end A217736

/-! ## A217736.P17632543349711600358

`∑[(A175708(n+1)+n+1)²]`
-/

namespace A217736.P17632543349711600358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175708 (n + 1) + (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P17632543349711600358

namespace A217736

/-- `∑[(A175708(n+1)+n+1)²]` -/
def P17632543349711600358.Spec : Prop :=
  ∀ n, P17632543349711600358.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P10962452601645080754

`∑[(n+1-A100493(n+1))²]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A217736

/-- `∑[(n+1-A100493(n+1))²]` -/
def P10962452601645080754.Spec : Prop :=
  ∀ n, P10962452601645080754.a n = A217736 (n + 1)

theorem P10962452601645080754.correct : P10962452601645080754.Spec := by
  intro n
  simp only [A217736, Nat.add_sub_cancel]

end A217736

/-! ## A217736.P1086234341990825442

`∑[(A000040(n+1)-A065870(n+1))²]`
-/

namespace A217736.P1086234341990825442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A065870 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P1086234341990825442

namespace A217736

/-- `∑[(A000040(n+1)-A065870(n+1))²]` -/
def P1086234341990825442.Spec : Prop :=
  ∀ n, P1086234341990825442.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P6982077100145591767

`∑[(A084126(n+1)*A084127(n+1))²]`
-/

namespace A217736.P6982077100145591767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084126 (n + 1) * A084127 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P6982077100145591767

namespace A217736

/-- `∑[(A084126(n+1)*A084127(n+1))²]` -/
def P6982077100145591767.Spec : Prop :=
  ∀ n, P6982077100145591767.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P15867563254120112277

`∑[(A186621(n+1)+1)*A001358(n+1)]`
-/

namespace A217736.P15867563254120112277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186621 (n + 1) + 1) * A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P15867563254120112277

namespace A217736

/-- `∑[(A186621(n+1)+1)*A001358(n+1)]` -/
def P15867563254120112277.Spec : Prop :=
  ∀ n, P15867563254120112277.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P37417341590924514

`∑[(A088707(n+1)-1)*A001358(n+1)]`
-/

namespace A217736.P37417341590924514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 1) - 1) * A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P37417341590924514

namespace A217736

/-- `∑[(A088707(n+1)-1)*A001358(n+1)]` -/
def P37417341590924514.Spec : Prop :=
  ∀ n, P37417341590924514.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P7210263489819785534

`∑[A075818(n+1)/2*A001358(n+1)]`
-/

namespace A217736.P7210263489819785534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 * (A001358 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P7210263489819785534

namespace A217736

/-- `∑[A075818(n+1)/2*A001358(n+1)]` -/
def P7210263489819785534.Spec : Prop :=
  ∀ n, P7210263489819785534.a n = (A217736 (n + 1) : ℚ)

end A217736

/-! ## A217736.P10576349267722961292

`∑[(eq[2, A001222(n+1)]+1)*A001358(n+1)]`
-/

namespace A217736.P10576349267722961292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) * A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P10576349267722961292

namespace A217736

/-- `∑[(eq[2, A001222(n+1)]+1)*A001358(n+1)]` -/
def P10576349267722961292.Spec : Prop :=
  ∀ n, P10576349267722961292.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P8015133275092649046

`∑[(eq[2, A001222(n+1)]+1)*(A088707(n+1)-1)]`
-/

namespace A217736.P8015133275092649046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) * (A088707 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P8015133275092649046

namespace A217736

/-- `∑[(eq[2, A001222(n+1)]+1)*(A088707(n+1)-1)]` -/
def P8015133275092649046.Spec : Prop :=
  ∀ n, P8015133275092649046.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P6804855958016932636

`∑[(eq[2, A001222(n+1)]+1)*A075818(n+1)/2]`
-/

namespace A217736.P6804855958016932636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℚ) * ((A075818 (n + 1) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P6804855958016932636

namespace A217736

/-- `∑[(eq[2, A001222(n+1)]+1)*A075818(n+1)/2]` -/
def P6804855958016932636.Spec : Prop :=
  ∀ n, P6804855958016932636.a n = (A217736 (n + 1) : ℚ)

end A217736

/-! ## A217736.P17455612376428207898

`∑[(A088707(n+1)+A008683(A007918(n)))²]`
-/

namespace A217736.P17455612376428207898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 1) + A008683 (A007918 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P17455612376428207898

namespace A217736

/-- `∑[(A088707(n+1)+A008683(A007918(n)))²]` -/
def P17455612376428207898.Spec : Prop :=
  ∀ n, P17455612376428207898.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P14442195406750359600

`∑[A176540(n+2)²]`
-/

namespace A217736.P14442195406750359600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P14442195406750359600

namespace A217736

/-- `∑[A176540(n+2)²]` -/
def P14442195406750359600.Spec : Prop :=
  ∀ n, P14442195406750359600.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P1602408603604302107

`∑[A129767(2*(n+1))²]`
-/

namespace A217736.P1602408603604302107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P1602408603604302107

namespace A217736

/-- `∑[A129767(2*(n+1))²]` -/
def P1602408603604302107.Spec : Prop :=
  ∀ n, P1602408603604302107.a n = A217736 (n + 1)

end A217736

/-! ## A217736.P9707651495124936718

`∑[A166133(A256563(n+1))²]`
-/

namespace A217736.P9707651495124936718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A256563 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217736.P9707651495124936718

namespace A217736

/-- `∑[A166133(A256563(n+1))²]` -/
def P9707651495124936718.Spec : Prop :=
  ∀ n, P9707651495124936718.a n = A217736 (n + 1)

end A217736

/-!
# A217737: a(n) = Fibonacci(n) mod n*(n+1).

The programs for A217737, the canonical program `A217737.P14671918623670469399` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217737 has offset 1).

The definition of A217737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217737.P14671918623670469399

`∑[A212804(n)]%∑[2*(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A217737

/-- `∑[A212804(n)]%∑[2*(n+1)]` -/
def P14671918623670469399.Spec : Prop :=
  ∀ n, P14671918623670469399.a n = A217737 (n + 1)

theorem P14671918623670469399.correct : P14671918623670469399.Spec := by
  intro n
  simp only [A217737, Nat.add_sub_cancel]

end A217737

/-! ## A217737.P10185965733920199682

`A000045(n+1)%∑[2*(n+1)]`
-/

namespace A217737.P10185965733920199682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A217737.P10185965733920199682

namespace A217737

/-- `A000045(n+1)%∑[2*(n+1)]` -/
def P10185965733920199682.Spec : Prop :=
  ∀ n, P10185965733920199682.a n = A217737 (n + 1)

end A217737

/-! ## A217737.P9975600618584005494

`(A001611(n+1)-1)%∑[2*(n+1)]`
-/

namespace A217737.P9975600618584005494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 1) - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A217737.P9975600618584005494

namespace A217737

/-- `(A001611(n+1)-1)%∑[2*(n+1)]` -/
def P9975600618584005494.Spec : Prop :=
  ∀ n, P9975600618584005494.a n = A217737 (n + 1)

end A217737

/-! ## A217737.P912735031647553324

`A105800(2*(n+1))%∑[2*(n+1)]`
-/

namespace A217737.P912735031647553324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105800 (2 * (n + 1))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A217737.P912735031647553324

namespace A217737

/-- `A105800(2*(n+1))%∑[2*(n+1)]` -/
def P912735031647553324.Spec : Prop :=
  ∀ n, P912735031647553324.a n = A217737 (n + 1)

end A217737

/-! ## A217737.P14258531500934641825

`(A000071(n+1)+1)%((n+1)*(n+2))`
-/

namespace A217737.P14258531500934641825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 1) + 1) ((n + 1) * (n + 2) : ℤ)

end

end A217737.P14258531500934641825

namespace A217737

/-- `(A000071(n+1)+1)%((n+1)*(n+2))` -/
def P14258531500934641825.Spec : Prop :=
  ∀ n, P14258531500934641825.a n = A217737 (n + 1)

end A217737

/-! ## A217737.P13458889135344129554

`A103609(2*n+3)%∑[A005843(n+1)]`
-/

namespace A217737.P13458889135344129554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103609 (2 * n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217737.P13458889135344129554

namespace A217737

/-- `A103609(2*n+3)%∑[A005843(n+1)]` -/
def P13458889135344129554.Spec : Prop :=
  ∀ n, P13458889135344129554.a n = A217737 (n + 1)

end A217737

/-! ## A217737.P71954353340850548

`A163227(2*n+1)%A002378(n+1)`
-/

namespace A217737.P71954353340850548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163227 (2 * n + 1)) (A002378 (n + 1))

end

end A217737.P71954353340850548

namespace A217737

/-- `A163227(2*n+1)%A002378(n+1)` -/
def P71954353340850548.Spec : Prop :=
  ∀ n, P71954353340850548.a n = A217737 (n + 1)

end A217737

/-! ## A217737.P5467550826388870120

`Δ[A000045(n+2)]%((n+1)*(n+2))`
-/

namespace A217737.P5467550826388870120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((n + 1) * (n + 2) : ℤ)

end

end A217737.P5467550826388870120

namespace A217737

/-- `Δ[A000045(n+2)]%((n+1)*(n+2))` -/
def P5467550826388870120.Spec : Prop :=
  ∀ n, P5467550826388870120.a n = A217737 (n + 1)

end A217737

/-! ## A217737.P7466959887777090642

`A058071(∑[n])%∑[2*(n+1)]`
-/

namespace A217737.P7466959887777090642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058071 (∑ j ∈ Finset.range (n + 1), f1 j)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A217737.P7466959887777090642

namespace A217737

/-- `A058071(∑[n])%∑[2*(n+1)]` -/
def P7466959887777090642.Spec : Prop :=
  ∀ n, P7466959887777090642.a n = A217737 (n + 1)

end A217737

/-!
# A217738: Numbers k such that Fibonacci(k) is divisible by k*(k+1).

The programs for A217738, there is no canonical definition to state claims against.
-/

/-! ## A217738.P3390975764391203672

`∩[A023172(n+1), A100992(n+1)]`
-/

namespace A217738.P3390975764391203672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217738.P3390975764391203672

/-! ## A217738.P1804209864887754583

`∩[A100992(n+1), A140971(n+1)]`
-/

namespace A217738.P1804209864887754583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217738.P1804209864887754583

/-! ## A217738.P11717526248502887018

`∩[A023172(n+2), A121874(n+1)]`
-/

namespace A217738.P11717526248502887018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217738.P11717526248502887018

/-! ## A217738.P431660242897207995

`filter[A121874(n+1), A355454(#)]`
-/

namespace A217738.P431660242897207995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A217738.P431660242897207995

/-! ## A217738.P6354015382235847142

`filter[A121874(n+1), A073089(#)]`
-/

namespace A217738.P6354015382235847142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A217738.P6354015382235847142

/-! ## A217738.P343772555339881983

`filter[A121874(n+1), A079979(#)]`
-/

namespace A217738.P343772555339881983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A217738.P343772555339881983

/-! ## A217738.P67609734727134577

`filter[A121874(n+1), A121262(#)]`
-/

namespace A217738.P67609734727134577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A217738.P67609734727134577

/-! ## A217738.P18169972409736911797

`filter[A121874(n+1), A296210(#)]`
-/

namespace A217738.P18169972409736911797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A217738.P18169972409736911797

/-! ## A217738.P14574956863470959865

`filter[A121874(n+1), A319710(#)]`
-/

namespace A217738.P14574956863470959865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A217738.P14574956863470959865

/-! ## A217738.P17008341294374987259

`filter[A121874(n+1), A341996(#)]`
-/

namespace A217738.P17008341294374987259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A217738.P17008341294374987259

/-! ## A217738.P2102632982701961636

`filter[A121874(n+1), A342023(#)]`
-/

namespace A217738.P2102632982701961636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A217738.P2102632982701961636

/-! ## A217738.P9062660931036319861

`filter[A121874(n+2), A093719(#)]`
-/

namespace A217738.P9062660931036319861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A217738.P9062660931036319861

/-! ## A217738.P8953322130678604271

`filter[A121874(n+2), A152822(#)]`
-/

namespace A217738.P8953322130678604271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A217738.P8953322130678604271

/-!
# A217740: Abundant numbers with abundant subscripts.

The programs for A217740, the canonical program `A217740.P8591975626272247519` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217740 has offset 1).

The definition of A217740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217740.P8591975626272247519

`A005101(A005101(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A217740

/-- `A005101(A005101(n+1))` -/
def P8591975626272247519.Spec : Prop :=
  ∀ n, P8591975626272247519.a n = A217740 (n + 1)

theorem P8591975626272247519.correct : P8591975626272247519.Spec := by
  intro n
  simp only [A217740, Nat.add_sub_cancel]

end A217740

/-! ## A217740.P15001404758258995417

`A005101(lt[2*n, A039653(n)])`
-/

namespace A217740.P15001404758258995417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A217740.P15001404758258995417

namespace A217740

/-- `A005101(lt[2*n, A039653(n)])` -/
def P15001404758258995417.Spec : Prop :=
  ∀ n, P15001404758258995417.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P8167092993584029164

`A005101(lt[n, A039653(n)/2])`
-/

namespace A217740.P8167092993584029164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A217740.P8167092993584029164

namespace A217740

/-- `A005101(lt[n, A039653(n)/2])` -/
def P8167092993584029164.Spec : Prop :=
  ∀ n, P8167092993584029164.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P742964296949085553

`A005101(lt[n, A039653(n)-n])`
-/

namespace A217740.P742964296949085553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A217740.P742964296949085553

namespace A217740

/-- `A005101(lt[n, A039653(n)-n])` -/
def P742964296949085553.Spec : Prop :=
  ∀ n, P742964296949085553.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P1211295139306932208

`A224907(A224907(n+1)/2)/2`
-/

namespace A217740.P1211295139306932208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A217740.P1211295139306932208

namespace A217740

/-- `A224907(A224907(n+1)/2)/2` -/
def P1211295139306932208.Spec : Prop :=
  ∀ n, P1211295139306932208.a n = (A217740 (n + 1) : ℚ)

end A217740

/-! ## A217740.P9205980651428655365

`record[A005101(A005101(A133310(n)))]`
-/

namespace A217740.P9205980651428655365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P9205980651428655365

namespace A217740

/-- `record[A005101(A005101(A133310(n)))]` -/
def P9205980651428655365.Spec : Prop :=
  ∀ n, P9205980651428655365.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P5917307127925667164

`record[A005101(A005101(A154958(n)))]`
-/

namespace A217740.P5917307127925667164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P5917307127925667164

namespace A217740

/-- `record[A005101(A005101(A154958(n)))]` -/
def P5917307127925667164.Spec : Prop :=
  ∀ n, P5917307127925667164.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P5570861318087490419

`record[A005101(A005101(A305296(n)))]`
-/

namespace A217740.P5570861318087490419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A305296 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P5570861318087490419

namespace A217740

/-- `record[A005101(A005101(A305296(n)))]` -/
def P5570861318087490419.Spec : Prop :=
  ∀ n, P5570861318087490419.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P3747373952413907079

`record[A005101(A005101(A324346(n)))]`
-/

namespace A217740.P3747373952413907079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A324346 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P3747373952413907079

namespace A217740

/-- `record[A005101(A005101(A324346(n)))]` -/
def P3747373952413907079.Spec : Prop :=
  ∀ n, P3747373952413907079.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P8397802199297504002

`record[A005101(A005101(A324347(n)))]`
-/

namespace A217740.P8397802199297504002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P8397802199297504002

namespace A217740

/-- `record[A005101(A005101(A324347(n)))]` -/
def P8397802199297504002.Spec : Prop :=
  ∀ n, P8397802199297504002.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P10906135799123225718

`record[A005101(A005101(A324390(n)))]`
-/

namespace A217740.P10906135799123225718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A324390 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P10906135799123225718

namespace A217740

/-- `record[A005101(A005101(A324390(n)))]` -/
def P10906135799123225718.Spec : Prop :=
  ∀ n, P10906135799123225718.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P16888277328408196350

`record[A005101(A005101(A328399(n)))]`
-/

namespace A217740.P16888277328408196350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P16888277328408196350

namespace A217740

/-- `record[A005101(A005101(A328399(n)))]` -/
def P16888277328408196350.Spec : Prop :=
  ∀ n, P16888277328408196350.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P12424540901869372434

`A005101(lt[2*n, ∑{d}[n, #]])`
-/

namespace A217740.P12424540901869372434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217740.P12424540901869372434

namespace A217740

/-- `A005101(lt[2*n, ∑{d}[n, #]])` -/
def P12424540901869372434.Spec : Prop :=
  ∀ n, P12424540901869372434.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P16848286315767920564

`A005101(lt[n, ∑{d}[n, #]-n])`
-/

namespace A217740.P16848286315767920564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A217740.P16848286315767920564

namespace A217740

/-- `A005101(lt[n, ∑{d}[n, #]-n])` -/
def P16848286315767920564.Spec : Prop :=
  ∀ n, P16848286315767920564.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P5308404799919477149

`record[A005101(A005101(A109785(n)))]`
-/

namespace A217740.P5308404799919477149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A109785 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P5308404799919477149

namespace A217740

/-- `record[A005101(A005101(A109785(n)))]` -/
def P5308404799919477149.Spec : Prop :=
  ∀ n, P5308404799919477149.a n = A217740 (n + 1)

end A217740

/-! ## A217740.P16149305064518418571

`A224907(A004526(A224907(n+1)))/2`
-/

namespace A217740.P16149305064518418571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (A004526 (A224907 (n + 1)).toNat).toNat : ℚ) / 2

end

end A217740.P16149305064518418571

namespace A217740

/-- `A224907(A004526(A224907(n+1)))/2` -/
def P16149305064518418571.Spec : Prop :=
  ∀ n, P16149305064518418571.a n = (A217740 (n + 1) : ℚ)

end A217740

/-! ## A217740.P18244656863820409209

`record[A005101(A005101(A134478(n)))]`
-/

namespace A217740.P18244656863820409209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217740.P18244656863820409209

namespace A217740

/-- `record[A005101(A005101(A134478(n)))]` -/
def P18244656863820409209.Spec : Prop :=
  ∀ n, P18244656863820409209.a n = A217740 (n + 1)

end A217740

/-!
# A217741: Squarefree nonprimes n with a divisor d such that phi(n) divides n+d.

The programs for A217741, there is no canonical definition to state claims against.
-/

/-! ## A217741.P16142153881941105290

`∩[A152452(n+1), A180477(n+1)]`
-/

namespace A217741.P16142153881941105290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217741.P16142153881941105290

/-! ## A217741.P4307521628048076383

`∩[A152452(n+1), A259227(n+1)]`
-/

namespace A217741.P4307521628048076383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217741.P4307521628048076383

/-! ## A217741.P3405563964292275880

`∩[A152452(n+1), A366186(n+1)]`
-/

namespace A217741.P3405563964292275880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217741.P3405563964292275880

/-! ## A217741.P10309030398703628767

`∩[A152452(n+1), A366187(n+1)]`
-/

namespace A217741.P10309030398703628767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217741.P10309030398703628767

/-! ## A217741.P8555338280065699996

`∩[A152452(n+1), A032517(A032517(n))]`
-/

namespace A217741.P8555338280065699996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032517 (A032517 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217741.P8555338280065699996

/-!
# A217742: Numbers n with the property that if the base-8 representation of n is read backwards, the result is 5*n.

The programs for A217742, there is no canonical definition to state claims against.
-/

/-! ## A217742.P12750580394332248506

`filter[A223090(2*n+1), A179761(#)]`
-/

namespace A217742.P12750580394332248506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223090 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179761 (f1 j).toNat = 1) n)

end

end A217742.P12750580394332248506

/-!
# A217743: Excess of number of odds in the form 4k+1 over number of odds in the form 4k+3 in Collatz trajectory of n.

The programs for A217743, there is no canonical definition to state claims against.
-/

/-! ## A217743.P8783429857545520928

`A005408(A346965(n+1))-A006667(n+1)`
-/

namespace A217743.P8783429857545520928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A346965 (n + 1)).toNat - A006667 (n + 1)

end

end A217743.P8783429857545520928

/-! ## A217743.P9499315614788838778

`A005408(A346965(n+1))-A286380(A000265(n+1))`
-/

namespace A217743.P9499315614788838778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A346965 (n + 1)).toNat - A286380 (A000265 (n + 1)).toNat

end

end A217743.P9499315614788838778

/-! ## A217743.P14837723742617246200

`2*A160541(2*(n+1))-A286380(2*(n+1))`
-/

namespace A217743.P14837723742617246200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160541 (2 * (n + 1)) - A286380 (2 * (n + 1))

end

end A217743.P14837723742617246200

/-! ## A217743.P6633178088096248797

`A093873(n+1)%A260819(3*n+4)`
-/

namespace A217743.P6633178088096248797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093873 (n + 1)) (A260819 (3 * n + 4))

end

end A217743.P6633178088096248797

/-! ## A217743.P17217369797603232334

`A379669(A049302((n+1)/2^val(n+1, 2)))`
-/

namespace A217743.P17217369797603232334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 (A049302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A217743.P17217369797603232334

/-!
# A217744: Numbers whose Collatz trajectory contains equal number of terms of the form 4k+1 and 4k+3.

The programs for A217744, there is no canonical definition to state claims against.
-/

/-! ## A217744.P18328097730092392470

`eq[0, A217743(A028310(n))]`
-/

namespace A217744.P18328097730092392470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217743 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217744.P18328097730092392470

/-! ## A217744.P2866128560094418815

`eq[0, A217743(A000038(n)+n)]`
-/

namespace A217744.P2866128560094418815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217743 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217744.P2866128560094418815

/-! ## A217744.P13704705751286954535

`eq[0, A217743(A008574(n))]`
-/

namespace A217744.P13704705751286954535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217743 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217744.P13704705751286954535

/-! ## A217744.P14999089018717385422

`eq[0, A217743(A022144(n))]`
-/

namespace A217744.P14999089018717385422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217743 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217744.P14999089018717385422

/-! ## A217744.P514706532303087478

`eq[0, A217743(A233583(n+1))]`
-/

namespace A217744.P514706532303087478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217743 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217744.P514706532303087478

/-!
# A217745: Number of regions in the exterior of a regular n-gon with all diagonals drawn.

The programs for A217745, there is no canonical definition to state claims against.
-/

/-! ## A217745.P13440387454830103198

`A217746(n+3)+record[abs(1-n²)]+n`
-/

namespace A217745.P13440387454830103198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217746 (n + 3) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A217745.P13440387454830103198

/-! ## A217745.P17673775367998325925

`A217748(n+3)+A217746(n+3)`
-/

namespace A217745.P17673775367998325925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) + A217746 (n + 3)

end

end A217745.P17673775367998325925

/-! ## A217745.P12136584492165633822

`A265611(2*n)+A217746(n+3)`
-/

namespace A217745.P12136584492165633822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265611 (2 * n) + A217746 (n + 3)

end

end A217745.P12136584492165633822

/-! ## A217745.P7589184339626066915

`A217746(n+3)+∏{d}[n, A001221(#)]+n*(n+3)`
-/

namespace A217745.P7589184339626066915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217746 (n + 3) + (∏ d ∈ Nat.divisors (f1 n), A001221 d + (n * (n + 3) : ℤ))

end

end A217745.P7589184339626066915

/-! ## A217745.P4137660439385331697

`A217746(n+3)+∏{d}[n, A001222(#)]+n*(n+3)`
-/

namespace A217745.P4137660439385331697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217746 (n + 3) + (∏ d ∈ Nat.divisors (f1 n), A001222 d + (n * (n + 3) : ℤ))

end

end A217745.P4137660439385331697

/-!
# A217746: Number of polygonal regions with finite area in the exterior of a regular n-gon with all diagonals drawn.

The programs for A217746, there is no canonical definition to state claims against.
-/

/-! ## A217746.P14725537973371709134

`A217745(n+3)-A217748(n+3)`
-/

namespace A217746.P14725537973371709134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217745 (n + 3) - A217748 (n + 3)

end

end A217746.P14725537973371709134

/-! ## A217746.P7167969032167323761

`A217745(n+3)-A265611(2*n)`
-/

namespace A217746.P7167969032167323761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217745 (n + 3) - A265611 (2 * n)

end

end A217746.P7167969032167323761

/-! ## A217746.P18162565679783627334

`A217745(n+3)-(∏{d}[n, A001221(#)]+n*(n+3))`
-/

namespace A217746.P18162565679783627334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217745 (n + 3) - (∏ d ∈ Nat.divisors (f1 n), A001221 d + (n * (n + 3) : ℤ))

end

end A217746.P18162565679783627334

/-! ## A217746.P3004447504569716828

`A217745(n+3)-(∏{d}[n, A001222(#)]+n*(n+3))`
-/

namespace A217746.P3004447504569716828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217745 (n + 3) - (∏ d ∈ Nat.divisors (f1 n), A001222 d + (n * (n + 3) : ℤ))

end

end A217746.P3004447504569716828

/-!
# A217748: Number of regions with infinite area in the exterior of a regular n-gon with all diagonals drawn.

The programs for A217748, the canonical program `A217748.P16713667141415753622` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217748 has offset 3).

The definition of A217748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217748.P2518793434533756862

`A217745(n+3)-A217746(n+3)`
-/

namespace A217748.P2518793434533756862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217745 (n + 3) - A217746 (n + 3)

end

end A217748.P2518793434533756862

namespace A217748

/-- `A217745(n+3)-A217746(n+3)` -/
def P2518793434533756862.Spec : Prop :=
  ∀ n, P2518793434533756862.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P16713667141415753622

`record[abs(1-n²)]+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217748

/-- `record[abs(1-n²)]+n` -/
def P16713667141415753622.Spec : Prop :=
  ∀ n, P16713667141415753622.a n = A217748 (n + 3)

theorem P16713667141415753622.correct : P16713667141415753622.Spec := by
  intro n
  simp only [A217748, Nat.add_sub_cancel]

end A217748

/-! ## A217748.P4442535929425100004

`floor(3/acot(n))+n²`
-/

namespace A217748.P4442535929425100004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + (n ^ 2 : ℤ)

end

end A217748.P4442535929425100004

namespace A217748

/-- `floor(3/acot(n))+n²` -/
def P4442535929425100004.Spec : Prop :=
  ∀ n, P4442535929425100004.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P10513079115629457901

`floor(2/acot(∑[n]+n))`
-/

namespace A217748.P10513079115629457901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℝ)⌋

end

end A217748.P10513079115629457901

namespace A217748

/-- `floor(2/acot(∑[n]+n))` -/
def P10513079115629457901.Spec : Prop :=
  ∀ n, P10513079115629457901.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P9232968131804796089

`round(2/acot(∑[n]+n))`
-/

namespace A217748.P9232968131804796089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℝ))

end

end A217748.P9232968131804796089

namespace A217748

/-- `round(2/acot(∑[n]+n))` -/
def P9232968131804796089.Spec : Prop :=
  ∀ n, P9232968131804796089.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P7662307533941380780

`floor((n+3)/sinh(acot(n)))`
-/

namespace A217748.P7662307533941380780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌋

end

end A217748.P7662307533941380780

namespace A217748

/-- `floor((n+3)/sinh(acot(n)))` -/
def P7662307533941380780.Spec : Prop :=
  ∀ n, P7662307533941380780.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P11423306942099218520

`floor((n+2)/acot(n)+n)`
-/

namespace A217748.P11423306942099218520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

end

end A217748.P11423306942099218520

namespace A217748

/-- `floor((n+2)/acot(n)+n)` -/
def P11423306942099218520.Spec : Prop :=
  ∀ n, P11423306942099218520.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P16602050686575360932

`floor(acot(n)+n*(n+3))`
-/

namespace A217748.P16602050686575360932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n * (n + 3) : ℝ)⌋

end

end A217748.P16602050686575360932

namespace A217748

/-- `floor(acot(n)+n*(n+3))` -/
def P16602050686575360932.Spec : Prop :=
  ∀ n, P16602050686575360932.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P5423546769779112204

`∑[a(n-1)+2]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A217748.P5423546769779112204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217748.P5423546769779112204

namespace A217748

/-- `∑[a(n-1)+2]` -/
def P5423546769779112204.Spec : Prop :=
  ∀ n, (P5423546769779112204.a n : ℤ) = A217748 (n + 3)

end A217748

/-! ## A217748.P15394679358437916805

`floor(sqrt((n*(n+3))²+1))`
-/

namespace A217748.P15394679358437916805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n * (n + 3)) ^ 2 + 1)

end

end A217748.P15394679358437916805

namespace A217748

/-- `floor(sqrt((n*(n+3))²+1))` -/
def P15394679358437916805.Spec : Prop :=
  ∀ n, (P15394679358437916805.a n : ℤ) = A217748 (n + 3)

end A217748

/-! ## A217748.P17929908487651686896

`record[C(2, n)+n*(n-3)]`
-/

namespace A217748.P17929908487651686896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 n : ℤ) + (n : ℤ) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217748.P17929908487651686896

namespace A217748

/-- `record[C(2, n)+n*(n-3)]` -/
def P17929908487651686896.Spec : Prop :=
  ∀ n, P17929908487651686896.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P9034777269911080647

`∑[floor(atan(n)+2*n+1)]`
-/

namespace A217748.P9034777269911080647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (2 * n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217748.P9034777269911080647

namespace A217748

/-- `∑[floor(atan(n)+2*n+1)]` -/
def P9034777269911080647.Spec : Prop :=
  ∀ n, P9034777269911080647.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P10535097817134513194

`∑[floor(n+1+atan(n)+n)]`
-/

namespace A217748.P10535097817134513194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) + (Real.arctan (n : ℝ) + (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217748.P10535097817134513194

namespace A217748

/-- `∑[floor(n+1+atan(n)+n)]` -/
def P10535097817134513194.Spec : Prop :=
  ∀ n, P10535097817134513194.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P17013724326568193691

`∑[ogf((1+x+x^2-x^3)/(1-2x+x^2))]`
-/

namespace A217748.P17013724326568193691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217748.P17013724326568193691

namespace A217748

/-- `∑[ogf((1+x+x^2-x^3)/(1-2x+x^2))]` -/
def P17013724326568193691.Spec : Prop :=
  ∀ n, P17013724326568193691.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P7843573837111239312

`ogf((1+x+x^2-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A217748.P7843573837111239312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1] [1, -3, 3, -1] n

end

end A217748.P7843573837111239312

namespace A217748

/-- `ogf((1+x+x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P7843573837111239312.Spec : Prop :=
  ∀ n, P7843573837111239312.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P2270675559314662591

`record[a(n-1)+2*n]` with `a(0)=1, a(1)=0`
-/

namespace A217748.P2270675559314662591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217748.P2270675559314662591

namespace A217748

/-- `record[a(n-1)+2*n]` -/
def P2270675559314662591.Spec : Prop :=
  ∀ n, (P2270675559314662591.a n : ℤ) = A217748 (n + 3)

end A217748

/-! ## A217748.P4572847820614603273

`C(2, n+2)+n*(n+3)`
-/

namespace A217748.P4572847820614603273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n * (n + 3)

end

end A217748.P4572847820614603273

namespace A217748

/-- `C(2, n+2)+n*(n+3)` -/
def P4572847820614603273.Spec : Prop :=
  ∀ n, (P4572847820614603273.a n : ℤ) = A217748 (n + 3)

end A217748

/-! ## A217748.P8855034925332579294

`(n+3)*floor(sqrt(a(n-1)))` with `a(0)=1`
-/

namespace A217748.P8855034925332579294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3) * Nat.sqrt (a (n - 1))

end

end A217748.P8855034925332579294

namespace A217748

/-- `(n+3)*floor(sqrt(a(n-1)))` -/
def P8855034925332579294.Spec : Prop :=
  ∀ n, (P8855034925332579294.a n : ℤ) = A217748 (n + 3)

end A217748

/-! ## A217748.P3626472498817055660

`(n+3)*round(sqrt(a(n-1)))` with `a(0)=1`
-/

namespace A217748.P3626472498817055660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3 : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) : ℝ))

end

end A217748.P3626472498817055660

namespace A217748

/-- `(n+3)*round(sqrt(a(n-1)))` -/
def P3626472498817055660.Spec : Prop :=
  ∀ n, P3626472498817055660.a n = A217748 (n + 3)

end A217748

/-! ## A217748.P1891861798865838012

`record[a(n-1)+n+n]` with `a(0)=1, a(1)=0`
-/

namespace A217748.P1891861798865838012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217748.P1891861798865838012

namespace A217748

/-- `record[a(n-1)+n+n]` -/
def P1891861798865838012.Spec : Prop :=
  ∀ n, (P1891861798865838012.a n : ℤ) = A217748 (n + 3)

end A217748

/-!
# A217749: Number of triangular regions in the exterior of a regular n-gon with all diagonals drawn.

The programs for A217749, there is no canonical definition to state claims against.
-/

/-! ## A217749.P5286176034638394121

`(n+3)*A007456(A072876(n+1))`
-/

namespace A217749.P5286176034638394121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007456 (A072876 (n + 1)).toNat

end

end A217749.P5286176034638394121

/-! ## A217749.P7125912570898745790

`A174738(comp[2*(n+1)])*A309093(2*n+3)`
-/

namespace A217749.P7125912570898745790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A309093 (2 * n + 3)

end

end A217749.P7125912570898745790

/-!
# A217750: Number of tetragonal regions in the exterior of a regular n-gon with all diagonals drawn.

The programs for A217750, there is no canonical definition to state claims against.
-/

/-! ## A217750.P17383118012953870847

`(n+3)*A341023(∑[(2-n)²])`
-/

namespace A217750.P17383118012953870847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A341023 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 56)

end

end A217750.P17383118012953870847

/-! ## A217750.P12757098947181848437

`∑[A326682(record[A123545(n+1)])]`
-/

namespace A217750.P12757098947181848437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217750.P12757098947181848437

/-! ## A217750.P11914487109268621481

`Δ[and(A079989(n), A186143(n+1))]`
-/

namespace A217750.P11914487109268621481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079989 n) (A186143 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217750.P11914487109268621481

/-! ## A217750.P2015285251106234244

`(n+3)*A285007(A001748(n+1))`
-/

namespace A217750.P2015285251106234244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A285007 (A001748 (n + 1)).toNat

end

end A217750.P2015285251106234244

/-! ## A217750.P8930874154229820300

`A363728(A284013(n+1)+A003271(n))`
-/

namespace A217750.P8930874154229820300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (A284013 (n + 1) + A003271 n).toNat

end

end A217750.P8930874154229820300

/-!
# A217751: Number of pentagonal regions in the exterior of a regular n-gon with all diagonals drawn.

The programs for A217751, there is no canonical definition to state claims against.
-/

/-! ## A217751.P11973029091937572998

`A002326(A131577(n+3))*A358474(n+1)`
-/

namespace A217751.P11973029091937572998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A131577 (n + 3)).toNat * A358474 (n + 1)

end

end A217751.P11973029091937572998

/-! ## A217751.P7430293556332406488

`A126304(A001591(n))*A291166(2*n+1)`
-/

namespace A217751.P7430293556332406488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (A001591 n).toNat * A291166 (2 * n + 1)

end

end A217751.P7430293556332406488

/-! ## A217751.P12685890217769550553

`comp[A309861(n)]*A309882(n+1)`
-/

namespace A217751.P12685890217769550553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A309882 (n + 1)

end

end A217751.P12685890217769550553

/-! ## A217751.P8346932902049101389

`2*(n+3)*A160380(A322262(n))`
-/

namespace A217751.P8346932902049101389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * A160380 (A322262 n).toNat)

end

end A217751.P8346932902049101389

/-! ## A217751.P16916030997663289894

`A024619(n+1)*A078898(A205578(n+1))`
-/

namespace A217751.P16916030997663289894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) * A078898 (A205578 (n + 1)).toNat

end

end A217751.P16916030997663289894

/-!
# A217755: Numbers n such that ((n^2 + n)/2)^2 + 1 is prime.

The programs for A217755, there is no canonical definition to state claims against.
-/

/-! ## A217755.P16198997913733571486

`floor(sqrt(2*sqrt(A262182(n+1))))`
-/

namespace A217755.P16198997913733571486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * Real.sqrt (A262182 (n + 1) : ℝ))⌋

end

end A217755.P16198997913733571486

/-! ## A217755.P2093083433939038242

`A296339(floor(sqrt(A262182(n+1))))`
-/

namespace A217755.P2093083433939038242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (Int.sqrt (A262182 (n + 1))).toNat

end

end A217755.P2093083433939038242

/-! ## A217755.P15128266895953980800

`A296339(round(sqrt(A262182(n+1))))`
-/

namespace A217755.P15128266895953980800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (SequenceMachineLib.roundAway (Real.sqrt (A262182 (n + 1) : ℝ))).toNat

end

end A217755.P15128266895953980800

/-! ## A217755.P10519748876933427679

`A296339(sqrt(A262182(n+1)-1))`
-/

namespace A217755.P10519748876933427679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (SequenceMachineLib.roundAway (Real.sqrt (A262182 (n + 1) - 1 : ℝ))).toNat

end

end A217755.P10519748876933427679

/-! ## A217755.P16066485786963620970

`eq[A008683(2*(n+1)²)², A249122(A179865(n+1))]`
-/

namespace A217755.P16066485786963620970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217755.P16066485786963620970

/-!
# A217757: Product_{i=0..n} (i! + 1).

The programs for A217757, the canonical program `A217757.P12205280433041278237` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217757 has offset 0).

The definition of A217757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217757.P12205280433041278237

`a(n-1)*(n!+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217757

/-- `a(n-1)*(n!+1)` -/
def P12205280433041278237.Spec : Prop :=
  ∀ n, (P12205280433041278237.a n : ℤ) = A217757 n

theorem P12205280433041278237.correct : P12205280433041278237.Spec := by
  intro n
  simp only [A217757]

end A217757

/-! ## A217757.P7088891773378035585

`∏[1+n!]`
-/

namespace A217757.P7088891773378035585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217757.P7088891773378035585

namespace A217757

/-- `∏[1+n!]` -/
def P7088891773378035585.Spec : Prop :=
  ∀ n, (P7088891773378035585.a n : ℤ) = A217757 n

end A217757

/-! ## A217757.P4399766223210050039

`∏[abs(xor(-1, n!))]`
-/

namespace A217757.P4399766223210050039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (Nat.factorial n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217757.P4399766223210050039

namespace A217757

/-- `∏[abs(xor(-1, n!))]` -/
def P4399766223210050039.Spec : Prop :=
  ∀ n, P4399766223210050039.a n = A217757 n

end A217757

/-! ## A217757.P3477020854676969467

`∏[-xor(-1, n!)]`
-/

namespace A217757.P3477020854676969467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217757.P3477020854676969467

namespace A217757

/-- `∏[-xor(-1, n!)]` -/
def P3477020854676969467.Spec : Prop :=
  ∀ n, P3477020854676969467.a n = A217757 n

end A217757

/-! ## A217757.P16810362753921429049

`2^∑[log2(n!+1)]`
-/

namespace A217757.P16810362753921429049
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217757.P16810362753921429049

namespace A217757

/-- `2^∑[log2(n!+1)]` -/
def P16810362753921429049.Spec : Prop :=
  ∀ n, P16810362753921429049.a n = (A217757 n : ℝ)

end A217757

/-!
# A217758: Triangular numbers of the form k^2 + k - 1.

The programs for A217758, the canonical program `A217758.P12814183908713255576` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217758 has offset 1).

The definition of A217758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217758.P12814183908713255576

`(A075841(n+1)²-5)/4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A217758

/-- `(A075841(n+1)²-5)/4` -/
def P12814183908713255576.Spec : Prop :=
  ∀ n, P12814183908713255576.a n = (A217758 (n + 1) : ℚ)

end A217758

/-! ## A217758.P11692690799338594981

`floor(9*(17+sqrt(288))^(n+1)*(3-sqrt(8))/32)`
-/

namespace A217758.P11692690799338594981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * (17 + Real.sqrt (288 : ℝ)) ^ (n + 1) * ((3 - Real.sqrt (8 : ℝ)) / 32)⌋

end

end A217758.P11692690799338594981

namespace A217758

/-- `floor(9*(17+sqrt(288))^(n+1)*(3-sqrt(8))/32)` -/
def P11692690799338594981.Spec : Prop :=
  ∀ n, P11692690799338594981.a n = A217758 (n + 1)

end A217758

/-! ## A217758.P14070192711787277553

`9*A029549(n)+1`
-/

namespace A217758.P14070192711787277553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A029549 n + 1

end

end A217758.P14070192711787277553

namespace A217758

/-- `9*A029549(n)+1` -/
def P14070192711787277553.Spec : Prop :=
  ∀ n, P14070192711787277553.a n = A217758 (n + 1)

end A217758

/-! ## A217758.P16380839753406711873

`18*A075528(n)+1`
-/

namespace A217758.P16380839753406711873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A075528 n + 1

end

end A217758.P16380839753406711873

namespace A217758

/-- `18*A075528(n)+1` -/
def P16380839753406711873.Spec : Prop :=
  ∀ n, P16380839753406711873.a n = A217758 (n + 1)

end A217758

/-! ## A217758.P6260700172629871163

`2*A097579(n+1)-1`
-/

namespace A217758.P6260700172629871163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097579 (n + 1) - 1

end

end A217758.P6260700172629871163

namespace A217758

/-- `2*A097579(n+1)-1` -/
def P6260700172629871163.Spec : Prop :=
  ∀ n, P6260700172629871163.a n = A217758 (n + 1)

end A217758

/-! ## A217758.P17050647248187544118

`3*A107118(n+1)-2`
-/

namespace A217758.P17050647248187544118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A107118 (n + 1) - 2

end

end A217758.P17050647248187544118

namespace A217758

/-- `3*A107118(n+1)-2` -/
def P17050647248187544118.Spec : Prop :=
  ∀ n, P17050647248187544118.a n = A217758 (n + 1)

end A217758

/-! ## A217758.P4587591850373797211

`∑[A276602(2*n+1)]+1`
-/

namespace A217758.P4587591850373797211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276602 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A217758.P4587591850373797211

namespace A217758

/-- `∑[A276602(2*n+1)]+1` -/
def P4587591850373797211.Spec : Prop :=
  ∀ n, P4587591850373797211.a n = A217758 (n + 1)

end A217758

/-! ## A217758.P9320007406247406840

`3*∑[A106328(2*n+1)]+1`
-/

namespace A217758.P9320007406247406840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A217758.P9320007406247406840

namespace A217758

/-- `3*∑[A106328(2*n+1)]+1` -/
def P9320007406247406840.Spec : Prop :=
  ∀ n, P9320007406247406840.a n = A217758 (n + 1)

end A217758

/-! ## A217758.P3066467442632465619

`36*(A001653(n+1)²-1)/16+1`
-/

namespace A217758.P3066467442632465619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  36 * ((A001653 (n + 1) ^ 2 - 1 : ℚ) / 16) + 1

end

end A217758.P3066467442632465619

namespace A217758

/-- `36*(A001653(n+1)²-1)/16+1` -/
def P3066467442632465619.Spec : Prop :=
  ∀ n, P3066467442632465619.a n = (A217758 (n + 1) : ℚ)

end A217758

/-! ## A217758.P9607195573764435649

`A029549(n)+A002315(n)²`
-/

namespace A217758.P9607195573764435649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029549 n + A002315 n ^ 2

end

end A217758.P9607195573764435649

namespace A217758

/-- `A029549(n)+A002315(n)²` -/
def P9607195573764435649.Spec : Prop :=
  ∀ n, P9607195573764435649.a n = A217758 (n + 1)

end A217758

/-!
# A217760: Cumulative counting sequence: (adjective-before-noun) pairs with first term 0; see Comments.

The programs for A217760, there is no canonical definition to state claims against.
-/

/-! ## A217760.P5103955989765564883

`A055168(A014681(n)+1)`
-/

namespace A217760.P5103955989765564883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055168 (A014681 n + 1).toNat

end

end A217760.P5103955989765564883

/-! ## A217760.P9148811083080226841

`A055168(A065190(n+1))`
-/

namespace A217760.P9148811083080226841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055168 (A065190 (n + 1)).toNat

end

end A217760.P9148811083080226841

/-! ## A217760.P5776267356681888153

`A055168(A062157(n)+1+n)`
-/

namespace A217760.P5776267356681888153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055168 (A062157 n + 1 + (n : ℤ)).toNat

end

end A217760.P5776267356681888153

/-! ## A217760.P14069211138618222858

`A055168(xor(1, A057427(n)+n))`
-/

namespace A217760.P14069211138618222858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055168 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

end

end A217760.P14069211138618222858

/-! ## A217760.P15504991168963200060

`A055168(Δ[A063196(n+1)]+n)`
-/

namespace A217760.P15504991168963200060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055168 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A217760.P15504991168963200060

/-! ## A217760.P7524146392076273450

`A055168(xor(1, A008624(A008574(n))))`
-/

namespace A217760.P7524146392076273450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055168 (Int.xor 1 (A008624 (A008574 n).toNat)).toNat

end

end A217760.P7524146392076273450

/-!
# A217761: Numbers whose square has a square number of decimal digits.

The programs for A217761, there is no canonical definition to state claims against.
-/

/-! ## A217761.P2122112568098706690

`A326529(A067095(n+1))+n`
-/

namespace A217761.P2122112568098706690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326529 (A067095 (n + 1)).toNat + (n : ℤ)

end

end A217761.P2122112568098706690

/-!
# A217762: Square array T, read by antidiagonals: T(n,k) = F(n) + 2*F(k) where F(n) is the n-th Fibonacci number.

The programs for A217762, the canonical program `A217762.P8328924004739686564` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217762 has offset 0).

The definition of A217762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217762.P8328924004739686564

`2*A094570(n)-A141169(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A217762

/-- `2*A094570(n)-A141169(n)` -/
def P8328924004739686564.Spec : Prop :=
  ∀ n, P8328924004739686564.a n = A217762 n

theorem P8328924004739686564.correct : P8328924004739686564.Spec := by
  intro n
  simp only [A217762]

end A217762

/-! ## A217762.P2111384121906987747

`A094570(n)+A000045(A025581(n))`
-/

namespace A217762.P2111384121906987747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n + A000045 (A025581 n).toNat

end

end A217762.P2111384121906987747

namespace A217762

/-- `A094570(n)+A000045(A025581(n))` -/
def P2111384121906987747.Spec : Prop :=
  ∀ n, P2111384121906987747.a n = A217762 n

end A217762

/-! ## A217762.P5384875082358663963

`A103609(A099375(n))+A094570(n)`
-/

namespace A217762.P5384875082358663963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A099375 n).toNat + A094570 n

end

end A217762.P5384875082358663963

namespace A217762

/-- `A103609(A099375(n))+A094570(n)` -/
def P5384875082358663963.Spec : Prop :=
  ∀ n, P5384875082358663963.a n = A217762 n

end A217762

/-! ## A217762.P2413554144771711542

`A141169(n)+2*A000045(A025581(n))`
-/

namespace A217762.P2413554144771711542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + 2 * A000045 (A025581 n).toNat

end

end A217762.P2413554144771711542

namespace A217762

/-- `A141169(n)+2*A000045(A025581(n))` -/
def P2413554144771711542.Spec : Prop :=
  ∀ n, P2413554144771711542.a n = A217762 n

end A217762

/-! ## A217762.P4201935183510531411

`A094570(n)+A000045(A004736(n+1)-1)`
-/

namespace A217762.P4201935183510531411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n + A000045 (A004736 (n + 1) - 1).toNat

end

end A217762.P4201935183510531411

namespace A217762

/-- `A094570(n)+A000045(A004736(n+1)-1)` -/
def P4201935183510531411.Spec : Prop :=
  ∀ n, P4201935183510531411.a n = A217762 n

end A217762

/-! ## A217762.P15716520383265876982

`A005843(A094570(n))-A141169(n)`
-/

namespace A217762.P15716520383265876982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A094570 n).toNat - A141169 n

end

end A217762.P15716520383265876982

namespace A217762

/-- `A005843(A094570(n))-A141169(n)` -/
def P15716520383265876982.Spec : Prop :=
  ∀ n, P15716520383265876982.a n = A217762 n

end A217762

/-! ## A217762.P10547342530183168877

`A318471(A130321(n))+A094570(n)`
-/

namespace A217762.P10547342530183168877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318471 (A130321 n).toNat + A094570 n

end

end A217762.P10547342530183168877

namespace A217762

/-- `A318471(A130321(n))+A094570(n)` -/
def P10547342530183168877.Spec : Prop :=
  ∀ n, P10547342530183168877.a n = A217762 n

end A217762

/-!
# A217763: Triangular array read by rows: T(n,k) is the number of simple labeled graphs on n nodes with unicyclic components having exactly k nodes with degree 1; n>=3, 0<=k<=n-3.

The programs for A217763, there is no canonical definition to state claims against.
-/

/-! ## A217763.P16844967398534905251

`A281230(∑[A099712(n)])`
-/

namespace A217763.P16844967398534905251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217763.P16844967398534905251

/-! ## A217763.P7781765556921410992

`∑{d}[A316774(A007566(n)), #]`
-/

namespace A217763.P7781765556921410992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 (A007566 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A217763.P7781765556921410992

/-!
# A217765: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >=3 or if k-n >= 6, T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = T(0,5) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A217765, there is no canonical definition to state claims against.
-/

/-! ## A217765.P5336360923630900327

`A321379(A037165(n+1))+A216232(n)`
-/

namespace A217765.P5336360923630900327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (A037165 (n + 1)).toNat + A216232 n

end

end A217765.P5336360923630900327

/-! ## A217765.P15868447237004102858

`A216232(n%A179218(3*n+4))`
-/

namespace A217765.P15868447237004102858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216232 (Int.tmod (n : ℤ) (A179218 (3 * n + 4))).toNat

end

end A217765.P15868447237004102858

/-! ## A217765.P9821779387394084844

`A216232(n)+A025466(A104220(n))`
-/

namespace A217765.P9821779387394084844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216232 n + A025466 (A104220 n).toNat

end

end A217765.P9821779387394084844

/-! ## A217765.P6739770270186970913

`A216232(n)+A111025(A250120(n))`
-/

namespace A217765.P6739770270186970913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216232 n + A111025 (A250120 n).toNat

end

end A217765.P6739770270186970913

/-! ## A217765.P6545164607861541960

`or(A055641(A000043(n+1)), A216232(n))`
-/

namespace A217765.P6545164607861541960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A000043 (n + 1)).toNat) (A216232 n)

end

end A217765.P6545164607861541960

/-!
# A217768: Smallest number k > 0 for which sigma(k - n) = sigma(k + n).

The programs for A217768, there is no canonical definition to state claims against.
-/

/-! ## A217768.P7854420334608795414

`A217704(n+1)%A365258(n+1)`
-/

namespace A217768.P7854420334608795414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217704 (n + 1)) (A365258 (n + 1))

end

end A217768.P7854420334608795414

/-! ## A217768.P14555157051824193384

`A380439(A063834(n))+A217704(n+1)`
-/

namespace A217768.P14555157051824193384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 (A063834 n).toNat + A217704 (n + 1)

end

end A217768.P14555157051824193384

/-! ## A217768.P10310896701182453246

`A217704(n+1)%A217742(A064318(n))`
-/

namespace A217768.P10310896701182453246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217704 (n + 1)) (A217742 (A064318 n).toNat)

end

end A217768.P10310896701182453246

/-! ## A217768.P14197026187143810848

`A217704(n+1)+A076142(A094605(2*(n+1)))`
-/

namespace A217768.P14197026187143810848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217704 (n + 1) + A076142 (A094605 (2 * (n + 1))).toNat

end

end A217768.P14197026187143810848

/-! ## A217768.P1030811913696354971

`A217704(n+1)*A249739(A217691(3*n+2))`
-/

namespace A217768.P1030811913696354971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217704 (n + 1) * A249739 (A217691 (3 * n + 2)).toNat

end

end A217768.P1030811913696354971

/-!
# A217769: Least number k > n such that sigma(k) = 2*(k-n), or 0 if no such k exists.

The programs for A217769, there is no canonical definition to state claims against.
-/

/-! ## A217769.P18379057568956477109

`A082730(A005843(n))/A007318(∑[n])`
-/

namespace A217769.P18379057568956477109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082730 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A217769.P18379057568956477109

/-! ## A217769.P10354028924498088229

`A082730(A033880(A082731(2*n)))`
-/

namespace A217769.P10354028924498088229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082730 (A033880 (A082731 (2 * n)).toNat).toNat

end

end A217769.P10354028924498088229

/-!
# A217770: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >=4 or if k-n >= 6, T(3,0) = T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = T(0,5) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A217770, there is no canonical definition to state claims against.
-/

/-! ## A217770.P3107775771306844966

`A216236(n)+A194771(n+1)%A054030(n+1)`
-/

namespace A217770.P3107775771306844966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216236 n + Int.tmod (A194771 (n + 1)) (A054030 (n + 1))

end

end A217770.P3107775771306844966

/-! ## A217770.P5579072267292330978

`A321379(A037165(n+1))+A216236(n)`
-/

namespace A217770.P5579072267292330978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (A037165 (n + 1)).toNat + A216236 n

end

end A217770.P5579072267292330978

/-! ## A217770.P7436639204288607140

`A225181(A241356(n+1))+A014473(n)`
-/

namespace A217770.P7436639204288607140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225181 (A241356 (n + 1)).toNat + A014473 n

end

end A217770.P7436639204288607140

/-! ## A217770.P17346826458130839528

`A216236(n)+A025466(A104220(n))`
-/

namespace A217770.P17346826458130839528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216236 n + A025466 (A104220 n).toNat

end

end A217770.P17346826458130839528

/-! ## A217770.P17137025411754351076

`A007318(n)-A205988(A345916(3*n+2))`
-/

namespace A217770.P17137025411754351076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A205988 (A345916 (3 * n + 2)).toNat

end

end A217770.P17137025411754351076

/-!
# A217771: Expansion of (phi(-x) / phi(-x^3))^2 in powers of x where phi() is a Ramanujan theta function.

The programs for A217771, there is no canonical definition to state claims against.
-/

/-! ## A217771.P1193188224661197646

`(1-4/2)^n*A261321(n)`
-/

namespace A217771.P1193188224661197646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ n * (A261321 n : ℚ)

end

end A217771.P1193188224661197646

/-! ## A217771.P3474191730077652898

`A132954(n)*A262930(n)`
-/

namespace A217771.P3474191730077652898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A262930 n

end

end A217771.P3474191730077652898

/-! ## A217771.P15786673704921657390

`A261321(n)/A033999(n)`
-/

namespace A217771.P15786673704921657390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 n : ℚ) / (A033999 n : ℚ)

end

end A217771.P15786673704921657390

/-!
# A217772: a(n) = ((p+1)*(3p)!/((2p-1)!*(p+1)!*2p) - 3)/(3p^3), where p is the n-th prime.

The programs for A217772, there is no canonical definition to state claims against.
-/

/-! ## A217772.P5646652302230326191

`A268618(A000040(n+2))/6`
-/

namespace A217772.P5646652302230326191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268618 (A000040 (n + 2)).toNat : ℚ) / 6

end

end A217772.P5646652302230326191

/-! ## A217772.P7908472842228938412

`record[A268618(A006530(n+1))/6]`
-/

namespace A217772.P7908472842228938412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268618 (A006530 (n + 1)).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217772.P7908472842228938412

/-!
# A217773: Numbers n such that tau(n) = tau(n+1) and phi(n) = phi(n+1).

The programs for A217773, there is no canonical definition to state claims against.
-/

/-! ## A217773.P10559957104034589473

`∩[A063069(n+1), A259496(n+1)]`
-/

namespace A217773.P10559957104034589473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217773.P10559957104034589473

/-! ## A217773.P15298501647145470214

`∩[A001274(n+1), A259496(n+1)]`
-/

namespace A217773.P15298501647145470214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217773.P15298501647145470214

/-! ## A217773.P13685327931730537655

`∩[A001274(n+1), A063069(n+1)]`
-/

namespace A217773.P13685327931730537655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217773.P13685327931730537655

/-! ## A217773.P18309846240771244977

`A063069(∑[gcd(2, A130000(2*(n+2)))])`
-/

namespace A217773.P18309846240771244977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A130000 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217773.P18309846240771244977

/-!
# A217775: a(n) = n*(n+1) + (n+2)*(n+3) + (n+4)*(n+5).

The programs for A217775, the canonical program `A217775.P11419149230376848677` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217775 has offset 0).

The definition of A217775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)+(n+2)*(n+3)+(n+4)*(n+5)` (program `A217775.P11419149230376848677`, by `A217775.P11419149230376848677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217775.P3339760723512277743

`3*n²+15*n+26`
-/

namespace A217775.P3339760723512277743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 15 * n + 26

end

end A217775.P3339760723512277743

namespace A217775

/-- `3*n²+15*n+26` -/
def P3339760723512277743.Spec : Prop :=
  ∀ n, (P3339760723512277743.a n : ℤ) = A217775 n

theorem P3339760723512277743.correct : P3339760723512277743.Spec := by
  intro n
  simp only [A217775, Nat.add_sub_cancel, A217775.P3339760723512277743.a, A217775.P11419149230376848677.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A217775

/-! ## A217775.P11419149230376848677

`n*(n+1)+(n+2)*(n+3)+(n+4)*(n+5)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217775

/-- `n*(n+1)+(n+2)*(n+3)+(n+4)*(n+5)` -/
def P11419149230376848677.Spec : Prop :=
  ∀ n, (P11419149230376848677.a n : ℤ) = A217775 n

theorem P11419149230376848677.correct : P11419149230376848677.Spec := by
  intro n
  simp only [A217775]

end A217775

/-! ## A217775.P8924877375439274938

`∑[a(n-1)+6]` with `a(0)=26, a(1)=18`
-/

namespace A217775.P8924877375439274938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [26, 18] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217775.P8924877375439274938

namespace A217775

/-- `∑[a(n-1)+6]` -/
def P8924877375439274938.Spec : Prop :=
  ∀ n, (P8924877375439274938.a n : ℤ) = A217775 n

end A217775

/-! ## A217775.P7163372440621567652

`(A027865(n)-3)/2`
-/

namespace A217775.P7163372440621567652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027865 n - 3 : ℚ) / 2

end

end A217775.P7163372440621567652

namespace A217775

/-- `(A027865(n)-3)/2` -/
def P7163372440621567652.Spec : Prop :=
  ∀ n, P7163372440621567652.a n = (A217775 n : ℚ)

end A217775

/-! ## A217775.P17785843564136912418

`2*(3*A000217(n+2)+4)`
-/

namespace A217775.P17785843564136912418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A000217 (n + 2) + 4)

end

end A217775.P17785843564136912418

namespace A217775

/-- `2*(3*A000217(n+2)+4)` -/
def P17785843564136912418.Spec : Prop :=
  ∀ n, P17785843564136912418.a n = A217775 n

end A217775

/-! ## A217775.P10629020094837449365

`2*(4-3*∑[n-(A004277(n)+2)])`
-/

namespace A217775.P10629020094837449365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A004277 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 - 3 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A217775.P10629020094837449365

namespace A217775

/-- `2*(4-3*∑[n-(A004277(n)+2)])` -/
def P10629020094837449365.Spec : Prop :=
  ∀ n, P10629020094837449365.a n = A217775 n

end A217775

/-! ## A217775.P1263818261715044221

`2*(Δ[A127873(n+1)]+2)`
-/

namespace A217775.P1263818261715044221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 2)

end

end A217775.P1263818261715044221

namespace A217775

/-- `2*(Δ[A127873(n+1)]+2)` -/
def P1263818261715044221.Spec : Prop :=
  ∀ n, P1263818261715044221.a n = A217775 n

end A217775

/-! ## A217775.P15845949855067790421

`2*(A059845(n+1)-(n-6))`
-/

namespace A217775.P15845949855067790421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059845 (n + 1) - ((n : ℤ) - 6))

end

end A217775.P15845949855067790421

namespace A217775

/-- `2*(A059845(n+1)-(n-6))` -/
def P15845949855067790421.Spec : Prop :=
  ∀ n, P15845949855067790421.a n = A217775 n

end A217775

/-! ## A217775.P2418656565509393852

`(A027578(n+1)+n²-3)/2`
-/

namespace A217775.P2418656565509393852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027578 (n + 1) + (n ^ 2 : ℤ) - 3 : ℚ) / 2

end

end A217775.P2418656565509393852

namespace A217775

/-- `(A027578(n+1)+n²-3)/2` -/
def P2418656565509393852.Spec : Prop :=
  ∀ n, P2418656565509393852.a n = (A217775 n : ℚ)

end A217775

/-! ## A217775.P7305928018049270355

`2*(A167499(n+1)+A028387(n+1))`
-/

namespace A217775.P7305928018049270355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A167499 (n + 1) + A028387 (n + 1))

end

end A217775.P7305928018049270355

namespace A217775

/-- `2*(A167499(n+1)+A028387(n+1))` -/
def P7305928018049270355.Spec : Prop :=
  ∀ n, P7305928018049270355.a n = A217775 n

end A217775

/-! ## A217775.P13307171864155897496

`(xor(1, 6*A027688(n+2))-3)/2`
-/

namespace A217775.P13307171864155897496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (6 * A027688 (n + 2)) - 3 : ℚ) / 2

end

end A217775.P13307171864155897496

namespace A217775

/-- `(xor(1, 6*A027688(n+2))-3)/2` -/
def P13307171864155897496.Spec : Prop :=
  ∀ n, P13307171864155897496.a n = (A217775 n : ℚ)

end A217775

/-! ## A217775.P4381402795681369550

`Δ[A184628(n+2)+A017029(n)]`
-/

namespace A217775.P4381402795681369550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 2) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217775.P4381402795681369550

namespace A217775

/-- `Δ[A184628(n+2)+A017029(n)]` -/
def P4381402795681369550.Spec : Prop :=
  ∀ n, P4381402795681369550.a n = A217775 n

end A217775

/-! ## A217775.P1341491159901878091

`2*A008752(3*(n+3))`
-/

namespace A217775.P1341491159901878091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008752 (3 * (n + 3))

end

end A217775.P1341491159901878091

namespace A217775

/-- `2*A008752(3*(n+3))` -/
def P1341491159901878091.Spec : Prop :=
  ∀ n, P1341491159901878091.a n = A217775 n

end A217775

/-! ## A217775.P4075908743602483613

`A300451(n+3)/2^n`
-/

namespace A217775.P4075908743602483613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300451 (n + 3) : ℚ) / (2 ^ n : ℚ)

end

end A217775.P4075908743602483613

namespace A217775

/-- `A300451(n+3)/2^n` -/
def P4075908743602483613.Spec : Prop :=
  ∀ n, P4075908743602483613.a n = (A217775 n : ℚ)

end A217775

/-! ## A217775.P13169167821769756672

`A016933(∑[n+2]+2)`
-/

namespace A217775.P13169167821769756672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217775.P13169167821769756672

namespace A217775

/-- `A016933(∑[n+2]+2)` -/
def P13169167821769756672.Spec : Prop :=
  ∀ n, P13169167821769756672.a n = A217775 n

end A217775

/-! ## A217775.P12622035072093103713

`2*A112414(∑[n+2])`
-/

namespace A217775.P12622035072093103713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217775.P12622035072093103713

namespace A217775

/-- `2*A112414(∑[n+2])` -/
def P12622035072093103713.Spec : Prop :=
  ∀ n, P12622035072093103713.a n = A217775 n

end A217775

/-! ## A217775.P6868355215252037414

`A140164(∑[n+2]+5)`
-/

namespace A217775.P6868355215252037414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140164 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A217775.P6868355215252037414

namespace A217775

/-- `A140164(∑[n+2]+5)` -/
def P6868355215252037414.Spec : Prop :=
  ∀ n, P6868355215252037414.a n = A217775 n

end A217775

/-! ## A217775.P762979377491292834

`2*A016777(∑[n+2]+2)`
-/

namespace A217775.P762979377491292834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016777 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217775.P762979377491292834

namespace A217775

/-- `2*A016777(∑[n+2]+2)` -/
def P762979377491292834.Spec : Prop :=
  ∀ n, P762979377491292834.a n = A217775 n

end A217775

/-! ## A217775.P12839675798872920353

`2*A086822(A167614(n+1)-2)`
-/

namespace A217775.P12839675798872920353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086822 (A167614 (n + 1) - 2).toNat

end

end A217775.P12839675798872920353

namespace A217775

/-- `2*A086822(A167614(n+1)-2)` -/
def P12839675798872920353.Spec : Prop :=
  ∀ n, P12839675798872920353.a n = A217775 n

end A217775

/-!
# A217776: a(n) = n*(n+1) + (n+2)*(n+3) + (n+4)*(n+5) + (n+6)*(n+7).

The programs for A217776, the canonical program `A217776.P3676255171584136823` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217776 has offset 0).

The definition of A217776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)+(n+2)*(n+3)+(n+4)*(n+5)+(n+6)*(n+7)` (program `A217776.P3676255171584136823`, by `A217776.P3676255171584136823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217776.P3586559484476107997

`(2*n+7)²+19`
-/

namespace A217776.P3586559484476107997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 7) ^ 2 + 19

end

end A217776.P3586559484476107997

namespace A217776

/-- `(2*n+7)²+19` -/
def P3586559484476107997.Spec : Prop :=
  ∀ n, (P3586559484476107997.a n : ℤ) = A217776 n

theorem P3586559484476107997.correct : P3586559484476107997.Spec := by
  intro n
  simp only [A217776, Nat.add_sub_cancel, A217776.P3586559484476107997.a, A217776.P3676255171584136823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A217776

/-! ## A217776.P3676255171584136823

`n*(n+1)+(n+2)*(n+3)+(n+4)*(n+5)+(n+6)*(n+7)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217776

/-- `n*(n+1)+(n+2)*(n+3)+(n+4)*(n+5)+(n+6)*(n+7)` -/
def P3676255171584136823.Spec : Prop :=
  ∀ n, (P3676255171584136823.a n : ℤ) = A217776 n

theorem P3676255171584136823.correct : P3676255171584136823.Spec := by
  intro n
  simp only [A217776]

end A217776

/-! ## A217776.P7686871643892146583

`4*A027690(n+3)`
-/

namespace A217776.P7686871643892146583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A027690 (n + 3)

end

end A217776.P7686871643892146583

namespace A217776

/-- `4*A027690(n+3)` -/
def P7686871643892146583.Spec : Prop :=
  ∀ n, P7686871643892146583.a n = A217776 n

end A217776

/-! ## A217776.P236438646561740553

`lcm(4, (n+4)²-n+1)`
-/

namespace A217776.P236438646561740553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (((n + 4) ^ 2 : ℤ) - (n : ℤ) + 1)

end

end A217776.P236438646561740553

namespace A217776

/-- `lcm(4, (n+4)²-n+1)` -/
def P236438646561740553.Spec : Prop :=
  ∀ n, (P236438646561740553.a n : ℤ) = A217776 n

end A217776

/-! ## A217776.P2903661528257279016

`4*(2*(A000217(n+3)+2)+1)`
-/

namespace A217776.P2903661528257279016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * (A000217 (n + 3) + 2) + 1)

end

end A217776.P2903661528257279016

namespace A217776

/-- `4*(2*(A000217(n+3)+2)+1)` -/
def P2903661528257279016.Spec : Prop :=
  ∀ n, P2903661528257279016.a n = A217776 n

end A217776

/-! ## A217776.P10270112382739656436

`4*(A028557(n+1)+11)`
-/

namespace A217776.P10270112382739656436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A028557 (n + 1) + 11)

end

end A217776.P10270112382739656436

namespace A217776

/-- `4*(A028557(n+1)+11)` -/
def P10270112382739656436.Spec : Prop :=
  ∀ n, P10270112382739656436.a n = A217776 n

end A217776

/-! ## A217776.P11290093055725188223

`2*(A001844(n+3)+9)`
-/

namespace A217776.P11290093055725188223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001844 (n + 3) + 9)

end

end A217776.P11290093055725188223

namespace A217776

/-- `2*(A001844(n+3)+9)` -/
def P11290093055725188223.Spec : Prop :=
  ∀ n, P11290093055725188223.a n = A217776 n

end A217776

/-! ## A217776.P5193508267622483158

`8*((A005563(n+3)-n)/2+1)`
-/

namespace A217776.P5193508267622483158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A005563 (n + 3) - (n : ℤ) : ℚ) / 2 + 1)

end

end A217776.P5193508267622483158

namespace A217776

/-- `8*((A005563(n+3)-n)/2+1)` -/
def P5193508267622483158.Spec : Prop :=
  ∀ n, P5193508267622483158.a n = (A217776 n : ℚ)

end A217776

/-! ## A217776.P6121791159508967870

`Δ[A124388(n)+A023545(2*(n+1))]`
-/

namespace A217776.P6121791159508967870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A023545 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217776.P6121791159508967870

namespace A217776

/-- `Δ[A124388(n)+A023545(2*(n+1))]` -/
def P6121791159508967870.Spec : Prop :=
  ∀ n, P6121791159508967870.a n = A217776 n

end A217776

/-! ## A217776.P1662386893950041778

`Δ[A154266(n)+A023545(2*(n+1))]`
-/

namespace A217776.P1662386893950041778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A023545 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217776.P1662386893950041778

namespace A217776

/-- `Δ[A154266(n)+A023545(2*(n+1))]` -/
def P1662386893950041778.Spec : Prop :=
  ∀ n, P1662386893950041778.a n = A217776 n

end A217776

/-! ## A217776.P17586746820865429474

`Δ[A264443(2*n+1)+A154266(n)]`
-/

namespace A217776.P17586746820865429474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (2 * n + 1) + A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217776.P17586746820865429474

namespace A217776

/-- `Δ[A264443(2*n+1)+A154266(n)]` -/
def P17586746820865429474.Spec : Prop :=
  ∀ n, P17586746820865429474.a n = A217776 n

end A217776

/-! ## A217776.P8027656150360567904

`2*(A166136(A020739(n))-n)`
-/

namespace A217776.P8027656150360567904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166136 (A020739 n).toNat - (n : ℤ))

end

end A217776.P8027656150360567904

namespace A217776

/-- `2*(A166136(A020739(n))-n)` -/
def P8027656150360567904.Spec : Prop :=
  ∀ n, P8027656150360567904.a n = A217776 n

end A217776

/-! ## A217776.P3744791996408642048

`A241849(2*n+7)`
-/

namespace A217776.P3744791996408642048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241849 (2 * n + 7)

end

end A217776.P3744791996408642048

namespace A217776

/-- `A241849(2*n+7)` -/
def P3744791996408642048.Spec : Prop :=
  ∀ n, P3744791996408642048.a n = A217776 n

end A217776

/-! ## A217776.P5675666240593851518

`or(4, A241849(A020742(n)))`
-/

namespace A217776.P5675666240593851518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A241849 (A020742 n).toNat)

end

end A217776.P5675666240593851518

namespace A217776

/-- `or(4, A241849(A020742(n)))` -/
def P5675666240593851518.Spec : Prop :=
  ∀ n, P5675666240593851518.a n = A217776 n

end A217776

/-! ## A217776.P13320037324233343182

`2*A016825(A340266(n+2))`
-/

namespace A217776.P13320037324233343182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (A340266 (n + 2)).toNat

end

end A217776.P13320037324233343182

namespace A217776

/-- `2*A016825(A340266(n+2))` -/
def P13320037324233343182.Spec : Prop :=
  ∀ n, P13320037324233343182.a n = A217776 n

end A217776

/-! ## A217776.P14621632701417144664

`A017113(∑[n+3]+5)`
-/

namespace A217776.P14621632701417144664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A217776.P14621632701417144664

namespace A217776

/-- `A017113(∑[n+3]+5)` -/
def P14621632701417144664.Spec : Prop :=
  ∀ n, P14621632701417144664.a n = A217776 n

end A217776

/-! ## A217776.P5624493135569336503

`A281813(∑[n+3]+5)`
-/

namespace A217776.P5624493135569336503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A217776.P5624493135569336503

namespace A217776

/-- `A281813(∑[n+3]+5)` -/
def P5624493135569336503.Spec : Prop :=
  ∀ n, P5624493135569336503.a n = A217776 n

end A217776

/-! ## A217776.P18404894574065994157

`A086570(A167614(n+2))`
-/

namespace A217776.P18404894574065994157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 (A167614 (n + 2)).toNat

end

end A217776.P18404894574065994157

namespace A217776

/-- `A086570(A167614(n+2))` -/
def P18404894574065994157.Spec : Prop :=
  ∀ n, P18404894574065994157.a n = A217776 n

end A217776

/-! ## A217776.P7481493976319312356

`A086570(A000096(n+2)+4)`
-/

namespace A217776.P7481493976319312356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 (A000096 (n + 2) + 4).toNat

end

end A217776.P7481493976319312356

namespace A217776

/-- `A086570(A000096(n+2)+4)` -/
def P7481493976319312356.Spec : Prop :=
  ∀ n, P7481493976319312356.a n = A217776 n

end A217776

/-!
# A217777: Expansion of (1+x)*(1+2*x)*(1-x)/(1-5*x^2+5*x^4).

The programs for A217777, the canonical program `A217777.P16376765819323818543` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217777 has offset 0).

The definition of A217777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2-2x^3)/(1-5x^2+5x^4))` (program `A217777.P16376765819323818543`, by `A217777.P16376765819323818543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217777.P16376765819323818543

`ogf((1+2x-x^2-2x^3)/(1-5x^2+5x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217777

/-- `ogf((1+2x-x^2-2x^3)/(1-5x^2+5x^4))` -/
def P16376765819323818543.Spec : Prop :=
  ∀ n, P16376765819323818543.a n = A217777 n

theorem P16376765819323818543.correct : P16376765819323818543.Spec := by
  intro n
  simp only [A217777]

end A217777

/-! ## A217777.P18007697663971925982

`5*a(n-2)-5*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A217777.P18007697663971925982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  5 * a (n - 2) - 5 * a (n - 4)

end

end A217777.P18007697663971925982

namespace A217777

/-- `5*a(n-2)-5*a(n-4)` -/
def P18007697663971925982.Spec : Prop :=
  ∀ n, P18007697663971925982.a n = A217777 n

end A217777

/-! ## A217777.P8243023872442655476

`A216212(n+1)/2`
-/

namespace A217777.P8243023872442655476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216212 (n + 1) : ℚ) / 2

end

end A217777.P8243023872442655476

namespace A217777

/-- `A216212(n+1)/2` -/
def P8243023872442655476.Spec : Prop :=
  ∀ n, P8243023872442655476.a n = (A217777 n : ℚ)

end A217777

/-! ## A217777.P17996645852006484549

`5*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A217777.P17996645852006484549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  5 * (a (n - 2) - a (n - 4))

end

end A217777.P17996645852006484549

namespace A217777

/-- `5*(a(n-2)-a(n-4))` -/
def P17996645852006484549.Spec : Prop :=
  ∀ n, P17996645852006484549.a n = A217777 n

end A217777

/-! ## A217777.P16128083392182435143

`A000034(n)*A039717(A008619(n))`
-/

namespace A217777.P16128083392182435143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A039717 (A008619 n).toNat

end

end A217777.P16128083392182435143

namespace A217777

/-- `A000034(n)*A039717(A008619(n))` -/
def P16128083392182435143.Spec : Prop :=
  ∀ n, P16128083392182435143.a n = A217777 n

end A217777

/-! ## A217777.P13478925815553244510

`Δ[A001651(n+1)]*A039717(A008619(n))`
-/

namespace A217777.P13478925815553244510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A039717 (A008619 n).toNat

end

end A217777.P13478925815553244510

namespace A217777

/-- `Δ[A001651(n+1)]*A039717(A008619(n))` -/
def P13478925815553244510.Spec : Prop :=
  ∀ n, P13478925815553244510.a n = A217777 n

end A217777

/-! ## A217777.P2826658911457437622

`record[A068913(A167487(n)-3)/A036453(n+1)]`
-/

namespace A217777.P2826658911457437622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068913 (A167487 n - 3).toNat : ℚ) / (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217777.P2826658911457437622

namespace A217777

/-- `record[A068913(A167487(n)-3)/A036453(n+1)]` -/
def P2826658911457437622.Spec : Prop :=
  ∀ n, P2826658911457437622.a n = (A217777 n : ℚ)

end A217777

/-!
# A217778: Expansion of (1-x)^2*(1-3*x)/((1-3*x+x^2)*(1-5*x+5*x^2)).

The programs for A217778, the canonical program `A217778.P3409557340999074313` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217778 has offset 0).

The definition of A217778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+7x^2-3x^3)/(1-8x+21x^2-20x^3+5x^4))` (program `A217778.P3409557340999074313`, by `A217778.P3409557340999074313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217778.P3409557340999074313

`ogf((1-5x+7x^2-3x^3)/(1-8x+21x^2-20x^3+5x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217778

/-- `ogf((1-5x+7x^2-3x^3)/(1-8x+21x^2-20x^3+5x^4))` -/
def P3409557340999074313.Spec : Prop :=
  ∀ n, P3409557340999074313.a n = A217778 n

theorem P3409557340999074313.correct : P3409557340999074313.Spec := by
  intro n
  simp only [A217778]

end A217778

/-! ## A217778.P6469927789928852257

`A081567(n)-A094865(n)`
-/

namespace A217778.P6469927789928852257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n - A094865 n

end

end A217778.P6469927789928852257

namespace A217778

/-- `A081567(n)-A094865(n)` -/
def P6469927789928852257.Spec : Prop :=
  ∀ n, P6469927789928852257.a n = A217778 n

end A217778

/-! ## A217778.P10675238157118833668

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=34`
-/

namespace A217778.P10675238157118833668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 34] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 20 * a (n - 3) - 5 * a (n - 4)

end

end A217778.P10675238157118833668

namespace A217778

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P10675238157118833668.Spec : Prop :=
  ∀ n, P10675238157118833668.a n = A217778 n

end A217778

/-! ## A217778.P14923212300735132001

`A112091(n)+∑[A033190(n)]`
-/

namespace A217778.P14923212300735132001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217778.P14923212300735132001

namespace A217778

/-- `A112091(n)+∑[A033190(n)]` -/
def P14923212300735132001.Spec : Prop :=
  ∀ n, P14923212300735132001.a n = A217778 n

end A217778

/-! ## A217778.P6795124320876551808

`∑[A052936(n)]-A094865(n)`
-/

namespace A217778.P6795124320876551808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A094865 n

end

end A217778.P6795124320876551808

namespace A217778

/-- `∑[A052936(n)]-A094865(n)` -/
def P6795124320876551808.Spec : Prop :=
  ∀ n, P6795124320876551808.a n = A217778 n

end A217778

/-! ## A217778.P14531522232111519728

`Δ[A033193(n)-A033191(n)]`
-/

namespace A217778.P14531522232111519728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 n - A033191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217778.P14531522232111519728

namespace A217778

/-- `Δ[A033193(n)-A033191(n)]` -/
def P14531522232111519728.Spec : Prop :=
  ∀ n, P14531522232111519728.a n = A217778 n

end A217778

/-! ## A217778.P1264874252591377333

`Δ[A033193(n)]-A033190(n)`
-/

namespace A217778.P1264874252591377333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033190 n

end

end A217778.P1264874252591377333

namespace A217778

/-- `Δ[A033193(n)]-A033190(n)` -/
def P1264874252591377333.Spec : Prop :=
  ∀ n, P1264874252591377333.a n = A217778 n

end A217778

/-! ## A217778.P4287871797714491102

`A093131(n)+A033191(n+1)`
-/

namespace A217778.P4287871797714491102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n + A033191 (n + 1)

end

end A217778.P4287871797714491102

namespace A217778

/-- `A093131(n)+A033191(n+1)` -/
def P4287871797714491102.Spec : Prop :=
  ∀ n, P4287871797714491102.a n = A217778 n

end A217778

/-! ## A217778.P6396285729769969945

`A033193(n+1)-∑[A033193(n)]`
-/

namespace A217778.P6396285729769969945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217778.P6396285729769969945

namespace A217778

/-- `A033193(n+1)-∑[A033193(n)]` -/
def P6396285729769969945.Spec : Prop :=
  ∀ n, P6396285729769969945.a n = A217778 n

end A217778

/-! ## A217778.P6024971988488804795

`A033193(n+1)-A033190(n+1)`
-/

namespace A217778.P6024971988488804795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 (n + 1) - A033190 (n + 1)

end

end A217778.P6024971988488804795

namespace A217778

/-- `A033193(n+1)-A033190(n+1)` -/
def P6024971988488804795.Spec : Prop :=
  ∀ n, P6024971988488804795.a n = A217778 n

end A217778

/-! ## A217778.P11875498842396596633

`A178381(2*n+1)-A094865(n)`
-/

namespace A217778.P11875498842396596633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n + 1) - A094865 n

end

end A217778.P11875498842396596633

namespace A217778

/-- `A178381(2*n+1)-A094865(n)` -/
def P11875498842396596633.Spec : Prop :=
  ∀ n, P11875498842396596633.a n = A217778 n

end A217778

/-! ## A217778.P13228714832116495031

`A020876(n)-(A094865(n)+A093129(n))`
-/

namespace A217778.P13228714832116495031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - (A094865 n + A093129 n)

end

end A217778.P13228714832116495031

namespace A217778

/-- `A020876(n)-(A094865(n)+A093129(n))` -/
def P13228714832116495031.Spec : Prop :=
  ∀ n, P13228714832116495031.a n = A217778 n

end A217778

/-! ## A217778.P148056448049620515

`A093129(n+1)-(A094865(n)+A093129(n))`
-/

namespace A217778.P148056448049620515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) - (A094865 n + A093129 n)

end

end A217778.P148056448049620515

namespace A217778

/-- `A093129(n+1)-(A094865(n)+A093129(n))` -/
def P148056448049620515.Spec : Prop :=
  ∀ n, P148056448049620515.a n = A217778 n

end A217778

/-! ## A217778.P15313440226825098076

`A001519(n+1)+A081567(n)-A033191(n+1)`
-/

namespace A217778.P15313440226825098076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A081567 n - A033191 (n + 1))

end

end A217778.P15313440226825098076

namespace A217778

/-- `A001519(n+1)+A081567(n)-A033191(n+1)` -/
def P15313440226825098076.Spec : Prop :=
  ∀ n, P15313440226825098076.a n = A217778 n

end A217778

/-! ## A217778.P6684011637552929707

`A033191(n+1)+A094667(n+1)-A033190(n+1)`
-/

namespace A217778.P6684011637552929707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 (n + 1) + (A094667 (n + 1) - A033190 (n + 1))

end

end A217778.P6684011637552929707

namespace A217778

/-- `A033191(n+1)+A094667(n+1)-A033190(n+1)` -/
def P6684011637552929707.Spec : Prop :=
  ∀ n, P6684011637552929707.a n = A217778 n

end A217778

/-! ## A217778.P12846425908717598469

`Δ[A081567(n)]-A217779(n)`
-/

namespace A217778.P12846425908717598469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A217779 n

end

end A217778.P12846425908717598469

namespace A217778

/-- `Δ[A081567(n)]-A217779(n)` -/
def P12846425908717598469.Spec : Prop :=
  ∀ n, P12846425908717598469.a n = A217778 n

end A217778

/-! ## A217778.P16918293587338589913

`A217782(n+1)-A081567(n)`
-/

namespace A217778.P16918293587338589913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217782 (n + 1) - A081567 n

end

end A217778.P16918293587338589913

namespace A217778

/-- `A217782(n+1)-A081567(n)` -/
def P16918293587338589913.Spec : Prop :=
  ∀ n, P16918293587338589913.a n = A217778 n

end A217778

/-! ## A217778.P16317995792151915733

`(A217782(n)+A094667(n+1))/2`
-/

namespace A217778.P16317995792151915733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217782 n + A094667 (n + 1) : ℚ) / 2

end

end A217778.P16317995792151915733

namespace A217778

/-- `(A217782(n)+A094667(n+1))/2` -/
def P16317995792151915733.Spec : Prop :=
  ∀ n, P16317995792151915733.a n = (A217778 n : ℚ)

end A217778

/-! ## A217778.P2515985673847358757

`Δ[A093131(n)]-(A094865(n)+A093131(n))`
-/

namespace A217778.P2515985673847358757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A094865 n + A093131 n)

end

end A217778.P2515985673847358757

namespace A217778

/-- `Δ[A093131(n)]-(A094865(n)+A093131(n))` -/
def P2515985673847358757.Spec : Prop :=
  ∀ n, P2515985673847358757.a n = A217778 n

end A217778

/-! ## A217778.P13157803982453266799

`A081567(n+1)-(A217779(n)+A081567(n))`
-/

namespace A217778.P13157803982453266799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) - (A217779 n + A081567 n)

end

end A217778.P13157803982453266799

namespace A217778

/-- `A081567(n+1)-(A217779(n)+A081567(n))` -/
def P13157803982453266799.Spec : Prop :=
  ∀ n, P13157803982453266799.a n = A217778 n

end A217778

/-!
# A217779: Expansion of (1-4x+4*x^2)/((1-5x+5*x^2)*(1-3x+x^2)).

The programs for A217779, the canonical program `A217779.P15082564209878692397` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217779 has offset 0).

The definition of A217779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+4x^2)/(1-8x+21x^2-20x^3+5x^4))` (program `A217779.P15082564209878692397`, by `A217779.P15082564209878692397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217779.P15082564209878692397

`ogf((1-4x+4x^2)/(1-8x+21x^2-20x^3+5x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217779

/-- `ogf((1-4x+4x^2)/(1-8x+21x^2-20x^3+5x^4))` -/
def P15082564209878692397.Spec : Prop :=
  ∀ n, P15082564209878692397.a n = A217779 n

theorem P15082564209878692397.correct : P15082564209878692397.Spec := by
  intro n
  simp only [A217779]

end A217779

/-! ## A217779.P1519922792970039898

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=4, a(2)=15, a(3)=56`
-/

namespace A217779.P1519922792970039898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 15, 56] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 20 * a (n - 3) - 5 * a (n - 4)

end

end A217779.P1519922792970039898

namespace A217779

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P1519922792970039898.Spec : Prop :=
  ∀ n, P1519922792970039898.a n = A217779 n

end A217779

/-! ## A217779.P9113508032615400885

`A094865(n)+Δ[A093131(n)]`
-/

namespace A217779.P9113508032615400885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + (f1 (n + 1) - f1 n)

end

end A217779.P9113508032615400885

namespace A217779

/-- `A094865(n)+Δ[A093131(n)]` -/
def P9113508032615400885.Spec : Prop :=
  ∀ n, P9113508032615400885.a n = A217779 n

end A217779

/-! ## A217779.P11822086847796818736

`A094865(n)+Δ[A112091(n)]`
-/

namespace A217779.P11822086847796818736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + (f1 (n + 1) - f1 n)

end

end A217779.P11822086847796818736

namespace A217779

/-- `A094865(n)+Δ[A112091(n)]` -/
def P11822086847796818736.Spec : Prop :=
  ∀ n, P11822086847796818736.a n = A217779 n

end A217779

/-! ## A217779.P6842129427762927988

`Δ[A217782(n)+A094865(n)]`
-/

namespace A217779.P6842129427762927988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217782 n + A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217779.P6842129427762927988

namespace A217779

/-- `Δ[A217782(n)+A094865(n)]` -/
def P6842129427762927988.Spec : Prop :=
  ∀ n, P6842129427762927988.a n = A217779 n

end A217779

/-! ## A217779.P7136246677922574145

`Δ[A081567(n)]-A217778(n)`
-/

namespace A217779.P7136246677922574145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A217778 n

end

end A217779.P7136246677922574145

namespace A217779

/-- `Δ[A081567(n)]-A217778(n)` -/
def P7136246677922574145.Spec : Prop :=
  ∀ n, P7136246677922574145.a n = A217779 n

end A217779

/-! ## A217779.P2486530909031323537

`A094865(n)+A039717(n+1)`
-/

namespace A217779.P2486530909031323537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + A039717 (n + 1)

end

end A217779.P2486530909031323537

namespace A217779

/-- `A094865(n)+A039717(n+1)` -/
def P2486530909031323537.Spec : Prop :=
  ∀ n, P2486530909031323537.a n = A217779 n

end A217779

/-! ## A217779.P11643549494955314394

`A052936(n+1)-A217778(n)`
-/

namespace A217779.P11643549494955314394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 (n + 1) - A217778 n

end

end A217779.P11643549494955314394

namespace A217779

/-- `A052936(n+1)-A217778(n)` -/
def P11643549494955314394.Spec : Prop :=
  ∀ n, P11643549494955314394.a n = A217779 n

end A217779

/-! ## A217779.P115719785782431395

`A217778(n)+A208736(n+2)`
-/

namespace A217779.P115719785782431395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n + A208736 (n + 2)

end

end A217779.P115719785782431395

namespace A217779

/-- `A217778(n)+A208736(n+2)` -/
def P115719785782431395.Spec : Prop :=
  ∀ n, P115719785782431395.a n = A217779 n

end A217779

/-! ## A217779.P18286571111823406190

`A217777(2*n)+A094865(n)`
-/

namespace A217779.P18286571111823406190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n) + A094865 n

end

end A217779.P18286571111823406190

namespace A217779

/-- `A217777(2*n)+A094865(n)` -/
def P18286571111823406190.Spec : Prop :=
  ∀ n, P18286571111823406190.a n = A217779 n

end A217779

/-! ## A217779.P400428100039819876

`Δ[A122367(n)+A094865(n+1)]`
-/

namespace A217779.P400428100039819876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A094865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217779.P400428100039819876

namespace A217779

/-- `Δ[A122367(n)+A094865(n+1)]` -/
def P400428100039819876.Spec : Prop :=
  ∀ n, P400428100039819876.a n = A217779 n

end A217779

/-! ## A217779.P190562286461943979

`A094865(n+1)+A094667(n+1)`
-/

namespace A217779.P190562286461943979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1) + A094667 (n + 1)

end

end A217779.P190562286461943979

namespace A217779

/-- `A094865(n+1)+A094667(n+1)` -/
def P190562286461943979.Spec : Prop :=
  ∀ n, P190562286461943979.a n = A217779 n

end A217779

/-! ## A217779.P17464753293738621873

`A147748(n+1)-A033191(n+1)`
-/

namespace A217779.P17464753293738621873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 (n + 1) - A033191 (n + 1)

end

end A217779.P17464753293738621873

namespace A217779

/-- `A147748(n+1)-A033191(n+1)` -/
def P17464753293738621873.Spec : Prop :=
  ∀ n, P17464753293738621873.a n = A217779 n

end A217779

/-! ## A217779.P7862184575690992439

`A081567(n+1)-A217782(n+1)`
-/

namespace A217779.P7862184575690992439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) - A217782 (n + 1)

end

end A217779.P7862184575690992439

namespace A217779

/-- `A081567(n+1)-A217782(n+1)` -/
def P7862184575690992439.Spec : Prop :=
  ∀ n, P7862184575690992439.a n = A217779 n

end A217779

/-! ## A217779.P6133397007341933064

`A033190(n+2)-A001519(n+2)`
-/

namespace A217779.P6133397007341933064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 2) - A001519 (n + 2)

end

end A217779.P6133397007341933064

namespace A217779

/-- `A033190(n+2)-A001519(n+2)` -/
def P6133397007341933064.Spec : Prop :=
  ∀ n, P6133397007341933064.a n = A217779 n

end A217779

/-! ## A217779.P16309657305241655158

`∑[A033193(n+1)-A001906(n+1)]`
-/

namespace A217779.P16309657305241655158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 (n + 1) - A001906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217779.P16309657305241655158

namespace A217779

/-- `∑[A033193(n+1)-A001906(n+1)]` -/
def P16309657305241655158.Spec : Prop :=
  ∀ n, P16309657305241655158.a n = A217779 n

end A217779

/-! ## A217779.P15361538755674923308

`A001906(n+1)+Δ[A094865(n+1)]`
-/

namespace A217779.P15361538755674923308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (f1 (n + 1) - f1 n)

end

end A217779.P15361538755674923308

namespace A217779

/-- `A001906(n+1)+Δ[A094865(n+1)]` -/
def P15361538755674923308.Spec : Prop :=
  ∀ n, P15361538755674923308.a n = A217779 n

end A217779

/-! ## A217779.P17564685830865845801

`A178381(2*(n+1))-A033191(n+1)`
-/

namespace A217779.P17564685830865845801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * (n + 1)) - A033191 (n + 1)

end

end A217779.P17564685830865845801

namespace A217779

/-- `A178381(2*(n+1))-A033191(n+1)` -/
def P17564685830865845801.Spec : Prop :=
  ∀ n, P17564685830865845801.a n = A217779 n

end A217779

/-! ## A217779.P16694804147504154938

`A217782(n+1)-A000045(2*n+1)`
-/

namespace A217779.P16694804147504154938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217782 (n + 1) - A000045 (2 * n + 1)

end

end A217779.P16694804147504154938

namespace A217779

/-- `A217782(n+1)-A000045(2*n+1)` -/
def P16694804147504154938.Spec : Prop :=
  ∀ n, P16694804147504154938.a n = A217779 n

end A217779

/-! ## A217779.P15420819159518399115

`(A081567(n+1)-A001519(n+1))/2`
-/

namespace A217779.P15420819159518399115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081567 (n + 1) - A001519 (n + 1) : ℚ) / 2

end

end A217779.P15420819159518399115

namespace A217779

/-- `(A081567(n+1)-A001519(n+1))/2` -/
def P15420819159518399115.Spec : Prop :=
  ∀ n, P15420819159518399115.a n = (A217779 n : ℚ)

end A217779

/-!
# A217780: Cumulative counting sequence: (adjective-before-noun) pairs with first term 1.

The programs for A217780, there is no canonical definition to state claims against.
-/

/-! ## A217780.P3907513934520656364

`A055171(A014681(n)+1)`
-/

namespace A217780.P3907513934520656364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (A014681 n + 1).toNat

end

end A217780.P3907513934520656364

/-! ## A217780.P9510301098910663530

`A055171(A065190(n+1))`
-/

namespace A217780.P9510301098910663530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (A065190 (n + 1)).toNat

end

end A217780.P9510301098910663530

/-! ## A217780.P5745859875397079660

`A055171(A028310(xor(1, n+1)))`
-/

namespace A217780.P5745859875397079660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (A028310 (Nat.xor 1 (n + 1))).toNat

end

end A217780.P5745859875397079660

/-! ## A217780.P3275087454306415145

`A055171(A062157(n)+1+n)`
-/

namespace A217780.P3275087454306415145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (A062157 n + 1 + (n : ℤ)).toNat

end

end A217780.P3275087454306415145

/-! ## A217780.P1404387021848148431

`A055171(xor(1, A054977(n)+n))`
-/

namespace A217780.P1404387021848148431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (Int.xor 1 (A054977 n + (n : ℤ))).toNat

end

end A217780.P1404387021848148431

/-! ## A217780.P15658714910138843110

`A055171(xor(1, A057427(n)+n))`
-/

namespace A217780.P15658714910138843110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

end

end A217780.P15658714910138843110

/-! ## A217780.P15425585399118802848

`A055171(Δ[A063196(n+1)]+n)`
-/

namespace A217780.P15425585399118802848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A217780.P15425585399118802848

/-! ## A217780.P14037022984204820055

`A055171(A289207(n)+Δ[A047241(n+1)])`
-/

namespace A217780.P14037022984204820055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (A289207 n + (f1 (n + 1) - f1 n)).toNat

end

end A217780.P14037022984204820055

/-!
# A217781: Triangular array read by rows: T(n,k) is the number of n-node connected graphs with exactly one cycle of length k (and no other cycles) for n >= 1 and 1 <= k <= n.

The programs for A217781, there is no canonical definition to state claims against.
-/

/-! ## A217781.P16156299749653712465

`A088918(A227578(n))+A033185(n+1)`
-/

namespace A217781.P16156299749653712465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088918 (A227578 n).toNat + A033185 (n + 1)

end

end A217781.P16156299749653712465

/-! ## A217781.P2095679430673868470

`A225099(A290605(n))+A033185(n+1)`
-/

namespace A217781.P2095679430673868470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A290605 n).toNat + A033185 (n + 1)

end

end A217781.P2095679430673868470

/-! ## A217781.P4042408692546197677

`A178798(A027144(n+1))+A033185(n+1)`
-/

namespace A217781.P4042408692546197677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A027144 (n + 1)).toNat + A033185 (n + 1)

end

end A217781.P4042408692546197677

/-! ## A217781.P569280548360088077

`A335446(A216612(n+1))+A033185(n+1)`
-/

namespace A217781.P569280548360088077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A216612 (n + 1)).toNat + A033185 (n + 1)

end

end A217781.P569280548360088077

/-! ## A217781.P11101646381589664857

`A284258(A304320(n+1))+A033185(n+1)`
-/

namespace A217781.P11101646381589664857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (A304320 (n + 1)).toNat + A033185 (n + 1)

end

end A217781.P11101646381589664857

/-!
# A217782: Expansion of (1-x)*(1-2x)*(1-3x)/((1-5x+5*x^2)*(1-3x+x^2)).

The programs for A217782, the canonical program `A217782.P81773627060442644` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217782 has offset 0).

The definition of A217782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+11x^2-6x^3)/(1-8x+21x^2-20x^3+5x^4))` (program `A217782.P81773627060442644`, by `A217782.P81773627060442644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217782.P81773627060442644

`ogf((1-6x+11x^2-6x^3)/(1-8x+21x^2-20x^3+5x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217782

/-- `ogf((1-6x+11x^2-6x^3)/(1-8x+21x^2-20x^3+5x^4))` -/
def P81773627060442644.Spec : Prop :=
  ∀ n, P81773627060442644.a n = A217782 n

theorem P81773627060442644.correct : P81773627060442644.Spec := by
  intro n
  simp only [A217782]

end A217782

/-! ## A217782.P11292832803054968304

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A217782.P11292832803054968304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 20 * a (n - 3) - 5 * a (n - 4)

end

end A217782.P11292832803054968304

namespace A217782

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P11292832803054968304.Spec : Prop :=
  ∀ n, P11292832803054968304.a n = A217782 n

end A217782

/-! ## A217782.P8016650192693395517

`∑[A033193(n)]-A001906(n)`
-/

namespace A217782.P8016650192693395517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001906 n

end

end A217782.P8016650192693395517

namespace A217782

/-- `∑[A033193(n)]-A001906(n)` -/
def P8016650192693395517.Spec : Prop :=
  ∀ n, P8016650192693395517.a n = A217782 n

end A217782

/-! ## A217782.P8954223698588942733

`Δ[A094865(n)+A001906(n)]`
-/

namespace A217782.P8954223698588942733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217782.P8954223698588942733

namespace A217782

/-- `Δ[A094865(n)+A001906(n)]` -/
def P8954223698588942733.Spec : Prop :=
  ∀ n, P8954223698588942733.a n = A217782 n

end A217782

/-! ## A217782.P4824948632001187405

`Δ[A094865(n)+A055588(n)]`
-/

namespace A217782.P4824948632001187405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + A055588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217782.P4824948632001187405

namespace A217782

/-- `Δ[A094865(n)+A055588(n)]` -/
def P4824948632001187405.Spec : Prop :=
  ∀ n, P4824948632001187405.a n = A217782 n

end A217782

/-! ## A217782.P7238191235942076429

`A122367(n)+Δ[A094865(n)]`
-/

namespace A217782.P7238191235942076429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + (f1 (n + 1) - f1 n)

end

end A217782.P7238191235942076429

namespace A217782

/-- `A122367(n)+Δ[A094865(n)]` -/
def P7238191235942076429.Spec : Prop :=
  ∀ n, P7238191235942076429.a n = A217782 n

end A217782

/-! ## A217782.P11171384872354086088

`Δ[A249450(n)+A094865(n)]`
-/

namespace A217782.P11171384872354086088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 n + A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217782.P11171384872354086088

namespace A217782

/-- `Δ[A249450(n)+A094865(n)]` -/
def P11171384872354086088.Spec : Prop :=
  ∀ n, P11171384872354086088.a n = A217782 n

end A217782

/-! ## A217782.P986252308715294516

`A033190(n+1)-A001906(n)`
-/

namespace A217782.P986252308715294516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1) - A001906 n

end

end A217782.P986252308715294516

namespace A217782

/-- `A033190(n+1)-A001906(n)` -/
def P986252308715294516.Spec : Prop :=
  ∀ n, P986252308715294516.a n = A217782 n

end A217782

/-! ## A217782.P18431593279446731148

`(A081567(n)+A001519(n))/2`
-/

namespace A217782.P18431593279446731148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081567 n + A001519 n : ℚ) / 2

end

end A217782.P18431593279446731148

namespace A217782

/-- `(A081567(n)+A001519(n))/2` -/
def P18431593279446731148.Spec : Prop :=
  ∀ n, P18431593279446731148.a n = (A217782 n : ℚ)

end A217782

/-! ## A217782.P12176107232718812521

`Δ[∑[A033190(n)]-A001519(n)]`
-/

namespace A217782.P12176107232718812521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217782.P12176107232718812521

namespace A217782

/-- `Δ[∑[A033190(n)]-A001519(n)]` -/
def P12176107232718812521.Spec : Prop :=
  ∀ n, P12176107232718812521.a n = A217782 n

end A217782

/-! ## A217782.P7903222875890247404

`A033190(n+1)-Δ[A001519(n)]`
-/

namespace A217782.P7903222875890247404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1) - (f1 (n + 1) - f1 n)

end

end A217782.P7903222875890247404

namespace A217782

/-- `A033190(n+1)-Δ[A001519(n)]` -/
def P7903222875890247404.Spec : Prop :=
  ∀ n, P7903222875890247404.a n = A217782 n

end A217782

/-! ## A217782.P14328404779714647909

`Δ[A033191(n+1)-A001519(n)]`
-/

namespace A217782.P14328404779714647909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 (n + 1) - A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217782.P14328404779714647909

namespace A217782

/-- `Δ[A033191(n+1)-A001519(n)]` -/
def P14328404779714647909.Spec : Prop :=
  ∀ n, P14328404779714647909.a n = A217782 n

end A217782

/-! ## A217782.P2919287871124218167

`A033190(n+1)-A000045(2*n)`
-/

namespace A217782.P2919287871124218167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1) - A000045 (2 * n)

end

end A217782.P2919287871124218167

namespace A217782

/-- `A033190(n+1)-A000045(2*n)` -/
def P2919287871124218167.Spec : Prop :=
  ∀ n, P2919287871124218167.a n = A217782 n

end A217782

/-! ## A217782.P17345226016227478745

`A135992(2*(n+1))+A206947(n+1)/2`
-/

namespace A217782.P17345226016227478745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135992 (2 * (n + 1)) : ℚ) + (A206947 (n + 1) : ℚ) / 2

end

end A217782.P17345226016227478745

namespace A217782

/-- `A135992(2*(n+1))+A206947(n+1)/2` -/
def P17345226016227478745.Spec : Prop :=
  ∀ n, P17345226016227478745.a n = (A217782 n : ℚ)

end A217782

/-! ## A217782.P885489127306916805

`A001519(n)+A147748(n)-A033191(n)`
-/

namespace A217782.P885489127306916805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + (A147748 n - A033191 n)

end

end A217782.P885489127306916805

namespace A217782

/-- `A001519(n)+A147748(n)-A033191(n)` -/
def P885489127306916805.Spec : Prop :=
  ∀ n, P885489127306916805.a n = A217782 n

end A217782

/-! ## A217782.P891480304800629498

`A033191(n)+A081567(n)-A147748(n)`
-/

namespace A217782.P891480304800629498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 n + (A081567 n - A147748 n)

end

end A217782.P891480304800629498

namespace A217782

/-- `A033191(n)+A081567(n)-A147748(n)` -/
def P891480304800629498.Spec : Prop :=
  ∀ n, P891480304800629498.a n = A217782 n

end A217782

/-! ## A217782.P15301870948764416345

`A217778(n)+A217778(n)-∑[A217778(n)]`
-/

namespace A217782.P15301870948764416345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n + (A217778 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217782.P15301870948764416345

namespace A217782

/-- `A217778(n)+A217778(n)-∑[A217778(n)]` -/
def P15301870948764416345.Spec : Prop :=
  ∀ n, P15301870948764416345.a n = A217782 n

end A217782

/-! ## A217782.P4208609345047913461

`A094865(n+1)+A122367(n)-A094865(n)`
-/

namespace A217782.P4208609345047913461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1) + (A122367 n - A094865 n)

end

end A217782.P4208609345047913461

namespace A217782

/-- `A094865(n+1)+A122367(n)-A094865(n)` -/
def P4208609345047913461.Spec : Prop :=
  ∀ n, P4208609345047913461.a n = A217782 n

end A217782

/-! ## A217782.P14190663786518367425

`A033190(n+1)+A001519(n)-A001519(n+1)`
-/

namespace A217782.P14190663786518367425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1) + (A001519 n - A001519 (n + 1))

end

end A217782.P14190663786518367425

namespace A217782

/-- `A033190(n+1)+A001519(n)-A001519(n+1)` -/
def P14190663786518367425.Spec : Prop :=
  ∀ n, P14190663786518367425.a n = A217782 n

end A217782

/-! ## A217782.P5643075684148906019

`A001519(n+1)+A094865(n+1)-A094865(n)`
-/

namespace A217782.P5643075684148906019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A094865 (n + 1) - A094865 n)

end

end A217782.P5643075684148906019

namespace A217782

/-- `A001519(n+1)+A094865(n+1)-A094865(n)` -/
def P5643075684148906019.Spec : Prop :=
  ∀ n, P5643075684148906019.a n = A217782 n

end A217782

/-!
# A217783: Expansion of (1-x)*(1-2x)/((1-5x+5*x^2)*(1-3x+x^2)).

The programs for A217783, the canonical program `A217783.P15524789956156823881` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217783 has offset 0).

The definition of A217783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+2x^2)/(1-8x+21x^2-20x^3+5x^4))` (program `A217783.P15524789956156823881`, by `A217783.P15524789956156823881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217783.P15524789956156823881

`ogf((1-3x+2x^2)/(1-8x+21x^2-20x^3+5x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217783

/-- `ogf((1-3x+2x^2)/(1-8x+21x^2-20x^3+5x^4))` -/
def P15524789956156823881.Spec : Prop :=
  ∀ n, P15524789956156823881.a n = A217783 n

theorem P15524789956156823881.correct : P15524789956156823881.Spec := by
  intro n
  simp only [A217783]

end A217783

/-! ## A217783.P10605693328456286208

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=83`
-/

namespace A217783.P10605693328456286208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 21, 83] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 20 * a (n - 3) - 5 * a (n - 4)

end

end A217783.P10605693328456286208

namespace A217783

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P10605693328456286208.Spec : Prop :=
  ∀ n, P10605693328456286208.a n = A217783 n

end A217783

/-! ## A217783.P13432121048201087699

`A094865(n+1)+A030191(n)`
-/

namespace A217783.P13432121048201087699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1) + A030191 n

end

end A217783.P13432121048201087699

namespace A217783

/-- `A094865(n+1)+A030191(n)` -/
def P13432121048201087699.Spec : Prop :=
  ∀ n, P13432121048201087699.a n = A217783 n

end A217783

/-! ## A217783.P5016107876183847716

`Δ[A093131(n)+Δ[A094865(n)]]`
-/

namespace A217783.P5016107876183847716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217783.P5016107876183847716

namespace A217783

/-- `Δ[A093131(n)+Δ[A094865(n)]]` -/
def P5016107876183847716.Spec : Prop :=
  ∀ n, P5016107876183847716.a n = A217783 n

end A217783

/-! ## A217783.P5413231918933750912

`Δ[A112091(n)+Δ[A094865(n)]]`
-/

namespace A217783.P5413231918933750912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217783.P5413231918933750912

namespace A217783

/-- `Δ[A112091(n)+Δ[A094865(n)]]` -/
def P5413231918933750912.Spec : Prop :=
  ∀ n, P5413231918933750912.a n = A217783 n

end A217783

/-! ## A217783.P11322989744915147588

`A094865(n+1)+A093131(n+1)`
-/

namespace A217783.P11322989744915147588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1) + A093131 (n + 1)

end

end A217783.P11322989744915147588

namespace A217783

/-- `A094865(n+1)+A093131(n+1)` -/
def P11322989744915147588.Spec : Prop :=
  ∀ n, P11322989744915147588.a n = A217783 n

end A217783

/-! ## A217783.P16629330086465257527

`A217778(n+1)-A122367(n+1)`
-/

namespace A217783.P16629330086465257527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 (n + 1) - A122367 (n + 1)

end

end A217783.P16629330086465257527

namespace A217783

/-- `A217778(n+1)-A122367(n+1)` -/
def P16629330086465257527.Spec : Prop :=
  ∀ n, P16629330086465257527.a n = A217783 n

end A217783

/-! ## A217783.P9862153461423220982

`A081567(n+1)-A033191(n+2)`
-/

namespace A217783.P9862153461423220982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) - A033191 (n + 2)

end

end A217783.P9862153461423220982

namespace A217783

/-- `A081567(n+1)-A033191(n+2)` -/
def P9862153461423220982.Spec : Prop :=
  ∀ n, P9862153461423220982.a n = A217783 n

end A217783

/-! ## A217783.P14593547011929387375

`A217778(n+1)-A001519(n+2)`
-/

namespace A217783.P14593547011929387375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 (n + 1) - A001519 (n + 2)

end

end A217783.P14593547011929387375

namespace A217783

/-- `A217778(n+1)-A001519(n+2)` -/
def P14593547011929387375.Spec : Prop :=
  ∀ n, P14593547011929387375.a n = A217783 n

end A217783

/-! ## A217783.P776051739319788559

`A039717(n+1)+Δ[Δ[A094865(n)]]`
-/

namespace A217783.P776051739319788559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1) + (f1 (n + 1) - f1 n)

end

end A217783.P776051739319788559

namespace A217783

/-- `A039717(n+1)+Δ[Δ[A094865(n)]]` -/
def P776051739319788559.Spec : Prop :=
  ∀ n, P776051739319788559.a n = A217783 n

end A217783

/-! ## A217783.P11108018724486375227

`A094865(n+1)+A112091(n+1)-1`
-/

namespace A217783.P11108018724486375227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1) + (A112091 (n + 1) - 1)

end

end A217783.P11108018724486375227

namespace A217783

/-- `A094865(n+1)+A112091(n+1)-1` -/
def P11108018724486375227.Spec : Prop :=
  ∀ n, P11108018724486375227.a n = A217783 n

end A217783

/-! ## A217783.P11879144624069683436

`A178381(2*n+3)-A033191(n+2)`
-/

namespace A217783.P11879144624069683436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n + 3) - A033191 (n + 2)

end

end A217783.P11879144624069683436

namespace A217783

/-- `A178381(2*n+3)-A033191(n+2)` -/
def P11879144624069683436.Spec : Prop :=
  ∀ n, P11879144624069683436.a n = A217783 n

end A217783

/-! ## A217783.P17060050192839283439

`∑[A217777(2*n+1)-A094667(n+1)]`
-/

namespace A217783.P17060050192839283439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n + 1) - A094667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217783.P17060050192839283439

namespace A217783

/-- `∑[A217777(2*n+1)-A094667(n+1)]` -/
def P17060050192839283439.Spec : Prop :=
  ∀ n, P17060050192839283439.a n = A217783 n

end A217783

/-! ## A217783.P7906210719109105680

`A094667(n+1)+A094788(n+2)-A030191(n)`
-/

namespace A217783.P7906210719109105680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 1) + (A094788 (n + 2) - A030191 n)

end

end A217783.P7906210719109105680

namespace A217783

/-- `A094667(n+1)+A094788(n+2)-A030191(n)` -/
def P7906210719109105680.Spec : Prop :=
  ∀ n, P7906210719109105680.a n = A217783 n

end A217783

/-! ## A217783.P1963865537063965736

`A094667(n+1)+A094788(n+2)-A093131(n+1)`
-/

namespace A217783.P1963865537063965736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 1) + (A094788 (n + 2) - A093131 (n + 1))

end

end A217783.P1963865537063965736

namespace A217783

/-- `A094667(n+1)+A094788(n+2)-A093131(n+1)` -/
def P1963865537063965736.Spec : Prop :=
  ∀ n, P1963865537063965736.a n = A217783 n

end A217783

/-! ## A217783.P5407633614196559542

`Δ[A030191(n)-A094667(n+1)]`
-/

namespace A217783.P5407633614196559542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 n - A094667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217783.P5407633614196559542

namespace A217783

/-- `Δ[A030191(n)-A094667(n+1)]` -/
def P5407633614196559542.Spec : Prop :=
  ∀ n, P5407633614196559542.a n = A217783 n

end A217783

/-! ## A217783.P18094022679053876191

`Δ[A217779(n)]-A217782(n+1)`
-/

namespace A217783.P18094022679053876191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A217782 (n + 1)

end

end A217783.P18094022679053876191

namespace A217783

/-- `Δ[A217779(n)]-A217782(n+1)` -/
def P18094022679053876191.Spec : Prop :=
  ∀ n, P18094022679053876191.a n = A217783 n

end A217783

/-! ## A217783.P11916649546348831185

`A217779(n+1)-A081567(n+1)`
-/

namespace A217783.P11916649546348831185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 (n + 1) - A081567 (n + 1)

end

end A217783.P11916649546348831185

namespace A217783

/-- `A217779(n+1)-A081567(n+1)` -/
def P11916649546348831185.Spec : Prop :=
  ∀ n, P11916649546348831185.a n = A217783 n

end A217783

/-! ## A217783.P16384444629933834281

`A039717(n+2)-A217778(n+1)`
-/

namespace A217783.P16384444629933834281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 2) - A217778 (n + 1)

end

end A217783.P16384444629933834281

namespace A217783

/-- `A039717(n+2)-A217778(n+1)` -/
def P16384444629933834281.Spec : Prop :=
  ∀ n, P16384444629933834281.a n = A217783 n

end A217783

/-! ## A217783.P927054711013521179

`A217777(2*(n+1))-A217778(n+1)`
-/

namespace A217783.P927054711013521179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * (n + 1)) - A217778 (n + 1)

end

end A217783.P927054711013521179

namespace A217783

/-- `A217777(2*(n+1))-A217778(n+1)` -/
def P927054711013521179.Spec : Prop :=
  ∀ n, P927054711013521179.a n = A217783 n

end A217783

/-!
# A217786: Expansion of (psi(x^3) / psi(x))^2 in powers of x where psi() is a Ramanujan theta function.

The programs for A217786, there is no canonical definition to state claims against.
-/

/-! ## A217786.P10075124126179103639

`A058487(3*n+2)`
-/

namespace A217786.P10075124126179103639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058487 (3 * n + 2)

end

end A217786.P10075124126179103639

/-! ## A217786.P10783699182650079817

`A112176(3*n+2)`
-/

namespace A217786.P10783699182650079817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 (3 * n + 2)

end

end A217786.P10783699182650079817

/-! ## A217786.P13032309557008066501

`char[A060119(n)]*A058487(A016789(n))`
-/

namespace A217786.P13032309557008066501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A058487 (A016789 n).toNat

end

end A217786.P13032309557008066501

/-! ## A217786.P5610176360915003827

`A128144(6*n+3)`
-/

namespace A217786.P5610176360915003827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 (6 * n + 3)

end

end A217786.P5610176360915003827

/-!
# A217787: a(n) = (a(n-1)*a(n-3) + 1) / a(n-4) with a(0) = a(1) = a(2) = a(3) = 1.

The programs for A217787, the canonical program `A217787.P17990161527275092927` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217787 has offset 0).

The definition of A217787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217787.P17990161527275092927

`(a(n-1)*a(n-3)+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217787

/-- `(a(n-1)*a(n-3)+1)/a(n-4)` -/
def P17990161527275092927.Spec : Prop :=
  ∀ n, P17990161527275092927.a n = (A217787 n : ℚ)

end A217787

/-! ## A217787.P5466238693292803841

`A087061(A087061(2*n)+A001572(n))`
-/

namespace A217787.P5466238693292803841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A087061 (2 * n) + A001572 n).toNat

end

end A217787.P5466238693292803841

namespace A217787

/-- `A087061(A087061(2*n)+A001572(n))` -/
def P5466238693292803841.Spec : Prop :=
  ∀ n, P5466238693292803841.a n = A217787 n

end A217787

/-! ## A217787.P12498479838158505342

`A226247(A192805(n+1))`
-/

namespace A217787.P12498479838158505342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226247 (A192805 (n + 1)).toNat

end

end A217787.P12498479838158505342

namespace A217787

/-- `A226247(A192805(n+1))` -/
def P12498479838158505342.Spec : Prop :=
  ∀ n, P12498479838158505342.a n = A217787 n

end A217787

/-! ## A217787.P9005402949065171751

`A226247(A013979(2*n)+1)`
-/

namespace A217787.P9005402949065171751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226247 (A013979 (2 * n) + 1).toNat

end

end A217787.P9005402949065171751

namespace A217787

/-- `A226247(A013979(2*n)+1)` -/
def P9005402949065171751.Spec : Prop :=
  ∀ n, P9005402949065171751.a n = A217787 n

end A217787

/-! ## A217787.P11970945228872147393

`A226247(A107458(2*n+3)+1)`
-/

namespace A217787.P11970945228872147393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226247 (A107458 (2 * n + 3) + 1).toNat

end

end A217787.P11970945228872147393

namespace A217787

/-- `A226247(A107458(2*n+3)+1)` -/
def P11970945228872147393.Spec : Prop :=
  ∀ n, P11970945228872147393.a n = A217787 n

end A217787

/-!
# A217789: Least difference between 2 palindromic numbers of length n.

The programs for A217789, the canonical program `A217789.P12950271565027679155` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217789 has offset 1).

The definition of A217789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217789.P12950271565027679155

`a(n-1)` with `a(0)=1, a(1)=11, a(2)=10, a(3)=11`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A217789

/-- `a(n-1)` -/
def P12950271565027679155.Spec : Prop :=
  ∀ n, (P12950271565027679155.a n : ℤ) = A217789 (n + 1)

theorem P12950271565027679155.correct : P12950271565027679155.Spec := by
  intro n
  simp only [A217789, Nat.add_sub_cancel]

end A217789

/-!
# A217790: Composite evil numbers (A001969) having no proper evil divisors.

The programs for A217790, there is no canonical definition to state claims against.
-/

/-! ## A217790.P8848323648665792608

`∩[A227932(n+1), A384427(n+1)]`
-/

namespace A217790.P8848323648665792608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P8848323648665792608

/-! ## A217790.P12963333766542180900

`filter[A384427(n+1), A005171(#)]`
-/

namespace A217790.P12963333766542180900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A217790.P12963333766542180900

/-! ## A217790.P691876994598494314

`filter[A384427(n+1), A066247(#)]`
-/

namespace A217790.P691876994598494314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A217790.P691876994598494314

/-! ## A217790.P13388742706220405119

`filter[A384427(n+1), A202238(#)]`
-/

namespace A217790.P13388742706220405119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A217790.P13388742706220405119

/-! ## A217790.P14032236138768530719

`filter[A384427(n+1), A292438(#)]`
-/

namespace A217790.P14032236138768530719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A217790.P14032236138768530719

/-! ## A217790.P13774349376330330640

`filter[A384427(n+1), A323162(#)]`
-/

namespace A217790.P13774349376330330640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A217790.P13774349376330330640

/-! ## A217790.P4131761744623283187

`∩[A038510(n+1), A384427(n+1)]`
-/

namespace A217790.P4131761744623283187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P4131761744623283187

/-! ## A217790.P1290337470094167347

`∩[A067794(n+1), A384427(n+1)]`
-/

namespace A217790.P1290337470094167347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P1290337470094167347

/-! ## A217790.P9159074998459396648

`∩[A067793(n+1), A384427(n+1)]`
-/

namespace A217790.P9159074998459396648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P9159074998459396648

/-! ## A217790.P16583506936578067396

`∩[A038509(n+1), A384427(n+1)]`
-/

namespace A217790.P16583506936578067396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P16583506936578067396

/-! ## A217790.P17863641105673873904

`∩[A384427(n+1), A390467(n+1)]`
-/

namespace A217790.P17863641105673873904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P17863641105673873904

/-! ## A217790.P10219080379849120868

`∩[A069063(n+1), A384427(n+1)]`
-/

namespace A217790.P10219080379849120868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P10219080379849120868

/-! ## A217790.P2845194165527955146

`∩[A384427(n+1), A100490(n)]`
-/

namespace A217790.P2845194165527955146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P2845194165527955146

/-! ## A217790.P2283013915928834105

`∩[A053795(n+1), A384427(n+1)]`
-/

namespace A217790.P2283013915928834105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P2283013915928834105

/-! ## A217790.P11913130383046690836

`∩[A383363(n+1), A384427(n+1)]`
-/

namespace A217790.P11913130383046690836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P11913130383046690836

/-! ## A217790.P4978246530155963204

`∩[A116490(n+1), A384427(n+1)]`
-/

namespace A217790.P4978246530155963204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P4978246530155963204

/-! ## A217790.P14739398269841922729

`∩[A090818(n+1), A384427(n+1)]`
-/

namespace A217790.P14739398269841922729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P14739398269841922729

/-! ## A217790.P10634376515560319970

`∩[A067893(n+1), A384427(n+1)]`
-/

namespace A217790.P10634376515560319970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P10634376515560319970

/-! ## A217790.P3234505811336741834

`∩[A325571(n+1), A384427(n+1)]`
-/

namespace A217790.P3234505811336741834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P3234505811336741834

/-! ## A217790.P8715574584515387656

`∩[A067800(n+1), A384427(n+1)]`
-/

namespace A217790.P8715574584515387656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217790.P8715574584515387656

/-!
# A217792: Primes which are equal to the sum of the binary digits of consecutive primes starting with 2.

The programs for A217792, the canonical program `A217792.P9875595306642364827` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217792 has offset 1).

The definition of A217792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217792.P9875595306642364827

`p?[A095375(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A217792

/-- `p?[A095375(n+1)]` -/
def P9875595306642364827.Spec : Prop :=
  ∀ n, P9875595306642364827.a n = A217792 (n + 1)

theorem P9875595306642364827.correct : P9875595306642364827.Spec := by
  intro n
  simp only [A217792, Nat.add_sub_cancel]

end A217792

/-! ## A217792.P15304764030033480972

`p?[∑[A014499(n+1)]]`
-/

namespace A217792.P15304764030033480972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217792.P15304764030033480972

namespace A217792

/-- `p?[∑[A014499(n+1)]]` -/
def P15304764030033480972.Spec : Prop :=
  ∀ n, P15304764030033480972.a n = A217792 (n + 1)

end A217792

/-! ## A217792.P16611667733571084561

`A095375(A168154(n+1))`
-/

namespace A217792.P16611667733571084561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (A168154 (n + 1)).toNat

end

end A217792.P16611667733571084561

namespace A217792

/-- `A095375(A168154(n+1))` -/
def P16611667733571084561.Spec : Prop :=
  ∀ n, P16611667733571084561.a n = A217792 (n + 1)

end A217792

/-! ## A217792.P9054682222828004877

`filter[A095375(n+1), A010051(#)]`
-/

namespace A217792.P9054682222828004877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A217792.P9054682222828004877

namespace A217792

/-- `filter[A095375(n+1), A010051(#)]` -/
def P9054682222828004877.Spec : Prop :=
  ∀ n, P9054682222828004877.a n = A217792 (n + 1)

end A217792

/-! ## A217792.P3306919114746446344

`∩[A000040(n+1), A095375(n+1)]`
-/

namespace A217792.P3306919114746446344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P3306919114746446344

namespace A217792

/-- `∩[A000040(n+1), A095375(n+1)]` -/
def P3306919114746446344.Spec : Prop :=
  ∀ n, (P3306919114746446344.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P5200330131715315907

`∩[A051948(n+1), A095375(n+1)]`
-/

namespace A217792.P5200330131715315907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P5200330131715315907

namespace A217792

/-- `∩[A051948(n+1), A095375(n+1)]` -/
def P5200330131715315907.Spec : Prop :=
  ∀ n, (P5200330131715315907.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P7823758667420366236

`∩[A065091(n+1), A095375(n+1)]`
-/

namespace A217792.P7823758667420366236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P7823758667420366236

namespace A217792

/-- `∩[A065091(n+1), A095375(n+1)]` -/
def P7823758667420366236.Spec : Prop :=
  ∀ n, (P7823758667420366236.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P3898397487243967293

`∩[A095375(n+1), A116974(n+1)]`
-/

namespace A217792.P3898397487243967293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P3898397487243967293

namespace A217792

/-- `∩[A095375(n+1), A116974(n+1)]` -/
def P3898397487243967293.Spec : Prop :=
  ∀ n, (P3898397487243967293.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P4363097426551620706

`∩[A095375(n+1), A140826(n+1)]`
-/

namespace A217792.P4363097426551620706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P4363097426551620706

namespace A217792

/-- `∩[A095375(n+1), A140826(n+1)]` -/
def P4363097426551620706.Spec : Prop :=
  ∀ n, (P4363097426551620706.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P2215961410482570524

`∩[A095375(n+1), A161346(n+1)]`
-/

namespace A217792.P2215961410482570524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P2215961410482570524

namespace A217792

/-- `∩[A095375(n+1), A161346(n+1)]` -/
def P2215961410482570524.Spec : Prop :=
  ∀ n, (P2215961410482570524.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P14092964398282599824

`∩[A095375(n+1), A175787(n+1)]`
-/

namespace A217792.P14092964398282599824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P14092964398282599824

namespace A217792

/-- `∩[A095375(n+1), A175787(n+1)]` -/
def P14092964398282599824.Spec : Prop :=
  ∀ n, (P14092964398282599824.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P8510515433011766633

`∩[A095375(n+1), A182986(n+1)]`
-/

namespace A217792.P8510515433011766633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P8510515433011766633

namespace A217792

/-- `∩[A095375(n+1), A182986(n+1)]` -/
def P8510515433011766633.Spec : Prop :=
  ∀ n, (P8510515433011766633.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P1731699332293088426

`∩[A095375(n+1), A189710(n+1)]`
-/

namespace A217792.P1731699332293088426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P1731699332293088426

namespace A217792

/-- `∩[A095375(n+1), A189710(n+1)]` -/
def P1731699332293088426.Spec : Prop :=
  ∀ n, (P1731699332293088426.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P2066890788473238119

`filter[A095375(n+2), A080339(#)]`
-/

namespace A217792.P2066890788473238119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A217792.P2066890788473238119

namespace A217792

/-- `filter[A095375(n+2), A080339(#)]` -/
def P2066890788473238119.Spec : Prop :=
  ∀ n, P2066890788473238119.a n = A217792 (n + 1)

end A217792

/-! ## A217792.P4318413188437726071

`filter[A095375(n+2), A080545(#)]`
-/

namespace A217792.P4318413188437726071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A217792.P4318413188437726071

namespace A217792

/-- `filter[A095375(n+2), A080545(#)]` -/
def P4318413188437726071.Spec : Prop :=
  ∀ n, P4318413188437726071.a n = A217792 (n + 1)

end A217792

/-! ## A217792.P8294864186408061882

`∩[A095375(n+1), A230606(n+1)]`
-/

namespace A217792.P8294864186408061882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P8294864186408061882

namespace A217792

/-- `∩[A095375(n+1), A230606(n+1)]` -/
def P8294864186408061882.Spec : Prop :=
  ∀ n, (P8294864186408061882.a n : ℤ) = A217792 (n + 1)

end A217792

/-! ## A217792.P15298452303451645813

`∩[A095375(n+1), A240960(n+1)]`
-/

namespace A217792.P15298452303451645813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217792.P15298452303451645813

namespace A217792

/-- `∩[A095375(n+1), A240960(n+1)]` -/
def P15298452303451645813.Spec : Prop :=
  ∀ n, (P15298452303451645813.a n : ℤ) = A217792 (n + 1)

end A217792

/-!
# A217794: G.f. satisfies: A(x/A(x)^3) = 1 + x*A(x)^2.

The programs for A217794, there is no canonical definition to state claims against.
-/

/-! ## A217794.P3846931142135108378

`A340919(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A217794.P3846931142135108378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A340919 (a (n - 1)).toNat

end

end A217794.P3846931142135108378

/-!
# A217795: Numbers n such that n^4+1 and (n+2)^4+1 are both prime.

The programs for A217795, the canonical program `A217795.P8087682452368100650` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217795 has offset 1).

The definition of A217795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217795.P17191987462692994492

`floor(sqrt(sqrt(A217796(n+1))))`
-/

namespace A217795.P17191987462692994492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A217796 (n + 1) : ℝ))⌋

end

end A217795.P17191987462692994492

namespace A217795

/-- `floor(sqrt(sqrt(A217796(n+1))))` -/
def P17191987462692994492.Spec : Prop :=
  ∀ n, P17191987462692994492.a n = A217795 (n + 1)

end A217795

/-! ## A217795.P8239409881083980467

`∩[A000068(n+1)-2, A000068(n+1)]`
-/

namespace A217795.P8239409881083980467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217795.P8239409881083980467

namespace A217795

/-- `∩[A000068(n+1)-2, A000068(n+1)]` -/
def P8239409881083980467.Spec : Prop :=
  ∀ n, (P8239409881083980467.a n : ℤ) = A217795 (n + 1)

end A217795

/-! ## A217795.P8087682452368100650

`A000068(eq[2, A000068(n+2)-A000068(n+1)]+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A217795

/-- `A000068(eq[2, A000068(n+2)-A000068(n+1)]+1)` -/
def P8087682452368100650.Spec : Prop :=
  ∀ n, P8087682452368100650.a n = A217795 (n + 1)

theorem P8087682452368100650.correct : P8087682452368100650.Spec := by
  intro n
  simp only [A217795, Nat.add_sub_cancel]

end A217795

/-! ## A217795.P2529881139112584822

`∩[eq[2, A193562(n+2)], A000068(n+1)]`
-/

namespace A217795.P2529881139112584822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A217795.P2529881139112584822

namespace A217795

/-- `∩[eq[2, A193562(n+2)], A000068(n+1)]` -/
def P2529881139112584822.Spec : Prop :=
  ∀ n, (P2529881139112584822.a n : ℤ) = A217795 (n + 1)

end A217795

/-! ## A217795.P14866672234963169574

`eq[A000108(A193562(n+2)), A193562(n)]`
-/

namespace A217795.P14866672234963169574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A193562 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217795.P14866672234963169574

namespace A217795

/-- `eq[A000108(A193562(n+2)), A193562(n)]` -/
def P14866672234963169574.Spec : Prop :=
  ∀ n, (P14866672234963169574.a n : ℤ) = A217795 (n + 1)

end A217795

/-! ## A217795.P3215121853316188193

`eq[A053786(n+2)*A193929(n), A096172(n+2)]`
-/

namespace A217795.P3215121853316188193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (n + 2) * A193929 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217795.P3215121853316188193

namespace A217795

/-- `eq[A053786(n+2)*A193929(n), A096172(n+2)]` -/
def P3215121853316188193.Spec : Prop :=
  ∀ n, (P3215121853316188193.a n : ℤ) = A217795 (n + 1)

end A217795

/-!
# A217796: Primes of the form n^4+1 such that (n+2)^4+1 is also prime.

The programs for A217796, the canonical program `A217796.P16724628216371701300` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217796 has offset 1).

The definition of A217796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217796.P16724628216371701300

`A217795(n+1)^4+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A217796

/-- `A217795(n+1)^4+1` -/
def P16724628216371701300.Spec : Prop :=
  ∀ n, P16724628216371701300.a n = A217796 (n + 1)

theorem P16724628216371701300.correct : P16724628216371701300.Spec := by
  intro n
  simp only [A217796, Nat.add_sub_cancel]

end A217796

/-! ## A217796.P1148945603977193332

`A037896(eq[2, A000068(n+2)-A000068(n+1)]+1)`
-/

namespace A217796.P1148945603977193332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 2) - A000068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217796.P1148945603977193332

namespace A217796

/-- `A037896(eq[2, A000068(n+2)-A000068(n+1)]+1)` -/
def P1148945603977193332.Spec : Prop :=
  ∀ n, P1148945603977193332.a n = A217796 (n + 1)

end A217796

/-! ## A217796.P4250627695221981884

`A002523(A217795(n+1))`
-/

namespace A217796.P4250627695221981884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (A217795 (n + 1)).toNat

end

end A217796.P4250627695221981884

namespace A217796

/-- `A002523(A217795(n+1))` -/
def P4250627695221981884.Spec : Prop :=
  ∀ n, P4250627695221981884.a n = A217796 (n + 1)

end A217796

/-! ## A217796.P4554118940390059288

`A096172(lcm(2, A217795(n+1)))`
-/

namespace A217796.P4554118940390059288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (Int.lcm 2 (A217795 (n + 1)))

end

end A217796.P4554118940390059288

namespace A217796

/-- `A096172(lcm(2, A217795(n+1)))` -/
def P4554118940390059288.Spec : Prop :=
  ∀ n, P4554118940390059288.a n = A217796 (n + 1)

end A217796

/-! ## A217796.P6518894951260812189

`or(A000007(n), A096172(A217795(n+1)))`
-/

namespace A217796.P6518894951260812189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A096172 (A217795 (n + 1)).toNat)

end

end A217796.P6518894951260812189

namespace A217796

/-- `or(A000007(n), A096172(A217795(n+1)))` -/
def P6518894951260812189.Spec : Prop :=
  ∀ n, P6518894951260812189.a n = A217796 (n + 1)

end A217796

/-! ## A217796.P12498051084682495007

`or(A057427(n), A096172(A217795(n+1)))`
-/

namespace A217796.P12498051084682495007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A096172 (A217795 (n + 1)).toNat)

end

end A217796.P12498051084682495007

namespace A217796

/-- `or(A057427(n), A096172(A217795(n+1)))` -/
def P12498051084682495007.Spec : Prop :=
  ∀ n, P12498051084682495007.a n = A217796 (n + 1)

end A217796

/-! ## A217796.P9843955846512693324

`A002523(∩[A000068(n+1)-2, A000068(n+1)])`
-/

namespace A217796.P9843955846512693324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A217796.P9843955846512693324

namespace A217796

/-- `A002523(∩[A000068(n+1)-2, A000068(n+1)])` -/
def P9843955846512693324.Spec : Prop :=
  ∀ n, P9843955846512693324.a n = A217796 (n + 1)

end A217796

/-! ## A217796.P14755230870752651927

`A053786(∩[A000068(n+1)-2, A000068(n+1)])`
-/

namespace A217796.P14755230870752651927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A217796.P14755230870752651927

namespace A217796

/-- `A053786(∩[A000068(n+1)-2, A000068(n+1)])` -/
def P14755230870752651927.Spec : Prop :=
  ∀ n, P14755230870752651927.a n = A217796 (n + 1)

end A217796

/-! ## A217796.P3214243330039305918

`A096172(∩[A000068(n+1)-2, A000068(n+1)])`
-/

namespace A217796.P3214243330039305918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A217796.P3214243330039305918

namespace A217796

/-- `A096172(∩[A000068(n+1)-2, A000068(n+1)])` -/
def P3214243330039305918.Spec : Prop :=
  ∀ n, P3214243330039305918.a n = A217796 (n + 1)

end A217796

/-!
# A217798: Numbers n such that n^2 + 1 and (n+1)^2 + 1 are divisible by a square.

The programs for A217798, there is no canonical definition to state claims against.
-/

/-! ## A217798.P11275140624727431328

`∩[A049532(n+1)-1, A049532(n+1)]`
-/

namespace A217798.P11275140624727431328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217798.P11275140624727431328

/-! ## A217798.P8055907205867838021

`∩[A049532(n+1), A057428(n+1)+A049532(n+1)]`
-/

namespace A217798.P8055907205867838021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217798.P8055907205867838021

/-! ## A217798.P15157520848802915392

`∩[A049532(n+1), A199969(A049532(n+1))]`
-/

namespace A217798.P15157520848802915392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A049532 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217798.P15157520848802915392

/-! ## A217798.P11135574460943142273

`∩[A171950(A049532(n+1)+1), A049532(n+1)]`
-/

namespace A217798.P11135574460943142273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A049532 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217798.P11135574460943142273

/-!
# A217799: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217799, there is no canonical definition to state claims against.
-/

/-! ## A217799.P16876435724561442662

`∏{e}[2^n, A123555(#)]`
-/

namespace A217799.P16876435724561442662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A123555 (Nat.factorization (f1 n) p)

end

end A217799.P16876435724561442662

/-! ## A217799.P3394264353886824635

`floor(A123555(n)+acot(n))`
-/

namespace A217799.P3394264353886824635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123555 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A217799.P3394264353886824635

/-! ## A217799.P7742174659854772108

`A123555(n)+A000007(n)`
-/

namespace A217799.P7742174659854772108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123555 n + A000007 n

end

end A217799.P7742174659854772108

/-! ## A217799.P12327034132146926488

`A123555(n)+A017880(n)`
-/

namespace A217799.P12327034132146926488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123555 n + A017880 n

end

end A217799.P12327034132146926488

/-! ## A217799.P7994892386025271099

`A123555(n)+A055641(n)`
-/

namespace A217799.P7994892386025271099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123555 n + A055641 n

end

end A217799.P7994892386025271099

