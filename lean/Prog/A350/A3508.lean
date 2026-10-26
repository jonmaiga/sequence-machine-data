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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A350801: a(n) = n*(tau(n) + 1) - 2*sigma(n) for n>=1, with a(0)=0.

The programs for A350801, the canonical program `A350801.P8108102761593850368` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350801 has offset 0).

The definition of A350801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350801.P8108102761593850368

`∑{d}[n, n-2*#]+n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350801

/-- `∑{d}[n, n-2*#]+n` -/
def P8108102761593850368.Spec : Prop :=
  ∀ n, P8108102761593850368.a n = A350801 n

theorem P8108102761593850368.correct : P8108102761593850368.Spec := by
  intro n
  simp only [A350801]

end A350801

/-! ## A350801.P55818465100567037

`n-∑{d}[n, 2*#-n]`
-/

namespace A350801.P55818465100567037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ((2 * d : ℤ) - (n : ℤ))

end

end A350801.P55818465100567037

namespace A350801

/-- `n-∑{d}[n, 2*#-n]` -/
def P55818465100567037.Spec : Prop :=
  ∀ n, P55818465100567037.a n = A350801 n

theorem P55818465100567037.correct : P55818465100567037.Spec := by
  intro n
  simp only [A350801, Nat.add_sub_cancel, A350801.P55818465100567037.f1, A350801.P55818465100567037.a, A350801.P8108102761593850368.f1, A350801.P8108102761593850368.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A350801

/-! ## A350801.P4137445550018157565

`∑{d}[n, n-#]-∑{d}[n, #]+n`
-/

namespace A350801.P4137445550018157565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - (d : ℤ)) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ)

end

end A350801.P4137445550018157565

namespace A350801

/-- `∑{d}[n, n-#]-∑{d}[n, #]+n` -/
def P4137445550018157565.Spec : Prop :=
  ∀ n, P4137445550018157565.a n = A350801 n

end A350801

/-! ## A350801.P16314755124452924175

`A168014(n)-A091818(A028310(n))`
-/

namespace A350801.P16314755124452924175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n - A091818 (A028310 n).toNat

end

end A350801.P16314755124452924175

namespace A350801

/-- `A168014(n)-A091818(A028310(n))` -/
def P16314755124452924175.Spec : Prop :=
  ∀ n, P16314755124452924175.a n = A350801 n

end A350801

/-!
# A350803: Numbers k with at least one partition into two parts (s,t), s<=t such that t | s*k.

The programs for A350803, there is no canonical definition to state claims against.
-/

/-! ## A350803.P2564453597684317656

`lt[0, A338021(n+1)]+1`
-/

namespace A350803.P2564453597684317656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350803.P2564453597684317656

/-! ## A350803.P15363978825962916491

`∪[A005279(n+1), A047235(n+1)]`
-/

namespace A350803.P15363978825962916491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P15363978825962916491

/-! ## A350803.P13248650953296435516

`∪[A005279(n+1), A119432(n+1)]`
-/

namespace A350803.P13248650953296435516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P13248650953296435516

/-! ## A350803.P1986963228863287061

`∪[A005279(n+1), A132895(n+1)]`
-/

namespace A350803.P1986963228863287061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P1986963228863287061

/-! ## A350803.P14407807444913037179

`∪[A060700(n+1), A119432(n+1)]`
-/

namespace A350803.P14407807444913037179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P14407807444913037179

/-! ## A350803.P17696552385900391680

`∪[A090196(n+1), A119432(n+1)]`
-/

namespace A350803.P17696552385900391680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P17696552385900391680

/-! ## A350803.P4421585856976282983

`∪[A005279(n+1), A225241(n+1)]`
-/

namespace A350803.P4421585856976282983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P4421585856976282983

/-! ## A350803.P7022358689730124654

`∪[A005279(n+1), A232745(n+1)]`
-/

namespace A350803.P7022358689730124654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P7022358689730124654

/-! ## A350803.P1562512172458164654

`∪[A005279(n+1), A260391(n+1)]`
-/

namespace A350803.P1562512172458164654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P1562512172458164654

/-! ## A350803.P12137010170208142841

`∪[A005279(n+1), A125499(n+1)]`
-/

namespace A350803.P12137010170208142841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350803.P12137010170208142841

/-! ## A350803.P17009190630083601994

`lt[0, A243982(n+1)]+1`
-/

namespace A350803.P17009190630083601994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350803.P17009190630083601994

/-! ## A350803.P4148820768691009265

`lt[A053626(n^(n%2)), n]`
-/

namespace A350803.P4148820768691009265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n ^ (n % 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350803.P4148820768691009265

/-! ## A350803.P11085881081314891371

`lt[A063427(n+2), n+3]+2`
-/

namespace A350803.P11085881081314891371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063427 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A350803.P11085881081314891371

/-!
# A350804: Numbers k with exactly one partition into two parts (s,t), s<=t, such that t | s*k.

The programs for A350804, there is no canonical definition to state claims against.
-/

/-! ## A350804.P4173782757707058687

`eq[n%2, A270417(n+2)]+2`
-/

namespace A350804.P4173782757707058687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A350804.P4173782757707058687

/-! ## A350804.P6581805377623432895

`eq[log2(gcd(2, n)), A270417(n+1)]+1`
-/

namespace A350804.P6581805377623432895
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A350804.P6581805377623432895

/-! ## A350804.P6820739280035558420

`eq[1, A338021(n+1)]+1`
-/

namespace A350804.P6820739280035558420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350804.P6820739280035558420

/-! ## A350804.P4136473537263412122

`A020725(eq[1, A338021(n+1)])`
-/

namespace A350804.P4136473537263412122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350804.P4136473537263412122

/-! ## A350804.P2438453138535674816

`eq[1, A338021(A028310(n))]`
-/

namespace A350804.P2438453138535674816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350804.P2438453138535674816

/-! ## A350804.P6729450568737706068

`eq[A059841(n), A270417(n+1)]+1`
-/

namespace A350804.P6729450568737706068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350804.P6729450568737706068

/-! ## A350804.P9439972369461894727

`eq[1, A270417(n+1)+A000035(n)]+1`
-/

namespace A350804.P9439972369461894727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1) + A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350804.P9439972369461894727

/-! ## A350804.P17938546874124637402

`eq[A135528(n+1), A270417(A028310(n))]`
-/

namespace A350804.P17938546874124637402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350804.P17938546874124637402

/-! ## A350804.P11357260221526756368

`eq[A024155(2*(n+1)), A059841(n)]+1`
-/

namespace A350804.P11357260221526756368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350804.P11357260221526756368

/-!
# A350807: Irregular table read by rows: loop values for the iteration map A350805(n).

The programs for A350807, there is no canonical definition to state claims against.
-/

/-! ## A350807.P9738893783767280426

`or(10, p?[Δ[A120333(n+5)]])-(n-1)`
-/

namespace A350807.P9738893783767280426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120333 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 10 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) - ((n : ℤ) - 1)

end

end A350807.P9738893783767280426

/-!
# A350809: a(n) = Card({ p - (n mod p) ; p prime, p <= n }).

The programs for A350809, there is no canonical definition to state claims against.
-/

/-! ## A350809.P17563252245410141638

`∑[A354512(n+1)-A066247(n+1)]`
-/

namespace A350809.P17563252245410141638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354512 (n + 1) - A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350809.P17563252245410141638

/-!
# A350813: a(n) is the least positive number k such that the product of the first n primes that are congruent to 1 (mod 4) is equal to y^2 - k^2 for some integer y.

The programs for A350813, there is no canonical definition to state claims against.
-/

/-! ## A350813.P4834657011213716078

`A095062(n+1)*A324888(A332872(n+4))`
-/

namespace A350813.P4834657011213716078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095062 (n + 1) * A324888 (A332872 (n + 4)).toNat

end

end A350813.P4834657011213716078

/-!
# A350815: Array read by antidiagonals: T(m,n) is the number of minimum dominating sets in the m X n king graph.

The programs for A350815, there is no canonical definition to state claims against.
-/

/-! ## A350815.P2621750328345592031

`gcd(A082155(n+1), A240674(A313506(n)))`
-/

namespace A350815.P2621750328345592031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082155 (n + 1)) (A240674 (A313506 n).toNat)

end

end A350815.P2621750328345592031

/-!
# A350816: Number of minimum dominating sets in the 2 X n king graph.

The programs for A350816, the canonical program `A350816.P15921029556866527167` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350816 has offset 1).

The definition of A350816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350816.P15921029556866527167

