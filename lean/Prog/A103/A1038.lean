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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A103800: Indices n such that A019565(n)-2 is prime.

The programs for A103800, there is no canonical definition to state claims against.
-/

/-! ## A103800.P9982356785493082637

`eq[3, A103509(A019565(n))]`
-/

namespace A103800.P9982356785493082637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103800.P9982356785493082637

/-! ## A103800.P3426880744957211635

`eq[3, A103509(sqrt(A334110(n)))]`
-/

namespace A103800.P3426880744957211635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103800.P3426880744957211635

/-! ## A103800.P13703613874094573125

`eq[3, A103509(A339809(n)+1)]`
-/

namespace A103800.P13703613874094573125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (A339809 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103800.P13703613874094573125

/-! ## A103800.P7200362781807239540

`eq[2, A245715(sqrt(A334110(n)))]`
-/

namespace A103800.P7200362781807239540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245715 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103800.P7200362781807239540

/-! ## A103800.P4367511419605560743

`eq[2, A245715(A339809(n)+1)]`
-/

namespace A103800.P4367511419605560743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245715 (A339809 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103800.P4367511419605560743

/-!
# A103801: Indices n such that A019565(n)+/ -2 are both primes.

The programs for A103801, there is no canonical definition to state claims against.
-/

/-! ## A103801.P14150392925496455377

`∩[A103799(n+1), A103800(n+1)]`
-/

namespace A103801.P14150392925496455377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103801.P14150392925496455377

/-! ## A103801.P781192372087033187

`A002200(n+1)+∩[A002200(n+1), A174670(n+1)]`
-/

namespace A103801.P781192372087033187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A103801.P781192372087033187

/-! ## A103801.P3673983521273452107

`A002200(n+1)+∩[A002200(n+1), A276181(n+1)]`
-/

namespace A103801.P3673983521273452107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276181 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A103801.P3673983521273452107

/-! ## A103801.P4422047244545981625

`2*p?[record[A097873(n)]]`
-/

namespace A103801.P4422047244545981625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103801.P4422047244545981625

/-!
# A103802: Primes p such that 2p - 9 and 2p + 9 are both primes.

The programs for A103802, there is no canonical definition to state claims against.
-/

/-! ## A103802.P127877931974610345

`p?[A088769(n+1)]`
-/

namespace A103802.P127877931974610345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103802.P127877931974610345

/-! ## A103802.P9779582996142898656

`record[A002034(A087678(n+1))]`
-/

namespace A103802.P9779582996142898656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A087678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103802.P9779582996142898656

/-! ## A103802.P16389346427596455676

`filter[A088769(n+1), A010051(#)]`
-/

namespace A103802.P16389346427596455676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A103802.P16389346427596455676

/-! ## A103802.P5365656004071322474

`filter[A088769(n+1), A080339(#)]`
-/

namespace A103802.P5365656004071322474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A103802.P5365656004071322474

/-!
# A103803: Primes p such that both 2p - 15 and 2p + 15 are primes.

The programs for A103803, the canonical program `A103803.P168175832880173124` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103803 has offset 1).

The definition of A103803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103803.P12457571166131629374

`record[A020639((A049481(n+1)+15)/2)]`
-/

namespace A103803.P12457571166131629374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A049481 (n + 1) + 15 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103803.P12457571166131629374

namespace A103803

/-- `record[A020639((A049481(n+1)+15)/2)]` -/
def P12457571166131629374.Spec : Prop :=
  ∀ n, P12457571166131629374.a n = A103803 (n + 1)

end A103803

/-! ## A103803.P16872538164175585286

`record[A088387((A049481(n+1)+15)/2)]`
-/

namespace A103803.P16872538164175585286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (SequenceMachineLib.roundAway ((A049481 (n + 1) + 15 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103803.P16872538164175585286

namespace A103803

/-- `record[A088387((A049481(n+1)+15)/2)]` -/
def P16872538164175585286.Spec : Prop :=
  ∀ n, P16872538164175585286.a n = A103803 (n + 1)

end A103803

/-! ## A103803.P168175832880173124

`record[A006530(A049481(n+1)+15)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A103803

/-- `record[A006530(A049481(n+1)+15)]` -/
def P168175832880173124.Spec : Prop :=
  ∀ n, P168175832880173124.a n = A103803 (n + 1)

theorem P168175832880173124.correct : P168175832880173124.Spec := by
  intro n
  simp only [A103803, Nat.add_sub_cancel]

end A103803

/-! ## A103803.P17632314431493577763

`p?[A322982(A049481(n+1)+15)]`
-/

namespace A103803.P17632314431493577763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A049481 (n + 1) + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103803.P17632314431493577763

namespace A103803

/-- `p?[A322982(A049481(n+1)+15)]` -/
def P17632314431493577763.Spec : Prop :=
  ∀ n, P17632314431493577763.a n = A103803 (n + 1)

end A103803

/-! ## A103803.P17784247760859708365

`p?[eq[A212595(n+2), A223175(n)]]`
-/

namespace A103803.P17784247760859708365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212595 (n + 2 + 10)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223175 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A103803.P17784247760859708365

namespace A103803

/-- `p?[eq[A212595(n+2), A223175(n)]]` -/
def P17784247760859708365.Spec : Prop :=
  ∀ n, (P17784247760859708365.a n : ℤ) = A103803 (n + 1)

end A103803

/-! ## A103803.P17198414804462786376

`p?[A004526(A049481(n+1)+15)]`
-/

namespace A103803.P17198414804462786376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049481 (n + 1) + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103803.P17198414804462786376

namespace A103803

/-- `p?[A004526(A049481(n+1)+15)]` -/
def P17198414804462786376.Spec : Prop :=
  ∀ n, P17198414804462786376.a n = A103803 (n + 1)

end A103803

/-! ## A103803.P14561118499585731392

`p?[A123108(A049481(n+1)+15)]`
-/

namespace A103803.P14561118499585731392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A049481 (n + 1) + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103803.P14561118499585731392

namespace A103803

/-- `p?[A123108(A049481(n+1)+15)]` -/
def P14561118499585731392.Spec : Prop :=
  ∀ n, P14561118499585731392.a n = A103803 (n + 1)

end A103803

/-!
# A103804: Primes p such that both 2p +/ - 21 are primes.

The programs for A103804, there is no canonical definition to state claims against.
-/

/-! ## A103804.P3821386367913992443

`p?[A004526(A271982(n+1))+11]`
-/

namespace A103804.P3821386367913992443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A271982 (n + 1)).toNat + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103804.P3821386367913992443

/-!
# A103805: Primes p such that 2*p - 27 and 2*p + 27 are positive primes.

The programs for A103805, there is no canonical definition to state claims against.
-/

/-! ## A103805.P6667054573425120384

`A118751(or(A038548(n+1), A061645(n+1)))`
-/

namespace A103805.P6667054573425120384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (Int.lor (A038548 (n + 1)) (A061645 (n + 1))).toNat

end

end A103805.P6667054573425120384

/-! ## A103805.P4693887667266706638

`A118751(or(A061645(n+1), A201733(n+1)))`
-/

namespace A103805.P4693887667266706638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (Int.lor (A061645 (n + 1)) (A201733 (n + 1))).toNat

end

end A103805.P4693887667266706638

/-! ## A103805.P803269003252982176

`A118751(or(A061645(n+1), A332741(n+1)))`
-/

namespace A103805.P803269003252982176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (Int.lor (A061645 (n + 1)) (A332741 (n + 1))).toNat

end

end A103805.P803269003252982176

/-!
# A103806: Primes p such that 2p - 33 and 2p + 33 are both primes.

The programs for A103806, there is no canonical definition to state claims against.
-/

/-! ## A103806.P283962197925659779

`record[p?[A195109(n+1)-8]]`
-/

namespace A103806.P283962197925659779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (n + 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103806.P283962197925659779

/-! ## A103806.P4775817225367174582

`p?[∑[A001227(A259325(n))]]`
-/

namespace A103806.P4775817225367174582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A259325 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103806.P4775817225367174582

/-! ## A103806.P10115499404972181639

`record[A006530(A066926(5*n+2))]`
-/

namespace A103806.P10115499404972181639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066926 (5 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103806.P10115499404972181639

/-! ## A103806.P7968584894629879044

`record[A060308(n+1)/A291119(2*n+3)]`
-/

namespace A103806.P7968584894629879044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060308 (n + 1) : ℚ) / (A291119 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103806.P7968584894629879044

/-!
# A103807: Primes p such that 2*p-27, 2*p+27, 2*p-33 and 2*p+33 are primes or -1 times primes.

The programs for A103807, there is no canonical definition to state claims against.
-/

/-! ## A103807.P6957227760114959363

`A241686(A042417(n)+A020111(n))`
-/

namespace A103807.P6957227760114959363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (A042417 n + A020111 n).toNat

end

end A103807.P6957227760114959363

/-! ## A103807.P7448071562783051644

`A303739(2^n+2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A103807.P7448071562783051644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303739 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) + (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A103807.P7448071562783051644

/-!
# A103813: Partial sums of A102370.

The programs for A103813, there is no canonical definition to state claims against.
-/

/-! ## A103813.P3612914110615231672

`∑[A102370(n)]`
-/

namespace A103813.P3612914110615231672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P3612914110615231672

/-! ## A103813.P1987525744644447840

`∑[A105023(n)+n]`
-/

namespace A103813.P1987525744644447840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P1987525744644447840

/-! ## A103813.P3109349603308316482

`∑[A105228(n+1)-1]`
-/

namespace A103813.P3109349603308316482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P3109349603308316482

/-! ## A103813.P8633445530880229260

`∑[2*A103185(n)+n]`
-/

namespace A103813.P8633445530880229260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P8633445530880229260

/-! ## A103813.P1844516676447852793

`∑[∑[A104378(abs(1-n))]-2]-(n+1)`
-/

namespace A103813.P1844516676447852793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A103813.P1844516676447852793

/-! ## A103813.P15103776675751206221

`∑[A005843(A103185(n))+n]`
-/

namespace A103813.P15103776675751206221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A103185 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P15103776675751206221

/-! ## A103813.P4509015739884443986

`∑[∑[A104378(n)]-A104378(n)]`
-/

namespace A103813.P4509015739884443986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P4509015739884443986

/-! ## A103813.P10433659056664534587

`∑[A047540(A103185(n)+1)+n]`
-/

namespace A103813.P10433659056664534587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (A103185 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P10433659056664534587

/-! ## A103813.P1731254339705050576

`∑[A023443(n)+A005408(A103185(n))]`
-/

namespace A103813.P1731254339705050576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A005408 (A103185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P1731254339705050576

/-! ## A103813.P15220787214847046496

`∑[(2*A103185(n)-A001489(n))%A008778(n)]`
-/

namespace A103813.P15220787214847046496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A103185 n - A001489 n) (A008778 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P15220787214847046496

/-! ## A103813.P16177001898010836834

`∑[(A103185(n)+A103185(n)+n)%A017017(n)]`
-/

namespace A103813.P16177001898010836834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103185 n + (A103185 n + (n : ℤ))) (A017017 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P16177001898010836834

/-! ## A103813.P16901601227841453215

`A024000(n+2)+∑[A105228(n+1)]`
-/

namespace A103813.P16901601227841453215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P16901601227841453215

/-! ## A103813.P661662906903994545

`∑[A105027(record[(n+1)%(1-A246601(n+2))])]`
-/

namespace A103813.P661662906903994545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (1 - A246601 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P661662906903994545

/-! ## A103813.P14067206361221774085

`∑[A023443(A105228(n+1))]`
-/

namespace A103813.P14067206361221774085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103813.P14067206361221774085

/-!
# A103815: a(n) = -1 + Product_{k=1..n} Fibonacci(k).

The programs for A103815, there is no canonical definition to state claims against.
-/

/-! ## A103815.P17336447673175472454

`A003266(n+1)-1`
-/

namespace A103815.P17336447673175472454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 1) - 1

end

end A103815.P17336447673175472454

/-! ## A103815.P8793909285661602654

`∏[a(n-1)+a(n-2)]-1` with `a(0)=1, a(1)=1`
-/

namespace A103815.P8793909285661602654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A103815.P8793909285661602654

/-! ## A103815.P8693017260364484171

`∑[abs(Δ[A003266(n)])]`
-/

namespace A103815.P8693017260364484171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103815.P8693017260364484171

/-! ## A103815.P14295866925640334963

`A052449(n+1)-2`
-/

namespace A103815.P14295866925640334963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052449 (n + 1) - 2

end

end A103815.P14295866925640334963

/-! ## A103815.P13520296572115976442

`∏[∑[A212804(n)]]-1`
-/

namespace A103815.P13520296572115976442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103815.P13520296572115976442

/-!
# A103816: Numerator of Sum_{k=1..n} (-1)^(k+1)/k!.

The programs for A103816, there is no canonical definition to state claims against.
-/

/-! ## A103816.P11241190614456489882

`A053556(n)-A053557(n)`
-/

namespace A103816.P11241190614456489882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053556 n - A053557 n

end

end A103816.P11241190614456489882

/-! ## A103816.P9374749108671730847

`A002467(n)/gcd(A000166(n), A002467(n))`
-/

namespace A103816.P9374749108671730847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002467 n : ℚ) / (Int.gcd (A000166 n) (A002467 n) : ℚ)

end

end A103816.P9374749108671730847

/-! ## A103816.P13179871251337297636

`A002467(n)/A000142(n)*A053556(n)`
-/

namespace A103816.P13179871251337297636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002467 n : ℚ) / (A000142 n : ℚ) * (A053556 n : ℚ)

end

end A103816.P13179871251337297636

/-! ## A103816.P13967061068239835351

`A002467(n)/gcd(A001120(n), A133942(n))`
-/

namespace A103816.P13967061068239835351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002467 n : ℚ) / (Int.gcd (A001120 n) (A133942 n) : ℚ)

end

end A103816.P13967061068239835351

/-! ## A103816.P4012760572611997047

`A002467(n)/gcd(A000142(n), A182386(n))`
-/

namespace A103816.P4012760572611997047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002467 n : ℚ) / (Int.gcd (A000142 n) (A182386 n) : ℚ)

end

end A103816.P4012760572611997047

/-! ## A103816.P17005805469037104673

`A002467(n)/gcd(A001563(n), A110043(n))`
-/

namespace A103816.P17005805469037104673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002467 n : ℚ) / (Int.gcd (A001563 n) (A110043 n) : ℚ)

end

end A103816.P17005805469037104673

/-!
# A103817: m values for A103966.

The programs for A103817, there is no canonical definition to state claims against.
-/

/-! ## A103817.P4095274999725027171

`A087103(A076342(n+1))`
-/

namespace A103817.P4095274999725027171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A076342 (n + 1)).toNat

end

end A103817.P4095274999725027171

/-! ## A103817.P15082563971673378872

`A087103(A065514(n+2))`
-/

namespace A103817.P15082563971673378872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A065514 (n + 2)).toNat

end

end A103817.P15082563971673378872

/-! ## A103817.P14598805535254616507

`A087103(floor(sqrt(A200185(n+1))))`
-/

namespace A103817.P14598805535254616507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (Int.sqrt (A200185 (n + 1))).toNat

end

end A103817.P14598805535254616507

/-! ## A103817.P3363521498344960698

`A087103(∑[A166594(n+1)]+1)`
-/

namespace A103817.P3363521498344960698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A103817.P3363521498344960698

/-! ## A103817.P1728020733131961169

`A087104(∑[A353296(n+1)+1])`
-/

namespace A103817.P1728020733131961169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353296 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103817.P1728020733131961169

/-! ## A103817.P1544673239667810704

`A087103(A010054(n)+A000040(n+1))`
-/

namespace A103817.P1544673239667810704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A010054 n + A000040 (n + 1)).toNat

end

end A103817.P1544673239667810704

/-! ## A103817.P10769136078078207274

`A087103(A000040(n+1)+A010892(n)²)`
-/

namespace A103817.P10769136078078207274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A000040 (n + 1) + A010892 n ^ 2).toNat

end

end A103817.P10769136078078207274

/-! ## A103817.P6272103910059149363

`A087103(A010054(n)+record[A014963(n+2)])`
-/

namespace A103817.P6272103910059149363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A010054 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103817.P6272103910059149363

/-! ## A103817.P11060063855163149424

`A087103(A010054(n)+record[A020639(n+2)])`
-/

namespace A103817.P11060063855163149424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A010054 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103817.P11060063855163149424

/-! ## A103817.P14953565454187693714

`A087103(A025451(n)+record[A006530(n+2)])`
-/

namespace A103817.P14953565454187693714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A025451 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103817.P14953565454187693714

/-! ## A103817.P18358206478090061795

`A087103(A066829(n+1)+A000040(n+1))`
-/

namespace A103817.P18358206478090061795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A066829 (n + 1) + A000040 (n + 1)).toNat

end

end A103817.P18358206478090061795

/-! ## A103817.P5668385045185657065

`A087103(A052147(n+1)-A038500(n+1))`
-/

namespace A103817.P5668385045185657065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A052147 (n + 1) - A038500 (n + 1)).toNat

end

end A103817.P5668385045185657065

/-! ## A103817.P2125664195731765387

`A087103(A066829(n+1)+record[A006530(n+2)])`
-/

namespace A103817.P2125664195731765387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A066829 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103817.P2125664195731765387

/-! ## A103817.P8992589915662191245

`A087103(A000040(n+1)+1-A010892(n+1))`
-/

namespace A103817.P8992589915662191245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087103 (A000040 (n + 1) + 1 - A010892 (n + 1)).toNat

end

end A103817.P8992589915662191245

/-!
# A103819: Whitney transform of Jacobsthal numbers.

The programs for A103819, the canonical program `A103819.P12418078574880244936` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103819 has offset 0).

The definition of A103819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103819.P12418078574880244936

`2*a(n-1)+2*a(n-2)+a(n-3)-2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8, a(4)=23`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103819

/-- `2*a(n-1)+2*a(n-2)+a(n-3)-2*a(n-4)-2*a(n-5)` -/
def P12418078574880244936.Spec : Prop :=
  ∀ n, P12418078574880244936.a n = A103819 n

theorem P12418078574880244936.correct : P12418078574880244936.Spec := by
  intro n
  simp only [A103819]

end A103819

/-! ## A103819.P12064712409886510677

