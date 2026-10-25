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
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
# A333801: Numbers k such that A008475(k)+1 = A008475(k+1).

The programs for A333801, there is no canonical definition to state claims against.
-/

/-! ## A333801.P6241538535526868132

`eq[1, Δ[A008475(n+1)]]+1`
-/

namespace A333801.P6241538535526868132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333801.P6241538535526868132

/-! ## A333801.P9105892707156202494

`eq[1, Δ[A159077(n+1)]]+1`
-/

namespace A333801.P9105892707156202494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333801.P9105892707156202494

/-! ## A333801.P14227637327658915252

`eq[1, Δ[A008475(A028310(n))]]`
-/

namespace A333801.P14227637327658915252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333801.P14227637327658915252

/-! ## A333801.P6778783695062286719

`eq[A008475(n+1), A159077(A028310(n))]`
-/

namespace A333801.P6778783695062286719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333801.P6778783695062286719

/-! ## A333801.P10384015259234202278

`eq[A159077(A028310(n))+1, A159077(n+1)]`
-/

namespace A333801.P10384015259234202278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333801.P10384015259234202278

/-!
# A333803: Primes p such that 2*p+1 and 4*p^2+1 are also prime.

The programs for A333803, there is no canonical definition to state claims against.
-/

/-! ## A333803.P17489471477482918438

`∩[A005384(n+1), A052291(n+1)]`
-/

namespace A333803.P17489471477482918438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P17489471477482918438

/-! ## A333803.P6430490427682587236

`∩[A052291(n+1), A348511(n+1)]`
-/

namespace A333803.P6430490427682587236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P6430490427682587236

/-! ## A333803.P15077763912128851300

`∩[A052291(n+1), A364926(n+1)]`
-/

namespace A333803.P15077763912128851300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P15077763912128851300

/-! ## A333803.P6175072063456419967

`∩[A052291(n+1), A246857(n+1)]`
-/

namespace A333803.P6175072063456419967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P6175072063456419967

/-! ## A333803.P3434834976903483315

`∩[A052291(n+1), A259973(n+1)]`
-/

namespace A333803.P3434834976903483315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P3434834976903483315

/-! ## A333803.P8972350662268117107

`∩[A052291(n+1), A078762(n+1)]`
-/

namespace A333803.P8972350662268117107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P8972350662268117107

/-! ## A333803.P17444007441558229910

`∩[A014109(n+1), A052291(n+1)]`
-/

namespace A333803.P17444007441558229910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P17444007441558229910

/-! ## A333803.P6563298955514736096

`∩[A052291(n+1), A054639(n+1)]`
-/

namespace A333803.P6563298955514736096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333803.P6563298955514736096

/-!
# A333804: (1/16) times the number of permutations p of [n+2] such that |p(i+n) - p(i)| <> n for i in {1,2}.

The programs for A333804, there is no canonical definition to state claims against.
-/

/-! ## A333804.P7628284504742386994

`ceil(A215698(n+1)/comp[∑[n]])`
-/

namespace A333804.P7628284504742386994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215698 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ)⌉

end

end A333804.P7628284504742386994

/-! ## A333804.P14144642234159694587

`A167865(∏[a(n-1)+3])` with `a(0)=1, a(1)=1`
-/

namespace A333804.P14144642234159694587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A333804.P14144642234159694587

/-!
# A333805: Number of odd divisors of n that are < sqrt(n).

The programs for A333805, there is no canonical definition to state claims against.
-/

/-! ## A333805.P18313015019209433837

`∑{d}[n+1, #%2]-A341675(n+1)`
-/

namespace A333805.P18313015019209433837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) - A341675 (n + 1)

end

end A333805.P18313015019209433837

/-! ## A333805.P12376759103341543677

`A001227(n+1)-A341675(n+1)`
-/

namespace A333805.P12376759103341543677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A341675 (n + 1)

end

end A333805.P12376759103341543677

/-! ## A333805.P16691657095937098001

`∑{d}[n+1, A020639(3*#)-2]-A341675(n+1)`
-/

namespace A333805.P16691657095937098001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A020639 (3 * d) - 2) - A341675 (n + 1)

end

end A333805.P16691657095937098001

/-! ## A333805.P8019476076658957611

`A000005((n+1)/2^val(n+1, 2))-A341675(n+1)`
-/

namespace A333805.P8019476076658957611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - A341675 (n + 1)

end

end A333805.P8019476076658957611

/-! ## A333805.P457623177712132419

`A000005((n+1)/(or(n, n+1)-n))-A341675(n+1)`
-/

namespace A333805.P457623177712132419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat - A341675 (n + 1)

end

end A333805.P457623177712132419

/-! ## A333805.P17253223176277294891

`A000005(2*(n+1))-A000005(n+1)-A341675(n+1)`
-/

namespace A333805.P17253223176277294891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A000005 (n + 1) - A341675 (n + 1)

end

end A333805.P17253223176277294891

/-! ## A333805.P13595607878044134366

`and(A196655(n), A347142(n+1))`
-/

namespace A333805.P13595607878044134366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A347142 (n + 1))

end

end A333805.P13595607878044134366

/-! ## A333805.P8378331609948840881

`and(A196655(n), A347161(n+1))`
-/

namespace A333805.P8378331609948840881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A347161 (n + 1))

end

end A333805.P8378331609948840881

/-! ## A333805.P4449156892843717015

`and(A196655(n), A347172(n+1))`
-/

namespace A333805.P4449156892843717015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A347172 (n + 1))

end

end A333805.P4449156892843717015

/-! ## A333805.P11043718504534885874

`and(A193579(n), A347142(n+1))`
-/

namespace A333805.P11043718504534885874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193579 n) (A347142 (n + 1))

end

end A333805.P11043718504534885874

/-! ## A333805.P8324449639606761221

`and(A193579(n), A347161(n+1))`
-/

namespace A333805.P8324449639606761221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193579 n) (A347161 (n + 1))

end

end A333805.P8324449639606761221

/-! ## A333805.P3639507901480182222

`and(A193579(n), A347172(n+1))`
-/

namespace A333805.P3639507901480182222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193579 n) (A347172 (n + 1))

end

end A333805.P3639507901480182222

/-! ## A333805.P9327169181272417202

`and(A195463(n), A347142(n+1))`
-/

namespace A333805.P9327169181272417202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195463 n) (A347142 (n + 1))

end

end A333805.P9327169181272417202

/-! ## A333805.P151785864435464301

`and(A195463(n), A347161(n+1))`
-/

namespace A333805.P151785864435464301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195463 n) (A347161 (n + 1))

end

end A333805.P151785864435464301

/-! ## A333805.P15580132988406576751

`and(A195463(n), A347172(n+1))`
-/

namespace A333805.P15580132988406576751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195463 n) (A347172 (n + 1))

end

end A333805.P15580132988406576751

/-! ## A333805.P10139440816894559598

`and(A169727(n), A347142(n+1))`
-/

namespace A333805.P10139440816894559598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169727 n) (A347142 (n + 1))

end

end A333805.P10139440816894559598

/-! ## A333805.P10485895759434120636

`and(A169727(n), A347161(n+1))`
-/

namespace A333805.P10485895759434120636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169727 n) (A347161 (n + 1))

end

end A333805.P10485895759434120636

/-! ## A333805.P11333108177242690058

`and(A169727(n), A347172(n+1))`
-/

namespace A333805.P11333108177242690058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169727 n) (A347172 (n + 1))

end

end A333805.P11333108177242690058

/-!
# A333806: Number of distinct prime divisors of n that are < sqrt(n).

The programs for A333806, the canonical program `A333806.P3114427543706526191` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333806 has offset 1).

The definition of A333806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333806.P3114427543706526191

`A063962(A048671(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333806

/-- `A063962(A048671(n+1))` -/
def P3114427543706526191.Spec : Prop :=
  ∀ n, P3114427543706526191.a n = A333806 (n + 1)

theorem P3114427543706526191.correct : P3114427543706526191.Spec := by
  intro n
  simp only [A333806, Nat.add_sub_cancel]

end A333806

/-! ## A333806.P14526948651933585108

`A001221(n+1)-A341591(n+1)`
-/

namespace A333806.P14526948651933585108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A341591 (n + 1)

end

end A333806.P14526948651933585108

namespace A333806

/-- `A001221(n+1)-A341591(n+1)` -/
def P14526948651933585108.Spec : Prop :=
  ∀ n, P14526948651933585108.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P8361261655111728004

`A001221(n+1)-A010051(A033677(n+1))`
-/

namespace A333806.P8361261655111728004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A010051 (A033677 (n + 1)).toNat

end

end A333806.P8361261655111728004

namespace A333806

/-- `A001221(n+1)-A010051(A033677(n+1))` -/
def P8361261655111728004.Spec : Prop :=
  ∀ n, P8361261655111728004.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P18171635926785058490

`A001221(n+1)-A010051(A116548(n+1))`
-/

namespace A333806.P18171635926785058490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A010051 (A116548 (n + 1)).toNat

end

end A333806.P18171635926785058490

namespace A333806

/-- `A001221(n+1)-A010051(A116548(n+1))` -/
def P18171635926785058490.Spec : Prop :=
  ∀ n, P18171635926785058490.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P3401668483522964519

`A063962(A033677(n+1)*A060775(n+1))`
-/

namespace A333806.P3401668483522964519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A033677 (n + 1) * A060775 (n + 1)).toNat

end

end A333806.P3401668483522964519

namespace A333806

/-- `A063962(A033677(n+1)*A060775(n+1))` -/
def P3401668483522964519.Spec : Prop :=
  ∀ n, P3401668483522964519.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P17314712994302520931

`A063962(n+1)*A130543(A000005(n+1))`
-/

namespace A333806.P17314712994302520931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) * A130543 (A000005 (n + 1)).toNat

end

end A333806.P17314712994302520931

namespace A333806

/-- `A063962(n+1)*A130543(A000005(n+1))` -/
def P17314712994302520931.Spec : Prop :=
  ∀ n, P17314712994302520931.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P7665398691110752310

`A001222(A007947(n+1))-A010051(A033677(n+1))`
-/

namespace A333806.P7665398691110752310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat - A010051 (A033677 (n + 1)).toNat

end

end A333806.P7665398691110752310

namespace A333806

/-- `A001222(A007947(n+1))-A010051(A033677(n+1))` -/
def P7665398691110752310.Spec : Prop :=
  ∀ n, P7665398691110752310.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P8369097540646279384

`A001221(gcd(n+1, A324225(n+1)))`
-/

namespace A333806.P8369097540646279384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n + 1 : ℤ) (A324225 (n + 1)))

end

end A333806.P8369097540646279384

namespace A333806

/-- `A001221(gcd(n+1, A324225(n+1)))` -/
def P8369097540646279384.Spec : Prop :=
  ∀ n, P8369097540646279384.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P3828357851746163863

`∑{p}[A072499(A048671(n+1)), A048671(#)]`
-/

namespace A333806.P3828357851746163863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048671 p

end

end A333806.P3828357851746163863

namespace A333806

/-- `∑{p}[A072499(A048671(n+1)), A048671(#)]` -/
def P3828357851746163863.Spec : Prop :=
  ∀ n, P3828357851746163863.a n = A333806 (n + 1)

end A333806

/-! ## A333806.P17556087017716019250

`A001221(A363520(n+1))`
-/

namespace A333806.P17556087017716019250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A363520 (n + 1)).toNat

end

end A333806.P17556087017716019250

namespace A333806

/-- `A001221(A363520(n+1))` -/
def P17556087017716019250.Spec : Prop :=
  ∀ n, P17556087017716019250.a n = A333806 (n + 1)

end A333806

/-!
# A333807: Sum of odd divisors of n that are < sqrt(n).

The programs for A333807, there is no canonical definition to state claims against.
-/

/-! ## A333807.P685831598186888432

`A347162(n+1)%24`
-/

namespace A333807.P685831598186888432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347162 (n + 1)) 24

end

end A333807.P685831598186888432

/-! ## A333807.P7004394146090945326

`A069289(gcd(n+1, ∏{p}[n+1, (n+1)/#]))%∑{d}[n+1, #]`
-/

namespace A333807.P7004394146090945326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069289 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A333807.P7004394146090945326

/-! ## A333807.P4427827201610276189

`A069289(n+1)%((n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A333807.P4427827201610276189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069289 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)))

end

end A333807.P4427827201610276189

/-! ## A333807.P17012224388004582402

`A069289(n+1)%A018851(n+1)`
-/

namespace A333807.P17012224388004582402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069289 (n + 1)) (A018851 (n + 1))

end

end A333807.P17012224388004582402

/-! ## A333807.P18440918455568873218

`A069289(A048671(n+1))%(n+1)`
-/

namespace A333807.P18440918455568873218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069289 (A048671 (n + 1)).toNat) (n + 1 : ℤ)

end

end A333807.P18440918455568873218

/-! ## A333807.P18362290282446201957

`A069289(A048671(n+1))-A000007(n)`
-/

namespace A333807.P18362290282446201957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (A048671 (n + 1)).toNat - A000007 n

end

end A333807.P18362290282446201957

/-! ## A333807.P6684054433957124711

`A069289(A048671(n+1))-∏{d}[n, A001222(#)]`
-/

namespace A333807.P6684054433957124711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (A048671 (n + 1)).toNat - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A333807.P6684054433957124711

/-! ## A333807.P3196722974860767555

`and(1, A000040(n+1))*A069289(A048671(n+1))`
-/

namespace A333807.P3196722974860767555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A069289 (A048671 (n + 1)).toNat

end

end A333807.P3196722974860767555

/-! ## A333807.P7780441301665481318

`A069289(A048671(n+1))+A008683(2*(n+1)²)`
-/

namespace A333807.P7780441301665481318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (A048671 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A333807.P7780441301665481318

/-! ## A333807.P15632576546818372064

`A069289(n+1)%A128502(n)`
-/

namespace A333807.P15632576546818372064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069289 (n + 1)) (A128502 n)

end

end A333807.P15632576546818372064

/-!
# A333808: Sum of distinct prime divisors of n that are < sqrt(n).

The programs for A333808, there is no canonical definition to state claims against.
-/

/-! ## A333808.P12341102681325349572

`∑{p}[gcd(n+1, floor(sqrt(n))!), #]`
-/

namespace A333808.P12341102681325349572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial (Nat.sqrt n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A333808.P12341102681325349572

/-! ## A333808.P8544047176039929849

`∑{p}[n+1, 1-(#²-n)%#]`
-/

namespace A333808.P8544047176039929849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - Int.tmod ((p ^ 2 : ℤ) - (n : ℤ)) (p : ℤ))

end

end A333808.P8544047176039929849

/-! ## A333808.P14836950671974819826

`∑{p}[A363520(n+1), #]`
-/

namespace A333808.P14836950671974819826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A333808.P14836950671974819826

/-! ## A333808.P500113506963307948

`A008472(gcd(n+1, floor(sqrt(n))!))`
-/

namespace A333808.P500113506963307948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Nat.gcd (n + 1) (Nat.factorial (Nat.sqrt n)))

end

end A333808.P500113506963307948

/-! ## A333808.P5409243127364745768

`∑{p}[n+1, #]-A097975(n+1)`
-/

namespace A333808.P5409243127364745768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A097975 (n + 1)

end

end A333808.P5409243127364745768

/-! ## A333808.P16484743446102052641

`∑{p}[n+1, #%A033677(n+1)]`
-/

namespace A333808.P16484743446102052641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (p : ℤ) (A033677 (n + 1))

end

end A333808.P16484743446102052641

/-! ## A333808.P9453447701041689834

`A097974(A048671(n+1))`
-/

namespace A333808.P9453447701041689834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097974 (A048671 (n + 1)).toNat

end

end A333808.P9453447701041689834

/-! ## A333808.P4641453176362166744

`A008472(A363520(n+1))`
-/

namespace A333808.P4641453176362166744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A363520 (n + 1)).toNat

end

end A333808.P4641453176362166744

/-! ## A333808.P13306952246563225021

`A064264(A347157(n+1))`
-/

namespace A333808.P13306952246563225021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064264 (A347157 (n + 1)).toNat

end

end A333808.P13306952246563225021

/-! ## A333808.P3562728865191146397

`Δ[A024924(n)]-A097975(n+1)`
-/

namespace A333808.P3562728865191146397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A097975 (n + 1)

end

end A333808.P3562728865191146397

/-!
# A333809: G.f.: Sum_{k>=1} (-1)^(k + 1) * x^(k*(k + 1)) / (1 - x^k).

The programs for A333809, there is no canonical definition to state claims against.
-/

/-! ## A333809.P12946006421292116591

`A048272(n+1)-A348515(n+1)`
-/

namespace A333809.P12946006421292116591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A348515 (n + 1)

end

end A333809.P12946006421292116591

/-! ## A333809.P410676208894684026

`A333781(n+1)-A258998(n+1)`
-/

namespace A333809.P410676208894684026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (n + 1) - A258998 (n + 1)

end

end A333809.P410676208894684026

/-! ## A333809.P9481953472636301580

`Δ[A059851(n)]-A348515(n+1)`
-/

namespace A333809.P9481953472636301580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348515 (n + 1)

end

end A333809.P9481953472636301580

/-! ## A333809.P7521209616035080829

`2*A333805(n+1)-A056924(n+1)`
-/

namespace A333809.P7521209616035080829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333805 (n + 1) - A056924 (n + 1)

end

end A333809.P7521209616035080829

/-! ## A333809.P13707900907000082789

`A333781(n+1)-A048272(n+1)%2`
-/

namespace A333809.P13707900907000082789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (n + 1) - Int.tmod (A048272 (n + 1)) 2

end

end A333809.P13707900907000082789

/-! ## A333809.P13903225006671890796

`A333781(n+1)-Δ[A000034(A000196(n))]`
-/

namespace A333809.P13903225006671890796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (n + 1) - (f1 (n + 1) - f1 n)

end

end A333809.P13903225006671890796

/-! ## A333809.P13311685489954721151

`A333781(n+1)-(A348951(n+1)+A348515(n+1))`
-/

namespace A333809.P13311685489954721151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (n + 1) - (A348951 (n + 1) + A348515 (n + 1))

end

end A333809.P13311685489954721151

/-! ## A333809.P17014525424858909752