`6*a(n-3)-12*a(n-6)+8*a(n-9)` with `a(0)=2, a(1)=4, a(2)=2, a(3)=16, a(4)=12, a(5)=4, a(6)=64, a(7)=32, a(8)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350816

/-- `6*a(n-3)-12*a(n-6)+8*a(n-9)` -/
def P15921029556866527167.Spec : Prop :=
  ∀ n, P15921029556866527167.a n = A350816 (n + 1)

theorem P15921029556866527167.correct : P15921029556866527167.Spec := by
  intro n
  simp only [A350816, Nat.add_sub_cancel]

end A350816

/-! ## A350816.P2769947912425631944

`A000079(floor(n/3)+1)*A347633(n+1)`
-/

namespace A350816.P2769947912425631944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (⌊(n : ℚ) / 3⌋ + 1).toNat * A347633 (n + 1)

end

end A350816.P2769947912425631944

namespace A350816

/-- `A000079(floor(n/3)+1)*A347633(n+1)` -/
def P2769947912425631944.Spec : Prop :=
  ∀ n, P2769947912425631944.a n = A350816 (n + 1)

end A350816

/-! ## A350816.P17334342895390798285

`A347633(n+1)*A000079(A008620(n))`
-/

namespace A350816.P17334342895390798285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1) * A000079 (A008620 n).toNat

end

end A350816.P17334342895390798285

namespace A350816

/-- `A347633(n+1)*A000079(A008620(n))` -/
def P17334342895390798285.Spec : Prop :=
  ∀ n, P17334342895390798285.a n = A350816 (n + 1)

end A350816

/-! ## A350816.P724863891279300951

`sqrt(A303054(n+1))*A000079(A008620(n))`
-/

namespace A350816.P724863891279300951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A303054 (n + 1) : ℝ) * (A000079 (A008620 n).toNat : ℝ)

end

end A350816.P724863891279300951

namespace A350816

/-- `sqrt(A303054(n+1))*A000079(A008620(n))` -/
def P724863891279300951.Spec : Prop :=
  ∀ n, P724863891279300951.a n = (A350816 (n + 1) : ℝ)

end A350816

/-! ## A350816.P16981514121291947353

`A350815(∑[n+2])`
-/

namespace A350816.P16981514121291947353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350815 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350816.P16981514121291947353

namespace A350816

/-- `A350815(∑[n+2])` -/
def P16981514121291947353.Spec : Prop :=
  ∀ n, P16981514121291947353.a n = A350816 (n + 1)

end A350816

/-!
# A350817: Number of minimum total dominating sets in the 2 X n king graph.

The programs for A350817, there is no canonical definition to state claims against.
-/

/-! ## A350817.P10469564245494664551

`A303335(∑[n+2])`
-/

namespace A350817.P10469564245494664551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350817.P10469564245494664551

/-! ## A350817.P6338515550307018486

`or(char[2], A303335(A133263(n+1)))`
-/

namespace A350817.P6338515550307018486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303335 (A133263 (n + 1)).toNat)

end

end A350817.P6338515550307018486

/-! ## A350817.P3750300671566677721

`gcd(floor(acot(n)), A303335(A000096(n+1)))`
-/

namespace A350817.P3750300671566677721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A303335 (A000096 (n + 1)).toNat)

end

end A350817.P3750300671566677721

/-! ## A350817.P8518125591724928780

`A007318(C(2, n))*A303335(A133263(n+1))`
-/

namespace A350817.P8518125591724928780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303335 (A133263 (n + 1)).toNat

end

end A350817.P8518125591724928780

/-! ## A350817.P12136952434449185421

`A303335(A133263(n+1))/A007318(C(3, n))`
-/

namespace A350817.P12136952434449185421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303335 (A133263 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A350817.P12136952434449185421

/-!
# A350819: Array read by antidiagonals: T(m,n) is the number of maximum independent sets in the 2m X 2n king graph.

The programs for A350819, there is no canonical definition to state claims against.
-/

/-! ## A350819.P1076997480255688138

`A350818(eq[0, A274912(n)])`
-/

namespace A350819.P1076997480255688138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350819.P1076997480255688138

/-! ## A350819.P17025331181754489108

`A350818(lt[A274912(n), 1])`
-/

namespace A350819.P17025331181754489108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350818 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A350819.P17025331181754489108

/-! ## A350819.P16277261600062664338

`A350818(A185868(n+1)-1)`
-/

namespace A350819.P16277261600062664338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350818 (A185868 (n + 1) - 1).toNat

end

end A350819.P16277261600062664338

/-! ## A350819.P11741368952692501032

`A087805(A157152(n))`
-/

namespace A350819.P11741368952692501032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A157152 n).toNat

end

end A350819.P11741368952692501032

/-! ## A350819.P13923861158073034554

`A331682(A375858(n+1))`
-/

namespace A350819.P13923861158073034554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331682 (A375858 (n + 1)).toNat

end

end A350819.P13923861158073034554

/-!
# A350821: Number of minimum dominating sets in the grid graph P_3 X P_n.

The programs for A350821, there is no canonical definition to state claims against.
-/

/-! ## A350821.P6013657286582949810

`A350820(∑[n+3]+1)`
-/

namespace A350821.P6013657286582949810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A350821.P6013657286582949810

/-! ## A350821.P5272228180982655578

`lcm(A033999(n), A350820(A167614(n+1)))`
-/

namespace A350821.P5272228180982655578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A350820 (A167614 (n + 1)).toNat)

end

end A350821.P5272228180982655578

/-!
# A350822: Number of minimum dominating sets in the grid graph P_4 X P_n.

The programs for A350822, there is no canonical definition to state claims against.
-/

/-! ## A350822.P11823680842234797771

`A350820(∑[n+3]+7)`
-/

namespace A350822.P11823680842234797771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350820 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A350822.P11823680842234797771

/-! ## A350822.P4851330567208509435

`A000041(C(2, n+2))*A350820(A055998(n+2))`
-/

namespace A350822.P4851330567208509435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A350820 (A055998 (n + 2)).toNat

end

end A350822.P4851330567208509435

/-!
# A350823: Array read by antidiagonals: T(m,n) is the domination number of the grid graph P_m X P_n.

The programs for A350823, there is no canonical definition to state claims against.
-/

/-! ## A350823.P10728156948817411558

`floor(log2(A235779(n+1))/8)`
-/

namespace A350823.P10728156948817411558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A235779 (n + 1) : ℝ) / 8⌋

end

end A350823.P10728156948817411558

/-! ## A350823.P9345827366099664096

`A229895(A217637(n+1)/2)`
-/

namespace A350823.P9345827366099664096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229895 (SequenceMachineLib.roundAway ((A217637 (n + 1) : ℚ) / 2)).toNat

end

end A350823.P9345827366099664096

/-! ## A350823.P3444446307224772807

`A043558(A317011(n+1)+A060244(n))`
-/

namespace A350823.P3444446307224772807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A317011 (n + 1) + A060244 n).toNat

end

end A350823.P3444446307224772807

/-! ## A350823.P15226007088260864084

`A043558(A317011(n+1)+A045917(n+1))`
-/

namespace A350823.P15226007088260864084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A317011 (n + 1) + A045917 (n + 1)).toNat

end

end A350823.P15226007088260864084

/-! ## A350823.P1076252278130544237

`A390767(A282996(n+1))`
-/

namespace A350823.P1076252278130544237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A282996 (n + 1)).toNat

end

end A350823.P1076252278130544237

/-!
# A350824: Triangle read by rows: T(n,k) is the number of patterns of length n with all distinct run lengths and maximum value k, n >= 0, k = 0..floor(sqrt(8*n+1)-1/2).

The programs for A350824, there is no canonical definition to state claims against.
-/

/-! ## A350824.P1836141252329194857

`A237451(n+1)!*A351637(n)`
-/

namespace A350824.P1836141252329194857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A237451 (n + 1)).toNat : ℤ) * A351637 n

end

end A350824.P1836141252329194857

/-! ## A350824.P4901499233763991930

`A237451(n+1)!*A351645(n)*A237451(n+1)!`
-/

namespace A350824.P4901499233763991930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A237451 (n + 1)).toNat : ℤ) * A351645 n * (Nat.factorial (A237451 (n + 1)).toNat : ℤ)

end

end A350824.P4901499233763991930

/-! ## A350824.P8530041935576351118

`A007305(A351637(n)^4)`
-/

namespace A350824.P8530041935576351118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A351637 n ^ 4).toNat

end

end A350824.P8530041935576351118

/-! ## A350824.P11829425415624938949

`A256478(A219311(n)^4)`
-/

namespace A350824.P11829425415624938949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A219311 n ^ 4).toNat

end

end A350824.P11829425415624938949

/-! ## A350824.P15121074901556594906

`A048793(A351637(n)^5)`
-/

namespace A350824.P15121074901556594906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A351637 n ^ 5).toNat

end

end A350824.P15121074901556594906

/-!
# A350825: Number of prime 5-tuples with initial member (A086140) between 10^(n-1) and 10^n.

The programs for A350825, there is no canonical definition to state claims against.
-/

/-! ## A350825.P17019800851961919287

`A087010(9*A090091(n))`
-/

namespace A350825.P17019800851961919287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (9 * A090091 n).toNat

end

end A350825.P17019800851961919287

/-! ## A350825.P7817118768167162261

`A087010(9*A000001(3^n))`
-/

namespace A350825.P7817118768167162261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (9 * A000001 (3 ^ n)).toNat

end

end A350825.P7817118768167162261

/-! ## A350825.P14406363720549341188

`A087010(9*A066060(3^n))`
-/

namespace A350825.P14406363720549341188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (9 * A066060 (3 ^ n)).toNat

end

end A350825.P14406363720549341188

/-!
# A350827: Number of prime septuplets (i.e.: 7-tuples) with initial member (A022009 or A022010) between 10^(n-1) and 10^n.

The programs for A350827, there is no canonical definition to state claims against.
-/

/-! ## A350827.P8650650258077423224

`C(A244160(A217217(n)), A116925(n))`
-/

namespace A350827.P8650650258077423224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A244160 (A217217 n).toNat).toNat (A116925 n).toNat

end

end A350827.P8650650258077423224

/-! ## A350827.P8782568810394400418

`A151702(xor(A116902(n+1), A133189(n)))`
-/

namespace A350827.P8782568810394400418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (Int.xor (A116902 (n + 1)) (A133189 n)).toNat

end

end A350827.P8782568810394400418

/-!
# A350833: Run lengths of even terms in A350877 (half if even, add next prime if odd).

The programs for A350833, there is no canonical definition to state claims against.
-/

/-! ## A350833.P12779990703201106650

`A350616(n+2)-A350616(n+1)-1`
-/

namespace A350833.P12779990703201106650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350616 (n + 2) - A350616 (n + 1) - 1

end

end A350833.P12779990703201106650

/-! ## A350833.P15049473008228286715

`A007814(A350618(n+1))`
-/

namespace A350833.P15049473008228286715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A350618 (n + 1)).toNat

end

end A350833.P15049473008228286715

/-! ## A350833.P8124265840192042647

`val(A350617(n+1)+A000040(n+1), 2)`
-/

namespace A350833.P8124265840192042647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A350617 (n + 1) + A000040 (n + 1)).toNat 2

end

end A350833.P8124265840192042647

/-! ## A350833.P9132488633043681749

`A001222(and(-A350618(n+1), A350618(n+1)))`
-/

namespace A350833.P9132488633043681749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A350618 (n + 1)) (A350618 (n + 1))).toNat

end

end A350833.P9132488633043681749

/-! ## A350833.P1396281610469692960

`Δ[A350616(n+1)]-1`
-/

namespace A350833.P1396281610469692960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A350833.P1396281610469692960

/-! ## A350833.P13673777938456516927

`val(A350877(A350616(n+1)+1), 2)`
-/

namespace A350833.P13673777938456516927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A350877 (A350616 (n + 1) + 1).toNat).toNat 2

end

end A350833.P13673777938456516927

/-!
# A350834: Number of ways to tile an n X n right triangle with squares and dominoes, where vertical dominoes are only allowed in the largest vertical column.

The programs for A350834, the canonical program `A350834.P439956377441312144` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350834 has offset 0).

The definition of A350834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350834.P439956377441312144

`A000045(n+1)*a(n-1)+A000045(n)*A000045(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A350834

/-- `A000045(n+1)*a(n-1)+A000045(n)*A000045(n-1)*a(n-2)` -/
def P439956377441312144.Spec : Prop :=
  ∀ n, P439956377441312144.a n = A350834 n

theorem P439956377441312144.correct : P439956377441312144.Spec := by
  intro n
  simp only [A350834]

end A350834

/-! ## A350834.P17774381901848962502

`A229556(∑[n+2]-1)`
-/

namespace A350834.P17774381901848962502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229556 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A350834.P17774381901848962502

namespace A350834

/-- `A229556(∑[n+2]-1)` -/
def P17774381901848962502.Spec : Prop :=
  ∀ n, P17774381901848962502.a n = A350834 n

end A350834

/-! ## A350834.P5730429705552268137

`or(1, A229556(A034856(n+1)))`
-/

namespace A350834.P5730429705552268137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229556 (A034856 (n + 1)).toNat)

end

end A350834.P5730429705552268137

namespace A350834

/-- `or(1, A229556(A034856(n+1)))` -/
def P5730429705552268137.Spec : Prop :=
  ∀ n, P5730429705552268137.a n = A350834 n

end A350834

/-! ## A350834.P12595822157009735156

`A229556(A034856(n+1))+A025469(n)`
-/

namespace A350834.P12595822157009735156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229556 (A034856 (n + 1)).toNat + A025469 n

end

end A350834.P12595822157009735156

namespace A350834

/-- `A229556(A034856(n+1))+A025469(n)` -/
def P12595822157009735156.Spec : Prop :=
  ∀ n, P12595822157009735156.a n = A350834 n