`n²%3+2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A103819.P12064712409886510677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  n ^ 2 % 3 + 2 * (a (n - 1) + a (n - 2))

end

end A103819.P12064712409886510677

namespace A103819

/-- `n²%3+2*(a(n-1)+a(n-2))` -/
def P12064712409886510677.Spec : Prop :=
  ∀ n, (P12064712409886510677.a n : ℤ) = A103819 n

end A103819

/-! ## A103819.P9560430943057590451

`∑[ceil(A005665(n)/3)]`
-/

namespace A103819.P9560430943057590451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005665 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103819.P9560430943057590451

namespace A103819

/-- `∑[ceil(A005665(n)/3)]` -/
def P9560430943057590451.Spec : Prop :=
  ∀ n, P9560430943057590451.a n = A103819 n

end A103819

/-! ## A103819.P9373214109491345696

`floor(∑[2*(a(n-1)+a(n-2))]/3)` with `a(0)=1, a(1)=2`
-/

namespace A103819.P9373214109491345696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A103819.P9373214109491345696

namespace A103819

/-- `floor(∑[2*(a(n-1)+a(n-2))]/3)` -/
def P9373214109491345696.Spec : Prop :=
  ∀ n, P9373214109491345696.a n = A103819 n

end A103819

/-! ## A103819.P2421507339124971285

`floor(A077846(n)/3)`
-/

namespace A103819.P2421507339124971285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077846 n : ℚ) / 3⌋

end

end A103819.P2421507339124971285

namespace A103819

/-- `floor(A077846(n)/3)` -/
def P2421507339124971285.Spec : Prop :=
  ∀ n, P2421507339124971285.a n = A103819 n

end A103819

/-! ## A103819.P8363372355197219926

`floor(A052948(n+2)/6)`
-/

namespace A103819.P8363372355197219926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052948 (n + 2) : ℚ) / 6⌋

end

end A103819.P8363372355197219926

namespace A103819

/-- `floor(A052948(n+2)/6)` -/
def P8363372355197219926.Spec : Prop :=
  ∀ n, P8363372355197219926.a n = A103819 n

end A103819

/-! ## A103819.P7615022012045445456

`floor(∑[∑[A026150(n)]]/3)`
-/

namespace A103819.P7615022012045445456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A103819.P7615022012045445456

namespace A103819

/-- `floor(∑[∑[A026150(n)]]/3)` -/
def P7615022012045445456.Spec : Prop :=
  ∀ n, P7615022012045445456.a n = A103819 n

end A103819

/-! ## A103819.P16620264251427273027

`floor(∑[A002605(n+1)]/3)`
-/

namespace A103819.P16620264251427273027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A103819.P16620264251427273027

namespace A103819

/-- `floor(∑[A002605(n+1)]/3)` -/
def P16620264251427273027.Spec : Prop :=
  ∀ n, P16620264251427273027.a n = A103819 n

end A103819

/-! ## A103819.P9186170975728180712

`floor(abs(3-2*(∑[A155020(n)]+1))/3)`
-/

namespace A103819.P9186170975728180712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((|3 - 2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)| : ℤ) : ℚ) / 3⌋

end

end A103819.P9186170975728180712

namespace A103819

/-- `floor(abs(3-2*(∑[A155020(n)]+1))/3)` -/
def P9186170975728180712.Spec : Prop :=
  ∀ n, P9186170975728180712.a n = A103819 n

end A103819

/-! ## A103819.P3638417537509152004

`floor(∑[A028859(n)-A002605(n)]/3)`
-/

namespace A103819.P3638417537509152004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A103819.P3638417537509152004

namespace A103819

/-- `floor(∑[A028859(n)-A002605(n)]/3)` -/
def P3638417537509152004.Spec : Prop :=
  ∀ n, P3638417537509152004.a n = A103819 n

end A103819

/-! ## A103819.P13080383127426004170

`∑[round(A155020(n+2)%A028859(n)/3)]`
-/

namespace A103819.P13080383127426004170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (A155020 (n + 2)) (A028859 n) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103819.P13080383127426004170

namespace A103819

/-- `∑[round(A155020(n+2)%A028859(n)/3)]` -/
def P13080383127426004170.Spec : Prop :=
  ∀ n, P13080383127426004170.a n = A103819 n

end A103819

/-! ## A103819.P3444581615910164274

`floor(A026150(n+2)/9)`
-/

namespace A103819.P3444581615910164274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026150 (n + 2) : ℚ) / 9⌋

end

end A103819.P3444581615910164274

namespace A103819

/-- `floor(A026150(n+2)/9)` -/
def P3444581615910164274.Spec : Prop :=
  ∀ n, P3444581615910164274.a n = A103819 n

end A103819

/-! ## A103819.P5179182373659840763

`floor(A080040(n+2)/18)`
-/

namespace A103819.P5179182373659840763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080040 (n + 2) : ℚ) / 18⌋

end

end A103819.P5179182373659840763

namespace A103819

/-- `floor(A080040(n+2)/18)` -/
def P5179182373659840763.Spec : Prop :=
  ∀ n, P5179182373659840763.a n = A103819 n

end A103819

/-!
# A103820: Whitney transform of 3^n.

The programs for A103820, the canonical program `A103820.P10871930075528300940` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103820 has offset 0).

The definition of A103820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103820.P10871930075528300940

`3*(a(n-1)+a(n-2))+1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103820

/-- `3*(a(n-1)+a(n-2))+1` -/
def P10871930075528300940.Spec : Prop :=
  ∀ n, (P10871930075528300940.a n : ℤ) = A103820 n

theorem P10871930075528300940.correct : P10871930075528300940.Spec := by
  intro n
  simp only [A103820]

end A103820

/-! ## A103820.P2814470572582498385

`4*a(n-1)-3*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A103820.P2814470572582498385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  4 * a (n - 1) - 3 * a (n - 3)

end

end A103820.P2814470572582498385

namespace A103820

/-- `4*a(n-1)-3*a(n-3)` -/
def P2814470572582498385.Spec : Prop :=
  ∀ n, P2814470572582498385.a n = A103820 n

end A103820

/-! ## A103820.P5288444338376871348

`ogf(1/(1-4x+3x^3))`
-/

namespace A103820.P5288444338376871348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 0, 3] n

end

end A103820.P5288444338376871348

namespace A103820

/-- `ogf(1/(1-4x+3x^3))` -/
def P5288444338376871348.Spec : Prop :=
  ∀ n, P5288444338376871348.a n = A103820 n

end A103820

/-! ## A103820.P5800100880862607579

`∑[3*(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=3`
-/

namespace A103820.P5800100880862607579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103820.P5800100880862607579

namespace A103820

/-- `∑[3*(a(n-1)+a(n-2))]` -/
def P5800100880862607579.Spec : Prop :=
  ∀ n, (P5800100880862607579.a n : ℤ) = A103820 n

end A103820

/-! ## A103820.P9512090918160070956

`∑[∑[A202206(n)]]`
-/

namespace A103820.P9512090918160070956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103820.P9512090918160070956

namespace A103820

/-- `∑[∑[A202206(n)]]` -/
def P9512090918160070956.Spec : Prop :=
  ∀ n, P9512090918160070956.a n = A103820 n

end A103820

/-! ## A103820.P17490319343712146353

`∑[A030195(n+1)]`
-/

namespace A103820.P17490319343712146353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103820.P17490319343712146353

namespace A103820

/-- `∑[A030195(n+1)]` -/
def P17490319343712146353.Spec : Prop :=
  ∀ n, P17490319343712146353.a n = A103820 n

end A103820

/-! ## A103820.P10183378613669589510

`∑[∑[A271318(2*n)]]`
-/

namespace A103820.P10183378613669589510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271318 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103820.P10183378613669589510

namespace A103820

/-- `∑[∑[A271318(2*n)]]` -/
def P10183378613669589510.Spec : Prop :=
  ∀ n, P10183378613669589510.a n = A103820 n

end A103820

/-! ## A103820.P3494005364143978390

`∑[A106435(n+1)/3]`
-/

namespace A103820.P3494005364143978390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106435 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103820.P3494005364143978390

namespace A103820

/-- `∑[A106435(n+1)/3]` -/
def P3494005364143978390.Spec : Prop :=
  ∀ n, P3494005364143978390.a n = (A103820 n : ℚ)

end A103820

/-! ## A103820.P7209964866747436038

`A125145(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A103820.P7209964866747436038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A125145 n + a (n - 2)

end

end A103820.P7209964866747436038

namespace A103820

/-- `A125145(n)+a(n-2)` -/
def P7209964866747436038.Spec : Prop :=
  ∀ n, P7209964866747436038.a n = A103820 n

end A103820

/-! ## A103820.P4142693069839292497

`A123620(n)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A103820.P4142693069839292497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  A123620 n + a (n - 3)

end

end A103820.P4142693069839292497

namespace A103820

/-- `A123620(n)+a(n-3)` -/
def P4142693069839292497.Spec : Prop :=
  ∀ n, P4142693069839292497.a n = A103820 n

end A103820

/-! ## A103820.P122114740874201203

`A108306(n)+A134927(n)-A196472(n+1)`
-/

namespace A103820.P122114740874201203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 n + (A134927 n - A196472 (n + 1))

end

end A103820.P122114740874201203

namespace A103820

/-- `A108306(n)+A134927(n)-A196472(n+1)` -/
def P122114740874201203.Spec : Prop :=
  ∀ n, P122114740874201203.a n = A103820 n

end A103820

/-! ## A103820.P6073832604864233957

`A134927(n+1)+A134927(n)-A196472(n+1)`
-/

namespace A103820.P6073832604864233957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134927 (n + 1) + (A134927 n - A196472 (n + 1))

end

end A103820.P6073832604864233957

namespace A103820

/-- `A134927(n+1)+A134927(n)-A196472(n+1)` -/
def P6073832604864233957.Spec : Prop :=
  ∀ n, P6073832604864233957.a n = A103820 n

end A103820

/-!
# A103821: A Whitney transform of the central binomial coefficients A000984.

The programs for A103821, there is no canonical definition to state claims against.
-/

/-! ## A103821.P12292594772613712406

`∑[A006139(n)]`
-/

namespace A103821.P12292594772613712406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103821.P12292594772613712406

/-! ## A103821.P8726557985284186647

`∑[2*A179191(n)]+1`
-/

namespace A103821.P8726557985284186647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A103821.P8726557985284186647

/-! ## A103821.P8282581539215737928

`a(n-1)+A006139(n)-A000007(n)` with `a(0)=1, a(1)=3`
-/

namespace A103821.P8282581539215737928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (A006139 n - A000007 n)

end

end A103821.P8282581539215737928

/-! ## A103821.P6520609398361379955

`∑[A179191(A028310(n))+A179191(n)]`
-/

namespace A103821.P6520609398361379955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179191 (A028310 n).toNat + A179191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103821.P6520609398361379955

/-! ## A103821.P5652216646508367028

`∑[A084606(∑[2*n])]`
-/

namespace A103821.P5652216646508367028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103821.P5652216646508367028

/-! ## A103821.P15435719845587854533

`∑[A307910(∑[n+3])]`
-/

namespace A103821.P15435719845587854533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307910 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103821.P15435719845587854533

/-! ## A103821.P6156705214447808746

`∑[A257365(∑[4*n])]`
-/

namespace A103821.P6156705214447808746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103821.P6156705214447808746

/-!
# A103822: Table of "minimum oddness" operation.

The programs for A103822, there is no canonical definition to state claims against.
-/

/-! ## A103822.P14819264517463582507

`∑[char[∑[n+1]]]-A103823(n)`
-/

namespace A103822.P14819264517463582507
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A103823 n

end

end A103822.P14819264517463582507

/-! ## A103822.P977144429632240674

`xor(A003987(n), A103823(n))`
-/

namespace A103822.P977144429632240674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A103823 n)

end

end A103822.P977144429632240674

/-! ## A103822.P14873960832233819800

`abs(A003056(n)-A103823(n))`
-/

namespace A103822.P14873960832233819800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 n - A103823 n|

end

end A103822.P14873960832233819800

/-! ## A103822.P17972341212345287391

`∑[A010054(n)]-(A103823(n)+1)`
-/

namespace A103822.P17972341212345287391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A103823 n + 1)

end

end A103822.P17972341212345287391

/-! ## A103822.P13689721678741982248

`A002024(n+1)-(A103823(n)+1)`
-/

namespace A103822.P13689721678741982248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (A103823 n + 1)

end

end A103822.P13689721678741982248

/-! ## A103822.P1663604024064293596

`abs(∑[A000005(8*n+1)%2]-1-A103823(n))`
-/

namespace A103822.P1663604024064293596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (8 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1 - A103823 n|

end

end A103822.P1663604024064293596

/-! ## A103822.P15453892116082567274

`abs(A002260(n+1)+A004736(n+1)-2-A103823(n))`
-/

namespace A103822.P15453892116082567274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) + (A004736 (n + 1) - 2) - A103823 n|

end

end A103822.P15453892116082567274

/-! ## A103822.P12441036244740396040

`A025581(A103823(n)+A057944(n))`
-/

namespace A103822.P12441036244740396040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A103823 n + A057944 n).toNat

end

end A103822.P12441036244740396040

/-!
# A103823: Table of "maximum oddness" operation.

The programs for A103823, there is no canonical definition to state claims against.
-/

/-! ## A103823.P12255712088468634274

`∑[char[∑[n+1]]]-A103822(n)`
-/

namespace A103823.P12255712088468634274
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A103822 n

end

end A103823.P12255712088468634274

/-! ## A103823.P4138813952527047730

`xor(A003987(n), A103822(n))`
-/

namespace A103823.P4138813952527047730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A103822 n)

end

end A103823.P4138813952527047730

/-! ## A103823.P17305169158527813581

`abs(A003056(n)-A103822(n))`
-/

namespace A103823.P17305169158527813581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 n - A103822 n|

end

end A103823.P17305169158527813581

/-! ## A103823.P1772219361112247440

`∑[A010054(n)]-(A103822(n)+1)`
-/

namespace A103823.P1772219361112247440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A103822 n + 1)

end

end A103823.P1772219361112247440

/-! ## A103823.P915925402598126140

`A002024(n+1)-(A103822(n)+1)`
-/

namespace A103823.P915925402598126140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (A103822 n + 1)

end

end A103823.P915925402598126140

/-! ## A103823.P6540061326520469186

`abs(∑[A000005(8*n+1)%2]-1-A103822(n))`
-/

namespace A103823.P6540061326520469186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (8 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1 - A103822 n|

end

end A103823.P6540061326520469186

/-! ## A103823.P72158121825420732

`abs(A002260(n+1)+A004736(n+1)-2-A103822(n))`
-/

namespace A103823.P72158121825420732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) + (A004736 (n + 1) - 2) - A103822 n|

end

end A103823.P72158121825420732

/-! ## A103823.P4497356728472222916

`gcd(A004247(n), A355246(n))`
-/

namespace A103823.P4497356728472222916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A355246 n)

end

end A103823.P4497356728472222916

/-!
# A103824: Choose a(n) to be the smallest number not yet used such that: a(1) = 1, a(2*n) = prime, a(2*n+1) = composite and partial sums are alternately composite or prime.

The programs for A103824, there is no canonical definition to state claims against.
-/

/-! ## A103824.P4369902871668234113

`(Δ[A089733(n^floor(atan(n)))]-1)%(n+1)²+1`
-/

namespace A103824.P4369902871668234113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) ((n + 1) ^ 2 : ℤ) + 1

end

end A103824.P4369902871668234113

/-! ## A103824.P9322821952542656682

`char[54*n]+Δ[A089733(A028310(n))]`
-/

namespace A103824.P9322821952542656682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A103824.P9322821952542656682

/-! ## A103824.P8959388632032099961

`Δ[A089733(A004277(n)-n)-ceil(acot(n))]`
-/

namespace A103824.P8959388632032099961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (A004277 n - (n : ℤ)).toNat - ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103824.P8959388632032099961

/-! ## A103824.P11230829238330205

`Δ[A089733(A028310(n))+A057427(n)]`
-/

namespace A103824.P11230829238330205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103824.P11230829238330205

/-! ## A103824.P11984080184555133351

`Δ[A089733(A028310(n))-A054977(n)]`
-/

namespace A103824.P11984080184555133351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103824.P11984080184555133351

/-! ## A103824.P7779797704972350400

`Δ[A089733(A028310(n))]+A000038(n)/2`
-/

namespace A103824.P7779797704972350400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A000038 n : ℚ) / 2

end

end A103824.P7779797704972350400

/-! ## A103824.P15411538809315089406

`Δ[A089733(A004277(n)-n)%A007261(n)]`
-/

namespace A103824.P15411538809315089406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089733 (A004277 n - (n : ℤ)).toNat) (A007261 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103824.P15411538809315089406

/-! ## A103824.P12547748648554463711

`Δ[A089733(A028310(n))-A014963(4*n+2)]`
-/

namespace A103824.P12547748648554463711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (A028310 n).toNat - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103824.P12547748648554463711

/-! ## A103824.P2051357075492948236

`Δ[A089733(A028310(n))+A000040(n+1)%2]`
-/

namespace A103824.P2051357075492948236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089733 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103824.P2051357075492948236

/-!
# A103826: Unitary arithmetic numbers (those for which the arithmetic mean of the unitary divisors is an integer).

The programs for A103826, the canonical program `A103826.P3351314862640777646` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103826 has offset 1).

The definition of A103826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103826.P10547835907734141022

`comp[2*A069011(n)]`
-/

namespace A103826.P10547835907734141022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P10547835907734141022

namespace A103826

/-- `comp[2*A069011(n)]` -/
def P10547835907734141022.Spec : Prop :=
  ∀ n, (P10547835907734141022.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P4480230382634038275

`comp[A163531(2*n)]`
-/

namespace A103826.P4480230382634038275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P4480230382634038275

namespace A103826

/-- `comp[A163531(2*n)]` -/
def P4480230382634038275.Spec : Prop :=
  ∀ n, (P4480230382634038275.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P18415516600137590030

`comp[A163547(2*n)]`
-/

namespace A103826.P18415516600137590030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P18415516600137590030

namespace A103826

/-- `comp[A163547(2*n)]` -/
def P18415516600137590030.Spec : Prop :=
  ∀ n, (P18415516600137590030.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P13857291832324946075

`comp[2*A373710(n)]`
-/

namespace A103826.P13857291832324946075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A373710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P13857291832324946075

namespace A103826

/-- `comp[2*A373710(n)]` -/
def P13857291832324946075.Spec : Prop :=
  ∀ n, (P13857291832324946075.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P8161613401919163333

`comp[2*A001481(n+1)]`
-/

namespace A103826.P8161613401919163333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P8161613401919163333

namespace A103826

/-- `comp[2*A001481(n+1)]` -/
def P8161613401919163333.Spec : Prop :=
  ∀ n, (P8161613401919163333.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P765283206118287429

`comp[lcm(2, A020668(n+1))]`
-/

namespace A103826.P765283206118287429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A020668 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A103826.P765283206118287429

namespace A103826

/-- `comp[lcm(2, A020668(n+1))]` -/
def P765283206118287429.Spec : Prop :=
  ∀ n, (P765283206118287429.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P17834483405260926265

`comp[2*eq[0, A070176(n)]]`
-/

namespace A103826.P17834483405260926265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A103826.P17834483405260926265

namespace A103826

/-- `comp[2*eq[0, A070176(n)]]` -/
def P17834483405260926265.Spec : Prop :=
  ∀ n, (P17834483405260926265.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P15338494420937101493

`comp[2*n*A229062(n)]`
-/

namespace A103826.P15338494420937101493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A229062 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P15338494420937101493

namespace A103826

/-- `comp[2*n*A229062(n)]` -/
def P15338494420937101493.Spec : Prop :=
  ∀ n, (P15338494420937101493.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P882421088005100793

`comp[2*comp[A022544(n+1)]]`
-/

namespace A103826.P882421088005100793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A103826.P882421088005100793

namespace A103826

/-- `comp[2*comp[A022544(n+1)]]` -/
def P882421088005100793.Spec : Prop :=
  ∀ n, (P882421088005100793.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P12361485270275956713

`comp[2*(A166687(n+1)-1)]`
-/

namespace A103826.P12361485270275956713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166687 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P12361485270275956713

namespace A103826

/-- `comp[2*(A166687(n+1)-1)]` -/
def P12361485270275956713.Spec : Prop :=
  ∀ n, (P12361485270275956713.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P1389846137530891552

`∪[A022544(n+1), A016813(n)]`
-/

namespace A103826.P1389846137530891552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P1389846137530891552

namespace A103826

/-- `∪[A022544(n+1), A016813(n)]` -/
def P1389846137530891552.Spec : Prop :=
  ∀ n, (P1389846137530891552.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P7826590767765387656

`∪[A022544(n+1), A047438(n+1)]`
-/

namespace A103826.P7826590767765387656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P7826590767765387656

namespace A103826

/-- `∪[A022544(n+1), A047438(n+1)]` -/
def P7826590767765387656.Spec : Prop :=
  ∀ n, (P7826590767765387656.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P11317137487299386658

`∪[A022544(n+1), A047445(n+1)]`
-/

namespace A103826.P11317137487299386658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P11317137487299386658

namespace A103826

/-- `∪[A022544(n+1), A047445(n+1)]` -/
def P11317137487299386658.Spec : Prop :=
  ∀ n, (P11317137487299386658.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P15232075291523710102

`∪[A022544(n+1), A047478(n+1)]`
-/

namespace A103826.P15232075291523710102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P15232075291523710102

namespace A103826

/-- `∪[A022544(n+1), A047478(n+1)]` -/
def P15232075291523710102.Spec : Prop :=
  ∀ n, (P15232075291523710102.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P11511009450814567768

`∪[A022544(n+1), A047576(n+1)]`
-/

namespace A103826.P11511009450814567768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P11511009450814567768

namespace A103826

/-- `∪[A022544(n+1), A047576(n+1)]` -/
def P11511009450814567768.Spec : Prop :=
  ∀ n, (P11511009450814567768.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P3687630085949422339

`∪[A022544(n+1), A047584(n+1)]`
-/

namespace A103826.P3687630085949422339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P3687630085949422339

namespace A103826

/-- `∪[A022544(n+1), A047584(n+1)]` -/
def P3687630085949422339.Spec : Prop :=
  ∀ n, (P3687630085949422339.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P6447833747038714233

`∪[A022544(n+1), A047623(n+1)]`
-/

namespace A103826.P6447833747038714233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P6447833747038714233

namespace A103826

/-- `∪[A022544(n+1), A047623(n+1)]` -/
def P6447833747038714233.Spec : Prop :=
  ∀ n, (P6447833747038714233.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P17940367994268848043

`∪[A022544(n+1), A057653(n+1)]`
-/

namespace A103826.P17940367994268848043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103826.P17940367994268848043

namespace A103826

/-- `∪[A022544(n+1), A057653(n+1)]` -/
def P17940367994268848043.Spec : Prop :=
  ∀ n, (P17940367994268848043.a n : ℤ) = A103826 (n + 1)

end A103826

/-! ## A103826.P3351314862640777646

`comp[2*A048147(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A103826

/-- `comp[2*A048147(n)]` -/
def P3351314862640777646.Spec : Prop :=
  ∀ n, (P3351314862640777646.a n : ℤ) = A103826 (n + 1)

theorem P3351314862640777646.correct : P3351314862640777646.Spec := by
  intro n
  simp only [A103826, Nat.add_sub_cancel]

end A103826

/-! ## A103826.P4672449450208776988

`comp[2*A318704(n)]`
-/

namespace A103826.P4672449450208776988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P4672449450208776988

namespace A103826

/-- `comp[2*A318704(n)]` -/
def P4672449450208776988.Spec : Prop :=
  ∀ n, (P4672449450208776988.a n : ℤ) = A103826 (n + 1)

end A103826

/-!
# A103827: Arithmetic means of the divisors of unitary arithmetic numbers (i.e., of those for which the arithmetic mean of the unitary divisors is an integer, A103826).

The programs for A103827, the canonical program `A103827.P12053517966830183647` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103827 has offset 1).

The definition of A103827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, A103826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103827.P12053517966830183647

`A034448(A103826(n+1))/A034444(A103826(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A103827

/-- `A034448(A103826(n+1))/A034444(A103826(n+1))` -/
def P12053517966830183647.Spec : Prop :=
  ∀ n, P12053517966830183647.a n = (A103827 (n + 1) : ℚ)

end A103827

/-!
# A103828: Sequence of odd numbers defined recursively by: a(1)=1 and a(n) is the first odd number greater than a(n-1) such that a(n) + a(i) + 1 is prime for 1<=i<=n-1.

The programs for A103828, there is no canonical definition to state claims against.
-/

/-! ## A103828.P3999267175253888831

`(A115760(n+1)-1)/2`
-/

namespace A103828.P3999267175253888831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115760 (n + 1) - 1 : ℚ) / 2

end

end A103828.P3999267175253888831

/-! ## A103828.P12094096798646332504

`floor(A115760(n+1)/2)`
-/

namespace A103828.P12094096798646332504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115760 (n + 1) : ℚ) / 2⌋

end

end A103828.P12094096798646332504

/-! ## A103828.P11606624498579566630

`A128933(n+1)-1`
-/

namespace A103828.P11606624498579566630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128933 (n + 1) - 1

end

end A103828.P11606624498579566630

/-! ## A103828.P15554405881374867128

`A373779(3*(n+1))+A128933(n+1)`
-/

namespace A103828.P15554405881374867128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373779 (3 * (n + 1)) + A128933 (n + 1)

end

end A103828.P15554405881374867128

/-! ## A103828.P7064192955706490332

`A358679(A001359(n+1))+A128933(n+1)`
-/

namespace A103828.P7064192955706490332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A001359 (n + 1)).toNat + A128933 (n + 1)

end

end A103828.P7064192955706490332

/-!
# A103829: Sum of even digits greater than sum of odd digits.

The programs for A103829, the canonical program `A103829.P11488243533967495339` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103829 has offset 1).

The definition of A103829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103829.P3045064661695907706

`lt[n, A304440(n)]`
-/

namespace A103829.P3045064661695907706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103829.P3045064661695907706

namespace A103829

/-- `lt[n, A304440(n)]` -/
def P3045064661695907706.Spec : Prop :=
  ∀ n, (P3045064661695907706.a n : ℤ) = A103829 (n + 1)

end A103829

/-! ## A103829.P10768388078520396254

`lt[A304439(n), n]`
-/

namespace A103829.P10768388078520396254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304439 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103829.P10768388078520396254

namespace A103829

/-- `lt[A304439(n), n]` -/
def P10768388078520396254.Spec : Prop :=
  ∀ n, (P10768388078520396254.a n : ℤ) = A103829 (n + 1)

end A103829

/-! ## A103829.P11488243533967495339

`lt[8, 8-∑{digits}[n, A181983(#)]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103829

/-- `lt[8, 8-∑{digits}[n, A181983(#)]]` -/
def P11488243533967495339.Spec : Prop :=
  ∀ n, (P11488243533967495339.a n : ℤ) = A103829 (n + 1)

theorem P11488243533967495339.correct : P11488243533967495339.Spec := by
  intro n
  simp only [A103829, Nat.add_sub_cancel]

end A103829

/-! ## A103829.P9026800546594950993

`lt[A071650(n+1)+n, n]+1`
-/

namespace A103829.P9026800546594950993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (n + 1) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A103829.P9026800546594950993

namespace A103829

/-- `lt[A071650(n+1)+n, n]+1` -/
def P9026800546594950993.Spec : Prop :=
  ∀ n, (P9026800546594950993.a n : ℤ) = A103829 (n + 1)

end A103829

/-! ## A103829.P10880925334053938988

`lt[A071650(A028310(n))+n, n]`
-/

namespace A103829.P10880925334053938988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103829.P10880925334053938988

namespace A103829

/-- `lt[A071650(A028310(n))+n, n]` -/
def P10880925334053938988.Spec : Prop :=
  ∀ n, (P10880925334053938988.a n : ℤ) = A103829 (n + 1)

end A103829

/-!
# A103831: For even n, a(n) = n*(n+1), for odd n, a(n) = 2*n + 1.

The programs for A103831, the canonical program `A103831.P18249177347394826522` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103831 has offset 0).

The definition of A103831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103831.P3247465034134641801

`(n²+3*n+1+(n²-n-1)*(-1)^n)/2`
-/

namespace A103831.P3247465034134641801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 3 * n + 1 : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ) - 1) * (-1) ^ n : ℚ) / 2

end

end A103831.P3247465034134641801

namespace A103831

/-- `(n²+3*n+1+(n²-n-1)*(-1)^n)/2` -/
def P3247465034134641801.Spec : Prop :=
  ∀ n, P3247465034134641801.a n = (A103831 n : ℚ)

theorem P3247465034134641801.correct : P3247465034134641801.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A103831, Nat.add_sub_cancel, A103831.P3247465034134641801.a, A103831.P18249177347394826522.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A103831, Nat.add_sub_cancel, A103831.P3247465034134641801.a, A103831.P18249177347394826522.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103831

/-! ## A103831.P18249177347394826522

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=7, a(4)=20, a(5)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103831

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P18249177347394826522.Spec : Prop :=
  ∀ n, P18249177347394826522.a n = A103831 n

theorem P18249177347394826522.correct : P18249177347394826522.Spec := by
  intro n
  simp only [A103831]

end A103831

/-! ## A103831.P3112704830460107900

`lcm(lcm(2, n)+n%2, record[xor(2, n)])`
-/

namespace A103831.P3112704830460107900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.lcm 2 n + n % 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A103831.P3112704830460107900

namespace A103831

/-- `lcm(lcm(2, n)+n%2, record[xor(2, n)])` -/
def P3112704830460107900.Spec : Prop :=
  ∀ n, (P3112704830460107900.a n : ℤ) = A103831 n

end A103831

/-! ## A103831.P14594272500940571707

`gcd(n²-n, and(1, n))+2*n`
-/

namespace A103831.P14594272500940571707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) - (n : ℤ)) (Nat.land 1 n : ℤ) + 2 * n

end

end A103831.P14594272500940571707

namespace A103831

/-- `gcd(n²-n, and(1, n))+2*n` -/
def P14594272500940571707.Spec : Prop :=
  ∀ n, (P14594272500940571707.a n : ℤ) = A103831 n

end A103831

/-! ## A103831.P5423883952382991518

`C(n²-n, and(1, n+1))+2*n`
-/

namespace A103831.P5423883952382991518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat (Nat.land 1 (n + 1)) + 2 * n

end

end A103831.P5423883952382991518

namespace A103831

/-- `C(n²-n, and(1, n+1))+2*n` -/
def P5423883952382991518.Spec : Prop :=
  ∀ n, (P5423883952382991518.a n : ℤ) = A103831 n

end A103831

/-! ## A103831.P6345060831758596240

`(n+1)²-A392334(n)`
-/

namespace A103831.P6345060831758596240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A392334 n

end

end A103831.P6345060831758596240

namespace A103831

/-- `(n+1)²-A392334(n)` -/
def P6345060831758596240.Spec : Prop :=
  ∀ n, P6345060831758596240.a n = A103831 n

end A103831

/-! ## A103831.P6408235908176860773

`lcm(2, n)+A009531(n)²`
-/

namespace A103831.P6408235908176860773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) + A009531 n ^ 2