`A048272(n+1)+A348951(n+1)-A258998(n+1)`
-/

namespace A333809.P17014525424858909752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + (A348951 (n + 1) - A258998 (n + 1))

end

end A333809.P17014525424858909752

/-! ## A333809.P17863184246319245139

`A348515(A020338(n+1))-A348515(n+1)`
-/

namespace A333809.P17863184246319245139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348515 (A020338 (n + 1)).toNat - A348515 (n + 1)

end

end A333809.P17863184246319245139

/-!
# A333810: G.f.: Sum_{k>=1} (-1)^(k + 1) * k * x^(k*(k + 1)) / (1 - x^k).

The programs for A333810, there is no canonical definition to state claims against.
-/

/-! ## A333810.P1519081092439559320

`2*A333807(n+1)-A070039(n+1)`
-/

namespace A333810.P1519081092439559320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333807 (n + 1) - A070039 (n + 1)

end

end A333810.P1519081092439559320

/-! ## A333810.P780670136821589928

`A005843(A333807(1+n))-A070039(n+1)`
-/

namespace A333810.P780670136821589928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A333807 (1 + n)).toNat - A070039 (n + 1)

end

end A333810.P780670136821589928

/-! ## A333810.P18099977626015830541

`A333782(n+1)-(A348954(n+1)+A348660(n+1))`
-/

namespace A333810.P18099977626015830541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333782 (n + 1) - (A348954 (n + 1) + A348660 (n + 1))

end

end A333810.P18099977626015830541

/-! ## A333810.P12325691048455935003

`A069289(n+1)-abs(A069289(n+1)-A070039(n+1))`
-/

namespace A333810.P12325691048455935003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (n + 1) - |A069289 (n + 1) - A070039 (n + 1)|

end

end A333810.P12325691048455935003

/-! ## A333810.P306547459695538484

`A214665(∏{e}[n+1, #+1]%A225560(2*n+3))`
-/

namespace A333810.P306547459695538484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214665 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A225560 (2 * n + 3))).toNat

end

end A333810.P306547459695538484

/-!
# A333812: Number of self-avoiding paths joining opposite corners of 7 X n board.

The programs for A333812, there is no canonical definition to state claims against.
-/

/-! ## A333812.P5660514690274407941

`A064298(A374008(n+1))`
-/

namespace A333812.P5660514690274407941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A374008 (n + 1)).toNat

end

end A333812.P5660514690274407941

/-! ## A333812.P11348874384881163381

`A064298(A055999(n+4))`
-/

namespace A333812.P11348874384881163381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A055999 (n + 4)).toNat

end

end A333812.P11348874384881163381

/-! ## A333812.P1197129980087944654

`A064298(eq[4, A219347(n)])`
-/

namespace A333812.P1197129980087944654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333812.P1197129980087944654

/-! ## A333812.P10114181431042649001

`A064298(eq[6, A193592(n)])`
-/

namespace A333812.P10114181431042649001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333812.P10114181431042649001

/-! ## A333812.P5843738989730490118

`A064298(A027379(n+4)+10)`
-/

namespace A333812.P5843738989730490118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A027379 (n + 4) + 10).toNat

end

end A333812.P5843738989730490118

/-!
# A333813: a(n) = 2^(1 + floor(n*log_2(3))) - (3^n + 1).

The programs for A333813, the canonical program `A333813.P34958165451518798` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333813 has offset 0).

The definition of A333813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333813.P34958165451518798

`2^(1+floor(n*log2(3)))-(3^n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333813

/-- `2^(1+floor(n*log2(3)))-(3^n+1)` -/
def P34958165451518798.Spec : Prop :=
  ∀ n, P34958165451518798.a n = (A333813 n : ℚ)

end A333813

/-! ## A333813.P17937498745234036442

`and(2^ceil(n*log2(3))-3^n, -2)`
-/

namespace A333813.P17937498745234036442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℝ) * Real.logb 2 (3 : ℝ)⌉ : ℤ) - (3 ^ n : ℚ))) (-2)

end

end A333813.P17937498745234036442

namespace A333813

/-- `and(2^ceil(n*log2(3))-3^n, -2)` -/
def P17937498745234036442.Spec : Prop :=
  ∀ n, P17937498745234036442.a n = A333813 n

end A333813

/-! ## A333813.P12680998808737124820

`xor(1, or(1, A063003(n)))`
-/

namespace A333813.P12680998808737124820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.lor 1 (A063003 n))

end

end A333813.P12680998808737124820

namespace A333813

/-- `xor(1, or(1, A063003(n)))` -/
def P12680998808737124820.Spec : Prop :=
  ∀ n, P12680998808737124820.a n = A333813 n

end A333813

/-! ## A333813.P8387825950891065710

`xor(1, A063003(round(sqrt(n²+1))))`
-/

namespace A333813.P8387825950891065710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A063003 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A333813.P8387825950891065710

namespace A333813

/-- `xor(1, A063003(round(sqrt(n²+1))))` -/
def P8387825950891065710.Spec : Prop :=
  ∀ n, P8387825950891065710.a n = A333813 n

end A333813

/-! ## A333813.P16000987124679910968

`A000225(ceil(n*log2(3)))%(3^n)`
-/

namespace A333813.P16000987124679910968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 ⌈(n : ℝ) * Real.logb 2 (3 : ℝ)⌉.toNat) (3 ^ n : ℤ)

end

end A333813.P16000987124679910968

namespace A333813

/-- `A000225(ceil(n*log2(3)))%(3^n)` -/
def P16000987124679910968.Spec : Prop :=
  ∀ n, P16000987124679910968.a n = A333813 n

end A333813

/-!
# A333814: Multiples of 12 whose sum of digits is 12.

The programs for A333814, the canonical program `A333814.P13105421635871502220` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333814 has offset 1).

The definition of A333814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333814.P13105421635871502220

`∩[A062753(n+1), A019557(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333814

/-- `∩[A062753(n+1), A019557(n)]` -/
def P13105421635871502220.Spec : Prop :=
  ∀ n, (P13105421635871502220.a n : ℤ) = A333814 (n + 1)

theorem P13105421635871502220.correct : P13105421635871502220.Spec := by
  intro n
  simp only [A333814, Nat.add_sub_cancel]

end A333814

/-! ## A333814.P17033497336693371749

`∩[A062753(n+1), A235151(n+1)]`
-/

namespace A333814.P17033497336693371749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P17033497336693371749

namespace A333814

/-- `∩[A062753(n+1), A235151(n+1)]` -/
def P17033497336693371749.Spec : Prop :=
  ∀ n, (P17033497336693371749.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P16709895446668164206

`∩[A235151(n+1), A008594(n)]`
-/

namespace A333814.P16709895446668164206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P16709895446668164206

namespace A333814

/-- `∩[A235151(n+1), A008594(n)]` -/
def P16709895446668164206.Spec : Prop :=
  ∀ n, (P16709895446668164206.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P11757598015448486487

`∩[A014766(n+1), A235151(n+1)]`
-/

namespace A333814.P11757598015448486487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P11757598015448486487

namespace A333814

/-- `∩[A014766(n+1), A235151(n+1)]` -/
def P11757598015448486487.Spec : Prop :=
  ∀ n, (P11757598015448486487.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P13646655033377635261

`∩[A235151(n+1), A332019(n+1)]`
-/

namespace A333814.P13646655033377635261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P13646655033377635261

namespace A333814

/-- `∩[A235151(n+1), A332019(n+1)]` -/
def P13646655033377635261.Spec : Prop :=
  ∀ n, (P13646655033377635261.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P6605104441245043683

`∩[A235151(n+1), A285829(n+1)]`
-/

namespace A333814.P6605104441245043683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P6605104441245043683

namespace A333814

/-- `∩[A235151(n+1), A285829(n+1)]` -/
def P6605104441245043683.Spec : Prop :=
  ∀ n, (P6605104441245043683.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P17963789408701307452

`∩[A101814(n+1), A235151(n+1)]`
-/

namespace A333814.P17963789408701307452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P17963789408701307452

namespace A333814

/-- `∩[A101814(n+1), A235151(n+1)]` -/
def P17963789408701307452.Spec : Prop :=
  ∀ n, (P17963789408701307452.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P13745158764290334110

`filter[A235151(n+1), A355454(#)]`
-/

namespace A333814.P13745158764290334110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A333814.P13745158764290334110

namespace A333814

/-- `filter[A235151(n+1), A355454(#)]` -/
def P13745158764290334110.Spec : Prop :=
  ∀ n, P13745158764290334110.a n = A333814 (n + 1)

end A333814

/-! ## A333814.P13076053965556189082

`∩[A005349(n+1), A235151(n+1)]`
-/

namespace A333814.P13076053965556189082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P13076053965556189082

namespace A333814

/-- `∩[A005349(n+1), A235151(n+1)]` -/
def P13076053965556189082.Spec : Prop :=
  ∀ n, (P13076053965556189082.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P8108343974067960236

`∩[A062753(n+1), A017197(n)]`
-/

namespace A333814.P8108343974067960236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P8108343974067960236

namespace A333814

/-- `∩[A062753(n+1), A017197(n)]` -/
def P8108343974067960236.Spec : Prop :=
  ∀ n, (P8108343974067960236.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P9575357254147913166

`∩[A062753(n+1), A017209(n)-1]`
-/

namespace A333814.P9575357254147913166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P9575357254147913166

namespace A333814

/-- `∩[A062753(n+1), A017209(n)-1]` -/
def P9575357254147913166.Spec : Prop :=
  ∀ n, (P9575357254147913166.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P10012840224588796187

`∩[A126855(n+1), A235151(n+1)]`
-/

namespace A333814.P10012840224588796187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P10012840224588796187

namespace A333814

/-- `∩[A126855(n+1), A235151(n+1)]` -/
def P10012840224588796187.Spec : Prop :=
  ∀ n, (P10012840224588796187.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P2068203724970011976

`filter[A235151(n+1), A121262(#)]`
-/

namespace A333814.P2068203724970011976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A333814.P2068203724970011976

namespace A333814

/-- `filter[A235151(n+1), A121262(#)]` -/
def P2068203724970011976.Spec : Prop :=
  ∀ n, P2068203724970011976.a n = A333814 (n + 1)

end A333814

/-! ## A333814.P8692113343404119880

`filter[A235151(n+1), A319710(#)]`
-/

namespace A333814.P8692113343404119880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A333814.P8692113343404119880

namespace A333814

/-- `filter[A235151(n+1), A319710(#)]` -/
def P8692113343404119880.Spec : Prop :=
  ∀ n, P8692113343404119880.a n = A333814 (n + 1)

end A333814

/-! ## A333814.P8279436760368024918

`filter[A235151(n+1), A342023(#)]`
-/

namespace A333814.P8279436760368024918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A333814.P8279436760368024918

namespace A333814

/-- `filter[A235151(n+1), A342023(#)]` -/
def P8279436760368024918.Spec : Prop :=
  ∀ n, P8279436760368024918.a n = A333814 (n + 1)

end A333814

/-! ## A333814.P139714663831632227

`filter[A235151(n+1), A354037(#)]`
-/

namespace A333814.P139714663831632227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354037 (f1 j).toNat = 1) n)

end

end A333814.P139714663831632227

namespace A333814

/-- `filter[A235151(n+1), A354037(#)]` -/
def P139714663831632227.Spec : Prop :=
  ∀ n, P139714663831632227.a n = A333814 (n + 1)

end A333814

/-! ## A333814.P9345737764782231275

`filter[A235151(n+1), A354097(#)]`
-/

namespace A333814.P9345737764782231275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A333814.P9345737764782231275

namespace A333814

/-- `filter[A235151(n+1), A354097(#)]` -/
def P9345737764782231275.Spec : Prop :=
  ∀ n, P9345737764782231275.a n = A333814 (n + 1)

end A333814

/-! ## A333814.P7197722635657002851

`∩[A173035(2*n)+A173035(n+1), A235151(n+2)]`
-/

namespace A333814.P7197722635657002851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 (2 * n) + A173035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P7197722635657002851

namespace A333814

/-- `∩[A173035(2*n)+A173035(n+1), A235151(n+2)]` -/
def P7197722635657002851.Spec : Prop :=
  ∀ n, (P7197722635657002851.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P9333308873829872365

`∩[A235151(n+1), A091573(n)]`
-/

namespace A333814.P9333308873829872365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P9333308873829872365

namespace A333814

/-- `∩[A235151(n+1), A091573(n)]` -/
def P9333308873829872365.Spec : Prop :=
  ∀ n, (P9333308873829872365.a n : ℤ) = A333814 (n + 1)

end A333814

/-! ## A333814.P16446841482627027415

`∩[A235151(n+1), A295821(n)]`
-/

namespace A333814.P16446841482627027415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295821 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P16446841482627027415

namespace A333814

/-- `∩[A235151(n+1), A295821(n)]` -/
def P16446841482627027415.Spec : Prop :=
  ∀ n, (P16446841482627027415.a n : ℤ) = A333814 (n + 1)

end A333814

/-!
# A333815: G.f.: Sum_{k>=1} x^(k*(3*k - 1)/2) / (1 - x^(3*k)).

The programs for A333815, there is no canonical definition to state claims against.
-/

/-! ## A333815.P1066680824098309255

`A328682(A328412(n+1)^A069897(n+1))`
-/

namespace A333815.P1066680824098309255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.roundAway ((A328412 (n + 1) : ℚ) ^ (A069897 (n + 1) : ℤ))).toNat

end

end A333815.P1066680824098309255

/-! ## A333815.P3446496274596397477

`A191916(3*n+2)²%3`
-/

namespace A333815.P3446496274596397477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191916 (3 * n + 2) ^ 2) 3

end

end A333815.P3446496274596397477

/-! ## A333815.P8513116352439781915

`A144612(A032139(n))`
-/

namespace A333815.P8513116352439781915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144612 (A032139 n).toNat

end

end A333815.P8513116352439781915

/-! ## A333815.P7129082832986258176

`A011681(A033575(n+1))`
-/

namespace A333815.P7129082832986258176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (A033575 (n + 1)).toNat

end

end A333815.P7129082832986258176

/-! ## A333815.P16188322556198725343

`A285205(A032139(n)+1)`
-/

namespace A333815.P16188322556198725343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (A032139 n + 1).toNat

end

end A333815.P16188322556198725343

/-!
# A333816: Number of ways to write n as the difference of two hexagonal numbers.

The programs for A333816, there is no canonical definition to state claims against.
-/

/-! ## A333816.P7252461253147120526

`and(A221167(2*n+1), A333818(A047227(n+1)))`
-/

namespace A333816.P7252461253147120526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A221167 (2 * n + 1)) (A333818 (A047227 (n + 1)).toNat)

end

end A333816.P7252461253147120526

/-! ## A333816.P1483271806878303680

`A333817(A047201(n+1))^A334035(n+1)`
-/

namespace A333816.P1483271806878303680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333817 (A047201 (n + 1)).toNat : ℚ) ^ (A334035 (n + 1) : ℤ)

end

end A333816.P1483271806878303680

/-! ## A333816.P12778546059875534100

`A333817(A047201(n+1))^A334037(n+1)`
-/

namespace A333816.P12778546059875534100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333817 (A047201 (n + 1)).toNat : ℚ) ^ (A334037 (n + 1) : ℤ)

end

end A333816.P12778546059875534100

/-! ## A333816.P2584185283208912149

`A333817(A047201(n+1)%A334035(n+2))`
-/

namespace A333816.P2584185283208912149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333817 (Int.tmod (A047201 (n + 1)) (A334035 (n + 2))).toNat

end

end A333816.P2584185283208912149

/-! ## A333816.P12310930624799251568

`A333817(A047201(n+1))^A276625(2*n+5)`
-/

namespace A333816.P12310930624799251568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333817 (A047201 (n + 1)).toNat : ℚ) ^ (A276625 (2 * n + 5) : ℤ)

end

end A333816.P12310930624799251568

/-!
# A333817: G.f.: Sum_{k>=1} x^(k*(5*k - 3)/2) / (1 - x^(5*k)).

The programs for A333817, there is no canonical definition to state claims against.
-/

/-! ## A333817.P155933922577969977

`A333818(comp[6*n])`
-/

namespace A333817.P155933922577969977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333818 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A333817.P155933922577969977

/-! ## A333817.P1531996292901243947

`A079998(n²*A175126(n+4))`
-/

namespace A333817.P1531996292901243947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 ((n ^ 2 : ℤ) * A175126 (n + 4)).toNat

end

end A333817.P1531996292901243947

/-! ## A333817.P12283374268526436268

`A079998(A301710(n+4)*A355224(n))`
-/

namespace A333817.P12283374268526436268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A301710 (n + 4) * A355224 n).toNat

end

end A333817.P12283374268526436268

/-! ## A333817.P3440191707654425962

`A376583(A376618(n+1)+A325443(n+1))`
-/

namespace A333817.P3440191707654425962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A376618 (n + 1) + A325443 (n + 1)).toNat

end

end A333817.P3440191707654425962

/-! ## A333817.P9299305614144587895

`A286493(A286491(2*n+3)²)`
-/

namespace A333817.P9299305614144587895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A286491 (2 * n + 3) ^ 2).toNat

end

end A333817.P9299305614144587895

/-!
# A333818: G.f.: Sum_{k>=1} x^(k*(3*k - 2)) / (1 - x^(6*k)).

The programs for A333818, there is no canonical definition to state claims against.
-/

/-! ## A333818.P5252358672362662247

`A188295(A195770(n+1)^A025901(n))`
-/

namespace A333818.P5252358672362662247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (SequenceMachineLib.roundAway ((A195770 (n + 1) : ℚ) ^ (A025901 n : ℤ))).toNat

end

end A333818.P5252358672362662247

/-! ## A333818.P17155735707304296711

`A156040(n)%A322794(A294999(n+1))`
-/

namespace A333818.P17155735707304296711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156040 n) (A322794 (A294999 (n + 1)).toNat)

end

end A333818.P17155735707304296711

/-! ## A333818.P3547225340653780152

`A284935(or(A284964(n+1), A284977(2*(n+1))))`
-/

namespace A333818.P3547225340653780152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 (Int.lor (A284964 (n + 1)) (A284977 (2 * (n + 1)))).toNat

end

end A333818.P3547225340653780152

/-! ## A333818.P11719510353071749343

`C(A295281(2*n+5), A324026(A151706(n)))`
-/

namespace A333818.P11719510353071749343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A295281 (2 * n + 5)).toNat (A324026 (A151706 n).toNat).toNat

