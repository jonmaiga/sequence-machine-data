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
import Seq.B001.C009
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
# A055201: Numbers k such that A005728(k) is prime.

The programs for A055201, the canonical program `A055201.P11625339162653954639` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055201 has offset 1).

The definition of A055201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055201.P11625339162653954639

`eq[2, ∑{e}[A049632(n), #]]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055201

/-- `eq[2, ∑{e}[A049632(n), #]]` -/
def P11625339162653954639.Spec : Prop :=
  ∀ n, (P11625339162653954639.a n : ℤ) = A055201 (n + 1)

theorem P11625339162653954639.correct : P11625339162653954639.Spec := by
  intro n
  simp only [A055201, Nat.add_sub_cancel]

end A055201

/-! ## A055201.P10805405691908511475

`eq[1, A001222(A005728(n))]`
-/

namespace A055201.P10805405691908511475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055201.P10805405691908511475

namespace A055201

/-- `eq[1, A001222(A005728(n))]` -/
def P10805405691908511475.Spec : Prop :=
  ∀ n, (P10805405691908511475.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P14720983453177233913

`eq[2, A077462(A049643(n))]`
-/

namespace A055201.P14720983453177233913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A049643 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055201.P14720983453177233913

namespace A055201

/-- `eq[2, A077462(A049643(n))]` -/
def P14720983453177233913.Spec : Prop :=
  ∀ n, (P14720983453177233913.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P2928732435693747475

`A038567(p?[A005728(n)]-2)`
-/

namespace A055201.P2928732435693747475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat

end

end A055201.P2928732435693747475

namespace A055201

/-- `A038567(p?[A005728(n)]-2)` -/
def P2928732435693747475.Spec : Prop :=
  ∀ n, P2928732435693747475.a n = A055201 (n + 1)

end A055201

/-! ## A055201.P7779589445300368880

`A038567(A078334(n+1)-2)`
-/

namespace A055201.P7779589445300368880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A078334 (n + 1) - 2).toNat

end

end A055201.P7779589445300368880

namespace A055201

/-- `A038567(A078334(n+1)-2)` -/
def P7779589445300368880.Spec : Prop :=
  ∀ n, P7779589445300368880.a n = A055201 (n + 1)

end A055201

/-! ## A055201.P13717789948143803133

`eq[1, A001222(A002088(n)+1)]`
-/

namespace A055201.P13717789948143803133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002088 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055201.P13717789948143803133

namespace A055201

/-- `eq[1, A001222(A002088(n)+1)]` -/
def P13717789948143803133.Spec : Prop :=
  ∀ n, (P13717789948143803133.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P5295606477671021842

`eq[2, A000005(A002088(n)+1)]`
-/

namespace A055201.P5295606477671021842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002088 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055201.P5295606477671021842

namespace A055201

/-- `eq[2, A000005(A002088(n)+1)]` -/
def P5295606477671021842.Spec : Prop :=
  ∀ n, (P5295606477671021842.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P12777202615666291259

`eq[2, A000005(or(1, A049643(n)))]`
-/

namespace A055201.P12777202615666291259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 1 (A049643 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055201.P12777202615666291259

namespace A055201

/-- `eq[2, A000005(or(1, A049643(n)))]` -/
def P12777202615666291259.Spec : Prop :=
  ∀ n, (P12777202615666291259.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P7450018136067414566

`eq[2, A000005(A049643(n+1))]+1`
-/

namespace A055201.P7450018136067414566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049643 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055201.P7450018136067414566

namespace A055201

/-- `eq[2, A000005(A049643(n+1))]+1` -/
def P7450018136067414566.Spec : Prop :=
  ∀ n, (P7450018136067414566.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P8651201180583621943

`eq[1, A001222(∑[A000010(n+1)]+1)]+1`
-/

namespace A055201.P8651201180583621943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055201.P8651201180583621943

namespace A055201

/-- `eq[1, A001222(∑[A000010(n+1)]+1)]+1` -/
def P8651201180583621943.Spec : Prop :=
  ∀ n, (P8651201180583621943.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P5382153456088922106

`eq[A000010(A005728(n)), A002088(n)]`
-/

namespace A055201.P5382153456088922106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055201.P5382153456088922106

namespace A055201

/-- `eq[A000010(A005728(n)), A002088(n)]` -/
def P5382153456088922106.Spec : Prop :=
  ∀ n, (P5382153456088922106.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P1049515106538496736

`eq[A000010(A002088(n)+1), A002088(n)]`
-/

namespace A055201.P1049515106538496736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002088 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055201.P1049515106538496736

namespace A055201

/-- `eq[A000010(A002088(n)+1), A002088(n)]` -/
def P1049515106538496736.Spec : Prop :=
  ∀ n, (P1049515106538496736.a n : ℤ) = A055201 (n + 1)

end A055201

/-! ## A055201.P7516470714413527205

`record[A052938(2*n)/A171435(A049643(n+1))]`
-/

namespace A055201.P7516470714413527205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * n) : ℚ) / (A171435 (A049643 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055201.P7516470714413527205

namespace A055201

/-- `record[A052938(2*n)/A171435(A049643(n+1))]` -/
def P7516470714413527205.Spec : Prop :=
  ∀ n, P7516470714413527205.a n = (A055201 (n + 1) : ℚ)

end A055201

/-! ## A055201.P7598463931389238565

`record[A065033(2*n+1)/A171435(A049643(n+1))]`
-/

namespace A055201.P7598463931389238565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n + 1) : ℚ) / (A171435 (A049643 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055201.P7598463931389238565

namespace A055201

/-- `record[A065033(2*n+1)/A171435(A049643(n+1))]` -/
def P7598463931389238565.Spec : Prop :=
  ∀ n, P7598463931389238565.a n = (A055201 (n + 1) : ℚ)

end A055201

/-! ## A055201.P10145258776468038092

`eq[2, A001222(A049632(n))]`
-/

namespace A055201.P10145258776468038092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055201.P10145258776468038092

namespace A055201

/-- `eq[2, A001222(A049632(n))]` -/
def P10145258776468038092.Spec : Prop :=
  ∀ n, (P10145258776468038092.a n : ℤ) = A055201 (n + 1)

end A055201

/-!
# A055202: Smallest integer that can be expressed as p+2m^2 in more ways than any smaller number, where m >= 0 and p = 1 or prime.

The programs for A055202, there is no canonical definition to state claims against.
-/

/-! ## A055202.P5948301590525474964

`record[A007697(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A055202.P5948301590525474964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007697 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055202.P5948301590525474964

/-! ## A055202.P8819902071032674961

`record[A007697(A056538(n+1))]`
-/

namespace A055202.P8819902071032674961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007697 (A056538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055202.P8819902071032674961

/-! ## A055202.P6440315727603092002

`record[A007697(A286603(n+1))]`
-/

namespace A055202.P6440315727603092002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007697 (A286603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055202.P6440315727603092002

/-! ## A055202.P1261297096484058569

`record[A007697(A292583(n+1))]`
-/

namespace A055202.P1261297096484058569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007697 (A292583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055202.P1261297096484058569

/-! ## A055202.P1522851534555613467

`record[A007697(A369609(n+1))]`
-/

namespace A055202.P1522851534555613467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007697 (A369609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055202.P1522851534555613467

/-!
# A055203: Number of different relations between n intervals on a line.

The programs for A055203, there is no canonical definition to state claims against.
-/

/-! ## A055203.P6144065561685540692

`ceil(A059516(n)/2)`
-/

namespace A055203.P6144065561685540692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059516 n : ℚ) / 2⌉

end

end A055203.P6144065561685540692

/-! ## A055203.P3165111908412684993

`A059516(n)/(A057427(n)+1)`
-/

namespace A055203.P3165111908412684993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059516 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A055203.P3165111908412684993

/-! ## A055203.P17940734640549869498

`A059516(n)/A020639(A000132(n))`
-/

namespace A055203.P17940734640549869498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059516 n : ℚ) / (A020639 (A000132 n).toNat : ℚ)

end

end A055203.P17940734640549869498

/-! ## A055203.P8782341225665277557

`A059516(n)/A020639(A004277(n))`
-/

namespace A055203.P8782341225665277557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059516 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A055203.P8782341225665277557

/-!
# A055204: Squarefree part of n!: n! divided by its largest square divisor.

The programs for A055204, the canonical program `A055204.P17370574123234970740` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055204 has offset 1).

The definition of A055204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055204.P17370574123234970740

`(n+1)!/A055071(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055204

/-- `(n+1)!/A055071(n+1)` -/
def P17370574123234970740.Spec : Prop :=
  ∀ n, P17370574123234970740.a n = (A055204 (n + 1) : ℚ)

end A055204

/-! ## A055204.P12610737909775150371

`A000142(n+1)/A055071(n+1)`
-/

namespace A055204.P12610737909775150371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A055071 (n + 1) : ℚ)

end

end A055204.P12610737909775150371

namespace A055204

/-- `A000142(n+1)/A055071(n+1)` -/
def P12610737909775150371.Spec : Prop :=
  ∀ n, P12610737909775150371.a n = (A055204 (n + 1) : ℚ)

end A055204

/-! ## A055204.P2995007462118624220

`A055230(n+1)*A055773(n+1)`
-/

namespace A055204.P2995007462118624220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1) * A055773 (n + 1)

end

end A055204.P2995007462118624220

namespace A055204

/-- `A055230(n+1)*A055773(n+1)` -/
def P2995007462118624220.Spec : Prop :=
  ∀ n, P2995007462118624220.a n = A055204 (n + 1)

end A055204

/-! ## A055204.P17414180488508507286

`lcm(A055230(n+1), A130087(n+1))`
-/

namespace A055204.P17414180488508507286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055230 (n + 1)) (A130087 (n + 1))

end

end A055204.P17414180488508507286

namespace A055204

/-- `lcm(A055230(n+1), A130087(n+1))` -/
def P17414180488508507286.Spec : Prop :=
  ∀ n, (P17414180488508507286.a n : ℤ) = A055204 (n + 1)

end A055204

/-! ## A055204.P4847504883932424353

`A056042(n+1)/A056044(n+1)²`
-/

namespace A055204.P4847504883932424353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056042 (n + 1) : ℚ) / (A056044 (n + 1) ^ 2 : ℚ)

end

end A055204.P4847504883932424353

namespace A055204

/-- `A056042(n+1)/A056044(n+1)²` -/
def P4847504883932424353.Spec : Prop :=
  ∀ n, P4847504883932424353.a n = (A055204 (n + 1) : ℚ)

end A055204

/-! ## A055204.P17128725299909779781

`A249831(C(n+3, 2))`
-/

namespace A055204.P17128725299909779781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249831 (Nat.choose (n + 3) 2)

end

end A055204.P17128725299909779781

namespace A055204

/-- `A249831(C(n+3, 2))` -/
def P17128725299909779781.Spec : Prop :=
  ∀ n, P17128725299909779781.a n = A055204 (n + 1)

end A055204

/-! ## A055204.P6852352565918973501

`A249831(∑[n+2]+1)`
-/

namespace A055204.P6852352565918973501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055204.P6852352565918973501

namespace A055204

/-- `A249831(∑[n+2]+1)` -/
def P6852352565918973501.Spec : Prop :=
  ∀ n, P6852352565918973501.a n = A055204 (n + 1)

end A055204

/-! ## A055204.P13753272820712939955

`A055772(n+1)/A056627(n+1)*A055773(n+1)`
-/

namespace A055204.P13753272820712939955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A056627 (n + 1) : ℚ) * (A055773 (n + 1) : ℚ)

end

end A055204.P13753272820712939955

namespace A055204

/-- `A055772(n+1)/A056627(n+1)*A055773(n+1)` -/
def P13753272820712939955.Spec : Prop :=
  ∀ n, P13753272820712939955.a n = (A055204 (n + 1) : ℚ)

end A055204

/-! ## A055204.P16286183711207588255

`A065887(n+1)/A055772(n+1)`
-/

namespace A055204.P16286183711207588255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065887 (n + 1) : ℚ) / (A055772 (n + 1) : ℚ)

end

end A055204.P16286183711207588255

namespace A055204

/-- `A065887(n+1)/A055772(n+1)` -/
def P16286183711207588255.Spec : Prop :=
  ∀ n, P16286183711207588255.a n = (A055204 (n + 1) : ℚ)

end A055204

/-! ## A055204.P17696726986257677575

`A055773(n+1)/A055071(n+1)*A182922(n+1)`
-/

namespace A055204.P17696726986257677575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 (n + 1) : ℚ) / (A055071 (n + 1) : ℚ) * (A182922 (n + 1) : ℚ)

end

end A055204.P17696726986257677575

namespace A055204

/-- `A055773(n+1)/A055071(n+1)*A182922(n+1)` -/
def P17696726986257677575.Spec : Prop :=
  ∀ n, P17696726986257677575.a n = (A055204 (n + 1) : ℚ)

end A055204

/-!
# A055205: Number of nonsquare divisors of n^2.

The programs for A055205, the canonical program `A055205.P13391514614413086589` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055205 has offset 1).

The definition of A055205 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055205.P13391514614413086589

`A048691(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055205

/-- `A048691(n+1)-A000005(n+1)` -/
def P13391514614413086589.Spec : Prop :=
  ∀ n, P13391514614413086589.a n = A055205 (n + 1)

theorem P13391514614413086589.correct : P13391514614413086589.Spec := by
  intro n
  simp only [A055205, Nat.add_sub_cancel]

end A055205

/-! ## A055205.P3307876197037601224

`A000005((n+1)²)-A000005(n+1)`
-/

namespace A055205.P3307876197037601224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2) - A000005 (n + 1)

end

end A055205.P3307876197037601224

namespace A055205

/-- `A000005((n+1)²)-A000005(n+1)` -/
def P3307876197037601224.Spec : Prop :=
  ∀ n, P3307876197037601224.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P12187307444489170914

`A056595(A000290(n+1))`
-/

namespace A055205.P12187307444489170914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A000290 (n + 1)).toNat

end

end A055205.P12187307444489170914

namespace A055205

/-- `A056595(A000290(n+1))` -/
def P12187307444489170914.Spec : Prop :=
  ∀ n, P12187307444489170914.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P3423219218852158014

`∑{d}[n+1, A309307(#)]`
-/

namespace A055205.P3423219218852158014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309307 d

end

end A055205.P3423219218852158014

namespace A055205

/-- `∑{d}[n+1, A309307(#)]` -/
def P3423219218852158014.Spec : Prop :=
  ∀ n, P3423219218852158014.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P10294507612417199160

`∑{d}[n+1, 2^A001221(#)-1]`
-/

namespace A055205.P10294507612417199160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 : ℚ) ^ (A001221 d : ℤ) - 1)

end

end A055205.P10294507612417199160

namespace A055205

/-- `∑{d}[n+1, 2^A001221(#)-1]` -/
def P10294507612417199160.Spec : Prop :=
  ∀ n, P10294507612417199160.a n = (A055205 (n + 1) : ℚ)

end A055205

/-! ## A055205.P1652761153594811245

`A048691(n+1)-Δ[A006218(n)]`
-/

namespace A055205.P1652761153594811245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055205.P1652761153594811245

namespace A055205

/-- `A048691(n+1)-Δ[A006218(n)]` -/
def P1652761153594811245.Spec : Prop :=
  ∀ n, P1652761153594811245.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P17426900729980680587

`A089233(n+1)+A063647(n+1)`
-/

namespace A055205.P17426900729980680587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1) + A063647 (n + 1)

end

end A055205.P17426900729980680587

namespace A055205

/-- `A089233(n+1)+A063647(n+1)` -/
def P17426900729980680587.Spec : Prop :=
  ∀ n, P17426900729980680587.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P13428230038486566491

`A117677(n+1)-A070824(n+1)`
-/

namespace A055205.P13428230038486566491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117677 (n + 1) - A070824 (n + 1)

end

end A055205.P13428230038486566491

namespace A055205

/-- `A117677(n+1)-A070824(n+1)` -/
def P13428230038486566491.Spec : Prop :=
  ∀ n, P13428230038486566491.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P14953678914134984421

`A337524(n+1)-A065814(n+1)`
-/

namespace A055205.P14953678914134984421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) - A065814 (n + 1)

end

end A055205.P14953678914134984421

namespace A055205

/-- `A337524(n+1)-A065814(n+1)` -/
def P14953678914134984421.Spec : Prop :=
  ∀ n, P14953678914134984421.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P16939737450881425890

`A048691(n+1)-sqrt(A035116(n+1))`
-/

namespace A055205.P16939737450881425890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) : ℝ) - Real.sqrt (A035116 (n + 1) : ℝ)

end

end A055205.P16939737450881425890

namespace A055205

/-- `A048691(n+1)-sqrt(A035116(n+1))` -/
def P16939737450881425890.Spec : Prop :=
  ∀ n, P16939737450881425890.a n = (A055205 (n + 1) : ℝ)

end A055205

/-! ## A055205.P4660193036478861749

`A018892(n+1)+A089233(n+1)-1`
-/

namespace A055205.P4660193036478861749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + (A089233 (n + 1) - 1)

end

end A055205.P4660193036478861749

namespace A055205

/-- `A018892(n+1)+A089233(n+1)-1` -/
def P4660193036478861749.Spec : Prop :=
  ∀ n, P4660193036478861749.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P9325319503352328732

`A089233(n+1)+A046079(2*(n+1))`
-/

namespace A055205.P9325319503352328732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1) + A046079 (2 * (n + 1))

end

end A055205.P9325319503352328732

namespace A055205

/-- `A089233(n+1)+A046079(2*(n+1))` -/
def P9325319503352328732.Spec : Prop :=
  ∀ n, P9325319503352328732.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P9482294515194320342

`∑{d}[n+1, A008966(#)*A056595((n+1)/#)]`
-/

namespace A055205.P9482294515194320342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A056595 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055205.P9482294515194320342

namespace A055205

/-- `∑{d}[n+1, A008966(#)*A056595((n+1)/#)]` -/
def P9482294515194320342.Spec : Prop :=
  ∀ n, P9482294515194320342.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P4036194074071771911

`∑{d}[n+1, A034444(#)*A049240((n+1)/#)]`
-/

namespace A055205.P4036194074071771911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A049240 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055205.P4036194074071771911

namespace A055205

/-- `∑{d}[n+1, A034444(#)*A049240((n+1)/#)]` -/
def P4036194074071771911.Spec : Prop :=
  ∀ n, P4036194074071771911.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P6286283969903202887

`∑{d}[n+1, A034444(#)*A267635((n+1)/#)]`
-/

namespace A055205.P6286283969903202887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A267635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055205.P6286283969903202887

namespace A055205

/-- `∑{d}[n+1, A034444(#)*A267635((n+1)/#)]` -/
def P6286283969903202887.Spec : Prop :=
  ∀ n, P6286283969903202887.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P13487408047375832714

`∑{d}[n+1, A130054(#)*A306927((n+1)/#)]`
-/

namespace A055205.P13487408047375832714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A306927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055205.P13487408047375832714

namespace A055205

/-- `∑{d}[n+1, A130054(#)*A306927((n+1)/#)]` -/
def P13487408047375832714.Spec : Prop :=
  ∀ n, P13487408047375832714.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P17330355691598589747

`A018892(n+1)+A063647(n+1)-A000005(n+1)`
-/

namespace A055205.P17330355691598589747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + (A063647 (n + 1) - A000005 (n + 1))

end

end A055205.P17330355691598589747

namespace A055205

/-- `A018892(n+1)+A063647(n+1)-A000005(n+1)` -/
def P17330355691598589747.Spec : Prop :=
  ∀ n, P17330355691598589747.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P11728131715689226688

`A035116(n+1)-(A065814(n+1)+A000005(n+1))`
-/

namespace A055205.P11728131715689226688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - (A065814 (n + 1) + A000005 (n + 1))

end

end A055205.P11728131715689226688

namespace A055205

/-- `A035116(n+1)-(A065814(n+1)+A000005(n+1))` -/
def P11728131715689226688.Spec : Prop :=
  ∀ n, P11728131715689226688.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P5497836327397488957

`A086222(n+1)-(A086165(n+1)+A000005(n+1))`
-/

namespace A055205.P5497836327397488957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - (A086165 (n + 1) + A000005 (n + 1))

end

end A055205.P5497836327397488957

namespace A055205

/-- `A086222(n+1)-(A086165(n+1)+A000005(n+1))` -/
def P5497836327397488957.Spec : Prop :=
  ∀ n, P5497836327397488957.a n = A055205 (n + 1)

end A055205

/-! ## A055205.P17654578386387691725

`A146564(n+1)-(A063647(n+1)+A000005(n+1))`
-/

namespace A055205.P17654578386387691725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 1) - (A063647 (n + 1) + A000005 (n + 1))

end

end A055205.P17654578386387691725

namespace A055205

/-- `A146564(n+1)-(A063647(n+1)+A000005(n+1))` -/
def P17654578386387691725.Spec : Prop :=
  ∀ n, P17654578386387691725.a n = A055205 (n + 1)

end A055205

/-!
# A055206: Number of balanced, adequate or average primes < 10^n.

The programs for A055206, there is no canonical definition to state claims against.
-/

/-! ## A055206.P2434854433741035738

`A271865(Δ[A000831(n)])`
-/

namespace A055206.P2434854433741035738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271865 (f1 (n + 1) - f1 n).toNat

end

end A055206.P2434854433741035738

/-!
# A055207: Sum of n-th powers of digits of n.

The programs for A055207, the canonical program `A055207.P13970846392201994130` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055207 has offset 0).

The definition of A055207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055207.P13970846392201994130

`∑{digits}[n, #^n]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055207

/-- `∑{digits}[n, #^n]` -/
def P13970846392201994130.Spec : Prop :=
  ∀ n, (P13970846392201994130.a n : ℤ) = A055207 n

theorem P13970846392201994130.correct : P13970846392201994130.Spec := by
  intro n
  simp only [A055207]

end A055207

/-! ## A055207.P11008646436368866150

`A055208((1-n)²+n²)`
-/

namespace A055207.P11008646436368866150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055208 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A055207.P11008646436368866150

namespace A055207

/-- `A055208((1-n)²+n²)` -/
def P11008646436368866150.Spec : Prop :=
  ∀ n, P11008646436368866150.a n = A055207 n

end A055207

/-! ## A055207.P2683265719457880789

`A045512(A151619(n)+n)`
-/

namespace A055207.P2683265719457880789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A151619 n + (n : ℤ)).toNat

end

end A055207.P2683265719457880789

namespace A055207

/-- `A045512(A151619(n)+n)` -/
def P2683265719457880789.Spec : Prop :=
  ∀ n, P2683265719457880789.a n = A055207 n

end A055207

/-! ## A055207.P2393579428809649685

`A045503(n^A050782(n))`
-/

namespace A055207.P2393579428809649685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A050782 n : ℤ))).toNat

end

end A055207.P2393579428809649685

namespace A055207

/-- `A045503(n^A050782(n))` -/
def P2393579428809649685.Spec : Prop :=
  ∀ n, P2393579428809649685.a n = A055207 n

end A055207

/-! ## A055207.P18306136324686591082

`A045512(n^A050782(n))`
-/

namespace A055207.P18306136324686591082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A050782 n : ℤ))).toNat

end

end A055207.P18306136324686591082

namespace A055207

/-- `A045512(n^A050782(n))` -/
def P18306136324686591082.Spec : Prop :=
  ∀ n, P18306136324686591082.a n = A055207 n

end A055207

/-!
# A055208: Table read by ascending antidiagonals: T(n,k) (n >= 1, k >= 1) is the sum of k-th powers of digits of n.

The programs for A055208, the canonical program `A055208.P10297010048786365053` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055208 has offset 1).

The definition of A055208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055208.P10297010048786365053

`∑{digits}[A004736(n+1), #^A002260(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055208

/-- `∑{digits}[A004736(n+1), #^A002260(n+1)]` -/
def P10297010048786365053.Spec : Prop :=
  ∀ n, P10297010048786365053.a n = (A055208 (n + 1) : ℚ)

end A055208

/-! ## A055208.P18273381959588372417

`A004151((C(comp[∑[n]]-n, 2)-n)^(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A055208.P18273381959588372417
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
  A004151 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A055208.P18273381959588372417

namespace A055208

/-- `A004151((C(comp[∑[n]]-n, 2)-n)^(1-C(∑[char[∑[n]]], 2)+n))` -/
def P18273381959588372417.Spec : Prop :=
  ∀ n, P18273381959588372417.a n = A055208 (n + 1)

end A055208

/-! ## A055208.P3096034724029163412

`A004151(A051128(n+1))`
-/

namespace A055208.P3096034724029163412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A051128 (n + 1)).toNat

end

end A055208.P3096034724029163412

namespace A055208

/-- `A004151(A051128(n+1))` -/
def P3096034724029163412.Spec : Prop :=
  ∀ n, P3096034724029163412.a n = A055208 (n + 1)

end A055208

/-! ## A055208.P10052545823692026866

`dr(A120449(n+1))^A002260(n+1)`
-/

namespace A055208.P10052545823692026866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A120449 (n + 1)) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A055208.P10052545823692026866

namespace A055208

/-- `dr(A120449(n+1))^A002260(n+1)` -/
def P10052545823692026866.Spec : Prop :=
  ∀ n, P10052545823692026866.a n = (A055208 (n + 1) : ℚ)

end A055208

/-! ## A055208.P12105337914050050660

`A004151(A004736(n+1)*A009999(n))`
-/

namespace A055208.P12105337914050050660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A004736 (n + 1) * A009999 n).toNat

end

end A055208.P12105337914050050660

namespace A055208

/-- `A004151(A004736(n+1)*A009999(n))` -/
def P12105337914050050660.Spec : Prop :=
  ∀ n, P12105337914050050660.a n = A055208 (n + 1)

end A055208

/-! ## A055208.P14929182460502775374

`A004151(A004736(n+1)^A128227(n))`
-/

namespace A055208.P14929182460502775374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A128227 n : ℤ))).toNat

end

end A055208.P14929182460502775374

namespace A055208

/-- `A004151(A004736(n+1)^A128227(n))` -/
def P14929182460502775374.Spec : Prop :=
  ∀ n, P14929182460502775374.a n = A055208 (n + 1)

end A055208

/-! ## A055208.P4083316204223958072

`A004151(A004736(n+1)^A193738(n))`
-/

namespace A055208.P4083316204223958072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A193738 n : ℤ))).toNat

end

end A055208.P4083316204223958072

namespace A055208

/-- `A004151(A004736(n+1)^A193738(n))` -/
def P4083316204223958072.Spec : Prop :=
  ∀ n, P4083316204223958072.a n = A055208 (n + 1)

end A055208

/-! ## A055208.P3850970341398697117

`A004151(A342238(n+1)+A342237(n+1))`
-/

namespace A055208.P3850970341398697117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A342238 (n + 1) + A342237 (n + 1)).toNat

end

end A055208.P3850970341398697117

namespace A055208

/-- `A004151(A342238(n+1)+A342237(n+1))` -/
def P3850970341398697117.Spec : Prop :=
  ∀ n, P3850970341398697117.a n = A055208 (n + 1)

end A055208

/-!
# A055209: a(n) = Product_{i=0..n} i!^2.

The programs for A055209, the canonical program `A055209.P1934713887959445672` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055209 has offset 0).

The definition of A055209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055209.P1934713887959445672

`A000178(n)²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055209

/-- `A000178(n)²` -/
def P1934713887959445672.Spec : Prop :=
  ∀ n, P1934713887959445672.a n = A055209 n

theorem P1934713887959445672.correct : P1934713887959445672.Spec := by
  intro n
  simp only [A055209]

end A055209

/-! ## A055209.P12263790938447526904

`∏[n!²]`
-/

namespace A055209.P12263790938447526904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055209.P12263790938447526904

namespace A055209

/-- `∏[n!²]` -/
def P12263790938447526904.Spec : Prop :=
  ∀ n, (P12263790938447526904.a n : ℤ) = A055209 n

end A055209

/-! ## A055209.P4665718172943814458

`∏[n!^2]`
-/

namespace A055209.P4665718172943814458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055209.P4665718172943814458

namespace A055209

/-- `∏[n!^2]` -/
def P4665718172943814458.Spec : Prop :=
  ∀ n, (P4665718172943814458.a n : ℤ) = A055209 n

end A055209

/-! ## A055209.P1720028363821472896

`4^∑[log2(n!)]`
-/

namespace A055209.P1720028363821472896
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055209.P1720028363821472896

namespace A055209

/-- `4^∑[log2(n!)]` -/
def P1720028363821472896.Spec : Prop :=
  ∀ n, P1720028363821472896.a n = (A055209 n : ℝ)

end A055209

/-! ## A055209.P17767739611350678640

`∏[n!*n!]`
-/

namespace A055209.P17767739611350678640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055209.P17767739611350678640

namespace A055209

/-- `∏[n!*n!]` -/
def P17767739611350678640.Spec : Prop :=
  ∀ n, (P17767739611350678640.a n : ℤ) = A055209 n

end A055209

/-!
# A055210: Sum of totients of square divisors of n.

The programs for A055210, the canonical program `A055210.P13897525650667942629` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055210 has offset 1).

The definition of A055210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055210.P10278769421043453641

`A057660(A000188(n+1))`
-/

namespace A055210.P10278769421043453641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (A000188 (n + 1)).toNat

end

end A055210.P10278769421043453641

namespace A055210

/-- `A057660(A000188(n+1))` -/
def P10278769421043453641.Spec : Prop :=
  ∀ n, P10278769421043453641.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P11879867482996572318

`A061020(A008833(n+1))`
-/

namespace A055210.P11879867482996572318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A008833 (n + 1)).toNat

end

end A055210.P11879867482996572318

namespace A055210

/-- `A061020(A008833(n+1))` -/
def P11879867482996572318.Spec : Prop :=
  ∀ n, P11879867482996572318.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P9430137388370427145

`A061020(A000188(n+1)²)`
-/

namespace A055210.P9430137388370427145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A000188 (n + 1) ^ 2).toNat

end

end A055210.P9430137388370427145

namespace A055210

/-- `A061020(A000188(n+1)²)` -/
def P9430137388370427145.Spec : Prop :=
  ∀ n, P9430137388370427145.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P16227988170053211591

`A206369(A000188(n+1)²)`
-/

namespace A055210.P16227988170053211591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A000188 (n + 1) ^ 2).toNat

end

end A055210.P16227988170053211591

namespace A055210

/-- `A206369(A000188(n+1)²)` -/
def P16227988170053211591.Spec : Prop :=
  ∀ n, P16227988170053211591.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P5793354687044467350

`A057660(A057918(n+1)+1)`
-/

namespace A055210.P5793354687044467350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (A057918 (n + 1) + 1).toNat

end

end A055210.P5793354687044467350

namespace A055210

/-- `A057660(A057918(n+1)+1)` -/
def P5793354687044467350.Spec : Prop :=
  ∀ n, P5793354687044467350.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P14295682619440266079

`A061020(A336642(n+1)+1)`
-/

namespace A055210.P14295682619440266079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A336642 (n + 1) + 1).toNat

end

end A055210.P14295682619440266079

namespace A055210

/-- `A061020(A336642(n+1)+1)` -/
def P14295682619440266079.Spec : Prop :=
  ∀ n, P14295682619440266079.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P17682630146829541657

`∑{d}[A000188(n+1), A000010(#²)]`
-/

namespace A055210.P17682630146829541657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (d ^ 2)

end

end A055210.P17682630146829541657

namespace A055210

/-- `∑{d}[A000188(n+1), A000010(#²)]` -/
def P17682630146829541657.Spec : Prop :=
  ∀ n, P17682630146829541657.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P1320297156990948473

`A061020((n+1)/A007913(n+1))`
-/

namespace A055210.P1320297156990948473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A055210.P1320297156990948473

namespace A055210

/-- `A061020((n+1)/A007913(n+1))` -/
def P1320297156990948473.Spec : Prop :=
  ∀ n, P1320297156990948473.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P11049314836885253185

`A206369((n+1)/A007913(n+1))`
-/

namespace A055210.P11049314836885253185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A055210.P11049314836885253185

namespace A055210

/-- `A206369((n+1)/A007913(n+1))` -/
def P11049314836885253185.Spec : Prop :=
  ∀ n, P11049314836885253185.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P11755531070308354162

`A365480(n+1)/A048250(n+1)`
-/

namespace A055210.P11755531070308354162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365480 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A055210.P11755531070308354162

namespace A055210

/-- `A365480(n+1)/A048250(n+1)` -/
def P11755531070308354162.Spec : Prop :=
  ∀ n, P11755531070308354162.a n = (A055210 (n + 1) : ℚ)

end A055210

/-! ## A055210.P17462661030013809985

`∑{d}[A000188(n+1), #*A000010(#)]`
-/

namespace A055210.P17462661030013809985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A000010 d

end

end A055210.P17462661030013809985

namespace A055210

/-- `∑{d}[A000188(n+1), #*A000010(#)]` -/
def P17462661030013809985.Spec : Prop :=
  ∀ n, P17462661030013809985.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P8225057564406570645

`∑{d}[n+1, A034448(#)*A061019((n+1)/#)]`
-/

namespace A055210.P8225057564406570645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055210.P8225057564406570645

namespace A055210

/-- `∑{d}[n+1, A034448(#)*A061019((n+1)/#)]` -/
def P8225057564406570645.Spec : Prop :=
  ∀ n, P8225057564406570645.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P1381360444173673108

`∑{d}[n+1, A061020(#)*A254503((n+1)/#)]`
-/

namespace A055210.P1381360444173673108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055210.P1381360444173673108

namespace A055210

/-- `∑{d}[n+1, A061020(#)*A254503((n+1)/#)]` -/
def P1381360444173673108.Spec : Prop :=
  ∀ n, P1381360444173673108.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P13897525650667942629

`∑{d}[n+1, A055615(#)*A337180((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A055210

/-- `∑{d}[n+1, A055615(#)*A337180((n+1)/#)]` -/
def P13897525650667942629.Spec : Prop :=
  ∀ n, P13897525650667942629.a n = A055210 (n + 1)

theorem P13897525650667942629.correct : P13897525650667942629.Spec := by
  intro n
  simp only [A055210, Nat.add_sub_cancel]

end A055210

/-! ## A055210.P12966301252617099768

`∑{d}[n+1, A158523(#)*A328485((n+1)/#)]`
-/

namespace A055210.P12966301252617099768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055210.P12966301252617099768

namespace A055210

/-- `∑{d}[n+1, A158523(#)*A328485((n+1)/#)]` -/
def P12966301252617099768.Spec : Prop :=
  ∀ n, P12966301252617099768.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P7998144516046084741

`∑{d}[n+1, A344326(#)*A358272((n+1)/#)]`
-/

namespace A055210.P7998144516046084741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344326 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055210.P7998144516046084741

namespace A055210

/-- `∑{d}[n+1, A344326(#)*A358272((n+1)/#)]` -/
def P7998144516046084741.Spec : Prop :=
  ∀ n, P7998144516046084741.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P1198261942003428240

`A206369(A000188(n+1)*A000188(n+1))`
-/

namespace A055210.P1198261942003428240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A000188 (n + 1) * A000188 (n + 1)).toNat

end

end A055210.P1198261942003428240

namespace A055210

/-- `A206369(A000188(n+1)*A000188(n+1))` -/
def P1198261942003428240.Spec : Prop :=
  ∀ n, P1198261942003428240.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P8408023219508123017

`A061020(A008836(n+1)*A358272(n+1))`
-/

namespace A055210.P8408023219508123017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A008836 (n + 1) * A358272 (n + 1)).toNat

end

end A055210.P8408023219508123017

namespace A055210

/-- `A061020(A008836(n+1)*A358272(n+1))` -/
def P8408023219508123017.Spec : Prop :=
  ∀ n, P8408023219508123017.a n = A055210 (n + 1)

end A055210

/-! ## A055210.P8735910800455376675

`A061020(A358272(n+1)/A008836(n+1))`
-/

namespace A055210.P8735910800455376675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((A358272 (n + 1) : ℚ) / (A008836 (n + 1) : ℚ))).toNat

end

end A055210.P8735910800455376675

namespace A055210

/-- `A061020(A358272(n+1)/A008836(n+1))` -/
def P8735910800455376675.Spec : Prop :=
  ∀ n, P8735910800455376675.a n = A055210 (n + 1)

end A055210

/-!
# A055211: Lesser Fortunate numbers.

The programs for A055211, there is no canonical definition to state claims against.
-/

/-! ## A055211.P17794684478252429754

`A000040(A098166(n+2))`
-/

namespace A055211.P17794684478252429754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098166 (n + 2)).toNat

end

end A055211.P17794684478252429754

/-! ## A055211.P1033801666196697501

`A008578(A098166(n+2)+1)`
-/

namespace A055211.P1033801666196697501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098166 (n + 2) + 1).toNat

end

end A055211.P1033801666196697501

/-! ## A055211.P7770492359573536188

`A065091(A098166(n+2)-1)`
-/

namespace A055211.P7770492359573536188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A098166 (n + 2) - 1).toNat

end

end A055211.P7770492359573536188

/-! ## A055211.P14409514735319804422

`∑{d}[A098166(n+2), A007444(#)]`
-/

namespace A055211.P14409514735319804422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098166 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A055211.P14409514735319804422

/-! ## A055211.P16434024245046159092

`A006530(A001747(A098166(n+2)+1))`
-/

namespace A055211.P16434024245046159092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001747 (A098166 (n + 2) + 1).toNat).toNat

end

end A055211.P16434024245046159092

/-! ## A055211.P11242344582662141995

`A014963(A006093(A098166(n+2))+1)`
-/

namespace A055211.P11242344582662141995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006093 (A098166 (n + 2)).toNat + 1).toNat

end

end A055211.P11242344582662141995

/-!
# A055212: Number of composite divisors of n.

The programs for A055212, the canonical program `A055212.P14412881054625885538` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055212 has offset 1).

The definition of A055212 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055212.P14412881054625885538

`A033273(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055212

/-- `A033273(n+1)-1` -/
def P14412881054625885538.Spec : Prop :=
  ∀ n, P14412881054625885538.a n = A055212 (n + 1)

theorem P14412881054625885538.correct : P14412881054625885538.Spec := by
  intro n
  simp only [A055212, Nat.add_sub_cancel]

end A055212

/-! ## A055212.P3603516830971975906

`A000005(n+1)-A083399(n+1)`
-/

namespace A055212.P3603516830971975906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083399 (n + 1)

end

end A055212.P3603516830971975906

namespace A055212

/-- `A000005(n+1)-A083399(n+1)` -/
def P3603516830971975906.Spec : Prop :=
  ∀ n, P3603516830971975906.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P5486380606788059653

`∑{d}[n+1, A066247(#)]`
-/

namespace A055212.P5486380606788059653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066247 d

end

end A055212.P5486380606788059653

namespace A055212

/-- `∑{d}[n+1, A066247(#)]` -/
def P5486380606788059653.Spec : Prop :=
  ∀ n, P5486380606788059653.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P492794166643367723

`∑{d}[n+1, floor(atan(A001222(#)))]`
-/

namespace A055212.P492794166643367723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (A001222 d : ℝ)⌋

end

end A055212.P492794166643367723

namespace A055212

/-- `∑{d}[n+1, floor(atan(A001222(#)))]` -/
def P492794166643367723.Spec : Prop :=
  ∀ n, P492794166643367723.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P2346942395655883887

`A023443(A033273(n+1))`
-/

namespace A055212.P2346942395655883887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033273 (n + 1)).toNat

end

end A055212.P2346942395655883887

namespace A055212

/-- `A023443(A033273(n+1))` -/
def P2346942395655883887.Spec : Prop :=
  ∀ n, P2346942395655883887.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P2768105762175363834

`A214526(A033273(n+1)²)`
-/

namespace A055212.P2768105762175363834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A033273 (n + 1) ^ 2).toNat

end

end A055212.P2768105762175363834

namespace A055212

/-- `A214526(A033273(n+1)²)` -/
def P2768105762175363834.Spec : Prop :=
  ∀ n, P2768105762175363834.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P16643970433334748027

`A289207(A033273(n+1)+1)`
-/

namespace A055212.P16643970433334748027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A033273 (n + 1) + 1).toNat

end

end A055212.P16643970433334748027

namespace A055212

/-- `A289207(A033273(n+1)+1)` -/
def P16643970433334748027.Spec : Prop :=
  ∀ n, P16643970433334748027.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P16956299044957649808

`A321516(n+1)+A066247(n+1)`
-/

namespace A055212.P16956299044957649808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321516 (n + 1) + A066247 (n + 1)

end

end A055212.P16956299044957649808

namespace A055212

/-- `A321516(n+1)+A066247(n+1)` -/
def P16956299044957649808.Spec : Prop :=
  ∀ n, P16956299044957649808.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P5978072802082214793

`A032741(n+1)-A001221(n+1)`
-/

namespace A055212.P5978072802082214793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A001221 (n + 1)

end

end A055212.P5978072802082214793

namespace A055212

/-- `A032741(n+1)-A001221(n+1)` -/
def P5978072802082214793.Spec : Prop :=
  ∀ n, P5978072802082214793.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P12454855007276209648

`A073757(n+1)-A057859(n+1)`
-/

namespace A055212.P12454855007276209648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A057859 (n + 1)

end

end A055212.P12454855007276209648

namespace A055212

/-- `A073757(n+1)-A057859(n+1)` -/
def P12454855007276209648.Spec : Prop :=
  ∀ n, P12454855007276209648.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P2029577872929422972

`A028422(n+1)-A167688(n+1)`
-/

namespace A055212.P2029577872929422972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) - A167688 (n + 1)

end

end A055212.P2029577872929422972

namespace A055212

/-- `A028422(n+1)-A167688(n+1)` -/
def P2029577872929422972.Spec : Prop :=
  ∀ n, P2029577872929422972.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P12314575144092508007

`A114003(n+1)-A163523(n+1)`
-/

namespace A055212.P12314575144092508007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A163523 (n + 1)

end

end A055212.P12314575144092508007

namespace A055212

/-- `A114003(n+1)-A163523(n+1)` -/
def P12314575144092508007.Spec : Prop :=
  ∀ n, P12314575144092508007.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P1244178056769894303

`A065855(n+1)-A279436(n+1)`
-/

namespace A055212.P1244178056769894303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A279436 (n + 1)

end

end A055212.P1244178056769894303

namespace A055212

/-- `A065855(n+1)-A279436(n+1)` -/
def P1244178056769894303.Spec : Prop :=
  ∀ n, P1244178056769894303.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P14935871272917003044

`A325765(n)-(A297155(n+1)+1)`
-/

namespace A055212.P14935871272917003044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - (A297155 (n + 1) + 1)

end

end A055212.P14935871272917003044

namespace A055212

/-- `A325765(n)-(A297155(n+1)+1)` -/
def P14935871272917003044.Spec : Prop :=
  ∀ n, P14935871272917003044.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P13094905514648987242

`Δ[A006218(n)]-(A001221(n+1)+1)`
-/

namespace A055212.P13094905514648987242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001221 (n + 1) + 1)

end

end A055212.P13094905514648987242

namespace A055212

/-- `Δ[A006218(n)]-(A001221(n+1)+1)` -/
def P13094905514648987242.Spec : Prop :=
  ∀ n, P13094905514648987242.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P15878868186662509295

`Δ[A054519(n)]-(A001221(n+1)+1)`
-/

namespace A055212.P15878868186662509295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001221 (n + 1) + 1)

end

end A055212.P15878868186662509295

namespace A055212

/-- `Δ[A054519(n)]-(A001221(n+1)+1)` -/
def P15878868186662509295.Spec : Prop :=
  ∀ n, P15878868186662509295.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P3680251309137494109

`A000005(n+1)-(A001221(n+1)+1)`
-/

namespace A055212.P3680251309137494109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001221 (n + 1) + 1)

end

end A055212.P3680251309137494109

namespace A055212

/-- `A000005(n+1)-(A001221(n+1)+1)` -/
def P3680251309137494109.Spec : Prop :=
  ∀ n, P3680251309137494109.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P14954387978269821421

`A057860(n+1)+1-A046640(n+1)`
-/

namespace A055212.P14954387978269821421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057860 (n + 1) + (1 - A046640 (n + 1))

end

end A055212.P14954387978269821421

namespace A055212

/-- `A057860(n+1)+1-A046640(n+1)` -/
def P14954387978269821421.Spec : Prop :=
  ∀ n, P14954387978269821421.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P5077060969011927889

`A001222(n+1)+A135767(n+1)-1`
-/

namespace A055212.P5077060969011927889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A135767 (n + 1) - 1)

end

end A055212.P5077060969011927889

namespace A055212

/-- `A001222(n+1)+A135767(n+1)-1` -/
def P5077060969011927889.Spec : Prop :=
  ∀ n, P5077060969011927889.a n = A055212 (n + 1)

end A055212

/-! ## A055212.P17475489151705436445

`A001055(n+1)-(A167688(n+1)+1)`
-/

namespace A055212.P17475489151705436445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - (A167688 (n + 1) + 1)

end

end A055212.P17475489151705436445

namespace A055212

/-- `A001055(n+1)-(A167688(n+1)+1)` -/
def P17475489151705436445.Spec : Prop :=
  ∀ n, P17475489151705436445.a n = A055212 (n + 1)

end A055212

/-!
# A055214: a(0) = 1; a(n) = 2*n*a(n-1) - 1 for n >= 1.

The programs for A055214, the canonical program `A055214.P11613651302091877753` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055214 has offset 0).

The definition of A055214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*a(n-1)-1` (program `A055214.P11613651302091877753`, by `A055214.P11613651302091877753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055214.P11613651302091877753

`2*n*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055214

/-- `2*n*a(n-1)-1` -/
def P11613651302091877753.Spec : Prop :=
  ∀ n, P11613651302091877753.a n = A055214 n

theorem P11613651302091877753.correct : P11613651302091877753.Spec := by
  intro n
  simp only [A055214]

end A055214

/-! ## A055214.P3733698352317859565

`ceil(2^n*n!*(2-sqrt(e)))`
-/

namespace A055214.P3733698352317859565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n * Nat.factorial n : ℝ) * (2 - Real.sqrt (Real.exp 1))⌉

end

end A055214.P3733698352317859565

namespace A055214

/-- `ceil(2^n*n!*(2-sqrt(e)))` -/
def P3733698352317859565.Spec : Prop :=
  ∀ n, P3733698352317859565.a n = A055214 n

end A055214

/-! ## A055214.P15292329900306931588

`ceil(A000165(n)*(2-sqrt(e)))`
-/

namespace A055214.P15292329900306931588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000165 n : ℝ) * (2 - Real.sqrt (Real.exp 1))⌉

end

end A055214.P15292329900306931588

namespace A055214

/-- `ceil(A000165(n)*(2-sqrt(e)))` -/
def P15292329900306931588.Spec : Prop :=
  ∀ n, P15292329900306931588.a n = A055214 n

end A055214

/-! ## A055214.P3955810926819654655

`a(n-1)/n^-1+a(n-1)/tan(acot(n))-1` with `a(0)=1`
-/

namespace A055214.P3955810926819654655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) - 1

end

end A055214.P3955810926819654655

namespace A055214

/-- `a(n-1)/n^-1+a(n-1)/tan(acot(n))-1` -/
def P3955810926819654655.Spec : Prop :=
  ∀ n, P3955810926819654655.a n = (A055214 n : ℝ)

end A055214

/-! ## A055214.P13950361439643520088

`a(n-1)/n^-1+a(n-1)/cot(atan(n))-1` with `a(0)=1`
-/

namespace A055214.P13950361439643520088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ)) - 1

end

end A055214.P13950361439643520088

namespace A055214

/-- `a(n-1)/n^-1+a(n-1)/cot(atan(n))-1` -/
def P13950361439643520088.Spec : Prop :=
  ∀ n, P13950361439643520088.a n = (A055214 n : ℝ)

end A055214

/-! ## A055214.P11290343726471033669

`a(n-1)/tan(acot(n))+a(n-1)/n^(-1)-1` with `a(0)=1, a(1)=1`
-/

namespace A055214.P11290343726471033669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) + a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) - 1

end

end A055214.P11290343726471033669

namespace A055214

/-- `a(n-1)/tan(acot(n))+a(n-1)/n^(-1)-1` -/
def P11290343726471033669.Spec : Prop :=
  ∀ n, P11290343726471033669.a n = (A055214 n : ℝ)

end A055214

/-! ## A055214.P9474903729261096036

`a(n-1)*A004277(n)-1` with `a(0)=1`
-/

namespace A055214.P9474903729261096036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004277 n - 1

end

end A055214.P9474903729261096036

namespace A055214

/-- `a(n-1)*A004277(n)-1` -/
def P9474903729261096036.Spec : Prop :=
  ∀ n, P9474903729261096036.a n = A055214 n

end A055214

/-! ## A055214.P10017548990851790651

`a(n-1)*A005843(n)-1` with `a(0)=1`
-/

namespace A055214.P10017548990851790651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A005843 n - 1

end

end A055214.P10017548990851790651

namespace A055214

/-- `a(n-1)*A005843(n)-1` -/
def P10017548990851790651.Spec : Prop :=
  ∀ n, P10017548990851790651.a n = A055214 n

end A055214

/-!
# A055215: A path-counting array, read by rows: T(i,j)=number of paths from (0,0) to (i-j,j) using steps (1 unit right and 1 unit up) or (1 unit right and 2 units up).

The programs for A055215, there is no canonical definition to state claims against.
-/

/-! ## A055215.P16428154120512693755

`A134816(A194980(n+1)%A000043(n+1))`
-/

namespace A055215.P16428154120512693755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (Int.tmod (A194980 (n + 1)) (A000043 (n + 1))).toNat

end

end A055215.P16428154120512693755

/-! ## A055215.P14954136273639233061

`A134816(A194968(n+1))%A341628(A007318(n))`
-/

namespace A055215.P14954136273639233061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134816 (A194968 (n + 1)).toNat) (A341628 (A007318 n).toNat)

end

end A055215.P14954136273639233061

/-! ## A055215.P779817375972447770

`A134816(A194968(n+1))+A000007(A005686(n+1))`
-/

namespace A055215.P779817375972447770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A194968 (n + 1)).toNat + A000007 (A005686 (n + 1)).toNat

end

end A055215.P779817375972447770

/-! ## A055215.P1490078874887938558

`A134816(A194968(n+1))+A000007(A134816(n+1))`
-/

namespace A055215.P1490078874887938558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A194968 (n + 1)).toNat + A000007 (A134816 (n + 1)).toNat

end

end A055215.P1490078874887938558

/-! ## A055215.P3651041295722137780

`A000029(A350096(n+1)%A058398(n+1))`
-/

namespace A055215.P3651041295722137780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (Int.tmod (A350096 (n + 1)) (A058398 (n + 1))).toNat

end

end A055215.P3651041295722137780

/-!
# A055216: Triangle T(n,k) by rows, n >= 0, 0<=k<=n: T(n,k) = Sum_{i=0..n-k} binomial(n-k,i) *Sum_{j=0..k-i} binomial(i,j).

The programs for A055216, there is no canonical definition to state claims against.
-/

/-! ## A055216.P12795217003933256122

`A305258(A269129(n))+A007318(n)`
-/

namespace A055216.P12795217003933256122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A269129 n).toNat + A007318 n

end

end A055216.P12795217003933256122

/-! ## A055216.P11430374804677838640

`A305258(A269129(n))+A034932(n)`
-/

namespace A055216.P11430374804677838640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A269129 n).toNat + A034932 n

end

end A055216.P11430374804677838640

/-! ## A055216.P7230536707670240980

`A007318(n)-A180160(A294950(n))`
-/

namespace A055216.P7230536707670240980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A180160 (A294950 n).toNat

end

end A055216.P7230536707670240980

/-! ## A055216.P10104089678106542972

`A305258(A269129(n))+sqrt(A008459(n))`
-/

namespace A055216.P10104089678106542972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305258 (A269129 n).toNat : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A055216.P10104089678106542972

/-! ## A055216.P539223533081465438

`A007318(n)-A107279(A320606(n+1))`
-/

namespace A055216.P539223533081465438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A107279 (A320606 (n + 1)).toNat

end

end A055216.P539223533081465438

/-!
# A055217: a(n) = sum of the first n coefficients of (1+x+x^2)^n.

The programs for A055217, the canonical program `A055217.P14417909885086279290` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055217 has offset 0).

The definition of A055217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055217.P14417909885086279290

`∑[3^n]-A097861(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055217

/-- `∑[3^n]-A097861(n+1)` -/
def P14417909885086279290.Spec : Prop :=
  ∀ n, P14417909885086279290.a n = A055217 n

theorem P14417909885086279290.correct : P14417909885086279290.Spec := by
  intro n
  simp only [A055217]

end A055217

/-! ## A055217.P773116939933017531

`A005043(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A055217.P773116939933017531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005043 n + 3 * a (n - 1)

end

end A055217.P773116939933017531

namespace A055217

/-- `A005043(n)+3*a(n-1)` -/
def P773116939933017531.Spec : Prop :=
  ∀ n, P773116939933017531.a n = A055217 n

end A055217

/-! ## A055217.P8217390749116558604

`A330796(n)+A027914(n)`
-/

namespace A055217.P8217390749116558604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330796 n + A027914 n

end

end A055217.P8217390749116558604

namespace A055217

/-- `A330796(n)+A027914(n)` -/
def P8217390749116558604.Spec : Prop :=
  ∀ n, P8217390749116558604.a n = A055217 n

end A055217

/-! ## A055217.P7990184812222431546

`∑[A330796(n)+A002426(n)]`
-/

namespace A055217.P7990184812222431546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330796 n + A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055217.P7990184812222431546

namespace A055217

/-- `∑[A330796(n)+A002426(n)]` -/
def P7990184812222431546.Spec : Prop :=
  ∀ n, P7990184812222431546.a n = A055217 n

end A055217

/-! ## A055217.P1857744039659463919

`A134377(n+1)-A108863(n)`
-/

namespace A055217.P1857744039659463919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134377 (n + 1) - A108863 n

end

end A055217.P1857744039659463919

namespace A055217

/-- `A134377(n+1)-A108863(n)` -/
def P1857744039659463919.Spec : Prop :=
  ∀ n, P1857744039659463919.a n = A055217 n

end A055217

/-! ## A055217.P5465103906383835899

`A027914(n+1)-Δ[A097893(n)]`
-/

namespace A055217.P5465103906383835899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055217.P5465103906383835899

namespace A055217

/-- `A027914(n+1)-Δ[A097893(n)]` -/
def P5465103906383835899.Spec : Prop :=
  ∀ n, P5465103906383835899.a n = A055217 n

end A055217

/-! ## A055217.P11931170366506410606

`A027914(n+1)-record[A005213(n)]`
-/

namespace A055217.P11931170366506410606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055217.P11931170366506410606

namespace A055217

/-- `A027914(n+1)-record[A005213(n)]` -/
def P11931170366506410606.Spec : Prop :=
  ∀ n, P11931170366506410606.a n = A055217 n

end A055217

/-! ## A055217.P3898885389157858575

`A027914(n+1)-A002426(n+1)`
-/

namespace A055217.P3898885389157858575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 1) - A002426 (n + 1)

end

end A055217.P3898885389157858575

namespace A055217

/-- `A027914(n+1)-A002426(n+1)` -/
def P3898885389157858575.Spec : Prop :=
  ∀ n, P3898885389157858575.a n = A055217 n

end A055217

/-! ## A055217.P14643882072954491610

`A007051(n+1)-(A097861(n+1)+1)`
-/

namespace A055217.P14643882072954491610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - (A097861 (n + 1) + 1)

end

end A055217.P14643882072954491610

namespace A055217

/-- `A007051(n+1)-(A097861(n+1)+1)` -/
def P14643882072954491610.Spec : Prop :=
  ∀ n, P14643882072954491610.a n = A055217 n

end A055217

/-! ## A055217.P12058136711299794864

`A003462(n+1)+1-A257520(n+1)`
-/

namespace A055217.P12058136711299794864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + (1 - A257520 (n + 1))

end

end A055217.P12058136711299794864

namespace A055217

/-- `A003462(n+1)+1-A257520(n+1)` -/
def P12058136711299794864.Spec : Prop :=
  ∀ n, P12058136711299794864.a n = A055217 n

end A055217

/-! ## A055217.P3785449619164205600

`A027914(n+1)-A005213(2*(n+1))`
-/

namespace A055217.P3785449619164205600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 1) - A005213 (2 * (n + 1))

end

end A055217.P3785449619164205600

namespace A055217

/-- `A027914(n+1)-A005213(2*(n+1))` -/
def P3785449619164205600.Spec : Prop :=
  ∀ n, P3785449619164205600.a n = A055217 n

end A055217

/-! ## A055217.P13768962457758329294

`A027914(n+1)+A115752(n)-A092255(n+1)`
-/

namespace A055217.P13768962457758329294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 1) + (A115752 n - A092255 (n + 1))

end

end A055217.P13768962457758329294

namespace A055217

/-- `A027914(n+1)+A115752(n)-A092255(n+1)` -/
def P13768962457758329294.Spec : Prop :=
  ∀ n, P13768962457758329294.a n = A055217 n

end A055217

/-! ## A055217.P5404472705157736625

`A003462(n+1)+A247287(n)-A247287(n+1)`
-/

namespace A055217.P5404472705157736625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + (A247287 n - A247287 (n + 1))

end

end A055217.P5404472705157736625

namespace A055217

/-- `A003462(n+1)+A247287(n)-A247287(n+1)` -/
def P5404472705157736625.Spec : Prop :=
  ∀ n, P5404472705157736625.a n = A055217 n

end A055217

/-! ## A055217.P17036512680283962046

`A005717(n+1)+∑[A000244(n)-A005717(n+1)]`
-/

namespace A055217.P17036512680283962046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A005717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055217.P17036512680283962046

namespace A055217

/-- `A005717(n+1)+∑[A000244(n)-A005717(n+1)]` -/
def P17036512680283962046.Spec : Prop :=
  ∀ n, P17036512680283962046.a n = A055217 n

end A055217

/-! ## A055217.P145385907554243694

`A140429(n+1)+A140429(n+1)-A116410(n+1)`
-/

namespace A055217.P145385907554243694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (n + 1) + (A140429 (n + 1) - A116410 (n + 1))

end

end A055217.P145385907554243694

namespace A055217

/-- `A140429(n+1)+A140429(n+1)-A116410(n+1)` -/
def P145385907554243694.Spec : Prop :=
  ∀ n, P145385907554243694.a n = A055217 n

end A055217

/-! ## A055217.P14466295366201860116

`A027914(n+1)-A005043(n+1)-A005717(n+1)`
-/

namespace A055217.P14466295366201860116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 1) - A005043 (n + 1) - A005717 (n + 1)

end

end A055217.P14466295366201860116

namespace A055217

/-- `A027914(n+1)-A005043(n+1)-A005717(n+1)` -/
def P14466295366201860116.Spec : Prop :=
  ∀ n, P14466295366201860116.a n = A055217 n

end A055217

/-! ## A055217.P15005817272198147761

`A000244(n+1)-A027914(n+1)`
-/

namespace A055217.P15005817272198147761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - A027914 (n + 1)

end

end A055217.P15005817272198147761

namespace A055217

/-- `A000244(n+1)-A027914(n+1)` -/
def P15005817272198147761.Spec : Prop :=
  ∀ n, P15005817272198147761.a n = A055217 n

end A055217

/-! ## A055217.P7541483791516628058

`2*A140429(n+1)-A116410(n+1)`
-/

namespace A055217.P7541483791516628058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140429 (n + 1) - A116410 (n + 1)

end

end A055217.P7541483791516628058

namespace A055217

/-- `2*A140429(n+1)-A116410(n+1)` -/
def P7541483791516628058.Spec : Prop :=
  ∀ n, P7541483791516628058.a n = A055217 n

end A055217

/-! ## A055217.P11486997244487798488

`(A000244(n+1)-A002426(n+1))/2`
-/

namespace A055217.P11486997244487798488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) - A002426 (n + 1) : ℚ) / 2

end

end A055217.P11486997244487798488

namespace A055217

/-- `(A000244(n+1)-A002426(n+1))/2` -/
def P11486997244487798488.Spec : Prop :=
  ∀ n, P11486997244487798488.a n = (A055217 n : ℚ)

end A055217

/-!
# A055218: a(n) = T(2*n+2,n), array T as in A055216.

The programs for A055218, the canonical program `A055218.P16408589648472260685` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055218 has offset 0).

The definition of A055218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055218.P16408589648472260685

`A342912(n)+3*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055218

/-- `A342912(n)+3*a(n-1)` -/
def P16408589648472260685.Spec : Prop :=
  ∀ n, P16408589648472260685.a n = A055218 n

theorem P16408589648472260685.correct : P16408589648472260685.Spec := by
  intro n
  simp only [A055218]

end A055218

/-! ## A055218.P2057345708759793332

`A108863(n+2)+A014531(n+1)`
-/

namespace A055218.P2057345708759793332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 (n + 2) + A014531 (n + 1)

end

end A055218.P2057345708759793332

namespace A055218

/-- `A108863(n+2)+A014531(n+1)` -/
def P2057345708759793332.Spec : Prop :=
  ∀ n, P2057345708759793332.a n = A055218 n

end A055218

/-! ## A055218.P10404651324499299559

`A109196(n+2)+A057585(n+1)`
-/

namespace A055218.P10404651324499299559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109196 (n + 2) + A057585 (n + 1)

end

end A055218.P10404651324499299559

namespace A055218

/-- `A109196(n+2)+A057585(n+1)` -/
def P10404651324499299559.Spec : Prop :=
  ∀ n, P10404651324499299559.a n = A055218 n

end A055218

/-! ## A055218.P12776178900729726819

`A027914(n+2)-A005773(n+3)`
-/

namespace A055218.P12776178900729726819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 2) - A005773 (n + 3)

end

end A055218.P12776178900729726819

namespace A055218

/-- `A027914(n+2)-A005773(n+3)` -/
def P12776178900729726819.Spec : Prop :=
  ∀ n, P12776178900729726819.a n = A055218 n

end A055218

/-! ## A055218.P2231506730321443080

`A109194(n+2)-A275289(n+3)`
-/

namespace A055218.P2231506730321443080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109194 (n + 2) - A275289 (n + 3)

end

end A055218.P2231506730321443080

namespace A055218

/-- `A109194(n+2)-A275289(n+3)` -/
def P2231506730321443080.Spec : Prop :=
  ∀ n, P2231506730321443080.a n = A055218 n

end A055218

/-! ## A055218.P6636744129644829101

`A116410(n+3)-A002426(n+3)`
-/

namespace A055218.P6636744129644829101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 (n + 3) - A002426 (n + 3)

end

end A055218.P6636744129644829101

namespace A055218

/-- `A116410(n+3)-A002426(n+3)` -/
def P6636744129644829101.Spec : Prop :=
  ∀ n, P6636744129644829101.a n = A055218 n

end A055218

/-! ## A055218.P18256138431141621984

`∑[A000244(n+1)-A005717(n+2)]`
-/

namespace A055218.P18256138431141621984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - A005717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055218.P18256138431141621984

namespace A055218

/-- `∑[A000244(n+1)-A005717(n+2)]` -/
def P18256138431141621984.Spec : Prop :=
  ∀ n, P18256138431141621984.a n = A055218 n

end A055218

/-! ## A055218.P6774370958085014994

`A057585(n+1)+A109194(n+2)/2`
-/

namespace A055218.P6774370958085014994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057585 (n + 1) : ℚ) + (A109194 (n + 2) : ℚ) / 2

end

end A055218.P6774370958085014994

namespace A055218

/-- `A057585(n+1)+A109194(n+2)/2` -/
def P6774370958085014994.Spec : Prop :=
  ∀ n, P6774370958085014994.a n = (A055218 n : ℚ)

end A055218

/-! ## A055218.P13253687301149446108

`A275289(n+3)+2*A057585(n+1)`
-/

namespace A055218.P13253687301149446108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275289 (n + 3) + 2 * A057585 (n + 1)

end

end A055218.P13253687301149446108

namespace A055218

/-- `A275289(n+3)+2*A057585(n+1)` -/
def P13253687301149446108.Spec : Prop :=
  ∀ n, P13253687301149446108.a n = A055218 n

end A055218

/-! ## A055218.P6245139361774514518

`2*A109196(n+2)-A275289(n+3)`
-/

namespace A055218.P6245139361774514518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109196 (n + 2) - A275289 (n + 3)

end

end A055218.P6245139361774514518

namespace A055218

/-- `2*A109196(n+2)-A275289(n+3)` -/
def P6245139361774514518.Spec : Prop :=
  ∀ n, P6245139361774514518.a n = A055218 n

end A055218

/-! ## A055218.P2501488389079472378

`A055217(n+2)-3^(n+2)`
-/

namespace A055218.P2501488389079472378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (n + 2) - (3 ^ (n + 2) : ℤ)

end

end A055218.P2501488389079472378

namespace A055218

/-- `A055217(n+2)-3^(n+2)` -/
def P2501488389079472378.Spec : Prop :=
  ∀ n, P2501488389079472378.a n = A055218 n

end A055218

/-! ## A055218.P975474938973962058

`A181618(n+3)/6`
-/

namespace A055218.P975474938973962058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181618 (n + 3) : ℚ) / 6

end

end A055218.P975474938973962058

namespace A055218

/-- `A181618(n+3)/6` -/
def P975474938973962058.Spec : Prop :=
  ∀ n, P975474938973962058.a n = (A055218 n : ℚ)

end A055218

/-!
# A055219: T(2n+3,n), array T as in A055216.

The programs for A055219, the canonical program `A055219.P8501780133907540001` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055219 has offset 0).

The definition of A055219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055219.P8501780133907540001

`A108863(n+3)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055219

/-- `A108863(n+3)` -/
def P8501780133907540001.Spec : Prop :=
  ∀ n, P8501780133907540001.a n = A055219 n

theorem P8501780133907540001.correct : P8501780133907540001.Spec := by
  intro n
  simp only [A055219]

end A055219

/-! ## A055219.P4793017246217495334

`record[A108863(abs(3-n))]`
-/

namespace A055219.P4793017246217495334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055219.P4793017246217495334

namespace A055219

/-- `record[A108863(abs(3-n))]` -/
def P4793017246217495334.Spec : Prop :=
  ∀ n, P4793017246217495334.a n = A055219 n

end A055219

/-! ## A055219.P4511534697661950706

`record[or(A000007(n), A108863(n))]`
-/

namespace A055219.P4511534697661950706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A108863 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055219.P4511534697661950706

namespace A055219

/-- `record[or(A000007(n), A108863(n))]` -/
def P4511534697661950706.Spec : Prop :=
  ∀ n, P4511534697661950706.a n = A055219 n

end A055219

/-! ## A055219.P11148714610240652574

`record[or(A010057(n), A108863(n))]`
-/

namespace A055219.P11148714610240652574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 n) (A108863 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055219.P11148714610240652574

namespace A055219

/-- `record[or(A010057(n), A108863(n))]` -/
def P11148714610240652574.Spec : Prop :=
  ∀ n, P11148714610240652574.a n = A055219 n

end A055219

/-! ## A055219.P9897449908528664124

`A055216(2*(n+1)*(n+3))`
-/

namespace A055219.P9897449908528664124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (2 * ((n + 1) * (n + 3)))

end

end A055219.P9897449908528664124

namespace A055219

/-- `A055216(2*(n+1)*(n+3))` -/
def P9897449908528664124.Spec : Prop :=
  ∀ n, P9897449908528664124.a n = A055219 n

end A055219

/-!
# A055220: T(2n+4,n), array T as in A055216.

The programs for A055220, the canonical program `A055220.P257140366328946267` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055220 has offset 0).

The definition of A055220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055220.P257140366328946267

`A108863(n+4)-A014532(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055220

/-- `A108863(n+4)-A014532(n+2)` -/
def P257140366328946267.Spec : Prop :=
  ∀ n, P257140366328946267.a n = A055220 n

theorem P257140366328946267.correct : P257140366328946267.Spec := by
  intro n
  simp only [A055220]

end A055220

/-! ## A055220.P14336245825794894322

`A055216(A090288(n+1))`
-/

namespace A055220.P14336245825794894322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (A090288 (n + 1)).toNat

end

end A055220.P14336245825794894322

namespace A055220

/-- `A055216(A090288(n+1))` -/
def P14336245825794894322.Spec : Prop :=
  ∀ n, P14336245825794894322.a n = A055220 n

end A055220

/-! ## A055220.P12547390712986801649

`A055216(A016825(∑[n+2]))`
-/

namespace A055220.P12547390712986801649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055220.P12547390712986801649

namespace A055220

/-- `A055216(A016825(∑[n+2]))` -/
def P12547390712986801649.Spec : Prop :=
  ∀ n, P12547390712986801649.a n = A055220 n

end A055220

/-! ## A055220.P813144202963937110

`A055216(A073760(∑[n+2]))`
-/

namespace A055220.P813144202963937110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (A073760 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055220.P813144202963937110

namespace A055220

/-- `A055216(A073760(∑[n+2]))` -/
def P813144202963937110.Spec : Prop :=
  ∀ n, P813144202963937110.a n = A055220 n

end A055220

/-! ## A055220.P10885364662645437473

`A055216(2*A028387(n+1))`
-/

namespace A055220.P10885364662645437473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (2 * A028387 (n + 1)).toNat

end

end A055220.P10885364662645437473

namespace A055220

/-- `A055216(2*A028387(n+1))` -/
def P10885364662645437473.Spec : Prop :=
  ∀ n, P10885364662645437473.a n = A055220 n

end A055220

/-! ## A055220.P8829862187193075625

`A055216(A103517(∑[2*(n+2)]))`
-/

namespace A055220.P8829862187193075625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (A103517 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055220.P8829862187193075625

namespace A055220

/-- `A055216(A103517(∑[2*(n+2)]))` -/
def P8829862187193075625.Spec : Prop :=
  ∀ n, P8829862187193075625.a n = A055220 n

end A055220

/-!
# A055221: T(2n+5,n), array T as in A055216.

The programs for A055221, there is no canonical definition to state claims against.
-/

/-! ## A055221.P17556074237584234608

`A055216(2*(n+3)²-3)`
-/

namespace A055221.P17556074237584234608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (2 * (n + 3) ^ 2 - 3)

end

end A055221.P17556074237584234608

/-!
# A055222: T(2n+6,n), array T as in A055216.

The programs for A055222, there is no canonical definition to state claims against.
-/

/-! ## A055222.P8586055311536563658

`A055216(eq[6, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A055222.P8586055311536563658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055222.P8586055311536563658

/-! ## A055222.P9992861878951895512

`A055216(A001844(n+3)-4)`
-/

namespace A055222.P9992861878951895512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (A001844 (n + 3) - 4).toNat

end

end A055222.P9992861878951895512

/-!
# A055223: One-fourth the digital sum of base 5 representations of 2^n.

The programs for A055223, there is no canonical definition to state claims against.
-/

/-! ## A055223.P7105166259533720991

`A183226(n+2)/4`
-/

namespace A055223.P7105166259533720991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183226 (n + 2) : ℚ) / 4

end

end A055223.P7105166259533720991

/-! ## A055223.P1322275875350493800

`floor(A183228(n+2)/4)`
-/

namespace A055223.P1322275875350493800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183228 (n + 2) : ℚ) / 4⌋

end

end A055223.P1322275875350493800

/-! ## A055223.P2751493308201465334

`A002265(A183226(n+2))`
-/

namespace A055223.P2751493308201465334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A183226 (n + 2)).toNat

end

end A055223.P2751493308201465334

/-! ## A055223.P12824199174455429286

`A002265(A183228(n+2))`
-/

namespace A055223.P12824199174455429286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A183228 (n + 2)).toNat

end

end A055223.P12824199174455429286

/-! ## A055223.P3379540464485232158

`A060819(A183226(n+2)-A000038(n))`
-/

namespace A055223.P3379540464485232158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A183226 (n + 2) - A000038 n).toNat

end

end A055223.P3379540464485232158

/-! ## A055223.P10181417478487803568

`A000079(n)-A354463(n+2)`
-/

namespace A055223.P10181417478487803568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A354463 (n + 2)

end

end A055223.P10181417478487803568

/-! ## A055223.P10450309149986377553

`A174807(n+2)`
-/

namespace A055223.P10450309149986377553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174807 (n + 2)

end

end A055223.P10450309149986377553

/-!
# A055224: a(1) = 1, a(n) = number of a(k) with 1 <= k <= n-1 such that a(k) divides a(n-k).

The programs for A055224, there is no canonical definition to state claims against.
-/

/-! ## A055224.P569055377119530989

`A089643(A062432(n+1))`
-/

namespace A055224.P569055377119530989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A062432 (n + 1)).toNat

end

end A055224.P569055377119530989

/-! ## A055224.P2717680243965529779

`A326031(A274777(n+1)+A007092(n))`
-/

namespace A055224.P2717680243965529779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (A274777 (n + 1) + A007092 n).toNat

end

end A055224.P2717680243965529779

/-! ## A055224.P4099301977078561733

`A007895(A049908(n+1)+A049898(n+1))`
-/

namespace A055224.P4099301977078561733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A049908 (n + 1) + A049898 (n + 1)).toNat

end

end A055224.P4099301977078561733

/-! ## A055224.P10863267129790150187

`A082863(A082863(n+2)+A049956(n+1))`
-/

namespace A055224.P10863267129790150187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A082863 (n + 2) + A049956 (n + 1)).toNat

end

end A055224.P10863267129790150187

/-!
# A055225: a(n) = Sum_{k divides n} (n/k)^k.

The programs for A055225, the canonical program `A055225.P11906148766251727436` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055225 has offset 1).

The definition of A055225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055225.P9923771285831738985

`∑{d}[n+1, #^ceil(n/#)]`
-/

namespace A055225.P9923771285831738985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (⌈(n : ℚ) / (d : ℚ)⌉ : ℤ)

end

end A055225.P9923771285831738985

namespace A055225

/-- `∑{d}[n+1, #^ceil(n/#)]` -/
def P9923771285831738985.Spec : Prop :=
  ∀ n, P9923771285831738985.a n = (A055225 (n + 1) : ℚ)

end A055225

/-! ## A055225.P11906148766251727436

`floor(∑{d}[n+1, ((n+1)/#)^#])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055225

/-- `floor(∑{d}[n+1, ((n+1)/#)^#])` -/
def P11906148766251727436.Spec : Prop :=
  ∀ n, P11906148766251727436.a n = A055225 (n + 1)

theorem P11906148766251727436.correct : P11906148766251727436.Spec := by
  intro n
  simp only [A055225, Nat.add_sub_cancel]

end A055225

/-! ## A055225.P16972319447992944104

`round(∑{d}[n+1, ((n+1)/#)^#])`
-/

namespace A055225.P16972319447992944104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d)

end

end A055225.P16972319447992944104

namespace A055225

/-- `round(∑{d}[n+1, ((n+1)/#)^#])` -/
def P16972319447992944104.Spec : Prop :=
  ∀ n, P16972319447992944104.a n = A055225 (n + 1)

end A055225

/-! ## A055225.P12081055149923896794

`∑{d}[n+1, (((n+1)/#)%(n+1))^#]+1+n`
-/

namespace A055225.P12081055149923896794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) (n + 1 : ℤ) ^ d + 1 + (n : ℤ)

end

end A055225.P12081055149923896794

namespace A055225

/-- `∑{d}[n+1, (((n+1)/#)%(n+1))^#]+1+n` -/
def P12081055149923896794.Spec : Prop :=
  ∀ n, P12081055149923896794.a n = A055225 (n + 1)

end A055225

/-! ## A055225.P17549421424063483252

`A326121(n+1)+1+n`
-/

namespace A055225.P17549421424063483252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326121 (n + 1) + 1 + (n : ℤ)

end

end A055225.P17549421424063483252

namespace A055225

/-- `A326121(n+1)+1+n` -/
def P17549421424063483252.Spec : Prop :=
  ∀ n, P17549421424063483252.a n = A055225 (n + 1)

end A055225

/-! ## A055225.P7208949527288647067

`A333823(n+1)+A333823(n+1)-A076717(n+1)`
-/

namespace A055225.P7208949527288647067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333823 (n + 1) + (A333823 (n + 1) - A076717 (n + 1))

end

end A055225.P7208949527288647067

namespace A055225

/-- `A333823(n+1)+A333823(n+1)-A076717(n+1)` -/
def P7208949527288647067.Spec : Prop :=
  ∀ n, P7208949527288647067.a n = A055225 (n + 1)

end A055225

/-! ## A055225.P15981889476965110572

`A333824(n+1)+A333824(n+1)-A308366(n+1)`
-/

namespace A055225.P15981889476965110572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333824 (n + 1) + (A333824 (n + 1) - A308366 (n + 1))

end

end A055225.P15981889476965110572

namespace A055225

/-- `A333824(n+1)+A333824(n+1)-A308366(n+1)` -/
def P15981889476965110572.Spec : Prop :=
  ∀ n, P15981889476965110572.a n = A055225 (n + 1)

end A055225

/-! ## A055225.P18273649863457292636

`2*A333823(n+1)-A076717(n+1)`
-/

namespace A055225.P18273649863457292636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333823 (n + 1) - A076717 (n + 1)

end

end A055225.P18273649863457292636

namespace A055225

/-- `2*A333823(n+1)-A076717(n+1)` -/
def P18273649863457292636.Spec : Prop :=
  ∀ n, P18273649863457292636.a n = A055225 (n + 1)

end A055225

/-! ## A055225.P15302541754063085809

`A362683(n+1)-A359103(n+1)`
-/

namespace A055225.P15302541754063085809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362683 (n + 1) - A359103 (n + 1)

end

end A055225.P15302541754063085809

namespace A055225

/-- `A362683(n+1)-A359103(n+1)` -/
def P15302541754063085809.Spec : Prop :=
  ∀ n, P15302541754063085809.a n = A055225 (n + 1)

end A055225

/-! ## A055225.P7836969792759098269

`A308502(∑[n+1])`
-/

namespace A055225.P7836969792759098269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055225.P7836969792759098269

namespace A055225

/-- `A308502(∑[n+1])` -/
def P7836969792759098269.Spec : Prop :=
  ∀ n, P7836969792759098269.a n = A055225 (n + 1)

end A055225

/-!
# A055226: a(n) = floor(sqrt(n!)).

The programs for A055226, the canonical program `A055226.P15171937069829666543` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055226 has offset 0).

The definition of A055226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n!))` (program `A055226.P15171937069829666543`, by `A055226.P15171937069829666543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055226.P15171937069829666543

`floor(sqrt(n!))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055226

/-- `floor(sqrt(n!))` -/
def P15171937069829666543.Spec : Prop :=
  ∀ n, (P15171937069829666543.a n : ℤ) = A055226 n

theorem P15171937069829666543.correct : P15171937069829666543.Spec := by
  intro n
  simp only [A055226]

end A055226

/-! ## A055226.P3849106436937464326

`floor(∏[sqrt(A028310(n))])`
-/

namespace A055226.P3849106436937464326
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028310 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A055226.P3849106436937464326

namespace A055226

/-- `floor(∏[sqrt(A028310(n))])` -/
def P3849106436937464326.Spec : Prop :=
  ∀ n, P3849106436937464326.a n = A055226 n

end A055226

/-! ## A055226.P10976174867637515251

`floor(∏[sqrt(A065033(2*n))])`
-/

namespace A055226.P10976174867637515251
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065033 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A055226.P10976174867637515251

namespace A055226

/-- `floor(∏[sqrt(A065033(2*n))])` -/
def P10976174867637515251.Spec : Prop :=
  ∀ n, P10976174867637515251.a n = A055226 n

end A055226

/-! ## A055226.P12756427892094210438

`floor(∏[sqrt(A000007(n)+n)])`
-/

namespace A055226.P12756427892094210438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000007 n + (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A055226.P12756427892094210438

namespace A055226

/-- `floor(∏[sqrt(A000007(n)+n)])` -/
def P12756427892094210438.Spec : Prop :=
  ∀ n, P12756427892094210438.a n = A055226 n

end A055226

/-! ## A055226.P14179198243455487366

`A055228(round(acot(n)+n))-1`
-/

namespace A055226.P14179198243455487366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A055226.P14179198243455487366

namespace A055226

/-- `A055228(round(acot(n)+n))-1` -/
def P14179198243455487366.Spec : Prop :=
  ∀ n, P14179198243455487366.a n = A055226 n

end A055226

/-! ## A055226.P8502398241916612323

`A055228(n)-A157928(n)`
-/

namespace A055226.P8502398241916612323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 n - A157928 n

end

end A055226.P8502398241916612323

namespace A055226

/-- `A055228(n)-A157928(n)` -/
def P8502398241916612323.Spec : Prop :=
  ∀ n, P8502398241916612323.a n = A055226 n

end A055226

/-! ## A055226.P1082747041518727710

`A055228(n)-A059841(A011773(n+1))`
-/

namespace A055226.P1082747041518727710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 n - A059841 (A011773 (n + 1)).toNat

end

end A055226.P1082747041518727710

namespace A055226

/-- `A055228(n)-A059841(A011773(n+1))` -/
def P1082747041518727710.Spec : Prop :=
  ∀ n, P1082747041518727710.a n = A055226 n

end A055226

/-! ## A055226.P731971853903137691

`floor(root(n!, 2))`
-/

namespace A055226.P731971853903137691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A055226.P731971853903137691

namespace A055226

/-- `floor(root(n!, 2))` -/
def P731971853903137691.Spec : Prop :=
  ∀ n, P731971853903137691.a n = A055226 n

end A055226

/-! ## A055226.P4918733801013164357

`floor(n!^(1/2))`
-/

namespace A055226.P4918733801013164357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A055226.P4918733801013164357

namespace A055226

/-- `floor(n!^(1/2))` -/
def P4918733801013164357.Spec : Prop :=
  ∀ n, P4918733801013164357.a n = A055226 n

end A055226

/-! ## A055226.P17802221607102123474

`ceil(sqrt(n!+1))-1`
-/

namespace A055226.P17802221607102123474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial n + 1 : ℝ)⌉ - 1

end

end A055226.P17802221607102123474

namespace A055226

/-- `ceil(sqrt(n!+1))-1` -/
def P17802221607102123474.Spec : Prop :=
  ∀ n, P17802221607102123474.a n = A055226 n

end A055226

/-!
# A055227: Nearest integer to sqrt( n! ).

The programs for A055227, the canonical program `A055227.P1043422903931282475` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055227 has offset 0).

The definition of A055227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055227.P1043422903931282475

`round(∏[sqrt(A028310(n))])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055227

/-- `round(∏[sqrt(A028310(n))])` -/
def P1043422903931282475.Spec : Prop :=
  ∀ n, P1043422903931282475.a n = A055227 n

theorem P1043422903931282475.correct : P1043422903931282475.Spec := by
  intro n
  simp only [A055227]

end A055227

/-! ## A055227.P1030329985697965385

`round(∏[sqrt(A065033(2*n))])`
-/

namespace A055227.P1030329985697965385
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065033 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A055227.P1030329985697965385

namespace A055227

/-- `round(∏[sqrt(A065033(2*n))])` -/
def P1030329985697965385.Spec : Prop :=
  ∀ n, P1030329985697965385.a n = A055227 n

end A055227

/-! ## A055227.P6999901761446965562

`round(∏[sqrt(A000007(n)+n)])`
-/

namespace A055227.P6999901761446965562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000007 n + (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A055227.P6999901761446965562

namespace A055227

/-- `round(∏[sqrt(A000007(n)+n)])` -/
def P6999901761446965562.Spec : Prop :=
  ∀ n, P6999901761446965562.a n = A055227 n

end A055227

/-! ## A055227.P6730247021939187637

`round(sqrt(n!))`
-/

namespace A055227.P6730247021939187637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.factorial n : ℝ))

end

end A055227.P6730247021939187637

namespace A055227

/-- `round(sqrt(n!))` -/
def P6730247021939187637.Spec : Prop :=
  ∀ n, P6730247021939187637.a n = A055227 n

end A055227

/-! ## A055227.P8046532918152789628

`round(root(n!, 2))`
-/

namespace A055227.P8046532918152789628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℝ) ^ (1 / (2 : ℝ)))

end

end A055227.P8046532918152789628

namespace A055227

/-- `round(root(n!, 2))` -/
def P8046532918152789628.Spec : Prop :=
  ∀ n, P8046532918152789628.a n = A055227 n

end A055227

/-! ## A055227.P13913463307694368393

`round(n!^(1/2))`
-/

namespace A055227.P13913463307694368393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))

end

end A055227.P13913463307694368393

namespace A055227

/-- `round(n!^(1/2))` -/
def P13913463307694368393.Spec : Prop :=
  ∀ n, P13913463307694368393.a n = A055227 n

end A055227

/-! ## A055227.P5334209496695242069

`floor(sqrt(n!)+1/2)`
-/

namespace A055227.P5334209496695242069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Nat.factorial n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A055227.P5334209496695242069

namespace A055227

/-- `floor(sqrt(n!)+1/2)` -/
def P5334209496695242069.Spec : Prop :=
  ∀ n, P5334209496695242069.a n = A055227 n

end A055227

/-! ## A055227.P10591858388024016826

`sqrt(A260373(n))`
-/

namespace A055227.P10591858388024016826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A260373 n : ℝ)

end

end A055227.P10591858388024016826

namespace A055227

/-- `sqrt(A260373(n))` -/
def P10591858388024016826.Spec : Prop :=
  ∀ n, P10591858388024016826.a n = (A055227 n : ℝ)

end A055227

/-! ## A055227.P15702804162804158583

`round(sqrt(A000142(n)))`
-/

namespace A055227.P15702804162804158583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000142 n : ℝ))

end

end A055227.P15702804162804158583

namespace A055227

/-- `round(sqrt(A000142(n)))` -/
def P15702804162804158583.Spec : Prop :=
  ∀ n, P15702804162804158583.a n = A055227 n

end A055227

/-!
# A055228: a(n) = ceiling(sqrt(n!)).

The programs for A055228, the canonical program `A055228.P5197048720928582146` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055228 has offset 0).

The definition of A055228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n!))` (program `A055228.P5197048720928582146`, by `A055228.P5197048720928582146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055228.P5197048720928582146

`ceil(sqrt(n!))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055228

/-- `ceil(sqrt(n!))` -/
def P5197048720928582146.Spec : Prop :=
  ∀ n, P5197048720928582146.a n = A055228 n

theorem P5197048720928582146.correct : P5197048720928582146.Spec := by
  intro n
  simp only [A055228]

end A055228

/-! ## A055228.P16732726786561294075

`ceil(∏[sqrt(A028310(n))])`
-/

namespace A055228.P16732726786561294075
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028310 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A055228.P16732726786561294075

namespace A055228

/-- `ceil(∏[sqrt(A028310(n))])` -/
def P16732726786561294075.Spec : Prop :=
  ∀ n, P16732726786561294075.a n = A055228 n

end A055228

/-! ## A055228.P11210610593757705014

`ceil(∏[sqrt(A065033(2*n))])`
-/

namespace A055228.P11210610593757705014
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065033 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A055228.P11210610593757705014

namespace A055228

/-- `ceil(∏[sqrt(A065033(2*n))])` -/
def P11210610593757705014.Spec : Prop :=
  ∀ n, P11210610593757705014.a n = A055228 n

end A055228

/-! ## A055228.P1704303878254635821

`ceil(∏[sqrt(A000007(n)+n)])`
-/

namespace A055228.P1704303878254635821
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000007 n + (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A055228.P1704303878254635821

namespace A055228

/-- `ceil(∏[sqrt(A000007(n)+n)])` -/
def P1704303878254635821.Spec : Prop :=
  ∀ n, P1704303878254635821.a n = A055228 n

end A055228

/-! ## A055228.P12307189607373065688

`ceil(∏[sqrt(A004277(n)-n)])`
-/

namespace A055228.P12307189607373065688
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A004277 n - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A055228.P12307189607373065688

namespace A055228

/-- `ceil(∏[sqrt(A004277(n)-n)])` -/
def P12307189607373065688.Spec : Prop :=
  ∀ n, P12307189607373065688.a n = A055228 n

end A055228

/-! ## A055228.P663020405383583730

`A157928(n)+A055226(n)`
-/

namespace A055228.P663020405383583730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A055226 n

end

end A055228.P663020405383583730

namespace A055228

/-- `A157928(n)+A055226(n)` -/
def P663020405383583730.Spec : Prop :=
  ∀ n, P663020405383583730.a n = A055228 n

end A055228

/-! ## A055228.P7190328313943078897

`A055226(n)-A057428(A259361(n))`
-/

namespace A055228.P7190328313943078897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 n - A057428 (A259361 n).toNat

end

end A055228.P7190328313943078897

namespace A055228

/-- `A055226(n)-A057428(A259361(n))` -/
def P7190328313943078897.Spec : Prop :=
  ∀ n, P7190328313943078897.a n = A055228 n

end A055228

/-! ## A055228.P3257017480976765870

`A059841(A011773(n+1))+A055226(n)`
-/

namespace A055228.P3257017480976765870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A011773 (n + 1)).toNat + A055226 n

end

end A055228.P3257017480976765870

namespace A055228

/-- `A059841(A011773(n+1))+A055226(n)` -/
def P3257017480976765870.Spec : Prop :=
  ∀ n, P3257017480976765870.a n = A055228 n

end A055228

/-! ## A055228.P2941863565333866003

`A157230(A008578(n+1))+A055226(n)`
-/

namespace A055228.P2941863565333866003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A008578 (n + 1)).toNat + A055226 n

end

end A055228.P2941863565333866003

namespace A055228

/-- `A157230(A008578(n+1))+A055226(n)` -/
def P2941863565333866003.Spec : Prop :=
  ∀ n, P2941863565333866003.a n = A055228 n

end A055228

/-! ## A055228.P4155172146857368671

`A055226(n)-A057428(A057428(n)+n)`
-/

namespace A055228.P4155172146857368671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 n - A057428 (A057428 n + (n : ℤ)).toNat

end

end A055228.P4155172146857368671

namespace A055228

/-- `A055226(n)-A057428(A057428(n)+n)` -/
def P4155172146857368671.Spec : Prop :=
  ∀ n, P4155172146857368671.a n = A055228 n

end A055228

/-! ## A055228.P16155499515902478764

`A157230(A157230(n+1)+2)+A055226(n)`
-/

namespace A055228.P16155499515902478764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A157230 (n + 1) + 2).toNat + A055226 n

end

end A055228.P16155499515902478764

namespace A055228

/-- `A157230(A157230(n+1)+2)+A055226(n)` -/
def P16155499515902478764.Spec : Prop :=
  ∀ n, P16155499515902478764.a n = A055228 n

end A055228

/-! ## A055228.P13457430574183887211

`A055226(n)-A057428(n²-n)`
-/

namespace A055228.P13457430574183887211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 n - A057428 (n ^ 2 - n)

end

end A055228.P13457430574183887211

namespace A055228

/-- `A055226(n)-A057428(n²-n)` -/
def P13457430574183887211.Spec : Prop :=
  ∀ n, P13457430574183887211.a n = A055228 n

end A055228

/-!
# A055229: Greatest common divisor of largest square dividing n and squarefree part of n.

The programs for A055229, the canonical program `A055229.P14192550897555320768` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055229 has offset 1).

The definition of A055229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055229.P14192550897555320768

`gcd(A008833(n+1), A007913(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055229

/-- `gcd(A008833(n+1), A007913(n+1))` -/
def P14192550897555320768.Spec : Prop :=
  ∀ n, (P14192550897555320768.a n : ℤ) = A055229 (n + 1)

theorem P14192550897555320768.correct : P14192550897555320768.Spec := by
  intro n
  simp only [A055229, Nat.add_sub_cancel]

end A055229

/-! ## A055229.P3675579144580679867

`∏{p}[A056191(n+1), #]`
-/

namespace A055229.P3675579144580679867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A055229.P3675579144580679867

namespace A055229

/-- `∏{p}[A056191(n+1), #]` -/
def P3675579144580679867.Spec : Prop :=
  ∀ n, (P3675579144580679867.a n : ℤ) = A055229 (n + 1)

end A055229

/-! ## A055229.P7922423358708449196

`A000188(A056191(n+1))`
-/

namespace A055229.P7922423358708449196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A056191 (n + 1)).toNat

end

end A055229.P7922423358708449196

namespace A055229

/-- `A000188(A056191(n+1))` -/
def P7922423358708449196.Spec : Prop :=
  ∀ n, P7922423358708449196.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P3495475214829314169

`A007913(A057521(n+1))`
-/

namespace A055229.P3495475214829314169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A057521 (n + 1)).toNat

end

end A055229.P3495475214829314169

namespace A055229

/-- `A007913(A057521(n+1))` -/
def P3495475214829314169.Spec : Prop :=
  ∀ n, P3495475214829314169.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P10810792195068402183

`A007913(A062378(n+1))`
-/

namespace A055229.P10810792195068402183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062378 (n + 1)).toNat

end

end A055229.P10810792195068402183

namespace A055229

/-- `A007913(A062378(n+1))` -/
def P10810792195068402183.Spec : Prop :=
  ∀ n, P10810792195068402183.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P12688627845032455035

`A336643(A003557(n+1))`
-/

namespace A055229.P12688627845032455035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A003557 (n + 1)).toNat

end

end A055229.P12688627845032455035

namespace A055229

/-- `A336643(A003557(n+1))` -/
def P12688627845032455035.Spec : Prop :=
  ∀ n, P12688627845032455035.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P18397375782828758949

`A007913(A360540(n+1))`
-/

namespace A055229.P18397375782828758949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A360540 (n + 1)).toNat

end

end A055229.P18397375782828758949

namespace A055229

/-- `A007913(A360540(n+1))` -/
def P18397375782828758949.Spec : Prop :=
  ∀ n, P18397375782828758949.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P6922298102917004241

`A365296(A368167(n+1))`
-/

namespace A055229.P6922298102917004241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (A368167 (n + 1)).toNat

end

end A055229.P6922298102917004241

namespace A055229

/-- `A365296(A368167(n+1))` -/
def P6922298102917004241.Spec : Prop :=
  ∀ n, P6922298102917004241.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P3296120623089095643

`A336643(A336551(n+1)+1)`
-/

namespace A055229.P3296120623089095643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A336551 (n + 1) + 1).toNat

end

end A055229.P3296120623089095643

namespace A055229

/-- `A336643(A336551(n+1)+1)` -/
def P3296120623089095643.Spec : Prop :=
  ∀ n, P3296120623089095643.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P2252948941199977498

`gcd(∑[A258057(n)], A007913(n+1))`
-/

namespace A055229.P2252948941199977498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A007913 (n + 1))

end

end A055229.P2252948941199977498

namespace A055229

/-- `gcd(∑[A258057(n)], A007913(n+1))` -/
def P2252948941199977498.Spec : Prop :=
  ∀ n, (P2252948941199977498.a n : ℤ) = A055229 (n + 1)

end A055229

/-! ## A055229.P1505552898390440704

`A007913(2*2*A056191(n+1))`
-/

namespace A055229.P1505552898390440704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (2 * A056191 (n + 1))).toNat

end

end A055229.P1505552898390440704

namespace A055229

/-- `A007913(2*2*A056191(n+1))` -/
def P1505552898390440704.Spec : Prop :=
  ∀ n, P1505552898390440704.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P12551831964465745211

`A007913((n+1)/A007948(n+1))`
-/

namespace A055229.P12551831964465745211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007948 (n + 1) : ℚ))).toNat

end

end A055229.P12551831964465745211

namespace A055229

/-- `A007913((n+1)/A007948(n+1))` -/
def P12551831964465745211.Spec : Prop :=
  ∀ n, P12551831964465745211.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P11840039412442549358

`A000188((n+1)/A056192(n+1))`
-/

namespace A055229.P11840039412442549358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056192 (n + 1) : ℚ))).toNat

end

end A055229.P11840039412442549358

namespace A055229

/-- `A000188((n+1)/A056192(n+1))` -/
def P11840039412442549358.Spec : Prop :=
  ∀ n, P11840039412442549358.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P9566354351847892246

`A000188((n+1)/A056623(n+1))`
-/

namespace A055229.P9566354351847892246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056623 (n + 1) : ℚ))).toNat

end

end A055229.P9566354351847892246

namespace A055229

/-- `A000188((n+1)/A056623(n+1))` -/
def P9566354351847892246.Spec : Prop :=
  ∀ n, P9566354351847892246.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P10862221313962286333

`A000188(n+1)/A056622(n+1)`
-/

namespace A055229.P10862221313962286333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A056622 (n + 1) : ℚ)

end

end A055229.P10862221313962286333

namespace A055229

/-- `A000188(n+1)/A056622(n+1)` -/
def P10862221313962286333.Spec : Prop :=
  ∀ n, P10862221313962286333.a n = (A055229 (n + 1) : ℚ)

end A055229

/-! ## A055229.P16514876028105591972

`A007913((n+1)/A055231(n+1))`
-/

namespace A055229.P16514876028105591972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A055229.P16514876028105591972

namespace A055229

/-- `A007913((n+1)/A055231(n+1))` -/
def P16514876028105591972.Spec : Prop :=
  ∀ n, P16514876028105591972.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P1013650064263617932

`A007913((n+1)/A056192(n+1))`
-/

namespace A055229.P1013650064263617932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056192 (n + 1) : ℚ))).toNat

end

end A055229.P1013650064263617932

namespace A055229

/-- `A007913((n+1)/A056192(n+1))` -/
def P1013650064263617932.Spec : Prop :=
  ∀ n, P1013650064263617932.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P12007002248085086541

`A007947((n+1)/A056192(n+1))`
-/

namespace A055229.P12007002248085086541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056192 (n + 1) : ℚ))).toNat

end

end A055229.P12007002248085086541

namespace A055229

/-- `A007947((n+1)/A056192(n+1))` -/
def P12007002248085086541.Spec : Prop :=
  ∀ n, P12007002248085086541.a n = A055229 (n + 1)

end A055229

/-! ## A055229.P4355415640157275361

`A057521(n+1)/A008833(n+1)`
-/

namespace A055229.P4355415640157275361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ)

end

end A055229.P4355415640157275361

namespace A055229

/-- `A057521(n+1)/A008833(n+1)` -/
def P4355415640157275361.Spec : Prop :=
  ∀ n, P4355415640157275361.a n = (A055229 (n + 1) : ℚ)

end A055229

/-! ## A055229.P4591660001019258947

`A007948(n+1)/A066990(n+1)`
-/

namespace A055229.P4591660001019258947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A066990 (n + 1) : ℚ)

end

end A055229.P4591660001019258947

namespace A055229

/-- `A007948(n+1)/A066990(n+1)` -/
def P4591660001019258947.Spec : Prop :=
  ∀ n, P4591660001019258947.a n = (A055229 (n + 1) : ℚ)

end A055229

/-!
# A055230: Greatest common divisor of largest square dividing n! and squarefree part of n!.

The programs for A055230, the canonical program `A055230.P2629812307315848114` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055230 has offset 1).

The definition of A055230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, A055204, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055230.P2629812307315848114

`gcd(A055071(n+1), A055204(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055230

/-- `gcd(A055071(n+1), A055204(n+1))` -/
def P2629812307315848114.Spec : Prop :=
  ∀ n, (P2629812307315848114.a n : ℤ) = A055230 (n + 1)

theorem P2629812307315848114.correct : P2629812307315848114.Spec := by
  intro n
  simp only [A055230, Nat.add_sub_cancel]

end A055230

/-! ## A055230.P9888274728273115317

`root(A056194(n+1), 3)`
-/

namespace A055230.P9888274728273115317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056194 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A055230.P9888274728273115317

namespace A055230

/-- `root(A056194(n+1), 3)` -/
def P9888274728273115317.Spec : Prop :=
  ∀ n, P9888274728273115317.a n = (A055230 (n + 1) : ℝ)

end A055230

/-! ## A055230.P14631810036090594400

`A055204(n+1)/A055773(n+1)`
-/

namespace A055230.P14631810036090594400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055204 (n + 1) : ℚ) / (A055773 (n + 1) : ℚ)

end

end A055230.P14631810036090594400

namespace A055230

/-- `A055204(n+1)/A055773(n+1)` -/
def P14631810036090594400.Spec : Prop :=
  ∀ n, P14631810036090594400.a n = (A055230 (n + 1) : ℚ)

end A055230

/-! ## A055230.P5985656480518381424

`gcd(A003418(A065033(n)), A055204(n+1))`
-/

namespace A055230.P5985656480518381424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A065033 n).toNat) (A055204 (n + 1))

end

end A055230.P5985656480518381424

namespace A055230

/-- `gcd(A003418(A065033(n)), A055204(n+1))` -/
def P5985656480518381424.Spec : Prop :=
  ∀ n, (P5985656480518381424.a n : ℤ) = A055230 (n + 1)

end A055230

/-! ## A055230.P2543623699164806942

`gcd(A034386(n), A056194(n+1))`
-/

namespace A055230.P2543623699164806942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A056194 (n + 1))

end

end A055230.P2543623699164806942

namespace A055230

/-- `gcd(A034386(n), A056194(n+1))` -/
def P2543623699164806942.Spec : Prop :=
  ∀ n, (P2543623699164806942.a n : ℤ) = A055230 (n + 1)

end A055230

/-! ## A055230.P4586432655380928072

`A055772(n+1)/A056627(n+1)`
-/

namespace A055230.P4586432655380928072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A056627 (n + 1) : ℚ)

end

end A055230.P4586432655380928072

namespace A055230

/-- `A055772(n+1)/A056627(n+1)` -/
def P4586432655380928072.Spec : Prop :=
  ∀ n, P4586432655380928072.a n = (A055230 (n + 1) : ℚ)

end A055230

/-! ## A055230.P1184086686964411547

`A182922(n+1)/A055071(n+1)`
-/

namespace A055230.P1184086686964411547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182922 (n + 1) : ℚ) / (A055071 (n + 1) : ℚ)

end

end A055230.P1184086686964411547

namespace A055230

/-- `A182922(n+1)/A055071(n+1)` -/
def P1184086686964411547.Spec : Prop :=
  ∀ n, P1184086686964411547.a n = (A055230 (n + 1) : ℚ)

end A055230

/-!
# A055231: Powerfree part of n: product of primes that divide n only once.

The programs for A055231, the canonical program `A055231.P8962300905713718501` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055231 has offset 1).

The definition of A055231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055231.P10804457636808821050

`(n+1)/A057521(n+1)`
-/

namespace A055231.P10804457636808821050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (n + 1) : ℚ)

end

end A055231.P10804457636808821050

namespace A055231

/-- `(n+1)/A057521(n+1)` -/
def P10804457636808821050.Spec : Prop :=
  ∀ n, P10804457636808821050.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P247940308256695800

`A197863(n+1)/(n+1)`
-/

namespace A055231.P247940308256695800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A055231.P247940308256695800

namespace A055231

/-- `A197863(n+1)/(n+1)` -/
def P247940308256695800.Spec : Prop :=
  ∀ n, P247940308256695800.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P8962300905713718501

`A007947(n+1)/A071773(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055231

/-- `A007947(n+1)/A071773(n+1)` -/
def P8962300905713718501.Spec : Prop :=
  ∀ n, P8962300905713718501.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P12628152647034377151

`A007913(n+1)/gcd(A008833(n+1), A007913(n+1))`
-/

namespace A055231.P12628152647034377151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (Int.gcd (A008833 (n + 1)) (A007913 (n + 1)) : ℚ)

end

end A055231.P12628152647034377151

namespace A055231

/-- `A007913(n+1)/gcd(A008833(n+1), A007913(n+1))` -/
def P12628152647034377151.Spec : Prop :=
  ∀ n, P12628152647034377151.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P13388740902518015633

`∏{p}[n+1, lcm(n+1, #²)/(n+1)]`
-/

namespace A055231.P13388740902518015633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A055231.P13388740902518015633

namespace A055231

/-- `∏{p}[n+1, lcm(n+1, #²)/(n+1)]` -/
def P13388740902518015633.Spec : Prop :=
  ∀ n, P13388740902518015633.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P6160367344551854094

`∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A055231.P6160367344551854094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)

end

end A055231.P6160367344551854094

namespace A055231

/-- `∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P6160367344551854094.Spec : Prop :=
  ∀ n, P6160367344551854094.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P7561847493335295024

`(n+1)/(n+1-A326186(n+1))`
-/

namespace A055231.P7561847493335295024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A326186 (n + 1) : ℚ)

end

end A055231.P7561847493335295024

namespace A055231

/-- `(n+1)/(n+1-A326186(n+1))` -/
def P7561847493335295024.Spec : Prop :=
  ∀ n, P7561847493335295024.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P15035832550322027554

`A007913(A007948(n+1))`
-/

namespace A055231.P15035832550322027554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007948 (n + 1)).toNat

end

end A055231.P15035832550322027554

namespace A055231

/-- `A007913(A007948(n+1))` -/
def P15035832550322027554.Spec : Prop :=
  ∀ n, P15035832550322027554.a n = A055231 (n + 1)

end A055231

/-! ## A055231.P13948869839301306981

`A007913(A056192(n+1))`
-/

namespace A055231.P13948869839301306981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A056192 (n + 1)).toNat

end

end A055231.P13948869839301306981

namespace A055231

/-- `A007913(A056192(n+1))` -/
def P13948869839301306981.Spec : Prop :=
  ∀ n, P13948869839301306981.a n = A055231 (n + 1)

end A055231

/-! ## A055231.P11838809738563578598

`A007913(A353897(n+1))`
-/

namespace A055231.P11838809738563578598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A353897 (n + 1)).toNat

end

end A055231.P11838809738563578598

namespace A055231

/-- `A007913(A353897(n+1))` -/
def P11838809738563578598.Spec : Prop :=
  ∀ n, P11838809738563578598.a n = A055231 (n + 1)

end A055231

/-! ## A055231.P12031270712722935080

`A007913(A360539(n+1))`
-/

namespace A055231.P12031270712722935080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A360539 (n + 1)).toNat

end

end A055231.P12031270712722935080

namespace A055231

/-- `A007913(A360539(n+1))` -/
def P12031270712722935080.Spec : Prop :=
  ∀ n, P12031270712722935080.a n = A055231 (n + 1)

end A055231

/-! ## A055231.P2806799043564433938

`A007913(A367168(n+1))`
-/

namespace A055231.P2806799043564433938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A367168 (n + 1)).toNat

end

end A055231.P2806799043564433938

namespace A055231

/-- `A007913(A367168(n+1))` -/
def P2806799043564433938.Spec : Prop :=
  ∀ n, P2806799043564433938.a n = A055231 (n + 1)

end A055231

/-! ## A055231.P9764460841992929684

`A360539(A350389(n+1))`
-/

namespace A055231.P9764460841992929684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A350389 (n + 1)).toNat

end

end A055231.P9764460841992929684

namespace A055231

/-- `A360539(A350389(n+1))` -/
def P9764460841992929684.Spec : Prop :=
  ∀ n, P9764460841992929684.a n = A055231 (n + 1)

end A055231

/-! ## A055231.P17416331483557187099

`A007913(n+1)/A055229(n+1)`
-/

namespace A055231.P17416331483557187099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A055231.P17416331483557187099

namespace A055231

/-- `A007913(n+1)/A055229(n+1)` -/
def P17416331483557187099.Spec : Prop :=
  ∀ n, P17416331483557187099.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P1272875813346139281

`(n+1)/A064549(A003557(n+1))`
-/

namespace A055231.P1272875813346139281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064549 (A003557 (n + 1)).toNat : ℚ)

end

end A055231.P1272875813346139281

namespace A055231

/-- `(n+1)/A064549(A003557(n+1))` -/
def P1272875813346139281.Spec : Prop :=
  ∀ n, P1272875813346139281.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P5207881330277692051

`A078615(n+1)/A007948(n+1)`
-/

namespace A055231.P5207881330277692051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A007948 (n + 1) : ℚ)

end

end A055231.P5207881330277692051

namespace A055231

/-- `A078615(n+1)/A007948(n+1)` -/
def P5207881330277692051.Spec : Prop :=
  ∀ n, P5207881330277692051.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P13354566874848470037

`A056192(n+1)/A056623(n+1)`
-/

namespace A055231.P13354566874848470037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056192 (n + 1) : ℚ) / (A056623 (n + 1) : ℚ)

end

end A055231.P13354566874848470037

namespace A055231

/-- `A056192(n+1)/A056623(n+1)` -/
def P13354566874848470037.Spec : Prop :=
  ∀ n, P13354566874848470037.a n = (A055231 (n + 1) : ℚ)

end A055231

/-! ## A055231.P13374556945724067632

`gcd(A072905(n+1), A360539(n+1))`
-/

namespace A055231.P13374556945724067632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072905 (n + 1)) (A360539 (n + 1))

end

end A055231.P13374556945724067632

namespace A055231

/-- `gcd(A072905(n+1), A360539(n+1))` -/
def P13374556945724067632.Spec : Prop :=
  ∀ n, (P13374556945724067632.a n : ℤ) = A055231 (n + 1)

end A055231

/-! ## A055231.P16490003797751218323

`gcd(A292144(n+1), A367168(n+1))`
-/

namespace A055231.P16490003797751218323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292144 (n + 1)) (A367168 (n + 1))

end

end A055231.P16490003797751218323

namespace A055231

/-- `gcd(A292144(n+1), A367168(n+1))` -/
def P16490003797751218323.Spec : Prop :=
  ∀ n, (P16490003797751218323.a n : ℤ) = A055231 (n + 1)

end A055231

/-! ## A055231.P5024493403403183091

`gcd(A350389(n+1), A360541(n+1))`
-/

namespace A055231.P5024493403403183091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350389 (n + 1)) (A360541 (n + 1))

end

end A055231.P5024493403403183091

namespace A055231

/-- `gcd(A350389(n+1), A360541(n+1))` -/
def P5024493403403183091.Spec : Prop :=
  ∀ n, (P5024493403403183091.a n : ℤ) = A055231 (n + 1)

end A055231

/-!
# A055232: Expansion of (1+2*x+3*x^2)/((1-x)^3*(1-x^2)).

The programs for A055232, the canonical program `A055232.P7558294619880354767` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055232 has offset 0).

The definition of A055232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2)/(1-3x+2x^2+2x^3-3x^4+x^5))` (program `A055232.P7558294619880354767`, by `A055232.P7558294619880354767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055232.P7558294619880354767

`ogf((1+2x+3x^2)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055232

/-- `ogf((1+2x+3x^2)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P7558294619880354767.Spec : Prop :=
  ∀ n, P7558294619880354767.a n = A055232 n

theorem P7558294619880354767.correct : P7558294619880354767.Spec := by
  intro n
  simp only [A055232]

end A055232

/-! ## A055232.P5869051949900969654

`(7+(-1)^n+16*n+14*n²+4*n^3)/8`
-/

namespace A055232.P5869051949900969654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 + (-1) ^ n + (16 * n : ℤ) + (14 * n ^ 2 : ℤ) + (4 * n ^ 3 : ℤ) : ℚ) / 8

end

end A055232.P5869051949900969654

namespace A055232

/-- `(7+(-1)^n+16*n+14*n²+4*n^3)/8` -/
def P5869051949900969654.Spec : Prop :=
  ∀ n, P5869051949900969654.a n = (A055232 n : ℚ)

end A055232

/-! ## A055232.P14935918679599422636

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=16, a(3)=36, a(4)=69`
-/

namespace A055232.P14935918679599422636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 16, 36, 69] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A055232.P14935918679599422636

namespace A055232

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P14935918679599422636.Spec : Prop :=
  ∀ n, P14935918679599422636.a n = A055232 n

end A055232

/-! ## A055232.P4555742263521664400

`∑[∑[or(1, 3*n)]]`
-/

namespace A055232.P4555742263521664400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P4555742263521664400

namespace A055232

/-- `∑[∑[or(1, 3*n)]]` -/
def P4555742263521664400.Spec : Prop :=
  ∀ n, (P4555742263521664400.a n : ℤ) = A055232 n

end A055232

/-! ## A055232.P16021999969698523280

`∑[∑[or(1, n)+n+n]]`
-/

namespace A055232.P16021999969698523280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P16021999969698523280

namespace A055232

/-- `∑[∑[or(1, n)+n+n]]` -/
def P16021999969698523280.Spec : Prop :=
  ∀ n, (P16021999969698523280.a n : ℤ) = A055232 n

end A055232

/-! ## A055232.P14714494011861528824

`∑[∑[Δ[n²]+and(n, -2)]]`
-/

namespace A055232.P14714494011861528824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P14714494011861528824

namespace A055232

/-- `∑[∑[Δ[n²]+and(n, -2)]]` -/
def P14714494011861528824.Spec : Prop :=
  ∀ n, P14714494011861528824.a n = A055232 n

end A055232

/-! ## A055232.P4114047191374458864

`∑[∑[a(n-2)+6]]` with `a(0)=1, a(1)=3`
-/

namespace A055232.P4114047191374458864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P4114047191374458864

namespace A055232

/-- `∑[∑[a(n-2)+6]]` -/
def P4114047191374458864.Spec : Prop :=
  ∀ n, (P4114047191374458864.a n : ℤ) = A055232 n

end A055232

/-! ## A055232.P16637196619535489337

`∑[∑[∑[6-a(n-1)]]]` with `a(0)=1, a(1)=2`
-/

namespace A055232.P16637196619535489337
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  6 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P16637196619535489337

namespace A055232

/-- `∑[∑[∑[6-a(n-1)]]]` -/
def P16637196619535489337.Spec : Prop :=
  ∀ n, P16637196619535489337.a n = A055232 n

end A055232

/-! ## A055232.P6160317006854570320

`3*n²+a(n-2)+n+1` with `a(0)=1, a(1)=5`
-/

namespace A055232.P6160317006854570320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * n ^ 2 + (a (n - 2) + (n + 1))

end

end A055232.P6160317006854570320

namespace A055232

/-- `3*n²+a(n-2)+n+1` -/
def P6160317006854570320.Spec : Prop :=
  ∀ n, (P6160317006854570320.a n : ℤ) = A055232 n

end A055232

/-! ## A055232.P12350666617905451682

`lcm(n, (n+1)²)-a(n-1)+n+1` with `a(0)=1`
-/

namespace A055232.P12350666617905451682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - a (n - 1) + (n + 1 : ℤ)

end

end A055232.P12350666617905451682

namespace A055232

/-- `lcm(n, (n+1)²)-a(n-1)+n+1` -/
def P12350666617905451682.Spec : Prop :=
  ∀ n, P12350666617905451682.a n = A055232 n

end A055232

/-! ## A055232.P9094389973969440598

`(n+1)*(n*(n+1)+1)-a(n-1)` with `a(0)=1`
-/

namespace A055232.P9094389973969440598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) * (n * (n + 1) + 1) : ℤ) - a (n - 1)

end

end A055232.P9094389973969440598

namespace A055232

/-- `(n+1)*(n*(n+1)+1)-a(n-1)` -/
def P9094389973969440598.Spec : Prop :=
  ∀ n, P9094389973969440598.a n = A055232 n

end A055232

/-! ## A055232.P14596257402248735890

`n/(n+1)^(-2)+n+1-a(n-1)` with `a(0)=1`
-/

namespace A055232.P14596257402248735890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ) + ((n + 1 : ℚ) - a (n - 1))

end

end A055232.P14596257402248735890

namespace A055232

/-- `n/(n+1)^(-2)+n+1-a(n-1)` -/
def P14596257402248735890.Spec : Prop :=
  ∀ n, P14596257402248735890.a n = (A055232 n : ℚ)

end A055232

/-! ## A055232.P459867782051036475

`∑[A212959(n)]`
-/

namespace A055232.P459867782051036475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P459867782051036475

namespace A055232

/-- `∑[A212959(n)]` -/
def P459867782051036475.Spec : Prop :=
  ∀ n, P459867782051036475.a n = A055232 n

end A055232

/-! ## A055232.P13845104379900004722

`∑[A393677(n)+n]`
-/

namespace A055232.P13845104379900004722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393677 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P13845104379900004722

namespace A055232

/-- `∑[A393677(n)+n]` -/
def P13845104379900004722.Spec : Prop :=
  ∀ n, P13845104379900004722.a n = A055232 n

end A055232

/-! ## A055232.P11533189319475968468

`∑[∑[A047241(n+1)]]`
-/

namespace A055232.P11533189319475968468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P11533189319475968468

namespace A055232

/-- `∑[∑[A047241(n+1)]]` -/
def P11533189319475968468.Spec : Prop :=
  ∀ n, P11533189319475968468.a n = A055232 n

end A055232

/-! ## A055232.P10425710927839320895

`A011934(n)+(n+1)²`
-/

namespace A055232.P10425710927839320895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n + ((n + 1) ^ 2 : ℤ)

end

end A055232.P10425710927839320895

namespace A055232

/-- `A011934(n)+(n+1)²` -/
def P10425710927839320895.Spec : Prop :=
  ∀ n, P10425710927839320895.a n = A055232 n

end A055232

/-! ## A055232.P4582532008134746854

`∑[A007590(n)+(n+1)²]`
-/

namespace A055232.P4582532008134746854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055232.P4582532008134746854

namespace A055232

/-- `∑[A007590(n)+(n+1)²]` -/
def P4582532008134746854.Spec : Prop :=
  ∀ n, P4582532008134746854.a n = A055232 n

end A055232

/-! ## A055232.P8018804250884764295

`∑[A032528(n)]+(n+1)²`
-/

namespace A055232.P8018804250884764295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A055232.P8018804250884764295

namespace A055232

/-- `∑[A032528(n)]+(n+1)²` -/
def P8018804250884764295.Spec : Prop :=
  ∀ n, P8018804250884764295.a n = A055232 n

end A055232

/-! ## A055232.P9159729847807107021

`A213759(n+1)+∑[n²]`
-/

namespace A055232.P9159729847807107021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213759 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055232.P9159729847807107021

namespace A055232

/-- `A213759(n+1)+∑[n²]` -/
def P9159729847807107021.Spec : Prop :=
  ∀ n, P9159729847807107021.a n = A055232 n

end A055232

/-! ## A055232.P8128445341388269927

`(n+1)^3-A182260(n+1)`
-/

namespace A055232.P8128445341388269927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A182260 (n + 1)

end

end A055232.P8128445341388269927

namespace A055232

/-- `(n+1)^3-A182260(n+1)` -/
def P8128445341388269927.Spec : Prop :=
  ∀ n, P8128445341388269927.a n = A055232 n

end A055232

/-!
# A055233: Composite numbers equal to the sum of the primes from their smallest prime factor to their largest prime factor.

The programs for A055233, there is no canonical definition to state claims against.
-/

/-! ## A055233.P12114598332409634508

`A055514(comp[5*n])`
-/

namespace A055233.P12114598332409634508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055514 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A055233.P12114598332409634508

/-!
# A055234: Smallest x such that sigma(x) = n*phi(x), or -1 if no such x exists.

The programs for A055234, there is no canonical definition to state claims against.
-/

/-! ## A055234.P18173657310166589324

`A088830(n+1)%A133453(n)`
-/

namespace A055234.P18173657310166589324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088830 (n + 1)) (A133453 n)

end

end A055234.P18173657310166589324

/-! ## A055234.P9559760733426184175

`A088830(A078560(a(n%2))+n)` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A055234.P9559760733426184175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  A088830 (A078560 (a (n % 2)).toNat + (n : ℤ)).toNat

end

end A055234.P9559760733426184175

/-!
# A055235: Sums of two powers of 3.

The programs for A055235, the canonical program `A055235.P6827008974222862054` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055235 has offset 0).

The definition of A055235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055235.P10778575068195293151

`∑[A135293(n)]`
-/

namespace A055235.P10778575068195293151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055235.P10778575068195293151

namespace A055235

/-- `∑[A135293(n)]` -/
def P10778575068195293151.Spec : Prop :=
  ∀ n, P10778575068195293151.a n = A055235 n

end A055235

/-! ## A055235.P941407117197138368

`2*A073216(n)`
-/

namespace A055235.P941407117197138368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073216 n

end

end A055235.P941407117197138368

namespace A055235

/-- `2*A073216(n)` -/
def P941407117197138368.Spec : Prop :=
  ∀ n, P941407117197138368.a n = A055235 n

end A055235

/-! ## A055235.P6827008974222862054

`2*(A023745(n+1)+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055235

/-- `2*(A023745(n+1)+1)` -/
def P6827008974222862054.Spec : Prop :=
  ∀ n, P6827008974222862054.a n = A055235 n

theorem P6827008974222862054.correct : P6827008974222862054.Spec := by
  intro n
  simp only [A055235]

end A055235

/-! ## A055235.P10795204430662444364

`A098355(n)+A000244(A002262(n))`
-/

namespace A055235.P10795204430662444364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n + A000244 (A002262 n).toNat

end

end A055235.P10795204430662444364

namespace A055235

/-- `A098355(n)+A000244(A002262(n))` -/
def P10795204430662444364.Spec : Prop :=
  ∀ n, P10795204430662444364.a n = A055235 n

end A055235

/-! ## A055235.P10279225932250130070

`A098355(n)+A000244(log2(A059268(n)))`
-/

namespace A055235.P10279225932250130070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n + A000244 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A055235.P10279225932250130070

namespace A055235

/-- `A098355(n)+A000244(log2(A059268(n)))` -/
def P10279225932250130070.Spec : Prop :=
  ∀ n, P10279225932250130070.a n = A055235 n

end A055235

/-! ## A055235.P7187606568254010885

`A098355(n)+A013620(n)/A038207(n)`
-/

namespace A055235.P7187606568254010885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098355 n : ℚ) + (A013620 n : ℚ) / (A038207 n : ℚ)

end

end A055235.P7187606568254010885

namespace A055235

/-- `A098355(n)+A013620(n)/A038207(n)` -/
def P7187606568254010885.Spec : Prop :=
  ∀ n, P7187606568254010885.a n = (A055235 n : ℚ)

end A055235

/-! ## A055235.P15934904948420035666

`A098355(n)+A098355(n)/A140303(n)`
-/

namespace A055235.P15934904948420035666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098355 n : ℚ) + (A098355 n : ℚ) / (A140303 n : ℚ)

end

end A055235.P15934904948420035666

namespace A055235

/-- `A098355(n)+A098355(n)/A140303(n)` -/
def P15934904948420035666.Spec : Prop :=
  ∀ n, P15934904948420035666.a n = (A055235 n : ℚ)

end A055235

/-! ## A055235.P4294794040857870011

`A000244(A002262(n))+A000244(A003056(n))`
-/

namespace A055235.P4294794040857870011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat + A000244 (A003056 n).toNat

end

end A055235.P4294794040857870011

namespace A055235

/-- `A000244(A002262(n))+A000244(A003056(n))` -/
def P4294794040857870011.Spec : Prop :=
  ∀ n, P4294794040857870011.a n = A055235 n

end A055235

/-! ## A055235.P3463983252377890725

`A000244(A002262(n))+Δ[A259653(n)]`
-/

namespace A055235.P3463983252377890725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat + (f1 (n + 1) - f1 n)

end

end A055235.P3463983252377890725

namespace A055235

/-- `A000244(A002262(n))+Δ[A259653(n)]` -/
def P3463983252377890725.Spec : Prop :=
  ∀ n, P3463983252377890725.a n = A055235 n

end A055235

/-! ## A055235.P8542314577017319663

`(A140303(n)+1)*A140303(A061579(n))`
-/

namespace A055235.P8542314577017319663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140303 n + 1) * A140303 (A061579 n).toNat

end

end A055235.P8542314577017319663

namespace A055235

/-- `(A140303(n)+1)*A140303(A061579(n))` -/
def P8542314577017319663.Spec : Prop :=
  ∀ n, P8542314577017319663.a n = A055235 n

end A055235

/-! ## A055235.P15422250404194561575

`(A257620(n)+A156366(n+1))/A008292(n+1)`
-/

namespace A055235.P15422250404194561575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257620 n + A156366 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

end

end A055235.P15422250404194561575

namespace A055235

/-- `(A257620(n)+A156366(n+1))/A008292(n+1)` -/
def P15422250404194561575.Spec : Prop :=
  ∀ n, P15422250404194561575.a n = (A055235 n : ℚ)

end A055235

/-! ## A055235.P462643626721323695

`A098355(n)+A003959(A059268(n))`
-/

namespace A055235.P462643626721323695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n + A003959 (A059268 n).toNat

end

end A055235.P462643626721323695

namespace A055235

/-- `A098355(n)+A003959(A059268(n))` -/
def P462643626721323695.Spec : Prop :=
  ∀ n, P462643626721323695.a n = A055235 n

end A055235

/-! ## A055235.P13590991905886731259

`A055378(A167614(n+2))`
-/

namespace A055235.P13590991905886731259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (A167614 (n + 2)).toNat

end

end A055235.P13590991905886731259

namespace A055235

/-- `A055378(A167614(n+2))` -/
def P13590991905886731259.Spec : Prop :=
  ∀ n, P13590991905886731259.a n = A055235 n

end A055235

/-! ## A055235.P15278917910538861826

`A055378(eq[3, A002262(n)])`
-/

namespace A055235.P15278917910538861826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055235.P15278917910538861826

namespace A055235

/-- `A055378(eq[3, A002262(n)])` -/
def P15278917910538861826.Spec : Prop :=
  ∀ n, P15278917910538861826.a n = A055235 n

end A055235

/-! ## A055235.P1284299290825363809

`A055378(A340266(n+2)+1)`
-/

namespace A055235.P1284299290825363809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (A340266 (n + 2) + 1).toNat

end

end A055235.P1284299290825363809

namespace A055235

/-- `A055378(A340266(n+2)+1)` -/
def P1284299290825363809.Spec : Prop :=
  ∀ n, P1284299290825363809.a n = A055235 n

end A055235

/-! ## A055235.P228344634389410799

`A332818(A059268(n))+A332818(A137688(n))`
-/

namespace A055235.P228344634389410799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (A059268 n).toNat + A332818 (A137688 n).toNat

end

end A055235.P228344634389410799

namespace A055235

/-- `A332818(A059268(n))+A332818(A137688(n))` -/
def P228344634389410799.Spec : Prop :=
  ∀ n, P228344634389410799.a n = A055235 n

end A055235

/-! ## A055235.P1418094071059658233

`A191110(A099627(n))+1`
-/

namespace A055235.P1418094071059658233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (A099627 n).toNat + 1

end

end A055235.P1418094071059658233

namespace A055235

/-- `A191110(A099627(n))+1` -/
def P1418094071059658233.Spec : Prop :=
  ∀ n, P1418094071059658233.a n = A055235 n

end A055235

/-!
# A055236: Sums of two powers of 4.

The programs for A055236, the canonical program `A055236.P17447280474531156854` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055236 has offset 0).

The definition of A055236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055236.P17447280474531156854

`4^A002262(n)+4^A003056(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055236

/-- `4^A002262(n)+4^A003056(n)` -/
def P17447280474531156854.Spec : Prop :=
  ∀ n, P17447280474531156854.a n = (A055236 n : ℚ)

end A055236

/-! ## A055236.P7107596584994335949

`A059268(n)²+A137688(n)²`
-/

namespace A055236.P7107596584994335949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 + A137688 n ^ 2

end

end A055236.P7107596584994335949

namespace A055236

/-- `A059268(n)²+A137688(n)²` -/
def P7107596584994335949.Spec : Prop :=
  ∀ n, P7107596584994335949.a n = A055236 n

end A055236

/-! ## A055236.P15731400228293628207

`(A262616(n)+1)*A059268(n)²`
-/

namespace A055236.P15731400228293628207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262616 n + 1) * A059268 n ^ 2

end

end A055236.P15731400228293628207

namespace A055236

/-- `(A262616(n)+1)*A059268(n)²` -/
def P15731400228293628207.Spec : Prop :=
  ∀ n, P15731400228293628207.a n = A055236 n

end A055236

/-! ## A055236.P63467098864231968

`A000079(A003056(n))²+A059268(n)²`
-/

namespace A055236.P63467098864231968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat ^ 2 + A059268 n ^ 2

end

end A055236.P63467098864231968

namespace A055236

/-- `A000079(A003056(n))²+A059268(n)²` -/
def P63467098864231968.Spec : Prop :=
  ∀ n, P63467098864231968.a n = A055236 n

end A055236

/-! ## A055236.P7780770335634904097

`A173786(n)²-A059268(n)*A140513(n)`
-/

namespace A055236.P7780770335634904097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n ^ 2 - A059268 n * A140513 n

end

end A055236.P7780770335634904097

namespace A055236

/-- `A173786(n)²-A059268(n)*A140513(n)` -/
def P7780770335634904097.Spec : Prop :=
  ∀ n, P7780770335634904097.a n = A055236 n

end A055236

/-! ## A055236.P9034776657688388245

`A011782(A002024(n+1))²+A059268(n)²`
-/

namespace A055236.P9034776657688388245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002024 (n + 1)).toNat ^ 2 + A059268 n ^ 2

end

end A055236.P9034776657688388245

namespace A055236

/-- `A011782(A002024(n+1))²+A059268(n)²` -/
def P9034776657688388245.Spec : Prop :=
  ∀ n, P9034776657688388245.a n = A055236 n

end A055236

/-! ## A055236.P7601795227432033499

`A000302(A002262(n))+A000302(A003056(n))`
-/

namespace A055236.P7601795227432033499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A002262 n).toNat + A000302 (A003056 n).toNat

end

end A055236.P7601795227432033499

namespace A055236

/-- `A000302(A002262(n))+A000302(A003056(n))` -/
def P7601795227432033499.Spec : Prop :=
  ∀ n, P7601795227432033499.a n = A055236 n

end A055236

/-! ## A055236.P4550933669623279645

`A123344(A158405(n+1))+A123344(A131507(n))`
-/

namespace A055236.P4550933669623279645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A158405 (n + 1)).toNat + A123344 (A131507 n).toNat

end

end A055236.P4550933669623279645

namespace A055236

/-- `A123344(A158405(n+1))+A123344(A131507(n))` -/
def P4550933669623279645.Spec : Prop :=
  ∀ n, P4550933669623279645.a n = A055236 n

end A055236

/-! ## A055236.P6933605098321188318

`(A262616(n)+1)*A262616(A061579(n))`
-/

namespace A055236.P6933605098321188318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262616 n + 1) * A262616 (A061579 n).toNat

end

end A055236.P6933605098321188318

namespace A055236

/-- `(A262616(n)+1)*A262616(A061579(n))` -/
def P6933605098321188318.Spec : Prop :=
  ∀ n, P6933605098321188318.a n = A055236 n

end A055236

/-! ## A055236.P9804975793813537576

`ceil(3/2*A078971(n+2))`
-/

namespace A055236.P9804975793813537576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (A078971 (n + 2) : ℚ)⌉

end

end A055236.P9804975793813537576

namespace A055236

/-- `ceil(3/2*A078971(n+2))` -/
def P9804975793813537576.Spec : Prop :=
  ∀ n, P9804975793813537576.a n = A055236 n

end A055236

/-! ## A055236.P534435220327551240

`record[A226806(n+1)/gcd(99, A226806(n+1))]`
-/

namespace A055236.P534435220327551240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226806 (n + 1) : ℚ) / (Int.gcd 99 (A226806 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055236.P534435220327551240

namespace A055236

/-- `record[A226806(n+1)/gcd(99, A226806(n+1))]` -/
def P534435220327551240.Spec : Prop :=
  ∀ n, P534435220327551240.a n = (A055236 n : ℚ)

end A055236

/-! ## A055236.P10100020266304780209

`(A262616(n)+1)*A262616(A286147(n))`
-/

namespace A055236.P10100020266304780209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262616 n + 1) * A262616 (A286147 n).toNat

end

end A055236.P10100020266304780209

namespace A055236

/-- `(A262616(n)+1)*A262616(A286147(n))` -/
def P10100020266304780209.Spec : Prop :=
  ∀ n, P10100020266304780209.a n = A055236 n

end A055236

/-! ## A055236.P18338586335340144794

`A048645(A185868(n+1)+1)`
-/

namespace A055236.P18338586335340144794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A185868 (n + 1) + 1).toNat

end

end A055236.P18338586335340144794

namespace A055236

/-- `A048645(A185868(n+1)+1)` -/
def P18338586335340144794.Spec : Prop :=
  ∀ n, P18338586335340144794.a n = A055236 n

end A055236

/-! ## A055236.P100776642049698873

`A048645(A003056(n)²+2*(n+1))`
-/

namespace A055236.P100776642049698873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A003056 n ^ 2 + (2 * (n + 1) : ℤ)).toNat

end

end A055236.P100776642049698873

namespace A055236

/-- `A048645(A003056(n)²+2*(n+1))` -/
def P100776642049698873.Spec : Prop :=
  ∀ n, P100776642049698873.a n = A055236 n

end A055236

/-! ## A055236.P10307366096077931854

`A173786(A185869(n+1))/2`
-/

namespace A055236.P10307366096077931854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173786 (A185869 (n + 1)).toNat : ℚ) / 2

end

end A055236.P10307366096077931854

namespace A055236

/-- `A173786(A185869(n+1))/2` -/
def P10307366096077931854.Spec : Prop :=
  ∀ n, P10307366096077931854.a n = (A055236 n : ℚ)

end A055236

/-! ## A055236.P10616792411843376251

`A098503(A057944(n))²+A059268(n)²`
-/

namespace A055236.P10616792411843376251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098503 (A057944 n).toNat ^ 2 + A059268 n ^ 2

end

end A055236.P10616792411843376251

namespace A055236

/-- `A098503(A057944(n))²+A059268(n)²` -/
def P10616792411843376251.Spec : Prop :=
  ∀ n, P10616792411843376251.a n = A055236 n

end A055236

/-! ## A055236.P14345631889691053530

`∩[A191203(n+1), A226806(n+1)]`
-/

namespace A055236.P14345631889691053530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055236.P14345631889691053530

namespace A055236

/-- `∩[A191203(n+1), A226806(n+1)]` -/
def P14345631889691053530.Spec : Prop :=
  ∀ n, (P14345631889691053530.a n : ℤ) = A055236 n

end A055236

/-! ## A055236.P1919780264114257560

`A055378(eq[4, A002262(n)])`
-/

namespace A055236.P1919780264114257560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055236.P1919780264114257560

namespace A055236

/-- `A055378(eq[4, A002262(n)])` -/
def P1919780264114257560.Spec : Prop :=
  ∀ n, P1919780264114257560.a n = A055236 n

end A055236

/-! ## A055236.P15417337699324589914

`A059268(n)²+A000010(A140513(n))²`
-/

namespace A055236.P15417337699324589914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 + A000010 (A140513 n).toNat ^ 2

end

end A055236.P15417337699324589914

namespace A055236

/-- `A059268(n)²+A000010(A140513(n))²` -/
def P15417337699324589914.Spec : Prop :=
  ∀ n, P15417337699324589914.a n = A055236 n

end A055236

/-!
# A055237: Sums of two powers of 5.

The programs for A055237, the canonical program `A055237.P7118855710974747732` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055237 has offset 0).

The definition of A055237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055237.P7118855710974747732

`5^A002262(n)+5^A003056(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055237

/-- `5^A002262(n)+5^A003056(n)` -/
def P7118855710974747732.Spec : Prop :=
  ∀ n, P7118855710974747732.a n = (A055237 n : ℚ)

end A055237

/-! ## A055237.P6869444792315973540

`2*A073217(n+1)`
-/

namespace A055237.P6869444792315973540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073217 (n + 1)

end

end A055237.P6869444792315973540

namespace A055237

/-- `2*A073217(n+1)` -/
def P6869444792315973540.Spec : Prop :=
  ∀ n, P6869444792315973540.a n = A055237 n

end A055237

/-! ## A055237.P12040073211821052918

`A000351(A002262(n))+A000351(A003056(n))`
-/

namespace A055237.P12040073211821052918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat + A000351 (A003056 n).toNat

end

end A055237.P12040073211821052918

namespace A055237

/-- `A000351(A002262(n))+A000351(A003056(n))` -/
def P12040073211821052918.Spec : Prop :=
  ∀ n, P12040073211821052918.a n = A055237 n

end A055237

/-! ## A055237.P14542505642266061201

`A038243(A057944(n))+A000351(A002262(n))`
-/

namespace A055237.P14542505642266061201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A057944 n).toNat + A000351 (A002262 n).toNat

end

end A055237.P14542505642266061201

namespace A055237

/-- `A038243(A057944(n))+A000351(A002262(n))` -/
def P14542505642266061201.Spec : Prop :=
  ∀ n, P14542505642266061201.a n = A055237 n

end A055237

/-! ## A055237.P8131009864230254946

`A000351(A002262(n))+Δ[A259669(n)]`
-/

namespace A055237.P8131009864230254946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat + (f1 (n + 1) - f1 n)

end

end A055237.P8131009864230254946

namespace A055237

/-- `A000351(A002262(n))+Δ[A259669(n)]` -/
def P8131009864230254946.Spec : Prop :=
  ∀ n, P8131009864230254946.a n = A055237 n

end A055237

/-! ## A055237.P12704087472849644489

`A000351(A002260(n+1)-1)+Δ[A259669(n)]`
-/

namespace A055237.P12704087472849644489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002260 (n + 1) - 1).toNat + (f1 (n + 1) - f1 n)

end

end A055237.P12704087472849644489

namespace A055237

/-- `A000351(A002260(n+1)-1)+Δ[A259669(n)]` -/
def P12704087472849644489.Spec : Prop :=
  ∀ n, P12704087472849644489.a n = A055237 n

end A055237

/-! ## A055237.P10209915953095798733

`(A038307(n)+A013621(n))/A038207(n)`
-/

namespace A055237.P10209915953095798733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038307 n + A013621 n : ℚ) / (A038207 n : ℚ)

end

end A055237.P10209915953095798733

namespace A055237

/-- `(A038307(n)+A013621(n))/A038207(n)` -/
def P10209915953095798733.Spec : Prop :=
  ∀ n, P10209915953095798733.a n = (A055237 n : ℚ)

end A055237

/-! ## A055237.P6694181060076802394

`A032532(A059268(n))+Δ[A259669(n)]`
-/

namespace A055237.P6694181060076802394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A059268 n).toNat + (f1 (n + 1) - f1 n)

end

end A055237.P6694181060076802394

namespace A055237

/-- `A032532(A059268(n))+Δ[A259669(n)]` -/
def P6694181060076802394.Spec : Prop :=
  ∀ n, P6694181060076802394.a n = A055237 n

end A055237

/-! ## A055237.P14371137670717628984

`A032532(A059268(n))+A000351(A003056(n))`
-/

namespace A055237.P14371137670717628984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A059268 n).toNat + A000351 (A003056 n).toNat

end

end A055237.P14371137670717628984

namespace A055237

/-- `A032532(A059268(n))+A000351(A003056(n))` -/
def P14371137670717628984.Spec : Prop :=
  ∀ n, P14371137670717628984.a n = A055237 n

end A055237

/-! ## A055237.P7973458094094783669

`A038243(A057944(n))+A032532(A059268(n))`
-/

namespace A055237.P7973458094094783669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A057944 n).toNat + A032532 (A059268 n).toNat

end

end A055237.P7973458094094783669

namespace A055237

/-- `A038243(A057944(n))+A032532(A059268(n))` -/
def P7973458094094783669.Spec : Prop :=
  ∀ n, P7973458094094783669.a n = A055237 n

end A055237

/-! ## A055237.P8699530368842465779

`A032532(A137688(n))+A000351(A002262(n))`
-/

namespace A055237.P8699530368842465779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A137688 n).toNat + A000351 (A002262 n).toNat

end

end A055237.P8699530368842465779

namespace A055237

/-- `A032532(A137688(n))+A000351(A002262(n))` -/
def P8699530368842465779.Spec : Prop :=
  ∀ n, P8699530368842465779.a n = A055237 n

end A055237

/-! ## A055237.P17935231605100687698

`A032532(A059268(n))+A032532(A137688(n))`
-/

namespace A055237.P17935231605100687698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A059268 n).toNat + A032532 (A137688 n).toNat

end

end A055237.P17935231605100687698

namespace A055237

/-- `A032532(A059268(n))+A032532(A137688(n))` -/
def P17935231605100687698.Spec : Prop :=
  ∀ n, P17935231605100687698.a n = A055237 n

end A055237

/-!
# A055238: Numbers that are divisible by at least one of their digits in every base.

The programs for A055238, there is no canonical definition to state claims against.
-/

/-! ## A055238.P10876999095436993876

`eq[0, A055240(n+1)]+1`
-/

namespace A055238.P10876999095436993876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055238.P10876999095436993876

/-! ## A055238.P13742489260964162488

`eq[0, A055241(n+1)]+1`
-/

namespace A055238.P13742489260964162488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055238.P13742489260964162488

/-! ## A055238.P12339434077572352822

`eq[0, A055242(n+1)]+1`
-/

namespace A055238.P12339434077572352822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055238.P12339434077572352822

/-! ## A055238.P6041788544525264915

`lt[A055242(n+1), A070939(n)]+1`
-/

namespace A055238.P6041788544525264915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055238.P6041788544525264915

/-! ## A055238.P13296133399640046878

`lt[A055241(n+1), A136758(n)]+1`
-/

namespace A055238.P13296133399640046878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055238.P13296133399640046878

/-!
# A055239: Numbers which are not divisible by any of their digits in at least one base.

The programs for A055239, there is no canonical definition to state claims against.
-/

/-! ## A055239.P6953598318218647952

`lt[A213358(2*n+1), A055240(n+1)]+1`
-/

namespace A055239.P6953598318218647952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213358 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055239.P6953598318218647952

/-!
# A055240: Number of bases in which n is not divisible by any of its digits.

The programs for A055240, there is no canonical definition to state claims against.
-/

/-! ## A055240.P3893593917828892758

`A024163(A039649(n+1)%A259170(n))`
-/

namespace A055240.P3893593917828892758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024163 (Int.tmod (A039649 (n + 1)) (A259170 n)).toNat

end

end A055240.P3893593917828892758

/-! ## A055240.P14874020442273605967

`A259195(A114810(n+1)%A259170(n))`
-/

namespace A055240.P14874020442273605967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 (Int.tmod (A114810 (n + 1)) (A259170 n)).toNat

end

end A055240.P14874020442273605967

/-! ## A055240.P7066417333466830640

`A024163(A039649(n+1))%A343742(n+1)`
-/

namespace A055240.P7066417333466830640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024163 (A039649 (n + 1)).toNat) (A343742 (n + 1))

end

end A055240.P7066417333466830640

/-! ## A055240.P4558035820609306259

`A259195(A114810(n+1))%A343742(n+1)`
-/

namespace A055240.P4558035820609306259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259195 (A114810 (n + 1)).toNat) (A343742 (n + 1))

end

end A055240.P4558035820609306259

/-! ## A055240.P272744313159531653

`A024163(A039649(n+1))^A056201(n+1)²`
-/

namespace A055240.P272744313159531653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024163 (A039649 (n + 1)).toNat : ℚ) ^ (A056201 (n + 1) ^ 2 : ℤ)

end

end A055240.P272744313159531653

/-!
# A055243: First differences of A001628 (Fibonacci convolution).

The programs for A055243, the canonical program `A055243.P2744026507162298828` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055243 has offset 0).

The definition of A055243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055243.P5226136836046964335

`∑[∑[A105423(n)]]`
-/

namespace A055243.P5226136836046964335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105423 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055243.P5226136836046964335

namespace A055243

/-- `∑[∑[A105423(n)]]` -/
def P5226136836046964335.Spec : Prop :=
  ∀ n, P5226136836046964335.a n = A055243 n

end A055243

/-! ## A055243.P2744026507162298828

`A010049(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055243

/-- `A010049(n+1)+a(n-2)+a(n-1)` -/
def P2744026507162298828.Spec : Prop :=
  ∀ n, P2744026507162298828.a n = A055243 n

theorem P2744026507162298828.correct : P2744026507162298828.Spec := by
  intro n
  simp only [A055243]

end A055243

/-! ## A055243.P11025586633008347257

`A054455(n)-A010049(n)`
-/

namespace A055243.P11025586633008347257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n - A010049 n

end

end A055243.P11025586633008347257

namespace A055243

/-- `A054455(n)-A010049(n)` -/
def P11025586633008347257.Spec : Prop :=
  ∀ n, P11025586633008347257.a n = A055243 n

end A055243

/-! ## A055243.P18046049221184681077

`A054455(n)-Δ[A001629(n)]`
-/

namespace A055243.P18046049221184681077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n - (f1 (n + 1) - f1 n)

end

end A055243.P18046049221184681077

namespace A055243

/-- `A054455(n)-Δ[A001629(n)]` -/
def P18046049221184681077.Spec : Prop :=
  ∀ n, P18046049221184681077.a n = A055243 n

end A055243

/-! ## A055243.P5787391564527173489

`A006367(n)+A054455(n)-∑[A006367(n)]`
-/

namespace A055243.P5787391564527173489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n + (A054455 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055243.P5787391564527173489

namespace A055243

/-- `A006367(n)+A054455(n)-∑[A006367(n)]` -/
def P5787391564527173489.Spec : Prop :=
  ∀ n, P5787391564527173489.a n = A055243 n

end A055243

/-! ## A055243.P4042648456093199845

`A001629(n)+A054455(n)-A001629(n+1)`
-/

namespace A055243.P4042648456093199845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (A054455 n - A001629 (n + 1))

end

end A055243.P4042648456093199845

namespace A055243

/-- `A001629(n)+A054455(n)-A001629(n+1)` -/
def P4042648456093199845.Spec : Prop :=
  ∀ n, P4042648456093199845.a n = A055243 n

end A055243

/-! ## A055243.P15667156720452332852

`A370304(n)-A129707(n)`
-/

namespace A055243.P15667156720452332852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370304 n - A129707 n

end

end A055243.P15667156720452332852

namespace A055243

/-- `A370304(n)-A129707(n)` -/
def P15667156720452332852.Spec : Prop :=
  ∀ n, P15667156720452332852.a n = A055243 n

end A055243

/-! ## A055243.P10431172284673387257

`A001628(n)-(A129707(n)+A001629(n+1))`
-/

namespace A055243.P10431172284673387257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n - (A129707 n + A001629 (n + 1))

end

end A055243.P10431172284673387257

namespace A055243

/-- `A001628(n)-(A129707(n)+A001629(n+1))` -/
def P10431172284673387257.Spec : Prop :=
  ∀ n, P10431172284673387257.a n = A055243 n

end A055243

/-! ## A055243.P1881390094171392008

`A010049(n+1)+A129707(n+1)-A129707(n)`
-/

namespace A055243.P1881390094171392008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + (A129707 (n + 1) - A129707 n)

end

end A055243.P1881390094171392008

namespace A055243

/-- `A010049(n+1)+A129707(n+1)-A129707(n)` -/
def P1881390094171392008.Spec : Prop :=
  ∀ n, P1881390094171392008.a n = A055243 n

end A055243

/-! ## A055243.P12731534566952416807

`A001628(n+1)+A001628(n)-A067988(n+1)`
-/

namespace A055243.P12731534566952416807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 1) + (A001628 n - A067988 (n + 1))

end

end A055243.P12731534566952416807

namespace A055243

/-- `A001628(n+1)+A001628(n)-A067988(n+1)` -/
def P12731534566952416807.Spec : Prop :=
  ∀ n, P12731534566952416807.a n = A055243 n

end A055243

/-! ## A055243.P8262575611208406317

`∑[∑[3/(n+3)*A006492(n+3)]]`
-/

namespace A055243.P8262575611208406317
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A006492 (n + 3) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055243.P8262575611208406317

namespace A055243

/-- `∑[∑[3/(n+3)*A006492(n+3)]]` -/
def P8262575611208406317.Spec : Prop :=
  ∀ n, P8262575611208406317.a n = (A055243 n : ℚ)

end A055243

/-! ## A055243.P44164252027003903

`((5*n²+37*n+50)*A000045(n+1)+4*(n+1)*A000045(n))/50`
-/

namespace A055243.P44164252027003903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n ^ 2 + 37 * n + 50 : ℤ) * A000045 (n + 1) + 4 * ((n + 1 : ℤ) * A000045 n) : ℚ) / 50

end

end A055243.P44164252027003903

namespace A055243

/-- `((5*n²+37*n+50)*A000045(n+1)+4*(n+1)*A000045(n))/50` -/
def P44164252027003903.Spec : Prop :=
  ∀ n, P44164252027003903.a n = (A055243 n : ℚ)

end A055243

/-! ## A055243.P12454111920215562522

`A076791(∑[n+2]+4)`
-/

namespace A055243.P12454111920215562522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076791 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A055243.P12454111920215562522

namespace A055243

/-- `A076791(∑[n+2]+4)` -/
def P12454111920215562522.Spec : Prop :=
  ∀ n, P12454111920215562522.a n = A055243 n

end A055243

/-! ## A055243.P1428290215479250874

`A242593(A167614(n+1)+1)/2`
-/

namespace A055243.P1428290215479250874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242593 (A167614 (n + 1) + 1).toNat : ℚ) / 2

end

end A055243.P1428290215479250874

namespace A055243

/-- `A242593(A167614(n+1)+1)/2` -/
def P1428290215479250874.Spec : Prop :=
  ∀ n, P1428290215479250874.a n = (A055243 n : ℚ)

end A055243

/-! ## A055243.P3566664565989292421

`A210034(∑[n+2]+4)`
-/

namespace A055243.P3566664565989292421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210034 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A055243.P3566664565989292421

namespace A055243

/-- `A210034(∑[n+2]+4)` -/
def P3566664565989292421.Spec : Prop :=
  ∀ n, P3566664565989292421.a n = A055243 n

end A055243

/-! ## A055243.P15662365431545176981

`∑[∑[A105422(A027379(n)+5)]]`
-/

namespace A055243.P15662365431545176981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A027379 n + 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055243.P15662365431545176981

namespace A055243

/-- `∑[∑[A105422(A027379(n)+5)]]` -/
def P15662365431545176981.Spec : Prop :=
  ∀ n, P15662365431545176981.a n = A055243 n

end A055243

/-! ## A055243.P13948605031918172190

`A208343((n+3)²-∑[n+1])`
-/

namespace A055243.P13948605031918172190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208343 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055243.P13948605031918172190

namespace A055243

/-- `A208343((n+3)²-∑[n+1])` -/
def P13948605031918172190.Spec : Prop :=
  ∀ n, P13948605031918172190.a n = A055243 n

end A055243

/-!
# A055244: Number of certain stackings of n+1 squares on a double staircase.

The programs for A055244, the canonical program `A055244.P12033578331002571997` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055244 has offset 0).

The definition of A055244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055244.P13342902862317253801

`ogf((1-x+x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A055244.P13342902862317253801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -2, -1, 2, 1] n

end

end A055244.P13342902862317253801

namespace A055244

/-- `ogf((1-x+x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P13342902862317253801.Spec : Prop :=
  ∀ n, P13342902862317253801.a n = A055244 n

end A055244

/-! ## A055244.P12033578331002571997

`A239342(n)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055244

/-- `A239342(n)+a(n-1)` -/
def P12033578331002571997.Spec : Prop :=
  ∀ n, P12033578331002571997.a n = A055244 n

theorem P12033578331002571997.correct : P12033578331002571997.Spec := by
  intro n
  simp only [A055244]

end A055244

/-! ## A055244.P13956718690953255120

`a(n-1)+A000045(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A055244.P13956718690953255120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A000045 n + a (n - 2))

end

end A055244.P13956718690953255120

namespace A055244

/-- `a(n-1)+A000045(n)+a(n-2)` -/
def P13956718690953255120.Spec : Prop :=
  ∀ n, P13956718690953255120.a n = A055244 n

end A055244

/-! ## A055244.P18433350980480008891

`A006478(n)+A001595(n)`
-/

namespace A055244.P18433350980480008891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + A001595 n

end

end A055244.P18433350980480008891

namespace A055244

/-- `A006478(n)+A001595(n)` -/
def P18433350980480008891.Spec : Prop :=
  ∀ n, P18433350980480008891.a n = A055244 n

end A055244

/-! ## A055244.P4014522278831553680

`A208354(n)+A001629(n)`
-/

namespace A055244.P4014522278831553680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + A001629 n

end

end A055244.P4014522278831553680

namespace A055244

/-- `A208354(n)+A001629(n)` -/
def P4014522278831553680.Spec : Prop :=
  ∀ n, P4014522278831553680.a n = A055244 n

end A055244

/-! ## A055244.P7523854255472555380

`A006478(n)+∑[A006355(n)]`
-/

namespace A055244.P7523854255472555380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055244.P7523854255472555380

namespace A055244

/-- `A006478(n)+∑[A006355(n)]` -/
def P7523854255472555380.Spec : Prop :=
  ∀ n, P7523854255472555380.a n = A055244 n

end A055244

/-! ## A055244.P2522156393878973338

`A212804(n)+∑[A010049(n)]`
-/

namespace A055244.P2522156393878973338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055244.P2522156393878973338

namespace A055244

/-- `A212804(n)+∑[A010049(n)]` -/
def P2522156393878973338.Spec : Prop :=
  ∀ n, P2522156393878973338.a n = A055244 n

end A055244

/-! ## A055244.P17711977655286171287

`A001629(n)+Δ[A029907(n)]`
-/

namespace A055244.P17711977655286171287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (f1 (n + 1) - f1 n)

end

end A055244.P17711977655286171287

namespace A055244

/-- `A001629(n)+Δ[A029907(n)]` -/
def P17711977655286171287.Spec : Prop :=
  ∀ n, P17711977655286171287.a n = A055244 n

end A055244

/-! ## A055244.P15287634163870132877

`∑[A208354(n)]-A000045(n)`
-/

namespace A055244.P15287634163870132877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A055244.P15287634163870132877

namespace A055244

/-- `∑[A208354(n)]-A000045(n)` -/
def P15287634163870132877.Spec : Prop :=
  ∀ n, P15287634163870132877.a n = A055244 n

end A055244

/-! ## A055244.P9321377507725309747

`A212804(n)+A001629(n+1)`
-/

namespace A055244.P9321377507725309747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A001629 (n + 1)

end

end A055244.P9321377507725309747

namespace A055244

/-- `A212804(n)+A001629(n+1)` -/
def P9321377507725309747.Spec : Prop :=
  ∀ n, P9321377507725309747.a n = A055244 n

end A055244

/-! ## A055244.P16046637299049466515

`A029907(n+1)-A000045(n)`
-/

namespace A055244.P16046637299049466515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - A000045 n

end

end A055244.P16046637299049466515

namespace A055244

/-- `A029907(n+1)-A000045(n)` -/
def P16046637299049466515.Spec : Prop :=
  ∀ n, P16046637299049466515.a n = A055244 n

end A055244

/-! ## A055244.P7129542431096758900

`A134508(n+1)-A104161(n)`
-/

namespace A055244.P7129542431096758900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134508 (n + 1) - A104161 n

end

end A055244.P7129542431096758900

namespace A055244

/-- `A134508(n+1)-A104161(n)` -/
def P7129542431096758900.Spec : Prop :=
  ∀ n, P7129542431096758900.a n = A055244 n

end A055244

/-! ## A055244.P13559534745050047813

`A136391(n+1)-A240847(n)`
-/

namespace A055244.P13559534745050047813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) - A240847 n

end

end A055244.P13559534745050047813

namespace A055244

/-- `A136391(n+1)-A240847(n)` -/
def P13559534745050047813.Spec : Prop :=
  ∀ n, P13559534745050047813.a n = A055244 n

end A055244

/-! ## A055244.P7692528486563759392

`A001629(n+1)+Δ[A000045(n)]`
-/

namespace A055244.P7692528486563759392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + (f1 (n + 1) - f1 n)

end

end A055244.P7692528486563759392

namespace A055244

/-- `A001629(n+1)+Δ[A000045(n)]` -/
def P7692528486563759392.Spec : Prop :=
  ∀ n, P7692528486563759392.a n = A055244 n

end A055244

/-! ## A055244.P15404239080782539716

`A001629(n+1)-A152163(n+1)`
-/

namespace A055244.P15404239080782539716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) - A152163 (n + 1)

end

end A055244.P15404239080782539716

namespace A055244

/-- `A001629(n+1)-A152163(n+1)` -/
def P15404239080782539716.Spec : Prop :=
  ∀ n, P15404239080782539716.a n = A055244 n

end A055244

/-! ## A055244.P5388119013913505359

`A152163(n+2)+A029907(n+1)`
-/

namespace A055244.P5388119013913505359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) + A029907 (n + 1)

end

end A055244.P5388119013913505359

namespace A055244

/-- `A152163(n+2)+A029907(n+1)` -/
def P5388119013913505359.Spec : Prop :=
  ∀ n, P5388119013913505359.a n = A055244 n

end A055244

/-! ## A055244.P17928904019267394331

`A029907(n+1)-A212804(n+1)`
-/

namespace A055244.P17928904019267394331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - A212804 (n + 1)

end

end A055244.P17928904019267394331

namespace A055244

/-- `A029907(n+1)-A212804(n+1)` -/
def P17928904019267394331.Spec : Prop :=
  ∀ n, P17928904019267394331.a n = A055244 n

end A055244

/-! ## A055244.P8559448655017654166

`A010049(n+2)-A006355(n+1)`
-/

namespace A055244.P8559448655017654166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 2) - A006355 (n + 1)

end

end A055244.P8559448655017654166

namespace A055244

/-- `A010049(n+2)-A006355(n+1)` -/
def P8559448655017654166.Spec : Prop :=
  ∀ n, P8559448655017654166.a n = A055244 n

end A055244

/-! ## A055244.P9743181958672948417

`A208354(n+2)-A000032(n+1)`
-/

namespace A055244.P9743181958672948417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 2) - A000032 (n + 1)

end

end A055244.P9743181958672948417

namespace A055244

/-- `A208354(n+2)-A000032(n+1)` -/
def P9743181958672948417.Spec : Prop :=
  ∀ n, P9743181958672948417.a n = A055244 n

end A055244

/-! ## A055244.P504508803446248516

`A239342(n+2)-A000045(n+2)`
-/

namespace A055244.P504508803446248516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (n + 2) - A000045 (n + 2)

end

end A055244.P504508803446248516

namespace A055244

/-- `A239342(n+2)-A000045(n+2)` -/
def P504508803446248516.Spec : Prop :=
  ∀ n, P504508803446248516.a n = A055244 n

end A055244

/-!
# A055245: Numerator sequence of mean length of certain stackings of n+1 squares on a double staircase.

The programs for A055245, the canonical program `A055245.P13289395210435831819` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055245 has offset 0).

The definition of A055245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055245.P13289395210435831819

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=12, a(4)=28, a(5)=61`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055245

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P13289395210435831819.Spec : Prop :=
  ∀ n, P13289395210435831819.a n = A055245 n

theorem P13289395210435831819.correct : P13289395210435831819.Spec := by
  intro n
  simp only [A055245]

end A055245

/-! ## A055245.P5341053353416818101

`((5*n²+3*n-27)*A000045(n)+(19*n+25)*A000045(n+1))/25`
-/

namespace A055245.P5341053353416818101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((5 * n ^ 2 + 3 * n : ℤ) - 27) * A000045 n + (19 * n + 25 : ℤ) * A000045 (n + 1) : ℚ) / 25

end

end A055245.P5341053353416818101

namespace A055245

/-- `((5*n²+3*n-27)*A000045(n)+(19*n+25)*A000045(n+1))/25` -/
def P5341053353416818101.Spec : Prop :=
  ∀ n, P5341053353416818101.a n = (A055245 n : ℚ)

end A055245

/-! ## A055245.P11076772043809018383

`A026819(A027313(n))-n`
-/

namespace A055245.P11076772043809018383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A027313 n).toNat - (n : ℤ)

end

end A055245.P11076772043809018383

namespace A055245

/-- `A026819(A027313(n))-n` -/
def P11076772043809018383.Spec : Prop :=
  ∀ n, P11076772043809018383.a n = A055245 n

end A055245

/-! ## A055245.P17692975034329168707

`A000006(A297945(n+1))-n`
-/

namespace A055245.P17692975034329168707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A297945 (n + 1)).toNat - (n : ℤ)

end

end A055245.P17692975034329168707

namespace A055245

/-- `A000006(A297945(n+1))-n` -/
def P17692975034329168707.Spec : Prop :=
  ∀ n, P17692975034329168707.a n = A055245 n

end A055245

/-!
# A055246: At step number k >= 1 the 2^(k-1) open intervals that are erased from [0,1] in the Cantor middle-third set construction are I(k,n) = (a(n)/3^k, (1+a(n))/3^k), n=1..2^(k-1).

The programs for A055246, the canonical program `A055246.P17023893520990019210` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055246 has offset 1).

The definition of A055246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055246.P2099461101243092071

`1+3*A005823(n+1)`
-/

namespace A055246.P2099461101243092071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 3 * A005823 (n + 1)

end

end A055246.P2099461101243092071

namespace A055246

/-- `1+3*A005823(n+1)` -/
def P2099461101243092071.Spec : Prop :=
  ∀ n, P2099461101243092071.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P17023893520990019210

`1+6*A005836(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055246

/-- `1+6*A005836(n+1)` -/
def P17023893520990019210.Spec : Prop :=
  ∀ n, P17023893520990019210.a n = A055246 (n + 1)

theorem P17023893520990019210.correct : P17023893520990019210.Spec := by
  intro n
  simp only [A055246, Nat.add_sub_cancel]

end A055246

/-! ## A055246.P11915725125403240494

`A074938(n)+A074939(n)`
-/

namespace A055246.P11915725125403240494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n + A074939 n

end

end A055246.P11915725125403240494

namespace A055246

/-- `A074938(n)+A074939(n)` -/
def P11915725125403240494.Spec : Prop :=
  ∀ n, P11915725125403240494.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P16779173709374360993

`3*(∑[and(n, -n)^log2(3)]+n)+1`
-/

namespace A055246.P16779173709374360993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) + 1

end

end A055246.P16779173709374360993

namespace A055246

/-- `3*(∑[and(n, -n)^log2(3)]+n)+1` -/
def P16779173709374360993.Spec : Prop :=
  ∀ n, P16779173709374360993.a n = (A055246 (n + 1) : ℝ)

end A055246

/-! ## A055246.P11385377323006185734

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A055246.P11385377323006185734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055246.P11385377323006185734

namespace A055246

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P11385377323006185734.Spec : Prop :=
  ∀ n, P11385377323006185734.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P16219327816130651473

`2*a(n-1)+6-a(and(n, n-1))` with `a(0)=1`
-/

namespace A055246.P16219327816130651473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (6 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A055246.P16219327816130651473

namespace A055246

/-- `2*a(n-1)+6-a(and(n, n-1))` -/
def P16219327816130651473.Spec : Prop :=
  ∀ n, P16219327816130651473.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P10302955530938748002

`2*(∑[3*a(∑[n]%n)-3]-1)-1` with `a(0)=2`
-/

namespace A055246.P10302955530938748002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1) - 1

end

end A055246.P10302955530938748002

namespace A055246

/-- `2*(∑[3*a(∑[n]%n)-3]-1)-1` -/
def P10302955530938748002.Spec : Prop :=
  ∀ n, P10302955530938748002.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P15955370981328552197

`a(n-1-and(n, n-1))+a(n-1)+5` with `a(0)=1`
-/

namespace A055246.P15955370981328552197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1) + 5

end

end A055246.P15955370981328552197

namespace A055246

/-- `a(n-1-and(n, n-1))+a(n-1)+5` -/
def P15955370981328552197.Spec : Prop :=
  ∀ n, (P15955370981328552197.a n : ℤ) = A055246 (n + 1)

end A055246

/-! ## A055246.P4248564155585370800

`A062548(n)/2`
-/

namespace A055246.P4248564155585370800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062548 n : ℚ) / 2

end

end A055246.P4248564155585370800

namespace A055246

/-- `A062548(n)/2` -/
def P4248564155585370800.Spec : Prop :=
  ∀ n, P4248564155585370800.a n = (A055246 (n + 1) : ℚ)

end A055246

/-! ## A055246.P6872173265255121591

`A190640(n+1)-1`
-/

namespace A055246.P6872173265255121591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190640 (n + 1) - 1

end

end A055246.P6872173265255121591

namespace A055246

/-- `A190640(n+1)-1` -/
def P6872173265255121591.Spec : Prop :=
  ∀ n, P6872173265255121591.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P6335983351723782655

`1+2*A081601(n+1)`
-/

namespace A055246.P6335983351723782655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A081601 (n + 1)

end

end A055246.P6335983351723782655

namespace A055246

/-- `1+2*A081601(n+1)` -/
def P6335983351723782655.Spec : Prop :=
  ∀ n, P6335983351723782655.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P5963100003569225699

`2*A191107(n+1)-1`
-/

namespace A055246.P5963100003569225699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191107 (n + 1) - 1

end

end A055246.P5963100003569225699

namespace A055246

/-- `2*A191107(n+1)-1` -/
def P5963100003569225699.Spec : Prop :=
  ∀ n, P5963100003569225699.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P2233639990446848975

`2*A356426(n+1)-3`
-/

namespace A055246.P2233639990446848975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356426 (n + 1) - 3

end

end A055246.P2233639990446848975

namespace A055246

/-- `2*A356426(n+1)-3` -/
def P2233639990446848975.Spec : Prop :=
  ∀ n, P2233639990446848975.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P17338637869435788692

`6*A003278(n+1)-5`
-/

namespace A055246.P17338637869435788692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A003278 (n + 1) - 5

end

end A055246.P17338637869435788692

namespace A055246

/-- `6*A003278(n+1)-5` -/
def P17338637869435788692.Spec : Prop :=
  ∀ n, P17338637869435788692.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P1921257382743214160

`∑[A061393(2*n)]+2*n`
-/

namespace A055246.P1921257382743214160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A055246.P1921257382743214160

namespace A055246

/-- `∑[A061393(2*n)]+2*n` -/
def P1921257382743214160.Spec : Prop :=
  ∀ n, P1921257382743214160.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P10744025801761307028

`A106400(n)+2*A074939(n)`
-/

namespace A055246.P10744025801761307028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n + 2 * A074939 n

end

end A055246.P10744025801761307028

namespace A055246

/-- `A106400(n)+2*A074939(n)` -/
def P10744025801761307028.Spec : Prop :=
  ∀ n, P10744025801761307028.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P1540980873305545921

`2*A074938(n)-A106400(n)`
-/

namespace A055246.P1540980873305545921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074938 n - A106400 n

end

end A055246.P1540980873305545921

namespace A055246

/-- `2*A074938(n)-A106400(n)` -/
def P1540980873305545921.Spec : Prop :=
  ∀ n, P1540980873305545921.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P12517362377370299409

`A191108(n+1)+A005823(n+1)`
-/

namespace A055246.P12517362377370299409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191108 (n + 1) + A005823 (n + 1)

end

end A055246.P12517362377370299409

namespace A055246

/-- `A191108(n+1)+A005823(n+1)` -/
def P12517362377370299409.Spec : Prop :=
  ∀ n, P12517362377370299409.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P14934669270334258588

`A191107(n+1)+A081601(n+1)`
-/

namespace A055246.P14934669270334258588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) + A081601 (n + 1)

end

end A055246.P14934669270334258588

namespace A055246

/-- `A191107(n+1)+A081601(n+1)` -/
def P14934669270334258588.Spec : Prop :=
  ∀ n, P14934669270334258588.a n = A055246 (n + 1)

end A055246

/-! ## A055246.P7408371385243436342

`A005823(n+1)+A191106(n+1)+A005823(n+1)`
-/

namespace A055246.P7408371385243436342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) + (A191106 (n + 1) + A005823 (n + 1))

end

end A055246.P7408371385243436342

namespace A055246

/-- `A005823(n+1)+A191106(n+1)+A005823(n+1)` -/
def P7408371385243436342.Spec : Prop :=
  ∀ n, P7408371385243436342.a n = A055246 (n + 1)

end A055246

/-!
# A055247: Related to A055246 and A005836. Used for boundaries of open intervals which have to be erased in the Cantor middle third set construction.

The programs for A055247, the canonical program `A055247.P14350244636549246554` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055247 has offset 1).

The definition of A055247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055247.P14350244636549246554

`3^ceil(log2(n+1))-a(2^ceil(log2(n+1))+1-(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055247

/-- `3^ceil(log2(n+1))-a(2^ceil(log2(n+1))+1-(n+1)-1)` -/
def P14350244636549246554.Spec : Prop :=
  ∀ n, P14350244636549246554.a n = (A055247 (n + 1) : ℚ)

end A055247

/-! ## A055247.P2599799336083479840

`∑[and(n, -n)^log2(3)]+or(1, n)`
-/

namespace A055247.P2599799336083479840
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lor 1 n : ℝ)

end

end A055247.P2599799336083479840

namespace A055247

/-- `∑[and(n, -n)^log2(3)]+or(1, n)` -/
def P2599799336083479840.Spec : Prop :=
  ∀ n, P2599799336083479840.a n = (A055247 (n + 1) : ℝ)

end A055247

/-! ## A055247.P7702683596125082407

`char[2*n]+∑[and(n, -n)^log2(3)]+n`
-/

namespace A055247.P7702683596125082407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℝ))

end

end A055247.P7702683596125082407

namespace A055247

/-- `char[2*n]+∑[and(n, -n)^log2(3)]+n` -/
def P7702683596125082407.Spec : Prop :=
  ∀ n, P7702683596125082407.a n = (A055247 (n + 1) : ℝ)

end A055247

/-! ## A055247.P9903405339289331421

`∑[3*a(floor(n/2))-a(n-1)]-n%2` with `a(0)=1`
-/

namespace A055247.P9903405339289331421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 2 : ℕ) : ℤ)

end

end A055247.P9903405339289331421

namespace A055247

/-- `∑[3*a(floor(n/2))-a(n-1)]-n%2` -/
def P9903405339289331421.Spec : Prop :=
  ∀ n, P9903405339289331421.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P12975826041543236220

`∑[A061393(n)]-and(1, n)`
-/

namespace A055247.P12975826041543236220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ)

end

end A055247.P12975826041543236220

namespace A055247

/-- `∑[A061393(n)]-and(1, n)` -/
def P12975826041543236220.Spec : Prop :=
  ∀ n, P12975826041543236220.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P13116064845417287789

`A191106(n+1)-n%2`
-/

namespace A055247.P13116064845417287789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A055247.P13116064845417287789

namespace A055247

/-- `A191106(n+1)-n%2` -/
def P13116064845417287789.Spec : Prop :=
  ∀ n, P13116064845417287789.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P12496358262848141755

`A005823(n+1)+log2(gcd(2, n))`
-/

namespace A055247.P12496358262848141755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005823 (n + 1) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A055247.P12496358262848141755

namespace A055247

/-- `A005823(n+1)+log2(gcd(2, n))` -/
def P12496358262848141755.Spec : Prop :=
  ∀ n, P12496358262848141755.a n = (A055247 (n + 1) : ℝ)

end A055247

/-! ## A055247.P18097647451062491495

`and(1, n+1)+2*A005836(n+1)`
-/

namespace A055247.P18097647451062491495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) + 2 * A005836 (n + 1)

end

end A055247.P18097647451062491495

namespace A055247

/-- `and(1, n+1)+2*A005836(n+1)` -/
def P18097647451062491495.Spec : Prop :=
  ∀ n, P18097647451062491495.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P13491961497977146997

`A109613(n)+A091311(n)`
-/

namespace A055247.P13491961497977146997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A091311 n

end

end A055247.P13491961497977146997

namespace A055247

/-- `A109613(n)+A091311(n)` -/
def P13491961497977146997.Spec : Prop :=
  ∀ n, P13491961497977146997.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P2905248252886393148

`A059841(n)+A005823(n+1)`
-/

namespace A055247.P2905248252886393148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A005823 (n + 1)

end

end A055247.P2905248252886393148

namespace A055247

/-- `A059841(n)+A005823(n+1)` -/
def P2905248252886393148.Spec : Prop :=
  ∀ n, P2905248252886393148.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P6158467086902302617

`A191106(n+1)-A000035(n)`
-/

namespace A055247.P6158467086902302617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) - A000035 n

end

end A055247.P6158467086902302617

namespace A055247

/-- `A191106(n+1)-A000035(n)` -/
def P6158467086902302617.Spec : Prop :=
  ∀ n, P6158467086902302617.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P10966365185996290356

`A005823(n+1)+char[A005843(n)]`
-/

namespace A055247.P10966365185996290356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055247.P10966365185996290356

namespace A055247

/-- `A005823(n+1)+char[A005843(n)]` -/
def P10966365185996290356.Spec : Prop :=
  ∀ n, P10966365185996290356.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P4235928219553444461

`A005823(n+1)+1-A000035(n)`
-/

namespace A055247.P4235928219553444461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) + (1 - A000035 n)

end

end A055247.P4235928219553444461

namespace A055247

/-- `A005823(n+1)+1-A000035(n)` -/
def P4235928219553444461.Spec : Prop :=
  ∀ n, P4235928219553444461.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P15048004029401262676

`A356426(n+1)-A004793(n+1)`
-/

namespace A055247.P15048004029401262676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1) - A004793 (n + 1)

end

end A055247.P15048004029401262676

namespace A055247

/-- `A356426(n+1)-A004793(n+1)` -/
def P15048004029401262676.Spec : Prop :=
  ∀ n, P15048004029401262676.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P5034489433807970783

`A191107(n+1)-A186776(n+1)`
-/

namespace A055247.P5034489433807970783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - A186776 (n + 1)

end

end A055247.P5034489433807970783

namespace A055247

/-- `A191107(n+1)-A186776(n+1)` -/
def P5034489433807970783.Spec : Prop :=
  ∀ n, P5034489433807970783.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P8165199613464566936

`2*A003278(n+1)-A000034(n)`
-/

namespace A055247.P8165199613464566936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003278 (n + 1) - A000034 n

end

end A055247.P8165199613464566936

namespace A055247

/-- `2*A003278(n+1)-A000034(n)` -/
def P8165199613464566936.Spec : Prop :=
  ∀ n, P8165199613464566936.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P4817500220446845586

`∪[A055246(n+1), A190640(n+1)]`
-/

namespace A055247.P4817500220446845586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055247.P4817500220446845586

namespace A055247

/-- `∪[A055246(n+1), A190640(n+1)]` -/
def P4817500220446845586.Spec : Prop :=
  ∀ n, (P4817500220446845586.a n : ℤ) = A055247 (n + 1)

end A055247

/-! ## A055247.P4514031955231762484

`A005823(n+1)+A109613(n)-n`
-/

namespace A055247.P4514031955231762484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) + (A109613 n - (n : ℤ))

end

end A055247.P4514031955231762484

namespace A055247

/-- `A005823(n+1)+A109613(n)-n` -/
def P4514031955231762484.Spec : Prop :=
  ∀ n, P4514031955231762484.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P5787808796881329950

`2*A004793(n+1)-A000034(n)²`
-/

namespace A055247.P5787808796881329950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004793 (n + 1) - A000034 n ^ 2

end

end A055247.P5787808796881329950

namespace A055247

/-- `2*A004793(n+1)-A000034(n)²` -/
def P5787808796881329950.Spec : Prop :=
  ∀ n, P5787808796881329950.a n = A055247 (n + 1)

end A055247

/-! ## A055247.P1923831288552094071

`Δ[A110654(n)]+2*A005836(n+1)`
-/

namespace A055247.P1923831288552094071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A005836 (n + 1)

end

end A055247.P1923831288552094071

namespace A055247

/-- `Δ[A110654(n)]+2*A005836(n+1)` -/
def P1923831288552094071.Spec : Prop :=
  ∀ n, P1923831288552094071.a n = A055247 (n + 1)

end A055247

/-!
# A055248: Triangle of partial row sums of triangle A007318(n,m) (Pascal's triangle). Triangle A008949 read backwards. Riordan (1/(1-2x), x/(1-x)).

The programs for A055248, the canonical program `A055248.P3086643025084055619` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055248 has offset 0).

The definition of A055248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055248.P5977781595473819786

`abs(A103316(n))`
-/

namespace A055248.P5977781595473819786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103316 n|

end

end A055248.P5977781595473819786

namespace A055248

/-- `abs(A103316(n))` -/
def P5977781595473819786.Spec : Prop :=
  ∀ n, P5977781595473819786.a n = A055248 n

end A055248

/-! ## A055248.P17167324740701288633

`A135224(n)-A073424(n)`
-/

namespace A055248.P17167324740701288633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135224 n - A073424 n

end

end A055248.P17167324740701288633

namespace A055248

/-- `A135224(n)-A073424(n)` -/
def P17167324740701288633.Spec : Prop :=
  ∀ n, P17167324740701288633.a n = A055248 n

end A055248

/-! ## A055248.P3086643025084055619

`A140513(n)-A102363(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A055248

/-- `A140513(n)-A102363(n)` -/
def P3086643025084055619.Spec : Prop :=
  ∀ n, P3086643025084055619.a n = A055248 n

theorem P3086643025084055619.correct : P3086643025084055619.Spec := by
  intro n
  simp only [A055248]

end A055248

/-! ## A055248.P2696626114586313866

`A097807(n)*A103316(n)`
-/

namespace A055248.P2696626114586313866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A103316 n

end

end A055248.P2696626114586313866

namespace A055248

/-- `A097807(n)*A103316(n)` -/
def P2696626114586313866.Spec : Prop :=
  ∀ n, P2696626114586313866.a n = A055248 n

end A055248

/-! ## A055248.P9836072677799692998

`gcd(A000038(n), A103316(n))`
-/

namespace A055248.P9836072677799692998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103316 n)

end

end A055248.P9836072677799692998

namespace A055248

/-- `gcd(A000038(n), A103316(n))` -/
def P9836072677799692998.Spec : Prop :=
  ∀ n, (P9836072677799692998.a n : ℤ) = A055248 n

end A055248

/-! ## A055248.P17928790148869126563

`lcm(A020985(n), A103316(n))`
-/

namespace A055248.P17928790148869126563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A103316 n)

end

end A055248.P17928790148869126563

namespace A055248

/-- `lcm(A020985(n), A103316(n))` -/
def P17928790148869126563.Spec : Prop :=
  ∀ n, (P17928790148869126563.a n : ℤ) = A055248 n

end A055248

/-! ## A055248.P9098010030827320021

`A102363(n+1)-A054143(n)`
-/

namespace A055248.P9098010030827320021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) - A054143 n

end

end A055248.P9098010030827320021

namespace A055248

/-- `A102363(n+1)-A054143(n)` -/
def P9098010030827320021.Spec : Prop :=
  ∀ n, P9098010030827320021.a n = A055248 n

end A055248

/-! ## A055248.P9711775108112434838

`2*A055249(n)-A106194(n)`
-/

namespace A055248.P9711775108112434838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055249 n - A106194 n

end

end A055248.P9711775108112434838

namespace A055248

/-- `2*A055249(n)-A106194(n)` -/
def P9711775108112434838.Spec : Prop :=
  ∀ n, P9711775108112434838.a n = A055248 n

end A055248

/-! ## A055248.P4637549217326461570

`2*A091597(n)-A091598(n)`
-/

namespace A055248.P4637549217326461570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091597 n - A091598 n

end

end A055248.P4637549217326461570

namespace A055248

/-- `2*A091597(n)-A091598(n)` -/
def P4637549217326461570.Spec : Prop :=
  ∀ n, P4637549217326461570.a n = A055248 n

end A055248

/-! ## A055248.P8939570498135878685

`2*A137688(n)-A102363(n)`
-/

namespace A055248.P8939570498135878685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n - A102363 n

end

end A055248.P8939570498135878685

namespace A055248

/-- `2*A137688(n)-A102363(n)` -/
def P8939570498135878685.Spec : Prop :=
  ∀ n, P8939570498135878685.a n = A055248 n

end A055248

/-! ## A055248.P1732514360138150627

`A127718(n+1)/A002260(n+1)`
-/

namespace A055248.P1732514360138150627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127718 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A055248.P1732514360138150627

namespace A055248

/-- `A127718(n+1)/A002260(n+1)` -/
def P1732514360138150627.Spec : Prop :=
  ∀ n, P1732514360138150627.a n = (A055248 n : ℚ)

end A055248

/-! ## A055248.P15250264174464131442

`A144333(n+1)/A144328(n+1)`
-/

namespace A055248.P15250264174464131442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144333 (n + 1) : ℚ) / (A144328 (n + 1) : ℚ)

end

end A055248.P15250264174464131442

namespace A055248

/-- `A144333(n+1)/A144328(n+1)` -/
def P15250264174464131442.Spec : Prop :=
  ∀ n, P15250264174464131442.a n = (A055248 n : ℚ)

end A055248

/-! ## A055248.P16039986279452773784

`A000079(A002024(n+1))-A102363(n)`
-/

namespace A055248.P16039986279452773784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002024 (n + 1)).toNat - A102363 n

end

end A055248.P16039986279452773784

namespace A055248

/-- `A000079(A002024(n+1))-A102363(n)` -/
def P16039986279452773784.Spec : Prop :=
  ∀ n, P16039986279452773784.a n = A055248 n

end A055248

/-! ## A055248.P3306004106505244913

`2*A102363(A057944(n))-A102363(n)`
-/

namespace A055248.P3306004106505244913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 (A057944 n).toNat - A102363 n

end

end A055248.P3306004106505244913

namespace A055248

/-- `2*A102363(A057944(n))-A102363(n)` -/
def P3306004106505244913.Spec : Prop :=
  ∀ n, P3306004106505244913.a n = A055248 n

end A055248

/-! ## A055248.P15559331889045954840

`A007318(n)+A135224(n)-A132749(n)`
-/

namespace A055248.P15559331889045954840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A135224 n - A132749 n)

end

end A055248.P15559331889045954840

namespace A055248

/-- `A007318(n)+A135224(n)-A132749(n)` -/
def P15559331889045954840.Spec : Prop :=
  ∀ n, P15559331889045954840.a n = A055248 n

end A055248

/-! ## A055248.P12611182264991515635

`A102363(n)-(A054143(n)-Δ[A102363(n)])`
-/

namespace A055248.P12611182264991515635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n - (A054143 n - (f1 (n + 1) - f1 n))

end

end A055248.P12611182264991515635

namespace A055248

/-- `A102363(n)-(A054143(n)-Δ[A102363(n)])` -/
def P12611182264991515635.Spec : Prop :=
  ∀ n, P12611182264991515635.a n = A055248 n

end A055248

/-! ## A055248.P13664820066430967911

`A131052(n+1)+A119467(n)-A131047(n+1)`
-/

namespace A055248.P13664820066430967911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131052 (n + 1) + (A119467 n - A131047 (n + 1))

end

end A055248.P13664820066430967911

namespace A055248

/-- `A131052(n+1)+A119467(n)-A131047(n+1)` -/
def P13664820066430967911.Spec : Prop :=
  ∀ n, P13664820066430967911.a n = A055248 n

end A055248

/-! ## A055248.P8277028724133748806

`A008949(A061579(n))`
-/

namespace A055248.P8277028724133748806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A061579 n).toNat

end

end A055248.P8277028724133748806

namespace A055248

/-- `A008949(A061579(n))` -/
def P8277028724133748806.Spec : Prop :=
  ∀ n, P8277028724133748806.a n = A055248 n

end A055248

/-! ## A055248.P5048548076316363846

`A008949(A114327(n)+n)`
-/

namespace A055248.P5048548076316363846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A114327 n + (n : ℤ)).toNat

end

end A055248.P5048548076316363846

namespace A055248

/-- `A008949(A114327(n)+n)` -/
def P5048548076316363846.Spec : Prop :=
  ∀ n, P5048548076316363846.a n = A055248 n

end A055248

/-! ## A055248.P17566172941159500560

`A008949(A038722(n+1)-1)`
-/

namespace A055248.P17566172941159500560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A038722 (n + 1) - 1).toNat

end

end A055248.P17566172941159500560

namespace A055248

/-- `A008949(A038722(n+1)-1)` -/
def P17566172941159500560.Spec : Prop :=
  ∀ n, P17566172941159500560.a n = A055248 n

end A055248

/-!
# A055249: Triangle of partial row sums (prs) of triangle A055248 (prs of Pascal's triangle A007318).

The programs for A055249, there is no canonical definition to state claims against.
-/

/-! ## A055249.P14961448113118217866

`A193605(A061579(n))`
-/

namespace A055249.P14961448113118217866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A061579 n).toNat

end

end A055249.P14961448113118217866

/-! ## A055249.P2293395339883070953

`A193605(A114327(n)+n)`
-/

namespace A055249.P2293395339883070953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A114327 n + (n : ℤ)).toNat

end

end A055249.P2293395339883070953

/-! ## A055249.P5028458591462340570

`A193605(A038722(n+1)-1)`
-/

namespace A055249.P5028458591462340570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A038722 (n + 1) - 1).toNat

end

end A055249.P5028458591462340570

/-! ## A055249.P10134304272271695190

`A193605(A093995(n+1)-(n+1))`
-/

namespace A055249.P10134304272271695190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A055249.P10134304272271695190

/-! ## A055249.P15969271841958658484

`A193605(A057944(n)+A025581(n))`
-/

namespace A055249.P15969271841958658484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A057944 n + A025581 n).toNat

end

end A055249.P15969271841958658484

/-! ## A055249.P7323030403911717571

`A193605(A286098(n)+A099026(n))`
-/

namespace A055249.P7323030403911717571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A286098 n + A099026 n).toNat

end

end A055249.P7323030403911717571

/-! ## A055249.P6343159571059235660

`A193605(A002378(n)%A014132(n+1))`
-/

namespace A055249.P6343159571059235660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A055249.P6343159571059235660

/-! ## A055249.P2019279399015407474

`A193605(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A055249.P2019279399015407474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A055249.P2019279399015407474

/-! ## A055249.P17467922568150637355

`A193605(A038722(n+2))`
-/

namespace A055249.P17467922568150637355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A038722 (n + 2)).toNat

end

end A055249.P17467922568150637355

/-! ## A055249.P11639877932624198066

`A193605(A286099(n)-A268040(n))`
-/

namespace A055249.P11639877932624198066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A286099 n - A268040 n).toNat

end

end A055249.P11639877932624198066

/-!
# A055250: Seventh column of triangle A055249.

The programs for A055250, the canonical program `A055250.P4512233368232072474` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055250 has offset 0).

The definition of A055250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055250.P14905196174206524170

`∑[∑[∑[∑[∑[ogf(1/(1-4x+4x^2))]]]]]`
-/

namespace A055250.P14905196174206524170
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 4] n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055250.P14905196174206524170

namespace A055250

/-- `∑[∑[∑[∑[∑[ogf(1/(1-4x+4x^2))]]]]]` -/
def P14905196174206524170.Spec : Prop :=
  ∀ n, P14905196174206524170.a n = A055250 n

end A055250

/-! ## A055250.P4512233368232072474

`∑[∑[∑[∑[∑[(n+1)*2^n]]]]]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055250

/-- `∑[∑[∑[∑[∑[(n+1)*2^n]]]]]` -/
def P4512233368232072474.Spec : Prop :=
  ∀ n, (P4512233368232072474.a n : ℤ) = A055250 n

theorem P4512233368232072474.correct : P4512233368232072474.Spec := by
  intro n
  simp only [A055250]

end A055250

/-! ## A055250.P7003030365398895110

`A034009(n)+a(n-1)` with `a(0)=1`
-/

namespace A055250.P7003030365398895110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034009 n + a (n - 1)

end

end A055250.P7003030365398895110

namespace A055250

/-- `A034009(n)+a(n-1)` -/
def P7003030365398895110.Spec : Prop :=
  ∀ n, P7003030365398895110.a n = A055250 n

end A055250

/-! ## A055250.P1626816657927948510

`gcd(∑[A034009(n)], A000038(n))`
-/

namespace A055250.P1626816657927948510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A055250.P1626816657927948510

namespace A055250

/-- `gcd(∑[A034009(n)], A000038(n))` -/
def P1626816657927948510.Spec : Prop :=
  ∀ n, (P1626816657927948510.a n : ℤ) = A055250 n

end A055250

/-! ## A055250.P13474199069728486610

`lcm(∑[A034009(n)], A020985(n))`
-/

namespace A055250.P13474199069728486610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A055250.P13474199069728486610

namespace A055250

/-- `lcm(∑[A034009(n)], A020985(n))` -/
def P13474199069728486610.Spec : Prop :=
  ∀ n, (P13474199069728486610.a n : ℤ) = A055250 n

end A055250

/-! ## A055250.P15258587967361948392

`or(∑[A034009(n)], A000007(n))`
-/

namespace A055250.P15258587967361948392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A055250.P15258587967361948392

namespace A055250

/-- `or(∑[A034009(n)], A000007(n))` -/
def P15258587967361948392.Spec : Prop :=
  ∀ n, P15258587967361948392.a n = A055250 n

end A055250

/-! ## A055250.P11432264296075647235

`A008836(n+1)²*∑[A034009(n)]`
-/

namespace A055250.P11432264296075647235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055250.P11432264296075647235

namespace A055250

/-- `A008836(n+1)²*∑[A034009(n)]` -/
def P11432264296075647235.Spec : Prop :=
  ∀ n, P11432264296075647235.a n = A055250 n

end A055250

/-! ## A055250.P14238570037496090843

`A117980(A017533(n))+∑[A034009(n)]`
-/

namespace A055250.P14238570037496090843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A017533 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055250.P14238570037496090843

namespace A055250

/-- `A117980(A017533(n))+∑[A034009(n)]` -/
def P14238570037496090843.Spec : Prop :=
  ∀ n, P14238570037496090843.a n = A055250 n

end A055250

/-! ## A055250.P14081922733865804971

`A014963(A008458(n))*∑[A034009(n)]`
-/

namespace A055250.P14081922733865804971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055250.P14081922733865804971

namespace A055250

/-- `A014963(A008458(n))*∑[A034009(n)]` -/
def P14081922733865804971.Spec : Prop :=
  ∀ n, P14081922733865804971.a n = A055250 n

end A055250

/-! ## A055250.P2588694820246388713

`A055251(n+1)-(A055251(n)+A034009(n+1))`
-/

namespace A055250.P2588694820246388713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055251 (n + 1) - (A055251 n + A034009 (n + 1))

end

end A055250.P2588694820246388713

namespace A055250

/-- `A055251(n+1)-(A055251(n)+A034009(n+1))` -/
def P2588694820246388713.Spec : Prop :=
  ∀ n, P2588694820246388713.a n = A055250 n

end A055250

/-! ## A055250.P2268332005111847115

`∑[A034009(n)]%A000108(n+4)`
-/

namespace A055250.P2268332005111847115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000108 (n + 4))

end

end A055250.P2268332005111847115

namespace A055250

/-- `∑[A034009(n)]%A000108(n+4)` -/
def P2268332005111847115.Spec : Prop :=
  ∀ n, P2268332005111847115.a n = A055250 n

end A055250

/-! ## A055250.P7590839541757482125

`A007318(A000096(n))*∑[A034009(n)]`
-/

namespace A055250.P7590839541757482125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055250.P7590839541757482125

namespace A055250

/-- `A007318(A000096(n))*∑[A034009(n)]` -/
def P7590839541757482125.Spec : Prop :=
  ∀ n, P7590839541757482125.a n = A055250 n

end A055250

/-! ## A055250.P16016543290259977739

`A055249(eq[6, A002262(n)])`
-/

namespace A055250.P16016543290259977739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055250.P16016543290259977739

namespace A055250

/-- `A055249(eq[6, A002262(n)])` -/
def P16016543290259977739.Spec : Prop :=
  ∀ n, P16016543290259977739.a n = A055250 n

end A055250

/-! ## A055250.P1830082349778505820

`A055249(A000217(n+6)+6)`
-/

namespace A055250.P1830082349778505820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A000217 (n + 6) + 6).toNat

end

end A055250.P1830082349778505820

namespace A055250

/-- `A055249(A000217(n+6)+6)` -/
def P1830082349778505820.Spec : Prop :=
  ∀ n, P1830082349778505820.a n = A055250 n

end A055250

/-! ## A055250.P7856739945514537963

`A055249(A052905(n+3)+11)`
-/

namespace A055250.P7856739945514537963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A052905 (n + 3) + 11).toNat

end

end A055250.P7856739945514537963

namespace A055250

/-- `A055249(A052905(n+3)+11)` -/
def P7856739945514537963.Spec : Prop :=
  ∀ n, P7856739945514537963.a n = A055250 n

end A055250

/-! ## A055250.P4621398928926632067

`∑[A034009(n)]^(A003464(n)%2)`
-/

namespace A055250.P4621398928926632067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (Int.tmod (A003464 n) 2 : ℤ)

end

end A055250.P4621398928926632067

namespace A055250

/-- `∑[A034009(n)]^(A003464(n)%2)` -/
def P4621398928926632067.Spec : Prop :=
  ∀ n, P4621398928926632067.a n = (A055250 n : ℚ)

end A055250

/-!
# A055251: Eighth column of triangle A055249.

The programs for A055251, the canonical program `A055251.P11040850201811169118` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055251 has offset 0).

The definition of A055251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055251.P14278935653327994832

`∑[∑[∑[∑[∑[∑[ogf(1/(1-4x+4x^2))]]]]]]`
-/

namespace A055251.P14278935653327994832
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 4] n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055251.P14278935653327994832

namespace A055251

/-- `∑[∑[∑[∑[∑[∑[ogf(1/(1-4x+4x^2))]]]]]]` -/
def P14278935653327994832.Spec : Prop :=
  ∀ n, P14278935653327994832.a n = A055251 n

end A055251

/-! ## A055251.P11040850201811169118

`∑[∑[∑[∑[∑[∑[(n+1)*2^n]]]]]]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055251

/-- `∑[∑[∑[∑[∑[∑[(n+1)*2^n]]]]]]` -/
def P11040850201811169118.Spec : Prop :=
  ∀ n, (P11040850201811169118.a n : ℤ) = A055251 n

theorem P11040850201811169118.correct : P11040850201811169118.Spec := by
  intro n
  simp only [A055251]

end A055251

/-! ## A055251.P3790446377679758631

`A055250(n)+a(n-1)` with `a(0)=1`
-/

namespace A055251.P3790446377679758631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055250 n + a (n - 1)

end

end A055251.P3790446377679758631

namespace A055251

/-- `A055250(n)+a(n-1)` -/
def P3790446377679758631.Spec : Prop :=
  ∀ n, P3790446377679758631.a n = A055251 n

end A055251

/-! ## A055251.P7132355430586796220

`gcd(∑[A055250(n)], A000038(n))`
-/

namespace A055251.P7132355430586796220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A055251.P7132355430586796220

namespace A055251

/-- `gcd(∑[A055250(n)], A000038(n))` -/
def P7132355430586796220.Spec : Prop :=
  ∀ n, (P7132355430586796220.a n : ℤ) = A055251 n

end A055251

/-! ## A055251.P10244206312410926266

`∑[A055250(n)]*A158388(n+1)`
-/

namespace A055251.P10244206312410926266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A158388 (n + 1)

end

end A055251.P10244206312410926266

namespace A055251

/-- `∑[A055250(n)]*A158388(n+1)` -/
def P10244206312410926266.Spec : Prop :=
  ∀ n, P10244206312410926266.a n = A055251 n

end A055251

/-! ## A055251.P8157106653372480058

`A008836(n+1)²*∑[∑[A034009(n)]]`
-/

namespace A055251.P8157106653372480058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055251.P8157106653372480058

namespace A055251

/-- `A008836(n+1)²*∑[∑[A034009(n)]]` -/
def P8157106653372480058.Spec : Prop :=
  ∀ n, P8157106653372480058.a n = A055251 n

end A055251

/-! ## A055251.P9485981987244378460

`∑[∑[A034009(n)]]-A000212((n+2)%(n+1))`
-/

namespace A055251.P9485981987244378460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000212 ((n + 2) % (n + 1))

end

end A055251.P9485981987244378460

namespace A055251

/-- `∑[∑[A034009(n)]]-A000212((n+2)%(n+1))` -/
def P9485981987244378460.Spec : Prop :=
  ∀ n, P9485981987244378460.a n = A055251 n

end A055251

/-! ## A055251.P16342529747862793007

`∑[∑[A034009(n)]]%A205228(n+1)`
-/

namespace A055251.P16342529747862793007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A205228 (n + 1))

end

end A055251.P16342529747862793007

namespace A055251

/-- `∑[∑[A034009(n)]]%A205228(n+1)` -/
def P16342529747862793007.Spec : Prop :=
  ∀ n, P16342529747862793007.a n = A055251 n

end A055251

/-! ## A055251.P8899546750801112234

`∑[A055250(n)]%Δ[A286778(n)]`
-/

namespace A055251.P8899546750801112234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A055251.P8899546750801112234

namespace A055251

/-- `∑[A055250(n)]%Δ[A286778(n)]` -/
def P8899546750801112234.Spec : Prop :=
  ∀ n, P8899546750801112234.a n = A055251 n

end A055251

/-! ## A055251.P15312422705286267396

`A055249(A167487(n+6))`
-/

namespace A055251.P15312422705286267396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A167487 (n + 6)).toNat

end

end A055251.P15312422705286267396

namespace A055251

/-- `A055249(A167487(n+6))` -/
def P15312422705286267396.Spec : Prop :=
  ∀ n, P15312422705286267396.a n = A055251 n

end A055251

/-! ## A055251.P1338181662729104271

`A055249(eq[7, A002262(n)])`
-/

namespace A055251.P1338181662729104271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055251.P1338181662729104271

namespace A055251

/-- `A055249(eq[7, A002262(n)])` -/
def P1338181662729104271.Spec : Prop :=
  ∀ n, P1338181662729104271.a n = A055251 n

end A055251

/-! ## A055251.P16418544764683355642

`A055249(eq[8, A002260(n+1)])`
-/

namespace A055251.P16418544764683355642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055251.P16418544764683355642

namespace A055251

/-- `A055249(eq[8, A002260(n+1)])` -/
def P16418544764683355642.Spec : Prop :=
  ∀ n, P16418544764683355642.a n = A055251 n

end A055251

/-! ## A055251.P14612181213755225022

`A055249(eq[7, A004736(n+1)]+14)`
-/

namespace A055251.P14612181213755225022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 14)

end

end A055251.P14612181213755225022

namespace A055251

/-- `A055249(eq[7, A004736(n+1)]+14)` -/
def P14612181213755225022.Spec : Prop :=
  ∀ n, P14612181213755225022.a n = A055251 n

end A055251

/-! ## A055251.P6651590087715136744

`A055249(A000217(n+8)-(n+1))`
-/

namespace A055251.P6651590087715136744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A055251.P6651590087715136744

namespace A055251

/-- `A055249(A000217(n+8)-(n+1))` -/
def P6651590087715136744.Spec : Prop :=
  ∀ n, P6651590087715136744.a n = A055251 n

end A055251

/-! ## A055251.P3894152956632837930

`A055249(A000124(n+8)-(n+2))`
-/

namespace A055251.P3894152956632837930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A000124 (n + 8) - (n + 2 : ℤ)).toNat

end

end A055251.P3894152956632837930

namespace A055251

/-- `A055249(A000124(n+8)-(n+2))` -/
def P3894152956632837930.Spec : Prop :=
  ∀ n, P3894152956632837930.a n = A055251 n

end A055251

/-!
# A055252: Triangle of partial row sums (prs) of triangle A055249.

The programs for A055252, there is no canonical definition to state claims against.
-/

/-! ## A055252.P8190868629893238106

`2*A055584(n)-A375550(n)`
-/

namespace A055252.P8190868629893238106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055584 n - A375550 n

end

end A055252.P8190868629893238106

/-! ## A055252.P13541212437124452115

`A055584(n)-A055584(n+1)%A055584(n)`
-/

namespace A055252.P13541212437124452115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055584 n - Int.tmod (A055584 (n + 1)) (A055584 n)

end

end A055252.P13541212437124452115

/-!
# A055253: Number of even digits in 2^n.

The programs for A055253, there is no canonical definition to state claims against.
-/

/-! ## A055253.P14407134095691162238

`A034887(n)-A055254(n)`
-/

namespace A055253.P14407134095691162238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - A055254 n

end

end A055253.P14407134095691162238

/-! ## A055253.P2388152252638018033

`A055254(n)-A272896(n)`
-/

namespace A055253.P2388152252638018033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 n - A272896 n

end

end A055253.P2388152252638018033

/-! ## A055253.P2077728287002367401

`∑[char[A067497(n)]]-A055254(n)`
-/

namespace A055253.P2077728287002367401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A055254 n

end

end A055253.P2077728287002367401

/-! ## A055253.P16812273094926605690

`A192543(n+2)-(A125117(n)+A055254(n))`
-/

namespace A055253.P16812273094926605690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (n + 2) - (A125117 n + A055254 n)

end

end A055253.P16812273094926605690

/-! ## A055253.P858282279002148893

`∑{digits}[2^n, A056594(#²)]`
-/

namespace A055253.P858282279002148893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A056594 (x ^ 2)).sum

end

end A055253.P858282279002148893

/-! ## A055253.P5217382859756640080

`∑{digits}[2^n, 2-A000034(#)]`
-/

namespace A055253.P5217382859756640080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 - A000034 x).sum

end

end A055253.P5217382859756640080

/-! ## A055253.P13846508445145245907

`∑{digits}[2^n, A056594(#)^4]`
-/

namespace A055253.P13846508445145245907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A056594 x ^ 4).sum

end

end A055253.P13846508445145245907

/-! ## A055253.P10946296535382070227

`∑{digits}[A000079(n), A000035(#+1)]`
-/

namespace A055253.P10946296535382070227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 (x + 1)).sum

end

end A055253.P10946296535382070227

/-! ## A055253.P15321410089817075809

`∑{digits}[A000079(n), 1-A000035(#)]`
-/

namespace A055253.P15321410089817075809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000035 x).sum

end

end A055253.P15321410089817075809

/-! ## A055253.P6490693602186577342

`∑{digits}[A000079(n), 1-A196564(#)]`
-/

namespace A055253.P6490693602186577342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A196564 x).sum

end

end A055253.P6490693602186577342

/-! ## A055253.P834664271963052769

`∑{digits}[A000079(n), A014577(2*#)]`
-/

namespace A055253.P834664271963052769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014577 (2 * x)).sum

end

end A055253.P834664271963052769

/-! ## A055253.P2220123384991485226

`∑{digits}[2*a(n-1), A036370(#)]-A055254(n)` with `a(0)=1`
-/

namespace A055253.P2220123384991485226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum - A055254 n

end

end A055253.P2220123384991485226

/-! ## A055253.P8029636006244837633

`∑{digits}[A077957(2*n), A000120(A077957(#))]`
-/

namespace A055253.P8029636006244837633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 (A077957 x).toNat).sum

end

end A055253.P8029636006244837633

/-! ## A055253.P14091425904821011664

`A327440(n)+A014577(n²)-A055254(n)`
-/

namespace A055253.P14091425904821011664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 n + A014577 (n ^ 2) - A055254 n

end

end A055253.P14091425904821011664

/-!
# A055254: Number of odd digits in 2^n.

The programs for A055254, there is no canonical definition to state claims against.
-/

/-! ## A055254.P1737790136656311961

`A272896(n)+A055253(n)`
-/

namespace A055254.P1737790136656311961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272896 n + A055253 n

end

end A055254.P1737790136656311961

/-! ## A055254.P17466926769713883500

`A034887(n)-A055253(n)`
-/

namespace A055254.P17466926769713883500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - A055253 n

end

end A055254.P17466926769713883500

/-! ## A055254.P778608157242051136

`∑[char[A067497(n)]]-A055253(n)`
-/

namespace A055254.P778608157242051136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A055253 n

end

end A055254.P778608157242051136

/-! ## A055254.P13750385058175639599

`A004277(A192543(n+1))-(A192543(n+1)+A055253(n))`
-/

namespace A055254.P13750385058175639599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A192543 (n + 1)).toNat - (A192543 (n + 1) + A055253 n)

end

end A055254.P13750385058175639599

/-! ## A055254.P6346878035141333557

`A192543(n+2)-(A125117(n)+A055253(n))`
-/

namespace A055254.P6346878035141333557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (n + 2) - (A125117 n + A055253 n)

end

end A055254.P6346878035141333557

/-! ## A055254.P13787159025314184855

`∑{digits}[2^n, #%2]`
-/

namespace A055254.P13787159025314184855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum

end

end A055254.P13787159025314184855

/-! ## A055254.P330184085630363313

`∑{digits}[2^n, and(1, #)]`
-/

namespace A055254.P330184085630363313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A055254.P330184085630363313

/-! ## A055254.P823467765697653775

`∑{digits}[A000079(n), A000035(#)]`
-/

namespace A055254.P823467765697653775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A055254.P823467765697653775

/-! ## A055254.P12322112225362699320

`∑{digits}[A000079(n), A196564(#)]`
-/

namespace A055254.P12322112225362699320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A196564 x).sum

end

end A055254.P12322112225362699320

/-! ## A055254.P12451108367541094708

`∑{digits}[A020714(n), A002266(#)]`
-/

namespace A055254.P12451108367541094708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002266 x).sum

end

end A055254.P12451108367541094708

/-! ## A055254.P4160074197376053006

`A327440(n)+A014577(n²)-A055253(n)`
-/

namespace A055254.P4160074197376053006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 n + A014577 (n ^ 2) - A055253 n

end

end A055254.P4160074197376053006

/-!
# A055255: Number of even digits in 3^n.

The programs for A055255, there is no canonical definition to state claims against.
-/

/-! ## A055255.P14848746189006766130

`A034888(n)-A055256(n)`
-/

namespace A055255.P14848746189006766130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n - A055256 n

end

end A055255.P14848746189006766130

/-! ## A055255.P6882888718801268629

`∑[round(1/A060956(n))]-A055256(n)`
-/

namespace A055255.P6882888718801268629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A060956 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055256 n

end

end A055255.P6882888718801268629

/-! ## A055255.P18317962318903173211

`∑{digits}[3^n, A196563(#)]`
-/

namespace A055255.P18317962318903173211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196563 x).sum

end

end A055255.P18317962318903173211

/-! ## A055255.P7013145210080143259

`∑{digits}[3^n, A267037(#^2)]`
-/

namespace A055255.P7013145210080143259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A267037 (x ^ 2)).sum

end

end A055255.P7013145210080143259

/-! ## A055255.P10429844699983546194

`∑{digits}[3^n, A056594(#)^4]`
-/

namespace A055255.P10429844699983546194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A056594 x ^ 4).sum

end

end A055255.P10429844699983546194

/-! ## A055255.P5991570907711906192

`∑{digits}[3^n, A041943(#)%2]`
-/

namespace A055255.P5991570907711906192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A041943 x) 2).sum

end

end A055255.P5991570907711906192

/-! ## A055255.P5785649440380366730

`∑{digits}[A000244(n), A059841(#)]`
-/

namespace A055255.P5785649440380366730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 x).sum

end

end A055255.P5785649440380366730

/-! ## A055255.P17124045044437571113

`∑{digits}[A004167(n), A059841(#)]`
-/

namespace A055255.P17124045044437571113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 x).sum

end

end A055255.P17124045044437571113

/-! ## A055255.P13258465932674345359

`∑{digits}[A004167(n), A056594(#²)]`
-/

namespace A055255.P13258465932674345359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A056594 (x ^ 2)).sum

end

end A055255.P13258465932674345359

/-! ## A055255.P5496978815888596180

`∑{digits}[3^n, A206479(A000096(#)+1)]`
-/

namespace A055255.P5496978815888596180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A206479 (A000096 x + 1).toNat).sum

end

end A055255.P5496978815888596180

/-!
# A055256: Number of odd digits in 3^n.

The programs for A055256, there is no canonical definition to state claims against.
-/

/-! ## A055256.P10456192553366495780

`floor(n*log(3)/log(10))+1-A055255(n)`
-/

namespace A055256.P10456192553366495780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (3 : ℝ) / Real.log (10 : ℝ)⌋ + 1 - A055255 n

end

end A055256.P10456192553366495780

/-! ## A055256.P4433582842571179201

`A028310(A034888(n)-A055255(n))`
-/

namespace A055256.P4433582842571179201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A034888 n - A055255 n).toNat

end

end A055256.P4433582842571179201

/-! ## A055256.P3274990834353318606

`A034888(n)+A055255(n)*A057428(n)`
-/

namespace A055256.P3274990834353318606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n + A055255 n * A057428 n

end

end A055256.P3274990834353318606

/-! ## A055256.P8511145169794365431

`A034888(n)-A055255(n)%A107980(n)`
-/

namespace A055256.P8511145169794365431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n - Int.tmod (A055255 n) (A107980 n)

end

end A055256.P8511145169794365431

/-! ## A055256.P16402283551827156854

`A034888(n)-lcm(A055255(n), A087960(n))`
-/

namespace A055256.P16402283551827156854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n - (Int.lcm (A055255 n) (A087960 n) : ℤ)

end

end A055256.P16402283551827156854

/-! ## A055256.P17546832183069705191

`∑{digits}[3^n, #%2]`
-/

namespace A055256.P17546832183069705191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum

end

end A055256.P17546832183069705191

/-! ## A055256.P6488620337242463887

`∑{digits}[3^n, and(1, #)]`
-/

namespace A055256.P6488620337242463887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A055256.P6488620337242463887

/-! ## A055256.P481325054305369089

`∑{digits}[3^n, A000035(#)]`
-/

namespace A055256.P481325054305369089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000035 x).sum

end

end A055256.P481325054305369089

/-! ## A055256.P13977698029052187197

`∑{digits}[A000244(n), A059841(#+1)]`
-/

namespace A055256.P13977698029052187197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 (x + 1)).sum

end

end A055256.P13977698029052187197

/-! ## A055256.P2718784448841725876

`∑{digits}[A004167(n), A059841(#+1)]`
-/

namespace A055256.P2718784448841725876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 (x + 1)).sum

end

end A055256.P2718784448841725876

/-! ## A055256.P5997668614160799500

`∑{digits}[A000244(n), 1-A059841(#)]`
-/

namespace A055256.P5997668614160799500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A059841 x).sum

end

end A055256.P5997668614160799500

/-! ## A055256.P549811256523335927

`∑{digits}[A004167(n), 1-A059841(#)]`
-/

namespace A055256.P549811256523335927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A059841 x).sum

end

end A055256.P549811256523335927

/-! ## A055256.P13917087363921952088

`∑{digits}[3^n, A124625(A124625(#))]`
-/

namespace A055256.P13917087363921952088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A124625 (A124625 x).toNat).sum

end

end A055256.P13917087363921952088

/-!
# A055257: Sums of two powers of 6.

The programs for A055257, the canonical program `A055257.P16433225161489891658` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055257 has offset 0).

The definition of A055257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055257.P16433225161489891658

`6^A002262(n)+6^A003056(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055257

/-- `6^A002262(n)+6^A003056(n)` -/
def P16433225161489891658.Spec : Prop :=
  ∀ n, P16433225161489891658.a n = (A055257 n : ℚ)

end A055257

/-! ## A055257.P15922849140772543679

`A000400(A002262(n))+A000400(A003056(n))`
-/

namespace A055257.P15922849140772543679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A002262 n).toNat + A000400 (A003056 n).toNat

end

end A055257.P15922849140772543679

namespace A055257

/-- `A000400(A002262(n))+A000400(A003056(n))` -/
def P15922849140772543679.Spec : Prop :=
  ∀ n, P15922849140772543679.a n = A055257 n

end A055257

/-! ## A055257.P10853230011164984553

`A000400(A002260(n+1)-1)+A000400(A003056(n))`
-/

namespace A055257.P10853230011164984553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A002260 (n + 1) - 1).toNat + A000400 (A003056 n).toNat

end

end A055257.P10853230011164984553

namespace A055257

/-- `A000400(A002260(n+1)-1)+A000400(A003056(n))` -/
def P10853230011164984553.Spec : Prop :=
  ∀ n, P10853230011164984553.a n = A055257 n

end A055257

/-! ## A055257.P17769658370002587435

`A038255(A112367(n))+A000400(A003056(n))`
-/

namespace A055257.P17769658370002587435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (A112367 n).toNat + A000400 (A003056 n).toNat

end

end A055257.P17769658370002587435

namespace A055257

/-- `A038255(A112367(n))+A000400(A003056(n))` -/
def P17769658370002587435.Spec : Prop :=
  ∀ n, P17769658370002587435.a n = A055257 n

end A055257

/-! ## A055257.P11106805016274731674

`A038255(A057944(n))+A038255(A112367(n))`
-/

namespace A055257.P11106805016274731674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (A057944 n).toNat + A038255 (A112367 n).toNat

end

end A055257.P11106805016274731674

namespace A055257

/-- `A038255(A057944(n))+A038255(A112367(n))` -/
def P11106805016274731674.Spec : Prop :=
  ∀ n, P11106805016274731674.a n = A055257 n

end A055257

/-! ## A055257.P11447522822974023618

`A038259(A057944(n))+A000400(A002262(n))`
-/

namespace A055257.P11447522822974023618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038259 (A057944 n).toNat + A000400 (A002262 n).toNat

end

end A055257.P11447522822974023618

namespace A055257

/-- `A038259(A057944(n))+A000400(A002262(n))` -/
def P11447522822974023618.Spec : Prop :=
  ∀ n, P11447522822974023618.a n = A055257 n

end A055257

/-! ## A055257.P10217481156966359358

`A055378(A167614(n+5)+3)`
-/

namespace A055257.P10217481156966359358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (A167614 (n + 5) + 3).toNat

end

end A055257.P10217481156966359358

namespace A055257

/-- `A055378(A167614(n+5)+3)` -/
def P10217481156966359358.Spec : Prop :=
  ∀ n, P10217481156966359358.a n = A055257 n

end A055257

/-! ## A055257.P16659409390824927623

`A055378(A000124(n+6)+5)`
-/

namespace A055257.P16659409390824927623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (A000124 (n + 6) + 5).toNat

end

end A055257.P16659409390824927623

namespace A055257

/-- `A055378(A000124(n+6)+5)` -/
def P16659409390824927623.Spec : Prop :=
  ∀ n, P16659409390824927623.a n = A055257 n

end A055257

/-! ## A055257.P15978229437334196839

`A055378(A000217(n+6)+6)`
-/

namespace A055257.P15978229437334196839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (A000217 (n + 6) + 6).toNat

end

end A055257.P15978229437334196839

namespace A055257

/-- `A055378(A000217(n+6)+6)` -/
def P15978229437334196839.Spec : Prop :=
  ∀ n, P15978229437334196839.a n = A055257 n

end A055257

/-! ## A055257.P9486157078005627661

`A055378(A133263(n+7)-(n+3))`
-/

namespace A055257.P9486157078005627661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (A133263 (n + 7) - (n + 3 : ℤ)).toNat

end

end A055257.P9486157078005627661

namespace A055257

/-- `A055378(A133263(n+7)-(n+3))` -/
def P9486157078005627661.Spec : Prop :=
  ∀ n, P9486157078005627661.a n = A055257 n

end A055257

/-! ## A055257.P12254887936515993842

`A165827(A059268(n))+A165827(A137688(n))`
-/

namespace A055257.P12254887936515993842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (A059268 n).toNat + A165827 (A137688 n).toNat

end

end A055257.P12254887936515993842

namespace A055257

/-- `A165827(A059268(n))+A165827(A137688(n))` -/
def P12254887936515993842.Spec : Prop :=
  ∀ n, P12254887936515993842.a n = A055257 n

end A055257

/-!
# A055258: Sums of two powers of 7.

The programs for A055258, the canonical program `A055258.P16286617528214645909` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055258 has offset 0).

The definition of A055258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055258.P16286617528214645909

`7^A002262(n)+7^A003056(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055258

/-- `7^A002262(n)+7^A003056(n)` -/
def P16286617528214645909.Spec : Prop :=
  ∀ n, P16286617528214645909.a n = (A055258 n : ℚ)

end A055258

/-! ## A055258.P11228220770428783268

`2*A073218(n)`
-/

namespace A055258.P11228220770428783268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073218 n

end

end A055258.P11228220770428783268

namespace A055258

/-- `2*A073218(n)` -/
def P11228220770428783268.Spec : Prop :=
  ∀ n, P11228220770428783268.a n = A055258 n

end A055258

/-! ## A055258.P94551686156629417

`A000420(A002262(n))+A000420(A003056(n))`
-/

namespace A055258.P94551686156629417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002262 n).toNat + A000420 (A003056 n).toNat

end

end A055258.P94551686156629417

namespace A055258

/-- `A000420(A002262(n))+A000420(A003056(n))` -/
def P94551686156629417.Spec : Prop :=
  ∀ n, P94551686156629417.a n = A055258 n

end A055258

/-! ## A055258.P17445243539658256433

`A000420(A002260(n+1)-1)+A000420(A003056(n))`
-/

namespace A055258.P17445243539658256433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002260 (n + 1) - 1).toNat + A000420 (A003056 n).toNat

end

end A055258.P17445243539658256433

namespace A055258

/-- `A000420(A002260(n+1)-1)+A000420(A003056(n))` -/
def P17445243539658256433.Spec : Prop :=
  ∀ n, P17445243539658256433.a n = A055258 n

end A055258

/-! ## A055258.P4889598009960389017

`A027466(A112367(n))+A000420(A003056(n))`
-/

namespace A055258.P4889598009960389017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A112367 n).toNat + A000420 (A003056 n).toNat

end

end A055258.P4889598009960389017

namespace A055258

/-- `A027466(A112367(n))+A000420(A003056(n))` -/
def P4889598009960389017.Spec : Prop :=
  ∀ n, P4889598009960389017.a n = A055258 n

end A055258

/-! ## A055258.P3944108289741924208

`A027466(A057944(n))+A000420(A002262(n))`
-/

namespace A055258.P3944108289741924208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A057944 n).toNat + A000420 (A002262 n).toNat

end

end A055258.P3944108289741924208

namespace A055258

/-- `A027466(A057944(n))+A000420(A002262(n))` -/
def P3944108289741924208.Spec : Prop :=
  ∀ n, P3944108289741924208.a n = A055258 n

end A055258

/-! ## A055258.P4890230044807580515

`A165828(A059268(n))+A000420(A003056(n))`
-/

namespace A055258.P4890230044807580515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (A059268 n).toNat + A000420 (A003056 n).toNat

end

end A055258.P4890230044807580515

namespace A055258

/-- `A165828(A059268(n))+A000420(A003056(n))` -/
def P4890230044807580515.Spec : Prop :=
  ∀ n, P4890230044807580515.a n = A055258 n

end A055258

/-! ## A055258.P1673866948997500244

`A165828(A059268(n))+A027466(A057944(n))`
-/

namespace A055258.P1673866948997500244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (A059268 n).toNat + A027466 (A057944 n).toNat

end

end A055258.P1673866948997500244

namespace A055258

/-- `A165828(A059268(n))+A027466(A057944(n))` -/
def P1673866948997500244.Spec : Prop :=
  ∀ n, P1673866948997500244.a n = A055258 n

end A055258

/-! ## A055258.P8149101977904035942

`A165828(A137688(n))+A000420(A002262(n))`
-/

namespace A055258.P8149101977904035942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (A137688 n).toNat + A000420 (A002262 n).toNat

end

end A055258.P8149101977904035942

namespace A055258

/-- `A165828(A137688(n))+A000420(A002262(n))` -/
def P8149101977904035942.Spec : Prop :=
  ∀ n, P8149101977904035942.a n = A055258 n

end A055258

/-! ## A055258.P1038413837282666426

`A165828(A059268(n))+A165828(A137688(n))`
-/

namespace A055258.P1038413837282666426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (A059268 n).toNat + A165828 (A137688 n).toNat

end

end A055258.P1038413837282666426

namespace A055258

/-- `A165828(A059268(n))+A165828(A137688(n))` -/
def P1038413837282666426.Spec : Prop :=
  ∀ n, P1038413837282666426.a n = A055258 n

end A055258

/-!
# A055259: Sums of two powers of 8.

The programs for A055259, the canonical program `A055259.P4830454040640714648` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055259 has offset 0).

The definition of A055259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055259.P4830454040640714648

`8^A002262(n)+8^A003056(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055259

/-- `8^A002262(n)+8^A003056(n)` -/
def P4830454040640714648.Spec : Prop :=
  ∀ n, P4830454040640714648.a n = (A055259 n : ℚ)

end A055259

/-! ## A055259.P8678960387395661798

`A001018(A003056(n))+A059268(n)^3`
-/

namespace A055259.P8678960387395661798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A003056 n).toNat + A059268 n ^ 3

end

end A055259.P8678960387395661798

namespace A055259

/-- `A001018(A003056(n))+A059268(n)^3` -/
def P8678960387395661798.Spec : Prop :=
  ∀ n, P8678960387395661798.a n = A055259 n

end A055259

/-! ## A055259.P3309841534028514029

`A001018(A002262(n))+A001018(A003056(n))`
-/

namespace A055259.P3309841534028514029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A002262 n).toNat + A001018 (A003056 n).toNat

end

end A055259.P3309841534028514029

namespace A055259

/-- `A001018(A002262(n))+A001018(A003056(n))` -/
def P3309841534028514029.Spec : Prop :=
  ∀ n, P3309841534028514029.a n = A055259 n

end A055259

/-! ## A055259.P17814810741522612786

`A001018(A002260(n+1)-1)+A001018(A003056(n))`
-/

namespace A055259.P17814810741522612786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A002260 (n + 1) - 1).toNat + A001018 (A003056 n).toNat

end

end A055259.P17814810741522612786

namespace A055259

/-- `A001018(A002260(n+1)-1)+A001018(A003056(n))` -/
def P17814810741522612786.Spec : Prop :=
  ∀ n, P17814810741522612786.a n = A055259 n

end A055259

/-! ## A055259.P15501246774833864528

`A038279(A057944(n))+A001018(A002262(n))`
-/

namespace A055259.P15501246774833864528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (A057944 n).toNat + A001018 (A002262 n).toNat

end

end A055259.P15501246774833864528

namespace A055259

/-- `A038279(A057944(n))+A001018(A002262(n))` -/
def P15501246774833864528.Spec : Prop :=
  ∀ n, P15501246774833864528.a n = A055259 n

end A055259

/-! ## A055259.P9448177101638027235

`A001018(A003056(n))+A000578(A059268(n))`
-/

namespace A055259.P9448177101638027235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A003056 n).toNat + A000578 (A059268 n).toNat

end

end A055259.P9448177101638027235

namespace A055259

/-- `A001018(A003056(n))+A000578(A059268(n))` -/
def P9448177101638027235.Spec : Prop :=
  ∀ n, P9448177101638027235.a n = A055259 n

end A055259

/-! ## A055259.P3917161612143446969

`A038279(A057944(n))+A000578(A059268(n))`
-/

namespace A055259.P3917161612143446969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (A057944 n).toNat + A000578 (A059268 n).toNat

end

end A055259.P3917161612143446969

namespace A055259

/-- `A038279(A057944(n))+A000578(A059268(n))` -/
def P3917161612143446969.Spec : Prop :=
  ∀ n, P3917161612143446969.a n = A055259 n

end A055259

/-! ## A055259.P13130362069872201591

`A001018(A002262(n))+A000578(A137688(n))`
-/

namespace A055259.P13130362069872201591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A002262 n).toNat + A000578 (A137688 n).toNat

end

end A055259.P13130362069872201591

namespace A055259

/-- `A001018(A002262(n))+A000578(A137688(n))` -/
def P13130362069872201591.Spec : Prop :=
  ∀ n, P13130362069872201591.a n = A055259 n

end A055259

/-! ## A055259.P14659794794703707997

`A167303(A059268(n))+A167303(A137688(n))`
-/

namespace A055259.P14659794794703707997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167303 (A059268 n).toNat + A167303 (A137688 n).toNat

end

end A055259.P14659794794703707997

namespace A055259

/-- `A167303(A059268(n))+A167303(A137688(n))` -/
def P14659794794703707997.Spec : Prop :=
  ∀ n, P14659794794703707997.a n = A055259 n

end A055259

/-! ## A055259.P6121074797647927541

`record[A151786(2*n+1)+A151786(n+1)]`
-/

namespace A055259.P6121074797647927541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151786 (2 * n + 1) + A151786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055259.P6121074797647927541

namespace A055259

/-- `record[A151786(2*n+1)+A151786(n+1)]` -/
def P6121074797647927541.Spec : Prop :=
  ∀ n, P6121074797647927541.a n = A055259 n

end A055259

/-!
# A055260: Sums of two powers of 9.

The programs for A055260, the canonical program `A055260.P17956841710511999010` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055260 has offset 0).

The definition of A055260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055260.P17956841710511999010

`9^A002262(n)+9^A003056(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055260

/-- `9^A002262(n)+9^A003056(n)` -/
def P17956841710511999010.Spec : Prop :=
  ∀ n, P17956841710511999010.a n = (A055260 n : ℚ)

end A055260

/-! ## A055260.P2604131777955638739

`A000244(A002262(n))²+A098355(n)²`
-/

namespace A055260.P2604131777955638739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat ^ 2 + A098355 n ^ 2

end

end A055260.P2604131777955638739

namespace A055260

/-- `A000244(A002262(n))²+A098355(n)²` -/
def P2604131777955638739.Spec : Prop :=
  ∀ n, P2604131777955638739.a n = A055260 n

end A055260

/-! ## A055260.P6757398280073714791

`A055235(A003056(n)²+2*n)`
-/

namespace A055260.P6757398280073714791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (A003056 n ^ 2 + (2 * n : ℤ)).toNat

end

end A055260.P6757398280073714791

namespace A055260

/-- `A055235(A003056(n)²+2*n)` -/
def P6757398280073714791.Spec : Prop :=
  ∀ n, P6757398280073714791.a n = A055260 n

end A055260

/-! ## A055260.P10766883190933101428

`record[A055235(n)%or(4, A055235(n))]`
-/

namespace A055260.P10766883190933101428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055235 n) (Int.lor 4 (A055235 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055260.P10766883190933101428

namespace A055260

/-- `record[A055235(n)%or(4, A055235(n))]` -/
def P10766883190933101428.Spec : Prop :=
  ∀ n, P10766883190933101428.a n = A055260 n

end A055260

/-! ## A055260.P7405283431730934087

`A055235(eq[0, A099390(n+1)])`
-/

namespace A055260.P7405283431730934087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055260.P7405283431730934087

namespace A055260

/-- `A055235(eq[0, A099390(n+1)])` -/
def P7405283431730934087.Spec : Prop :=
  ∀ n, P7405283431730934087.a n = A055260 n

end A055260

/-! ## A055260.P12719501321055074582

`∩[A191286(n+1), A226827(n+1)]`
-/

namespace A055260.P12719501321055074582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055260.P12719501321055074582

namespace A055260

/-- `∩[A191286(n+1), A226827(n+1)]` -/
def P12719501321055074582.Spec : Prop :=
  ∀ n, (P12719501321055074582.a n : ℤ) = A055260 n

end A055260

/-! ## A055260.P6329724827550631277

`A003959(A059268(n))²+A098355(n)²`
-/

namespace A055260.P6329724827550631277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat ^ 2 + A098355 n ^ 2

end

end A055260.P6329724827550631277

namespace A055260

/-- `A003959(A059268(n))²+A098355(n)²` -/
def P6329724827550631277.Spec : Prop :=
  ∀ n, P6329724827550631277.a n = A055260 n

end A055260

/-!
# A055261: Sums of two powers of 16.

The programs for A055261, the canonical program `A055261.P5169350612647211692` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055261 has offset 1).

The definition of A055261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055261.P5169350612647211692

`16^A002262(n)+16^A003056(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055261

/-- `16^A002262(n)+16^A003056(n)` -/
def P5169350612647211692.Spec : Prop :=
  ∀ n, P5169350612647211692.a n = (A055261 (n + 1) : ℚ)

end A055261

/-! ## A055261.P1399867903281483845

`A055236(A185868(n+1)-1)`
-/

namespace A055261.P1399867903281483845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (A185868 (n + 1) - 1).toNat

end

end A055261.P1399867903281483845

namespace A055261

/-- `A055236(A185868(n+1)-1)` -/
def P1399867903281483845.Spec : Prop :=
  ∀ n, P1399867903281483845.a n = A055261 (n + 1)

end A055261

/-! ## A055261.P3509824611959531101

`A055236(A185869(n+1))/4`
-/

namespace A055261.P3509824611959531101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055236 (A185869 (n + 1)).toNat : ℚ) / 4

end

end A055261.P3509824611959531101

namespace A055261

/-- `A055236(A185869(n+1))/4` -/
def P3509824611959531101.Spec : Prop :=
  ∀ n, P3509824611959531101.a n = (A055261 (n + 1) : ℚ)

end A055261

/-! ## A055261.P2005390787332549139

`A055236(eq[2, dr(A055259(n))])`
-/

namespace A055261.P2005390787332549139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A055259 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A055261.P2005390787332549139

namespace A055261

/-- `A055236(eq[2, dr(A055259(n))])` -/
def P2005390787332549139.Spec : Prop :=
  ∀ n, P2005390787332549139.a n = A055261 (n + 1)

end A055261

/-! ## A055261.P5535276561909572524

`A055236(eq[0, A155998(n)])`
-/

namespace A055261.P5535276561909572524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055261.P5535276561909572524

namespace A055261

/-- `A055236(eq[0, A155998(n)])` -/
def P5535276561909572524.Spec : Prop :=
  ∀ n, P5535276561909572524.a n = A055261 (n + 1)

end A055261

/-! ## A055261.P6451669395586231862

`A055236(eq[2, dr(A073213(n))])`
-/

namespace A055261.P6451669395586231862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A073213 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A055261.P6451669395586231862

namespace A055261

/-- `A055236(eq[2, dr(A073213(n))])` -/
def P6451669395586231862.Spec : Prop :=
  ∀ n, P6451669395586231862.a n = A055261 (n + 1)

end A055261

/-! ## A055261.P4009025458827273585

`A000583(A059268(n))+A137688(n)²²`
-/

namespace A055261.P4009025458827273585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A059268 n).toNat + (A137688 n ^ 2) ^ 2

end

end A055261.P4009025458827273585

namespace A055261

/-- `A000583(A059268(n))+A137688(n)²²` -/
def P4009025458827273585.Spec : Prop :=
  ∀ n, P4009025458827273585.a n = A055261 (n + 1)

end A055261

/-! ## A055261.P13414633480006191559

`A000583(A059268(n))+A000583(A137688(n))`
-/

namespace A055261.P13414633480006191559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A059268 n).toNat + A000583 (A137688 n).toNat

end

end A055261.P13414633480006191559

namespace A055261

/-- `A000583(A059268(n))+A000583(A137688(n))` -/
def P13414633480006191559.Spec : Prop :=
  ∀ n, P13414633480006191559.a n = A055261 (n + 1)

end A055261

/-!
# A055262: n + sum of digits of a(n-1).

The programs for A055262, the canonical program `A055262.P5810071582875388114` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055262 has offset 0).

The definition of A055262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055262.P5810071582875388114

`n+A007953(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055262

/-- `n+A007953(a(n-1))` -/
def P5810071582875388114.Spec : Prop :=
  ∀ n, P5810071582875388114.a n = A055262 n

theorem P5810071582875388114.correct : P5810071582875388114.Spec := by
  intro n
  simp only [A055262]

end A055262

/-! ## A055262.P3929513742855066152

`sqrt(A118881(a(n-1)))+n` with `a(0)=0`
-/

namespace A055262.P3929513742855066152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) + (n : ℝ)

end

end A055262.P3929513742855066152

namespace A055262

/-- `sqrt(A118881(a(n-1)))+n` -/
def P3929513742855066152.Spec : Prop :=
  ∀ n, P3929513742855066152.a n = (A055262 n : ℝ)

end A055262

/-! ## A055262.P711096518702430952

`A062028(a(n-1))-a(n-1)+n` with `a(0)=0`
-/

namespace A055262.P711096518702430952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062028 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A055262.P711096518702430952

namespace A055262

/-- `A062028(a(n-1))-a(n-1)+n` -/
def P711096518702430952.Spec : Prop :=
  ∀ n, P711096518702430952.a n = A055262 n

end A055262

/-! ## A055262.P9981744975660277787

`a(n-1)-A066568(a(n-1))+n` with `a(0)=0`
-/

namespace A055262.P9981744975660277787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A066568 (a (n - 1)).toNat + (n : ℤ)

end

end A055262.P9981744975660277787

namespace A055262

/-- `a(n-1)-A066568(a(n-1))+n` -/
def P9981744975660277787.Spec : Prop :=
  ∀ n, P9981744975660277787.a n = A055262 n

end A055262

/-! ## A055262.P10410700136709851297

`A007954(a(n-1))+A062329(a(n-1))+n` with `a(0)=0`
-/

namespace A055262.P10410700136709851297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007954 (a (n - 1)).toNat + (A062329 (a (n - 1)).toNat + (n : ℤ))

end

end A055262.P10410700136709851297

namespace A055262

/-- `A007954(a(n-1))+A062329(a(n-1))+n` -/
def P10410700136709851297.Spec : Prop :=
  ∀ n, P10410700136709851297.a n = A055262 n

end A055262

/-! ## A055262.P16820495485617066846

`A055263(A025581(∑[n]-n))+n`
-/

namespace A055262.P16820495485617066846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055263 (A025581 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat + (n : ℤ)

end

end A055262.P16820495485617066846

namespace A055262

/-- `A055263(A025581(∑[n]-n))+n` -/
def P16820495485617066846.Spec : Prop :=
  ∀ n, P16820495485617066846.a n = A055262 n

end A055262

/-!
# A055263: a(n) = Sum of digits of (n + a(n-1)).

The programs for A055263, the canonical program `A055263.P15720072045721252872` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055263 has offset 0).

The definition of A055263 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055263.P15720072045721252872

`A007953(n+a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055263

/-- `A007953(n+a(n-1))` -/
def P15720072045721252872.Spec : Prop :=
  ∀ n, P15720072045721252872.a n = A055263 n

theorem P15720072045721252872.correct : P15720072045721252872.Spec := by
  intro n
  simp only [A055263]

end A055263

/-! ## A055263.P9653736740623383206

`A007953(A055262(n))`
-/

namespace A055263.P9653736740623383206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A055262 n).toNat

end

end A055263.P9653736740623383206

namespace A055263

/-- `A007953(A055262(n))` -/
def P9653736740623383206.Spec : Prop :=
  ∀ n, P9653736740623383206.a n = A055263 n

end A055263

/-! ## A055263.P13459718549829515742

`A055262(n+1)-(n+1)`
-/

namespace A055263.P13459718549829515742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055262 (n + 1) - (n + 1 : ℤ)

end

end A055263.P13459718549829515742

namespace A055263

/-- `A055262(n+1)-(n+1)` -/
def P13459718549829515742.Spec : Prop :=
  ∀ n, P13459718549829515742.a n = A055263 n

end A055263

/-! ## A055263.P17608638806249835432

`A007953(abs(char[1]-a(n-1)-n))` with `a(0)=0, a(1)=1`
-/

namespace A055263.P17608638806249835432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007953 |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1) - (n : ℤ)|.toNat

end

end A055263.P17608638806249835432

namespace A055263

/-- `A007953(abs(char[1]-a(n-1)-n))` -/
def P17608638806249835432.Spec : Prop :=
  ∀ n, P17608638806249835432.a n = A055263 n

end A055263

/-! ## A055263.P11610278495865846109

`A006370(A169805(a(n-1)+n))` with `a(0)=0`
-/

namespace A055263.P11610278495865846109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006370 (A169805 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A055263.P11610278495865846109

namespace A055263

/-- `A006370(A169805(a(n-1)+n))` -/
def P11610278495865846109.Spec : Prop :=
  ∀ n, P11610278495865846109.a n = A055263 n

end A055263

/-! ## A055263.P9489261469099635628

`A004092(5*A055262(n))`
-/

namespace A055263.P9489261469099635628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A055262 n).toNat

end

end A055263.P9489261469099635628

namespace A055263

/-- `A004092(5*A055262(n))` -/
def P9489261469099635628.Spec : Prop :=
  ∀ n, P9489261469099635628.a n = A055263 n

end A055263

/-! ## A055263.P12368620234764439056

`A062329(10*(a(n-1)+n))` with `a(0)=0, a(1)=1`
-/

namespace A055263.P12368620234764439056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A062329 (10 * (a (n - 1) + (n : ℤ))).toNat

end

end A055263.P12368620234764439056

namespace A055263

/-- `A062329(10*(a(n-1)+n))` -/
def P12368620234764439056.Spec : Prop :=
  ∀ n, P12368620234764439056.a n = A055263 n

end A055263

/-! ## A055263.P3744858023910674604

`A061762(A008592(a(n-1)+n))` with `a(0)=0`
-/

namespace A055263.P3744858023910674604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061762 (A008592 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A055263.P3744858023910674604

namespace A055263

/-- `A061762(A008592(a(n-1)+n))` -/
def P3744858023910674604.Spec : Prop :=
  ∀ n, P3744858023910674604.a n = A055263 n

end A055263

/-!
# A055264: Possible values of A055263; numbers equal to 0, 1, 3 or 6 modulo 9.

The programs for A055264, the canonical program `A055264.P2698837186740764460` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055264 has offset 0).

The definition of A055264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055264.P2698837186740764460

`a(n-4)+9` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055264

/-- `a(n-4)+9` -/
def P2698837186740764460.Spec : Prop :=
  ∀ n, (P2698837186740764460.a n : ℤ) = A055264 n

theorem P2698837186740764460.correct : P2698837186740764460.Spec := by
  intro n
  simp only [A055264]

end A055264

/-! ## A055264.P1085653786407457853

`record[n-dr(n-n²)]`
-/

namespace A055264.P1085653786407457853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot ((n : ℤ) - (n ^ 2 : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055264.P1085653786407457853

namespace A055264

/-- `record[n-dr(n-n²)]` -/
def P1085653786407457853.Spec : Prop :=
  ∀ n, P1085653786407457853.a n = A055264 n

end A055264

/-! ## A055264.P12305490895562925706

`record[n-(3-n)²%9]`
-/

namespace A055264.P12305490895562925706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((3 - (n : ℤ)) ^ 2) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055264.P12305490895562925706

namespace A055264

/-- `record[n-(3-n)²%9]` -/
def P12305490895562925706.Spec : Prop :=
  ∀ n, P12305490895562925706.a n = A055264 n

end A055264

/-! ## A055264.P10915953453952342357

`record[(n*(1-n))%9+n]`
-/

namespace A055264.P10915953453952342357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (1 - (n : ℤ))) 9 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055264.P10915953453952342357

namespace A055264

/-- `record[(n*(1-n))%9+n]` -/
def P10915953453952342357.Spec : Prop :=
  ∀ n, P10915953453952342357.a n = A055264 n

end A055264

/-! ## A055264.P6436574095092669396

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A055264.P6436574095092669396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P6436574095092669396

namespace A055264

/-- `∑[abs(a(n-4))]` -/
def P6436574095092669396.Spec : Prop :=
  ∀ n, (P6436574095092669396.a n : ℤ) = A055264 n

end A055264

/-! ## A055264.P16973380377000292619

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A055264.P16973380377000292619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P16973380377000292619

namespace A055264

/-- `∑[dr(a(n-4))]` -/
def P16973380377000292619.Spec : Prop :=
  ∀ n, (P16973380377000292619.a n : ℤ) = A055264 n

end A055264

/-! ## A055264.P15897995089027654366

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A055264.P15897995089027654366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P15897995089027654366

namespace A055264

/-- `∑[floor(a(n-4))]` -/
def P15897995089027654366.Spec : Prop :=
  ∀ n, (P15897995089027654366.a n : ℤ) = A055264 n

end A055264

/-! ## A055264.P1523093618903633269

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A055264.P1523093618903633269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P1523093618903633269

namespace A055264

/-- `∑[ceil(a(n-4))]` -/
def P1523093618903633269.Spec : Prop :=
  ∀ n, (P1523093618903633269.a n : ℤ) = A055264 n

end A055264

/-! ## A055264.P6826935131232935427

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A055264.P6826935131232935427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P6826935131232935427

namespace A055264

/-- `∑[round(a(n-4))]` -/
def P6826935131232935427.Spec : Prop :=
  ∀ n, (P6826935131232935427.a n : ℤ) = A055264 n

end A055264

/-! ## A055264.P14280530579071242168

`∑[∑[ogf((x+2x^2+3x^3+3x^4)/(1+x+x^2+x^3))]]`
-/

namespace A055264.P14280530579071242168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 3] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P14280530579071242168

namespace A055264

/-- `∑[∑[ogf((x+2x^2+3x^3+3x^4)/(1+x+x^2+x^3))]]` -/
def P14280530579071242168.Spec : Prop :=
  ∀ n, P14280530579071242168.a n = A055264 n

end A055264

/-! ## A055264.P13227304645352703722

`∑[round(log2(A000689(n)))]`
-/

namespace A055264.P13227304645352703722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A000689 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P13227304645352703722

namespace A055264

/-- `∑[round(log2(A000689(n)))]` -/
def P13227304645352703722.Spec : Prop :=
  ∀ n, P13227304645352703722.a n = A055264 n

end A055264

/-! ## A055264.P10713629554281586361

`record[A328399(n)-1+n]`
-/

namespace A055264.P10713629554281586361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055264.P10713629554281586361

namespace A055264

/-- `record[A328399(n)-1+n]` -/
def P10713629554281586361.Spec : Prop :=
  ∀ n, P10713629554281586361.a n = A055264 n

end A055264

/-! ## A055264.P10353694461393083432

`4*n-A047328(n+1)`
-/

namespace A055264.P10353694461393083432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A047328 (n + 1)

end

end A055264.P10353694461393083432

namespace A055264

/-- `4*n-A047328(n+1)` -/
def P10353694461393083432.Spec : Prop :=
  ∀ n, P10353694461393083432.a n = A055264 n

end A055264

/-! ## A055264.P4990429520954891034

`record[A046666(n+2)/2+n]`
-/

namespace A055264.P4990429520954891034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046666 (n + 2) : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055264.P4990429520954891034

namespace A055264

/-- `record[A046666(n+2)/2+n]` -/
def P4990429520954891034.Spec : Prop :=
  ∀ n, P4990429520954891034.a n = (A055264 n : ℚ)

end A055264

/-! ## A055264.P3553346417273254733

`∑[A005117(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A055264.P3553346417273254733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  A005117 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P3553346417273254733

namespace A055264

/-- `∑[A005117(a(n-4))]` -/
def P3553346417273254733.Spec : Prop :=
  ∀ n, P3553346417273254733.a n = A055264 n

end A055264

/-! ## A055264.P12168308417754176436

`∑[A006530(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A055264.P12168308417754176436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  A006530 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P12168308417754176436

namespace A055264

/-- `∑[A006530(a(n-4))]` -/
def P12168308417754176436.Spec : Prop :=
  ∀ n, P12168308417754176436.a n = A055264 n

end A055264

/-! ## A055264.P7371646333938209033

`∑[A020639(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A055264.P7371646333938209033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  A020639 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055264.P7371646333938209033

namespace A055264

/-- `∑[A020639(a(n-4))]` -/
def P7371646333938209033.Spec : Prop :=
  ∀ n, P7371646333938209033.a n = A055264 n

end A055264

/-! ## A055264.P6271193220544179663

`A214068(n)-∑[∑[n+1]+1]%2`
-/

namespace A055264.P6271193220544179663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 n - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A055264.P6271193220544179663

namespace A055264

/-- `A214068(n)-∑[∑[n+1]+1]%2` -/
def P6271193220544179663.Spec : Prop :=
  ∀ n, P6271193220544179663.a n = A055264 n

end A055264

/-! ## A055264.P13015184862654239868

`∪[A008585(n), A017173(n)]`
-/

namespace A055264.P13015184862654239868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055264.P13015184862654239868

namespace A055264

/-- `∪[A008585(n), A017173(n)]` -/
def P13015184862654239868.Spec : Prop :=
  ∀ n, (P13015184862654239868.a n : ℤ) = A055264 n

end A055264

/-! ## A055264.P8654672338272838258

`A047401(n+1)+A002265(n)`
-/

namespace A055264.P8654672338272838258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (n + 1) + A002265 n

end

end A055264.P8654672338272838258

namespace A055264

/-- `A047401(n+1)+A002265(n)` -/
def P8654672338272838258.Spec : Prop :=
  ∀ n, P8654672338272838258.a n = A055264 n

end A055264

/-!
# A055265: a(n) is the smallest positive integer not already in the sequence such that a(n)+a(n-1) is prime, starting with a(1)=1.

The programs for A055265, there is no canonical definition to state claims against.
-/

/-! ## A055265.P2581005825877418696

`A086526(n+1)/2`
-/

namespace A055265.P2581005825877418696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086526 (n + 1) : ℚ) / 2

end

end A055265.P2581005825877418696

/-! ## A055265.P14783223202464916493

`A282695(n+1)+1+n`
-/

namespace A055265.P14783223202464916493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (n + 1) + 1 + (n : ℤ)

end

end A055265.P14783223202464916493

/-! ## A055265.P6425654444244598683

`A086527(n)-a(n-1)` with `a(0)=1`
-/

namespace A055265.P6425654444244598683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086527 n - a (n - 1)

end

end A055265.P6425654444244598683

/-! ## A055265.P13077441681844821852

`A128280(n+1)-A033999(n)`
-/

namespace A055265.P13077441681844821852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) - A033999 n

end

end A055265.P13077441681844821852

/-! ## A055265.P402719054368939639

`A033999(n+1)+A128280(n+1)`
-/

namespace A055265.P402719054368939639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A128280 (n + 1)

end

end A055265.P402719054368939639

/-! ## A055265.P15047129552615119755

`A128280(n+1)-A062157(n+1)`
-/

namespace A055265.P15047129552615119755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) - A062157 (n + 1)

end

end A055265.P15047129552615119755

/-! ## A055265.P11735183365899350788

`A128280(n+1)+A128280(n)-a(n-1)` with `a(0)=1`
-/

namespace A055265.P11735183365899350788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128280 (n + 1) + A128280 n - a (n - 1)

end

end A055265.P11735183365899350788

/-! ## A055265.P16467056014715254063

`A128280(n+1)+A000040(n+1)/A273960(n+1)`
-/

namespace A055265.P16467056014715254063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128280 (n + 1) : ℚ) + (A000040 (n + 1) : ℚ) / (A273960 (n + 1) : ℚ)

end

end A055265.P16467056014715254063

/-! ## A055265.P16353909869159309839

`A014681(A128280(n+1))`
-/

namespace A055265.P16353909869159309839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A128280 (n + 1)).toNat

end

end A055265.P16353909869159309839

/-! ## A055265.P5031032889137661763

`A128280(n+1)-A009531(2*n+1)`
-/

namespace A055265.P5031032889137661763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) - A009531 (2 * n + 1)

end

end A055265.P5031032889137661763

/-! ## A055265.P2070854047530646191

`A128280(n+1)-A087960(2*n)`
-/

namespace A055265.P2070854047530646191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) - A087960 (2 * n)

end

end A055265.P2070854047530646191

/-! ## A055265.P2174485994251833807

`A128280(n+1)+1/A087960(2*n+1)`
-/

namespace A055265.P2174485994251833807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128280 (n + 1) : ℚ) + 1 / (A087960 (2 * n + 1) : ℚ)

end

end A055265.P2174485994251833807

/-! ## A055265.P3807614817962043479

`A001281(A086526(n+1))`
-/

namespace A055265.P3807614817962043479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A086526 (n + 1)).toNat

end

end A055265.P3807614817962043479

/-! ## A055265.P1792173732680895277

`A004526(A086526(n+1)+1)`
-/

namespace A055265.P1792173732680895277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086526 (n + 1) + 1).toNat

end

end A055265.P1792173732680895277

/-!
# A055266: a(n) + a(n+1) is never prime; lexicographically earliest such sequence of distinct positive integers.

The programs for A055266, there is no canonical definition to state claims against.
-/

/-! ## A055266.P11860215664165170994

`A253074(n+2)`
-/

namespace A055266.P11860215664165170994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253074 (n + 2)

end

end A055266.P11860215664165170994

/-! ## A055266.P13633493412883194262

`A249920(A249920(A249920(A249920(A249920(n+1)))))`
-/

namespace A055266.P13633493412883194262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249920 (A249920 (A249920 (A249920 (A249920 (n + 1)).toNat).toNat).toNat).toNat

end

end A055266.P13633493412883194262

/-! ## A055266.P13993860659461030150

`∑{e}[A020707(n), A253074(#)]`
-/

namespace A055266.P13993860659461030150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A253074 (Nat.factorization (f1 n).natAbs p)

end

end A055266.P13993860659461030150

/-!
# A055267: a(n) = 3*a(n-1) - a(n-2) with a(0)=1, a(1)=7.

The programs for A055267, the canonical program `A055267.P8018522581386044527` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055267 has offset 0).

The definition of A055267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A055267.P8018522581386044527`, by `A055267.P8018522581386044527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055267.P464330054563876249

`4*A001906(n)+A001906(n+1)`
-/

namespace A055267.P464330054563876249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001906 n + A001906 (n + 1)

end

end A055267.P464330054563876249

namespace A055267

/-- `4*A001906(n)+A001906(n+1)` -/
def P464330054563876249.Spec : Prop :=
  ∀ n, P464330054563876249.a n = A055267 n

end A055267

/-! ## A055267.P8018522581386044527

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055267

/-- `3*a(n-1)-a(n-2)` -/
def P8018522581386044527.Spec : Prop :=
  ∀ n, P8018522581386044527.a n = A055267 n

theorem P8018522581386044527.correct : P8018522581386044527.Spec := by
  intro n
  simp only [A055267]

end A055267

/-! ## A055267.P14949089330557117738

`ogf((1+4x)/(1-3x+x^2))`
-/

namespace A055267.P14949089330557117738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -3, 1] n

end

end A055267.P14949089330557117738

namespace A055267

/-- `ogf((1+4x)/(1-3x+x^2))` -/
def P14949089330557117738.Spec : Prop :=
  ∀ n, P14949089330557117738.a n = A055267 n

end A055267

/-! ## A055267.P5189945465233902692

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=7, a(2)=20`
-/

namespace A055267.P5189945465233902692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 20] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A055267.P5189945465233902692

namespace A055267

/-- `ceil(ϕ²*a(n-1))` -/
def P5189945465233902692.Spec : Prop :=
  ∀ n, P5189945465233902692.a n = A055267 n

end A055267

/-! ## A055267.P13734487796071419064

`record[Δ[a(n-2)-a(n-1)]]` with `a(0)=4, a(1)=5`
-/

namespace A055267.P13734487796071419064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055267.P13734487796071419064

namespace A055267

/-- `record[Δ[a(n-2)-a(n-1)]]` -/
def P13734487796071419064.Spec : Prop :=
  ∀ n, P13734487796071419064.a n = A055267 n

end A055267

/-! ## A055267.P8841427988856997576

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A055267.P8841427988856997576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A055267.P8841427988856997576

namespace A055267

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P8841427988856997576.Spec : Prop :=
  ∀ n, P8841427988856997576.a n = A055267 n

theorem P8841427988856997576.correct : P8841427988856997576.Spec := by
  intro n
  simp only [A055267, Nat.add_sub_cancel, A055267.P8841427988856997576.a, A055267.P8018522581386044527.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055267

/-! ## A055267.P9886915877021494907

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A055267.P9886915877021494907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A055267.P9886915877021494907

namespace A055267

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P9886915877021494907.Spec : Prop :=
  ∀ n, P9886915877021494907.a n = A055267 n

theorem P9886915877021494907.correct : P9886915877021494907.Spec := by
  intro n
  simp only [A055267, Nat.add_sub_cancel, A055267.P9886915877021494907.a, A055267.P8018522581386044527.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055267

/-! ## A055267.P10104440160354381088

`A022096(2*n)`
-/

namespace A055267.P10104440160354381088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 (2 * n)

end

end A055267.P10104440160354381088

namespace A055267

/-- `A022096(2*n)` -/
def P10104440160354381088.Spec : Prop :=
  ∀ n, P10104440160354381088.a n = A055267 n

end A055267

/-! ## A055267.P11700895867159446151

`A022310(2*n)+1`
-/

namespace A055267.P11700895867159446151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 (2 * n) + 1

end

end A055267.P11700895867159446151

namespace A055267

/-- `A022310(2*n)+1` -/
def P11700895867159446151.Spec : Prop :=
  ∀ n, P11700895867159446151.a n = A055267 n

end A055267

/-! ## A055267.P9112246782298617756

`A054492(n)+A001906(n)`
-/

namespace A055267.P9112246782298617756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054492 n + A001906 n

end

end A055267.P9112246782298617756

namespace A055267

/-- `A054492(n)+A001906(n)` -/
def P9112246782298617756.Spec : Prop :=
  ∀ n, P9112246782298617756.a n = A055267 n

end A055267

/-! ## A055267.P11414246600733442555

`A335807(n)-A054977(n)`
-/

namespace A055267.P11414246600733442555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335807 n - A054977 n

end

end A055267.P11414246600733442555

namespace A055267

/-- `A335807(n)-A054977(n)` -/
def P11414246600733442555.Spec : Prop :=
  ∀ n, P11414246600733442555.a n = A055267 n

end A055267

/-! ## A055267.P566775424374607676

`A201157(n+1)+A122367(n)`
-/

namespace A055267.P566775424374607676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A122367 n

end

end A055267.P566775424374607676

namespace A055267

/-- `A201157(n+1)+A122367(n)` -/
def P566775424374607676.Spec : Prop :=
  ∀ n, P566775424374607676.a n = A055267 n

end A055267

/-! ## A055267.P14432020161759198185

`A097136(n)+A188378(n)-2`
-/

namespace A055267.P14432020161759198185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + (A188378 n - 2)

end

end A055267.P14432020161759198185

namespace A055267

/-- `A097136(n)+A188378(n)-2` -/
def P14432020161759198185.Spec : Prop :=
  ∀ n, P14432020161759198185.a n = A055267 n

end A055267

/-! ## A055267.P12634457817871806522

`A022089(2*n)+A001519(n)`
-/

namespace A055267.P12634457817871806522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (2 * n) + A001519 n

end

end A055267.P12634457817871806522

namespace A055267

/-- `A022089(2*n)+A001519(n)` -/
def P12634457817871806522.Spec : Prop :=
  ∀ n, P12634457817871806522.a n = A055267 n

end A055267

/-! ## A055267.P12332019857479993155

`A054492(n)+A000045(2*n)`
-/

namespace A055267.P12332019857479993155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054492 n + A000045 (2 * n)

end

end A055267.P12332019857479993155

namespace A055267

/-- `A054492(n)+A000045(2*n)` -/
def P12332019857479993155.Spec : Prop :=
  ∀ n, P12332019857479993155.a n = A055267 n

end A055267

/-! ## A055267.P6630554509480490187

`A054486(n)+2*A001906(n)`
-/

namespace A055267.P6630554509480490187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n + 2 * A001906 n

end

end A055267.P6630554509480490187

namespace A055267

/-- `A054486(n)+2*A001906(n)` -/
def P6630554509480490187.Spec : Prop :=
  ∀ n, P6630554509480490187.a n = A055267 n

end A055267

/-! ## A055267.P16984057283609785203

`2*A002878(n)-A001519(n)`
-/

namespace A055267.P16984057283609785203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002878 n - A001519 n

end

end A055267.P16984057283609785203

namespace A055267

/-- `2*A002878(n)-A001519(n)` -/
def P16984057283609785203.Spec : Prop :=
  ∀ n, P16984057283609785203.a n = A055267 n

end A055267

/-! ## A055267.P5339318950336802294

`A022112(2*n)-A001519(n)`
-/

namespace A055267.P5339318950336802294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (2 * n) - A001519 n

end

end A055267.P5339318950336802294

namespace A055267

/-- `A022112(2*n)-A001519(n)` -/
def P5339318950336802294.Spec : Prop :=
  ∀ n, P5339318950336802294.a n = A055267 n

end A055267

/-! ## A055267.P17473223653509728445

`A025169(n)-A061084(2*n)`
-/

namespace A055267.P17473223653509728445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A061084 (2 * n)

end

end A055267.P17473223653509728445

namespace A055267

/-- `A025169(n)-A061084(2*n)` -/
def P17473223653509728445.Spec : Prop :=
  ∀ n, P17473223653509728445.a n = A055267 n

end A055267

/-! ## A055267.P14167541230319993520

`A201157(n+1)+A001519(n+1)`
-/

namespace A055267.P14167541230319993520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A001519 (n + 1)

end

end A055267.P14167541230319993520

namespace A055267

/-- `A201157(n+1)+A001519(n+1)` -/
def P14167541230319993520.Spec : Prop :=
  ∀ n, P14167541230319993520.a n = A055267 n

end A055267

/-!
# A055268: a(n) = (11*n + 4)*C(n+3, 3)/4.

The programs for A055268, the canonical program `A055268.P7030506225203019238` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055268 has offset 0).

The definition of A055268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055268.P13570501213979122300

`(11*n+4)*C(n+3, 3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055268.P13570501213979122300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 4) * Nat.choose (n + 3) 3 : ℚ) / 4

end

end A055268.P13570501213979122300

namespace A055268

/-- `(11*n+4)*C(n+3, 3)/4` -/
def P13570501213979122300.Spec : Prop :=
  ∀ n, P13570501213979122300.a n = (A055268 n : ℚ)

end A055268

/-! ## A055268.P7030506225203019238

`11*C(n+4, 4)-10*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055268

/-- `11*C(n+4, 4)-10*C(n+3, 3)` -/
def P7030506225203019238.Spec : Prop :=
  ∀ n, P7030506225203019238.a n = A055268 n

theorem P7030506225203019238.correct : P7030506225203019238.Spec := by
  intro n
  simp only [A055268]

end A055268

/-! ## A055268.P13215143956918068496

`∑[∑[∑[11*n+1]]]`
-/

namespace A055268.P13215143956918068496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055268.P13215143956918068496

namespace A055268

/-- `∑[∑[∑[11*n+1]]]` -/
def P13215143956918068496.Spec : Prop :=
  ∀ n, (P13215143956918068496.a n : ℤ) = A055268 n

end A055268

/-! ## A055268.P15516839478864249897

`(n+1)²²-A264888(n)`
-/

namespace A055268.P15516839478864249897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A264888 n

end

end A055268.P15516839478864249897

namespace A055268

/-- `(n+1)²²-A264888(n)` -/
def P15516839478864249897.Spec : Prop :=
  ∀ n, P15516839478864249897.a n = A055268 n

end A055268

/-! ## A055268.P16708805129913619568

`A051740(n)+A033488(n)`
-/

namespace A055268.P16708805129913619568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n + A033488 n

end

end A055268.P16708805129913619568

namespace A055268

/-- `A051740(n)+A033488(n)` -/
def P16708805129913619568.Spec : Prop :=
  ∀ n, P16708805129913619568.a n = A055268 n

end A055268

/-! ## A055268.P14677651890936018111

`A241765(n)+A108678(n)`
-/

namespace A055268.P14677651890936018111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n + A108678 n

end

end A055268.P14677651890936018111

namespace A055268

/-- `A241765(n)+A108678(n)` -/
def P14677651890936018111.Spec : Prop :=
  ∀ n, P14677651890936018111.a n = A055268 n

end A055268

/-! ## A055268.P11358514275518112401

`A051799(n)+∑[A000292(n)]`
-/

namespace A055268.P11358514275518112401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051799 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055268.P11358514275518112401

namespace A055268

/-- `A051799(n)+∑[A000292(n)]` -/
def P11358514275518112401.Spec : Prop :=
  ∀ n, P11358514275518112401.a n = A055268 n

end A055268

/-! ## A055268.P17640860309397116157

`A215862(n)+A006324(n+1)`
-/

namespace A055268.P17640860309397116157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + A006324 (n + 1)

end

end A055268.P17640860309397116157

namespace A055268

/-- `A215862(n)+A006324(n+1)` -/
def P17640860309397116157.Spec : Prop :=
  ∀ n, P17640860309397116157.a n = A055268 n

end A055268

/-! ## A055268.P17378937091037875650

`A213549(n+1)+A027480(n)`
-/

namespace A055268.P17378937091037875650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (n + 1) + A027480 n

end

end A055268.P17378937091037875650

namespace A055268

/-- `A213549(n+1)+A027480(n)` -/
def P17378937091037875650.Spec : Prop :=
  ∀ n, P17378937091037875650.a n = A055268 n

end A055268

/-! ## A055268.P7380546732311182025

`A179095(n)+A100157(n+1)`
-/

namespace A055268.P7380546732311182025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179095 n + A100157 (n + 1)

end

end A055268.P7380546732311182025

namespace A055268

/-- `A179095(n)+A100157(n+1)` -/
def P7380546732311182025.Spec : Prop :=
  ∀ n, P7380546732311182025.a n = A055268 n

end A055268

/-! ## A055268.P5621734214366301247

`2*A051798(n)-A051740(n)`
-/

namespace A055268.P5621734214366301247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051798 n - A051740 n

end

end A055268.P5621734214366301247

namespace A055268

/-- `2*A051798(n)-A051740(n)` -/
def P5621734214366301247.Spec : Prop :=
  ∀ n, P5621734214366301247.a n = A055268 n

end A055268

/-! ## A055268.P14744273661559289836

`A271567(n)-2*A051843(n)`
-/

namespace A055268.P14744273661559289836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - 2 * A051843 n

end

end A055268.P14744273661559289836

namespace A055268

/-- `A271567(n)-2*A051843(n)` -/
def P14744273661559289836.Spec : Prop :=
  ∀ n, P14744273661559289836.a n = A055268 n

end A055268

/-! ## A055268.P18069084115604386753

`A024196(n+1)-A051744(n+1)`
-/

namespace A055268.P18069084115604386753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024196 (n + 1) - A051744 (n + 1)

end

end A055268.P18069084115604386753

namespace A055268

/-- `A024196(n+1)-A051744(n+1)` -/
def P18069084115604386753.Spec : Prop :=
  ∀ n, P18069084115604386753.a n = A055268 n

end A055268

/-! ## A055268.P2389601029702545889

`A027482(n+2)-A101854(n+1)`
-/

namespace A055268.P2389601029702545889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2) - A101854 (n + 1)

end

end A055268.P2389601029702545889

namespace A055268

/-- `A027482(n+2)-A101854(n+1)` -/
def P2389601029702545889.Spec : Prop :=
  ∀ n, P2389601029702545889.a n = A055268 n

end A055268

/-! ## A055268.P8338690072204387480

`A007715(n+1)+2*A215862(n)`
-/

namespace A055268.P8338690072204387480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1) + 2 * A215862 n

end

end A055268.P8338690072204387480

namespace A055268

/-- `A007715(n+1)+2*A215862(n)` -/
def P8338690072204387480.Spec : Prop :=
  ∀ n, P8338690072204387480.a n = A055268 n

end A055268

/-! ## A055268.P2364480139895098748

`2*A006324(n+1)-A007715(n+1)`
-/

namespace A055268.P2364480139895098748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006324 (n + 1) - A007715 (n + 1)

end

end A055268.P2364480139895098748

namespace A055268

/-- `2*A006324(n+1)-A007715(n+1)` -/
def P2364480139895098748.Spec : Prop :=
  ∀ n, P2364480139895098748.a n = A055268 n

end A055268

/-! ## A055268.P1481750996042442294

`A264854(n+1)+∑[∑[n]]`
-/

namespace A055268.P1481750996042442294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264854 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055268.P1481750996042442294

namespace A055268

/-- `A264854(n+1)+∑[∑[n]]` -/
def P1481750996042442294.Spec : Prop :=
  ∀ n, P1481750996042442294.a n = A055268 n

end A055268

/-! ## A055268.P12225842208099757302

`A050441(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A055268.P12225842208099757302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050441 (n + 1) + a (n - 1)

end

end A055268.P12225842208099757302

namespace A055268

/-- `A050441(n+1)+a(n-1)` -/
def P12225842208099757302.Spec : Prop :=
  ∀ n, P12225842208099757302.a n = A055268 n

end A055268

/-! ## A055268.P2248391070104519226

`A001296(n+1)+2*A033488(n)`
-/

namespace A055268.P2248391070104519226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) + 2 * A033488 n

end

end A055268.P2248391070104519226

namespace A055268

/-- `A001296(n+1)+2*A033488(n)` -/
def P2248391070104519226.Spec : Prop :=
  ∀ n, P2248391070104519226.a n = A055268 n

end A055268

/-! ## A055268.P3485803504077201977

`A051740(n)+A051740(n)-A001296(n+1)`
-/

namespace A055268.P3485803504077201977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n + (A051740 n - A001296 (n + 1))

end

end A055268.P3485803504077201977

namespace A055268

/-- `A051740(n)+A051740(n)-A001296(n+1)` -/
def P3485803504077201977.Spec : Prop :=
  ∀ n, P3485803504077201977.a n = A055268 n

end A055268

/-!
# A055269: a(n) = 4*a(n-1) - a(n-2) + 3 with a(0)=1, a(1)=7.

The programs for A055269, the canonical program `A055269.P1947193127621934211` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055269 has offset 0).

The definition of A055269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)+3` (program `A055269.P1947193127621934211`, by `A055269.P1947193127621934211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055269.P1947193127621934211

`4*a(n-1)-a(n-2)+3` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055269

/-- `4*a(n-1)-a(n-2)+3` -/
def P1947193127621934211.Spec : Prop :=
  ∀ n, P1947193127621934211.a n = A055269 n

theorem P1947193127621934211.correct : P1947193127621934211.Spec := by
  intro n
  simp only [A055269]

end A055269

/-! ## A055269.P2177896581888034389

`∑[ogf((1+2x)/(1-4x+x^2))]`
-/

namespace A055269.P2177896581888034389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P2177896581888034389

namespace A055269

/-- `∑[ogf((1+2x)/(1-4x+x^2))]` -/
def P2177896581888034389.Spec : Prop :=
  ∀ n, P2177896581888034389.a n = A055269 n

end A055269

/-! ## A055269.P13228740778178987204

`ogf((1+2x)/(1-5x+5x^2-x^3))`
-/

namespace A055269.P13228740778178987204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, 5, -1] n

end

end A055269.P13228740778178987204

namespace A055269

/-- `ogf((1+2x)/(1-5x+5x^2-x^3))` -/
def P13228740778178987204.Spec : Prop :=
  ∀ n, P13228740778178987204.a n = A055269 n

end A055269

/-! ## A055269.P4935920599465347715

`round((a(n-1)+1)*(sqrt(3)+2))` with `a(0)=1`
-/

namespace A055269.P4935920599465347715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) + 1 : ℝ) * (Real.sqrt (3 : ℝ) + 2))

end

end A055269.P4935920599465347715

namespace A055269

/-- `round((a(n-1)+1)*(sqrt(3)+2))` -/
def P4935920599465347715.Spec : Prop :=
  ∀ n, P4935920599465347715.a n = A055269 n

end A055269

/-! ## A055269.P8950719271281486191

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=1, a(1)=6`
-/

namespace A055269.P8950719271281486191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P8950719271281486191

namespace A055269

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P8950719271281486191.Spec : Prop :=
  ∀ n, P8950719271281486191.a n = A055269 n

end A055269

/-! ## A055269.P7293120204442975322

`∑[4*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A055269.P7293120204442975322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P7293120204442975322

namespace A055269

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P7293120204442975322.Spec : Prop :=
  ∀ n, P7293120204442975322.a n = A055269 n

end A055269

/-! ## A055269.P14106250494318340875

`3-(a(n-2)-4*a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A055269.P14106250494318340875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  3 - (a (n - 2) - 4 * a (n - 1))

end

end A055269.P14106250494318340875

namespace A055269

/-- `3-(a(n-2)-4*a(n-1))` -/
def P14106250494318340875.Spec : Prop :=
  ∀ n, P14106250494318340875.a n = A055269 n

end A055269

/-! ## A055269.P14709219698217877196

`∑[a(n-1)/(1/2)²-a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A055269.P14709219698217877196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P14709219698217877196

namespace A055269

/-- `∑[a(n-1)/(1/2)²-a(n-2)]` -/
def P14709219698217877196.Spec : Prop :=
  ∀ n, P14709219698217877196.a n = (A055269 n : ℚ)

end A055269

/-! ## A055269.P17627173551475797865

`∑[A054491(n)]`
-/

namespace A055269.P17627173551475797865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P17627173551475797865

namespace A055269

/-- `∑[A054491(n)]` -/
def P17627173551475797865.Spec : Prop :=
  ∀ n, P17627173551475797865.a n = A055269 n

end A055269

/-! ## A055269.P16710814144949288997

`∑[A077237(2*n)]`
-/

namespace A055269.P16710814144949288997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077237 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P16710814144949288997

namespace A055269

/-- `∑[A077237(2*n)]` -/
def P16710814144949288997.Spec : Prop :=
  ∀ n, P16710814144949288997.a n = A055269 n

end A055269

/-! ## A055269.P16297444867326318495

`A107401(2*n+3)-1`
-/

namespace A055269.P16297444867326318495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * n + 3) - 1

end

end A055269.P16297444867326318495

namespace A055269

/-- `A107401(2*n+3)-1` -/
def P16297444867326318495.Spec : Prop :=
  ∀ n, P16297444867326318495.a n = A055269 n

end A055269

/-! ## A055269.P5906086682086404448

`∑[A001834(n)+A001353(n)]`
-/

namespace A055269.P5906086682086404448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P5906086682086404448

namespace A055269

/-- `∑[A001834(n)+A001353(n)]` -/
def P5906086682086404448.Spec : Prop :=
  ∀ n, P5906086682086404448.a n = A055269 n

end A055269

/-! ## A055269.P9469554110800987789

`A061278(n)+∑[A001834(n)]`
-/

namespace A055269.P9469554110800987789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P9469554110800987789

namespace A055269

/-- `A061278(n)+∑[A001834(n)]` -/
def P9469554110800987789.Spec : Prop :=
  ∀ n, P9469554110800987789.a n = A055269 n

end A055269

/-! ## A055269.P9032688542203432150

`A092184(n+1)+A061278(n)`
-/

namespace A055269.P9032688542203432150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 (n + 1) + A061278 n

end

end A055269.P9032688542203432150

namespace A055269

/-- `A092184(n+1)+A061278(n)` -/
def P9032688542203432150.Spec : Prop :=
  ∀ n, P9032688542203432150.a n = A055269 n

end A055269

/-! ## A055269.P3475593179822444613

`A001571(n+1)-A072110(n)`
-/

namespace A055269.P3475593179822444613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 (n + 1) - A072110 n

end

end A055269.P3475593179822444613

namespace A055269

/-- `A001571(n+1)-A072110(n)` -/
def P3475593179822444613.Spec : Prop :=
  ∀ n, P3475593179822444613.a n = A055269 n

end A055269

/-! ## A055269.P4861120356242852051

`A082840(n+1)-A001353(n)`
-/

namespace A055269.P4861120356242852051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 (n + 1) - A001353 n

end

end A055269.P4861120356242852051

namespace A055269

/-- `A082840(n+1)-A001353(n)` -/
def P4861120356242852051.Spec : Prop :=
  ∀ n, P4861120356242852051.a n = A055269 n

end A055269

/-! ## A055269.P13984818363362813146

`A061278(n)+A102206(n)-2`
-/

namespace A055269.P13984818363362813146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + (A102206 n - 2)

end

end A055269.P13984818363362813146

namespace A055269

/-- `A061278(n)+A102206(n)-2` -/
def P13984818363362813146.Spec : Prop :=
  ∀ n, P13984818363362813146.a n = A055269 n

end A055269

/-! ## A055269.P14142343559996280503

`∑[A001353(n)+Δ[A001075(n)]]`
-/

namespace A055269.P14142343559996280503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P14142343559996280503

namespace A055269

/-- `∑[A001353(n)+Δ[A001075(n)]]` -/
def P14142343559996280503.Spec : Prop :=
  ∀ n, P14142343559996280503.a n = A055269 n

end A055269

/-! ## A055269.P7615460792672648685

`∑[A005320(n)+A001835(n+1)]`
-/

namespace A055269.P7615460792672648685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n + A001835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P7615460792672648685

namespace A055269

/-- `∑[A005320(n)+A001835(n+1)]` -/
def P7615460792672648685.Spec : Prop :=
  ∀ n, P7615460792672648685.a n = A055269 n

end A055269

/-! ## A055269.P3647552772525064912

`∑[A001075(n+1)-A001835(n)]`
-/

namespace A055269.P3647552772525064912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 1) - A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055269.P3647552772525064912

namespace A055269

/-- `∑[A001075(n+1)-A001835(n)]` -/
def P3647552772525064912.Spec : Prop :=
  ∀ n, P3647552772525064912.a n = A055269 n

end A055269

/-!
# A055270: a(n) = 7*a(n-1) + (-1)^n * binomial(2,2-n) with a(-1)=0.

The programs for A055270, the canonical program `A055270.P3508099987472328515` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055270 has offset 0).

The definition of A055270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)` (program `A055270.P3508099987472328515`, by `A055270.P3508099987472328515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055270.P3508099987472328515

`7*a(n-1)` with `a(0)=1, a(1)=5, a(2)=36`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055270

/-- `7*a(n-1)` -/
def P3508099987472328515.Spec : Prop :=
  ∀ n, (P3508099987472328515.a n : ℤ) = A055270 n

theorem P3508099987472328515.correct : P3508099987472328515.Spec := by
  intro n
  simp only [A055270]

end A055270

/-! ## A055270.P2131854317184427793

`Δ[Δ[floor(7^(n-2))]]`
-/

namespace A055270.P2131854317184427793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055270.P2131854317184427793

namespace A055270

/-- `Δ[Δ[floor(7^(n-2))]]` -/
def P2131854317184427793.Spec : Prop :=
  ∀ n, P2131854317184427793.a n = A055270 n

end A055270

/-! ## A055270.P6490314869241260044

`ceil(Δ[A328778(n)/2])`
-/

namespace A055270.P6490314869241260044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328778 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A055270.P6490314869241260044

namespace A055270

/-- `ceil(Δ[A328778(n)/2])` -/
def P6490314869241260044.Spec : Prop :=
  ∀ n, P6490314869241260044.a n = A055270 n

end A055270

/-! ## A055270.P16016107231816169788

`round(A014963(4*n+6)*Δ[A328778(n)/2])`
-/

namespace A055270.P16016107231816169788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328778 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014963 (4 * n + 6) : ℚ) * (f1 (n + 1) - f1 n))

end

end A055270.P16016107231816169788

namespace A055270

/-- `round(A014963(4*n+6)*Δ[A328778(n)/2])` -/
def P16016107231816169788.Spec : Prop :=
  ∀ n, P16016107231816169788.a n = A055270 n

end A055270

/-! ## A055270.P11896398385404906958

`floor(A055272(n)/A000420(n)*A055272(n))`
-/

namespace A055270.P11896398385404906958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055272 n : ℚ) / (A000420 n : ℚ) * (A055272 n : ℚ)⌋

end

end A055270.P11896398385404906958

namespace A055270

/-- `floor(A055272(n)/A000420(n)*A055272(n))` -/
def P11896398385404906958.Spec : Prop :=
  ∀ n, P11896398385404906958.a n = A055270 n

end A055270

/-! ## A055270.P6662243597666372394

`floor(A055272(n)²/A000420(n))`
-/

namespace A055270.P6662243597666372394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055272 n ^ 2 : ℚ) / (A000420 n : ℚ)⌋

end

end A055270.P6662243597666372394

namespace A055270

/-- `floor(A055272(n)²/A000420(n))` -/
def P6662243597666372394.Spec : Prop :=
  ∀ n, P6662243597666372394.a n = A055270 n

end A055270

/-!
# A055271: a(n) = 5*a(n-1) - a(n-2) with a(0)=1, a(1)=7.

The programs for A055271, the canonical program `A055271.P13883537594438728279` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055271 has offset 0).

The definition of A055271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A055271.P13883537594438728279`, by `A055271.P13883537594438728279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055271.P13883537594438728279

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055271

/-- `5*a(n-1)-a(n-2)` -/
def P13883537594438728279.Spec : Prop :=
  ∀ n, P13883537594438728279.a n = A055271 n

theorem P13883537594438728279.correct : P13883537594438728279.Spec := by
  intro n
  simp only [A055271]

end A055271

/-! ## A055271.P18370123230635841647

`ogf((1+2x)/(1-5x+x^2))`
-/

namespace A055271.P18370123230635841647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, 1] n

end

end A055271.P18370123230635841647

namespace A055271

/-- `ogf((1+2x)/(1-5x+x^2))` -/
def P18370123230635841647.Spec : Prop :=
  ∀ n, P18370123230635841647.a n = A055271 n

end A055271

/-! ## A055271.P5446443288559883896

`lcm(5, a(n-1))-a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A055271.P5446443288559883896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A055271.P5446443288559883896

namespace A055271

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P5446443288559883896.Spec : Prop :=
  ∀ n, P5446443288559883896.a n = A055271 n

end A055271

/-! ## A055271.P14779879277448344087

`Δ[A002310(n)]`
-/

namespace A055271.P14779879277448344087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055271.P14779879277448344087

namespace A055271

/-- `Δ[A002310(n)]` -/
def P14779879277448344087.Spec : Prop :=
  ∀ n, P14779879277448344087.a n = A055271 n

end A055271

/-! ## A055271.P4585482397027427460

`A142879(3*n+2)`
-/

namespace A055271.P4585482397027427460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142879 (3 * n + 2)

end

end A055271.P4585482397027427460

namespace A055271

/-- `A142879(3*n+2)` -/
def P4585482397027427460.Spec : Prop :=
  ∀ n, P4585482397027427460.a n = A055271 n

end A055271

/-! ## A055271.P13067582854635143615

`Δ[Δ[A107402(2*n)]]`
-/

namespace A055271.P13067582854635143615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107402 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055271.P13067582854635143615

namespace A055271

/-- `Δ[Δ[A107402(2*n)]]` -/
def P13067582854635143615.Spec : Prop :=
  ∀ n, P13067582854635143615.a n = A055271 n

end A055271

/-! ## A055271.P17756619398344737743

`A030221(n)+A004254(n)`
-/

namespace A055271.P17756619398344737743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 n + A004254 n

end

end A055271.P17756619398344737743

namespace A055271

/-- `A030221(n)+A004254(n)` -/
def P17756619398344737743.Spec : Prop :=
  ∀ n, P17756619398344737743.a n = A055271 n

end A055271

/-! ## A055271.P2143178601321479876

`Δ[A002320(n)-A004254(n)]`
-/

namespace A055271.P2143178601321479876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n - A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055271.P2143178601321479876

namespace A055271

/-- `Δ[A002320(n)-A004254(n)]` -/
def P2143178601321479876.Spec : Prop :=
  ∀ n, P2143178601321479876.a n = A055271 n

end A055271

/-! ## A055271.P5460968988486642206

`A002310(n+1)-A002310(n)`
-/

namespace A055271.P5460968988486642206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 (n + 1) - A002310 n

end

end A055271.P5460968988486642206

namespace A055271

/-- `A002310(n+1)-A002310(n)` -/
def P5460968988486642206.Spec : Prop :=
  ∀ n, P5460968988486642206.a n = A055271 n

end A055271

/-! ## A055271.P5591225152295578471

`A099867(n)-2*A004254(n)`
-/

namespace A055271.P5591225152295578471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099867 n - 2 * A004254 n

end

end A055271.P5591225152295578471

namespace A055271

/-- `A099867(n)-2*A004254(n)` -/
def P5591225152295578471.Spec : Prop :=
  ∀ n, P5591225152295578471.a n = A055271 n

end A055271

/-! ## A055271.P7547002780579169814

`Δ[A002320(n)]-A004253(n+1)`
-/

namespace A055271.P7547002780579169814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004253 (n + 1)

end

end A055271.P7547002780579169814

namespace A055271

/-- `Δ[A002320(n)]-A004253(n+1)` -/
def P7547002780579169814.Spec : Prop :=
  ∀ n, P7547002780579169814.a n = A055271 n

end A055271

/-! ## A055271.P6240629153500338171

`Δ[A101368(n+2)]-A002320(n)`
-/

namespace A055271.P6240629153500338171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002320 n

end

end A055271.P6240629153500338171

namespace A055271

/-- `Δ[A101368(n+2)]-A002320(n)` -/
def P6240629153500338171.Spec : Prop :=
  ∀ n, P6240629153500338171.a n = A055271 n

end A055271

/-! ## A055271.P15819111177695086157

`A004254(n+1)+2*A004254(n)`
-/

namespace A055271.P15819111177695086157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (n + 1) + 2 * A004254 n

end

end A055271.P15819111177695086157

namespace A055271

/-- `A004254(n+1)+2*A004254(n)` -/
def P15819111177695086157.Spec : Prop :=
  ∀ n, P15819111177695086157.a n = A055271 n

end A055271

/-! ## A055271.P5354117129352499260

`A290902(n)-2*A004253(n+1)`
-/

namespace A055271.P5354117129352499260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290902 n - 2 * A004253 (n + 1)

end

end A055271.P5354117129352499260

namespace A055271

/-- `A290902(n)-2*A004253(n+1)` -/
def P5354117129352499260.Spec : Prop :=
  ∀ n, P5354117129352499260.a n = A055271 n

end A055271

/-! ## A055271.P15863212985582994951

`A002320(n)+Δ[2*A101368(n+1)]`
-/

namespace A055271.P15863212985582994951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n + (f1 (n + 1) - f1 n)

end

end A055271.P15863212985582994951

namespace A055271

/-- `A002320(n)+Δ[2*A101368(n+1)]` -/
def P15863212985582994951.Spec : Prop :=
  ∀ n, P15863212985582994951.a n = A055271 n

end A055271

/-! ## A055271.P14463110920743821847

`Δ[A002320(n)]-A217787(3*(n+1))`
-/

namespace A055271.P14463110920743821847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A217787 (3 * (n + 1))

end

end A055271.P14463110920743821847

namespace A055271

/-- `Δ[A002320(n)]-A217787(3*(n+1))` -/
def P14463110920743821847.Spec : Prop :=
  ∀ n, P14463110920743821847.a n = A055271 n

end A055271

/-! ## A055271.P17640740712507198245

`A002320(n+1)-A237255(2*n+1)`
-/

namespace A055271.P17640740712507198245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 (n + 1) - A237255 (2 * n + 1)

end

end A055271.P17640740712507198245

namespace A055271

/-- `A002320(n+1)-A237255(2*n+1)` -/
def P17640740712507198245.Spec : Prop :=
  ∀ n, P17640740712507198245.a n = A055271 n

end A055271

/-! ## A055271.P4055689439621562049

`Δ[A101368(n+1)]+∑[A004253(n+1)]`
-/

namespace A055271.P4055689439621562049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A055271.P4055689439621562049

namespace A055271

/-- `Δ[A101368(n+1)]+∑[A004253(n+1)]` -/
def P4055689439621562049.Spec : Prop :=
  ∀ n, P4055689439621562049.a n = A055271 n

end A055271

/-! ## A055271.P11941214660711443735

`(A004253(n+1)+Δ[A164582(n+1)])/2`
-/

namespace A055271.P11941214660711443735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164582 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004253 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A055271.P11941214660711443735

namespace A055271

/-- `(A004253(n+1)+Δ[A164582(n+1)])/2` -/
def P11941214660711443735.Spec : Prop :=
  ∀ n, P11941214660711443735.a n = (A055271 n : ℚ)

end A055271

/-! ## A055271.P15871180601248428719

`A237254(2*n+3)-A237255(2*n+1)`
-/

namespace A055271.P15871180601248428719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 3) - A237255 (2 * n + 1)

end

end A055271.P15871180601248428719

namespace A055271

/-- `A237254(2*n+3)-A237255(2*n+1)` -/
def P15871180601248428719.Spec : Prop :=
  ∀ n, P15871180601248428719.a n = A055271 n

end A055271

/-!
# A055272: First differences of 7^n (A000420).

The programs for A055272, the canonical program `A055272.P8870143609188137026` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055272 has offset 0).

The definition of A055272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055272.P8870143609188137026

`round(7^n*6/7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055272

/-- `round(7^n*6/7)` -/
def P8870143609188137026.Spec : Prop :=
  ∀ n, P8870143609188137026.a n = A055272 n

theorem P8870143609188137026.correct : P8870143609188137026.Spec := by
  intro n
  simp only [A055272]

end A055272

/-! ## A055272.P2346126160124979742

`ogf((1-x)/(1-7x))`
-/

namespace A055272.P2346126160124979742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -7] n

end

end A055272.P2346126160124979742

namespace A055272

/-- `ogf((1-x)/(1-7x))` -/
def P2346126160124979742.Spec : Prop :=
  ∀ n, P2346126160124979742.a n = A055272 n

end A055272

/-! ## A055272.P7858535454381802748

`7*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A055272.P7858535454381802748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  7 * a (n - 1)

end

end A055272.P7858535454381802748

namespace A055272

/-- `7*a(n-1)` -/
def P7858535454381802748.Spec : Prop :=
  ∀ n, (P7858535454381802748.a n : ℤ) = A055272 n

end A055272

/-! ## A055272.P8656111072893345059

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=6, a(2)=7`
-/

namespace A055272.P8656111072893345059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A055272.P8656111072893345059

namespace A055272

/-- `abs(∏[-a(n-1)])` -/
def P8656111072893345059.Spec : Prop :=
  ∀ n, P8656111072893345059.a n = A055272 n

end A055272

/-! ## A055272.P13894257951954017585

`ceil(Δ[7^((n-1)%(n+2))])`
-/

namespace A055272.P13894257951954017585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A055272.P13894257951954017585

namespace A055272

/-- `ceil(Δ[7^((n-1)%(n+2))])` -/
def P13894257951954017585.Spec : Prop :=
  ∀ n, P13894257951954017585.a n = A055272 n

end A055272

/-! ## A055272.P11508583475961554369

`a(n-1)/(1-6/7)` with `a(0)=1, a(1)=6`
-/

namespace A055272.P11508583475961554369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7)

end

end A055272.P11508583475961554369

namespace A055272

/-- `a(n-1)/(1-6/7)` -/
def P11508583475961554369.Spec : Prop :=
  ∀ n, P11508583475961554369.a n = (A055272 n : ℚ)

end A055272

/-! ## A055272.P1828828483719829059

`lcm(7^(n-1), a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A055272.P1828828483719829059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((7 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A055272.P1828828483719829059

namespace A055272

/-- `lcm(7^(n-1), a(n-1))` -/
def P1828828483719829059.Spec : Prop :=
  ∀ n, (P1828828483719829059.a n : ℤ) = A055272 n

end A055272

/-! ## A055272.P10654002394143578283

`∑[A055270(n)]`
-/

namespace A055272.P10654002394143578283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055272.P10654002394143578283

namespace A055272

/-- `∑[A055270(n)]` -/
def P10654002394143578283.Spec : Prop :=
  ∀ n, P10654002394143578283.a n = A055272 n

end A055272

/-! ## A055272.P13055810819096477420

`7*floor(a(A023443(n)))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A055272.P13055810819096477420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  7 * a (A023443 n).toNat

end

end A055272.P13055810819096477420

namespace A055272

/-- `7*floor(a(A023443(n)))` -/
def P13055810819096477420.Spec : Prop :=
  ∀ n, (P13055810819096477420.a n : ℤ) = A055272 n

end A055272

/-! ## A055272.P10466494271741835560

`A245479(A008574(n))`
-/

namespace A055272.P10466494271741835560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (A008574 n).toNat

end

end A055272.P10466494271741835560

namespace A055272

/-- `A245479(A008574(n))` -/
def P10466494271741835560.Spec : Prop :=
  ∀ n, P10466494271741835560.a n = A055272 n

end A055272

/-! ## A055272.P7228380997637900587

`A000420(n+1)-(A055270(n+1)+A000420(n))`
-/

namespace A055272.P7228380997637900587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (n + 1) - (A055270 (n + 1) + A000420 n)

end

end A055272.P7228380997637900587

namespace A055272

/-- `A000420(n+1)-(A055270(n+1)+A000420(n))` -/
def P7228380997637900587.Spec : Prop :=
  ∀ n, P7228380997637900587.a n = A055272 n

end A055272

/-! ## A055272.P12044924571460646023

`∏{digits}[1-A002281(n), #]`
-/

namespace A055272.P12044924571460646023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A055272.P12044924571460646023

namespace A055272

/-- `∏{digits}[1-A002281(n), #]` -/
def P12044924571460646023.Spec : Prop :=
  ∀ n, (P12044924571460646023.a n : ℤ) = A055272 n

end A055272

/-!
# A055273: a(n) = 3*a(n-1) - a(n-2) with a(0) = 1, a(1) = 8.

The programs for A055273, the canonical program `A055273.P13873923246246996682` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055273 has offset 0).

The definition of A055273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A055273.P13873923246246996682`, by `A055273.P13873923246246996682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055273.P13873923246246996682

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055273

/-- `3*a(n-1)-a(n-2)` -/
def P13873923246246996682.Spec : Prop :=
  ∀ n, P13873923246246996682.a n = A055273 n

theorem P13873923246246996682.correct : P13873923246246996682.Spec := by
  intro n
  simp only [A055273]

end A055273

/-! ## A055273.P10337565421166270943

`ogf((1+5x)/(1-3x+x^2))`
-/

namespace A055273.P10337565421166270943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -3, 1] n

end

end A055273.P10337565421166270943

namespace A055273

/-- `ogf((1+5x)/(1-3x+x^2))` -/
def P10337565421166270943.Spec : Prop :=
  ∀ n, P10337565421166270943.a n = A055273 n

end A055273

/-! ## A055273.P16139010059127482559

`lcm(3, a(n-1))-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A055273.P16139010059127482559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A055273.P16139010059127482559

namespace A055273

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P16139010059127482559.Spec : Prop :=
  ∀ n, P16139010059127482559.a n = A055273 n

end A055273

/-! ## A055273.P2703262819253463277

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A055273.P2703262819253463277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A055273.P2703262819253463277

namespace A055273

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P2703262819253463277.Spec : Prop :=
  ∀ n, P2703262819253463277.a n = A055273 n

theorem P2703262819253463277.correct : P2703262819253463277.Spec := by
  intro n
  simp only [A055273, Nat.add_sub_cancel, A055273.P2703262819253463277.a, A055273.P13873923246246996682.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055273

/-! ## A055273.P7654433666473564712

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A055273.P7654433666473564712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A055273.P7654433666473564712

namespace A055273

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P7654433666473564712.Spec : Prop :=
  ∀ n, P7654433666473564712.a n = A055273 n

theorem P7654433666473564712.correct : P7654433666473564712.Spec := by
  intro n
  simp only [A055273, Nat.add_sub_cancel, A055273.P7654433666473564712.a, A055273.P13873923246246996682.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055273

/-! ## A055273.P3292780426502874841

`A022097(2*n)`
-/

namespace A055273.P3292780426502874841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 (2 * n)

end

end A055273.P3292780426502874841

namespace A055273

/-- `A022097(2*n)` -/
def P3292780426502874841.Spec : Prop :=
  ∀ n, P3292780426502874841.a n = A055273 n

end A055273

/-! ## A055273.P17245929925795720753

`A022311(2*n)+1`
-/

namespace A055273.P17245929925795720753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 (2 * n) + 1

end

end A055273.P17245929925795720753

namespace A055273

/-- `A022311(2*n)+1` -/
def P17245929925795720753.Spec : Prop :=
  ∀ n, P17245929925795720753.a n = A055273 n

end A055273

/-! ## A055273.P13294791973645138068

`A022369(2*n)/2`
-/

namespace A055273.P13294791973645138068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022369 (2 * n) : ℚ) / 2

end

end A055273.P13294791973645138068

namespace A055273

/-- `A022369(2*n)/2` -/
def P13294791973645138068.Spec : Prop :=
  ∀ n, P13294791973645138068.a n = (A055273 n : ℚ)

end A055273

/-! ## A055273.P4362943865508583

`A055267(n)+A001906(n)`
-/

namespace A055273.P4362943865508583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + A001906 n

end

end A055273.P4362943865508583

namespace A055273

/-- `A055267(n)+A001906(n)` -/
def P4362943865508583.Spec : Prop :=
  ∀ n, P4362943865508583.a n = A055273 n

end A055273

/-! ## A055273.P6964232558753275357

`A055849(n)-A001906(n)`
-/

namespace A055273.P6964232558753275357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055849 n - A001906 n

end

end A055273.P6964232558753275357

namespace A055273

/-- `A055849(n)-A001906(n)` -/
def P6964232558753275357.Spec : Prop :=
  ∀ n, P6964232558753275357.a n = A055273 n

end A055273

/-! ## A055273.P4213321516108543401

`A167375(n+1)-A005248(n)`
-/

namespace A055273.P4213321516108543401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167375 (n + 1) - A005248 n

end

end A055273.P4213321516108543401

namespace A055273

/-- `A167375(n+1)-A005248(n)` -/
def P4213321516108543401.Spec : Prop :=
  ∀ n, P4213321516108543401.a n = A055273 n

end A055273

/-! ## A055273.P15011209572914101074

`A055267(n)+A000045(2*n)`
-/

namespace A055273.P15011209572914101074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + A000045 (2 * n)

end

end A055273.P15011209572914101074

namespace A055273

/-- `A055267(n)+A000045(2*n)` -/
def P15011209572914101074.Spec : Prop :=
  ∀ n, P15011209572914101074.a n = A055273 n

end A055273

/-! ## A055273.P3364639495127486412

`A054492(n)+2*A001906(n)`
-/

namespace A055273.P3364639495127486412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054492 n + 2 * A001906 n

end

end A055273.P3364639495127486412

namespace A055273

/-- `A054492(n)+2*A001906(n)` -/
def P3364639495127486412.Spec : Prop :=
  ∀ n, P3364639495127486412.a n = A055273 n

end A055273

/-! ## A055273.P17750158647987907019

`A097136(n)+A022308(2*n)`
-/

namespace A055273.P17750158647987907019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A022308 (2 * n)

end

end A055273.P17750158647987907019

namespace A055273

/-- `A097136(n)+A022308(2*n)` -/
def P17750158647987907019.Spec : Prop :=
  ∀ n, P17750158647987907019.a n = A055273 n

end A055273

/-! ## A055273.P7193122619558478455

`A055849(n)-A000045(2*n)`
-/

namespace A055273.P7193122619558478455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055849 n - A000045 (2 * n)

end

end A055273.P7193122619558478455

namespace A055273

/-- `A055849(n)-A000045(2*n)` -/
def P7193122619558478455.Spec : Prop :=
  ∀ n, P7193122619558478455.a n = A055273 n

end A055273

/-! ## A055273.P10800890489635669301

`A055850(n)-2*A001906(n)`
-/

namespace A055273.P10800890489635669301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 n - 2 * A001906 n

end

end A055273.P10800890489635669301

namespace A055273

/-- `A055850(n)-2*A001906(n)` -/
def P10800890489635669301.Spec : Prop :=
  ∀ n, P10800890489635669301.a n = A055273 n

end A055273

/-! ## A055273.P5138789853852233310

`2*A055267(n)-A054492(n)`
-/

namespace A055273.P5138789853852233310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055267 n - A054492 n

end

end A055273.P5138789853852233310

namespace A055273

/-- `2*A055267(n)-A054492(n)` -/
def P5138789853852233310.Spec : Prop :=
  ∀ n, P5138789853852233310.a n = A055273 n

end A055273

/-! ## A055273.P12915192133678076519

`2*A054486(n)-A122367(n)`
-/

namespace A055273.P12915192133678076519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054486 n - A122367 n

end

end A055273.P12915192133678076519

namespace A055273

/-- `2*A054486(n)-A122367(n)` -/
def P12915192133678076519.Spec : Prop :=
  ∀ n, P12915192133678076519.a n = A055273 n

end A055273

/-! ## A055273.P11105007665168164209

`A271358(n)-A013655(2*n)`
-/

namespace A055273.P11105007665168164209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271358 n - A013655 (2 * n)

end

end A055273.P11105007665168164209

namespace A055273

/-- `A271358(n)-A013655(2*n)` -/
def P11105007665168164209.Spec : Prop :=
  ∀ n, P11105007665168164209.a n = A055273 n

end A055273

/-! ## A055273.P12434538604290987017

`A201157(n+1)+A001906(n+1)`
-/

namespace A055273.P12434538604290987017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A001906 (n + 1)

end

end A055273.P12434538604290987017

namespace A055273

/-- `A201157(n+1)+A001906(n+1)` -/
def P12434538604290987017.Spec : Prop :=
  ∀ n, P12434538604290987017.a n = A055273 n

end A055273

/-!
# A055274: First differences of 8^n (A001018).

The programs for A055274, the canonical program `A055274.P9513520460679774015` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055274 has offset 0).

The definition of A055274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055274.P9513520460679774015

`8*a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055274

/-- `8*a(n-1)` -/
def P9513520460679774015.Spec : Prop :=
  ∀ n, (P9513520460679774015.a n : ℤ) = A055274 n

theorem P9513520460679774015.correct : P9513520460679774015.Spec := by
  intro n
  simp only [A055274]

end A055274

/-! ## A055274.P9509578630184835311

`ogf((1-x)/(1-8x))`
-/

namespace A055274.P9509578630184835311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8] n

end

end A055274.P9509578630184835311

namespace A055274

/-- `ogf((1-x)/(1-8x))` -/
def P9509578630184835311.Spec : Prop :=
  ∀ n, P9509578630184835311.a n = A055274 n

end A055274

/-! ## A055274.P7783055230239964942

`Δ[floor(8^(n-1))]`
-/

namespace A055274.P7783055230239964942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055274.P7783055230239964942

namespace A055274

/-- `Δ[floor(8^(n-1))]` -/
def P7783055230239964942.Spec : Prop :=
  ∀ n, P7783055230239964942.a n = A055274 n

end A055274

/-! ## A055274.P12284582200815808970

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A055274.P12284582200815808970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A055274.P12284582200815808970

namespace A055274

/-- `abs(∏[-a(n-1)])` -/
def P12284582200815808970.Spec : Prop :=
  ∀ n, P12284582200815808970.a n = A055274 n

end A055274

/-! ## A055274.P5990247636532467270

`ceil(Δ[8^((n-1)%(n+2))])`
-/

namespace A055274.P5990247636532467270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A055274.P5990247636532467270

namespace A055274

/-- `ceil(Δ[8^((n-1)%(n+2))])` -/
def P5990247636532467270.Spec : Prop :=
  ∀ n, P5990247636532467270.a n = A055274 n

end A055274

/-! ## A055274.P2512591111004883238

`(floor(acot(n))+7)*8^(n-1)`
-/

namespace A055274.P2512591111004883238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 7 : ℚ) * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A055274.P2512591111004883238

namespace A055274

/-- `(floor(acot(n))+7)*8^(n-1)` -/
def P2512591111004883238.Spec : Prop :=
  ∀ n, P2512591111004883238.a n = (A055274 n : ℚ)

end A055274

/-! ## A055274.P6336761433322873551

`a(n-1)/(1/2)^3` with `a(0)=1, a(1)=7`
-/

namespace A055274.P6336761433322873551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3

end

end A055274.P6336761433322873551

namespace A055274

/-- `a(n-1)/(1/2)^3` -/
def P6336761433322873551.Spec : Prop :=
  ∀ n, P6336761433322873551.a n = (A055274 n : ℚ)

end A055274

/-! ## A055274.P18078590207379403673

`lcm(8^(n-1), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A055274.P18078590207379403673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A055274.P18078590207379403673

namespace A055274

/-- `lcm(8^(n-1), a(n-1))` -/
def P18078590207379403673.Spec : Prop :=
  ∀ n, (P18078590207379403673.a n : ℤ) = A055274 n

end A055274

/-! ## A055274.P8278737689152840511

`∑[A055847(n)]`
-/

namespace A055274.P8278737689152840511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055274.P8278737689152840511

namespace A055274

/-- `∑[A055847(n)]` -/
def P8278737689152840511.Spec : Prop :=
  ∀ n, P8278737689152840511.a n = A055274 n

end A055274

/-! ## A055274.P16974704005929516415

`A365062(3*n+1)`
-/

namespace A055274.P16974704005929516415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 (3 * n + 1)

end

end A055274.P16974704005929516415

namespace A055274

/-- `A365062(3*n+1)` -/
def P16974704005929516415.Spec : Prop :=
  ∀ n, P16974704005929516415.a n = A055274 n

end A055274

/-! ## A055274.P6470169841723965318

`Δ[A131577(3*n)]/4`
-/

namespace A055274.P6470169841723965318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A055274.P6470169841723965318

namespace A055274

/-- `Δ[A131577(3*n)]/4` -/
def P6470169841723965318.Spec : Prop :=
  ∀ n, P6470169841723965318.a n = (A055274 n : ℚ)

end A055274

/-! ## A055274.P4015346374989576669

`floor(Δ[A011782(3*n)-(n+1)]/4)+1`
-/

namespace A055274.P4015346374989576669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (3 * n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 4⌋ + 1

end

end A055274.P4015346374989576669

namespace A055274

/-- `floor(Δ[A011782(3*n)-(n+1)]/4)+1` -/
def P4015346374989576669.Spec : Prop :=
  ∀ n, P4015346374989576669.a n = A055274 n

end A055274

/-! ## A055274.P7133542185173388585

`A125176(A008486(n))`
-/

namespace A055274.P7133542185173388585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (A008486 n).toNat

end

end A055274.P7133542185173388585

namespace A055274

/-- `A125176(A008486(n))` -/
def P7133542185173388585.Spec : Prop :=
  ∀ n, P7133542185173388585.a n = A055274 n

end A055274

/-! ## A055274.P6080303544676146540

`A011782(n)²*A135092(n)`
-/

namespace A055274.P6080303544676146540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A135092 n

end

end A055274.P6080303544676146540

namespace A055274

/-- `A011782(n)²*A135092(n)` -/
def P6080303544676146540.Spec : Prop :=
  ∀ n, P6080303544676146540.a n = A055274 n

end A055274

/-! ## A055274.P13244519116361556385

`A246074(A019557(n)+1)/2`
-/

namespace A055274.P13244519116361556385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246074 (A019557 n + 1).toNat : ℚ) / 2

end

end A055274.P13244519116361556385

namespace A055274

/-- `A246074(A019557(n)+1)/2` -/
def P13244519116361556385.Spec : Prop :=
  ∀ n, P13244519116361556385.a n = (A055274 n : ℚ)

end A055274

/-! ## A055274.P4788281434413642596

`(A083233(n)+A001018(n))/2`
-/

namespace A055274.P4788281434413642596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083233 n + A001018 n : ℚ) / 2

end

end A055274.P4788281434413642596

namespace A055274

/-- `(A083233(n)+A001018(n))/2` -/
def P4788281434413642596.Spec : Prop :=
  ∀ n, P4788281434413642596.a n = (A055274 n : ℚ)

end A055274

/-! ## A055274.P1905630046778073705

`2*A067412(n)-A103333(n)`
-/

namespace A055274.P1905630046778073705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067412 n - A103333 n

end

end A055274.P1905630046778073705

namespace A055274

/-- `2*A067412(n)-A103333(n)` -/
def P1905630046778073705.Spec : Prop :=
  ∀ n, P1905630046778073705.a n = A055274 n

end A055274

/-! ## A055274.P17490219966135552140

`record[Δ[A166444(n)²*A166444(n)]]`
-/

namespace A055274.P17490219966135552140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n ^ 2 * A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055274.P17490219966135552140

namespace A055274

/-- `record[Δ[A166444(n)²*A166444(n)]]` -/
def P17490219966135552140.Spec : Prop :=
  ∀ n, P17490219966135552140.a n = A055274 n

end A055274

/-! ## A055274.P5667501739802672429

`Δ[A092811(n)]/(A036453(n+1)+2)`
-/

namespace A055274.P5667501739802672429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A036453 (n + 1) + 2 : ℚ)

end

end A055274.P5667501739802672429

namespace A055274

/-- `Δ[A092811(n)]/(A036453(n+1)+2)` -/
def P5667501739802672429.Spec : Prop :=
  ∀ n, P5667501739802672429.a n = (A055274 n : ℚ)

end A055274

/-! ## A055274.P3993250199792053388

`(A004171(n)-A011782(n)²)*A011782(n)`
-/

namespace A055274.P3993250199792053388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004171 n - A011782 n ^ 2) * A011782 n

end

end A055274.P3993250199792053388

namespace A055274

/-- `(A004171(n)-A011782(n)²)*A011782(n)` -/
def P3993250199792053388.Spec : Prop :=
  ∀ n, P3993250199792053388.a n = A055274 n

end A055274

/-!
# A055275: First differences of 9^n (A001019).

The programs for A055275, the canonical program `A055275.P11138119028232895077` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055275 has offset 0).

The definition of A055275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055275.P11138119028232895077

`9*a(n-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055275

/-- `9*a(n-1)` -/
def P11138119028232895077.Spec : Prop :=
  ∀ n, (P11138119028232895077.a n : ℤ) = A055275 n

theorem P11138119028232895077.correct : P11138119028232895077.Spec := by
  intro n
  simp only [A055275]

end A055275

/-! ## A055275.P1415692877089478250

`ogf((1-x)/(1-9x))`
-/

namespace A055275.P1415692877089478250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -9] n

end

end A055275.P1415692877089478250

namespace A055275

/-- `ogf((1-x)/(1-9x))` -/
def P1415692877089478250.Spec : Prop :=
  ∀ n, P1415692877089478250.a n = A055275 n

end A055275

/-! ## A055275.P17709913647125713470

`Δ[floor(9^(n-1))]`
-/

namespace A055275.P17709913647125713470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055275.P17709913647125713470

namespace A055275

/-- `Δ[floor(9^(n-1))]` -/
def P17709913647125713470.Spec : Prop :=
  ∀ n, P17709913647125713470.a n = A055275 n

end A055275

/-! ## A055275.P14240251782878971302

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=9`
-/

namespace A055275.P14240251782878971302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A055275.P14240251782878971302

namespace A055275

/-- `abs(∏[-a(n-1)])` -/
def P14240251782878971302.Spec : Prop :=
  ∀ n, P14240251782878971302.a n = A055275 n

end A055275

/-! ## A055275.P9608055596625033417

`ceil(9^(n-1)/tan(acot(8)))`
-/

namespace A055275.P9608055596625033417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (8 : ℝ))⌉

end

end A055275.P9608055596625033417

namespace A055275

/-- `ceil(9^(n-1)/tan(acot(8)))` -/
def P9608055596625033417.Spec : Prop :=
  ∀ n, P9608055596625033417.a n = A055275 n

end A055275

/-! ## A055275.P7606112119070516079

`a(n-1)/(1/3)²` with `a(0)=1, a(1)=8`
-/

namespace A055275.P7606112119070516079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A055275.P7606112119070516079

namespace A055275

/-- `a(n-1)/(1/3)²` -/
def P7606112119070516079.Spec : Prop :=
  ∀ n, P7606112119070516079.a n = (A055275 n : ℚ)

end A055275

/-! ## A055275.P7135671303956569601

`ceil(Δ[9^((n-1)%(n+2))])`
-/

namespace A055275.P7135671303956569601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A055275.P7135671303956569601

namespace A055275

/-- `ceil(Δ[9^((n-1)%(n+2))])` -/
def P7135671303956569601.Spec : Prop :=
  ∀ n, P7135671303956569601.a n = A055275 n

end A055275

/-! ## A055275.P4977034323656659002

`lcm(9^(n-1), a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A055275.P4977034323656659002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A055275.P4977034323656659002

namespace A055275

/-- `lcm(9^(n-1), a(n-1))` -/
def P4977034323656659002.Spec : Prop :=
  ∀ n, (P4977034323656659002.a n : ℤ) = A055275 n

end A055275

/-! ## A055275.P8134972922782805951

`∑[A055995(n)]`
-/

namespace A055275.P8134972922782805951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055275.P8134972922782805951

namespace A055275

/-- `∑[A055995(n)]` -/
def P8134972922782805951.Spec : Prop :=
  ∀ n, P8134972922782805951.a n = A055275 n

end A055275

/-! ## A055275.P3244203902267404409

`A080923(2*n)`
-/

namespace A055275.P3244203902267404409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (2 * n)

end

end A055275.P3244203902267404409

namespace A055275

/-- `A080923(2*n)` -/
def P3244203902267404409.Spec : Prop :=
  ∀ n, P3244203902267404409.a n = A055275 n

end A055275

/-! ## A055275.P4690591645166191448

`abs(Δ[A140429(n)²])`
-/

namespace A055275.P4690591645166191448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A055275.P4690591645166191448

namespace A055275

/-- `abs(Δ[A140429(n)²])` -/
def P4690591645166191448.Spec : Prop :=
  ∀ n, P4690591645166191448.a n = A055275 n

end A055275

/-! ## A055275.P6395659276706449942

`record[Δ[A287479(n)²]]`
-/

namespace A055275.P6395659276706449942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055275.P6395659276706449942

namespace A055275

/-- `record[Δ[A287479(n)²]]` -/
def P6395659276706449942.Spec : Prop :=
  ∀ n, P6395659276706449942.a n = A055275 n

end A055275

/-! ## A055275.P14410545379718500289

`ceil(A003946(n)²/2)`
-/

namespace A055275.P14410545379718500289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003946 n ^ 2 : ℚ) / 2⌉

end

end A055275.P14410545379718500289

namespace A055275

/-- `ceil(A003946(n)²/2)` -/
def P14410545379718500289.Spec : Prop :=
  ∀ n, P14410545379718500289.a n = A055275 n

end A055275

/-! ## A055275.P512706305128867901

`A080923(Δ[n²])/3`
-/

namespace A055275.P512706305128867901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080923 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A055275.P512706305128867901

namespace A055275

/-- `A080923(Δ[n²])/3` -/
def P512706305128867901.Spec : Prop :=
  ∀ n, P512706305128867901.a n = (A055275 n : ℚ)

end A055275

/-! ## A055275.P2193837020305359785

`ceil(A083583(2*n)/3)`
-/

namespace A055275.P2193837020305359785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083583 (2 * n) : ℚ) / 3⌉

end

end A055275.P2193837020305359785

namespace A055275

/-- `ceil(A083583(2*n)/3)` -/
def P2193837020305359785.Spec : Prop :=
  ∀ n, P2193837020305359785.a n = A055275 n

end A055275

/-! ## A055275.P2115686084302466354

`abs(2-∑[A080923(n)²])`
-/

namespace A055275.P2115686084302466354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A055275.P2115686084302466354

namespace A055275

/-- `abs(2-∑[A080923(n)²])` -/
def P2115686084302466354.Spec : Prop :=
  ∀ n, P2115686084302466354.a n = A055275 n

end A055275

/-! ## A055275.P8105802257828189163

`A257970(2*(n+1))/2`
-/

namespace A055275.P8105802257828189163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257970 (2 * (n + 1)) : ℚ) / 2

end

end A055275.P8105802257828189163

namespace A055275

/-- `A257970(2*(n+1))/2` -/
def P8105802257828189163.Spec : Prop :=
  ∀ n, P8105802257828189163.a n = (A055275 n : ℚ)

end A055275

/-! ## A055275.P9298729053508903138

`A118264(2*(n+1))/3`
-/

namespace A055275.P9298729053508903138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118264 (2 * (n + 1)) : ℚ) / 3

end

end A055275.P9298729053508903138

namespace A055275

/-- `A118264(2*(n+1))/3` -/
def P9298729053508903138.Spec : Prop :=
  ∀ n, P9298729053508903138.a n = (A055275 n : ℚ)

end A055275

/-! ## A055275.P6894592462419618177

`ceil(A068911(2*n)²/2)`
-/

namespace A055275.P6894592462419618177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068911 (2 * n) ^ 2 : ℚ) / 2⌉

end

end A055275.P6894592462419618177

namespace A055275

/-- `ceil(A068911(2*n)²/2)` -/
def P6894592462419618177.Spec : Prop :=
  ∀ n, P6894592462419618177.a n = A055275 n

end A055275

/-! ## A055275.P4406586042850842679

`ceil(A074324(2*n)²/2)`
-/

namespace A055275.P4406586042850842679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074324 (2 * n) ^ 2 : ℚ) / 2⌉

end

end A055275.P4406586042850842679

namespace A055275

/-- `ceil(A074324(2*n)²/2)` -/
def P4406586042850842679.Spec : Prop :=
  ∀ n, P4406586042850842679.a n = A055275 n

end A055275

/-!
# A055276: First differences of 11^n (A001020).

The programs for A055276, the canonical program `A055276.P16350073826069847020` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055276 has offset 0).

The definition of A055276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055276.P16350073826069847020

`11*a(n-1)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055276

/-- `11*a(n-1)` -/
def P16350073826069847020.Spec : Prop :=
  ∀ n, (P16350073826069847020.a n : ℤ) = A055276 n

theorem P16350073826069847020.correct : P16350073826069847020.Spec := by
  intro n
  simp only [A055276]

end A055276

/-! ## A055276.P15711992109863097320

`round(11^n*10/11)`
-/

namespace A055276.P15711992109863097320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 ^ n * 10 : ℚ) / 11)

end

end A055276.P15711992109863097320

namespace A055276

/-- `round(11^n*10/11)` -/
def P15711992109863097320.Spec : Prop :=
  ∀ n, P15711992109863097320.a n = A055276 n

end A055276

/-! ## A055276.P7077315247224667684

`ogf((1-x)/(1-11x))`
-/

namespace A055276.P7077315247224667684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -11] n

end

end A055276.P7077315247224667684

namespace A055276

/-- `ogf((1-x)/(1-11x))` -/
def P7077315247224667684.Spec : Prop :=
  ∀ n, P7077315247224667684.a n = A055276 n

end A055276

/-! ## A055276.P1697832348330255910

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=10, a(2)=11`
-/

namespace A055276.P1697832348330255910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 11] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A055276.P1697832348330255910

namespace A055276

/-- `abs(∏[-a(n-1)])` -/
def P1697832348330255910.Spec : Prop :=
  ∀ n, P1697832348330255910.a n = A055276 n

end A055276

/-! ## A055276.P16213993120470529887

`∑[A056002(n)]`
-/

namespace A055276.P16213993120470529887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055276.P16213993120470529887

namespace A055276

/-- `∑[A056002(n)]` -/
def P16213993120470529887.Spec : Prop :=
  ∀ n, P16213993120470529887.a n = A055276 n

end A055276

/-! ## A055276.P16952863218435230920

`A245480(A008574(n))`
-/

namespace A055276.P16952863218435230920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245480 (A008574 n).toNat

end

end A055276.P16952863218435230920

namespace A055276

/-- `A245480(A008574(n))` -/
def P16952863218435230920.Spec : Prop :=
  ∀ n, P16952863218435230920.a n = A055276 n

end A055276

/-! ## A055276.P13168699217510551098

`∏{digits}[2-A059482(n), A007093(#)]`
-/

namespace A055276.P13168699217510551098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007093 x).prod

end

end A055276.P13168699217510551098

namespace A055276

/-- `∏{digits}[2-A059482(n), A007093(#)]` -/
def P13168699217510551098.Spec : Prop :=
  ∀ n, P13168699217510551098.a n = A055276 n

end A055276

/-! ## A055276.P4052804723386685484

`∏{digits}[2-A059482(n), A007401(#)]`
-/

namespace A055276.P4052804723386685484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007401 x).prod

end

end A055276.P4052804723386685484

namespace A055276

/-- `∏{digits}[2-A059482(n), A007401(#)]` -/
def P4052804723386685484.Spec : Prop :=
  ∀ n, P4052804723386685484.a n = A055276 n

end A055276

/-! ## A055276.P5953711117161583423

`A159075(n)+11*a(A023443(n))` with `a(0)=1`
-/

namespace A055276.P5953711117161583423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159075 n + 11 * a (A023443 n).toNat

end

end A055276.P5953711117161583423

namespace A055276

/-- `A159075(n)+11*a(A023443(n))` -/
def P5953711117161583423.Spec : Prop :=
  ∀ n, P5953711117161583423.a n = A055276 n

end A055276

/-!
# A055277: Triangle T(n,k) of number of rooted trees with n nodes and k leaves, 1 <= k <= n.

The programs for A055277, there is no canonical definition to state claims against.
-/

/-! ## A055277.P18397103168328021249

`A358575(∑[char[∑[n]]]²-n)`
-/

namespace A055277.P18397103168328021249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358575 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A055277.P18397103168328021249

/-! ## A055277.P11886497927790429435

`or(char[1], A358575(A038722(n+1)))`
-/

namespace A055277.P11886497927790429435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A358575 (A038722 (n + 1)).toNat)

end

end A055277.P11886497927790429435

/-! ## A055277.P10843125332362319689

`char[A057502(n)]*A358575(A038722(n+1))`
-/

namespace A055277.P10843125332362319689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A358575 (A038722 (n + 1)).toNat

end

end A055277.P10843125332362319689

/-! ## A055277.P9194579687091103353

`A358575(A038722(n+1))%∑[A000032(n)]`
-/

namespace A055277.P9194579687091103353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358575 (A038722 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055277.P9194579687091103353

/-! ## A055277.P4492553716745028250

`A358575(A038722(n+1))+A000007(3*n+4)`
-/

namespace A055277.P4492553716745028250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358575 (A038722 (n + 1)).toNat + A000007 (3 * n + 4)

end

end A055277.P4492553716745028250

/-! ## A055277.P1261248075790551444

`A047996(A000120(n))*A358575(A038722(n+1))`
-/

namespace A055277.P1261248075790551444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000120 n).toNat * A358575 (A038722 (n + 1)).toNat

end

end A055277.P1261248075790551444

/-! ## A055277.P11424680698878431959

`A000120(A046213(2*(n+2)))*A358575(A038722(n+1))`
-/

namespace A055277.P11424680698878431959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A046213 (2 * (n + 2))).toNat * A358575 (A038722 (n + 1)).toNat

end

end A055277.P11424680698878431959

/-!
# A055278: Number of rooted trees with n nodes and 3 leaves.

The programs for A055278, the canonical program `A055278.P16689247859635371740` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055278 has offset 4).

The definition of A055278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055278.P16689247859635371740

`∑[∑[∑[n-a(n-gcd(3, n))]]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055278

/-- `∑[∑[∑[n-a(n-gcd(3, n))]]]` -/
def P16689247859635371740.Spec : Prop :=
  ∀ n, P16689247859635371740.a n = A055278 (n + 4)

theorem P16689247859635371740.correct : P16689247859635371740.Spec := by
  intro n
  simp only [A055278, Nat.add_sub_cancel]

end A055278

/-! ## A055278.P3558609625646662145

`∑[∑[A212986(n)]]`
-/

namespace A055278.P3558609625646662145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P3558609625646662145

namespace A055278

/-- `∑[∑[A212986(n)]]` -/
def P3558609625646662145.Spec : Prop :=
  ∀ n, P3558609625646662145.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P2317042781498335292

`∑[A002623(n)-∑[ceil(n/3)]]`
-/

namespace A055278.P2317042781498335292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P2317042781498335292

namespace A055278

/-- `∑[A002623(n)-∑[ceil(n/3)]]` -/
def P2317042781498335292.Spec : Prop :=
  ∀ n, P2317042781498335292.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P3756586900310359702

`∑[A014126(n)+∑[round(n²/12)]]`
-/

namespace A055278.P3756586900310359702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P3756586900310359702

namespace A055278

/-- `∑[A014126(n)+∑[round(n²/12)]]` -/
def P3756586900310359702.Spec : Prop :=
  ∀ n, P3756586900310359702.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P4884359022140496037

`A001752(n)-∑[A001840(n)]`
-/

namespace A055278.P4884359022140496037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P4884359022140496037

namespace A055278

/-- `A001752(n)-∑[A001840(n)]` -/
def P4884359022140496037.Spec : Prop :=
  ∀ n, P4884359022140496037.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P3866379785426180094

`A216172(n+1)+A057524(n)`
-/

namespace A055278.P3866379785426180094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (n + 1) + A057524 n

end

end A055278.P3866379785426180094

namespace A055278

/-- `A216172(n+1)+A057524(n)` -/
def P3866379785426180094.Spec : Prop :=
  ∀ n, P3866379785426180094.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P8062727458918064211

`A055341(n+4)-A181120(n)`
-/

namespace A055278.P8062727458918064211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055341 (n + 4) - A181120 n

end

end A055278.P8062727458918064211

namespace A055278

/-- `A055341(n+4)-A181120(n)` -/
def P8062727458918064211.Spec : Prop :=
  ∀ n, P8062727458918064211.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P11288894682553752602

`∑[A007980(n)+∑[A002620(n)]]`
-/

namespace A055278.P11288894682553752602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P11288894682553752602

namespace A055278

/-- `∑[A007980(n)+∑[A002620(n)]]` -/
def P11288894682553752602.Spec : Prop :=
  ∀ n, P11288894682553752602.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P1661479569334384300

`∑[∑[A117573(n)-A008615(n)]]`
-/

namespace A055278.P1661479569334384300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117573 n - A008615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P1661479569334384300

namespace A055278

/-- `∑[∑[A117573(n)-A008615(n)]]` -/
def P1661479569334384300.Spec : Prop :=
  ∀ n, P1661479569334384300.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P4655606986602680316

`A007009(n+1)+A000601(n)-A002624(n)`
-/

namespace A055278.P4655606986602680316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007009 (n + 1) + (A000601 n - A002624 n)

end

end A055278.P4655606986602680316

namespace A055278

/-- `A007009(n+1)+A000601(n)-A002624(n)` -/
def P4655606986602680316.Spec : Prop :=
  ∀ n, P4655606986602680316.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P231534426620422969

`∑[∑[round(A227017(n+2)/6)]]`
-/

namespace A055278.P231534426620422969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A227017 (n + 2) : ℚ) / 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P231534426620422969

namespace A055278

/-- `∑[∑[round(A227017(n+2)/6)]]` -/
def P231534426620422969.Spec : Prop :=
  ∀ n, P231534426620422969.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P14690184685697187797

`∑[∑[round(A056109(n+1)/12)]]`
-/

namespace A055278.P14690184685697187797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056109 (n + 1) : ℚ) / 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P14690184685697187797

namespace A055278

/-- `∑[∑[round(A056109(n+1)/12)]]` -/
def P14690184685697187797.Spec : Prop :=
  ∀ n, P14690184685697187797.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P12864580192951408515

`A216172(n+1)+A001752(n)-A216172(n+2)`
-/

namespace A055278.P12864580192951408515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (n + 1) + (A001752 n - A216172 (n + 2))

end

end A055278.P12864580192951408515

namespace A055278

/-- `A216172(n+1)+A001752(n)-A216172(n+2)` -/
def P12864580192951408515.Spec : Prop :=
  ∀ n, P12864580192951408515.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P10703655955167221450

`∑[∑[A008797(2*n)-A008615(2*n)]]`
-/

namespace A055278.P10703655955167221450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (2 * n) - A008615 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P10703655955167221450

namespace A055278

/-- `∑[∑[A008797(2*n)-A008615(2*n)]]` -/
def P10703655955167221450.Spec : Prop :=
  ∀ n, P10703655955167221450.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P7772972690907657277

`∑[∑[A008733(2*n)-A112689(2*n)]]`
-/

namespace A055278.P7772972690907657277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (2 * n) - A112689 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P7772972690907657277

namespace A055278

/-- `∑[∑[A008733(2*n)-A112689(2*n)]]` -/
def P7772972690907657277.Spec : Prop :=
  ∀ n, P7772972690907657277.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P7096179615772136707

`∑[∑[A008797(2*n+1)+A004396(n+1)]]`
-/

namespace A055278.P7096179615772136707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (2 * n + 1) + A004396 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P7096179615772136707

namespace A055278

/-- `∑[∑[A008797(2*n+1)+A004396(n+1)]]` -/
def P7096179615772136707.Spec : Prop :=
  ∀ n, P7096179615772136707.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P2461666420526895698

`∑[A026810(2*n+1)+∑[A266755(2*n)]]`
-/

namespace A055278.P2461666420526895698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P2461666420526895698

namespace A055278

/-- `∑[A026810(2*n+1)+∑[A266755(2*n)]]` -/
def P2461666420526895698.Spec : Prop :=
  ∀ n, P2461666420526895698.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P12144266762542460915

`∑[∑[A001399(2*n)-A005044(2*n+1)]]`
-/

namespace A055278.P12144266762542460915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) - A005044 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P12144266762542460915

namespace A055278

/-- `∑[∑[A001399(2*n)-A005044(2*n+1)]]` -/
def P12144266762542460915.Spec : Prop :=
  ∀ n, P12144266762542460915.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P15653768436065781317

`∑[∑[A008733(2*n)]-A008731(2*n+1)]`
-/

namespace A055278.P15653768436065781317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P15653768436065781317

namespace A055278

/-- `∑[∑[A008733(2*n)]-A008731(2*n+1)]` -/
def P15653768436065781317.Spec : Prop :=
  ∀ n, P15653768436065781317.a n = A055278 (n + 4)

end A055278

/-! ## A055278.P8497492104754094168

`∑[∑[A001399(2*n)-A266755(2*n+1)]]`
-/

namespace A055278.P8497492104754094168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) - A266755 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055278.P8497492104754094168

namespace A055278

/-- `∑[∑[A001399(2*n)-A266755(2*n+1)]]` -/
def P8497492104754094168.Spec : Prop :=
  ∀ n, P8497492104754094168.a n = A055278 (n + 4)

end A055278

/-!
# A055279: Number of rooted trees with n nodes and 4 leaves.

The programs for A055279, there is no canonical definition to state claims against.
-/

/-! ## A055279.P14304838217829618369

`A055277(A145018(n+5))`
-/

namespace A055279.P14304838217829618369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A145018 (n + 5)).toNat

end

end A055279.P14304838217829618369

/-! ## A055279.P1553229507256802691

`A055277(A155212(n)+12)`
-/

namespace A055279.P1553229507256802691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A155212 n + 12).toNat

end

end A055279.P1553229507256802691

/-! ## A055279.P17342787833234641857

`record[A055277(A077169(n)-n)]`
-/

namespace A055279.P17342787833234641857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055279.P17342787833234641857

/-! ## A055279.P12074553008817097355

`A055277(A167499(n+3)-1)`
-/

namespace A055279.P12074553008817097355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A167499 (n + 3) - 1).toNat

end

end A055279.P12074553008817097355

/-! ## A055279.P14417062931601425599

`A055277(A000124(n+4)+3)`
-/

namespace A055279.P14417062931601425599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000124 (n + 4) + 3).toNat

end

end A055279.P14417062931601425599

/-!
# A055280: Number of rooted trees with n nodes and 5 leaves.

The programs for A055280, there is no canonical definition to state claims against.
-/

/-! ## A055280.P8777030368416920089

`record[A055277(A077169(n))]`
-/

namespace A055280.P8777030368416920089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055280.P8777030368416920089

/-! ## A055280.P14592155432639656774

`A055277(A167499(n+4))`
-/

namespace A055280.P14592155432639656774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A167499 (n + 4)).toNat

end

end A055280.P14592155432639656774

/-! ## A055280.P12533334440153882696

`A055277(A077169(n+6))`
-/

namespace A055280.P12533334440153882696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A077169 (n + 6)).toNat

end

end A055280.P12533334440153882696

/-! ## A055280.P1183435009236170534

`A055277(A056115(n)+20)`
-/

namespace A055280.P1183435009236170534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A056115 n + 20).toNat

end

end A055280.P1183435009236170534

/-! ## A055280.P4509726183289313861

`A055277(A000217(n+5)+5)`
-/

namespace A055280.P4509726183289313861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000217 (n + 5) + 5).toNat

end

end A055280.P4509726183289313861

/-!
# A055281: Number of rooted trees with n nodes and 6 leaves.

The programs for A055281, there is no canonical definition to state claims against.
-/

/-! ## A055281.P13536697735450653928

`A055277(A166136(n+5))`
-/

namespace A055281.P13536697735450653928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A166136 (n + 5)).toNat

end

end A055281.P13536697735450653928

/-! ## A055281.P10320965473101491060

`A055277(A056119(n)+27)`
-/

namespace A055281.P10320965473101491060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A056119 n + 27).toNat

end

end A055281.P10320965473101491060

/-! ## A055281.P9680635063588037169

`A055277(eq[6, A002262(n)])`
-/

namespace A055281.P9680635063588037169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055281.P9680635063588037169

/-! ## A055281.P968689929872557073

`record[A055277(A155212(n)+14)]`
-/

namespace A055281.P968689929872557073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A155212 n + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055281.P968689929872557073

/-! ## A055281.P17100434823720436855

`A055277(A000124(n+6)+5)`
-/

namespace A055281.P17100434823720436855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000124 (n + 6) + 5).toNat

end

end A055281.P17100434823720436855

/-!
# A055282: Number of rooted trees with n nodes and 7 leaves.

The programs for A055282, there is no canonical definition to state claims against.
-/

/-! ## A055282.P8385382044362012798

`A055277(A167487(n+6))`
-/

namespace A055282.P8385382044362012798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A167487 (n + 6)).toNat

end

end A055282.P8385382044362012798

/-! ## A055282.P17074547277598453814

`A055277(eq[7, A002262(n)])`
-/

namespace A055282.P17074547277598453814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055282.P17074547277598453814

/-! ## A055282.P12408302211243946729

`A055277(A000217(n+7)+7)`
-/

namespace A055282.P12408302211243946729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000217 (n + 7) + 7).toNat

end

end A055282.P12408302211243946729

/-! ## A055282.P6310366074990895660

`A055277(eq[8, A002260(n+1)])`
-/

namespace A055282.P6310366074990895660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055282.P6310366074990895660

/-! ## A055282.P15271943764644025106

`A055277(eq[19, A037126(n+1)])`
-/

namespace A055282.P15271943764644025106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055282.P15271943764644025106

/-!
# A055283: Number of rooted trees with n nodes and 8 leaves.

The programs for A055283, there is no canonical definition to state claims against.
-/

/-! ## A055283.P8184177737047514485

`A055277(A167614(n+7)+5)`
-/

namespace A055283.P8184177737047514485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A167614 (n + 7) + 5).toNat

end

end A055283.P8184177737047514485

/-! ## A055283.P11509207736615461466

`A055277(A000096(n+7)+9)`
-/

namespace A055283.P11509207736615461466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000096 (n + 7) + 9).toNat

end

end A055283.P11509207736615461466

/-! ## A055283.P6158978794300434147

`A055277(A000217(n+8)+8)`
-/

namespace A055283.P6158978794300434147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000217 (n + 8) + 8).toNat

end

end A055283.P6158978794300434147

/-! ## A055283.P7819496866485055437

`record[A055277(∑[A160755(n+1)])]`
-/

namespace A055283.P7819496866485055437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055283.P7819496866485055437

/-! ## A055283.P10024565509353358020

`A055277(A052905(n+7)-5-A005408(n))`
-/

namespace A055283.P10024565509353358020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A052905 (n + 7) - 5 - A005408 n).toNat

end

end A055283.P10024565509353358020

/-!
# A055284: Number of rooted trees with n nodes and 9 leaves.

The programs for A055284, there is no canonical definition to state claims against.
-/

/-! ## A055284.P7099366444831280114

`A055277(A000096(n+8)+10)`
-/

namespace A055284.P7099366444831280114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000096 (n + 8) + 10).toNat

end

end A055284.P7099366444831280114

/-! ## A055284.P17484330335195392576

`A055277(A027379(n+7)+12)`
-/

namespace A055284.P17484330335195392576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A027379 (n + 7) + 12).toNat

end

end A055284.P17484330335195392576

/-! ## A055284.P3838557260645636256

`A055277(A052905(n+7)-(n-4))`
-/

namespace A055284.P3838557260645636256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A052905 (n + 7) - ((n : ℤ) - 4)).toNat

end

end A055284.P3838557260645636256

/-! ## A055284.P5270991937910568572

`record[A055277(∑[A160755(n+1)]+1)]`
-/

namespace A055284.P5270991937910568572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055284.P5270991937910568572

/-! ## A055284.P12821853275331027246

`A055277(A000217(n+11)-11-A005408(n))`
-/

namespace A055284.P12821853275331027246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000217 (n + 11) - 11 - A005408 n).toNat

end

end A055284.P12821853275331027246

/-!
# A055285: Number of rooted trees with n nodes and 10 leaves.

The programs for A055285, there is no canonical definition to state claims against.
-/

/-! ## A055285.P13851486181772329394

`A055277(eq[10, A002262(n)])`
-/

namespace A055285.P13851486181772329394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055285.P13851486181772329394

/-! ## A055285.P11140615188981745063

`A055277(A000124(n+10)+9)`
-/

namespace A055285.P11140615188981745063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000124 (n + 10) + 9).toNat

end

end A055285.P11140615188981745063

/-! ## A055285.P98014577688627889

`A055277(A253145(n+9)+10)`
-/

namespace A055285.P98014577688627889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A253145 (n + 9) + 10).toNat

end

end A055285.P98014577688627889

/-! ## A055285.P10631184049210078464

`A055277(A000217(n+10)+10)`
-/

namespace A055285.P10631184049210078464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A000217 (n + 10) + 10).toNat

end

end A055285.P10631184049210078464

/-! ## A055285.P13624391733346396484

`A055277(A052905(n+7)+15)`
-/

namespace A055285.P13624391733346396484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A052905 (n + 7) + 15).toNat

end

end A055285.P13624391733346396484

/-!
# A055286: Number of rooted trees with n nodes and 11 leaves.

The programs for A055286, there is no canonical definition to state claims against.
-/

/-! ## A055286.P8845646552452425962

`A055277(eq[11, A002262(n)])`
-/

namespace A055286.P8845646552452425962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055286.P8845646552452425962

/-! ## A055286.P13236359642747899166

`A055277(eq[11, A191532(n)])`
-/

namespace A055286.P13236359642747899166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055286.P13236359642747899166

/-! ## A055286.P10252125681505930237

`A055277(eq[11, A144328(n+1)])`
-/

namespace A055286.P10252125681505930237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055286.P10252125681505930237

/-! ## A055286.P13487396926737406409

`A055277(eq[12, A002260(n+1)])`
-/

namespace A055286.P13487396926737406409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055286.P13487396926737406409

/-! ## A055286.P1987062238680148909

`A055277(record[A257506(n+14)]-n-1)`
-/

namespace A055286.P1987062238680148909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257506 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) - 1).toNat

end

end A055286.P1987062238680148909

/-!
# A055287: Number of rooted trees with n nodes and 12 leaves.

The programs for A055287, there is no canonical definition to state claims against.
-/

/-! ## A055287.P14732714501463625402

`A055277(eq[12, A002262(n)])`
-/

namespace A055287.P14732714501463625402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055287.P14732714501463625402

/-! ## A055287.P14951744483227753890

`A055277(eq[12, A130270(n+1)])`
-/

namespace A055287.P14951744483227753890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055287.P14951744483227753890

/-! ## A055287.P14162678614906543353

`A055277(eq[12, A144328(n+1)])`
-/

namespace A055287.P14162678614906543353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055287.P14162678614906543353

/-! ## A055287.P10676603774453893256

`A055277(eq[13, A002260(n+1)])`
-/

namespace A055287.P10676603774453893256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055287.P10676603774453893256

/-! ## A055287.P7512765129878133694

`A055277(eq[13, A135223(n+1)])`
-/

namespace A055287.P7512765129878133694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055287.P7512765129878133694

/-!
# A055288: Matrix inverse of triangle A055277(n+1,k).

The programs for A055288, there is no canonical definition to state claims against.
-/

/-! ## A055288.P14192485349915221292

`A185284(A002125(n))+A055347(n+1)`
-/

namespace A055288.P14192485349915221292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A002125 n).toNat + A055347 (n + 1)

end

end A055288.P14192485349915221292

/-! ## A055288.P16030922262580089470

`A151755(A159287(n))+A055347(n+1)`
-/

namespace A055288.P16030922262580089470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A159287 n).toNat + A055347 (n + 1)

end

end A055288.P16030922262580089470

/-! ## A055288.P6332325271791770258

`A185284(A282504(n))+A055347(n+1)`
-/

namespace A055288.P6332325271791770258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A282504 n).toNat + A055347 (n + 1)

end

end A055288.P6332325271791770258

/-! ## A055288.P2978137761376710095

`or(A008683(A146205(n)), A055347(n+1))`
-/

namespace A055288.P2978137761376710095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A146205 n).toNat) (A055347 (n + 1))

end

end A055288.P2978137761376710095

/-! ## A055288.P1592802314590663707

`or(A055347(n+1), A124761(A185043(n)))`
-/

namespace A055288.P1592802314590663707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055347 (n + 1)) (A124761 (A185043 n).toNat)

end

end A055288.P1592802314590663707

/-!
# A055289: Column 1 of triangle A055288.

The programs for A055289, there is no canonical definition to state claims against.
-/

/-! ## A055289.P14921862058718831480

`A055288(∑[n]+1)`
-/

namespace A055289.P14921862058718831480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055288 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055289.P14921862058718831480

/-! ## A055289.P7609617082088293199

`or(C(2, n), A055288(A000124(n)))`
-/

namespace A055289.P7609617082088293199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A055288 (A000124 n).toNat)

end

end A055289.P7609617082088293199

/-! ## A055289.P3400088578737553896

`A055288(A000124(n))+A025443(n)`
-/

namespace A055289.P3400088578737553896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055288 (A000124 n).toNat + A025443 n

end

end A055289.P3400088578737553896

/-! ## A055289.P13888547479366266099

`A185284(n)+A055288(A000124(n))`
-/

namespace A055289.P13888547479366266099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A055288 (A000124 n).toNat

end

end A055289.P13888547479366266099

/-! ## A055289.P2283093671480156606

`or(A000007(n), A055288(A000124(n)))`
-/

namespace A055289.P2283093671480156606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055288 (A000124 n).toNat)

end

end A055289.P2283093671480156606

/-!
# A055290: Triangle of trees with n nodes and k leaves, 2 <= k <= n.

The programs for A055290, there is no canonical definition to state claims against.
-/

/-! ## A055290.P9432645155994388580

`A106493(A361870(n))`
-/

namespace A055290.P9432645155994388580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106493 (A361870 n).toNat

end

end A055290.P9432645155994388580

/-! ## A055290.P459008993086620372

`∑{e}[A000712(A331436(n)), #]`
-/

namespace A055290.P459008993086620372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A331436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A055290.P459008993086620372

/-! ## A055290.P1394319867467660315

`A336123(2^A055277(n+1))`
-/

namespace A055290.P1394319867467660315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A055277 (n + 1) : ℤ))).toNat

end

end A055290.P1394319867467660315

/-! ## A055290.P16773345897797127873

`A339894(2^A055277(n+1))`
-/

namespace A055290.P16773345897797127873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A055277 (n + 1) : ℤ))).toNat

end

end A055290.P16773345897797127873

/-! ## A055290.P17827451260954847983

`A380891(A175197(n))`
-/

namespace A055290.P17827451260954847983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380891 (A175197 n).toNat

end

end A055290.P17827451260954847983

/-!
# A055291: Number of trees with n nodes and 4 leaves.

The programs for A055291, the canonical program `A055291.P5946789587195546367` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055291 has offset 5).

The definition of A055291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055291.P5946789587195546367

`∑[A008766(n)+∑[A005044(n)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055291

/-- `∑[A008766(n)+∑[A005044(n)]]` -/
def P5946789587195546367.Spec : Prop :=
  ∀ n, P5946789587195546367.a n = A055291 (n + 5)

theorem P5946789587195546367.correct : P5946789587195546367.Spec := by
  intro n
  simp only [A055291, Nat.add_sub_cancel]

end A055291

/-! ## A055291.P11122962100562287593

`∑[A026810(n+1)+A008766(n)]`
-/

namespace A055291.P11122962100562287593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + A008766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P11122962100562287593

namespace A055291

/-- `∑[A026810(n+1)+A008766(n)]` -/
def P11122962100562287593.Spec : Prop :=
  ∀ n, P11122962100562287593.a n = A055291 (n + 5)

end A055291

/-! ## A055291.P10483167060927735415

`∑[A008763(n+1)+A001400(n)]`
-/

namespace A055291.P10483167060927735415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P10483167060927735415

namespace A055291

/-- `∑[A008763(n+1)+A001400(n)]` -/
def P10483167060927735415.Spec : Prop :=
  ∀ n, P10483167060927735415.a n = A055291 (n + 5)

end A055291

/-! ## A055291.P14276566760631923499

`∑[A008763(n+1)+∑[A266755(n)]]`
-/

namespace A055291.P14276566760631923499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P14276566760631923499

namespace A055291

/-- `∑[A008763(n+1)+∑[A266755(n)]]` -/
def P14276566760631923499.Spec : Prop :=
  ∀ n, P14276566760631923499.a n = A055291 (n + 5)

end A055291

/-! ## A055291.P16092381445208385896

`∑[A008763(n+1)+A026810(n)+A001399(n)]`
-/

namespace A055291.P16092381445208385896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + (A026810 n + A001399 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P16092381445208385896

namespace A055291

/-- `∑[A008763(n+1)+A026810(n)+A001399(n)]` -/
def P16092381445208385896.Spec : Prop :=
  ∀ n, P16092381445208385896.a n = A055291 (n + 5)

end A055291

/-! ## A055291.P2383448728555319586

`∑[A008763(n+1)+A001401(n)-A026811(n)]`
-/

namespace A055291.P2383448728555319586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + (A001401 n - A026811 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P2383448728555319586

namespace A055291

/-- `∑[A008763(n+1)+A001401(n)-A026811(n)]` -/
def P2383448728555319586.Spec : Prop :=
  ∀ n, P2383448728555319586.a n = A055291 (n + 5)

end A055291

/-! ## A055291.P13822606798739482408

`∑[A008763(n+1)+∑[A005044(n+3)]]`
-/

namespace A055291.P13822606798739482408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P13822606798739482408

namespace A055291

/-- `∑[A008763(n+1)+∑[A005044(n+3)]]` -/
def P13822606798739482408.Spec : Prop :=
  ∀ n, P13822606798739482408.a n = A055291 (n + 5)

end A055291

/-! ## A055291.P10406291509460811722

`∑[A008763(n+1)+A026810(n+4)]`
-/

namespace A055291.P10406291509460811722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + A026810 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P10406291509460811722

namespace A055291

/-- `∑[A008763(n+1)+A026810(n+4)]` -/
def P10406291509460811722.Spec : Prop :=
  ∀ n, P10406291509460811722.a n = A055291 (n + 5)

end A055291

/-!
# A055292: Number of trees with n nodes and 5 leaves.

The programs for A055292, there is no canonical definition to state claims against.
-/

/-! ## A055292.P416492072302112087

`record[A055290(A167499(n))]`
-/

namespace A055292.P416492072302112087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055292.P416492072302112087

/-! ## A055292.P16598779080040556534

`A055290(A167499(n+3))`
-/

namespace A055292.P16598779080040556534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167499 (n + 3)).toNat

end

end A055292.P16598779080040556534

/-! ## A055292.P6761888892373554179

`A055290(A155212(n)+13)`
-/

namespace A055292.P6761888892373554179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A155212 n + 13).toNat

end

end A055292.P6761888892373554179

/-! ## A055292.P8897268557002536599

`A055290(A027379(n+2)+8)`
-/

namespace A055292.P8897268557002536599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A027379 (n + 2) + 8).toNat

end

end A055292.P8897268557002536599

/-!
# A055293: Number of trees with n nodes and 6 leaves.

The programs for A055293, there is no canonical definition to state claims against.
-/

/-! ## A055293.P9231418016419166174

`A055290(A166136(n+4))`
-/

namespace A055293.P9231418016419166174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A166136 (n + 4)).toNat

end

end A055293.P9231418016419166174

/-! ## A055293.P17985296016344268723

`A055290(A056115(n)+21)`
-/

namespace A055293.P17985296016344268723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A056115 n + 21).toNat

end

end A055293.P17985296016344268723

/-! ## A055293.P10617879334925167625

`record[A055290(A167499(n)-n)]`
-/

namespace A055293.P10617879334925167625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167499 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055293.P10617879334925167625

/-! ## A055293.P13333108883571179046

`record[A055290(A167614(n+1)+3)]`
-/

namespace A055293.P13333108883571179046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167614 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055293.P13333108883571179046

/-!
# A055294: Number of trees with n nodes and 7 leaves.

The programs for A055294, there is no canonical definition to state claims against.
-/

/-! ## A055294.P12877846556672636248

`A055290(A167499(n+5)+2)`
-/

namespace A055294.P12877846556672636248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167499 (n + 5) + 2).toNat

end

end A055294.P12877846556672636248

/-! ## A055294.P7156095101713350393

`A055290(A167614(n+5)+4)`
-/

namespace A055294.P7156095101713350393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167614 (n + 5) + 4).toNat

end

end A055294.P7156095101713350393

/-! ## A055294.P4587601417279289207

`A055290(A152950(n+7)+4)`
-/

namespace A055294.P4587601417279289207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A152950 (n + 7) + 4).toNat

end

end A055294.P4587601417279289207

/-! ## A055294.P940090463180660772

`A055290(A253145(n+5)+7)`
-/

namespace A055294.P940090463180660772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A253145 (n + 5) + 7).toNat

end

end A055294.P940090463180660772

/-! ## A055294.P15512143213577933135

`A055290(A000217(n+6)+7)`
-/

namespace A055294.P15512143213577933135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000217 (n + 6) + 7).toNat

end

end A055294.P15512143213577933135

/-!
# A055295: Number of trees with n nodes and 8 leaves.

The programs for A055295, there is no canonical definition to state claims against.
-/

/-! ## A055295.P16619211579379134886

`A055290(A167499(n+6)+3)`
-/

namespace A055295.P16619211579379134886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167499 (n + 6) + 3).toNat

end

end A055295.P16619211579379134886

/-! ## A055295.P4987987730461709201

`A055290(A000217(n+7)+8)`
-/

namespace A055295.P4987987730461709201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000217 (n + 7) + 8).toNat

end

end A055295.P4987987730461709201

/-! ## A055295.P2667626080627061044

`A055290(eq[9, A131818(n+1)])`
-/

namespace A055295.P2667626080627061044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055295.P2667626080627061044

/-! ## A055295.P516360645484647322

`A055290(A000096(n+7)-(n-1))`
-/

namespace A055295.P516360645484647322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A055295.P516360645484647322

/-! ## A055295.P16612626980777501646

`A055290(A000124(n+8)-(n+1))`
-/

namespace A055295.P16612626980777501646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A055295.P16612626980777501646

/-!
# A055296: Number of trees with n nodes and 9 leaves.

The programs for A055296, there is no canonical definition to state claims against.
-/

/-! ## A055296.P12588050434794112164

`record[A055290(A167499(n)+4)]`
-/

namespace A055296.P12588050434794112164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167499 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055296.P12588050434794112164

/-! ## A055296.P8654779982812818053

`A055290(A167499(n+7)+4)`
-/

namespace A055296.P8654779982812818053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167499 (n + 7) + 4).toNat

end

end A055296.P8654779982812818053

/-! ## A055296.P8662358524791089871

`A055290(A000217(n+8)+9)`
-/

namespace A055296.P8662358524791089871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000217 (n + 8) + 9).toNat

end

end A055296.P8662358524791089871

/-! ## A055296.P16265571117259280155

`record[A055290(A166136(n+1)+3)]`
-/

namespace A055296.P16265571117259280155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A166136 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055296.P16265571117259280155

/-! ## A055296.P15698485903553356067

`record[A055290(A167614(n+1)+6)]`
-/

namespace A055296.P15698485903553356067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A167614 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055296.P15698485903553356067

/-!
# A055297: Number of trees with n nodes and 10 leaves.

The programs for A055297, there is no canonical definition to state claims against.
-/

/-! ## A055297.P18270858405305528682

`A055290(A000217(n+9)+10)`
-/

namespace A055297.P18270858405305528682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000217 (n + 9) + 10).toNat

end

end A055297.P18270858405305528682

/-! ## A055297.P3180380357615402490

`A055290(A008458(n+8)+A000124(n+3))`
-/

namespace A055297.P3180380357615402490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A008458 (n + 8) + A000124 (n + 3)).toNat

end

end A055297.P3180380357615402490

/-! ## A055297.P16424182660343484390

`A055290(A133263(n+5)+A016825(n+9))`
-/

namespace A055297.P16424182660343484390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A133263 (n + 5) + A016825 (n + 9)).toNat

end

end A055297.P16424182660343484390

/-! ## A055297.P1616708527441064193

`A055290(A002620(n+5)+A002620(n+14))`
-/

namespace A055297.P1616708527441064193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A002620 (n + 5) + A002620 (n + 14)).toNat

end

end A055297.P1616708527441064193

/-! ## A055297.P4223177398586285110

`A055290(A000096(n+11)-A033627(n+9))`
-/

namespace A055297.P4223177398586285110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000096 (n + 11) - A033627 (n + 9)).toNat

end

end A055297.P4223177398586285110

/-!
# A055298: Number of trees with n nodes and 11 leaves.

The programs for A055298, there is no canonical definition to state claims against.
-/

/-! ## A055298.P11753399615591530223

`A055290(eq[19, A066657(n)])`
-/

namespace A055298.P11753399615591530223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055298.P11753399615591530223

/-! ## A055298.P3654170103404402969

`A055290(A000217(n+10)+11)`
-/

namespace A055298.P3654170103404402969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000217 (n + 10) + 11).toNat

end

end A055298.P3654170103404402969

/-! ## A055298.P17044719971260025997

`A055290(eq[10, A002262(n)]+1)`
-/

namespace A055298.P17044719971260025997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055298.P17044719971260025997

/-! ## A055298.P14455271472370841662

`A055290(eq[12, A131818(n+1)])`
-/

namespace A055298.P14455271472370841662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055298.P14455271472370841662

/-!
# A055299: Number of trees with n nodes and 12 leaves.

The programs for A055299, there is no canonical definition to state claims against.
-/

/-! ## A055299.P13107139493906954905

`A055290(A000217(n+11)+12)`
-/

namespace A055299.P13107139493906954905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A000217 (n + 11) + 12).toNat

end

end A055299.P13107139493906954905

/-! ## A055299.P2484844547753723698

`A055290(eq[13, A131818(n+1)])`
-/

namespace A055299.P2484844547753723698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055299.P2484844547753723698

/-! ## A055299.P4834631313346379790

`A055290(record[A257506(n+14)]-n)`
-/

namespace A055299.P4834631313346379790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257506 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A055299.P4834631313346379790

/-! ## A055299.P586346106032286603

`A055290(A017053(n+9)+A000096(n+3))`
-/

namespace A055299.P586346106032286603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A017053 (n + 9) + A000096 (n + 3)).toNat

end

end A055299.P586346106032286603

/-! ## A055299.P16406188772091296919

`A055290(A033627(n+16)+A000096(n+7))`
-/

namespace A055299.P16406188772091296919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (A033627 (n + 16) + A000096 (n + 7)).toNat

end

end A055299.P16406188772091296919