end

end A103831.P6408235908176860773

namespace A103831

/-- `lcm(2, n)+A009531(n)²` -/
def P6408235908176860773.Spec : Prop :=
  ∀ n, P6408235908176860773.a n = A103831 n

end A103831

/-! ## A103831.P3215303303807511720

`(A042948(n)+2)*gcd(n, floor(n/2))`
-/

namespace A103831.P3215303303807511720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042948 n + 2) * (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ)

end

end A103831.P3215303303807511720

namespace A103831

/-- `(A042948(n)+2)*gcd(n, floor(n/2))` -/
def P3215303303807511720.Spec : Prop :=
  ∀ n, P3215303303807511720.a n = A103831 n

end A103831

/-! ## A103831.P2737828648373598936

`(n*char[2*n]+1)*A059029(n)`
-/

namespace A103831.P2737828648373598936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A059029 n

end

end A103831.P2737828648373598936

namespace A103831

/-- `(n*char[2*n]+1)*A059029(n)` -/
def P2737828648373598936.Spec : Prop :=
  ∀ n, P2737828648373598936.a n = A103831 n

end A103831

/-! ## A103831.P6706141952431342045

`A028387(n)-A103832(n)`
-/

namespace A103831.P6706141952431342045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A103832 n

end

end A103831.P6706141952431342045

namespace A103831

/-- `A028387(n)-A103832(n)` -/
def P6706141952431342045.Spec : Prop :=
  ∀ n, P6706141952431342045.a n = A103831 n

end A103831

/-! ## A103831.P14329909454212972715

`A028552(n)+1-A103832(n)`
-/

namespace A103831.P14329909454212972715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + (1 - A103832 n)

end

end A103831.P14329909454212972715

namespace A103831

/-- `A028552(n)+1-A103832(n)` -/
def P14329909454212972715.Spec : Prop :=
  ∀ n, P14329909454212972715.a n = A103831 n

end A103831

/-! ## A103831.P12945920314179797382

`A059029(n)*A093178(n+1)`
-/

namespace A103831.P12945920314179797382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n * A093178 (n + 1)

end

end A103831.P12945920314179797382

namespace A103831

/-- `A059029(n)*A093178(n+1)` -/
def P12945920314179797382.Spec : Prop :=
  ∀ n, P12945920314179797382.a n = A103831 n

end A103831

/-! ## A103831.P7966337120148699520

`lcm(A009531(n), A042964(n+1))`
-/

namespace A103831.P7966337120148699520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009531 n) (A042964 (n + 1))

end

end A103831.P7966337120148699520

namespace A103831

/-- `lcm(A009531(n), A042964(n+1))` -/
def P7966337120148699520.Spec : Prop :=
  ∀ n, (P7966337120148699520.a n : ℤ) = A103831 n

end A103831

/-! ## A103831.P5269072994420979343

`lcm(A059029(n), A114753(n+1))`
-/

namespace A103831.P5269072994420979343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059029 n) (A114753 (n + 1))

end

end A103831.P5269072994420979343

namespace A103831

/-- `lcm(A059029(n), A114753(n+1))` -/
def P5269072994420979343.Spec : Prop :=
  ∀ n, (P5269072994420979343.a n : ℤ) = A103831 n

end A103831

/-! ## A103831.P14194032278829544257

`A000035(n)+n*A141310(n)`
-/

namespace A103831.P14194032278829544257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (n : ℤ) * A141310 n

end

end A103831.P14194032278829544257

namespace A103831

/-- `A000035(n)+n*A141310(n)` -/
def P14194032278829544257.Spec : Prop :=
  ∀ n, P14194032278829544257.a n = A103831 n

end A103831

/-! ## A103831.P3490471348587897046

`A066106(n)-n/A093178(n)`
-/

namespace A103831.P3490471348587897046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066106 n : ℚ) - (n : ℚ) / (A093178 n : ℚ)

end

end A103831.P3490471348587897046

namespace A103831

/-- `A066106(n)-n/A093178(n)` -/
def P3490471348587897046.Spec : Prop :=
  ∀ n, P3490471348587897046.a n = (A103831 n : ℚ)

end A103831

/-! ## A103831.P14531665031155476488

`A109043(n)+(1-A141310(n))²`
-/

namespace A103831.P14531665031155476488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n + (1 - A141310 n) ^ 2

end

end A103831.P14531665031155476488

namespace A103831

/-- `A109043(n)+(1-A141310(n))²` -/
def P14531665031155476488.Spec : Prop :=
  ∀ n, P14531665031155476488.a n = A103831 n

end A103831

/-! ## A103831.P8179521591058792933

`A009531(n)²+2*A026741(n)`
-/

namespace A103831.P8179521591058792933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n ^ 2 + 2 * A026741 n

end

end A103831.P8179521591058792933

namespace A103831

/-- `A009531(n)²+2*A026741(n)` -/
def P8179521591058792933.Spec : Prop :=
  ∀ n, P8179521591058792933.a n = A103831 n

end A103831

/-! ## A103831.P2912080586858876310

`A059029(n)+(n-A022998(n))²`
-/

namespace A103831.P2912080586858876310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n + ((n : ℤ) - A022998 n) ^ 2

end

end A103831.P2912080586858876310

namespace A103831

/-- `A059029(n)+(n-A022998(n))²` -/
def P2912080586858876310.Spec : Prop :=
  ∀ n, P2912080586858876310.a n = A103831 n

end A103831

/-! ## A103831.P6238958619669529213

`A059029(n)+(n*A059841(n))²`
-/

namespace A103831.P6238958619669529213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n + ((n : ℤ) * A059841 n) ^ 2

end