end

end A333818.P11719510353071749343

/-! ## A333818.P14979936982786802612

`A008966(A314745(3*n+1)*A314746(2*n))`
-/

namespace A333818.P14979936982786802612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A314745 (3 * n + 1) * A314746 (2 * n)).toNat

end

end A333818.P14979936982786802612

/-!
# A333819: a(n) is the least integer q > 0 such that for some integer r, phi(q) + phi(r) = 2*n; where phi(n) is Euler's totient function (A000010).

The programs for A333819, there is no canonical definition to state claims against.
-/

/-! ## A333819.P7380653413036302186

`A336422(A322833(n+1))`
-/

namespace A333819.P7380653413036302186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336422 (A322833 (n + 1)).toNat

end

end A333819.P7380653413036302186

/-! ## A333819.P11795308968950344951

`A037227(A166591(2*n+1)+A005893(3*n+2))`
-/

namespace A333819.P11795308968950344951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (A166591 (2 * n + 1) + A005893 (3 * n + 2)).toNat

end

end A333819.P11795308968950344951

/-!
# A333820: a(n) is the number of pairs (q,r) such that q <= r and phi(q) + phi(r) = 2*n.

The programs for A333820, there is no canonical definition to state claims against.
-/

/-! ## A333820.P11646403059319997950

`(A307853(2*(n+1))+A014197(n+1))/2`
-/

namespace A333820.P11646403059319997950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307853 (2 * (n + 1)) + A014197 (n + 1) : ℚ) / 2

end

end A333820.P11646403059319997950

/-! ## A333820.P9450462579092796643

`A029578(A307853(2*(n+1))+A014197(n+1))`
-/

namespace A333820.P9450462579092796643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A307853 (2 * (n + 1)) + A014197 (n + 1)).toNat

end

end A333820.P9450462579092796643

/-!
# A333821: Numbers k that can be represented in the form k = p^3 - q^3 - r^3, where p, q, r are positive integers satisfying p = q + r.

The programs for A333821, there is no canonical definition to state claims against.
-/

/-! ## A333821.P11133852965826041050

`6*A121741(n+1)`
-/

namespace A333821.P11133852965826041050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A121741 (n + 1)

end

end A333821.P11133852965826041050

/-! ## A333821.P2212068219266757109

`3*A088915(n+2)`
-/

namespace A333821.P2212068219266757109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088915 (n + 2)

end

end A333821.P2212068219266757109

/-! ## A333821.P17308212888812164688

`∑[Δ[A088915(n+1)]/(1-2/3)]`
-/

namespace A333821.P17308212888812164688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333821.P17308212888812164688

/-! ## A333821.P4452615667979217481

`A008458(A121741(n+1))`
-/

namespace A333821.P4452615667979217481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A121741 (n + 1)).toNat

end

end A333821.P4452615667979217481

/-! ## A333821.P16455029182691681499

`A008486(A088915(n+2))`
-/

namespace A333821.P16455029182691681499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A088915 (n + 2)).toNat

end

end A333821.P16455029182691681499

/-! ## A333821.P17669299668245656507

`A008458(A088915(n+2)/2)`
-/

namespace A333821.P17669299668245656507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A088915 (n + 2) : ℚ) / 2)).toNat

end

end A333821.P17669299668245656507

/-! ## A333821.P14035789886831492941

`∑[A008585(Δ[A088915(n+1)])]`
-/

namespace A333821.P14035789886831492941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333821.P14035789886831492941

/-! ## A333821.P7145343658484836414

`A008588(A121741(A000027(n+1)))`
-/

namespace A333821.P7145343658484836414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A121741 (A000027 (n + 1)).toNat).toNat

end

end A333821.P7145343658484836414

/-!
# A333822: Number of ways to write n as the difference of two k-gonal numbers for k >= 3.

The programs for A333822, there is no canonical definition to state claims against.
-/

/-! ## A333822.P4793226922060408726

`A129654(n+2)+A333836(n+2)-1`
-/

namespace A333822.P4793226922060408726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2) + (A333836 (n + 2) - 1)

end

end A333822.P4793226922060408726

/-! ## A333822.P4975035432877354158

`A106491(∑[A292689(n+1)])`
-/

namespace A333822.P4975035432877354158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106491 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333822.P4975035432877354158

/-! ## A333822.P13006361036578672684

`A007895(A213215(n+2))+A001222(n+1)`
-/

namespace A333822.P13006361036578672684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A213215 (n + 2)).toNat + A001222 (n + 1)

end

end A333822.P13006361036578672684

/-!
# A333823: a(n) = Sum_{d|n, d odd} (n/d)^d.

The programs for A333823, the canonical program `A333823.P3824260530256834123` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333823 has offset 1).

The definition of A333823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333823.P3824260530256834123

`∑{d}[A000265(n+1), ((n+1)/#)^#]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A333823

/-- `∑{d}[A000265(n+1), ((n+1)/#)^#]` -/
def P3824260530256834123.Spec : Prop :=
  ∀ n, P3824260530256834123.a n = (A333823 (n + 1) : ℚ)

end A333823

/-! ## A333823.P2929008247272645741

`∑{d}[A028234(2*(n+1)), ((n+1)/#)^#]`
-/

namespace A333823.P2929008247272645741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ d

end

end A333823.P2929008247272645741

namespace A333823

/-- `∑{d}[A028234(2*(n+1)), ((n+1)/#)^#]` -/
def P2929008247272645741.Spec : Prop :=
  ∀ n, P2929008247272645741.a n = (A333823 (n + 1) : ℚ)

end A333823

/-! ## A333823.P6371883507878202937

`(∑{d}[n+1, ((n+1)/#)^#]+∑{d}[n+1, -(-((n+1)/#))^#])/2`
-/

namespace A333823.P6371883507878202937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d + ∑ d ∈ Nat.divisors (f2 n), (-((-((n + 1 : ℚ) / (d : ℚ))) ^ d))) / 2

end

end A333823.P6371883507878202937

namespace A333823

/-- `(∑{d}[n+1, ((n+1)/#)^#]+∑{d}[n+1, -(-((n+1)/#))^#])/2` -/
def P6371883507878202937.Spec : Prop :=
  ∀ n, P6371883507878202937.a n = (A333823 (n + 1) : ℚ)

end A333823

/-! ## A333823.P6937408079652692355

`(∑{d}[n+1, -(-((n+1)/#))^#]+A326121(n+1)+1+n)/2`
-/

namespace A333823.P6937408079652692355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (-((-((n + 1 : ℚ) / (d : ℚ))) ^ d)) + (A326121 (n + 1) + 1 + (n : ℤ) : ℚ)) / 2

end

end A333823.P6937408079652692355

namespace A333823

/-- `(∑{d}[n+1, -(-((n+1)/#))^#]+A326121(n+1)+1+n)/2` -/
def P6937408079652692355.Spec : Prop :=
  ∀ n, P6937408079652692355.a n = (A333823 (n + 1) : ℚ)

end A333823

/-! ## A333823.P4932355946148486548

`(A076717(n+1)+A055225(n+1))/2`
-/

namespace A333823.P4932355946148486548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076717 (n + 1) + A055225 (n + 1) : ℚ) / 2

end

end A333823.P4932355946148486548

namespace A333823

/-- `(A076717(n+1)+A055225(n+1))/2` -/
def P4932355946148486548.Spec : Prop :=
  ∀ n, P4932355946148486548.a n = (A333823 (n + 1) : ℚ)

end A333823

/-!
# A333824: a(n) = Sum_{d|n, n/d odd} (n/d)^d.

The programs for A333824, the canonical program `A333824.P16951238813383919002` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333824 has offset 1).

The definition of A333824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333824.P4255777969150767108

`∑{d}[(n+1)/2^val(n+1, 2), #^((n+1)/#)]`
-/

namespace A333824.P4255777969150767108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (d : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ)

end

end A333824.P4255777969150767108

namespace A333824

/-- `∑{d}[(n+1)/2^val(n+1, 2), #^((n+1)/#)]` -/
def P4255777969150767108.Spec : Prop :=
  ∀ n, P4255777969150767108.a n = (A333824 (n + 1) : ℝ)

end A333824

/-! ## A333824.P11833604616353142358

`∑{d}[A000265(n+1), #^((n+1)/#)]`
-/

namespace A333824.P11833604616353142358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ)

end

end A333824.P11833604616353142358

namespace A333824

/-- `∑{d}[A000265(n+1), #^((n+1)/#)]` -/
def P11833604616353142358.Spec : Prop :=
  ∀ n, P11833604616353142358.a n = (A333824 (n + 1) : ℝ)

end A333824

/-! ## A333824.P16951238813383919002

`∑{d}[n+1, A193356((n+1)/#)^#]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A333824

/-- `∑{d}[n+1, A193356((n+1)/#)^#]` -/
def P16951238813383919002.Spec : Prop :=
  ∀ n, P16951238813383919002.a n = A333824 (n + 1)

theorem P16951238813383919002.correct : P16951238813383919002.Spec := by
  intro n
  simp only [A333824, Nat.add_sub_cancel]

end A333824

/-! ## A333824.P13658450245560036169

`∑{d}[A353412(2*(n+1)), #^ceil(n/#)]`
-/

namespace A333824.P13658450245560036169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (⌈(n : ℚ) / (d : ℚ)⌉ : ℤ)

end

end A333824.P13658450245560036169

namespace A333824

/-- `∑{d}[A353412(2*(n+1)), #^ceil(n/#)]` -/
def P13658450245560036169.Spec : Prop :=
  ∀ n, P13658450245560036169.a n = (A333824 (n + 1) : ℚ)

end A333824

/-! ## A333824.P5474372863714319576

`(A308366(n+1)+∑{d}[n+1, #^ceil(n/#)])/2`
-/

namespace A333824.P5474372863714319576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A308366 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (⌈(n : ℚ) / (d : ℚ)⌉ : ℤ)) / 2

end

end A333824.P5474372863714319576

namespace A333824

/-- `(A308366(n+1)+∑{d}[n+1, #^ceil(n/#)])/2` -/
def P5474372863714319576.Spec : Prop :=
  ∀ n, P5474372863714319576.a n = (A333824 (n + 1) : ℚ)

end A333824

/-!
# A333825: Lexicographically earliest sequence of distinct positive integers, which when mapped onto a square spiral, gives a set without three distinct aligned points.

The programs for A333825, there is no canonical definition to state claims against.
-/

/-! ## A333825.P11540206792625177203

`eq[1, A361486(n+1)]+1`
-/

namespace A333825.P11540206792625177203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333825.P11540206792625177203

/-! ## A333825.P16894854494957995306

`eq[A057427(n), A361486(A028310(n))]`
-/

namespace A333825.P16894854494957995306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361486 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333825.P16894854494957995306

/-!
# A333831: Dirichlet inverse of Mertens function (A002321).

The programs for A333831, there is no canonical definition to state claims against.
-/

/-! ## A333831.P16348173289941829196

`A023416(A287538(n)+1-n)`
-/

namespace A333831.P16348173289941829196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A287538 n + (1 - (n : ℤ))).toNat

end

end A333831.P16348173289941829196

/-! ## A333831.P7133848817682237152

`A023416(1-(n-A287538(n)))`
-/

namespace A333831.P7133848817682237152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (1 - ((n : ℤ) - A287538 n)).toNat

end

end A333831.P7133848817682237152

/-! ## A333831.P8274116962113905284

`A023416(2^n-n)^A071625(n+1)`
-/

namespace A333831.P8274116962113905284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023416 (2 ^ n - n) : ℚ) ^ (A071625 (n + 1) : ℤ)

end

end A333831.P8274116962113905284

/-! ## A333831.P10255516355948509667

`A001221(A354578(n)+A192872(n))`
-/

namespace A333831.P10255516355948509667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A354578 n + A192872 n).toNat

end

end A333831.P10255516355948509667

/-! ## A333831.P8800812594411553994

`A196563(A304141(n+4)+A255047(n))`
-/

namespace A333831.P8800812594411553994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A304141 (n + 4) + A255047 n).toNat

end

end A333831.P8800812594411553994

/-!
# A333833: Number of permutations p of [n] such that |p(i) - p(i-1)| <= 2 and |p(i) - p(i-2)| <= 3.

The programs for A333833, there is no canonical definition to state claims against.
-/

/-! ## A333833.P4682691160691965476

`or(A008904(n), A062068(A127497(n)))`
-/

namespace A333833.P4682691160691965476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008904 n) (A062068 (A127497 n).toNat)

end

end A333833.P4682691160691965476

/-!
# A333834: Multiples of 10 whose sum of digits is 10.

The programs for A333834, there is no canonical definition to state claims against.
-/

/-! ## A333834.P15851399444837978947

`10*A052224(n+1)`
-/

namespace A333834.P15851399444837978947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A052224 (n + 1)

end

end A333834.P15851399444837978947

/-! ## A333834.P2824530054423146618

`2*5*A052224(-xor(n, -1))`
-/

namespace A333834.P2824530054423146618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A052224 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A333834.P2824530054423146618

/-! ## A333834.P8902459802379378095

`∩[A052224(n+1), A218292(n+1)]`
-/

namespace A333834.P8902459802379378095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P8902459802379378095

/-! ## A333834.P576232737940361057

`∩[A218292(n+1), A326806(n+1)]`
-/

namespace A333834.P576232737940361057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P576232737940361057

/-! ## A333834.P357556890597006808

`∩[A218292(n+1), A326833(n+1)]`
-/

namespace A333834.P357556890597006808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P357556890597006808

/-! ## A333834.P16143915499415557810

`∩[A218292(n+1), A139610(n)]`
-/

namespace A333834.P16143915499415557810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P16143915499415557810

/-! ## A333834.P3214416115371689693

`∩[A052224(n+1), A085370(n+1)]`
-/

namespace A333834.P3214416115371689693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P3214416115371689693

/-! ## A333834.P6977596882442630769

`∩[A218290(n+1), A082286(n)]`
-/

namespace A333834.P6977596882442630769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P6977596882442630769

/-! ## A333834.P12785152823772504328

`∩[A218292(n+1), A082286(n)]`
-/

namespace A333834.P12785152823772504328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P12785152823772504328

/-! ## A333834.P1310740929767724186

`∩[2*A017221(n), A218290(n+1)]`
-/

namespace A333834.P1310740929767724186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P1310740929767724186

/-! ## A333834.P3794617523744529419

`∩[A052224(n+1), A285829(n+1)]`
-/

namespace A333834.P3794617523744529419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P3794617523744529419

/-! ## A333834.P10319129502151149327

`∩[A235151(n+1)-2, A285829(n+1)]`
-/

namespace A333834.P10319129502151149327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P10319129502151149327

/-! ## A333834.P4619386931964962545

`∩[A052224(n+1), A101814(n+1)]`
-/

namespace A333834.P4619386931964962545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333834.P4619386931964962545

/-! ## A333834.P1164202884643427848

`10*eq[10, A118880(n)^(1/3)]`
-/

namespace A333834.P1164202884643427848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A333834.P1164202884643427848

/-! ## A333834.P13119461669760549080

`10*eq[10, 1-A160941(n+1)+n]`
-/

namespace A333834.P13119461669760549080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160941 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333834.P13119461669760549080

/-! ## A333834.P4304228263226264510

`A008592(A052224(n+1))`
-/

namespace A333834.P4304228263226264510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A052224 (n + 1)).toNat

end

end A333834.P4304228263226264510

/-! ## A333834.P6785091724512314670

`A008592(eq[10, A007953(n)])`
-/

namespace A333834.P6785091724512314670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333834.P6785091724512314670

/-! ## A333834.P11727639216453579824

`A057147(eq[10, A007953(n)])`
-/

namespace A333834.P11727639216453579824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333834.P11727639216453579824

/-! ## A333834.P5256668820095748565

`A370532(A052224(n+1)+2)`
-/

namespace A333834.P5256668820095748565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (A052224 (n + 1) + 2).toNat

end

end A333834.P5256668820095748565

/-! ## A333834.P3628591594653942531

`A008592(eq[4, A169805(n)/5])`
-/

namespace A333834.P3628591594653942531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A333834.P3628591594653942531

/-!
# A333836: Number of ways to write n as the difference of two positive k-gonal numbers for k >= 3.

The programs for A333836, there is no canonical definition to state claims against.
-/

/-! ## A333836.P16660737137520060146

`A003056(A195140(n)+A097795(A303727(n+1)))`
-/

namespace A333836.P16660737137520060146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A195140 n + A097795 (A303727 (n + 1)).toNat).toNat

end

end A333836.P16660737137520060146

/-! ## A333836.P16195426919206626202

`ceil(A261101(n)/A000034(A005578(n)))`
-/

namespace A333836.P16195426919206626202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261101 n : ℚ) / (A000034 (A005578 n).toNat : ℚ)⌉

end

end A333836.P16195426919206626202

/-! ## A333836.P4537858009603212573

`A077429((∑[n+3]-2)*A052552(n))`
-/

namespace A333836.P4537858009603212573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * A052552 n).toNat

end

end A333836.P4537858009603212573

/-! ## A333836.P16902786455798825997

`A235963(round(n/(n%2+1/2))^A063995(3*n+1))`
-/

namespace A333836.P16902786455798825997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2)) : ℚ) ^ (A063995 (3 * n + 1) : ℤ))).toNat

end

end A333836.P16902786455798825997

/-! ## A333836.P3284486880218438833

`A225541(lcm(A046092(n), A047596(2*n+1)))`
-/

namespace A333836.P3284486880218438833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (Int.lcm (A046092 n) (A047596 (2 * n + 1)))

end

end A333836.P3284486880218438833

/-!
# A333837: Number of ways to collapse an n-rowed triangular formation of dominoes.

The programs for A333837, there is no canonical definition to state claims against.
-/

/-! ## A333837.P714361141753625574

`and(∏{p}[A258498(n)², #]+n, A017949(n))`
-/

namespace A333837.P714361141753625574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258498 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + n : ℕ) : ℤ) (A017949 n)