end A350834

/-!
# A350836: Numbers k such that A103168(k) = A340592(k).

The programs for A350836, there is no canonical definition to state claims against.
-/

/-! ## A350836.P1470337173103900385

`∪[A002385(n+1), A350850(n+1)]%A350850(n+4)`
-/

namespace A350836.P1470337173103900385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350850 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A350850 (n + 4))

end

end A350836.P1470337173103900385

/-!
# A350837: Number of integer partitions of n with no adjacent parts of quotient 2.

The programs for A350837, there is no canonical definition to state claims against.
-/

/-! ## A350837.P92486685452969814

`A000041(n)-A350846(n)`
-/

namespace A350837.P92486685452969814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A350846 n

end

end A350837.P92486685452969814

/-! ## A350837.P9035368766803715408

`A213598(n)-A350846(n)`
-/

namespace A350837.P9035368766803715408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A350846 n

end

end A350837.P9035368766803715408

/-! ## A350837.P17101726811721926757

`sqrt(A001255(n))-A350846(n)`
-/

namespace A350837.P17101726811721926757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A350846 n : ℝ)

end

end A350837.P17101726811721926757

/-! ## A350837.P5587935330110704299

`∑[A002865(n)]-A350846(n)`
-/

namespace A350837.P5587935330110704299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A350846 n

end

end A350837.P5587935330110704299

/-! ## A350837.P1787908323695324980

`A035363(2*n)-A350846(n)`
-/

namespace A350837.P1787908323695324980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A350846 n

end

end A350837.P1787908323695324980

/-!
# A350838: Heinz numbers of partitions with no adjacent parts of quotient 2.

The programs for A350838, there is no canonical definition to state claims against.
-/

/-! ## A350838.P15463756348873928027

`A320340(comp[lcm(87, n)])`
-/

namespace A350838.P15463756348873928027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 87 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A350838.P15463756348873928027

/-! ## A350838.P13092807618072113625

`A320340(n+1)%84`
-/

namespace A350838.P13092807618072113625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320340 (n + 1)) 84

end

end A350838.P13092807618072113625

/-! ## A350838.P15226805655392236587

`A320340(gcd(73, n+1)+n)`
-/

namespace A350838.P15226805655392236587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (Nat.gcd 73 (n + 1) + n)

end

end A350838.P15226805655392236587

/-! ## A350838.P2695780253523814592

`1+comp[A350845(n+1)-1]`
-/

namespace A350838.P2695780253523814592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350845 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A350838.P2695780253523814592

/-! ## A350838.P504784943607794235

`∪[a(n-1)+3, A320340(n+2)]` with `a(0)=1`
-/

namespace A350838.P504784943607794235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350838.P504784943607794235

/-! ## A350838.P7753762292484717057

`A320340(lcm(n+1, ∏{e}[n+1, floor(#/4)+1]))`
-/

namespace A350838.P7753762292484717057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (Int.lcm (n + 1 : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 4⌋ + 1)))

end

end A350838.P7753762292484717057

/-! ## A350838.P930456982682576097

`A320340(A118759(n)+1)`
-/

namespace A350838.P930456982682576097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (A118759 n + 1).toNat

end

end A350838.P930456982682576097

/-! ## A350838.P1345987609928551085

`A320340(n+1)^A178334(n)`
-/

namespace A350838.P1345987609928551085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320340 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A350838.P1345987609928551085

/-! ## A350838.P3776828668204186848

`or(A235145(n), A320340(n+1))`
-/

namespace A350838.P3776828668204186848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 n) (A320340 (n + 1))

end

end A350838.P3776828668204186848

/-! ## A350838.P1808675091926649048

`and(A127229(n+5), A320340(n+1))`
-/

namespace A350838.P1808675091926649048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127229 (n + 5)) (A320340 (n + 1))

end

end A350838.P1808675091926649048

/-!
# A350839: Number of integer partitions of n with a difference < -1 and a conjugate difference < -1.

The programs for A350839, there is no canonical definition to state claims against.
-/

/-! ## A350839.P10904254846095146854

`A121260(A109543(n))`
-/

namespace A350839.P10904254846095146854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121260 (A109543 n).toNat

end

end A350839.P10904254846095146854

/-!
# A350841: Heinz numbers of integer partitions with a difference < -1 and a conjugate difference < -1.

The programs for A350841, there is no canonical definition to state claims against.
-/

/-! ## A350841.P12856902267113981748

`lt[0, A324179(n+1)]+1`
-/

namespace A350841.P12856902267113981748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350841.P12856902267113981748

/-! ## A350841.P11216734537146224904

`lt[0, A324179(gcd(n, C(2, n)))]`
-/

namespace A350841.P11216734537146224904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350841.P11216734537146224904

/-! ## A350841.P4945319961656763076

`lt[0, A324179(A028310(n))]`
-/

namespace A350841.P4945319961656763076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350841.P4945319961656763076

/-! ## A350841.P8171262357644004907

`lt[0, A324179(A233583(n+1))]`
-/

namespace A350841.P8171262357644004907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350841.P8171262357644004907

/-! ## A350841.P1722222553743183311

`lt[0, A324179(A065033(2*n))]`
-/

namespace A350841.P1722222553743183311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350841.P1722222553743183311

/-! ## A350841.P6401396630578239893

`filter[A073492(n+1), A065202(#)]`
-/

namespace A350841.P6401396630578239893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A350841.P6401396630578239893

/-! ## A350841.P6689434495219948454

`lt[0, A324179(A000007(n)+n)]`
-/

namespace A350841.P6689434495219948454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350841.P6689434495219948454

/-! ## A350841.P8773752488625092317

`∩[A065201(n+1), A073492(n+1)]`
-/

namespace A350841.P8773752488625092317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350841.P8773752488625092317

/-! ## A350841.P16632097828793855764

`comp[(1-A324179(n+1))*A153152(n)]`
-/

namespace A350841.P16632097828793855764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A324179 (n + 1)) * A153152 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A350841.P16632097828793855764

/-! ## A350841.P14841181720576973732

`eq[A114734(A324179(n+1)+1), A324179(n+1)]+1`
-/

namespace A350841.P14841181720576973732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (A324179 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350841.P14841181720576973732

/-!
# A350842: Number of integer partitions of n with no difference -2.

The programs for A350842, there is no canonical definition to state claims against.
-/

/-! ## A350842.P6978222654700171434

`A286141(n)+A127683(A284466(n))`
-/

namespace A350842.P6978222654700171434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286141 n + A127683 (A284466 n).toNat

end

end A350842.P6978222654700171434

/-! ## A350842.P1642109102053449295

`A286141(n)+A174875(A286146(n+1))`
-/

namespace A350842.P1642109102053449295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286141 n + A174875 (A286146 (n + 1)).toNat

end

end A350842.P1642109102053449295

/-! ## A350842.P1125549370347549964

`A340998(A379789(n+1))+A034893(n)`
-/

namespace A350842.P1125549370347549964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A379789 (n + 1)).toNat + 140) + A034893 n

end

end A350842.P1125549370347549964

/-! ## A350842.P934833565988582440

`A370809(A100484(n+1)-A370809(n+3))`
-/

namespace A350842.P934833565988582440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (A100484 (n + 1) - A370809 (n + 3)).toNat

end

end A350842.P934833565988582440

/-!
# A350843: The least number of terms needed in the Taylor series approximation of arctan(1/239) such that Machin's formula with n terms in the Taylor series approximation of arctan(1/5) achieves the most correct digits of Pi.

The programs for A350843, there is no canonical definition to state claims against.
-/

/-! ## A350843.P8408226881366506077

`ceil(∑[A161673(A008277(n+1))%2+2]/8)`
-/

namespace A350843.P8408226881366506077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161673 (A008277 (n + 1)).toNat) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8⌉

end

end A350843.P8408226881366506077

/-! ## A350843.P6163373380282896455

`A000196(A185284(n+1)+A001399(n))`
-/

namespace A350843.P6163373380282896455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A185284 (n + 1) + A001399 n).toNat

end

end A350843.P6163373380282896455

/-! ## A350843.P6553542507439247061

`A000196(A001399(n))%A196033(2*n+1)`
-/

namespace A350843.P6553542507439247061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A001399 n).toNat) (A196033 (2 * n + 1))

end

end A350843.P6553542507439247061

/-! ## A350843.P15698391369428058478

`A008621(lt[A354372(2*n+1), A156552(3*n+2)])`
-/

namespace A350843.P15698391369428058478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354372 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350843.P15698391369428058478

/-! ## A350843.P16394769052168759129

`A130259(A018123(n))`
-/

namespace A350843.P16394769052168759129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A018123 n).toNat

end

end A350843.P16394769052168759129

/-!
# A350845: Heinz numbers of integer partitions with at least two adjacent parts of quotient 2.

The programs for A350845, there is no canonical definition to state claims against.
-/

/-! ## A350845.P9915128514361443940

`∩[A045506(n), A364348(n+1)]`
-/

namespace A350845.P9915128514361443940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350845.P9915128514361443940

/-! ## A350845.P5906367515862615930

`∩[A045506(n), A364537(n+1)]`
-/

namespace A350845.P5906367515862615930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350845.P5906367515862615930

/-! ## A350845.P16517222745761812061

`∩[A045506(n), A383513(n+1)]`
-/

namespace A350845.P16517222745761812061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350845.P16517222745761812061

/-! ## A350845.P16590035344847006851

`∩[A258575(n+1), A364537(n+1)]`
-/

namespace A350845.P16590035344847006851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350845.P16590035344847006851

/-! ## A350845.P16079585713305289015

`filter[A364348(n+1), A317961(#)]`
-/

namespace A350845.P16079585713305289015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A317961 (f1 j).toNat = 1) n)

end

end A350845.P16079585713305289015

/-!
# A350846: Number of integer partitions of n with at least two adjacent parts of quotient 2.

The programs for A350846, there is no canonical definition to state claims against.
-/

/-! ## A350846.P6618362105118883455

`A000041(n)-A350837(n)`
-/

namespace A350846.P6618362105118883455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A350837 n

end

end A350846.P6618362105118883455

/-! ## A350846.P18417979176861727858

`A213598(n)-A350837(n)`
-/

namespace A350846.P18417979176861727858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A350837 n

end

end A350846.P18417979176861727858

/-! ## A350846.P17482093384244258682

`∑[A002865(n)]-A350837(n)`
-/

namespace A350846.P17482093384244258682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A350837 n

end

end A350846.P17482093384244258682

/-! ## A350846.P5157569060727297321

`A194543(∑[n])-A350837(n)`
-/

namespace A350846.P5157569060727297321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (∑ j ∈ Finset.range (n + 1), f1 j) - A350837 n

end

end A350846.P5157569060727297321

/-! ## A350846.P8535305888062823726

`A000065(n)+1-A350837(n)`
-/

namespace A350846.P8535305888062823726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A350837 n)

end

end A350846.P8535305888062823726

/-!
# A350847: Number of even parts in the conjugate of the integer partition with Heinz number n.

The programs for A350847, the canonical program `A350847.P6937331175885194980` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350847 has offset 1).

The definition of A350847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A257992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350847.P15473192601729912900