end A103831.P6238958619669529213

namespace A103831

/-- `A059029(n)+(n*A059841(n))²` -/
def P6238958619669529213.Spec : Prop :=
  ∀ n, P6238958619669529213.a n = A103831 n

end A103831

/-!
# A103832: For even n, a(n)=2n+1, for odd n, a(n)=n(n+1).

The programs for A103832, the canonical program `A103832.P10352804695703505561` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103832 has offset 0).

The definition of A103832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103832.P13450426321672317770

`(n²+3*n+1-(n²-n-1)*(-1)^n)/2`
-/

namespace A103832.P13450426321672317770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 3 * n + 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ) - 1) * (-1) ^ n : ℚ) / 2

end

end A103832.P13450426321672317770

namespace A103832

/-- `(n²+3*n+1-(n²-n-1)*(-1)^n)/2` -/
def P13450426321672317770.Spec : Prop :=
  ∀ n, P13450426321672317770.a n = (A103832 n : ℚ)

theorem P13450426321672317770.correct : P13450426321672317770.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A103832, Nat.add_sub_cancel, A103832.P13450426321672317770.a, A103832.P10352804695703505561.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A103832, Nat.add_sub_cancel, A103832.P13450426321672317770.a, A103832.P10352804695703505561.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103832

/-! ## A103832.P10352804695703505561

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=9, a(5)=30`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103832

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P10352804695703505561.Spec : Prop :=
  ∀ n, P10352804695703505561.a n = A103832 n

theorem P10352804695703505561.correct : P10352804695703505561.Spec := by
  intro n
  simp only [A103832]

end A103832

/-! ## A103832.P2410396590761146827

`(n^(n%2))²+n*gcd(2, n)`
-/

namespace A103832.P2410396590761146827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ (n % 2)) ^ 2 + n * Nat.gcd 2 n

end

end A103832.P2410396590761146827

namespace A103832

/-- `(n^(n%2))²+n*gcd(2, n)` -/
def P2410396590761146827.Spec : Prop :=
  ∀ n, (P2410396590761146827.a n : ℤ) = A103832 n

end A103832

/-! ## A103832.P10636155582267809555

`C(n²-n, and(1, n))+2*n`
-/

namespace A103832.P10636155582267809555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat (Nat.land 1 n) + 2 * n

end

end A103832.P10636155582267809555

namespace A103832

/-- `C(n²-n, and(1, n))+2*n` -/
def P10636155582267809555.Spec : Prop :=
  ∀ n, (P10636155582267809555.a n : ℤ) = A103832 n

end A103832

/-! ## A103832.P9290837287967512119

`(or(1, n)+n)*gcd(xor(1, n²), ∑[n])`
-/

namespace A103832.P9290837287967512119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + n) * Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103832.P9290837287967512119

namespace A103832

/-- `(or(1, n)+n)*gcd(xor(1, n²), ∑[n])` -/
def P9290837287967512119.Spec : Prop :=
  ∀ n, (P9290837287967512119.a n : ℤ) = A103832 n

end A103832

/-! ## A103832.P1789628013623944169

`gcd(n²-n, and(1, n+1))+2*n`
-/

namespace A103832.P1789628013623944169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) - (n : ℤ)) (Nat.land 1 (n + 1) : ℤ) + 2 * n

end

end A103832.P1789628013623944169

namespace A103832

/-- `gcd(n²-n, and(1, n+1))+2*n` -/
def P1789628013623944169.Spec : Prop :=
  ∀ n, (P1789628013623944169.a n : ℤ) = A103832 n

end A103832

/-! ## A103832.P16389776520392948776

`A392334(n)+n`
-/

namespace A103832.P16389776520392948776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392334 n + (n : ℤ)

end

end A103832.P16389776520392948776

namespace A103832

/-- `A392334(n)+n` -/
def P16389776520392948776.Spec : Prop :=
  ∀ n, P16389776520392948776.a n = A103832 n

end A103832

/-! ## A103832.P17559126032601563284

`or(1, A065599(n))+n`
-/

namespace A103832.P17559126032601563284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065599 n) + (n : ℤ)

end

end A103832.P17559126032601563284

namespace A103832

/-- `or(1, A065599(n))+n` -/
def P17559126032601563284.Spec : Prop :=
  ∀ n, P17559126032601563284.a n = A103832 n

end A103832

/-! ## A103832.P17224986153288336464

`A093178(n)²+n*gcd(2, n)`
-/

namespace A103832.P17224986153288336464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2 + (n * Nat.gcd 2 n : ℤ)

end

end A103832.P17224986153288336464

namespace A103832

/-- `A093178(n)²+n*gcd(2, n)` -/
def P17224986153288336464.Spec : Prop :=
  ∀ n, P17224986153288336464.a n = A103832 n

end A103832

/-! ## A103832.P11602849273292845257

`A109613(n)+A065599(n)`
-/

namespace A103832.P11602849273292845257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A065599 n

end

end A103832.P11602849273292845257

namespace A103832

/-- `A109613(n)+A065599(n)` -/
def P11602849273292845257.Spec : Prop :=
  ∀ n, P11602849273292845257.a n = A103832 n

end A103832

/-! ## A103832.P606959325863900447

`A028387(n)-A103831(n)`
-/

namespace A103832.P606959325863900447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A103831 n

end

end A103832.P606959325863900447

namespace A103832

/-- `A028387(n)-A103831(n)` -/
def P606959325863900447.Spec : Prop :=
  ∀ n, P606959325863900447.a n = A103832 n

end A103832

/-! ## A103832.P727448238246813216

`A085046(n+1)-A065679(n)`
-/

namespace A103832.P727448238246813216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1) - A065679 n

end

end A103832.P727448238246813216

namespace A103832

/-- `A085046(n+1)-A065679(n)` -/
def P727448238246813216.Spec : Prop :=
  ∀ n, P727448238246813216.a n = A103832 n

end A103832

/-! ## A103832.P2707869542222941945

`(A022998(n)+1)*A093178(n)`
-/

namespace A103832.P2707869542222941945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022998 n + 1) * A093178 n

end

end A103832.P2707869542222941945

namespace A103832

/-- `(A022998(n)+1)*A093178(n)` -/
def P2707869542222941945.Spec : Prop :=
  ∀ n, P2707869542222941945.a n = A103832 n

end A103832

/-! ## A103832.P3152051991391413165

`A042963(n+1)*A152271(n)`
-/

namespace A103832.P3152051991391413165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) * A152271 n

end

end A103832.P3152051991391413165

namespace A103832

/-- `A042963(n+1)*A152271(n)` -/
def P3152051991391413165.Spec : Prop :=
  ∀ n, P3152051991391413165.a n = A103832 n

end A103832

/-! ## A103832.P7633215872107776561

`A093178(n)*A114752(n+1)`
-/

namespace A103832.P7633215872107776561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A114752 (n + 1)

end

end A103832.P7633215872107776561

namespace A103832

/-- `A093178(n)*A114752(n+1)` -/
def P7633215872107776561.Spec : Prop :=
  ∀ n, P7633215872107776561.a n = A103832 n

end A103832

/-! ## A103832.P13569007124494563721

`A065262(n+1)*A266303(n)`
-/

namespace A103832.P13569007124494563721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (n + 1) * A266303 n

end

end A103832.P13569007124494563721

namespace A103832

/-- `A065262(n+1)*A266303(n)` -/
def P13569007124494563721.Spec : Prop :=
  ∀ n, P13569007124494563721.a n = A103832 n

end A103832

/-! ## A103832.P1320456372374175051

`lcm(A009001(n), A114752(n+1))`
-/

namespace A103832.P1320456372374175051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 n) (A114752 (n + 1))

end

end A103832.P1320456372374175051

namespace A103832

/-- `lcm(A009001(n), A114752(n+1))` -/
def P1320456372374175051.Spec : Prop :=
  ∀ n, (P1320456372374175051.a n : ℤ) = A103832 n

end A103832

/-! ## A103832.P9460981227208528899

`A093178(n)*A109613(n)+n`
-/

namespace A103832.P9460981227208528899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A109613 n + (n : ℤ)

end

end A103832.P9460981227208528899

namespace A103832

/-- `A093178(n)*A109613(n)+n` -/
def P9460981227208528899.Spec : Prop :=
  ∀ n, P9460981227208528899.a n = A103832 n

end A103832

/-! ## A103832.P17925198838366923502

`(A109613(n)+n)*A152271(n)`
-/

namespace A103832.P17925198838366923502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n + (n : ℤ)) * A152271 n

end

end A103832.P17925198838366923502

namespace A103832

/-- `(A109613(n)+n)*A152271(n)` -/
def P17925198838366923502.Spec : Prop :=
  ∀ n, P17925198838366923502.a n = A103832 n

end A103832

/-! ## A103832.P13568474150038731320

`A022998(n)+(1-A133265(n))²`
-/

namespace A103832.P13568474150038731320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + (1 - A133265 n) ^ 2

end

end A103832.P13568474150038731320

namespace A103832

/-- `A022998(n)+(1-A133265(n))²` -/
def P13568474150038731320.Spec : Prop :=
  ∀ n, P13568474150038731320.a n = A103832 n

end A103832

/-!
# A103833: Bisection of A102044.

The programs for A103833, there is no canonical definition to state claims against.
-/

/-! ## A103833.P3622554306100065916

`A102044(Δ[n²])`
-/

namespace A103833.P3622554306100065916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102044 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103833.P3622554306100065916

/-! ## A103833.P15117391783266401849

`A102044(2*n+1)%24`
-/

namespace A103833.P15117391783266401849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102044 (2 * n + 1)) 24

end

end A103833.P15117391783266401849

/-! ## A103833.P12821535058456682004

`A004525(2*A102044(2*n+1))`
-/

namespace A103833.P12821535058456682004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A102044 (2 * n + 1)).toNat

end

end A103833.P12821535058456682004

/-! ## A103833.P3252242399764408184

`A026741(2*A102044(2*n+1))`
-/

namespace A103833.P3252242399764408184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A102044 (2 * n + 1)).toNat

end

end A103833.P3252242399764408184

/-! ## A103833.P18354636440327078602

`lcm(A033999(n), A102044(2*n+1))`
-/

namespace A103833.P18354636440327078602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A102044 (2 * n + 1))

end

end A103833.P18354636440327078602

/-!
# A103835: Smallest prime p, larger than previous term, such that concatenation of n and p is a prime.

The programs for A103835, there is no canonical definition to state claims against.
-/

/-! ## A103835.P6245108222739138702

`p?[A281005(n+1)*A281012(n+5)]`
-/

namespace A103835.P6245108222739138702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1) * A281012 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103835.P6245108222739138702

/-! ## A103835.P13844745362062275517

`A241082(A025701(n+1))`
-/

namespace A103835.P13844745362062275517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241082 (A025701 (n + 1)).toNat

end

end A103835.P13844745362062275517

/-! ## A103835.P1433374481970237826

`A241082(A025744(n+1))`
-/

namespace A103835.P1433374481970237826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241082 (A025744 (n + 1)).toNat

end

end A103835.P1433374481970237826

/-! ## A103835.P1926315596587737126

`A094548(A380906(n+1))`
-/

namespace A103835.P1926315596587737126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A380906 (n + 1)).toNat

end

end A103835.P1926315596587737126

/-! ## A103835.P388849224850059968

`A241082(A180746(n+2))`
-/

namespace A103835.P388849224850059968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241082 (A180746 (n + 2)).toNat

end

end A103835.P388849224850059968

/-!
# A103836: Smallest palindromic prime p, larger than previous term, such that concatenation of n and p is a prime.

The programs for A103836, there is no canonical definition to state claims against.
-/

/-! ## A103836.P14946245228470853540

`A062351(A062351(n+1)+ceil(4*n/3))`
-/

namespace A103836.P14946245228470853540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062351 (A062351 (n + 1) + ⌈4 * ((n : ℚ) / 3)⌉).toNat

end

end A103836.P14946245228470853540

/-!
# A103837: a(n) = digit reversal of A103764.

The programs for A103837, there is no canonical definition to state claims against.
-/

/-! ## A103837.P15012312185636237871

`A004086(A103764(n+1))`
-/

namespace A103837.P15012312185636237871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A103764 (n + 1)).toNat

end

end A103837.P15012312185636237871

/-!
# A103838: Complement of A001671.

The programs for A103838, the canonical program `A103838.P15271122950961256239` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103838 has offset 0).

The definition of A103838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103838.P1349074258681687022

`ceil(log(a(n-1)+1)+n+1)` with `a(0)=2`
-/

namespace A103838.P1349074258681687022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.log (a (n - 1) + 1 : ℝ) + (n + 1 : ℝ)⌉

end

end A103838.P1349074258681687022

namespace A103838

/-- `ceil(log(a(n-1)+1)+n+1)` -/
def P1349074258681687022.Spec : Prop :=
  ∀ n, P1349074258681687022.a n = A103838 n

end A103838

/-! ## A103838.P15271122950961256239

`A003619(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103838

/-- `A003619(n+1)+1` -/
def P15271122950961256239.Spec : Prop :=
  ∀ n, P15271122950961256239.a n = A103838 n

theorem P15271122950961256239.correct : P15271122950961256239.Spec := by
  intro n
  simp only [A103838]

end A103838

/-! ## A103838.P3290702541399599344

`comp[A001671(n)-1]+1`
-/

namespace A103838.P3290702541399599344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A103838.P3290702541399599344

namespace A103838

/-- `comp[A001671(n)-1]+1` -/
def P3290702541399599344.Spec : Prop :=
  ∀ n, (P3290702541399599344.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P6645644351934563361

`A020725(A003619(n+1))`
-/

namespace A103838.P6645644351934563361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A003619 (n + 1)).toNat

end

end A103838.P6645644351934563361

namespace A103838

/-- `A020725(A003619(n+1))` -/
def P6645644351934563361.Spec : Prop :=
  ∀ n, P6645644351934563361.a n = A103838 n

end A103838

/-! ## A103838.P2793904305360853593

`lt[0, A072631(n+1)/2]+1`
-/

namespace A103838.P2793904305360853593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072631 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A103838.P2793904305360853593

namespace A103838

/-- `lt[0, A072631(n+1)/2]+1` -/
def P2793904305360853593.Spec : Prop :=
  ∀ n, (P2793904305360853593.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P3143513612637865968

`n+2+A000195(A212450(n+1))`
-/

namespace A103838.P3143513612637865968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A000195 (A212450 (n + 1)).toNat

end

end A103838.P3143513612637865968

namespace A103838

/-- `n+2+A000195(A212450(n+1))` -/
def P3143513612637865968.Spec : Prop :=
  ∀ n, P3143513612637865968.a n = A103838 n

end A103838

/-! ## A103838.P3178036931119292420

`A000195(A212445(n+2))+n+2`
-/

namespace A103838.P3178036931119292420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A212445 (n + 2)).toNat + (n + 2 : ℤ)

end

end A103838.P3178036931119292420

namespace A103838

/-- `A000195(A212445(n+2))+n+2` -/
def P3178036931119292420.Spec : Prop :=
  ∀ n, P3178036931119292420.a n = A103838 n

end A103838

/-! ## A103838.P2998020019158831329

`lt[0, A153766(A072631(n+1)+1)-2]+1`
-/

namespace A103838.P2998020019158831329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (A072631 (n + 1) + 1).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A103838.P2998020019158831329

namespace A103838

/-- `lt[0, A153766(A072631(n+1)+1)-2]+1` -/
def P2998020019158831329.Spec : Prop :=
  ∀ n, (P2998020019158831329.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P16738023714889143781

`ceil(log(A145914(n+1)))`
-/

namespace A103838.P16738023714889143781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A145914 (n + 1) : ℝ)⌉

end

end A103838.P16738023714889143781

namespace A103838

/-- `ceil(log(A145914(n+1)))` -/
def P16738023714889143781.Spec : Prop :=
  ∀ n, P16738023714889143781.a n = A103838 n

end A103838

/-! ## A103838.P12931405696627071373

`lt[A285128(A299807(n+1)), A329130(n)]`
-/

namespace A103838.P12931405696627071373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (A299807 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P12931405696627071373

namespace A103838

/-- `lt[A285128(A299807(n+1)), A329130(n)]` -/
def P12931405696627071373.Spec : Prop :=
  ∀ n, (P12931405696627071373.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P16407226672905766827

`lt[A003842(A054066(n+5)), A329130(n)]`
-/

namespace A103838.P16407226672905766827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A054066 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P16407226672905766827

namespace A103838

/-- `lt[A003842(A054066(n+5)), A329130(n)]` -/
def P16407226672905766827.Spec : Prop :=
  ∀ n, (P16407226672905766827.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P556785427037492276

`lt[A001468(A054066(n+1)), A329130(n)]`
-/

namespace A103838.P556785427037492276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A054066 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P556785427037492276

namespace A103838

/-- `lt[A001468(A054066(n+1)), A329130(n)]` -/
def P556785427037492276.Spec : Prop :=
  ∀ n, (P556785427037492276.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P1498456714606737901

`lt[A000034(A115241(n+1)), A329130(n)]`
-/

namespace A103838.P1498456714606737901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A115241 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P1498456714606737901

namespace A103838

/-- `lt[A000034(A115241(n+1)), A329130(n)]` -/
def P1498456714606737901.Spec : Prop :=
  ∀ n, (P1498456714606737901.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P17905690508324688994

`lt[A003842(A027023(n)), A329130(n)]`
-/

namespace A103838.P17905690508324688994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A027023 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P17905690508324688994

namespace A103838

/-- `lt[A003842(A027023(n)), A329130(n)]` -/
def P17905690508324688994.Spec : Prop :=
  ∀ n, (P17905690508324688994.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P9461150327339648968

`lt[A246146(A005206(n)), A329130(n)]`
-/

namespace A103838.P9461150327339648968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 (A005206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P9461150327339648968

namespace A103838

/-- `lt[A246146(A005206(n)), A329130(n)]` -/
def P9461150327339648968.Spec : Prop :=
  ∀ n, (P9461150327339648968.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P9498146246082195383

`lt[A003842(A115241(n+3)), A329130(n)]`
-/

namespace A103838.P9498146246082195383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A115241 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P9498146246082195383

namespace A103838

/-- `lt[A003842(A115241(n+3)), A329130(n)]` -/
def P9498146246082195383.Spec : Prop :=
  ∀ n, (P9498146246082195383.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P17962892157910763890

`lt[A123594(A285950(3*n+1)), A329130(n)]`
-/

namespace A103838.P17962892157910763890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (A285950 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P17962892157910763890

namespace A103838

/-- `lt[A123594(A285950(3*n+1)), A329130(n)]` -/
def P17962892157910763890.Spec : Prop :=
  ∀ n, (P17962892157910763890.a n : ℤ) = A103838 n

end A103838

/-! ## A103838.P4975069123022566454

`lt[A245920(A285075(n+1)), A329130(n)]`
-/

namespace A103838.P4975069123022566454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A285075 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103838.P4975069123022566454

namespace A103838

/-- `lt[A245920(A285075(n+1)), A329130(n)]` -/
def P4975069123022566454.Spec : Prop :=
  ∀ n, (P4975069123022566454.a n : ℤ) = A103838 n

end A103838

/-!
# A103839: Number of permutations of (1,2,3,...,n) where each of the (n-1) adjacent pairs of elements sums to a prime.

The programs for A103839, there is no canonical definition to state claims against.
-/

/-! ## A103839.P18174324907168434460

`floor(acot(n))+2*A064821(n+1)`
-/

namespace A103839.P18174324907168434460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2 * A064821 (n + 1)

end

end A103839.P18174324907168434460

/-! ## A103839.P4072273023104719110

`A029600(∑[n])*A051239(n+1)`
-/

namespace A103839.P4072273023104719110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (∑ j ∈ Finset.range (n + 1), f1 j) * A051239 (n + 1)

end

end A103839.P4072273023104719110

/-! ## A103839.P12261573568983759722

`A064821(n+1)+A051239(n+1)`
-/

namespace A103839.P12261573568983759722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064821 (n + 1) + A051239 (n + 1)

end

end A103839.P12261573568983759722

/-!
# A103840: Number of ways to represent n as a sum of b^e with b >= 2, e >= 2, e distinct.

The programs for A103840, there is no canonical definition to state claims against.
-/

/-! ## A103840.P13879484860882883586

`A185215(A185305(n+25))`
-/

namespace A103840.P13879484860882883586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 (A185305 (n + 25)).toNat

end

end A103840.P13879484860882883586

/-! ## A103840.P17222042426845807780

`A257990(A071585(A008424(n)))`
-/

namespace A103840.P17222042426845807780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A071585 (A008424 n).toNat).toNat

end

end A103840.P17222042426845807780

/-! ## A103840.P17834250285840185656

`A220400(n)!%A071585(A008424(n))`
-/

namespace A103840.P17834250285840185656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A220400 n).toNat : ℤ) (A071585 (A008424 n).toNat)

end

end A103840.P17834250285840185656

/-! ## A103840.P18223728862262597619

`A015716(n+1)*A057427(A008424(n))`
-/

namespace A103840.P18223728862262597619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (n + 1) * A057427 (A008424 n).toNat

end

end A103840.P18223728862262597619

/-! ## A103840.P17776543042689087969

`A000194(A207974(n))%A071585(A008424(n))`
-/

namespace A103840.P17776543042689087969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A207974 n).toNat) (A071585 (A008424 n).toNat)

end

end A103840.P17776543042689087969

/-!
# A103841: Numbers not representable as a sum of b^e with b >= 2, e >= 2, e distinct.

The programs for A103841, there is no canonical definition to state claims against.
-/

/-! ## A103841.P14432709808049977618

`eq[0, A103840(n)]`
-/

namespace A103841.P14432709808049977618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103841.P14432709808049977618

/-! ## A103841.P5089842140862585997

`lt[A103840(n+1), 1]+1`
-/

namespace A103841.P5089842140862585997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A103841.P5089842140862585997

/-! ## A103841.P2587888348680929751

`lt[A103840(2*n-n), 1]`
-/

namespace A103841.P2587888348680929751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103841.P2587888348680929751

/-! ## A103841.P1527845104669900490

`A000027(lt[A103840(n), 1])`
-/

namespace A103841.P1527845104669900490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A103841.P1527845104669900490

/-! ## A103841.P11491334126336211405

`A028310(lt[A103840(n), 1])`
-/

namespace A103841.P11491334126336211405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A103841.P11491334126336211405

/-! ## A103841.P223142734918443506

`A259445(lt[A103840(n), 1])`
-/

namespace A103841.P223142734918443506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A103841.P223142734918443506

/-!
# A103842: Triangle read by rows: row n is binary expansion of 2^n-n, n >= 1.

The programs for A103842, the canonical program `A103842.P14597058008389114036` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103842 has offset 1).

The definition of A103842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103842.P2963580277088966563

`1-A083651(∑[2*n]%comp[∑[n]])`
-/

namespace A103842.P2963580277088966563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A083651 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103842.P2963580277088966563

namespace A103842

/-- `1-A083651(∑[2*n]%comp[∑[n]])` -/
def P2963580277088966563.Spec : Prop :=
  ∀ n, P2963580277088966563.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P2239327132110039587

`A000007(and(∑[2*char[∑[n]]]-1, 2^(C(comp[∑[n]]-n, 2)-n)))`
-/

namespace A103842.P2239327132110039587
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)))).toNat

end

end A103842.P2239327132110039587

namespace A103842

/-- `A000007(and(∑[2*char[∑[n]]]-1, 2^(C(comp[∑[n]]-n, 2)-n)))` -/
def P2239327132110039587.Spec : Prop :=
  ∀ n, P2239327132110039587.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P757842134112305824

`A010054(and(∑[2*char[∑[n]]]-1, 2^(C(comp[∑[n]]-n, 2)-n)))`
-/

namespace A103842.P757842134112305824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)))).toNat