end

end A333837.P714361141753625574

/-! ## A333837.P1493887121011650172

`A080427(A001147(n))+A000217(n)`
-/

namespace A333837.P1493887121011650172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (A001147 n).toNat + A000217 n

end

end A333837.P1493887121011650172

/-!
# A333839: a(n) = Sum_{k = 4..n} ((prevprime(k) + nextprime(k))/2 - k).

The programs for A333839, the canonical program `A333839.P8771621751461839963` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333839 has offset 4).

The definition of A333839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333839.P8771621751461839963

`∑[A033597(n+4)-(n+4)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333839

/-- `∑[A033597(n+4)-(n+4)]` -/
def P8771621751461839963.Spec : Prop :=
  ∀ n, P8771621751461839963.a n = A333839 (n + 4)

theorem P8771621751461839963.correct : P8771621751461839963.Spec := by
  intro n
  simp only [A333839, Nat.add_sub_cancel]

end A333839

/-! ## A333839.P13975614866242706477

`∑[ceil(sqrt(A013638(n+4)))+n]%(n+1)`
-/

namespace A333839.P13975614866242706477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A013638 (n + 4) : ℝ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A333839.P13975614866242706477

namespace A333839

/-- `∑[ceil(sqrt(A013638(n+4)))+n]%(n+1)` -/
def P13975614866242706477.Spec : Prop :=
  ∀ n, P13975614866242706477.a n = A333839 (n + 4)

end A333839

/-! ## A333839.P13270665813825298988

`∑[A013632(n+4)-A033559(n+4)]`
-/

namespace A333839.P13270665813825298988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 4) - A033559 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333839.P13270665813825298988

namespace A333839

/-- `∑[A013632(n+4)-A033559(n+4)]` -/
def P13270665813825298988.Spec : Prop :=
  ∀ n, P13270665813825298988.a n = A333839 (n + 4)

end A333839

/-! ## A333839.P7949408326843019816

`∑[A003059(A013638(n+4)+1)-A020705(n)]`
-/

namespace A333839.P7949408326843019816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A013638 (n + 4) + 1).toNat - A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333839.P7949408326843019816

namespace A333839

/-- `∑[A003059(A013638(n+4)+1)-A020705(n)]` -/
def P7949408326843019816.Spec : Prop :=
  ∀ n, P7949408326843019816.a n = A333839 (n + 4)

end A333839

/-! ## A333839.P16050474460463545719

`and(A035531(n+1), A124388(A008346(n)))`
-/

namespace A333839.P16050474460463545719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035531 (n + 1)) (A124388 (A008346 n).toNat)

end

end A333839.P16050474460463545719

namespace A333839

/-- `and(A035531(n+1), A124388(A008346(n)))` -/
def P16050474460463545719.Spec : Prop :=
  ∀ n, P16050474460463545719.a n = A333839 (n + 4)

end A333839

/-!
# A333842: G.f.: Sum_{k>=1} k * x^(prime(k)^2) / (1 - x^(prime(k)^2)).

The programs for A333842, the canonical program `A333842.P12933037220548875688` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333842 has offset 1).

The definition of A333842 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066328, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333842.P12933037220548875688

`A066328(A003557(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333842

/-- `A066328(A003557(n+1))` -/
def P12933037220548875688.Spec : Prop :=
  ∀ n, P12933037220548875688.a n = A333842 (n + 1)

theorem P12933037220548875688.correct : P12933037220548875688.Spec := by
  intro n
  simp only [A333842, Nat.add_sub_cancel]

end A333842

/-! ## A333842.P6704895171504838637

`A056239(A071773(n+1))`
-/

namespace A333842.P6704895171504838637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A071773 (n + 1)).toNat

end

end A333842.P6704895171504838637

namespace A333842

/-- `A056239(A071773(n+1))` -/
def P6704895171504838637.Spec : Prop :=
  ∀ n, P6704895171504838637.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P2691135235209539385

`∑{d}[(n+1)/∏{p}[n+1, #], A049084(#)]`
-/

namespace A333842.P2691135235209539385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A049084 d

end

end A333842.P2691135235209539385

namespace A333842

/-- `∑{d}[(n+1)/∏{p}[n+1, #], A049084(#)]` -/
def P2691135235209539385.Spec : Prop :=
  ∀ n, P2691135235209539385.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P5743466522169103316

`∑{p}[(n+1)/∏{p}[n+1, #], A000720(#)]`
-/

namespace A333842.P5743466522169103316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000720 p

end

end A333842.P5743466522169103316

namespace A333842

/-- `∑{p}[(n+1)/∏{p}[n+1, #], A000720(#)]` -/
def P5743466522169103316.Spec : Prop :=
  ∀ n, P5743466522169103316.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P8613386016779258995

`A056239(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A333842.P8613386016779258995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A333842.P8613386016779258995

namespace A333842

/-- `A056239(∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P8613386016779258995.Spec : Prop :=
  ∀ n, P8613386016779258995.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P9731965815239634572

`A066328(A000188(n+1))`
-/

namespace A333842.P9731965815239634572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A000188 (n + 1)).toNat

end

end A333842.P9731965815239634572

namespace A333842

/-- `A066328(A000188(n+1))` -/
def P9731965815239634572.Spec : Prop :=
  ∀ n, P9731965815239634572.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P2918670356098821954

`A066328(A000189(n+1))`
-/

namespace A333842.P2918670356098821954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A000189 (n + 1)).toNat

end

end A333842.P2918670356098821954

namespace A333842

/-- `A066328(A000189(n+1))` -/
def P2918670356098821954.Spec : Prop :=
  ∀ n, P2918670356098821954.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P18050069470134556148

`A066328(A000190(n+1))`
-/

namespace A333842.P18050069470134556148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A000190 (n + 1)).toNat

end

end A333842.P18050069470134556148

namespace A333842

/-- `A066328(A000190(n+1))` -/
def P18050069470134556148.Spec : Prop :=
  ∀ n, P18050069470134556148.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P4638222690156383115

`A066328(A008833(n+1))`
-/

namespace A333842.P4638222690156383115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A008833 (n + 1)).toNat

end

end A333842.P4638222690156383115

namespace A333842

/-- `A066328(A008833(n+1))` -/
def P4638222690156383115.Spec : Prop :=
  ∀ n, P4638222690156383115.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P16561632367430802111

`A066328(A057521(n+1))`
-/

namespace A333842.P16561632367430802111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A057521 (n + 1)).toNat

end

end A333842.P16561632367430802111

namespace A333842

/-- `A066328(A057521(n+1))` -/
def P16561632367430802111.Spec : Prop :=
  ∀ n, P16561632367430802111.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P2219518100177512582

`A066328(A085731(n+1))`
-/

namespace A333842.P2219518100177512582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A085731 (n + 1)).toNat

end

end A333842.P2219518100177512582

namespace A333842

/-- `A066328(A085731(n+1))` -/
def P2219518100177512582.Spec : Prop :=
  ∀ n, P2219518100177512582.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P10263834384188175667

`A066328(A308993(n+1))`
-/

namespace A333842.P10263834384188175667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A308993 (n + 1)).toNat

end

end A333842.P10263834384188175667

namespace A333842

/-- `A066328(A308993(n+1))` -/
def P10263834384188175667.Spec : Prop :=
  ∀ n, P10263834384188175667.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P12426113785175606327

`A066328(A071773(n+1)²)`
-/

namespace A333842.P12426113785175606327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A071773 (n + 1) ^ 2).toNat

end

end A333842.P12426113785175606327

namespace A333842

/-- `A066328(A071773(n+1)²)` -/
def P12426113785175606327.Spec : Prop :=
  ∀ n, P12426113785175606327.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P5547438512333206444

`∑{d}[A003557(n+1), A049084(#)]`
-/

namespace A333842.P5547438512333206444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A333842.P5547438512333206444

namespace A333842

/-- `∑{d}[A003557(n+1), A049084(#)]` -/
def P5547438512333206444.Spec : Prop :=
  ∀ n, P5547438512333206444.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P4336647941021579729

`∑{p}[A003557(n+1), A000720(#)]`
-/

namespace A333842.P4336647941021579729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A333842.P4336647941021579729

namespace A333842

/-- `∑{p}[A003557(n+1), A000720(#)]` -/
def P4336647941021579729.Spec : Prop :=
  ∀ n, P4336647941021579729.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P18378462105713214552

`∑{p}[A003557(n+1), A055396(#)]`
-/

namespace A333842.P18378462105713214552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p

end

end A333842.P18378462105713214552

namespace A333842

/-- `∑{p}[A003557(n+1), A055396(#)]` -/
def P18378462105713214552.Spec : Prop :=
  ∀ n, P18378462105713214552.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P4772955759995220362

`∑{p}[A003557(n+1), A241919(#)]`
-/

namespace A333842.P4772955759995220362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A241919 p

end

end A333842.P4772955759995220362

namespace A333842

/-- `∑{p}[A003557(n+1), A241919(#)]` -/
def P4772955759995220362.Spec : Prop :=
  ∀ n, P4772955759995220362.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P3280555472552386466

`∑{p}[A003557(n+1), A302039(#)]`
-/

namespace A333842.P3280555472552386466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A302039 p

end

end A333842.P3280555472552386466

namespace A333842

/-- `∑{p}[A003557(n+1), A302039(#)]` -/
def P3280555472552386466.Spec : Prop :=
  ∀ n, P3280555472552386466.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P9530919407827850770

`A066328((n+1)/A007947(n+1))`
-/

namespace A333842.P9530919407827850770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A333842.P9530919407827850770

namespace A333842

/-- `A066328((n+1)/A007947(n+1))` -/
def P9530919407827850770.Spec : Prop :=
  ∀ n, P9530919407827850770.a n = A333842 (n + 1)

end A333842

/-! ## A333842.P9559913895573330103

`A066328((n+1)/A055231(n+1))`
-/

namespace A333842.P9559913895573330103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A333842.P9559913895573330103

namespace A333842

/-- `A066328((n+1)/A055231(n+1))` -/
def P9559913895573330103.Spec : Prop :=
  ∀ n, P9559913895573330103.a n = A333842 (n + 1)

end A333842

/-!
# A333843: Expansion of g.f.: Sum_{k>=1} k * x^(k^3) / (1 - x^(k^3)).

The programs for A333843, the canonical program `A333843.P11923801830079901866` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333843 has offset 1).

The definition of A333843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053150, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333843.P11923801830079901866

`A000203(A053150(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A333843

/-- `A000203(A053150(n+1))` -/
def P11923801830079901866.Spec : Prop :=
  ∀ n, P11923801830079901866.a n = A333843 (n + 1)

theorem P11923801830079901866.correct : P11923801830079901866.Spec := by
  intro n
  simp only [A333843, Nat.add_sub_cancel]

end A333843

/-! ## A333843.P18021418855206655250

`A069290(A000189(n+1))`
-/

namespace A333843.P18021418855206655250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000189 (n + 1)).toNat

end

end A333843.P18021418855206655250

namespace A333843

/-- `A069290(A000189(n+1))` -/
def P18021418855206655250.Spec : Prop :=
  ∀ n, P18021418855206655250.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P13178741371123518417

`A069290(A053150(n+1)²)`
-/

namespace A333843.P13178741371123518417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A053150 (n + 1) ^ 2).toNat

end

end A333843.P13178741371123518417

namespace A333843

/-- `A069290(A053150(n+1)²)` -/
def P13178741371123518417.Spec : Prop :=
  ∀ n, P13178741371123518417.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P6571349408979649963

`A069290((n+1)/A019555(n+1))`
-/

namespace A333843.P6571349408979649963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019555 (n + 1) : ℚ))).toNat

end

end A333843.P6571349408979649963

namespace A333843

/-- `A069290((n+1)/A019555(n+1))` -/
def P6571349408979649963.Spec : Prop :=
  ∀ n, P6571349408979649963.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P1967310981177028541

`A069290(2*A053150(n+1)*A053150(n+1))`
-/

namespace A333843.P1967310981177028541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (2 * A053150 (n + 1) * A053150 (n + 1)).toNat

end

end A333843.P1967310981177028541

namespace A333843

/-- `A069290(2*A053150(n+1)*A053150(n+1))` -/
def P1967310981177028541.Spec : Prop :=
  ∀ n, P1967310981177028541.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P13155211289557690089

`A000203(n+1)-A345321(n+1)`
-/

namespace A333843.P13155211289557690089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A345321 (n + 1)

end

end A333843.P13155211289557690089

namespace A333843

/-- `A000203(n+1)-A345321(n+1)` -/
def P13155211289557690089.Spec : Prop :=
  ∀ n, P13155211289557690089.a n = A333843 (n + 1)

theorem P13155211289557690089.correct : P13155211289557690089.Spec := by
  intro n
  simp only [A333843, Nat.add_sub_cancel, A333843.P13155211289557690089.a, A333843.P11923801830079901866.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053150, A053150.P12506958821739849534.a, A345321, A345321.P1628524416626667783.a, A000188, A000188.P7486858720566838181.a, A000189, A000189.P11210685475351648118.a, A050985, A050985.P12411912326700818488.f1, A050985.P12411912326700818488.a, A008833, A008833.P18388074464065390543.a, A053149, A053149.P4125189005957149122.a, A073185, A073185.P13146702220439815820.a, A210826, A210826.P1982609276010569986.f1, A210826.P1982609276010569986.a, A007913, A007913.P11359412940648999332.a, A007948, A007948.P9205423498154585874.a, A048798, A048798.P11871248388947828360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A333843

/-! ## A333843.P1980668855837379994

`A333844(A000189(n+1)²)`
-/

namespace A333843.P1980668855837379994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 (A000189 (n + 1) ^ 2).toNat

end

end A333843.P1980668855837379994

namespace A333843

/-- `A333844(A000189(n+1)²)` -/
def P1980668855837379994.Spec : Prop :=
  ∀ n, P1980668855837379994.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P7434583188425111585

`A333844(A053150(n+1)²²)`
-/

namespace A333843.P7434583188425111585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 ((A053150 (n + 1) ^ 2) ^ 2).toNat

end

end A333843.P7434583188425111585

namespace A333843

/-- `A333844(A053150(n+1)²²)` -/
def P7434583188425111585.Spec : Prop :=
  ∀ n, P7434583188425111585.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P10463300598554981240

`A333844((n+1)*A053150(n+1))`
-/

namespace A333843.P10463300598554981240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A333843.P10463300598554981240

namespace A333843

/-- `A333844((n+1)*A053150(n+1))` -/
def P10463300598554981240.Spec : Prop :=
  ∀ n, P10463300598554981240.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P7232142827387932588

`A333844(A000190((n+1)²))`
-/

namespace A333843.P7232142827387932588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 (A000190 ((n + 1) ^ 2)).toNat

end

end A333843.P7232142827387932588

namespace A333843

/-- `A333844(A000190((n+1)²))` -/
def P7232142827387932588.Spec : Prop :=
  ∀ n, P7232142827387932588.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P17963661394513427596

`A333844((n+1)*A019555(n+1))`
-/

namespace A333843.P17963661394513427596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 ((n + 1 : ℤ) * A019555 (n + 1)).toNat

end

end A333843.P17963661394513427596

namespace A333843

/-- `A333844((n+1)*A019555(n+1))` -/
def P17963661394513427596.Spec : Prop :=
  ∀ n, P17963661394513427596.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P91613857327278464

`A000203(A000189((n+1)²)/(n+1))`
-/

namespace A333843.P91613857327278464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A000189 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A333843.P91613857327278464

namespace A333843

/-- `A000203(A000189((n+1)²)/(n+1))` -/
def P91613857327278464.Spec : Prop :=
  ∀ n, P91613857327278464.a n = A333843 (n + 1)

end A333843

/-! ## A333843.P1748549152041244159

`A000203((n+1)/A019555((n+1)²))`
-/

namespace A333843.P1748549152041244159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019555 ((n + 1) ^ 2) : ℚ))).toNat

end

end A333843.P1748549152041244159

namespace A333843

/-- `A000203((n+1)/A019555((n+1)²))` -/
def P1748549152041244159.Spec : Prop :=
  ∀ n, P1748549152041244159.a n = A333843 (n + 1)

end A333843

/-!
# A333844: G.f.: Sum_{k>=1} k * x^(k^4) / (1 - x^(k^4)).

The programs for A333844, the canonical program `A333844.P7651636185447083206` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333844 has offset 1).

The definition of A333844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333844.P13024213789232196662

`A069290(A000188(n+1))`
-/

namespace A333844.P13024213789232196662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000188 (n + 1)).toNat

end

end A333844.P13024213789232196662

namespace A333844

/-- `A069290(A000188(n+1))` -/
def P13024213789232196662.Spec : Prop :=
  ∀ n, P13024213789232196662.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P7651636185447083206

`A333843(A000190(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333844

/-- `A333843(A000190(n+1))` -/
def P7651636185447083206.Spec : Prop :=
  ∀ n, P7651636185447083206.a n = A333844 (n + 1)

theorem P7651636185447083206.correct : P7651636185447083206.Spec := by
  intro n
  simp only [A333844, Nat.add_sub_cancel]

end A333844

/-! ## A333844.P5197754508256096693

`A069290(A057918(n+1)+1)`
-/

namespace A333844.P5197754508256096693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A057918 (n + 1) + 1).toNat

end

end A333844.P5197754508256096693

namespace A333844

/-- `A069290(A057918(n+1)+1)` -/
def P5197754508256096693.Spec : Prop :=
  ∀ n, P5197754508256096693.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P13568834444366075669

`A000203(sqrt(sqrt(A008835(n+1))))`
-/

namespace A333844.P13568834444366075669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A008835 (n + 1) : ℝ)))).toNat

end

end A333844.P13568834444366075669

namespace A333844

/-- `A000203(sqrt(sqrt(A008835(n+1))))` -/
def P13568834444366075669.Spec : Prop :=
  ∀ n, P13568834444366075669.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P10209325768283936999

`∑{d}[A000188(n+1), A037213(#)]`
-/

namespace A333844.P10209325768283936999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A037213 d

end

end A333844.P10209325768283936999

namespace A333844

/-- `∑{d}[A000188(n+1), A037213(#)]` -/
def P10209325768283936999.Spec : Prop :=
  ∀ n, P10209325768283936999.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P12439484600629688292