`A344616(n+1)-A350941(n)`
-/

namespace A350847.P15473192601729912900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A350941 n

end

end A350847.P15473192601729912900

namespace A350847

/-- `A344616(n+1)-A350941(n)` -/
def P15473192601729912900.Spec : Prop :=
  ∀ n, P15473192601729912900.a n = A350847 (n + 1)

theorem P15473192601729912900.correct : P15473192601729912900.Spec := by
  intro n
  simp only [A350847, Nat.add_sub_cancel, A350847.P15473192601729912900.a, A350847.P6937331175885194980.a, A122111, A122111.P18124015185857335041.a, A257992, A257992.P14262373692572386717.a, A344616, A344616.P9154132711565358048.a, A350941, A350941.P4525697528803141176.a, A001222, A001222.P11318177267732088261.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008578, A008578.P3639467937083264764.a, A014963, A014963.P5975177236000282614.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A350847

/-! ## A350847.P6937331175885194980

`A257992(A122111(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A350847

/-- `A257992(A122111(n+1))` -/
def P6937331175885194980.Spec : Prop :=
  ∀ n, P6937331175885194980.a n = A350847 (n + 1)

theorem P6937331175885194980.correct : P6937331175885194980.Spec := by
  intro n
  simp only [A350847, Nat.add_sub_cancel]

end A350847

/-! ## A350847.P74435391719493654

`∑{e}[A331188(n+1), #%2]`
-/

namespace A350847.P74435391719493654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p % 2

end

end A350847.P74435391719493654

namespace A350847

/-- `∑{e}[A331188(n+1), #%2]` -/
def P74435391719493654.Spec : Prop :=
  ∀ n, (P74435391719493654.a n : ℤ) = A350847 (n + 1)

end A350847

/-! ## A350847.P18118052986815365601

`A344616(A052126(n+1))`
-/

namespace A350847.P18118052986815365601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A052126 (n + 1)).toNat

end

end A350847.P18118052986815365601

namespace A350847

/-- `A344616(A052126(n+1))` -/
def P18118052986815365601.Spec : Prop :=
  ∀ n, P18118052986815365601.a n = A350847 (n + 1)

end A350847

/-! ## A350847.P9819916017177533420

`A162642(A331188(n+1))`
-/

namespace A350847.P9819916017177533420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A331188 (n + 1)).toNat

end

end A350847.P9819916017177533420

namespace A350847

/-- `A162642(A331188(n+1))` -/
def P9819916017177533420.Spec : Prop :=
  ∀ n, P9819916017177533420.a n = A350847 (n + 1)

end A350847

/-! ## A350847.P13270085788271175928

`A257992(A322865(n+1))`
-/

namespace A350847.P13270085788271175928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A322865 (n + 1)).toNat

end

end A350847.P13270085788271175928

namespace A350847

/-- `A257992(A322865(n+1))` -/
def P13270085788271175928.Spec : Prop :=
  ∀ n, P13270085788271175928.a n = A350847 (n + 1)

end A350847

/-! ## A350847.P15573756608268538414

`A344616(A253560(n+1))`
-/

namespace A350847.P15573756608268538414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A253560 (n + 1)).toNat

end

end A350847.P15573756608268538414

namespace A350847

/-- `A344616(A253560(n+1))` -/
def P15573756608268538414.Spec : Prop :=
  ∀ n, P15573756608268538414.a n = A350847 (n + 1)

end A350847

/-! ## A350847.P16204475341933492895

`∑{e}[A331188(n+1), A000035(#)]`
-/

namespace A350847.P16204475341933492895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 (Nat.factorization (f1 n).natAbs p)

end

end A350847.P16204475341933492895

namespace A350847

/-- `∑{e}[A331188(n+1), A000035(#)]` -/
def P16204475341933492895.Spec : Prop :=
  ∀ n, P16204475341933492895.a n = A350847 (n + 1)

end A350847

/-! ## A350847.P15866144023138288428

`A061395(n+1)-A344616(n+1)`
-/

namespace A350847.P15866144023138288428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A344616 (n + 1)

end

end A350847.P15866144023138288428

namespace A350847

/-- `A061395(n+1)-A344616(n+1)` -/
def P15866144023138288428.Spec : Prop :=
  ∀ n, P15866144023138288428.a n = A350847 (n + 1)

end A350847

/-! ## A350847.P12157069918899701842

`A344616((n+1)*A006530(n+1))`
-/

namespace A350847.P12157069918899701842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A350847.P12157069918899701842

namespace A350847

/-- `A344616((n+1)*A006530(n+1))` -/
def P12157069918899701842.Spec : Prop :=
  ∀ n, P12157069918899701842.a n = A350847 (n + 1)

end A350847

/-!
# A350848: Heinz numbers of integer partitions for which the number of even conjugate parts is equal to the number of odd conjugate parts.

The programs for A350848, there is no canonical definition to state claims against.
-/

/-! ## A350848.P10670924584813631042

`eq[0, 2*A344616(n+1)-A000720(A006530(n+1))]+1`
-/

namespace A350848.P10670924584813631042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344616 (n + 1) - A000720 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350848.P10670924584813631042

/-! ## A350848.P11299211196389590674

`eq[A344616(n+1), A350847(n+1)]+1`
-/

namespace A350848.P11299211196389590674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350848.P11299211196389590674

/-! ## A350848.P13511085693406756459

`eq[abs(A316524(n+1)), A350847(n+1)]+1`
-/

namespace A350848.P13511085693406756459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350848.P13511085693406756459

/-! ## A350848.P8340222957537790957

`eq[0, A350941(n)]+1`
-/

namespace A350848.P8340222957537790957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350848.P8340222957537790957

/-! ## A350848.P5494241488940929604

`lt[A350941(abs(1-n))², 1]`
-/

namespace A350848.P5494241488940929604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 |1 - (n : ℤ)|.toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350848.P5494241488940929604

/-!
# A350849: Number of odd conjugate parts minus number of even parts in the integer partition with Heinz number n.

The programs for A350849, the canonical program `A350849.P10248614631853328535` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350849 has offset 1).

The definition of A350849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257992, A344616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350849.P10248614631853328535

`A344616(n+1)-A257992(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A350849

/-- `A344616(n+1)-A257992(n+1)` -/
def P10248614631853328535.Spec : Prop :=
  ∀ n, P10248614631853328535.a n = A350849 (n + 1)

theorem P10248614631853328535.correct : P10248614631853328535.Spec := by
  intro n
  simp only [A350849, Nat.add_sub_cancel]

end A350849

/-! ## A350849.P8039559416049205609

`abs(A316524(n+1))-A257992(n+1)`
-/

namespace A350849.P8039559416049205609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)| - A257992 (n + 1)

end

end A350849.P8039559416049205609

namespace A350849

/-- `abs(A316524(n+1))-A257992(n+1)` -/
def P8039559416049205609.Spec : Prop :=
  ∀ n, P8039559416049205609.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P15126982856085438702

`A344616(n+1)-A001222(A248101(n+1))`
-/

namespace A350849.P15126982856085438702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A001222 (A248101 (n + 1)).toNat

end

end A350849.P15126982856085438702

namespace A350849

/-- `A344616(n+1)-A001222(A248101(n+1))` -/
def P15126982856085438702.Spec : Prop :=
  ∀ n, P15126982856085438702.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P2653303028414244792

`A344616(n+1)-A257991(A003961(n+1))`
-/

namespace A350849.P2653303028414244792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A257991 (A003961 (n + 1)).toNat

end

end A350849.P2653303028414244792

namespace A350849

/-- `A344616(n+1)-A257991(A003961(n+1))` -/
def P2653303028414244792.Spec : Prop :=
  ∀ n, P2653303028414244792.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P8068449679955267785

`A344616(n+1)-A257991(A061898(n+1))`
-/

namespace A350849.P8068449679955267785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A257991 (A061898 (n + 1)).toNat

end

end A350849.P8068449679955267785

namespace A350849

/-- `A344616(n+1)-A257991(A061898(n+1))` -/
def P8068449679955267785.Spec : Prop :=
  ∀ n, P8068449679955267785.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P16738540644479902689

`A344616(n+1)-A257991(A064989(n+1))`
-/

namespace A350849.P16738540644479902689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A257991 (A064989 (n + 1)).toNat

end

end A350849.P16738540644479902689

namespace A350849

/-- `A344616(n+1)-A257991(A064989(n+1))` -/
def P16738540644479902689.Spec : Prop :=
  ∀ n, P16738540644479902689.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P9991563447104033418

`A344616(n+1)-A257991(A118306(n+1))`
-/

namespace A350849.P9991563447104033418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A257991 (A118306 (n + 1)).toNat

end

end A350849.P9991563447104033418

namespace A350849

/-- `A344616(n+1)-A257991(A118306(n+1))` -/
def P9991563447104033418.Spec : Prop :=
  ∀ n, P9991563447104033418.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P9010137479480382090

`A344616(n+1)-A001222((n+1)/A247503(n+1))`
-/

namespace A350849.P9010137479480382090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A247503 (n + 1) : ℚ))).toNat

end

end A350849.P9010137479480382090

namespace A350849

/-- `A344616(n+1)-A001222((n+1)/A247503(n+1))` -/
def P9010137479480382090.Spec : Prop :=
  ∀ n, P9010137479480382090.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P13212720641318292975

`A001222(A247503(n+1))+A344616(n+1)-A001222(n+1)`
-/

namespace A350849.P13212720641318292975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 1)).toNat + (A344616 (n + 1) - A001222 (n + 1))

end

end A350849.P13212720641318292975

namespace A350849

/-- `A001222(A247503(n+1))+A344616(n+1)-A001222(n+1)` -/
def P13212720641318292975.Spec : Prop :=
  ∀ n, P13212720641318292975.a n = A350849 (n + 1)

end A350849

/-! ## A350849.P7140561584690661429

`A061395(n+1)-(A257992(n+1)+A257992(A322865(n+1)))`
-/

namespace A350849.P7140561584690661429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - (A257992 (n + 1) + A257992 (A322865 (n + 1)).toNat)

end

end A350849.P7140561584690661429

namespace A350849

/-- `A061395(n+1)-(A257992(n+1)+A257992(A322865(n+1)))` -/
def P7140561584690661429.Spec : Prop :=
  ∀ n, P7140561584690661429.a n = A350849 (n + 1)

end A350849

/-!
# A350850: Members of A350836 that are not in A002385.

The programs for A350850, there is no canonical definition to state claims against.
-/

/-! ## A350850.P14891970937378502348

`filter[A350836(n+1), A005171(#)]`
-/

namespace A350850.P14891970937378502348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A350850.P14891970937378502348

/-! ## A350850.P7324895419421971601

`filter[A350836(n+1), A292438(#)]`
-/

namespace A350850.P7324895419421971601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A350850.P7324895419421971601

/-! ## A350850.P5273618325088384337

`record[A048671(A350836(n+1))]`
-/

namespace A350850.P5273618325088384337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A350836 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350850.P5273618325088384337

/-! ## A350850.P16532891591029673764

`∩[A350836(n+1), A315614(n)]`
-/

namespace A350850.P16532891591029673764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315614 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350850.P16532891591029673764

/-!
# A350851: Cumulative sums of the first ceiling(n/2)+1 elements of rows 0 to n in Pascal's triangle.

The programs for A350851, there is no canonical definition to state claims against.
-/

/-! ## A350851.P1408098827405414868

`∑[A116406(n+1)]`
-/

namespace A350851.P1408098827405414868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350851.P1408098827405414868

/-! ## A350851.P13923645336835317568

`∑[2^n-A294175(n)]`
-/

namespace A350851.P13923645336835317568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A294175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350851.P13923645336835317568

/-! ## A350851.P3427760238854571982

`Δ[∑[∑[A116406(n)]]-n]`
-/

namespace A350851.P3427760238854571982
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350851.P3427760238854571982

/-! ## A350851.P6778980609373150603

`∑[A008949(∑[n%2+n])]`
-/

namespace A350851.P6778980609373150603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350851.P6778980609373150603

/-! ## A350851.P12426340085303572842

`∑[2^(n+1)-A117186(n)]`
-/

namespace A350851.P12426340085303572842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A117186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350851.P12426340085303572842

/-!
# A350855: a(0) = 1, a(n) = (n+1)*a(n-1) + (n-2).

The programs for A350855, the canonical program `A350855.P5979134105096678730` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350855 has offset 0).

The definition of A350855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)+n-2` (program `A350855.P5979134105096678730`, by `A350855.P5979134105096678730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350855.P5979134105096678730