end

end A103842.P757842134112305824

namespace A103842

/-- `A010054(and(∑[2*char[∑[n]]]-1, 2^(C(comp[∑[n]]-n, 2)-n)))` -/
def P757842134112305824.Spec : Prop :=
  ∀ n, P757842134112305824.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P14597058008389114036

`1-A083651(A061579(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103842

/-- `1-A083651(A061579(n))` -/
def P14597058008389114036.Spec : Prop :=
  ∀ n, P14597058008389114036.a n = A103842 (n + 1)

theorem P14597058008389114036.correct : P14597058008389114036.Spec := by
  intro n
  simp only [A103842, Nat.add_sub_cancel]

end A103842

/-! ## A103842.P18245868331098822913

`char[xor(-A083651(n), A061579(n))]`
-/

namespace A103842.P18245868331098822913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A083651 n) (A061579 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103842.P18245868331098822913

namespace A103842

/-- `char[xor(-A083651(n), A061579(n))]` -/
def P18245868331098822913.Spec : Prop :=
  ∀ n, (P18245868331098822913.a n : ℤ) = A103842 (n + 1)

end A103842

/-! ## A103842.P1601383012484565146

`char[and(A003056(n), A130321(n))+n]`
-/

namespace A103842.P1601383012484565146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n) (A130321 n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103842.P1601383012484565146

namespace A103842

/-- `char[and(A003056(n), A130321(n))+n]` -/
def P1601383012484565146.Spec : Prop :=
  ∀ n, (P1601383012484565146.a n : ℤ) = A103842 (n + 1)

end A103842

/-! ## A103842.P11060093418935852690

`char[and(2^A025581(n), A003056(n))+n]`
-/

namespace A103842.P11060093418935852690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))) (A003056 n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103842.P11060093418935852690

namespace A103842

/-- `char[and(2^A025581(n), A003056(n))+n]` -/
def P11060093418935852690.Spec : Prop :=
  ∀ n, (P11060093418935852690.a n : ℤ) = A103842 (n + 1)

end A103842

/-! ## A103842.P6041971669851518386

`A000007(and(A003056(n), A130321(n)))`
-/

namespace A103842.P6041971669851518386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P6041971669851518386

namespace A103842

/-- `A000007(and(A003056(n), A130321(n)))` -/
def P6041971669851518386.Spec : Prop :=
  ∀ n, P6041971669851518386.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P14543958739280495914

`A001343(and(A003056(n), A130321(n)))`
-/

namespace A103842.P14543958739280495914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P14543958739280495914

namespace A103842

/-- `A001343(and(A003056(n), A130321(n)))` -/
def P14543958739280495914.Spec : Prop :=
  ∀ n, P14543958739280495914.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P8644924482884377765

`A003196(and(A003056(n), A130321(n)))`
-/

namespace A103842.P8644924482884377765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003196 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P8644924482884377765

namespace A103842

/-- `A003196(and(A003056(n), A130321(n)))` -/
def P8644924482884377765.Spec : Prop :=
  ∀ n, P8644924482884377765.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P2167561182998113885

`A007270(and(A003056(n), A130321(n)))`
-/

namespace A103842.P2167561182998113885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007270 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P2167561182998113885

namespace A103842

/-- `A007270(and(A003056(n), A130321(n)))` -/
def P2167561182998113885.Spec : Prop :=
  ∀ n, P2167561182998113885.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P524152836826986698

`A008651(and(A003056(n), A130321(n)))`
-/

namespace A103842.P524152836826986698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P524152836826986698

namespace A103842

/-- `A008651(and(A003056(n), A130321(n)))` -/
def P524152836826986698.Spec : Prop :=
  ∀ n, P524152836826986698.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P9208554147289032168

`A010059(and(A003056(n), A130321(n)))`
-/

namespace A103842.P9208554147289032168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P9208554147289032168

namespace A103842

/-- `A010059(and(A003056(n), A130321(n)))` -/
def P9208554147289032168.Spec : Prop :=
  ∀ n, P9208554147289032168.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P6804436549472716007

`A010117(and(A003056(n), A130321(n)))`
-/

namespace A103842.P6804436549472716007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010117 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P6804436549472716007

namespace A103842

/-- `A010117(and(A003056(n), A130321(n)))` -/
def P6804436549472716007.Spec : Prop :=
  ∀ n, P6804436549472716007.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P2166836986630488710

`A014063(and(A003056(n), A130321(n)))`
-/

namespace A103842.P2166836986630488710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014063 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P2166836986630488710

namespace A103842

/-- `A014063(and(A003056(n), A130321(n)))` -/
def P2166836986630488710.Spec : Prop :=
  ∀ n, P2166836986630488710.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P2350501442410876620

`A015068(and(A003056(n), A130321(n)))`
-/

namespace A103842.P2350501442410876620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015068 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P2350501442410876620

namespace A103842

/-- `A015068(and(A003056(n), A130321(n)))` -/
def P2350501442410876620.Spec : Prop :=
  ∀ n, P2350501442410876620.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P6465603531429897453

`1-A000120(and(A003056(n), A130321(n)))`
-/

namespace A103842.P6465603531429897453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000120 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P6465603531429897453

namespace A103842

/-- `1-A000120(and(A003056(n), A130321(n)))` -/
def P6465603531429897453.Spec : Prop :=
  ∀ n, P6465603531429897453.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P15098467179457195575

`2-A001316(and(A003056(n), A130321(n)))`
-/

namespace A103842.P15098467179457195575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001316 (Int.land (A003056 n) (A130321 n)).toNat

end

end A103842.P15098467179457195575

namespace A103842

/-- `2-A001316(and(A003056(n), A130321(n)))` -/
def P15098467179457195575.Spec : Prop :=
  ∀ n, P15098467179457195575.a n = A103842 (n + 1)

end A103842

/-! ## A103842.P2319498323211581097

`A000038(and(A003056(n), A130321(n)))/2`
-/

namespace A103842.P2319498323211581097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (Int.land (A003056 n) (A130321 n)).toNat : ℚ) / 2

end

end A103842.P2319498323211581097

namespace A103842

/-- `A000038(and(A003056(n), A130321(n)))/2` -/
def P2319498323211581097.Spec : Prop :=
  ∀ n, P2319498323211581097.a n = (A103842 (n + 1) : ℚ)

end A103842

/-! ## A103842.P9230759806033495465

`A008683(9*(n+1))^and(A003056(n), A130321(n))`
-/

namespace A103842.P9230759806033495465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (9 * (n + 1)) : ℚ) ^ (Int.land (A003056 n) (A130321 n) : ℤ)

end

end A103842.P9230759806033495465

namespace A103842

/-- `A008683(9*(n+1))^and(A003056(n), A130321(n))` -/
def P9230759806033495465.Spec : Prop :=
  ∀ n, P9230759806033495465.a n = (A103842 (n + 1) : ℚ)

end A103842

/-!
# A103845: Product of first n Lucas numbers, plus one.

The programs for A103845, there is no canonical definition to state claims against.
-/

/-! ## A103845.P6796892485999756762

`ceil(A070825(n)+abs(sin(n)))`
-/

namespace A103845.P6796892485999756762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070825 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A103845.P6796892485999756762

/-! ## A103845.P17505907436261998441

`A178489(n)+A070825(n)`
-/

namespace A103845.P17505907436261998441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A070825 n

end

end A103845.P17505907436261998441

/-! ## A103845.P3430172725823147408

`A070825(n)+1-A000007(n)`
-/

namespace A103845.P3430172725823147408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070825 n + (1 - A000007 n)

end

end A103845.P3430172725823147408

/-! ## A103845.P16504532004877964885

`char[A003557(n+1)]+∏[A000032(n)]/2`
-/

namespace A103845.P16504532004877964885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

end

end A103845.P16504532004877964885

/-! ## A103845.P15134809166992229861

`char[A048167(n+1)]+∏[A000032(n)]/2`
-/

namespace A103845.P15134809166992229861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

end

end A103845.P15134809166992229861

/-!
# A103846: Sum of the non-unitary divisors of A064115(n) (or of 1+A064115(n)).

The programs for A103846, there is no canonical definition to state claims against.
-/

/-! ## A103846.P7457452610616503926

`A048146(A064115(n+1))`
-/

namespace A103846.P7457452610616503926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A064115 (n + 1)).toNat

end

end A103846.P7457452610616503926

/-!
# A103847: McCarthy's 91 Function: a(n) = n-10 if n>100, otherwise a(n) = a(a(n+11)).

The programs for A103847, the canonical program `A103847.P2914673637354927799` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103847 has offset 1).

The definition of A103847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103847.P2914673637354927799

`a(n-1)+val(n, a(n-1)+10)` with `a(0)=91`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103847

/-- `a(n-1)+val(n, a(n-1)+10)` -/
def P2914673637354927799.Spec : Prop :=
  ∀ n, (P2914673637354927799.a n : ℤ) = A103847 (n + 1)

theorem P2914673637354927799.correct : P2914673637354927799.Spec := by
  intro n
  simp only [A103847, Nat.add_sub_cancel]

end A103847

/-!
# A103848: Numbers k such that sum of even digits of k is less than sum of odd digits.

The programs for A103848, the canonical program `A103848.P1313370246448149026` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103848 has offset 1).

The definition of A103848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103848.P1313370246448149026

`lt[0, ∑{digits}[n+1, A181983(#)]]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103848

/-- `lt[0, ∑{digits}[n+1, A181983(#)]]+1` -/
def P1313370246448149026.Spec : Prop :=
  ∀ n, (P1313370246448149026.a n : ℤ) = A103848 (n + 1)

theorem P1313370246448149026.correct : P1313370246448149026.Spec := by
  intro n
  simp only [A103848, Nat.add_sub_cancel]

end A103848

/-! ## A103848.P1571101816689658876

`lt[n, A304439(n)]`
-/

namespace A103848.P1571101816689658876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103848.P1571101816689658876

namespace A103848

/-- `lt[n, A304439(n)]` -/
def P1571101816689658876.Spec : Prop :=
  ∀ n, (P1571101816689658876.a n : ℤ) = A103848 (n + 1)

end A103848

/-! ## A103848.P12220027923451895300

`lt[A304440(n), n]`
-/

namespace A103848.P12220027923451895300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304440 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103848.P12220027923451895300

namespace A103848

/-- `lt[A304440(n), n]` -/
def P12220027923451895300.Spec : Prop :=
  ∀ n, (P12220027923451895300.a n : ℤ) = A103848 (n + 1)

end A103848

/-! ## A103848.P120533108574869246

`eq[0, A007814(A047842(n))]`
-/

namespace A103848.P120533108574869246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103848.P120533108574869246

namespace A103848

/-- `eq[0, A007814(A047842(n))]` -/
def P120533108574869246.Spec : Prop :=
  ∀ n, (P120533108574869246.a n : ℤ) = A103848 (n + 1)

end A103848

/-! ## A103848.P11839572326803173641

`eq[A057427(n), A364448(A047842(n))]`
-/

namespace A103848.P11839572326803173641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364448 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103848.P11839572326803173641

namespace A103848

/-- `eq[A057427(n), A364448(A047842(n))]` -/
def P11839572326803173641.Spec : Prop :=
  ∀ n, (P11839572326803173641.a n : ℤ) = A103848 (n + 1)

end A103848

/-! ## A103848.P14342169868249561964

`lt[A146076(A047842(n)), A002487(n)]`
-/

namespace A103848.P14342169868249561964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A047842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103848.P14342169868249561964

namespace A103848

/-- `lt[A146076(A047842(n)), A002487(n)]` -/
def P14342169868249561964.Spec : Prop :=
  ∀ n, (P14342169868249561964.a n : ℤ) = A103848 (n + 1)

end A103848

/-! ## A103848.P13069971041514915013

`lt[A146076(A047842(n)), A050499(n+2)]`
-/

namespace A103848.P13069971041514915013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A047842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103848.P13069971041514915013

namespace A103848

/-- `lt[A146076(A047842(n)), A050499(n+2)]` -/
def P13069971041514915013.Spec : Prop :=
  ∀ n, (P13069971041514915013.a n : ℤ) = A103848 (n + 1)

end A103848

/-! ## A103848.P11634457620250880681

`eq[A053669(2*n+1), A053669(A047842(n))]`
-/

namespace A103848.P11634457620250880681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103848.P11634457620250880681

namespace A103848

/-- `eq[A053669(2*n+1), A053669(A047842(n))]` -/
def P11634457620250880681.Spec : Prop :=
  ∀ n, (P11634457620250880681.a n : ℤ) = A103848 (n + 1)

end A103848

/-!
# A103852: Numbers n such that 2*P(n)+1, 2*P(n+1)+1, and 2*P(n+2)-1 are also consecutive primes with P(n+1)=P(n)+6 and P(n+2)=P(n+1)+2 with P(i)=i-th prime.

The programs for A103852, there is no canonical definition to state claims against.
-/

/-! ## A103852.P7884718395017273409

`A205006(A103851(n+2))`
-/

namespace A103852.P7884718395017273409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (A103851 (n + 2)).toNat

end

end A103852.P7884718395017273409

/-! ## A103852.P4888624875351606950

`A103851(A032551(n+2)+1)`
-/

namespace A103852.P4888624875351606950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103851 (A032551 (n + 2) + 1).toNat

end

end A103852.P4888624875351606950

/-! ## A103852.P16408757320298170079

`A103851(A228050(n+1)+2)`
-/

namespace A103852.P16408757320298170079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103851 (A228050 (n + 1) + 2).toNat

end

end A103852.P16408757320298170079

/-!
# A103854: Positive integers n such that n^6 + 1 is semiprime.

The programs for A103854, there is no canonical definition to state claims against.
-/

/-! ## A103854.P6649845722411023009

`filter[A246397(n+1), A295405(#)]`
-/

namespace A103854.P6649845722411023009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A103854.P6649845722411023009

/-! ## A103854.P14464884982892548910

`∩[A005574(n+1), A246397(n+1)]`
-/

namespace A103854.P14464884982892548910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103854.P14464884982892548910

/-! ## A103854.P2702843003965869739

`∩[A089593(n+1)+1, A246397(n+1)]`
-/

namespace A103854.P2702843003965869739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103854.P2702843003965869739

/-! ## A103854.P1540774925241798704

`∩[2*A001912(n+1), A246397(n+1)]`
-/

namespace A103854.P1540774925241798704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103854.P1540774925241798704

/-! ## A103854.P13683561144575655057

`∩[A246397(n+1), A214516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A103854.P13683561144575655057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A214516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103854.P13683561144575655057

/-! ## A103854.P5295745654253043862

`∩[A246397(n+1), a(n-1)+A206400(n)+1]` with `a(0)=1`
-/

namespace A103854.P5295745654253043862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (A206400 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103854.P5295745654253043862

/-! ## A103854.P10701205779919585616

`record[A247339(A246397(n+1))]`
-/

namespace A103854.P10701205779919585616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A246397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103854.P10701205779919585616

/-! ## A103854.P13292369540991443909

`∩[eq[1, A193330(n)], A246397(n+1)]`
-/

namespace A103854.P13292369540991443909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A103854.P13292369540991443909

/-!
# A103855: a(n) = prime(n)! - prime(n)# + 1.

The programs for A103855, there is no canonical definition to state claims against.
-/

/-! ## A103855.P16581451660380685307

`A039716(n+1)-A002110(n+1)+1`
-/

namespace A103855.P16581451660380685307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) - A002110 (n + 1) + 1

end

end A103855.P16581451660380685307

/-! ## A103855.P17225281531160922177

`A002110(n+1)*(A092435(n+1)-1)+1`
-/

namespace A103855.P17225281531160922177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * (A092435 (n + 1) - 1) + 1

end

end A103855.P17225281531160922177

/-! ## A103855.P8459344523865486140

`A117735(A000040(n+1))+1`
-/

namespace A103855.P8459344523865486140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117735 (A000040 (n + 1)).toNat + 1

end

end A103855.P8459344523865486140

/-! ## A103855.P9460107473398210757

`A117735(A008578(n+2))+1`
-/

namespace A103855.P9460107473398210757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117735 (A008578 (n + 2)).toNat + 1

end

end A103855.P9460107473398210757

/-! ## A103855.P192137484320675191

`A139159(n+1)-∏[Δ[A007504(n)]]`
-/

namespace A103855.P192137484320675191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139159 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A103855.P192137484320675191

/-!
# A103858: Number of distinct prime factors of prime(n)! - prime(n)# + 1.

The programs for A103858, there is no canonical definition to state claims against.
-/

/-! ## A103858.P5309356501588769514

`log2(A103859(n+1))`
-/

namespace A103858.P5309356501588769514
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A103859 (n + 1) : ℝ)

end

end A103858.P5309356501588769514

/-! ## A103858.P2135133920614280921

`val(A103859(C(n+1, n)), 2)`
-/

namespace A103858.P2135133920614280921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A103859 (Nat.choose (n + 1) n)).toNat 2

end

end A103858.P2135133920614280921

/-! ## A103858.P16432142587898115613

`A056239(A103859(comp[32*n]))`
-/

namespace A103858.P16432142587898115613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A103859 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A103858.P16432142587898115613

/-! ## A103858.P1978859816812490630

`A001222(A103859(comp[54*n]))`
-/

namespace A103858.P1978859816812490630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103859 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A103858.P1978859816812490630

/-! ## A103858.P576087024999079862

`A049802(A103859(n+1)+1)`
-/

namespace A103858.P576087024999079862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (A103859 (n + 1) + 1).toNat

end

end A103858.P576087024999079862

/-!
# A103859: Number of divisors of prime(n)! - prime(n)# + 1.

The programs for A103859, there is no canonical definition to state claims against.
-/

/-! ## A103859.P7703845550646573641

`2^A103858(n+1)`
-/

namespace A103859.P7703845550646573641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A103858 (n + 1) : ℤ)

end

end A103859.P7703845550646573641

/-! ## A103859.P360517263357275516

`A000079(abs(abs(A103858(n+1)-n)-n))`
-/

namespace A103859.P360517263357275516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |(|A103858 (n + 1) - (n : ℤ)| - (n : ℤ))|.toNat

end

end A103859.P360517263357275516

/-! ## A103859.P16816312372876909076

`A000079(A103858(n+1)+A066035(n))`
-/

namespace A103859.P16816312372876909076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A103858 (n + 1) + A066035 n).toNat

end

end A103859.P16816312372876909076

/-! ## A103859.P13544299526747231610

`A000079(A256974(n)+A103858(n+1))`
-/

namespace A103859.P13544299526747231610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A256974 n + A103858 (n + 1)).toNat

end

end A103859.P13544299526747231610

/-! ## A103859.P14309198875637416075

`A000079(A103858(n+1)*A178334(n))`
-/

namespace A103859.P14309198875637416075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A103858 (n + 1) * A178334 n).toNat

end

end A103859.P14309198875637416075

/-!
# A103863: Hamming distance between n and A102370(n) (in binary).

The programs for A103863, there is no canonical definition to state claims against.
-/

/-! ## A103863.P9840117534675367390

`A000120(xor(n, A102370(n)))`
-/

namespace A103863.P9840117534675367390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n : ℤ) (A102370 n)).toNat

end

end A103863.P9840117534675367390

/-! ## A103863.P436509328678433988

`A048881(xor(n, A102370(n)))`
-/

namespace A103863.P436509328678433988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.xor (n : ℤ) (A102370 n)).toNat

end

end A103863.P436509328678433988

/-! ## A103863.P5638525242068225222

`∑[A104234(n)]-A011371(n)`
-/

namespace A103863.P5638525242068225222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011371 n

end

end A103863.P5638525242068225222

/-! ## A103863.P1087448913781455810

`∑{e}[A048883(xor(n, A102370(n))), #]`
-/

namespace A103863.P1087448913781455810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (Int.xor (n : ℤ) (A102370 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A103863.P1087448913781455810

/-! ## A103863.P18015309878928541143

`A000120(n)+∑[A104234(n)]-n`
-/

namespace A103863.P18015309878928541143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A103863.P18015309878928541143

/-! ## A103863.P3738840319154684071

`A000120(xor(n, 2*A103185(n)+n))`
-/

namespace A103863.P3738840319154684071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n : ℤ) (2 * A103185 n + (n : ℤ))).toNat

end

end A103863.P3738840319154684071

/-! ## A103863.P2924545620190605397

`A048881(xor(n, 2*A103185(n)+n))`
-/

namespace A103863.P2924545620190605397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.xor (n : ℤ) (2 * A103185 n + (n : ℤ))).toNat

end

end A103863.P2924545620190605397

/-! ## A103863.P17518601838650310748

`A089398(or(n, A102370(n+1))-(n+1))`
-/

namespace A103863.P17518601838650310748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089398 (Int.lor (n : ℤ) (A102370 (n + 1)) - (n + 1 : ℤ)).toNat

end

end A103863.P17518601838650310748

/-! ## A103863.P1832933216345715729

`A023416(or(A035327(n), A102370(n+1)))`
-/

namespace A103863.P1832933216345715729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor (A035327 n) (A102370 (n + 1))).toNat

end

end A103863.P1832933216345715729

/-! ## A103863.P3491911186265226816

`A023416(or(A010078(n+1), A102370(n+1)))`
-/

namespace A103863.P3491911186265226816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor (A010078 (n + 1)) (A102370 (n + 1))).toNat

end

end A103863.P3491911186265226816

/-! ## A103863.P614144661249993759

`A080791(or(A010078(n+1), A102370(n+1)))`
-/

namespace A103863.P614144661249993759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.lor (A010078 (n + 1)) (A102370 (n + 1))).toNat