`A000203(A057918(A057918(n+1)+1)+1)`
-/

namespace A333844.P12439484600629688292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057918 (A057918 (n + 1) + 1).toNat + 1).toNat

end

end A333844.P12439484600629688292

namespace A333844

/-- `A000203(A057918(A057918(n+1)+1)+1)` -/
def P12439484600629688292.Spec : Prop :=
  ∀ n, P12439484600629688292.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P1655239537729528252

`A070039(A053164(n+1)*A151800(n))`
-/

namespace A333844.P1655239537729528252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (A053164 (n + 1) * A151800 n).toNat

end

end A333844.P1655239537729528252

namespace A333844

/-- `A070039(A053164(n+1)*A151800(n))` -/
def P1655239537729528252.Spec : Prop :=
  ∀ n, P1655239537729528252.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P17866109223835994909

`A286000(A008835(n+1))`
-/

namespace A333844.P17866109223835994909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286000 (A008835 (n + 1)).toNat

end

end A333844.P17866109223835994909

namespace A333844

/-- `A286000(A008835(n+1))` -/
def P17866109223835994909.Spec : Prop :=
  ∀ n, P17866109223835994909.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P6068724490068321272

`A001222(A270282(or(1, A008835(n+1)))+3)`
-/

namespace A333844.P6068724490068321272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270282 (Int.lor 1 (A008835 (n + 1))).toNat + 3).toNat

end

end A333844.P6068724490068321272

namespace A333844

/-- `A001222(A270282(or(1, A008835(n+1)))+3)` -/
def P6068724490068321272.Spec : Prop :=
  ∀ n, P6068724490068321272.a n = A333844 (n + 1)

end A333844

/-! ## A333844.P3190292883688495874

`A301279(val(A343252(n+1), 4))`
-/

namespace A333844.P3190292883688495874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301279 (SequenceMachineLib.valuation (A343252 (n + 1)).toNat 4)

end

end A333844.P3190292883688495874

namespace A333844

/-- `A301279(val(A343252(n+1), 4))` -/
def P3190292883688495874.Spec : Prop :=
  ∀ n, P3190292883688495874.a n = A333844 (n + 1)

end A333844

/-!
# A333846: Numbers k such that the number of primes between k^2 and (k+1)^2 increases to a new record.

The programs for A333846, there is no canonical definition to state claims against.
-/

/-! ## A333846.P12629149641152462261

`record[A305003(n)²%(n+1)]`
-/

namespace A333846.P12629149641152462261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305003 n ^ 2) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333846.P12629149641152462261

/-! ## A333846.P15191578691889246932

`eq[2, A083953(A035608(2*(n+2)))]`
-/

namespace A333846.P15191578691889246932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A035608 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333846.P15191578691889246932

/-! ## A333846.P154535468680841200

`eq[A001221(A066729(n+1)), A011591(n)]`
-/

namespace A333846.P154535468680841200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066729 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333846.P154535468680841200

/-!
# A333847: a(n) = A063514(A028982(n)).

The programs for A333847, the canonical program `A333847.P9301522626114705405` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333847 has offset 1).

The definition of A333847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, A063514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333847.P9301522626114705405

`A063514(A028982(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A333847

/-- `A063514(A028982(n+1))` -/
def P9301522626114705405.Spec : Prop :=
  ∀ n, P9301522626114705405.a n = A333847 (n + 1)

theorem P9301522626114705405.correct : P9301522626114705405.Spec := by
  intro n
  simp only [A333847, Nat.add_sub_cancel]

end A333847

/-! ## A333847.P13062970265353226356

`∑{d}[∪[2*(n+1)², (n+1)²], #]%A000010(∪[2*(n+1)², (n+1)²])`
-/

namespace A333847.P13062970265353226356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A000010 (SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∨ ∃ j, f5 j = x) n))

end

end A333847.P13062970265353226356

namespace A333847

/-- `∑{d}[∪[2*(n+1)², (n+1)²], #]%A000010(∪[2*(n+1)², (n+1)²])` -/
def P13062970265353226356.Spec : Prop :=
  ∀ n, P13062970265353226356.a n = A333847 (n + 1)

end A333847

/-! ## A333847.P11808586328083086216

`A152677(n+1)%A000010(A028982(n+1))`
-/

namespace A333847.P11808586328083086216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152677 (n + 1)) (A000010 (A028982 (n + 1)).toNat)

end

end A333847.P11808586328083086216

namespace A333847

/-- `A152677(n+1)%A000010(A028982(n+1))` -/
def P11808586328083086216.Spec : Prop :=
  ∀ n, P11808586328083086216.a n = A333847 (n + 1)

end A333847

/-! ## A333847.P11013436114491788025

`A000203(A088827(n+1)/2)%A000010(A028982(n+1))`
-/

namespace A333847.P11013436114491788025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (SequenceMachineLib.roundAway ((A088827 (n + 1) : ℚ) / 2)).toNat) (A000010 (A028982 (n + 1)).toNat)

end

end A333847.P11013436114491788025

namespace A333847

/-- `A000203(A088827(n+1)/2)%A000010(A028982(n+1))` -/
def P11013436114491788025.Spec : Prop :=
  ∀ n, P11013436114491788025.a n = A333847 (n + 1)

end A333847

/-! ## A333847.P1100617178641507329

`A063514(∪[2*(n+1)², (n+1)²])`
-/

namespace A333847.P1100617178641507329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A333847.P1100617178641507329

namespace A333847

/-- `A063514(∪[2*(n+1)², (n+1)²])` -/
def P1100617178641507329.Spec : Prop :=
  ∀ n, P1100617178641507329.a n = A333847 (n + 1)

end A333847

/-! ## A333847.P8977051445588226781

`A063514(record[A235872(n+1)])`
-/

namespace A333847.P8977051445588226781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333847.P8977051445588226781

namespace A333847

/-- `A063514(record[A235872(n+1)])` -/
def P8977051445588226781.Spec : Prop :=
  ∀ n, P8977051445588226781.a n = A333847 (n + 1)

end A333847

/-! ## A333847.P14426237184698682386

`A063514(A088827(n+1)/2)`
-/

namespace A333847.P14426237184698682386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (SequenceMachineLib.roundAway ((A088827 (n + 1) : ℚ) / 2)).toNat

end

end A333847.P14426237184698682386

namespace A333847

/-- `A063514(A088827(n+1)/2)` -/
def P14426237184698682386.Spec : Prop :=
  ∀ n, P14426237184698682386.a n = A333847 (n + 1)

end A333847

/-! ## A333847.P5427465739905652436

`A063514(record[(n+1)*A053866(n+1)])`
-/

namespace A333847.P5427465739905652436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333847.P5427465739905652436

namespace A333847

/-- `A063514(record[(n+1)*A053866(n+1)])` -/
def P5427465739905652436.Spec : Prop :=
  ∀ n, P5427465739905652436.a n = A333847 (n + 1)

end A333847

/-! ## A333847.P2450470081540244581

`A326065(A088827(n+1))%A000010(A028982(n+1))`
-/

namespace A333847.P2450470081540244581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326065 (A088827 (n + 1)).toNat) (A000010 (A028982 (n + 1)).toNat)

end

end A333847.P2450470081540244581

namespace A333847

/-- `A326065(A088827(n+1))%A000010(A028982(n+1))` -/
def P2450470081540244581.Spec : Prop :=
  ∀ n, P2450470081540244581.a n = A333847 (n + 1)

end A333847

/-!
# A333848: a(n) gives the sum of the odd numbers of the smallest nonnegative reduced residue system modulo 2*n + 1, for n >= 0.

The programs for A333848, the canonical program `A333848.P15764864225424586531` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333848 has offset 0).

The definition of A333848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333848.P15764864225424586531

`A340714(Δ[n²])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A333848

/-- `A340714(Δ[n²])` -/
def P15764864225424586531.Spec : Prop :=
  ∀ n, P15764864225424586531.a n = A333848 n

theorem P15764864225424586531.correct : P15764864225424586531.Spec := by
  intro n
  simp only [A333848]

end A333848

/-! ## A333848.P9963442825804432842

`or(char[1], A340714(2*n+1))`
-/

namespace A333848.P9963442825804432842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A340714 (2 * n + 1))

end

end A333848.P9963442825804432842

namespace A333848

/-- `or(char[1], A340714(2*n+1))` -/
def P9963442825804432842.Spec : Prop :=
  ∀ n, P9963442825804432842.a n = A333848 n

end A333848

/-! ## A333848.P9805740570363778952

`gcd(n, n+1)*A340714(A005408(n))`
-/

namespace A333848.P9805740570363778952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A340714 (A005408 n).toNat

end

end A333848.P9805740570363778952

namespace A333848

/-- `gcd(n, n+1)*A340714(A005408(n))` -/
def P9805740570363778952.Spec : Prop :=
  ∀ n, P9805740570363778952.a n = A333848 n

end A333848

/-! ## A333848.P14152195628897113629

`(A066840(2*n+1)-A124440(2*n+1))*A057428(n)`
-/

namespace A333848.P14152195628897113629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066840 (2 * n + 1) - A124440 (2 * n + 1)) * A057428 n

end

end A333848.P14152195628897113629

namespace A333848

/-- `(A066840(2*n+1)-A124440(2*n+1))*A057428(n)` -/
def P14152195628897113629.Spec : Prop :=
  ∀ n, P14152195628897113629.a n = A333848 n

end A333848

/-! ## A333848.P3510582203969514012

`(A005408(n)-A005843(n))*A340714(A005408(n))`
-/

namespace A333848.P3510582203969514012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A005843 n) * A340714 (A005408 n).toNat

end

end A333848.P3510582203969514012

namespace A333848

/-- `(A005408(n)-A005843(n))*A340714(A005408(n))` -/
def P3510582203969514012.Spec : Prop :=
  ∀ n, P3510582203969514012.a n = A333848 n

theorem P3510582203969514012.correct : P3510582203969514012.Spec := by
  intro n
  simp only [A333848, Nat.add_sub_cancel, A333848.P3510582203969514012.a, A333848.P15764864225424586531.f1, A333848.P15764864225424586531.a, A005408, A005408.P17437947328870227736.a, A005843, A005843.P3167286115683555970.a, A340714, A340714.P5712239063157682719.f1, A340714.P5712239063157682719.a, A002620, A002620.P9002536657626793813.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333848

/-! ## A333848.P13367547553771267643

`lcm(A008683(A007645(n+1)), A340714(n+1+n))`
-/

namespace A333848.P13367547553771267643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A007645 (n + 1)).toNat) (A340714 (n + 1 + n))

end

end A333848.P13367547553771267643

namespace A333848

/-- `lcm(A008683(A007645(n+1)), A340714(n+1+n))` -/
def P13367547553771267643.Spec : Prop :=
  ∀ n, (P13367547553771267643.a n : ℤ) = A333848 n

end A333848

/-! ## A333848.P11990159816260114329

`A066840(A133653(n+1))`
-/

namespace A333848.P11990159816260114329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066840 (A133653 (n + 1)).toNat

end

end A333848.P11990159816260114329

namespace A333848

/-- `A066840(A133653(n+1))` -/
def P11990159816260114329.Spec : Prop :=
  ∀ n, P11990159816260114329.a n = A333848 n

end A333848

/-! ## A333848.P14848883120541776612

`A066840(A103517(2*n))`
-/

namespace A333848.P14848883120541776612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066840 (A103517 (2 * n)).toNat

end

end A333848.P14848883120541776612

namespace A333848

/-- `A066840(A103517(2*n))` -/
def P14848883120541776612.Spec : Prop :=
  ∀ n, P14848883120541776612.a n = A333848 n

end A333848

/-! ## A333848.P15080015123811593798

`A066840(A103517(n)+n+n)`
-/

namespace A333848.P15080015123811593798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066840 (A103517 n + (n : ℤ) + (n : ℤ)).toNat

end

end A333848.P15080015123811593798

namespace A333848

/-- `A066840(A103517(n)+n+n)` -/
def P15080015123811593798.Spec : Prop :=
  ∀ n, P15080015123811593798.a n = A333848 n

end A333848

/-! ## A333848.P7505937273773093994

`A023896(4*n+2)-A124440(4*n+2)`
-/

namespace A333848.P7505937273773093994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (4 * n + 2) - A124440 (4 * n + 2)

end

end A333848.P7505937273773093994

namespace A333848

/-- `A023896(4*n+2)-A124440(4*n+2)` -/
def P7505937273773093994.Spec : Prop :=
  ∀ n, P7505937273773093994.a n = A333848 n

end A333848

/-! ## A333848.P948008346963654746

`∑{d}[A340714(2*n+1), A000010(#)]`
-/

namespace A333848.P948008346963654746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A333848.P948008346963654746

namespace A333848

/-- `∑{d}[A340714(2*n+1), A000010(#)]` -/
def P948008346963654746.Spec : Prop :=
  ∀ n, P948008346963654746.a n = A333848 n

end A333848

/-! ## A333848.P14601248194802787863

`A340714(2*n+1)^A095666(∑[n])`
-/

namespace A333848.P14601248194802787863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340714 (2 * n + 1) : ℚ) ^ (A095666 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A333848.P14601248194802787863

namespace A333848

/-- `A340714(2*n+1)^A095666(∑[n])` -/
def P14601248194802787863.Spec : Prop :=
  ∀ n, P14601248194802787863.a n = (A333848 n : ℚ)

end A333848

/-! ## A333848.P9276210182818447174

`A340714(n+1+n)^A026736(∑[n])`
-/

namespace A333848.P9276210182818447174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340714 (n + 1 + n) : ℚ) ^ (A026736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A333848.P9276210182818447174

namespace A333848

/-- `A340714(n+1+n)^A026736(∑[n])` -/
def P9276210182818447174.Spec : Prop :=
  ∀ n, P9276210182818447174.a n = (A333848 n : ℚ)

end A333848

/-! ## A333848.P5794979689828449590

`filter[A340714(2*n+1), A267778(#)]`
-/

namespace A333848.P5794979689828449590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267778 (f1 j).toNat = 1) n)

end

end A333848.P5794979689828449590

namespace A333848

/-- `filter[A340714(2*n+1), A267778(#)]` -/
def P5794979689828449590.Spec : Prop :=
  ∀ n, P5794979689828449590.a n = A333848 n

end A333848

/-! ## A333848.P14718394057167171696

`filter[A340714(2*n+1), A267866(#)]`
-/

namespace A333848.P14718394057167171696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267866 (f1 j).toNat = 1) n)

end

end A333848.P14718394057167171696

namespace A333848

/-- `filter[A340714(2*n+1), A267866(#)]` -/
def P14718394057167171696.Spec : Prop :=
  ∀ n, P14718394057167171696.a n = A333848 n

end A333848

/-! ## A333848.P3407003466066116748

`filter[A340714(2*n+1), A267919(#)]`
-/

namespace A333848.P3407003466066116748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267919 (f1 j).toNat = 1) n)

end

end A333848.P3407003466066116748

namespace A333848

/-- `filter[A340714(2*n+1), A267919(#)]` -/
def P3407003466066116748.Spec : Prop :=
  ∀ n, P3407003466066116748.a n = A333848 n

end A333848

/-!
# A333849: a(n) = gcd(A333848(n), 2*(2*n+1)), for n >= 0.

The programs for A333849, the canonical program `A333849.P9337885781669229401` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333849 has offset 0).

The definition of A333849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333848, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333849.P9337885781669229401