`(n+1)*a(n-1)+n-2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350855

/-- `(n+1)*a(n-1)+n-2` -/
def P5979134105096678730.Spec : Prop :=
  ∀ n, P5979134105096678730.a n = A350855 n

theorem P5979134105096678730.correct : P5979134105096678730.Spec := by
  intro n
  simp only [A350855]

end A350855

/-! ## A350855.P9390423191626358542

`(n+1)*(a(n-1)+1)-3` with `a(0)=1`
-/

namespace A350855.P9390423191626358542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) + 1) - 3

end

end A350855.P9390423191626358542

namespace A350855

/-- `(n+1)*(a(n-1)+1)-3` -/
def P9390423191626358542.Spec : Prop :=
  ∀ n, P9390423191626358542.a n = A350855 n

end A350855

/-! ## A350855.P7702891862068974504

`(a(n-1)+1)/(n+1)^(-1)-3` with `a(0)=1`
-/

namespace A350855.P7702891862068974504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) / (n + 1 : ℚ) ^ (-1 : ℤ) - 3

end

end A350855.P7702891862068974504

namespace A350855

/-- `(a(n-1)+1)/(n+1)^(-1)-3` -/
def P7702891862068974504.Spec : Prop :=
  ∀ n, P7702891862068974504.a n = (A350855 n : ℚ)

end A350855

/-! ## A350855.P13532103791364695016

`a(n-1)-(2-n*a(n-1)-n)` with `a(0)=1`
-/

namespace A350855.P13532103791364695016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (2 - (n : ℤ) * a (n - 1) - (n : ℤ))

end

end A350855.P13532103791364695016

namespace A350855

/-- `a(n-1)-(2-n*a(n-1)-n)` -/
def P13532103791364695016.Spec : Prop :=
  ∀ n, P13532103791364695016.a n = A350855 n

end A350855

/-! ## A350855.P5917892953079981733

`2*A056543(n+1)-1`
-/

namespace A350855.P5917892953079981733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056543 (n + 1) - 1

end

end A350855.P5917892953079981733

namespace A350855

/-- `2*A056543(n+1)-1` -/
def P5917892953079981733.Spec : Prop :=
  ∀ n, P5917892953079981733.a n = A350855 n

end A350855

/-! ## A350855.P6974230330757841464

`A101634(n+2)-(n+4)`
-/

namespace A350855.P6974230330757841464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101634 (n + 2) - (n + 4 : ℤ)

end

end A350855.P6974230330757841464

namespace A350855

/-- `A101634(n+2)-(n+4)` -/
def P6974230330757841464.Spec : Prop :=
  ∀ n, P6974230330757841464.a n = A350855 n

end A350855

/-!
# A350856: Initial members of prime triples (p, p+2, p+14).

The programs for A350856, there is no canonical definition to state claims against.
-/

/-! ## A350856.P8900240649085395091

`p?[A046133(n+1)-2]`
-/

namespace A350856.P8900240649085395091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350856.P8900240649085395091

/-! ## A350856.P9531122990212346568

`p?[A087681(n+1)-8]`
-/

namespace A350856.P9531122990212346568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350856.P9531122990212346568

/-! ## A350856.P17503870116394135955

`p?[A092216(n+1)-14]`
-/

namespace A350856.P17503870116394135955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350856.P17503870116394135955

/-! ## A350856.P5476460348928443762

`p?[p?[A015917(n+1)]-2]`
-/

namespace A350856.P5476460348928443762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350856.P5476460348928443762

/-! ## A350856.P10728906400492870361

`p?[p?[A056775(n+1)]-2]`
-/

namespace A350856.P10728906400492870361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350856.P10728906400492870361

/-!
# A350864: Nonprimes that are not the sum of 2 nonzero squares.

The programs for A350864, there is no canonical definition to state claims against.
-/

/-! ## A350864.P15021839191059035892

`record[gcd(A004018(n), A113520(n+1))]`
-/

namespace A350864.P15021839191059035892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004018 n) (A113520 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350864.P15021839191059035892

/-! ## A350864.P18238804005887344344

`eq[char[A135680(n+1)], A258228(n)]`
-/

namespace A350864.P18238804005887344344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135680 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A350864.P18238804005887344344

/-! ## A350864.P2646822804240136385

`eq[char[A227231(n+1)], A258228(n)]`
-/

namespace A350864.P2646822804240136385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A350864.P2646822804240136385

/-! ## A350864.P8518605270506590461

`eq[char[A046022(n+1)], A258292(2*n)]`
-/

namespace A350864.P8518605270506590461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A350864.P8518605270506590461

/-!
# A350865: Sum of the larger parts in the partitions of n into two prime parts.

The programs for A350865, there is no canonical definition to state claims against.
-/

/-! ## A350865.P4757988436045575669

`n*A061358(n)-A350883(n)`
-/

namespace A350865.P4757988436045575669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061358 n - A350883 n

end

end A350865.P4757988436045575669

/-! ## A350865.P14435788349518136122

`A350883(n)+A343782(A028310(n))`
-/

namespace A350865.P14435788349518136122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 n + A343782 (A028310 n).toNat

end

end A350865.P14435788349518136122

/-! ## A350865.P13196288549461432903

`A350883(n)+A343782(A233583(n+1))`
-/

namespace A350865.P13196288549461432903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 n + A343782 (A233583 (n + 1)).toNat

end

end A350865.P13196288549461432903

/-! ## A350865.P11962446653990900512

`A350883(n)+A343782(1-A057427(n)+n)`
-/

namespace A350865.P11962446653990900512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 n + A343782 (1 - A057427 n + (n : ℤ)).toNat

end

end A350865.P11962446653990900512

/-!
# A350866: a(n) = A010051(A339399(n)).

The programs for A350866, there is no canonical definition to state claims against.
-/

/-! ## A350866.P3074130198387897771

`A010051(A339399(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350866.P3074130198387897771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A339399 (n + 1)).toNat

end

end A350866.P3074130198387897771

/-! ## A350866.P5589741672893863285

`C(C(2, ∑{e}[(A097283(n+1)-n%2)%(n+1), #]), 2)`
-/

namespace A350866.P5589741672893863285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097283 (n + 1) - ((n % 2 : ℕ) : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) 2

end

end A350866.P5589741672893863285

/-! ## A350866.P2758482660124495068

`A010051(A097283(n+1)-n%2)`
-/

namespace A350866.P2758482660124495068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A097283 (n + 1) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A350866.P2758482660124495068

/-! ## A350866.P10808846163025999753

`A010051(A097283(n+1)-val(n²+1, 2))`
-/

namespace A350866.P10808846163025999753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A097283 (n + 1) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)).toNat

end

end A350866.P10808846163025999753

/-! ## A350866.P9719061567605959875

`A257000(A097283(n+1)-val(n²+1, 2))`
-/

namespace A350866.P9719061567605959875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A097283 (n + 1) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)).toNat

end

end A350866.P9719061567605959875

/-! ## A350866.P9591485500007412249

`A064911((A097283(n+1)-val(n²+1, 2))²)`
-/

namespace A350866.P9591485500007412249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((A097283 (n + 1) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)) ^ 2).toNat

end

end A350866.P9591485500007412249

/-! ## A350866.P13554692685273299390

`A101040((A097283(n+1)-val(n²+1, 2))²)`
-/

namespace A350866.P13554692685273299390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 ((A097283 (n + 1) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)) ^ 2).toNat

end

end A350866.P13554692685273299390

/-! ## A350866.P16485625598467180936

`A010051(A097283(n+1)-A000035(n))`
-/

namespace A350866.P16485625598467180936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A097283 (n + 1) - A000035 n).toNat

end

end A350866.P16485625598467180936

/-! ## A350866.P2551386870605411980

`A257000(A097283(n+1)-A000035(n))`
-/

namespace A350866.P2551386870605411980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A097283 (n + 1) - A000035 n).toNat

end

end A350866.P2551386870605411980

/-! ## A350866.P4264177473728566808

`A010051(A097283(n+1)-abs(A134452(n)))`
-/

namespace A350866.P4264177473728566808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A097283 (n + 1) - |A134452 n|).toNat

end

end A350866.P4264177473728566808

/-!
# A350867: Non-palindromic numbers k for which d(k) = d(R(k)), where R(k) is the reversal of k and d(k) is the number of divisors of k.

The programs for A350867, there is no canonical definition to state claims against.
-/

/-! ## A350867.P10355392723044574877

`∪[A068893(n+1), A087093(n+1)]`
-/

namespace A350867.P10355392723044574877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350867.P10355392723044574877

/-! ## A350867.P355483102661212604

`∩[A029742(n+1), A062895(n+1)]`
-/

namespace A350867.P355483102661212604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350867.P355483102661212604

/-! ## A350867.P17367685044648826402

`A354745(A076084(n+1))`
-/

namespace A350867.P17367685044648826402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354745 (A076084 (n + 1)).toNat

end

end A350867.P17367685044648826402

/-!
# A350868: a(n) is the first prime p such that the next n primes are p+2*k^2 for k=1..n.

The programs for A350868, there is no canonical definition to state claims against.
-/

/-! ## A350868.P4319428386357437957

`A061351(A061392(a(n-1)))` with `a(0)=2, a(1)=3`
-/

namespace A350868.P4319428386357437957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A061351 (A061392 (a (n - 1)).toNat).toNat

end

end A350868.P4319428386357437957

/-!
# A350869: a(n) = Sum_{i=0..10^n-1} i^3.

The programs for A350869, the canonical program `A350869.P15312978126979072347` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350869 has offset 0).

The definition of A350869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350869.P15312978126979072347