end

end A103863.P614144661249993759

/-! ## A103863.P12743642408759475418

`A000120(or(n, A102370(n+1))-A102370(n+1))`
-/

namespace A103863.P12743642408759475418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (n : ℤ) (A102370 (n + 1)) - A102370 (n + 1)).toNat

end

end A103863.P12743642408759475418

/-! ## A103863.P816979109879152113

`A103615(n+1)-A023416(or(n, A102370(n+1)))`
-/

namespace A103863.P816979109879152113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103615 (n + 1) - A023416 (Int.lor (n : ℤ) (A102370 (n + 1))).toNat

end

end A103863.P816979109879152113

/-!
# A103867: Inverse permutation to sequence A103865.

The programs for A103867, there is no canonical definition to state claims against.
-/

/-! ## A103867.P7375218644991599701

`A271439(n)+∑[A076699(A076737(n+1))]`
-/

namespace A103867.P7375218644991599701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076699 (A076737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271439 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103867.P7375218644991599701

/-! ## A103867.P18369952099954010596

`A249054(record[A330369(n+1)])`
-/

namespace A103867.P18369952099954010596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103867.P18369952099954010596

/-! ## A103867.P4401947972702114043

`A249054(lt[A344613(n+1), 2*floor(ϕ*(n+1))-(n+1)])`
-/

namespace A103867.P4401947972702114043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103867.P4401947972702114043

/-! ## A103867.P6954132400732464310

`A249054(lt[A147347(n+1), A000084(n+1)])`
-/

namespace A103867.P6954132400732464310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103867.P6954132400732464310

/-! ## A103867.P16718563821960050436

`A249054(lt[A147389(n+1), A277615(n+1)])`
-/

namespace A103867.P16718563821960050436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103867.P16718563821960050436

/-!
# A103868: Digital expansion of Pi: numbers from each pair of successive digits, reversed.

The programs for A103868, there is no canonical definition to state claims against.
-/

/-! ## A103868.P1264228570160373551

`A099816(n+1)+10*A099817(n+1)`
-/

namespace A103868.P1264228570160373551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099816 (n + 1) + 10 * A099817 (n + 1)

end

end A103868.P1264228570160373551

/-! ## A103868.P12485922748560285573

`A000796(2*n)+10*A000796(2*n+1)`
-/

namespace A103868.P12485922748560285573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (2 * n + 1) + 10 * A000796 (2 * n + 1 + 1)

end

end A103868.P12485922748560285573

/-! ## A103868.P3634832866017096329

`A004086(A105320(A043320(n+1)))`
-/

namespace A103868.P3634832866017096329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A105320 (A043320 (n + 1)).toNat).toNat

end

end A103868.P3634832866017096329

/-! ## A103868.P4616124809868736173

`A004086(A105320(n+1))%A107116(A046974(n))`
-/

namespace A103868.P4616124809868736173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A105320 (n + 1)).toNat) (A107116 (A046974 n).toNat)

end

end A103868.P4616124809868736173

/-!
# A103869: Number of unlabeled graphs with n nodes whose adjacency matrix has nonzero even determinant.

The programs for A103869, there is no canonical definition to state claims against.
-/

/-! ## A103869.P9314678271136861681

`A140981(n+1)-A133206(n+1)`
-/

namespace A103869.P9314678271136861681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140981 (n + 1) - A133206 (n + 1)

end

end A103869.P9314678271136861681

/-! ## A103869.P6490928598824769479

`A109717(n+1)+A140981(n+1)-Δ[A006897(n)]`
-/

namespace A103869.P6490928598824769479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109717 (n + 1) + (A140981 (n + 1) - (f1 (n + 1) - f1 n))

end

end A103869.P6490928598824769479

/-! ## A103869.P15855007040294144331

`A140981(n+1)-(A141580(n+1)+A133279(n+1))`
-/

namespace A103869.P15855007040294144331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140981 (n + 1) - (A141580 (n + 1) + A133279 (n + 1))

end

end A103869.P15855007040294144331

/-! ## A103869.P6725927219737066604

`A140981(n+1)-(A000088(n+1)-A109717(n+1))`
-/

namespace A103869.P6725927219737066604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140981 (n + 1) - (A000088 (n + 1) - A109717 (n + 1))

end

end A103869.P6725927219737066604

/-! ## A103869.P12383979713550442099

`A109717(n+1)+A140981(n+1)-record[A327805(n)]`
-/

namespace A103869.P12383979713550442099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109717 (n + 1) + (A140981 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A103869.P12383979713550442099

/-!
# A103871: Numbers n such that 100n + 69 is prime.

The programs for A103871, the canonical program `A103871.P16562096325091225650` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103871 has offset 1).

The definition of A103871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103871.P13588262428281859350

`lt[0, A069850(A017341(n))]`
-/

namespace A103871.P13588262428281859350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103871.P13588262428281859350

namespace A103871

/-- `lt[0, A069850(A017341(n))]` -/
def P13588262428281859350.Spec : Prop :=
  ∀ n, (P13588262428281859350.a n : ℤ) = A103871 (n + 1)

end A103871

/-! ## A103871.P11209789729945417435

`eq[1, A069850(A017281(n)+5)]`
-/

namespace A103871.P11209789729945417435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017281 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103871.P11209789729945417435

namespace A103871

/-- `eq[1, A069850(A017281(n)+5)]` -/
def P11209789729945417435.Spec : Prop :=
  ∀ n, (P11209789729945417435.a n : ℤ) = A103871 (n + 1)

end A103871

/-! ## A103871.P4021004029737447465

`eq[1, A069850(A017341(n+1))]+1`
-/

namespace A103871.P4021004029737447465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017341 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A103871.P4021004029737447465

namespace A103871

/-- `eq[1, A069850(A017341(n+1))]+1` -/
def P4021004029737447465.Spec : Prop :=
  ∀ n, (P4021004029737447465.a n : ℤ) = A103871 (n + 1)

end A103871

/-! ## A103871.P16562096325091225650

`eq[2, A000005(A017377(10*n+6))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103871

/-- `eq[2, A000005(A017377(10*n+6))]` -/
def P16562096325091225650.Spec : Prop :=
  ∀ n, (P16562096325091225650.a n : ℤ) = A103871 (n + 1)

theorem P16562096325091225650.correct : P16562096325091225650.Spec := by
  intro n
  simp only [A103871, Nat.add_sub_cancel]

end A103871

/-! ## A103871.P4135437775970522110

`eq[A054977(n), A069850(A017341(n))]`
-/

namespace A103871.P4135437775970522110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103871.P4135437775970522110

namespace A103871

/-- `eq[A054977(n), A069850(A017341(n))]` -/
def P4135437775970522110.Spec : Prop :=
  ∀ n, (P4135437775970522110.a n : ℤ) = A103871 (n + 1)

end A103871

/-! ## A103871.P3134978786587452663

`eq[A033999(n)², A069850(A017341(n))]`
-/

namespace A103871.P3134978786587452663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103871.P3134978786587452663

namespace A103871

/-- `eq[A033999(n)², A069850(A017341(n))]` -/
def P3134978786587452663.Spec : Prop :=
  ∀ n, (P3134978786587452663.a n : ℤ) = A103871 (n + 1)

end A103871

/-! ## A103871.P3720218165990517500

`eq[A000007(n)+1, A069850(A017341(n))]`
-/

namespace A103871.P3720218165990517500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103871.P3720218165990517500

namespace A103871

/-- `eq[A000007(n)+1, A069850(A017341(n))]` -/
def P3720218165990517500.Spec : Prop :=
  ∀ n, (P3720218165990517500.a n : ℤ) = A103871 (n + 1)

end A103871

/-! ## A103871.P7188587626054712746

`eq[A057427(n+1), A069850(A017341(n))]`
-/

namespace A103871.P7188587626054712746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103871.P7188587626054712746

namespace A103871

/-- `eq[A057427(n+1), A069850(A017341(n))]` -/
def P7188587626054712746.Spec : Prop :=
  ∀ n, (P7188587626054712746.a n : ℤ) = A103871 (n + 1)

end A103871

/-! ## A103871.P11114786633863641053

`eq[2, A001222(A053743(5*n+3))]`
-/

namespace A103871.P11114786633863641053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053743 (5 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103871.P11114786633863641053

namespace A103871

/-- `eq[2, A001222(A053743(5*n+3))]` -/
def P11114786633863641053.Spec : Prop :=
  ∀ n, (P11114786633863641053.a n : ℤ) = A103871 (n + 1)

end A103871

/-!
# A103872: a(n) = 3*trinomial(n+1,0) - trinomial(n+2,0).

The programs for A103872, the canonical program `A103872.P2171439124764796495` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103872 has offset 0).

The definition of A103872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103872.P9984657102632316097

`abs(A372023(n+2))`
-/

namespace A103872.P9984657102632316097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A372023 (n + 2)|

end

end A103872.P9984657102632316097

namespace A103872

/-- `abs(A372023(n+2))` -/
def P9984657102632316097.Spec : Prop :=
  ∀ n, P9984657102632316097.a n = A103872 n

end A103872

/-! ## A103872.P2171439124764796495

`2*A005043(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103872

/-- `2*A005043(n+1)` -/
def P2171439124764796495.Spec : Prop :=
  ∀ n, P2171439124764796495.a n = A103872 n

theorem P2171439124764796495.correct : P2171439124764796495.Spec := by
  intro n
  simp only [A103872]

end A103872

/-! ## A103872.P7122501805455548128

`abs(2*A099323(n+2))`
-/

namespace A103872.P7122501805455548128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A099323 (n + 2)|

end

end A103872.P7122501805455548128

namespace A103872

/-- `abs(2*A099323(n+2))` -/
def P7122501805455548128.Spec : Prop :=
  ∀ n, P7122501805455548128.a n = A103872 n

end A103872

/-! ## A103872.P9880654246753652911

`2*Δ[A082395(n+1)]`
-/

namespace A103872.P9880654246753652911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A103872.P9880654246753652911

namespace A103872

/-- `2*Δ[A082395(n+1)]` -/
def P9880654246753652911.Spec : Prop :=
  ∀ n, P9880654246753652911.a n = A103872 n

end A103872

/-! ## A103872.P16863130596201191955

`A001006(n)+Δ[A005043(n)]`
-/

namespace A103872.P16863130596201191955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (f1 (n + 1) - f1 n)

end

end A103872.P16863130596201191955

namespace A103872

/-- `A001006(n)+Δ[A005043(n)]` -/
def P16863130596201191955.Spec : Prop :=
  ∀ n, P16863130596201191955.a n = A103872 n

end A103872

/-! ## A103872.P1667986210413210082

`Δ[A005043(n)]+Δ[A097332(n)]`
-/

namespace A103872.P1667986210413210082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A103872.P1667986210413210082

namespace A103872

/-- `Δ[A005043(n)]+Δ[A097332(n)]` -/
def P1667986210413210082.Spec : Prop :=
  ∀ n, P1667986210413210082.a n = A103872 n

end A103872

/-! ## A103872.P1963407130608152945

`A086246(n+2)+Δ[A005043(n)]`
-/

namespace A103872.P1963407130608152945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) + (f1 (n + 1) - f1 n)