`gcd(A333848(n), 2*(2*n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A333849

/-- `gcd(A333848(n), 2*(2*n+1))` -/
def P9337885781669229401.Spec : Prop :=
  ∀ n, (P9337885781669229401.a n : ℤ) = A333849 n

theorem P9337885781669229401.correct : P9337885781669229401.Spec := by
  intro n
  simp only [A333849]

end A333849

/-! ## A333849.P5926893097940667427

`gcd(A016825(n), A333848(n))`
-/

namespace A333849.P5926893097940667427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016825 n) (A333848 n)

end

end A333849.P5926893097940667427

namespace A333849

/-- `gcd(A016825(n), A333848(n))` -/
def P5926893097940667427.Spec : Prop :=
  ∀ n, (P5926893097940667427.a n : ℤ) = A333849 n

end A333849

/-! ## A333849.P16550274288376184716

`gcd(4*n+2, A006370(A173557(2*n+1)))`
-/

namespace A333849.P16550274288376184716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n + 2 : ℤ) (A006370 (A173557 (2 * n + 1)).toNat)

end

end A333849.P16550274288376184716

namespace A333849

/-- `gcd(4*n+2, A006370(A173557(2*n+1)))` -/
def P16550274288376184716.Spec : Prop :=
  ∀ n, (P16550274288376184716.a n : ℤ) = A333849 n

end A333849

/-! ## A333849.P2710472793012524878

`gcd(Δ[A056220(n)], A340714(2*n+1))`
-/

namespace A333849.P2710472793012524878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A340714 (2 * n + 1))

end

end A333849.P2710472793012524878

namespace A333849

/-- `gcd(Δ[A056220(n)], A340714(2*n+1))` -/
def P2710472793012524878.Spec : Prop :=
  ∀ n, (P2710472793012524878.a n : ℤ) = A333849 n

end A333849

/-! ## A333849.P5754426306526538593

`gcd(2*A005408(n), A340714(A005408(n)))`
-/

namespace A333849.P5754426306526538593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A005408 n) (A340714 (A005408 n).toNat)

end

end A333849.P5754426306526538593

namespace A333849

/-- `gcd(2*A005408(n), A340714(A005408(n)))` -/
def P5754426306526538593.Spec : Prop :=
  ∀ n, (P5754426306526538593.a n : ℤ) = A333849 n

end A333849

/-! ## A333849.P18356492373359200189

`gcd(A005843(A005408(n)), A340714(n+1+n))`
-/

namespace A333849.P18356492373359200189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A005408 n).toNat) (A340714 (n + 1 + n))

end

end A333849.P18356492373359200189

namespace A333849

/-- `gcd(A005843(A005408(n)), A340714(n+1+n))` -/
def P18356492373359200189.Spec : Prop :=
  ∀ n, (P18356492373359200189.a n : ℤ) = A333849 n

end A333849

/-! ## A333849.P389900636561299491

`gcd(A340714(2*n+1)+A005843(2*n+1), A005843(2*n+1))`
-/

namespace A333849.P389900636561299491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340714 (2 * n + 1) + A005843 (2 * n + 1)) (A005843 (2 * n + 1))

end

end A333849.P389900636561299491

namespace A333849

/-- `gcd(A340714(2*n+1)+A005843(2*n+1), A005843(2*n+1))` -/
def P389900636561299491.Spec : Prop :=
  ∀ n, (P389900636561299491.a n : ℤ) = A333849 n

end A333849

/-! ## A333849.P9374458746987793819

`gcd(4*n+2, A066840(A103517(2*n)))`
-/

namespace A333849.P9374458746987793819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n + 2 : ℤ) (A066840 (A103517 (2 * n)).toNat)

end

end A333849.P9374458746987793819

namespace A333849

/-- `gcd(4*n+2, A066840(A103517(2*n)))` -/
def P9374458746987793819.Spec : Prop :=
  ∀ n, (P9374458746987793819.a n : ℤ) = A333849 n

end A333849

/-!
# A333852: Irregular triangle read by rows: representative simple difference sets of Singer type of order m, for m = A000961(n), for n >= 1.

The programs for A333852, there is no canonical definition to state claims against.
-/

/-! ## A333852.P7250710923564996835

`dr(A245241(n+1)%A316815(n+1))`
-/

namespace A333852.P7250710923564996835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A245241 (n + 1)) (A316815 (n + 1)))

end

end A333852.P7250710923564996835

/-! ## A333852.P5535041925597686437

`A319084(A264846(n+1))%A319103(n)`
-/

namespace A333852.P5535041925597686437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319084 (A264846 (n + 1)).toNat) (A319103 n)

end

end A333852.P5535041925597686437

/-! ## A333852.P8955419573745250045

`A095039(A264846(n+1))%A335865(A037124(n+1)+1)`
-/

namespace A333852.P8955419573745250045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095039 (A264846 (n + 1)).toNat) (A335865 (A037124 (n + 1) + 1).toNat)

end

end A333852.P8955419573745250045

/-! ## A333852.P4667656534702525020

`A015614(A264846(n+1)%A180376(n+1))`
-/

namespace A333852.P4667656534702525020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (Int.tmod (A264846 (n + 1)) (A180376 (n + 1))).toNat

end

end A333852.P4667656534702525020

/-!
# A333853: The values >= 2 of A135303 for the odd numbers A333855(n), for n >= 1.

The programs for A333853, there is no canonical definition to state claims against.
-/

/-! ## A333853.P3026415423499675982

`A135303((A333855(n+1)-1)/2)`
-/

namespace A333853.P3026415423499675982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (SequenceMachineLib.roundAway ((A333855 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A333853.P3026415423499675982

/-! ## A333853.P4530980050177250137

`A135303(floor(A333855(n+1)/2))`
-/

namespace A333853.P4530980050177250137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 ⌊(A333855 (n + 1) : ℚ) / 2⌋.toNat

end

end A333853.P4530980050177250137

/-! ## A333853.P10905968580327357272

`A135303(lt[1, A135303(n+1)]+1)`
-/

namespace A333853.P10905968580327357272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A333853.P10905968580327357272

/-! ## A333853.P1068175230707274687

`A135303(eq[2, 2%A135303(n+1)²]+1)`
-/

namespace A333853.P1068175230707274687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A135303 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333853.P1068175230707274687

/-! ## A333853.P4190605990718134411

`A135303(lt[A003558(n), A008619(n)])`
-/

namespace A333853.P4190605990718134411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333853.P4190605990718134411

/-! ## A333853.P13656666742232146929

`A135303(lt[A003558(n), A072451(n+1)])`
-/

namespace A333853.P13656666742232146929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333853.P13656666742232146929

/-!
# A333854: Numbers 2*k + 1 with A135303(k) = 1, for k >= 1, sorted increasingly.

The programs for A333854, there is no canonical definition to state claims against.
-/

/-! ## A333854.P14451609826213194015

`record[(2*n+3)/A135303(n+1)]`
-/

namespace A333854.P14451609826213194015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) / (A135303 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333854.P14451609826213194015

/-! ## A333854.P8072267937934690644

`eq[char[A333855(n+1)], A106458(n)]`
-/

namespace A333854.P8072267937934690644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A333854.P8072267937934690644

/-! ## A333854.P8464307223392648018

`eq[char[A333855(n+1)], A282413(n)]`
-/

namespace A333854.P8464307223392648018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A333854.P8464307223392648018

/-! ## A333854.P12656608289400536099

`record[root(A144396(n+1), A135303(n+1))]`
-/

namespace A333854.P12656608289400536099
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A144396 (n + 1) : ℝ) ^ (1 / (A135303 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333854.P12656608289400536099

/-!
# A333855: Numbers 2*k + 1 with A135303(k) >= 2, for k >= 1, sorted increasingly.

The programs for A333855, there is no canonical definition to state claims against.
-/

/-! ## A333855.P18413301136340310061

`A005408(lt[A003558(n), A008619(n)])`
-/

namespace A333855.P18413301136340310061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333855.P18413301136340310061

/-! ## A333855.P10423419981100245853

`A144396(lt[A003558(n), A008619(n)])`
-/

namespace A333855.P10423419981100245853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333855.P10423419981100245853

/-! ## A333855.P16996412879893997156

`A267872(lt[A003558(n), A008619(n)])`
-/

namespace A333855.P16996412879893997156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333855.P16996412879893997156

/-! ## A333855.P3017742838089555151

`A005408(lt[A003558(n), A072451(n+1)])`
-/

namespace A333855.P3017742838089555151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333855.P3017742838089555151

/-! ## A333855.P7012151557769293004

`A144396(lt[A003558(n), A072451(n+1)])`
-/

namespace A333855.P7012151557769293004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333855.P7012151557769293004

/-!
# A333856: Irregular triangle read by rows: row n gives the members of the smallest nonnegative reduced residue system in the modified congruence modulo n by Brändli and Beyne, called mod* n.

The programs for A333856, there is no canonical definition to state claims against.
-/

/-! ## A333856.P17508672073552356118

`A366191(Δ[n²])`
-/

namespace A333856.P17508672073552356118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A333856.P17508672073552356118

/-! ## A333856.P15274473559994327354

`A366191(2*n+1)%(n+1)`
-/

namespace A333856.P15274473559994327354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366191 (2 * n + 1)) (n + 1 : ℤ)

end

end A333856.P15274473559994327354

/-! ## A333856.P9846358076667379410

`A182972(n+1-2%(n+1))%(n+1)`
-/

namespace A333856.P9846358076667379410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182972 (n + 1 - 2 % (n + 1))) (n + 1 : ℤ)

end

end A333856.P9846358076667379410

/-! ## A333856.P11223887260167916296

`A182972(n-a(A001221(n)))` with `a(0)=0`
-/

namespace A333856.P11223887260167916296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182972 ((n : ℤ) - a (A001221 n).toNat).toNat

end

end A333856.P11223887260167916296

/-! ## A333856.P7155055785059391931

`2-A022958(A366191(2*n+1))`
-/

namespace A333856.P7155055785059391931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A022958 (A366191 (2 * n + 1)).toNat

end

end A333856.P7155055785059391931

/-! ## A333856.P9101363276863709052

`A110654(2*A366191(2*n+1))`
-/

namespace A333856.P9101363276863709052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A366191 (2 * n + 1)).toNat

end

end A333856.P9101363276863709052

/-! ## A333856.P11435588074936828622

`filter[A366191(2*n+1), A102609(#)]`
-/

namespace A333856.P11435588074936828622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A333856.P11435588074936828622

/-! ## A333856.P15538268766923516116

`filter[A366191(2*n+1), A108358(#)]`
-/

namespace A333856.P15538268766923516116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108358 (f1 j).toNat = 1) n)

end

end A333856.P15538268766923516116

/-! ## A333856.P8488192405633703604

`filter[A366191(2*n+1), A114213(#)]`
-/

namespace A333856.P8488192405633703604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A333856.P8488192405633703604

/-! ## A333856.P2881643907161304350

`filter[A366191(2*n+1), A131217(#)]`
-/

namespace A333856.P2881643907161304350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131217 (f1 j).toNat = 1) n)

end

end A333856.P2881643907161304350

/-!
# A333857: Positive odd numbers b with an unequal number of odd and even elements of the restricted residue system of the mod* congruence of Brändli and Beyne (numbers b ordered increasingly).

The programs for A333857, there is no canonical definition to state claims against.
-/

/-! ## A333857.P11072307848963446904

`record[A048671(A004614(n+5))]`
-/

namespace A333857.P11072307848963446904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A004614 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333857.P11072307848963446904

/-! ## A333857.P9555819397050055506

`filter[A004614(n+1), A354108(#)]`
-/

namespace A333857.P9555819397050055506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A333857.P9555819397050055506

/-! ## A333857.P8261464025156142108

`∩[A004614(n+1), A070537(n+1)]`
-/

namespace A333857.P8261464025156142108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333857.P8261464025156142108

/-! ## A333857.P1175989562662289956

`∩[A004614(n+1), A127653(n+1)]`
-/

namespace A333857.P1175989562662289956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333857.P1175989562662289956

/-! ## A333857.P12386913785365117040

`∩[A004614(n+1), A180634(n+1)]`
-/

namespace A333857.P12386913785365117040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333857.P12386913785365117040

/-! ## A333857.P7169581960098034361

`∩[A004614(n+1), A231877(n+1)]`
-/

namespace A333857.P7169581960098034361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333857.P7169581960098034361

/-! ## A333857.P10393250801611432103

`∩[A004614(n+1), A359870(n+1)]`
-/

namespace A333857.P10393250801611432103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333857.P10393250801611432103

/-! ## A333857.P9567540503541867379

`∩[A004614(n+1), A361102(n+1)]`
-/

namespace A333857.P9567540503541867379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333857.P9567540503541867379

/-! ## A333857.P12636681951441647809

`∩[A004614(n+1), A387335(n+1)]`
-/

namespace A333857.P12636681951441647809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333857.P12636681951441647809

/-!
# A333858: Numbers that are both Colombian and Brazilian.

The programs for A333858, there is no canonical definition to state claims against.
-/

/-! ## A333858.P7967919277301539630

`lt[A059711(n)+A096234(n)², n]`
-/

namespace A333858.P7967919277301539630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n + A096234 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333858.P7967919277301539630

/-! ## A333858.P3293633408464192170

`A003052(lt[A003103(n+1), A003057(n+6)])`
-/

namespace A333858.P3293633408464192170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333858.P3293633408464192170

/-! ## A333858.P4611370781288054474

`A003052(lt[A003415(n+3), A167157(3*n+2)])`
-/

namespace A333858.P4611370781288054474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167157 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333858.P4611370781288054474

/-! ## A333858.P11251735811148562392

`A003052(lt[A001223(2*n+5), A360571(3*n+4)])`
-/

namespace A333858.P11251735811148562392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360571 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333858.P11251735811148562392

/-!
# A333859: Integers k such that A269254(k) = -1.

The programs for A333859, there is no canonical definition to state claims against.
-/

/-! ## A333859.P10987104866311550639

`lt[A269254(n+1), 0]+1`
-/

namespace A333859.P10987104866311550639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269254 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333859.P10987104866311550639

/-! ## A333859.P7808834146672949670

`eq[1-4/2, A269254(n+2)]+2`
-/

namespace A333859.P7808834146672949670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269254 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 2

end

end A333859.P7808834146672949670

/-! ## A333859.P847481009292082436

`eq[1, -A269254(A028310(n))]`
-/

namespace A333859.P847481009292082436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A269254 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333859.P847481009292082436

/-! ## A333859.P12731836365649417074

`eq[-1, A269254(gcd(n, A008574(n)))]`
-/

namespace A333859.P12731836365649417074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269254 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333859.P12731836365649417074

/-! ## A333859.P7570037677830688858

`eq[A269254(n+2), A280193(2*n+1)]+2`
-/

namespace A333859.P7570037677830688858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269254 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A333859.P7570037677830688858

/-!
# A333860: The maximum Hamming (binary) weight of the elements of the Collatz orbit of n, or -1 if 1 is never reached.

The programs for A333860, there is no canonical definition to state claims against.
-/

/-! ## A333860.P3738875433414927642

`A352895(2*(n+1))`
-/

namespace A333860.P3738875433414927642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352895 (2 * (n + 1))

end

end A333860.P3738875433414927642

/-! ## A333860.P8878263631983333670

`A352895(lcm(2, n+1))%(n+2)`
-/

namespace A333860.P8878263631983333670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352895 (Nat.lcm 2 (n + 1))) (n + 2 : ℤ)

end

end A333860.P8878263631983333670

/-! ## A333860.P5517052679685595884

`A000027(A352895(lcm(2, n+1)))`
-/

namespace A333860.P5517052679685595884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A352895 (Nat.lcm 2 (n + 1))).toNat

end

end A333860.P5517052679685595884

/-! ## A333860.P13089625360633274769

`gcd(A099894(n), A352895(A066043(n+1)))`
-/

namespace A333860.P13089625360633274769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099894 n) (A352895 (A066043 (n + 1)).toNat)

end

end A333860.P13089625360633274769

/-! ## A333860.P350552103286707121

`A352895(A103517(n))%A000423(n+1)`
-/

namespace A333860.P350552103286707121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352895 (A103517 n).toNat) (A000423 (n + 1))

end

end A333860.P350552103286707121

/-! ## A333860.P3549053088145214969

`A352897(A005940(n+2))`
-/

namespace A333860.P3549053088145214969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352897 (A005940 (n + 2)).toNat

end

end A333860.P3549053088145214969

/-! ## A333860.P14106084811521256664

`A352896(A005940(2*n+3))`
-/

namespace A333860.P14106084811521256664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (A005940 (2 * n + 3)).toNat

end

end A333860.P14106084811521256664

/-!
# A333864: Number of Hamiltonian cycles on an n X 2*n grid.

The programs for A333864, there is no canonical definition to state claims against.
-/

/-! ## A333864.P10568674635691707039

`A321172(A001844(n+1))`
-/

namespace A333864.P10568674635691707039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (A001844 (n + 1)).toNat

end

end A333864.P10568674635691707039

/-! ## A333864.P5107227520785358957

`A321172(A000326(n+2)+A000217(n))`
-/

namespace A333864.P5107227520785358957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (A000326 (n + 2) + A000217 n).toNat

end

end A333864.P5107227520785358957

/-!
# A333865: Number of simple graphs on n nodes with vertex count > edge count + 1.

The programs for A333865, there is no canonical definition to state claims against.
-/

/-! ## A333865.P18054284039878522018

`A328057(n+1)-A001433(n+1)`
-/

namespace A333865.P18054284039878522018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328057 (n + 1) - A001433 (n + 1)

end

end A333865.P18054284039878522018

/-! ## A333865.P3703607179479828177

`A328057(n+1)-A008406(Δ[C(n+2, 4)+1+n])`
-/

namespace A333865.P3703607179479828177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328057 (n + 1) - A008406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A333865.P3703607179479828177

/-! ## A333865.P6492218402156496120

`A328057(n+1)-A008406(A000292(n)+1)`
-/

namespace A333865.P6492218402156496120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328057 (n + 1) - A008406 (A000292 n + 1).toNat

end

end A333865.P6492218402156496120

/-! ## A333865.P8695895097375783767

`A328057(n+1)-A008406(A126972(n+1))`
-/

namespace A333865.P8695895097375783767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328057 (n + 1) - A008406 (A126972 (n + 1)).toNat

end

end A333865.P8695895097375783767

/-! ## A333865.P14813463667613285104

`A328057(n+1)-A008406(A180415(n+1))`
-/

namespace A333865.P14813463667613285104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328057 (n + 1) - A008406 (A180415 (n + 1)).toNat

end

end A333865.P14813463667613285104

/-!
# A333866: Lexicographically earliest sequence of distinct positive integers, which when mapped onto a square spiral, gives a set without four distinct points forming a square.

The programs for A333866, there is no canonical definition to state claims against.
-/

/-! ## A333866.P13584607482525641913

`eq[A010108(n), A025441(n+1)]`
-/

namespace A333866.P13584607482525641913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333866.P13584607482525641913

/-! ## A333866.P15414715799276733585

`eq[A010108(n), A339366(n+1)]`
-/

namespace A333866.P15414715799276733585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333866.P15414715799276733585

/-! ## A333866.P17293866648838290776

`eq[A010103(n), A353812(n+1)]`
-/

namespace A333866.P17293866648838290776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333866.P17293866648838290776

/-! ## A333866.P7995463816139492893

`eq[A010103(n), A353814(n+1)]`
-/

namespace A333866.P7995463816139492893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333866.P7995463816139492893

/-!
# A333867: Table with T(1,1) = 1; for n>1, T(n,k) is the number of k's in rows 1 through n-1.

The programs for A333867, there is no canonical definition to state claims against.
-/

/-! ## A333867.P14056903457629964430

`A143781(A262079(n+1))+A030717(n+1)`
-/

namespace A333867.P14056903457629964430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143781 (A262079 (n + 1)).toNat + A030717 (n + 1)

end

end A333867.P14056903457629964430

/-! ## A333867.P886229893160455259

`A030717(n+1)+A010815(A097399(2*(n+2)))`
-/

namespace A333867.P886229893160455259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1) + A010815 (A097399 (2 * (n + 2))).toNat

end

end A333867.P886229893160455259

/-!
# A333869: Perimeters of integer-sided triangles with at least one prime altitude.

The programs for A333869, the canonical program `A333869.P12729571298558811765` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333869 has offset 1).

The definition of A333869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333869.P12729571298558811765