`(10^n*(10^n-1)/2)²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350869

/-- `(10^n*(10^n-1)/2)²` -/
def P15312978126979072347.Spec : Prop :=
  ∀ n, P15312978126979072347.a n = (A350869 n : ℚ)

end A350869

/-! ## A350869.P6624843890624467223

`lcm(10^n-1, ceil(10^n/2))*floor(A168624(n)/2)`
-/

namespace A350869.P6624843890624467223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((10 ^ n : ℤ) - 1) ⌈(10 ^ n : ℚ) / 2⌉ : ℤ) * ⌊(A168624 n : ℚ) / 2⌋

end

end A350869.P6624843890624467223

namespace A350869

/-- `lcm(10^n-1, ceil(10^n/2))*floor(A168624(n)/2)` -/
def P6624843890624467223.Spec : Prop :=
  ∀ n, P6624843890624467223.a n = A350869 n

end A350869

/-! ## A350869.P12441713680448254762

`A037156(2*n)-A038544(n)`
-/

namespace A350869.P12441713680448254762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037156 (2 * n) - A038544 n

end

end A350869.P12441713680448254762

namespace A350869

/-- `A037156(2*n)-A038544(n)` -/
def P12441713680448254762.Spec : Prop :=
  ∀ n, P12441713680448254762.a n = A350869 n

end A350869

/-!
# A350870: Numbers k = x.y such that x.y = (x+y)^2, when x and y have the same number of digits, "." means concatenation, and y may not begin with 0.

The programs for A350870, there is no canonical definition to state claims against.
-/

/-! ## A350870.P10992034207174796855

`A045913(n+2)²`
-/

namespace A350870.P10992034207174796855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045913 (n + 2) ^ 2

end

end A350870.P10992034207174796855

/-! ## A350870.P16021786302364396434

`A045913(n+2)^A035214(∑[n])`
-/

namespace A350870.P16021786302364396434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045913 (n + 2) : ℚ) ^ (A035214 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A350870.P16021786302364396434

/-! ## A350870.P5518347170386002704

`A045913(n+2)^(2%A017509(n))`
-/

namespace A350870.P5518347170386002704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045913 (n + 2) : ℚ) ^ (Int.tmod 2 (A017509 n) : ℤ)

end

end A350870.P5518347170386002704

/-! ## A350870.P4458924101569472319

`A045913(n+2)^A020639(2*(n+1))`
-/

namespace A350870.P4458924101569472319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045913 (n + 2) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A350870.P4458924101569472319

/-! ## A350870.P7838171424937650973

`A045913(n+2)^A079612(2*n+1)`
-/

namespace A350870.P7838171424937650973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045913 (n + 2) : ℚ) ^ (A079612 (2 * n + 1) : ℤ)

end

end A350870.P7838171424937650973

/-!
# A350871: Number of well-rounded sublattices of index n in square lattice.

The programs for A350871, there is no canonical definition to state claims against.
-/

/-! ## A350871.P4511829969423867751

`gcd(A002654(n+1), A084888(A000212(2*n+3)))`
-/

namespace A350871.P4511829969423867751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002654 (n + 1)) (A084888 (A000212 (2 * n + 3)).toNat)

end

end A350871.P4511829969423867751

/-! ## A350871.P3766789759266708218

`gcd(A002654(n+1), A008442(A018135(n)))`
-/

namespace A350871.P3766789759266708218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002654 (n + 1)) (A008442 (A018135 n).toNat)

end

end A350871.P3766789759266708218

/-! ## A350871.P1919684380058442421

`or(A050456(n+1)%4, A008442(A018135(n)))`
-/

namespace A350871.P1919684380058442421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A050456 (n + 1)) 4) (A008442 (A018135 n).toNat)

end

end A350871.P1919684380058442421

/-! ## A350871.P14195622399878534664

`A113063(A026832(3*(n+1)))+A002654(n+1)`
-/

namespace A350871.P14195622399878534664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (A026832 (3 * (n + 1))).toNat + A002654 (n + 1)

end

end A350871.P14195622399878534664

/-! ## A350871.P13751530834391098800

`or(A002654(n+1), A002654(A066574(n+1)))`
-/

namespace A350871.P13751530834391098800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002654 (n + 1)) (A002654 (A066574 (n + 1)).toNat)

end

end A350871.P13751530834391098800

/-!
# A350872: Number of coincidence site lattices of index n in square lattice.

The programs for A350872, the canonical program `A350872.P15784308967154680112` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350872 has offset 1).

The definition of A350872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350872.P15784308967154680112

`∏{p}[n+1, and(2, #+2)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350872

/-- `∏{p}[n+1, and(2, #+2)]` -/
def P15784308967154680112.Spec : Prop :=
  ∀ n, (P15784308967154680112.a n : ℤ) = A350872 (n + 1)

theorem P15784308967154680112.correct : P15784308967154680112.Spec := by
  intro n
  simp only [A350872, Nat.add_sub_cancel]

end A350872

/-! ## A350872.P7370963031657274348

`∏{p}[n+1, or(2, #)-#]`
-/

namespace A350872.P7370963031657274348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.lor 2 p : ℤ) - (p : ℤ))

end

end A350872.P7370963031657274348

namespace A350872

/-- `∏{p}[n+1, or(2, #)-#]` -/
def P7370963031657274348.Spec : Prop :=
  ∀ n, P7370963031657274348.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P9221472730856935467

`∏{p}[n+1, or(2, #)%#]`
-/

namespace A350872.P9221472730856935467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 2 p % p

end

end A350872.P9221472730856935467

namespace A350872

/-- `∏{p}[n+1, or(2, #)%#]` -/
def P9221472730856935467.Spec : Prop :=
  ∀ n, (P9221472730856935467.a n : ℤ) = A350872 (n + 1)

end A350872

/-! ## A350872.P10455799512488450737

`∏{p}[n+1, xor(#, or(2, #))]`
-/

namespace A350872.P10455799512488450737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.xor p (Nat.lor 2 p)

end

end A350872.P10455799512488450737

namespace A350872

/-- `∏{p}[n+1, xor(#, or(2, #))]` -/
def P10455799512488450737.Spec : Prop :=
  ∀ n, (P10455799512488450737.a n : ℤ) = A350872 (n + 1)

end A350872

/-! ## A350872.P4058566094029185214

`∏{p}[xor(n, -1), 2-and(2, #)]`
-/

namespace A350872.P4058566094029185214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.land 2 p : ℤ))

end

end A350872.P4058566094029185214

namespace A350872

/-- `∏{p}[xor(n, -1), 2-and(2, #)]` -/
def P4058566094029185214.Spec : Prop :=
  ∀ n, P4058566094029185214.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P9622951253228263328

`∏{p}[n+1, ((#+1)%4)%3]`
-/

namespace A350872.P9622951253228263328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 1) % 4 % 3

end

end A350872.P9622951253228263328

namespace A350872

/-- `∏{p}[n+1, ((#+1)%4)%3]` -/
def P9622951253228263328.Spec : Prop :=
  ∀ n, (P9622951253228263328.a n : ℤ) = A350872 (n + 1)

end A350872

/-! ## A350872.P4894951032839479628

`A091379(or(n, n+1))`
-/

namespace A350872.P4894951032839479628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (Nat.lor n (n + 1))

end

end A350872.P4894951032839479628

namespace A350872

/-- `A091379(or(n, n+1))` -/
def P4894951032839479628.Spec : Prop :=
  ∀ n, P4894951032839479628.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P550672359537378249

`A008442(∏{p}[n+1, #])`
-/

namespace A350872.P550672359537378249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A350872.P550672359537378249

namespace A350872

/-- `A008442(∏{p}[n+1, #])` -/
def P550672359537378249.Spec : Prop :=
  ∀ n, P550672359537378249.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P16576598988169193445

`∏{p}[n+1, A130731(#)]`
-/

namespace A350872.P16576598988169193445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A130731 p

end

end A350872.P16576598988169193445

namespace A350872

/-- `∏{p}[n+1, A130731(#)]` -/
def P16576598988169193445.Spec : Prop :=
  ∀ n, P16576598988169193445.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P17170209732444567694

`A134015(∏{p}[n+1, #])`
-/

namespace A350872.P17170209732444567694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134015 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A350872.P17170209732444567694

namespace A350872

/-- `A134015(∏{p}[n+1, #])` -/
def P17170209732444567694.Spec : Prop :=
  ∀ n, P17170209732444567694.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P7324257672088373905

`∏{p}[n+1, A143432(#)]`
-/

namespace A350872.P7324257672088373905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A143432 p

end

end A350872.P7324257672088373905

namespace A350872

/-- `∏{p}[n+1, A143432(#)]` -/
def P7324257672088373905.Spec : Prop :=
  ∀ n, P7324257672088373905.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P1279933986935822130

`A338690(∏{p}[n+1, #])`
-/

namespace A350872.P1279933986935822130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A350872.P1279933986935822130

namespace A350872

/-- `A338690(∏{p}[n+1, #])` -/
def P1279933986935822130.Spec : Prop :=
  ∀ n, P1279933986935822130.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P16192348114911664942

`and(abs(∏{e}[n+1, 2*(-1)^#]), A229179(n+1))`
-/

namespace A350872.P16192348114911664942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p| (A229179 (n + 1))

end

end A350872.P16192348114911664942

namespace A350872

/-- `and(abs(∏{e}[n+1, 2*(-1)^#]), A229179(n+1))` -/
def P16192348114911664942.Spec : Prop :=
  ∀ n, P16192348114911664942.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P17453948931255790389

`A000089(A098181(n))`
-/

namespace A350872.P17453948931255790389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A098181 n).toNat

end

end A350872.P17453948931255790389

namespace A350872

/-- `A000089(A098181(n))` -/
def P17453948931255790389.Spec : Prop :=
  ∀ n, P17453948931255790389.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P6874850442566442706

`A000089(A127932(n))`
-/

namespace A350872.P6874850442566442706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A127932 n).toNat

end

end A350872.P6874850442566442706

namespace A350872

/-- `A000089(A127932(n))` -/
def P6874850442566442706.Spec : Prop :=
  ∀ n, P6874850442566442706.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P10705417345391483255

`A008442(A007947(n+1))`
-/

namespace A350872.P10705417345391483255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (A007947 (n + 1)).toNat

end

end A350872.P10705417345391483255

namespace A350872

/-- `A008442(A007947(n+1))` -/
def P10705417345391483255.Spec : Prop :=
  ∀ n, P10705417345391483255.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P4573906135756671205

`A000089(A014695(n)+n)`
-/

namespace A350872.P4573906135756671205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A014695 n + (n : ℤ)).toNat

end

end A350872.P4573906135756671205

namespace A350872

/-- `A000089(A014695(n)+n)` -/
def P4573906135756671205.Spec : Prop :=
  ∀ n, P4573906135756671205.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P14480912370622885311

`A000095(A014695(n)+n)`
-/

namespace A350872.P14480912370622885311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A014695 n + (n : ℤ)).toNat

end

end A350872.P14480912370622885311

namespace A350872

/-- `A000095(A014695(n)+n)` -/
def P14480912370622885311.Spec : Prop :=
  ∀ n, P14480912370622885311.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P11914240542422451721

`A000089(n+1)*A056594(n)`
-/

namespace A350872.P11914240542422451721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A056594 n

end

end A350872.P11914240542422451721

namespace A350872