end

end A103872.P1963407130608152945

namespace A103872

/-- `A086246(n+2)+Δ[A005043(n)]` -/
def P1963407130608152945.Spec : Prop :=
  ∀ n, P1963407130608152945.a n = A103872 n

end A103872

/-! ## A103872.P10605685670829220086

`Δ[A005043(n)]+A307573(n)+A307564(n)`
-/

namespace A103872.P10605685670829220086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A307573 n + A307564 n)

end

end A103872.P10605685670829220086

namespace A103872

/-- `Δ[A005043(n)]+A307573(n)+A307564(n)` -/
def P10605685670829220086.Spec : Prop :=
  ∀ n, P10605685670829220086.a n = A103872 n

end A103872

/-! ## A103872.P402866511028300873

`A005043(n+1)+A001006(n)-A005043(n)`
-/

namespace A103872.P402866511028300873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A001006 n - A005043 n)

end

end A103872.P402866511028300873

namespace A103872

/-- `A005043(n+1)+A001006(n)-A005043(n)` -/
def P402866511028300873.Spec : Prop :=
  ∀ n, P402866511028300873.a n = A103872 n

end A103872

/-! ## A103872.P11797270667887432834

`A001006(n)+Δ[A309303(n+1)+A309303(n)]`
-/

namespace A103872.P11797270667887432834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309303 (n + 1) + A309303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (f1 (n + 1) - f1 n)

end

end A103872.P11797270667887432834

namespace A103872

/-- `A001006(n)+Δ[A309303(n+1)+A309303(n)]` -/
def P11797270667887432834.Spec : Prop :=
  ∀ n, P11797270667887432834.a n = A103872 n

end A103872

/-! ## A103872.P1896691451919968855

`A005043(n+1)+A082395(n+2)-A082395(n+1)`
-/

namespace A103872.P1896691451919968855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A082395 (n + 2) - A082395 (n + 1))

end

end A103872.P1896691451919968855

namespace A103872

/-- `A005043(n+1)+A082395(n+2)-A082395(n+1)` -/
def P1896691451919968855.Spec : Prop :=
  ∀ n, P1896691451919968855.a n = A103872 n

end A103872

/-! ## A103872.P9804484448043923945

`A007971(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A103872.P9804484448043923945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007971 (n + 2) - a (n - 1)

end

end A103872.P9804484448043923945

namespace A103872

/-- `A007971(n+2)-a(n-1)` -/
def P9804484448043923945.Spec : Prop :=
  ∀ n, P9804484448043923945.a n = A103872 n

end A103872

/-! ## A103872.P13707093582062603018

`A126068(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A103872.P13707093582062603018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A126068 (n + 2) - a (n - 1)

end

end A103872.P13707093582062603018

namespace A103872

/-- `A126068(n+2)-a(n-1)` -/
def P13707093582062603018.Spec : Prop :=
  ∀ n, P13707093582062603018.a n = A103872 n

end A103872

/-! ## A103872.P3531720871979661074

`A168055(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A103872.P3531720871979661074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A168055 (n + 2) - a (n - 1)

end

end A103872.P3531720871979661074

namespace A103872

/-- `A168055(n+2)-a(n-1)` -/
def P3531720871979661074.Spec : Prop :=
  ∀ n, P3531720871979661074.a n = A103872 n

end A103872

/-! ## A103872.P15452022791016565500

`Δ[A097332(n)+A005043(n)]`
-/

namespace A103872.P15452022791016565500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n + A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103872.P15452022791016565500

namespace A103872

/-- `Δ[A097332(n)+A005043(n)]` -/
def P15452022791016565500.Spec : Prop :=
  ∀ n, P15452022791016565500.a n = A103872 n

end A103872

/-! ## A103872.P3595973550589100027

`A005043(n+1)+A187306(n+1)-A284778(n)`
-/

namespace A103872.P3595973550589100027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A187306 (n + 1) - A284778 n)

end

end A103872.P3595973550589100027

namespace A103872

/-- `A005043(n+1)+A187306(n+1)-A284778(n)` -/
def P3595973550589100027.Spec : Prop :=
  ∀ n, P3595973550589100027.a n = A103872 n

end A103872

/-! ## A103872.P11091873748614430854

`2*(A342912(n+1)-A002026(n+1))`
-/

namespace A103872.P11091873748614430854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A342912 (n + 1) - A002026 (n + 1))

end

end A103872.P11091873748614430854

namespace A103872

/-- `2*(A342912(n+1)-A002026(n+1))` -/
def P11091873748614430854.Spec : Prop :=
  ∀ n, P11091873748614430854.a n = A103872 n

end A103872

/-! ## A103872.P14200891236474617943

`2*(A189912(n)-A002426(n))`
-/

namespace A103872.P14200891236474617943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A189912 n - A002426 n)

end

end A103872.P14200891236474617943

namespace A103872

/-- `2*(A189912(n)-A002426(n))` -/
def P14200891236474617943.Spec : Prop :=
  ∀ n, P14200891236474617943.a n = A103872 n

end A103872

/-! ## A103872.P8714086477041822396

`2*(A025178(n+1)-A005774(n))`
-/

namespace A103872.P8714086477041822396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A025178 (n + 1) - A005774 n)

end

end A103872.P8714086477041822396

namespace A103872

/-- `2*(A025178(n+1)-A005774(n))` -/
def P8714086477041822396.Spec : Prop :=
  ∀ n, P8714086477041822396.a n = A103872 n

end A103872

/-! ## A103872.P3395574979450792138

`2*(Δ[A002426(n)]-A005774(n))`
-/

namespace A103872.P3395574979450792138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A005774 n)

end

end A103872.P3395574979450792138

namespace A103872

/-- `2*(Δ[A002426(n)]-A005774(n))` -/
def P3395574979450792138.Spec : Prop :=
  ∀ n, P3395574979450792138.a n = A103872 n

end A103872

/-!
# A103876: a(n) = -1/10 (mod prime(n)): A test for divisibility by the n-th prime.

The programs for A103876, there is no canonical definition to state claims against.
-/

/-! ## A103876.P15148556697220879723

`A065091(n+3)-A357913(n+4)`
-/

namespace A103876.P15148556697220879723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 3) - A357913 (n + 4)

end

end A103876.P15148556697220879723

/-! ## A103876.P2961452683044928416

`A000040(n+4)-A357913(n+4)`
-/

namespace A103876.P2961452683044928416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - A357913 (n + 4)

end

end A103876.P2961452683044928416

/-! ## A103876.P8431754145330285778

`A090417(n+1)-A357913(n+4)`
-/

namespace A103876.P8431754145330285778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1) - A357913 (n + 4)

end

end A103876.P8431754145330285778

/-! ## A103876.P15260401515135935945

`floor(A114011(n+4)/10)`
-/

namespace A103876.P15260401515135935945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114011 (n + 4) : ℚ) / 10⌋

end

end A103876.P15260401515135935945

/-! ## A103876.P13338895755098613765

`round(A114011(2*(n+2)-n)/10)`
-/

namespace A103876.P13338895755098613765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114011 (2 * (n + 2) - n) : ℚ) / 10)

end

end A103876.P13338895755098613765

/-! ## A103876.P8246909116283941326

`round(A114011(4-char[1]+n)/10)-char[1]`
-/

namespace A103876.P8246909116283941326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114011 (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat : ℚ) / 10) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A103876.P8246909116283941326

/-! ## A103876.P10251044505837256511

`A008616(A114011(n+4))`
-/

namespace A103876.P10251044505837256511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A114011 (n + 4)).toNat

end

end A103876.P10251044505837256511

/-! ## A103876.P4815330476845980524

`A000027(round(A114011(n+4)/10))`
-/

namespace A103876.P4815330476845980524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A114011 (n + 4) : ℚ) / 10)).toNat

end

end A103876.P4815330476845980524

/-! ## A103876.P2488859950583145023

`∑{d}[round(A114011(n+4)/10), A000010(#)]`
-/

namespace A103876.P2488859950583145023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114011 (n + 4) : ℚ) / 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A103876.P2488859950583145023

/-! ## A103876.P18293983823747581414

`∏{d}[round(A114011(n+4)/10), A014963(#)]`
-/

namespace A103876.P18293983823747581414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114011 (n + 4) : ℚ) / 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A103876.P18293983823747581414

/-!
# A103877: Position of n in rearrangement of natural numbers A103849.

The programs for A103877, there is no canonical definition to state claims against.
-/

/-! ## A103877.P2405756639473758397

`lt[2*a(n-3), 4*n]` with `a(0)=0, a(1)=2, a(2)=10, a(3)=1`
-/

namespace A103877.P2405756639473758397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 10, 1] fun n f1 =>
  2 * f1 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103877.P2405756639473758397

/-! ## A103877.P7583665212253344330

`lt[6*A035461(n+1), n]`
-/

namespace A103877.P7583665212253344330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A035461 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103877.P7583665212253344330

/-! ## A103877.P16676065514257490205

`eq[floor(n/3), A012265(n)]+1`
-/

namespace A103877.P16676065514257490205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A103877.P16676065514257490205

/-! ## A103877.P12625166748006675868

`lt[0, A284611(floor(n*ϕ²)+2)]`
-/

namespace A103877.P12625166748006675868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284611 (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103877.P12625166748006675868

/-! ## A103877.P16050962682010049731

`lt[xor(1, n), A167380(2*n+1)²]`
-/

namespace A103877.P16050962682010049731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167380 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103877.P16050962682010049731

/-!
# A103878: Expansion of x / ((1-12x)(1-15x)(1-20x)(1-30x)(1-60x)).

The programs for A103878, the canonical program `A103878.P11328935177657858651` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103878 has offset 0).

The definition of A103878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103878.P11328935177657858651

`1/12*(12^n-4*15^n+6*20^n-4*30^n+60^n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103878

/-- `1/12*(12^n-4*15^n+6*20^n-4*30^n+60^n)` -/
def P11328935177657858651.Spec : Prop :=
  ∀ n, P11328935177657858651.a n = (A103878 n : ℚ)

end A103878

/-! ## A103878.P3541184880916991829

`record[char[A052905(n)]*A257894(n+1)]`
-/

namespace A103878.P3541184880916991829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A257894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103878.P3541184880916991829

namespace A103878

/-- `record[char[A052905(n)]*A257894(n+1)]` -/
def P3541184880916991829.Spec : Prop :=
  ∀ n, P3541184880916991829.a n = A103878 n

end A103878

/-!
# A103880: Square array T(n,k) read by antidiagonals: denominators of Stirling numbers of first kind with negative argument S1(-n,k), n,k>=0.

The programs for A103880, there is no canonical definition to state claims against.
-/

/-! ## A103880.P3276405192752748613

`A263273(A119502(n)*A225816(n))`
-/

namespace A103880.P3276405192752748613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A119502 n * A225816 n).toNat

end

end A103880.P3276405192752748613

/-! ## A103880.P17782736114047557149

`A264966(A119502(n)*A225816(n))`
-/

namespace A103880.P17782736114047557149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A119502 n * A225816 n).toNat

end

end A103880.P17782736114047557149

/-! ## A103880.P3890478711192221801

`A263273(A119502(n)^A128227(n))`
-/

namespace A103880.P3890478711192221801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A119502 n : ℚ) ^ (A128227 n : ℤ))).toNat

end

end A103880.P3890478711192221801

/-! ## A103880.P180494914965495652

`A264966(A119502(n)^A128227(n))`
-/

namespace A103880.P180494914965495652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (SequenceMachineLib.roundAway ((A119502 n : ℚ) ^ (A128227 n : ℤ))).toNat

end

end A103880.P180494914965495652

/-! ## A103880.P5204442825086367142

`A263273(A119502(n)^A193738(n))`
-/

namespace A103880.P5204442825086367142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A119502 n : ℚ) ^ (A193738 n : ℤ))).toNat

end

end A103880.P5204442825086367142

/-!
# A103881: Square array T(n,k) (n >= 1, k >= 0) read by antidiagonals: coordination sequence for root lattice A_n.

The programs for A103881, there is no canonical definition to state claims against.
-/

/-! ## A103881.P9004925762193842976

`or(A208751(n+1), A350139(A208759(n+1)))`
-/

namespace A103881.P9004925762193842976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208751 (n + 1)) (A350139 (A208759 (n + 1)).toNat)

end

end A103881.P9004925762193842976

/-! ## A103881.P1204068692559155683

`A132016(A208751(n+1))`
-/

namespace A103881.P1204068692559155683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A208751 (n + 1)).toNat

end

end A103881.P1204068692559155683

/-! ## A103881.P1392813684835905358

`A004277(A206294(n)%A116431(n))`
-/

namespace A103881.P1392813684835905358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A206294 n) (A116431 n)).toNat

end

end A103881.P1392813684835905358

/-! ## A103881.P14083102953250246986

`or(A208751(n+1), A350139(A101024(n)))`
-/

namespace A103881.P14083102953250246986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208751 (n + 1)) (A350139 (A101024 n).toNat)

end

end A103881.P14083102953250246986

/-! ## A103881.P6384069619839884732

`or(A208751(n+1), A350139(A133200(n+1)))`
-/

namespace A103881.P6384069619839884732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208751 (n + 1)) (A350139 (A133200 (n + 1)).toNat)

end

end A103881.P6384069619839884732

/-!
# A103882: a(n) = Sum_{i=0..n} C(n+1,i)*C(n-1,i-1)*C(2n-i,n).

The programs for A103882, there is no canonical definition to state claims against.
-/

/-! ## A103882.P5155778191066607756

`record[A316649(∑[A004275(n)])]`
-/

namespace A103882.P5155778191066607756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103882.P5155778191066607756

/-! ## A103882.P1368289988440602680

`A316649(A131738(∑[2*n]))`
-/

namespace A103882.P1368289988440602680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (A131738 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A103882.P1368289988440602680

/-! ## A103882.P9884091209954067186

`A316649(A131738(n)²-n)`
-/

namespace A103882.P9884091209954067186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (A131738 n ^ 2 - (n : ℤ)).toNat

end

end A103882.P9884091209954067186

/-! ## A103882.P8266423807918673942

`(A208675(n)+A005258(n))/2`
-/

namespace A103882.P8266423807918673942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208675 n + A005258 n : ℚ) / 2

end

end A103882.P8266423807918673942

/-! ## A103882.P6984986741673124091

`A316649(eq[1, A316649(n)]+n)`
-/

namespace A103882.P6984986741673124091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n)

end

end A103882.P6984986741673124091

/-! ## A103882.P5320315591346441300

`A316649(A057427(n)+A002378(n))`
-/

namespace A103882.P5320315591346441300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (A057427 n + A002378 n).toNat

end

end A103882.P5320315591346441300

/-! ## A103882.P13103942929194886806

`A316649(A028552(n)-A004273(n))`
-/

namespace A103882.P13103942929194886806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (A028552 n - A004273 n).toNat

end

end A103882.P13103942929194886806

/-! ## A103882.P3919762340628133908

`A316649(or(A002378(n), A057427(n)))`
-/

namespace A103882.P3919762340628133908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (Int.lor (A002378 n) (A057427 n)).toNat

end

end A103882.P3919762340628133908

/-! ## A103882.P3694866183102281930

`A316649(2-(A057427(n)-A002378(n)))`
-/

namespace A103882.P3694866183102281930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (2 - (A057427 n - A002378 n)).toNat

end

end A103882.P3694866183102281930

/-! ## A103882.P5528195984489362211

`A103881(2*n²+1)`
-/

namespace A103882.P5528195984489362211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (2 * n ^ 2 + 1)

end

end A103882.P5528195984489362211

/-!
# A103883: Square array A(n,k) read by antidiagonals: coordination sequence for lattice B_n.

The programs for A103883, there is no canonical definition to state claims against.
-/

/-! ## A103883.P6983682678226788676

`A108998(comp[∑[n]]+∑[char[∑[n]]])`
-/

namespace A103883.P6983682678226788676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A103883.P6983682678226788676

/-! ## A103883.P6189914813214437274

`A102512(A103884(n+2))`
-/

namespace A103883.P6189914813214437274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102512 (A103884 (n + 2)).toNat

end

end A103883.P6189914813214437274

/-! ## A103883.P715681518757018066

`or(A103884(n+2), A153802(A070168(3*n+1)))`
-/

namespace A103883.P715681518757018066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103884 (n + 2)) (A153802 (A070168 (3 * n + 1)).toNat)

end

end A103883.P715681518757018066

/-!
# A103884: Square array A(n,k) read by antidiagonals: row n gives coordination sequence for lattice C_n.

The programs for A103884, there is no canonical definition to state claims against.
-/

/-! ## A103884.P4231625199939104255

`and(A103883(n+2), A141214(A249252(n)))`
-/

namespace A103884.P4231625199939104255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103883 (n + 2)) (A141214 (A249252 n).toNat)

end

end A103884.P4231625199939104255

/-! ## A103884.P7674602538845921846

`A035607(A327143(n+1)+A245300(n))`
-/

namespace A103884.P7674602538845921846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A327143 (n + 1) + A245300 n).toNat

end

end A103884.P7674602538845921846

/-! ## A103884.P8733628988974403896

`and(A103883(n+2), A141214(A008574(n)))`
-/

namespace A103884.P8733628988974403896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103883 (n + 2)) (A141214 (A008574 n).toNat)

end

end A103884.P8733628988974403896

/-! ## A103884.P15949304125581918471

`and(A103883(n+2), A103886(A103838(3*n)))`
-/

namespace A103884.P15949304125581918471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103883 (n + 2)) (A103886 (A103838 (3 * n)).toNat)

end

end A103884.P15949304125581918471

/-!
# A103885: a(n) = [x^(2*n)] ((1 + x)/(1 - x))^n.

The programs for A103885, there is no canonical definition to state claims against.
-/

/-! ## A103885.P17549642557038313318

`A056242(2*n²+1)`
-/

namespace A103885.P17549642557038313318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (2 * n ^ 2 + 1)

end

end A103885.P17549642557038313318

/-! ## A103885.P16135579108583225340

`A099605(A004273(n²))`
-/

namespace A103885.P16135579108583225340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099605 (A004273 (n ^ 2)).toNat

end

end A103885.P16135579108583225340

/-! ## A103885.P17085559460896116198

`A117317(A061579(2*n²))`
-/

namespace A103885.P17085559460896116198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (A061579 (2 * n ^ 2)).toNat

end

end A103885.P17085559460896116198

/-! ## A103885.P3773951562502861692

`record[gcd(A056242(n+2), A117317(n))]`
-/

namespace A103885.P3773951562502861692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056242 (n + 2)) (A117317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103885.P3773951562502861692

/-! ## A103885.P5153577864702883755

`A033877(2*n²+1)`
-/

namespace A103885.P5153577864702883755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (2 * n ^ 2 + 1)

end

end A103885.P5153577864702883755

/-! ## A103885.P6357181116191311820

`A122538(∑[4*n])`
-/

namespace A103885.P6357181116191311820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103885.P6357181116191311820

/-! ## A103885.P1489258650823022693

`A336521(∑[n+3])`
-/

namespace A103885.P1489258650823022693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103885.P1489258650823022693

/-!
# A103889: Odd and even positive integers swapped.

The programs for A103889, the canonical program `A103889.P18284747642469909281` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103889 has offset 1).

The definition of A103889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103889.P18284747642469909281

`n+1-(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103889

/-- `n+1-(-1)^(n+1)` -/
def P18284747642469909281.Spec : Prop :=
  ∀ n, P18284747642469909281.a n = A103889 (n + 1)

theorem P18284747642469909281.correct : P18284747642469909281.Spec := by
  intro n
  simp only [A103889, Nat.add_sub_cancel]

end A103889

/-! ## A103889.P11112325172512617663

`abs(xor(n, -2))`
-/

namespace A103889.P11112325172512617663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

end

end A103889.P11112325172512617663

namespace A103889

/-- `abs(xor(n, -2))` -/
def P11112325172512617663.Spec : Prop :=
  ∀ n, P11112325172512617663.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P6938903179825333607

`-xor(n, -2)`
-/

namespace A103889.P6938903179825333607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-2)