`∪[A036690(n+2), A079704(n+2)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A333869

/-- `∪[A036690(n+2), A079704(n+2)]` -/
def P12729571298558811765.Spec : Prop :=
  ∀ n, (P12729571298558811765.a n : ℤ) = A333869 (n + 1)

theorem P12729571298558811765.correct : P12729571298558811765.Spec := by
  intro n
  simp only [A333869, Nat.add_sub_cancel]

end A333869

/-!
# A333870: The number of iterations of the absolute Möbius divisor function (A173557) required to reach from n to 1.

The programs for A333870, the canonical program `A333870.P17809596772471509378` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333870 has offset 1).

The definition of A333870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333870.P17809596772471509378

`a(∏{p}[n+1, #-1]-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333870

/-- `a(∏{p}[n+1, #-1]-1)+1` -/
def P17809596772471509378.Spec : Prop :=
  ∀ n, (P17809596772471509378.a n : ℤ) = A333870 (n + 1)

theorem P17809596772471509378.correct : P17809596772471509378.Spec := by
  intro n
  simp only [A333870, Nat.add_sub_cancel]

end A333870

/-! ## A333870.P17606174814090690294

`a(A003958(n+1)-1)+1` with `a(0)=0`
-/

namespace A333870.P17606174814090690294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A003958 (n + 1) - 1).toNat + 1

end

end A333870.P17606174814090690294

namespace A333870

/-- `a(A003958(n+1)-1)+1` -/
def P17606174814090690294.Spec : Prop :=
  ∀ n, (P17606174814090690294.a n : ℤ) = A333870 (n + 1)

end A333870

/-! ## A333870.P8284560388086065599

`a(A173557(n+1)-1)+1` with `a(0)=0`
-/

namespace A333870.P8284560388086065599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A173557 (n + 1) - 1).toNat + 1

end

end A333870.P8284560388086065599

namespace A333870

/-- `a(A173557(n+1)-1)+1` -/
def P8284560388086065599.Spec : Prop :=
  ∀ n, (P8284560388086065599.a n : ℤ) = A333870 (n + 1)

end A333870

/-! ## A333870.P8028593900894761594

`a(n-A318841(n+1))+1` with `a(0)=0`
-/

namespace A333870.P8028593900894761594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A318841 (n + 1)).toNat + 1

end

end A333870.P8028593900894761594

namespace A333870

/-- `a(n-A318841(n+1))+1` -/
def P8028593900894761594.Spec : Prop :=
  ∀ n, (P8028593900894761594.a n : ℤ) = A333870 (n + 1)

end A333870

/-! ## A333870.P923628567945318436

`A291769(a(A173557(n+1)-1))` with `a(0)=0`
-/

namespace A333870.P923628567945318436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291769 (a (A173557 (n + 1) - 1).toNat).toNat

end

end A333870.P923628567945318436

namespace A333870

/-- `A291769(a(A173557(n+1)-1))` -/
def P923628567945318436.Spec : Prop :=
  ∀ n, P923628567945318436.a n = A333870 (n + 1)

end A333870

/-! ## A333870.P4008931554583148173

`a(A000010(A007947(n+1))-1)+1` with `a(0)=0`
-/

namespace A333870.P4008931554583148173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A000010 (A007947 (n + 1)).toNat - 1).toNat + 1

end

end A333870.P4008931554583148173

namespace A333870

/-- `a(A000010(A007947(n+1))-1)+1` -/
def P4008931554583148173.Spec : Prop :=
  ∀ n, (P4008931554583148173.a n : ℤ) = A333870 (n + 1)

end A333870

/-!
# A333871: Sum of the iterated absolute Möbius divisor function (A173557).

The programs for A333871, the canonical program `A333871.P11383849512429304648` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333871 has offset 1).

The definition of A333871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333871.P11383849512429304648

`∏{p}[n+1, #-1]+a(∏{p}[n+1, #-1]-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333871

/-- `∏{p}[n+1, #-1]+a(∏{p}[n+1, #-1]-1)` -/
def P11383849512429304648.Spec : Prop :=
  ∀ n, P11383849512429304648.a n = A333871 (n + 1)

theorem P11383849512429304648.correct : P11383849512429304648.Spec := by
  intro n
  simp only [A333871, Nat.add_sub_cancel]

end A333871

/-! ## A333871.P7852023541845487921

`A173557(n+1)+a(A173557(n+1)-1)` with `a(0)=0`
-/

namespace A333871.P7852023541845487921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173557 (n + 1) + a (A173557 (n + 1) - 1).toNat

end

end A333871.P7852023541845487921

namespace A333871

/-- `A173557(n+1)+a(A173557(n+1)-1)` -/
def P7852023541845487921.Spec : Prop :=
  ∀ n, P7852023541845487921.a n = A333871 (n + 1)

end A333871

/-! ## A333871.P2379807423521833845

`A062130(∏{p}[n+1, #-1]%A344274(n+1))`
-/

namespace A333871.P2379807423521833845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) (A344274 (n + 1))).toNat

end

end A333871.P2379807423521833845

namespace A333871

/-- `A062130(∏{p}[n+1, #-1]%A344274(n+1))` -/
def P2379807423521833845.Spec : Prop :=
  ∀ n, P2379807423521833845.a n = A333871 (n + 1)

end A333871

/-! ## A333871.P9155389006548500879

`A062130(abs(∏{p}[n+1, -n%#])%A344274(n+1))`
-/

namespace A333871.P9155389006548500879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (Int.tmod |∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-(n : ℤ)) (p : ℤ)| (A344274 (n + 1))).toNat

end

end A333871.P9155389006548500879

namespace A333871

/-- `A062130(abs(∏{p}[n+1, -n%#])%A344274(n+1))` -/
def P9155389006548500879.Spec : Prop :=
  ∀ n, P9155389006548500879.a n = A333871 (n + 1)

end A333871

/-! ## A333871.P795237463799474021

`A062130(∏{p}[n+1, #-1])%A066392(n)`
-/

namespace A333871.P795237463799474021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062130 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat) (A066392 n)

end

end A333871.P795237463799474021

namespace A333871

/-- `A062130(∏{p}[n+1, #-1])%A066392(n)` -/
def P795237463799474021.Spec : Prop :=
  ∀ n, P795237463799474021.a n = A333871 (n + 1)

end A333871

/-!
# A333872: Numbers at which the sum of the iterated absolute Möbius divisor function (A173557) attains a record.

The programs for A333872, there is no canonical definition to state claims against.
-/

/-! ## A333872.P9613656043980379547

`A015919(record[A276571(A097012(n+1))])`
-/

namespace A333872.P9613656043980379547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A097012 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333872.P9613656043980379547

/-! ## A333872.P16677875764779376973

`record[A020639(A122197(A002473(n+1)))]`
-/

namespace A333872.P16677875764779376973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A122197 (A002473 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333872.P16677875764779376973

/-! ## A333872.P7284389564360404422

`A300271(A371694(n+1))`
-/

namespace A333872.P7284389564360404422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A371694 (n + 1)).toNat

end

end A333872.P7284389564360404422

/-! ## A333872.P8839668829000929992

`eq[A022066(n), A363731(n)]`
-/

namespace A333872.P8839668829000929992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333872.P8839668829000929992

/-! ## A333872.P17174982981213972569

`eq[A319916(n), A326322(A237367(n+1))]`
-/

namespace A333872.P17174982981213972569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (A237367 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333872.P17174982981213972569

/-!
# A333873: Numbers that equal to the sum of their iterated absolute Möbius divisor function (A173557).

The programs for A333873, there is no canonical definition to state claims against.
-/

/-! ## A333873.P3573112783853419844

`record[gcd(A051755(n+2), A333871(n+1))]`
-/

namespace A333873.P3573112783853419844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051755 (n + 2)) (A333871 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333873.P3573112783853419844

/-!
# A333875: Numbers k such that both k and k+1 are squarefree and phi(k) = phi(k+1), where phi is the Euler totient function (A000010).

The programs for A333875, there is no canonical definition to state claims against.
-/

/-! ## A333875.P10287093419899240324

`∩[A001274(n+1), A333874(n+1)]`
-/

namespace A333875.P10287093419899240324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P10287093419899240324

/-! ## A333875.P17191031142128759853

`∩[A063739(n+1), A333874(n+1)]`
-/

namespace A333875.P17191031142128759853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P17191031142128759853

/-! ## A333875.P8933490033623465158

`∩[A001274(n+1), A287055(n+1)]`
-/

namespace A333875.P8933490033623465158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P8933490033623465158

/-! ## A333875.P16138666429761044080

`∩[A063739(n+1), A287055(n+1)]`
-/

namespace A333875.P16138666429761044080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P16138666429761044080

/-! ## A333875.P6456361301468750023

`∩[A001274(n+1), A206368(n+1)]`
-/

namespace A333875.P6456361301468750023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P6456361301468750023

/-! ## A333875.P5342617105124309140

`∩[A057919(n+1), A206368(n+1)]`
-/

namespace A333875.P5342617105124309140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P5342617105124309140

/-! ## A333875.P11553946660438046736

`∩[A063739(n+1), A206368(n+1)]`
-/

namespace A333875.P11553946660438046736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P11553946660438046736

/-! ## A333875.P10996135589035731191

`∩[A206368(n+1), A333874(n+1)]`
-/

namespace A333875.P10996135589035731191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P10996135589035731191

/-! ## A333875.P15658829307784257202

`∩[A001274(n+1), A333408(n+1)]`
-/

namespace A333875.P15658829307784257202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P15658829307784257202

/-! ## A333875.P4349064678912017984

`∩[A063739(n+1), A333408(n+1)]`
-/

namespace A333875.P4349064678912017984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333875.P4349064678912017984

/-!
# A333876: a(n) is the largest prime 2^(n-1) <= p < 2^n minimizing the Hamming weight of all primes in this interval.

The programs for A333876, there is no canonical definition to state claims against.
-/

/-! ## A333876.P15727687398538442102

`p?[record[A072436(A288870(n))]]`
-/

namespace A333876.P15727687398538442102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A288870 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333876.P15727687398538442102

/-! ## A333876.P14872629713492211676

`p?[lt[A283998(n), A318310(n+1)]]`
-/

namespace A333876.P14872629713492211676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283998 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318310 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A333876.P14872629713492211676

/-! ## A333876.P17193454830285062964

`p?[A263660(n+1)+A263646(A263651(n+1))]`
-/

namespace A333876.P17193454830285062964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263660 (n + 1) + A263646 (A263651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333876.P17193454830285062964

/-!
# A333877: a(n) is the largest prime 2^(n-1) <= p < 2^n maximizing the Hamming weight of all primes in this interval.

The programs for A333877, there is no canonical definition to state claims against.
-/

/-! ## A333877.P12190974089822807356

`record[p?[A255067(n)]]`
-/

namespace A333877.P12190974089822807356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333877.P12190974089822807356

/-! ## A333877.P39543470169075548

`record[A006530(A255067(n+2))]`
-/

namespace A333877.P39543470169075548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A255067 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333877.P39543470169075548

/-! ## A333877.P10797358165113224435

`A151800(A014234(n+2)-A298614(n+1))`
-/

namespace A333877.P10797358165113224435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014234 (n + 2) - A298614 (n + 1)).toNat

end

end A333877.P10797358165113224435

/-! ## A333877.P12805477577113340607

`A000040(A007053(n+2)-A216601(n+2))`
-/

namespace A333877.P12805477577113340607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007053 (n + 2) - A216601 (n + 2)).toNat

end

end A333877.P12805477577113340607

/-! ## A333877.P5656401061037296691

`A000040(A007053(n+2)-A180472(2*n+3))`
-/

namespace A333877.P5656401061037296691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007053 (n + 2) - A180472 (2 * n + 3)).toNat

end

end A333877.P5656401061037296691

/-!
# A333878: a(n) is the number of primes 2^(n-1) <= p < 2^n with minimal Hamming weight A091935(n-1) in this interval.

The programs for A333878, there is no canonical definition to state claims against.
-/

/-! ## A333878.P14685224355405540060

`or(A010060(A329886(n)), A095056(n+1))`
-/

namespace A333878.P14685224355405540060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A329886 n).toNat) (A095056 (n + 1))

end

end A333878.P14685224355405540060

/-! ## A333878.P13340210022481373918

`A095056(n+1)^A325116(A000265(n+1))`
-/

namespace A333878.P13340210022481373918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095056 (n + 1) : ℚ) ^ (A325116 (A000265 (n + 1)).toNat : ℤ)

end

end A333878.P13340210022481373918

/-! ## A333878.P7558740441609827930

`A028310(gcd(A056492(n+1), A095056(n+1)))`
-/

namespace A333878.P7558740441609827930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (A056492 (n + 1)) (A095056 (n + 1)))

end

end A333878.P7558740441609827930

/-! ## A333878.P14949393099669537877

`A085157(A095056(n+1))%A101542(n+2)`
-/

namespace A333878.P14949393099669537877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085157 (A095056 (n + 1)).toNat) (A101542 (n + 2))

end

end A333878.P14949393099669537877

/-! ## A333878.P794399880812224181

`A340851(A003961(n+1))+A095056(n+1)`
-/

namespace A333878.P794399880812224181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340851 (A003961 (n + 1)).toNat + A095056 (n + 1)

end

end A333878.P794399880812224181

/-!
# A333879: a(n) is the number of primes 2^(n-1) <= p < 2^n with maximal Hamming weight A091937(n-1) in this interval.

The programs for A333879, there is no canonical definition to state claims against.
-/

/-! ## A333879.P14825888396105668788

`A023524(A230266(n+2))`
-/

namespace A333879.P14825888396105668788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023524 (A230266 (n + 2)).toNat

end

end A333879.P14825888396105668788

/-! ## A333879.P1077709098965191668

`A076869(A340080(n+2))`
-/

namespace A333879.P1077709098965191668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A340080 (n + 2)).toNat

end

end A333879.P1077709098965191668

/-! ## A333879.P15620465392745683547

`A010553(gcd(A208575(n), A289463(n)))`
-/

namespace A333879.P15620465392745683547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (Int.gcd (A208575 n) (A289463 n))

end

end A333879.P15620465392745683547

/-! ## A333879.P5033875386204221702

`A340967(A194880(n)+A062510(n+1))`
-/

namespace A333879.P5033875386204221702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340967 (A194880 n + A062510 (n + 1)).toNat

end

end A333879.P5033875386204221702

/-! ## A333879.P5064525747056061551

`A065033(and(A007835(n+1), A337544(n+1)))`
-/

namespace A333879.P5064525747056061551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.land (A007835 (n + 1)) (A337544 (n + 1))).toNat

end

end A333879.P5064525747056061551

/-!
# A333880: Number of integer solutions to n = x^k - y^k with x > y >= 0 and k >= 2.

The programs for A333880, there is no canonical definition to state claims against.
-/

/-! ## A333880.P13722926598017408998

`floor(A242628(n+1)/∏{e}[A129602(3*n+4), #!])`
-/

namespace A333880.P13722926598017408998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129602 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242628 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ)⌋

end

end A333880.P13722926598017408998

/-! ## A333880.P12883607038466311636

`val(A005993(n), A296076(A259592(n)))`
-/

namespace A333880.P12883607038466311636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005993 n).toNat (A296076 (A259592 n).toNat).toNat

end

end A333880.P12883607038466311636

/-! ## A333880.P8971339763636379242

`and(A001222(A268003(n+1)), A046978(n))`
-/

namespace A333880.P8971339763636379242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A268003 (n + 1)).toNat) (A046978 n)

end

end A333880.P8971339763636379242

/-! ## A333880.P1416363328460761775

`and(A008578(A249544(n+1)), A064876(n))`
-/

namespace A333880.P1416363328460761775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008578 (A249544 (n + 1)).toNat) (A064876 n)

end

end A333880.P1416363328460761775

/-!
# A333881: Expansion of e.g.f. exp(Sum_{k>=0} x^(3*k + 1) / (3*k + 1)!).

The programs for A333881, there is no canonical definition to state claims against.
-/

/-! ## A333881.P7337076558649792349

`A351968(n)-A025466(A008862(n))`
-/

namespace A333881.P7337076558649792349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351968 n - A025466 (A008862 n).toNat

end

end A333881.P7337076558649792349

/-! ## A333881.P775191777712463950

`A351968(n)-A185284(A011971(n))`
-/

namespace A333881.P775191777712463950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351968 n - A185284 (A011971 n).toNat

end

end A333881.P775191777712463950

/-! ## A333881.P311743775327717661

`A351968(n)-A007949(A222364(n+1))`
-/

namespace A333881.P311743775327717661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351968 n - A007949 (A222364 (n + 1)).toNat

end

end A333881.P311743775327717661

/-! ## A333881.P18130419582590724751

`A351968(n)-A007949(A296419(n+1))`
-/

namespace A333881.P18130419582590724751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351968 n - A007949 (A296419 (n + 1)).toNat

end

end A333881.P18130419582590724751

/-! ## A333881.P15782628863569117829

`A351968(n)-A178798(A217153(n+1))`
-/

namespace A333881.P15782628863569117829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351968 n - A178798 (A217153 (n + 1)).toNat

end

end A333881.P15782628863569117829

/-!
# A333884: Difference between smallest cube > n and n.

The programs for A333884, the canonical program `A333884.P15134154594463698287` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333884 has offset 0).

The definition of A333884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333884.P207430010895968264

`ceil(root(n+1, 3))^3-n`
-/

namespace A333884.P207430010895968264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3 - (n : ℤ)

end

end A333884.P207430010895968264

namespace A333884

/-- `ceil(root(n+1, 3))^3-n` -/
def P207430010895968264.Spec : Prop :=
  ∀ n, P207430010895968264.a n = A333884 n

end A333884

/-! ## A333884.P15134154594463698287