/-- `A000089(n+1)*A056594(n)` -/
def P11914240542422451721.Spec : Prop :=
  ∀ n, P11914240542422451721.a n = A350872 (n + 1)

end A350872

/-! ## A350872.P10675319398045601816

`A000095(n+1)*A056594(n)`
-/

namespace A350872.P10675319398045601816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (n + 1) * A056594 n

end

end A350872.P10675319398045601816

namespace A350872

/-- `A000095(n+1)*A056594(n)` -/
def P10675319398045601816.Spec : Prop :=
  ∀ n, P10675319398045601816.a n = A350872 (n + 1)

end A350872

/-!
# A350874: a(n) is the number of nonisomorphic magmas with n elements which satisfy the identity (xx)y = x(xy) for all x and y (so-called left-alternative magmas).

The programs for A350874, there is no canonical definition to state claims against.
-/

/-! ## A350874.P9738308117378446830

`A032699(A028303(char[1]+n²))`
-/

namespace A350874.P9738308117378446830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032699 (A028303 ((if ∃ j, f1 j = n then 1 else 0) + n ^ 2)).toNat

end

end A350874.P9738308117378446830

/-!
# A350875: a(n) is the number of nonisomorphic left-right-alternative magmas with n elements. That is, a(n) is the number of nonisomorphic magmas with n elements which satisfy the identities (xx)y = x(xy) and x(yy) = (xy)y for all x and y.

The programs for A350875, there is no canonical definition to state claims against.
-/

/-! ## A350875.P9707589112048570478

`A151568(floor(∑[n+2]^(n-1)))`
-/

namespace A350875.P9707589112048570478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A350875.P9707589112048570478

/-!
# A350876: a(n) is the number of nonisomorphic flexible left-right-alternative magmas with n elements. That is, a(n) is the number of nonisomorphic magmas with n elements which satisfy all of the identities x(yx) = (xy)x, (xx)y = x(xy), and x(yy) = (xy)y (for all x and y).

The programs for A350876, there is no canonical definition to state claims against.
-/

/-! ## A350876.P14600520763075505641

`A138591(C(a(n-1)+n, 2))` with `a(0)=1`
-/

namespace A350876.P14600520763075505641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138591 (Nat.choose (a (n - 1) + (n : ℤ)).toNat 2)

end

end A350876.P14600520763075505641

/-!
# A350879: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of partitions of n such that k*(greatest part) = (number of parts).

The programs for A350879, there is no canonical definition to state claims against.
-/

/-! ## A350879.P10970589021445450344

`A086251(2^A137585(n+1))`
-/

namespace A350879.P10970589021445450344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A137585 (n + 1) : ℤ))).toNat

end

end A350879.P10970589021445450344

/-! ## A350879.P18239969550405082822

`A196564(A059882(n+1)^5)`
-/

namespace A350879.P18239969550405082822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A059882 (n + 1) ^ 5).toNat

end

end A350879.P18239969550405082822

/-! ## A350879.P6203557824685883658

`A231719(A059882(n+1)^5)`
-/

namespace A350879.P6203557824685883658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231719 (A059882 (n + 1) ^ 5).toNat

end

end A350879.P6203557824685883658

/-! ## A350879.P9869605757093235032

`∑{e}[A039302(A137586(n+1)), #]`
-/

namespace A350879.P9869605757093235032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039302 (A137586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A350879.P9869605757093235032

/-! ## A350879.P9794494137667263649

`A380785(n+1)%A000079(A359902(n+1))`
-/

namespace A350879.P9794494137667263649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380785 (n + 1)) (A000079 (A359902 (n + 1)).toNat)

end

end A350879.P9794494137667263649

/-!
# A350880: a(n) is the constant term in expansion of Product_{k=1..n} (x^prime(k) + 1 + 1/x^prime(k)).

The programs for A350880, there is no canonical definition to state claims against.
-/

/-! ## A350880.P3981269089662166236

`or(1, A023193(A121186(n+2)))`
-/

namespace A350880.P3981269089662166236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A023193 (A121186 (n + 2)).toNat)

end

end A350880.P3981269089662166236

/-! ## A350880.P13504778122420764646

`or(1, A033111(A001873(n)))`
-/

namespace A350880.P13504778122420764646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033111 (A001873 n).toNat)

end

end A350880.P13504778122420764646

/-! ## A350880.P1343669175034359657

`or(1, A003056(A054100(n)))`
-/

namespace A350880.P1343669175034359657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003056 (A054100 n).toNat)

end

end A350880.P1343669175034359657

/-! ## A350880.P5680974627430621210

`or(1, A000196(A177471(n)))`
-/

namespace A350880.P5680974627430621210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000196 (A177471 n).toNat)

end

end A350880.P5680974627430621210

/-! ## A350880.P1423203979957348996

`A234300(A126257(n)+A000111(n))`
-/

namespace A350880.P1423203979957348996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A126257 n + A000111 n).toNat

end

end A350880.P1423203979957348996

/-!
# A350881: a(n) is the constant term in expansion of Product_{k=1..n} (x^prime(k) + 1/x^prime(k))^2.

The programs for A350881, there is no canonical definition to state claims against.
-/

/-! ## A350881.P8377900892169559864

`A257737(A000084(n+1))`
-/

namespace A350881.P8377900892169559864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257737 (A000084 (n + 1)).toNat

end

end A350881.P8377900892169559864

/-! ## A350881.P10471371536388798814

`∑[A080918(A097861(n)²)]`
-/

namespace A350881.P10471371536388798814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (A097861 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350881.P10471371536388798814

/-! ## A350881.P16453253179403020807

`∑[A071137(∑[A150805(n)])]`
-/

namespace A350881.P16453253179403020807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150805 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350881.P16453253179403020807

/-!
# A350882: First differences of A350778.

The programs for A350882, there is no canonical definition to state claims against.
-/

/-! ## A350882.P14478128031496797351

`Δ[A350778(n+1)]`
-/

namespace A350882.P14478128031496797351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350882.P14478128031496797351

/-! ## A350882.P17385457023495416423

`A350778(n+2)-A350778(n+1)`
-/

namespace A350882.P17385457023495416423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350778 (n + 2) - A350778 (n + 1)

end

end A350882.P17385457023495416423

/-!
# A350883: Sum of the smaller parts of the partitions of n into two prime parts.

The programs for A350883, there is no canonical definition to state claims against.
-/

/-! ## A350883.P16355234918903687971

`n*A061358(n)-A350865(n)`
-/

namespace A350883.P16355234918903687971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061358 n - A350865 n

end

end A350883.P16355234918903687971

/-! ## A350883.P9358797094070106796

`A350865(n)-A343782(A028310(n))`
-/

namespace A350883.P9358797094070106796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350865 n - A343782 (A028310 n).toNat

end

end A350883.P9358797094070106796

/-! ## A350883.P11850503786742764121

`A350865(n)-A343782(A233583(n+1))`
-/

namespace A350883.P11850503786742764121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350865 n - A343782 (A233583 (n + 1)).toNat

end

end A350883.P11850503786742764121

/-! ## A350883.P15338859742038992639

`A350865(n)-A343782(1-A057427(n)+n)`
-/

namespace A350883.P15338859742038992639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350865 n - A343782 (1 - A057427 n + (n : ℤ)).toNat

end

end A350883.P15338859742038992639

/-!
# A350889: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of partitions of n such that k*(smallest part) = (number of parts).

The programs for A350889, there is no canonical definition to state claims against.
-/

/-! ## A350889.P17751849296320782808

`A082116(A186729(2*(n+1))+A072233(n))`
-/

namespace A350889.P17751849296320782808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 (A186729 (2 * (n + 1)) + A072233 n).toNat

end

end A350889.P17751849296320782808

/-! ## A350889.P3629042519111181260

`gcd(A007423(A051851(n+1)), A072233(n))`
-/

namespace A350889.P3629042519111181260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007423 (A051851 (n + 1)).toNat) (A072233 n)

end

end A350889.P3629042519111181260

/-! ## A350889.P7933344403875381589

`or(A072233(n), A341540(A272194(n)))`
-/

namespace A350889.P7933344403875381589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072233 n) (A341540 (A272194 n).toNat)

end

end A350889.P7933344403875381589

/-! ## A350889.P6119433516726973145

`A000041(A072233(n))-A209229(A339011(n))`
-/

namespace A350889.P6119433516726973145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A072233 n).toNat - A209229 (A339011 n).toNat

end

end A350889.P6119433516726973145

/-! ## A350889.P2077436883856700027

`A067059(n)%A185218(3*n+4)`
-/

namespace A350889.P2077436883856700027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067059 n) (A185218 (3 * n + 4))

end

end A350889.P2077436883856700027

/-!
# A350890: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of partitions of n such that (smallest part) = k*(number of parts).

The programs for A350890, there is no canonical definition to state claims against.
-/

/-! ## A350890.P14521318546313497243

`∑{e}[A046090(A320179(n+3)), A001221(#)]`
-/

namespace A350890.P14521318546313497243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 (A320179 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (Nat.factorization (f1 n).natAbs p)

end

end A350890.P14521318546313497243

/-! ## A350890.P8772688945444498730

`A060128(C(A134394(n+1), A131112(n)))`
-/

namespace A350890.P8772688945444498730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (Nat.choose (A134394 (n + 1)).toNat (A131112 n).toNat)

end

end A350890.P8772688945444498730

/-! ## A350890.P15573067199091744843

`A352517(C(A335964(n+1), A329329(n+1)))`
-/

namespace A350890.P15573067199091744843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (Nat.choose (A335964 (n + 1)).toNat (A329329 (n + 1)).toNat)

end

end A350890.P15573067199091744843

/-! ## A350890.P2181409645293931320

`∏{e}[A027466(n), A033831(#)]`
-/

namespace A350890.P2181409645293931320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033831 (Nat.factorization (f1 n).natAbs p)

end

end A350890.P2181409645293931320

/-! ## A350890.P873467424353632807

`∏{e}[A027466(n), A093998(#)]`
-/

namespace A350890.P873467424353632807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A093998 (Nat.factorization (f1 n).natAbs p)

end

end A350890.P873467424353632807

/-!
# A350892: Number of partitions of n such that 3*(smallest part) = (number of parts).

The programs for A350892, there is no canonical definition to state claims against.
-/

/-! ## A350892.P9970105817976664316

`A350889(A133263(n)+1)`
-/

namespace A350892.P9970105817976664316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350889 (A133263 n + 1).toNat

end

end A350892.P9970105817976664316

/-! ## A350892.P2584771649906369983

`A350889(∑[A233583(n+1)])`
-/

namespace A350892.P2584771649906369983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350889 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350892.P2584771649906369983

/-! ## A350892.P15479276225690466447

`A350889(A179865(n+1)+A158799(2*(n+1)))`
-/

namespace A350892.P15479276225690466447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350889 (A179865 (n + 1) + A158799 (2 * (n + 1))).toNat

end

end A350892.P15479276225690466447

/-! ## A350892.P2409532752160711392

`A056811(A005169(n)+A000123(n))`
-/

namespace A350892.P2409532752160711392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A005169 n + A000123 n).toNat

end

end A350892.P2409532752160711392

/-! ## A350892.P4815248727015511485

`ceil(sqrt(sqrt(A386581(n))))`
-/