end

end A103889.P6938903179825333607

namespace A103889

/-- `-xor(n, -2)` -/
def P6938903179825333607.Spec : Prop :=
  ∀ n, P6938903179825333607.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P7128310223194174367

`ceil(acos(n%2)+n)`
-/

namespace A103889.P7128310223194174367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos ((n % 2 : ℕ) : ℝ) + (n : ℝ)⌉

end

end A103889.P7128310223194174367

namespace A103889

/-- `ceil(acos(n%2)+n)` -/
def P7128310223194174367.Spec : Prop :=
  ∀ n, P7128310223194174367.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P2698135198273493904

`ceil(xor(3, 2*n)/2)`
-/

namespace A103889.P2698135198273493904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 (2 * n) : ℚ) / 2⌉

end

end A103889.P2698135198273493904

namespace A103889

/-- `ceil(xor(3, 2*n)/2)` -/
def P2698135198273493904.Spec : Prop :=
  ∀ n, P2698135198273493904.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P6342585771836138447

`round(xor(3, 2*n)/2)`
-/

namespace A103889.P6342585771836138447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 (2 * n) : ℚ) / 2)

end

end A103889.P6342585771836138447

namespace A103889

/-- `round(xor(3, 2*n)/2)` -/
def P6342585771836138447.Spec : Prop :=
  ∀ n, P6342585771836138447.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P493802514056495686

`(n+2)/ratio[or(1, n)]`
-/

namespace A103889.P493802514056495686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A103889.P493802514056495686

namespace A103889

/-- `(n+2)/ratio[or(1, n)]` -/
def P493802514056495686.Spec : Prop :=
  ∀ n, P493802514056495686.a n = (A103889 (n + 1) : ℚ)

end A103889

/-! ## A103889.P3840304510493088630

`ceil(cosh(log(xor(3, 2*n))))`
-/

namespace A103889.P3840304510493088630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Nat.xor 3 (2 * n) : ℝ))⌉

end

end A103889.P3840304510493088630

namespace A103889

/-- `ceil(cosh(log(xor(3, 2*n))))` -/
def P3840304510493088630.Spec : Prop :=
  ∀ n, P3840304510493088630.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P2149959165243909250

`round(cosh(log(xor(3, 2*n))))`
-/

namespace A103889.P2149959165243909250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.xor 3 (2 * n) : ℝ)))

end

end A103889.P2149959165243909250

namespace A103889

/-- `round(cosh(log(xor(3, 2*n))))` -/
def P2149959165243909250.Spec : Prop :=
  ∀ n, P2149959165243909250.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P6353772573157122799

`ceil(tan(char[2*n])+n)`
-/

namespace A103889.P6353772573157122799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (n : ℝ)⌉

end

end A103889.P6353772573157122799

namespace A103889

/-- `ceil(tan(char[2*n])+n)` -/
def P6353772573157122799.Spec : Prop :=
  ∀ n, P6353772573157122799.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P6509339927499794169

`round(tan(char[2*n])+n)`
-/

namespace A103889.P6509339927499794169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (n : ℝ))

end

end A103889.P6509339927499794169

namespace A103889

/-- `round(tan(char[2*n])+n)` -/
def P6509339927499794169.Spec : Prop :=
  ∀ n, P6509339927499794169.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P4178161459782158690

`ceil(sinh(char[2*n])+n)`
-/

namespace A103889.P4178161459782158690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (n : ℝ)⌉

end

end A103889.P4178161459782158690

namespace A103889

/-- `ceil(sinh(char[2*n])+n)` -/
def P4178161459782158690.Spec : Prop :=
  ∀ n, P4178161459782158690.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P896054641400443604

`abs(a(n-2)+2)` with `a(0)=2, a(1)=1`
-/

namespace A103889.P896054641400443604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + 2

end

end A103889.P896054641400443604

namespace A103889

/-- `abs(a(n-2)+2)` -/
def P896054641400443604.Spec : Prop :=
  ∀ n, (P896054641400443604.a n : ℤ) = A103889 (n + 1)

theorem P896054641400443604.correct : P896054641400443604.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A103889, Nat.add_sub_cancel, A103889.P896054641400443604.a, A103889.P18284747642469909281.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A103889, Nat.add_sub_cancel, A103889.P896054641400443604.a, A103889.P18284747642469909281.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103889

/-! ## A103889.P6767296644276570352

`∑[or(3, -a(n-1))]` with `a(0)=2`
-/

namespace A103889.P6767296644276570352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.lor 3 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103889.P6767296644276570352

namespace A103889

/-- `∑[or(3, -a(n-1))]` -/
def P6767296644276570352.Spec : Prop :=
  ∀ n, P6767296644276570352.a n = A103889 (n + 1)

end A103889

/-! ## A103889.P16503578320983655862

`A014681(n+1)`
-/

namespace A103889.P16503578320983655862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 1)

end

end A103889.P16503578320983655862

namespace A103889

/-- `A014681(n+1)` -/
def P16503578320983655862.Spec : Prop :=
  ∀ n, P16503578320983655862.a n = A103889 (n + 1)

end A103889

/-!
# A103890: a(n) = prime(n)! / prime(n)# + 1.

The programs for A103890, there is no canonical definition to state claims against.
-/

/-! ## A103890.P10895498586581410336

`A092435(n+1)+1`
-/

namespace A103890.P10895498586581410336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092435 (n + 1) + 1

end

end A103890.P10895498586581410336

/-! ## A103890.P18026082779768873209

`A039716(n+1)/A002110(n+1)+1`
-/

namespace A103890.P18026082779768873209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ) + 1

end

end A103890.P18026082779768873209

/-! ## A103890.P11513526971198092288

`∏[A109919(2*n+1)]+1`
-/

namespace A103890.P11513526971198092288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109919 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A103890.P11513526971198092288

/-! ## A103890.P4755123031541145280

`A049614(A000040(n+1))+1`
-/

namespace A103890.P4755123031541145280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (A000040 (n + 1)).toNat + 1

end

end A103890.P4755123031541145280

/-! ## A103890.P8246635613585973348

`A049614(A006005(n+1))+1`
-/

namespace A103890.P8246635613585973348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (A006005 (n + 1)).toNat + 1

end

end A103890.P8246635613585973348

/-!
# A103892: Greatest prime factor of prime(n)! / prime(n)# + 1.

The programs for A103892, there is no canonical definition to state claims against.
-/

/-! ## A103892.P385616807554477246

`A006530(A103890(n+1))`
-/

namespace A103892.P385616807554477246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103890 (n + 1)).toNat

end

end A103892.P385616807554477246

/-!
# A103893: Number of distinct prime factors of prime(n)! / prime(n)# + 1.

The programs for A103893, there is no canonical definition to state claims against.
-/

/-! ## A103893.P16128852994119244315

`floor(log2(A103894(n+1)))`
-/

namespace A103893.P16128852994119244315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A103894 (n + 1)).toNat

end

end A103893.P16128852994119244315

/-! ## A103893.P279010437623659635

`∏{e}[A103894(ceil(sqrt(n²+4))), #]`
-/

namespace A103893.P279010437623659635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103894 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A103893.P279010437623659635

/-! ## A103893.P7160653447604413643

`A000523(A103894(n+1))`
-/

namespace A103893.P7160653447604413643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A103894 (n + 1)).toNat

end

end A103893.P7160653447604413643

/-! ## A103893.P12645306182834940023

`A000120(A103894(n+1)-1)`
-/

namespace A103893.P12645306182834940023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A103894 (n + 1) - 1).toNat

end

end A103893.P12645306182834940023

/-! ## A103893.P9941459987972955428

`A002487(A103894(n+1)-1)`
-/

namespace A103893.P9941459987972955428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A103894 (n + 1) - 1).toNat

end

end A103893.P9941459987972955428

/-!
# A103895: Sum of divisors of prime(n)! / prime(n)# + 1.

The programs for A103895, there is no canonical definition to state claims against.
-/

/-! ## A103895.P2049527979397506863

`A000203(A103890(n+1))`
-/

namespace A103895.P2049527979397506863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A103890 (n + 1)).toNat

end

end A103895.P2049527979397506863

/-! ## A103895.P564560020110584652

`∑{d}[A092435(n+1)+1, #]`
-/

namespace A103895.P564560020110584652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092435 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A103895.P564560020110584652

/-!
# A103896: Euler's totient of prime(n)! / prime(n)# + 1.

The programs for A103896, there is no canonical definition to state claims against.
-/

/-! ## A103896.P5127249135774220631

`A000010(A103890(n+1))`
-/

namespace A103896.P5127249135774220631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A103890 (n + 1)).toNat

end

end A103896.P5127249135774220631

/-!
# A103897: a(n) = 3*2^(n-1)*(2^n-1).

The programs for A103897, the canonical program `A103897.P7715152882629146350` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103897 has offset 1).

The definition of A103897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n*(2^(n+1)-1)` (program `A103897.P7715152882629146350`, by `A103897.P7715152882629146350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103897.P7715152882629146350

`3*2^n*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103897

/-- `3*2^n*(2^(n+1)-1)` -/
def P7715152882629146350.Spec : Prop :=
  ∀ n, P7715152882629146350.a n = A103897 (n + 1)

theorem P7715152882629146350.correct : P7715152882629146350.Spec := by
  intro n
  simp only [A103897, Nat.add_sub_cancel]

end A103897

/-! ## A103897.P236197538839548447

`ogf(3/(1-6x+8x^2))`
-/

namespace A103897.P236197538839548447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -6, 8] n

end

end A103897.P236197538839548447

namespace A103897

/-- `ogf(3/(1-6x+8x^2))` -/
def P236197538839548447.Spec : Prop :=
  ∀ n, P236197538839548447.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P14836018624005685263

`∑[C(3*2^n, 2)]`
-/

namespace A103897.P14836018624005685263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * 2 ^ n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103897.P14836018624005685263

namespace A103897

/-- `∑[C(3*2^n, 2)]` -/
def P14836018624005685263.Spec : Prop :=
  ∀ n, (P14836018624005685263.a n : ℤ) = A103897 (n + 1)

end A103897

/-! ## A103897.P5658626395504693804

`lcm(lcm(3, 2^n), ∑[lcm(3, 2^n)])`
-/

namespace A103897.P5658626395504693804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.lcm 3 (2 ^ n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103897.P5658626395504693804

namespace A103897

/-- `lcm(lcm(3, 2^n), ∑[lcm(3, 2^n)])` -/
def P5658626395504693804.Spec : Prop :=
  ∀ n, (P5658626395504693804.a n : ℤ) = A103897 (n + 1)

end A103897

/-! ## A103897.P9070982149735592798

`Δ[A134057(n+1)]`
-/

namespace A103897.P9070982149735592798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103897.P9070982149735592798

namespace A103897

/-- `Δ[A134057(n+1)]` -/
def P9070982149735592798.Spec : Prop :=
  ∀ n, P9070982149735592798.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P18229975290830757998

`∑[3*A010036(n)]`
-/

namespace A103897.P18229975290830757998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A010036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103897.P18229975290830757998

namespace A103897

/-- `∑[3*A010036(n)]` -/
def P18229975290830757998.Spec : Prop :=
  ∀ n, P18229975290830757998.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P7239611577454569854

`Δ[A274230(Δ[n²])]`
-/

namespace A103897.P7239611577454569854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103897.P7239611577454569854

namespace A103897

/-- `Δ[A274230(Δ[n²])]` -/
def P7239611577454569854.Spec : Prop :=
  ∀ n, P7239611577454569854.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P6590960611486594346

`A135094(2*(n+1))`
-/

namespace A103897.P6590960611486594346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135094 (2 * (n + 1))

end

end A103897.P6590960611486594346

namespace A103897

/-- `A135094(2*(n+1))` -/
def P6590960611486594346.Spec : Prop :=
  ∀ n, P6590960611486594346.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P2168081161767931419

`A032098(n+2)-3`
-/

namespace A103897.P2168081161767931419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032098 (n + 2) - 3

end

end A103897.P2168081161767931419

namespace A103897

/-- `A032098(n+2)-3` -/
def P2168081161767931419.Spec : Prop :=
  ∀ n, P2168081161767931419.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P2963298594659079070

`Δ[3*A006095(n+1)]`
-/

namespace A103897.P2963298594659079070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103897.P2963298594659079070

namespace A103897

/-- `Δ[3*A006095(n+1)]` -/
def P2963298594659079070.Spec : Prop :=
  ∀ n, P2963298594659079070.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P3545210793295796946

`(A169726(n+1)-1)/2`
-/

namespace A103897.P3545210793295796946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169726 (n + 1) - 1 : ℚ) / 2

end

end A103897.P3545210793295796946

namespace A103897

/-- `(A169726(n+1)-1)/2` -/
def P3545210793295796946.Spec : Prop :=
  ∀ n, P3545210793295796946.a n = (A103897 (n + 1) : ℚ)

end A103897

/-! ## A103897.P3446943814154038227

`(A169720(n+1)-1)/3`
-/

namespace A103897.P3446943814154038227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169720 (n + 1) - 1 : ℚ) / 3

end

end A103897.P3446943814154038227

namespace A103897

/-- `(A169720(n+1)-1)/3` -/
def P3446943814154038227.Spec : Prop :=
  ∀ n, P3446943814154038227.a n = (A103897 (n + 1) : ℚ)

end A103897

/-! ## A103897.P1056756116366464549

`3*A020522(n+1)/2`
-/

namespace A103897.P1056756116366464549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A020522 (n + 1) : ℚ) / 2

end

end A103897.P1056756116366464549

namespace A103897

/-- `3*A020522(n+1)/2` -/
def P1056756116366464549.Spec : Prop :=
  ∀ n, P1056756116366464549.a n = (A103897 (n + 1) : ℚ)

end A103897

/-! ## A103897.P5752376344069749644

`abs(Δ[A274230(2*n+1)])`
-/

namespace A103897.P5752376344069749644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A103897.P5752376344069749644

namespace A103897

/-- `abs(Δ[A274230(2*n+1)])` -/
def P5752376344069749644.Spec : Prop :=
  ∀ n, P5752376344069749644.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P2007086214879780326

`A010036(n+1)-2^(n+1)`
-/

namespace A103897.P2007086214879780326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A103897.P2007086214879780326

namespace A103897

/-- `A010036(n+1)-2^(n+1)` -/
def P2007086214879780326.Spec : Prop :=
  ∀ n, P2007086214879780326.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P2054268283119308212

`a(n-1)+A164346(n)+a(n-1)` with `a(0)=3`
-/

namespace A103897.P2054268283119308212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A164346 n + a (n - 1))

end

end A103897.P2054268283119308212

namespace A103897

/-- `a(n-1)+A164346(n)+a(n-1)` -/
def P2054268283119308212.Spec : Prop :=
  ∀ n, P2054268283119308212.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P5753092672692933250

`A153893(n)+A020527(n)`
-/

namespace A103897.P5753092672692933250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n + A020527 n

end

end A103897.P5753092672692933250

namespace A103897

/-- `A153893(n)+A020527(n)` -/
def P5753092672692933250.Spec : Prop :=
  ∀ n, P5753092672692933250.a n = A103897 (n + 1)

end A103897

/-! ## A103897.P1401070666191893838

`A187560(n)+A092440(n)`
-/

namespace A103897.P1401070666191893838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187560 n + A092440 n

end

end A103897.P1401070666191893838

namespace A103897

/-- `A187560(n)+A092440(n)` -/
def P1401070666191893838.Spec : Prop :=
  ∀ n, P1401070666191893838.a n = A103897 (n + 1)

end A103897