`abs(A048763(Δ[n²]-n)-n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A333884

/-- `abs(A048763(Δ[n²]-n)-n)` -/
def P15134154594463698287.Spec : Prop :=
  ∀ n, P15134154594463698287.a n = A333884 n

theorem P15134154594463698287.correct : P15134154594463698287.Spec := by
  intro n
  simp only [A333884]

end A333884

/-!
# A333885: Number of triples (i,j,k) with 1 <= i < j < k <= n such that i divides j divides k.

The programs for A333885, the canonical program `A333885.P8277892629072537770` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333885 has offset 1).

The definition of A333885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333885.P8277892629072537770

`∑[∑{d}[n+1, A070824(#)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A333885

/-- `∑[∑{d}[n+1, A070824(#)]]` -/
def P8277892629072537770.Spec : Prop :=
  ∀ n, P8277892629072537770.a n = A333885 (n + 1)

theorem P8277892629072537770.correct : P8277892629072537770.Spec := by
  intro n
  simp only [A333885, Nat.add_sub_cancel]

end A333885

/-! ## A333885.P8484955311416069491

`∑[∑{d}[n+1, A000005(#)-2]+1]`
-/

namespace A333885.P8484955311416069491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A000005 d - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333885.P8484955311416069491

namespace A333885

/-- `∑[∑{d}[n+1, A000005(#)-2]+1]` -/
def P8484955311416069491.Spec : Prop :=
  ∀ n, P8484955311416069491.a n = A333885 (n + 1)

end A333885

/-! ## A333885.P13121160913039238928

`∑[∑{d}[n+1, A032741(#%(n+1))]]`
-/

namespace A333885.P13121160913039238928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A032741 (d % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333885.P13121160913039238928

namespace A333885

/-- `∑[∑{d}[n+1, A032741(#%(n+1))]]` -/
def P13121160913039238928.Spec : Prop :=
  ∀ n, P13121160913039238928.a n = A333885 (n + 1)

end A333885

/-! ## A333885.P165540296909149048

`∑[A200221(n+1)+A070824(n+1)]`
-/

namespace A333885.P165540296909149048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (n + 1) + A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333885.P165540296909149048

namespace A333885

/-- `∑[A200221(n+1)+A070824(n+1)]` -/
def P165540296909149048.Spec : Prop :=
  ∀ n, P165540296909149048.a n = A333885 (n + 1)

theorem P165540296909149048.correct : P165540296909149048.Spec := by
  intro n
  simp only [A333885, Nat.add_sub_cancel, A333885.P165540296909149048.f1, A333885.P165540296909149048.a, A333885.P8277892629072537770.f2, A333885.P8277892629072537770.f1, A333885.P8277892629072537770.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A200221, A200221.P18071779547883620232.f1, A200221.P18071779547883620232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333885

/-! ## A333885.P10563985567739665593

`∑[A007425(n+1)-A114003(n+1)]`
-/

namespace A333885.P10563985567739665593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - A114003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333885.P10563985567739665593

namespace A333885

/-- `∑[A007425(n+1)-A114003(n+1)]` -/
def P10563985567739665593.Spec : Prop :=
  ∀ n, P10563985567739665593.a n = A333885 (n + 1)

end A333885

/-! ## A333885.P7442030032053520495

`∑[∑{d}[n+1, A032741(#)]-A032741(n+1)]`
-/

namespace A333885.P7442030032053520495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A032741 d - A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333885.P7442030032053520495

namespace A333885

/-- `∑[∑{d}[n+1, A032741(#)]-A032741(n+1)]` -/
def P7442030032053520495.Spec : Prop :=
  ∀ n, P7442030032053520495.a n = A333885 (n + 1)

end A333885

/-! ## A333885.P14571802605911977761

`∑[A343879(n+1)]`
-/

namespace A333885.P14571802605911977761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333885.P14571802605911977761

namespace A333885

/-- `∑[A343879(n+1)]` -/
def P14571802605911977761.Spec : Prop :=
  ∀ n, P14571802605911977761.a n = A333885 (n + 1)

end A333885

/-!
# A333886: Number of non-isomorphic 4 X 4 nonnegative integer symmetric matrices with all row and column sums equal to n up to permutations of rows and columns.

The programs for A333886, there is no canonical definition to state claims against.
-/

/-! ## A333886.P14921189440464488864

`A333737(A056000(n)+14)`
-/

namespace A333886.P14921189440464488864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A056000 n + 14).toNat

end

end A333886.P14921189440464488864

/-! ## A333886.P9427236615232230442

`A333737(eq[4, A002262(n)])`
-/

namespace A333886.P9427236615232230442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333886.P9427236615232230442

/-! ## A333886.P953483200734768674

`A333737(A000096(n+3)+5)`
-/

namespace A333886.P953483200734768674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A000096 (n + 3) + 5).toNat

end

end A333886.P953483200734768674

/-! ## A333886.P17916985606672145989

`A333737(A052905(n+1)+9)`
-/

namespace A333886.P17916985606672145989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A052905 (n + 1) + 9).toNat

end

end A333886.P17916985606672145989

/-! ## A333886.P15536336198057160445

`A333737(A055999(n+1)+10)`
-/

namespace A333886.P15536336198057160445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A055999 (n + 1) + 10).toNat

end

end A333886.P15536336198057160445

/-!
# A333887: Number of non-isomorphic 5 X 5 nonnegative integer symmetric matrices with all row and column sums equal to n up to permutations of rows and columns.

The programs for A333887, there is no canonical definition to state claims against.
-/

/-! ## A333887.P10178788336476425324

`A333737(eq[5, A002262(n)])`
-/

namespace A333887.P10178788336476425324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333887.P10178788336476425324

/-! ## A333887.P11183921095657334153

`A333737(A000124(n+5)+4)`
-/

namespace A333887.P11183921095657334153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A000124 (n + 5) + 4).toNat

end

end A333887.P11183921095657334153

/-! ## A333887.P11384053001261650543

`A333737(A000096(n+4)+6)`
-/

namespace A333887.P11384053001261650543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A000096 (n + 4) + 6).toNat

end

end A333887.P11384053001261650543

/-! ## A333887.P15918522095342506842

`A333737(eq[6, A002260(n+1)])`
-/

namespace A333887.P15918522095342506842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333887.P15918522095342506842

/-! ## A333887.P2699572775820662920

`A333737(eq[6, 1-A057944(n)+n])`
-/

namespace A333887.P2699572775820662920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057944 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333887.P2699572775820662920

/-!
# A333888: Number of non-isomorphic n X n nonnegative integer symmetric matrices with all row and column sums equal to 3 up to permutations of rows and columns.

The programs for A333888, there is no canonical definition to state claims against.
-/

/-! ## A333888.P15811716005270232498

`A333737(∑[n+3]+n+3)`
-/

namespace A333888.P15811716005270232498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A333888.P15811716005270232498

/-! ## A333888.P5000211390836487209

`and(-1, A333737(A046691(n+2)))`
-/

namespace A333888.P5000211390836487209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A333737 (A046691 (n + 2)).toNat)

end

end A333888.P5000211390836487209

/-! ## A333888.P16061736172613103609

`A333737(A000217(n+4)-4)^ceil(sin(n)²)`
-/

namespace A333888.P16061736172613103609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333737 (A000217 (n + 4) - 4).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A333888.P16061736172613103609

/-! ## A333888.P15188707052765337146

`A333737(A046691(n+2))%A306906(2*(n+1))`
-/

namespace A333888.P15188707052765337146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333737 (A046691 (n + 2)).toNat) (A306906 (2 * (n + 1)))

end

end A333888.P15188707052765337146

/-! ## A333888.P10146790314680803335

`A333737(A000217(n+4)-4)%A252569(n+1)`
-/

namespace A333888.P10146790314680803335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333737 (A000217 (n + 4) - 4).toNat) (A252569 (n + 1))

end

end A333888.P10146790314680803335

/-!
# A333889: Number of non-isomorphic n X n nonnegative integer symmetric matrices with all row and column sums equal to 4 up to permutations of rows and columns.

The programs for A333889, there is no canonical definition to state claims against.
-/

/-! ## A333889.P15888867314310265626

`A333737(A052905(n+2))`
-/

namespace A333889.P15888867314310265626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A052905 (n + 2)).toNat

end

end A333889.P15888867314310265626

/-! ## A333889.P2744723170917258024

`A333737(eq[4, A025581(n)])`
-/

namespace A333889.P2744723170917258024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333889.P2744723170917258024

/-! ## A333889.P14008528136630519585

`A333737(A027379(n+3)-2)`
-/

namespace A333889.P14008528136630519585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A027379 (n + 3) - 2).toNat

end

end A333889.P14008528136630519585

/-! ## A333889.P620438991166802045

`A333737(A000217(n+5)-5)`
-/

namespace A333889.P620438991166802045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A000217 (n + 5) - 5).toNat

end

end A333889.P620438991166802045

/-! ## A333889.P27472978595307189

`A333737(A000124(n+5)-6)`
-/

namespace A333889.P27472978595307189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A000124 (n + 5) - 6).toNat

end

end A333889.P27472978595307189

/-!
# A333890: Number of non-isomorphic n X n nonnegative integer symmetric matrices with all row and column sums equal to 5 up to permutations of rows and columns.

The programs for A333890, there is no canonical definition to state claims against.
-/

/-! ## A333890.P15518246794418208502

`A333737(A055999(n+3))`
-/

namespace A333890.P15518246794418208502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A055999 (n + 3)).toNat

end

end A333890.P15518246794418208502

/-! ## A333890.P10122967742230965790

`A333737(eq[5, A025581(n)])`
-/

namespace A333890.P10122967742230965790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333890.P10122967742230965790

/-! ## A333890.P11697815856133242277

`A333737(eq[5, A129713(n)])`
-/

namespace A333890.P11697815856133242277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333890.P11697815856133242277

/-! ## A333890.P5173803392569389989

`A333737(eq[6, A193739(n)])`
-/

namespace A333890.P5173803392569389989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333890.P5173803392569389989

/-! ## A333890.P11198533607552828827

`A333737(eq[6, A004736(n+1)])`
-/

namespace A333890.P11198533607552828827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333890.P11198533607552828827

/-!
# A333891: Number of nonequivalent n X n binary matrices with an equal number of ones in every row and column up to permutation of rows.

The programs for A333891, there is no canonical definition to state claims against.
-/

/-! ## A333891.P11396680679528474981

`∑[A110656(A006383(n))]`
-/

namespace A333891.P11396680679528474981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A006383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333891.P11396680679528474981

/-! ## A333891.P7474183362185261720

`A108954(A146433(3*n+1))+n`
-/

namespace A333891.P7474183362185261720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A146433 (3 * n + 1)).toNat + (n : ℤ)

end

end A333891.P7474183362185261720

/-!
# A333892: Number of permutations sigma of [n] such that i divides Product_{k=1..i} sigma(k) for 1 <= i <= n.

The programs for A333892, there is no canonical definition to state claims against.
-/

/-! ## A333892.P9326594511797917870

`A085237(A244164(n+1))`
-/

namespace A333892.P9326594511797917870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085237 (A244164 (n + 1)).toNat

end

end A333892.P9326594511797917870

/-! ## A333892.P15699744495844145039

`A348526(A054064(n+1)+C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A333892.P15699744495844145039
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348526 (A054064 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ)).toNat

end

end A333892.P15699744495844145039

/-! ## A333892.P5921574402810150319

`A068669(A001405(n))+A011848(n)`
-/

namespace A333892.P5921574402810150319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068669 (A001405 n).toNat + A011848 n

end

end A333892.P5921574402810150319

/-!
# A333893: Array read by antidiagonals: T(n,k) is the number of unlabeled loopless multigraphs with n nodes of degree k or less.

The programs for A333893, there is no canonical definition to state claims against.
-/

/-! ## A333893.P7757260127200238399

`A177903(A256384(n))`
-/

namespace A333893.P7757260127200238399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A256384 n).toNat

end

end A333893.P7757260127200238399

/-! ## A333893.P1645665954142499389

`A382397(A227578(n))`
-/

namespace A333893.P1645665954142499389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A227578 n).toNat

end

end A333893.P1645665954142499389

/-! ## A333893.P13247368885030926783

`A099053(A335545(n+1))`
-/

namespace A333893.P13247368885030926783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099053 (A335545 (n + 1)).toNat

end

end A333893.P13247368885030926783

/-! ## A333893.P15868645390217338343

`A254044(A265679(n+1))`
-/

namespace A333893.P15868645390217338343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254044 (A265679 (n + 1)).toNat

end

end A333893.P15868645390217338343

/-! ## A333893.P7363607327160703769

`A054142(n)/A327076(A054142(n))`
-/

namespace A333893.P7363607327160703769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054142 n : ℚ) / (A327076 (A054142 n).toNat : ℚ)

end

end A333893.P7363607327160703769

/-!
# A333894: Number of unlabeled loopless multigraphs with n nodes of degree 3 or less.

The programs for A333894, there is no canonical definition to state claims against.
-/

/-! ## A333894.P3621325224128271396

`A333893(∑[n+3]+n+3)`
-/

namespace A333894.P3621325224128271396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A333894.P3621325224128271396

/-! ## A333894.P4699585731458013421

`and(-1, A333893(A046691(n+2)))`
-/

namespace A333894.P4699585731458013421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A333893 (A046691 (n + 2)).toNat)

end

end A333894.P4699585731458013421

/-! ## A333894.P9973882931436185957

`A333893(A000217(n+4)-4)^ceil(sin(n)²)`
-/

namespace A333894.P9973882931436185957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333893 (A000217 (n + 4) - 4).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A333894.P9973882931436185957

/-! ## A333894.P15939612981238315980

`A333893(A046691(n+2))%A074611(n)`
-/

namespace A333894.P15939612981238315980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333893 (A046691 (n + 2)).toNat) (A074611 n)

end

end A333894.P15939612981238315980

/-! ## A333894.P12051862935362881831

`A333893(A000217(n+4)-4)%A252569(n+1)`
-/

namespace A333894.P12051862935362881831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333893 (A000217 (n + 4) - 4).toNat) (A252569 (n + 1))

end

end A333894.P12051862935362881831

/-!
# A333895: Number of unlabeled loopless multigraphs with n nodes of degree 4 or less.

The programs for A333895, there is no canonical definition to state claims against.
-/

/-! ## A333895.P6785470274221280880

`A333893(A052905(n+2))`
-/

namespace A333895.P6785470274221280880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (A052905 (n + 2)).toNat

end

end A333895.P6785470274221280880

/-! ## A333895.P4056023361833036729

`A333893(eq[4, A025581(n)])`
-/

namespace A333895.P4056023361833036729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333895.P4056023361833036729

/-! ## A333895.P10484092596556094140

`A333893(A046691(n+3)-1)`
-/

namespace A333895.P10484092596556094140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (A046691 (n + 3) - 1).toNat

end

end A333895.P10484092596556094140

/-! ## A333895.P15258484650251492781

`A333893(eq[2, A334546(n+2)])`
-/

namespace A333895.P15258484650251492781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333895.P15258484650251492781

/-! ## A333895.P12659454687320790380

`A333893(eq[2, A334546(n)]-2)`
-/

namespace A333895.P12659454687320790380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A333895.P12659454687320790380

/-!
# A333896: Number of unlabeled loopless multigraphs with n nodes of degree 5 or less.

The programs for A333896, there is no canonical definition to state claims against.
-/

/-! ## A333896.P13009576473562790844

`A333893(eq[5, A025581(n)])`
-/

namespace A333896.P13009576473562790844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333896.P13009576473562790844

/-! ## A333896.P12400122912591498108

`A333893(Δ[A026054(n+3)])`
-/

namespace A333896.P12400122912591498108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (f1 (n + 1) - f1 n).toNat

end

end A333896.P12400122912591498108

/-! ## A333896.P5508904098266335226

`A333893(eq[6, A004736(n+1)])`
-/

namespace A333896.P5508904098266335226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333896.P5508904098266335226

/-! ## A333896.P18148827554249019854

`A333893(eq[64, A090988(n+1)])`
-/

namespace A333896.P18148827554249019854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333896.P18148827554249019854

/-!
# A333897: Number of unlabeled loopless multigraphs with 4 nodes of degree n or less.

The programs for A333897, there is no canonical definition to state claims against.
-/

/-! ## A333897.P6944754457879526184

`A333893(A056000(n)+14)`
-/

namespace A333897.P6944754457879526184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (A056000 n + 14).toNat

end

end A333897.P6944754457879526184

/-! ## A333897.P4679156691094545340

`A333893(eq[4, A002262(n)])`
-/

namespace A333897.P4679156691094545340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333897.P4679156691094545340

/-! ## A333897.P17582756431797996168

`A333893(eq[5, A002260(n+1)])`
-/

namespace A333897.P17582756431797996168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333897.P17582756431797996168

/-! ## A333897.P3917292410166940836

`A333893(Δ[A026054(n+3)-n²])`
-/

namespace A333897.P3917292410166940836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (f1 (n + 1) - f1 n).toNat

end

end A333897.P3917292410166940836

/-!
# A333898: Number of unlabeled loopless multigraphs with n nodes of degree n or less.

The programs for A333898, there is no canonical definition to state claims against.
-/

/-! ## A333898.P15028934593934426024

`A333893(∑[4*n])`
-/

namespace A333898.P15028934593934426024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333898.P15028934593934426024

/-! ## A333898.P12096484908663476391

`A036225(n)*A333893(A046092(n))`
-/

namespace A333898.P12096484908663476391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A333893 (A046092 n).toNat

end

end A333898.P12096484908663476391

/-! ## A333898.P13906805882481445995

`A291168(n)*A333893(A046092(n))`
-/

namespace A333898.P13906805882481445995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A333893 (A046092 n).toNat

end

end A333898.P13906805882481445995

/-! ## A333898.P3157379491600012527

`gcd(A000038(n), A333893(A046092(n)))`
-/

namespace A333898.P3157379491600012527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A333893 (A046092 n).toNat)

end

end A333898.P3157379491600012527

/-! ## A333898.P6070550147642355965

`or(A055641(n), A333893(A046092(n)))`
-/

namespace A333898.P6070550147642355965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A333893 (A046092 n).toNat)

end

end A333898.P6070550147642355965

/-!
# A333899: Number of nonequivalent n X n binary matrices with 3 ones in every row and column up to permutation of rows.

The programs for A333899, there is no canonical definition to state claims against.
-/

/-! ## A333899.P11291917986232773932

`A127839(∑[∑[(A322190(n)^n-1)²+n]]+1)`
-/

namespace A333899.P11291917986232773932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322190 n ^ n - 1) ^ 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A333899.P11291917986232773932

/-! ## A333899.P645406940420631079

`A016777(A144931(2*a(n-1)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A333899.P645406940420631079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  A016777 (A144931 (2 * a (n - 1) - a (n - 4)).toNat).toNat

end

end A333899.P645406940420631079

/-! ## A333899.P14719688374871319125

`A143051(A143030(2*a(n-1)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A333899.P14719688374871319125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  A143051 (A143030 (2 * a (n - 1) - a (n - 4)).toNat).toNat

end

end A333899.P14719688374871319125