namespace A350892.P4815248727015511485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A386581 n : ℝ))⌉

end

end A350892.P4815248727015511485

/-!
# A350893: Number of partitions of n such that (smallest part) = 2*(number of parts).

The programs for A350893, there is no canonical definition to state claims against.
-/

/-! ## A350893.P8289385862503131380

`A373067(n+1)-A373073(n+1)`
-/

namespace A350893.P8289385862503131380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373067 (n + 1) - A373073 (n + 1)

end

end A350893.P8289385862503131380

/-! ## A350893.P8031938727622430587

`A350890(∑[n]+2)`
-/

namespace A350893.P8031938727622430587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350890 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A350893.P8031938727622430587

/-! ## A350893.P2432435384620174867

`A350890(A133263(n))-A019590(3*n+2)`
-/

namespace A350893.P2432435384620174867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350890 (A133263 n).toNat - A019590 (3 * n + 2)

end

end A350893.P2432435384620174867

/-! ## A350893.P17829106295772707321

`A321014(A031368(n+1))*A350890(A133263(n))`
-/

namespace A350893.P17829106295772707321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (A031368 (n + 1)).toNat * A350890 (A133263 n).toNat

end

end A350893.P17829106295772707321

/-!
# A350894: Number of partitions of n such that (smallest part) = 3*(number of parts).

The programs for A350894, there is no canonical definition to state claims against.
-/

/-! ## A350894.P15920903893540203753

`A373068(n+1)-A373074(n+1)`
-/

namespace A350894.P15920903893540203753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373068 (n + 1) - A373074 (n + 1)

end

end A350894.P15920903893540203753

/-! ## A350894.P10588316187555309753

`A350890(∑[char[1]+1+n]+1-n)`
-/

namespace A350894.P10588316187555309753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350890 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ))).toNat

end

end A350894.P10588316187555309753

/-! ## A350894.P11392304083427516487

`A350890(A152950(n+1))%A000097(n)`
-/

namespace A350894.P11392304083427516487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350890 (A152950 (n + 1)).toNat) (A000097 n)

end

end A350894.P11392304083427516487

/-! ## A350894.P12535255900047354870

`A002471(A003642(n+1))*A350890(A152950(n+1))`
-/

namespace A350894.P12535255900047354870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (A003642 (n + 1)).toNat * A350890 (A152950 (n + 1)).toNat

end

end A350894.P12535255900047354870

/-! ## A350894.P12882840721704249964

`A079398(A253238(3*n+1))*A350890(A152950(n+1))`
-/

namespace A350894.P12882840721704249964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (A253238 (3 * n + 1)).toNat * A350890 (A152950 (n + 1)).toNat

end

end A350894.P12882840721704249964

/-!
# A350895: a(n) = 1 + a(n-1) * prime(n), starting a(0) = 1.

The programs for A350895, the canonical program `A350895.P14119559672991328812` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350895 has offset 0).

The definition of A350895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)*A000040(n)` (program `A350895.P14119559672991328812`, by `A350895.P14119559672991328812.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350895.P14119559672991328812

`1+a(n-1)*A000040(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A350895

/-- `1+a(n-1)*A000040(n)` -/
def P14119559672991328812.Spec : Prop :=
  ∀ n, P14119559672991328812.a n = A350895 n

theorem P14119559672991328812.correct : P14119559672991328812.Spec := by
  intro n
  simp only [A350895]

end A350895

/-! ## A350895.P16330279500397151683

`(A006093(n)+1)*a(n-1)+1` with `a(0)=1`
-/

namespace A350895.P16330279500397151683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A006093 n + 1) * a (n - 1) + 1

end

end A350895.P16330279500397151683

namespace A350895

/-- `(A006093(n)+1)*a(n-1)+1` -/
def P16330279500397151683.Spec : Prop :=
  ∀ n, P16330279500397151683.a n = A350895 n

end A350895

/-! ## A350895.P4432635515134777223

`a(n-1)*A008578(n+1)+1` with `a(0)=1`
-/

namespace A350895.P4432635515134777223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008578 (n + 1) + 1

end

end A350895.P4432635515134777223

namespace A350895

/-- `a(n-1)*A008578(n+1)+1` -/
def P4432635515134777223.Spec : Prop :=
  ∀ n, P4432635515134777223.a n = A350895 n

end A350895

/-! ## A350895.P8081790501969507035

`(A008864(n)-1)*a(n-1)+1` with `a(0)=1`
-/

namespace A350895.P8081790501969507035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A008864 n - 1) * a (n - 1) + 1

end

end A350895.P8081790501969507035

namespace A350895

/-- `(A008864(n)-1)*a(n-1)+1` -/
def P8081790501969507035.Spec : Prop :=
  ∀ n, P8081790501969507035.a n = A350895 n

end A350895

/-! ## A350895.P14165400181727446972

`a(n-1)*record[A006530(n+1)]+1` with `a(0)=1`
-/

namespace A350895.P14165400181727446972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A350895.P14165400181727446972

namespace A350895

/-- `a(n-1)*record[A006530(n+1)]+1` -/
def P14165400181727446972.Spec : Prop :=
  ∀ n, P14165400181727446972.a n = A350895 n

end A350895

/-! ## A350895.P14778424679244739343

`a(n-1)*record[A014963(n+1)]+1` with `a(0)=1`
-/

namespace A350895.P14778424679244739343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A350895.P14778424679244739343

namespace A350895

/-- `a(n-1)*record[A014963(n+1)]+1` -/
def P14778424679244739343.Spec : Prop :=
  ∀ n, P14778424679244739343.a n = A350895 n

end A350895

/-! ## A350895.P1962594870081371140

`a(n-1)*record[A020639(n+1)]+1` with `a(0)=1`
-/

namespace A350895.P1962594870081371140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A350895.P1962594870081371140

namespace A350895

/-- `a(n-1)*record[A020639(n+1)]+1` -/
def P1962594870081371140.Spec : Prop :=
  ∀ n, P1962594870081371140.a n = A350895 n

end A350895

/-! ## A350895.P8408069026233347911

`a(n-1)*comp[A018252(n+1)]+1` with `a(0)=1`
-/

namespace A350895.P8408069026233347911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A350895.P8408069026233347911

namespace A350895

/-- `a(n-1)*comp[A018252(n+1)]+1` -/
def P8408069026233347911.Spec : Prop :=
  ∀ n, (P8408069026233347911.a n : ℤ) = A350895 n

end A350895

/-! ## A350895.P8378321241071444356

`∑[1/A001041(n)]*A001041(n)`
-/

namespace A350895.P8378321241071444356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A001041 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A001041 n : ℚ)

end

end A350895.P8378321241071444356

namespace A350895

/-- `∑[1/A001041(n)]*A001041(n)` -/
def P8378321241071444356.Spec : Prop :=
  ∀ n, P8378321241071444356.a n = (A350895 n : ℚ)

end A350895

/-!
# A350897: Number of partitions of n such that 5*(smallest part) = (number of parts).

The programs for A350897, there is no canonical definition to state claims against.
-/

/-! ## A350897.P13665607545501935773

`A241312(A184945(n))+A026810(n)`
-/

namespace A350897.P13665607545501935773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (A184945 n).toNat + A026810 n

end

end A350897.P13665607545501935773

/-! ## A350897.P17586303271519637559

`or(A007949(A205303(n+1)), A026810(n))`
-/

namespace A350897.P17586303271519637559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A205303 (n + 1)).toNat) (A026810 n)

end

end A350897.P17586303271519637559

/-! ## A350897.P1256812297797706408

`or(A026810(n), A102681(A006355(n)))`
-/

namespace A350897.P1256812297797706408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026810 n) (A102681 (A006355 n).toNat)

end

end A350897.P1256812297797706408

/-! ## A350897.P13731093530212560780

`or(A026810(n), A086078(A326080(n)))`
-/

namespace A350897.P13731093530212560780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026810 n) (A086078 (A326080 n).toNat)

end

end A350897.P13731093530212560780

/-! ## A350897.P5161326515200081246

`A185284(A353833(n+1))+A026810(n)`
-/

namespace A350897.P5161326515200081246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A353833 (n + 1)).toNat + A026810 n

end

end A350897.P5161326515200081246

/-!
# A350898: Number of partitions of n such that (smallest part) = 4*(number of parts).

The programs for A350898, there is no canonical definition to state claims against.
-/

/-! ## A350898.P16189974484725188260

`A373069(n+1)-A373075(n+1)`
-/

namespace A350898.P16189974484725188260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373069 (n + 1) - A373075 (n + 1)

end

end A350898.P16189974484725188260

/-! ## A350898.P9927713937245039745

`A350899(A359908(n+1))%A270929(n+1)`
-/

namespace A350898.P9927713937245039745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350899 (A359908 (n + 1)).toNat) (A270929 (n + 1))

end

end A350898.P9927713937245039745

/-! ## A350898.P10959129893828640645

`A033099(A161205(n+1))^A039755(n)`
-/

namespace A350898.P10959129893828640645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033099 (A161205 (n + 1)).toNat : ℚ) ^ (A039755 n : ℤ)

end

end A350898.P10959129893828640645

/-! ## A350898.P811860820096445230

`A105519(n)^A096765(A124332(n+1))`
-/

namespace A350898.P811860820096445230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105519 n : ℚ) ^ (A096765 (A124332 (n + 1)).toNat : ℤ)

end

end A350898.P811860820096445230

/-! ## A350898.P1605387072198540622

`A000120(A082996(n+1))^A307806(n+1)`
-/

namespace A350898.P1605387072198540622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A082996 (n + 1)).toNat : ℚ) ^ (A307806 (n + 1) : ℤ)

end

end A350898.P1605387072198540622

/-!
# A350899: Number of partitions of n such that (smallest part) = 5*(number of parts).

The programs for A350899, there is no canonical definition to state claims against.
-/

/-! ## A350899.P10031381478140102695

`A373070(n+1)-A373076(n+1)`
-/

namespace A350899.P10031381478140102695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373070 (n + 1) - A373076 (n + 1)

end

end A350899.P10031381478140102695

/-! ## A350899.P1033126591969731457

`val(A058541(A231505(n)), A058541(n+1))`
-/

namespace A350899.P1033126591969731457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A058541 (A231505 n).toNat).toNat (A058541 (n + 1)).toNat

end

end A350899.P1033126591969731457

/-! ## A350899.P14044755861747368869

`A240522(n+1)%A046072(A262038(n+4))`
-/

namespace A350899.P14044755861747368869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240522 (n + 1)) (A046072 (A262038 (n + 4)).toNat)

end

end A350899.P14044755861747368869

/-! ## A350899.P9965416915510509842

`C(A102700(n+1), A162211(A330953(n+1)))`
-/

namespace A350899.P9965416915510509842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102700 (n + 1)).toNat (A162211 (A330953 (n + 1)).toNat).toNat

end

end A350899.P9965416915510509842

/-! ## A350899.P1689941479616751587

`A297045(n+1)+A175682(A008000(2*n+1))`
-/

namespace A350899.P1689941479616751587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297045 (n + 1) + A175682 (A008000 (2 * n + 1)).toNat

end

end A350899.P1689941479616751587

