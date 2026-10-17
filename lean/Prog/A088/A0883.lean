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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A088300: a(1) = 1. For n>1, the smallest number greater than n! with the prime signature of n!.

The programs for A088300, there is no canonical definition to state claims against.
-/

/-! ## A088300.P1315790174767269872

`A111467(∑[char[1]+n]+1)`
-/

namespace A088300.P1315790174767269872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A088300.P1315790174767269872

/-! ## A088300.P3079174848137507373

`record[A111467(n+1)/A130270(n+1)]`
-/

namespace A088300.P3079174848137507373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111467 (n + 1) : ℚ) / (A130270 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088300.P3079174848137507373

/-! ## A088300.P733324152478002514

`A046534(n+1)*A111467(A133263(n))`
-/

namespace A088300.P733324152478002514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (n + 1) * A111467 (A133263 n).toNat

end

end A088300.P733324152478002514

/-! ## A088300.P15584421650870675165

`A340999(3*(n+1))+A111467(A133263(n))`
-/

namespace A088300.P15584421650870675165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 (3 * (n + 1) + 204) + A111467 (A133263 n).toNat

end

end A088300.P15584421650870675165

/-! ## A088300.P11690994087500102639

`∏[A052126(n+1)]*A253550(A104357(n+1)+1)`
-/

namespace A088300.P11690994087500102639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A253550 (A104357 (n + 1) + 1).toNat

end

end A088300.P11690994087500102639

/-!
# A088302: Smallest integer value of n!/(2!3!...p!), where denominator contains product of factorials of primes in increasing order.

The programs for A088302, there is no canonical definition to state claims against.
-/

/-! ## A088302.P14764949930368210324

`A214394((n+2)!/2)`
-/

namespace A088302.P14764949930368210324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (SequenceMachineLib.roundAway ((Nat.factorial (n + 2) : ℚ) / 2)).toNat

end

end A088302.P14764949930368210324

/-! ## A088302.P13902063304924847863

`A306938(∏[∑[2^∑{e}[n+1, #-1]]])`
-/

namespace A088302.P13902063304924847863
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306938 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A088302.P13902063304924847863

/-!
# A088303: Smallest integer value of n!/(m_1!*m_2!*...*m_k!), where 1=m_1 < m_2 < ... is the sequence of integers coprime to n.

The programs for A088303, there is no canonical definition to state claims against.
-/

/-! ## A088303.P2153967315346432182

`A344912(A188554(n))`
-/

namespace A088303.P2153967315346432182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344912 (A188554 n).toNat

end

end A088303.P2153967315346432182

/-! ## A088303.P14405710787985434339

`A114162(A304258(n+1))`
-/

namespace A088303.P14405710787985434339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114162 (A304258 (n + 1)).toNat

end

end A088303.P14405710787985434339

/-! ## A088303.P2014578357562406237

`A286782(A266169(n+1))+n`
-/

namespace A088303.P2014578357562406237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A266169 (n + 1)).toNat + (n : ℤ)

end

end A088303.P2014578357562406237

/-!
# A088304: a(1) = 1. For n > 1, a(n) = a(n-1) if n is prime, a(n) = a(n-1)/n if n is composite and divides a(n-1) else a(n) = n*a(n-1).

The programs for A088304, there is no canonical definition to state claims against.
-/

/-! ## A088304.P13054139920486053205

`A248772(n+1)/A007947(A248772(n+1))`
-/

namespace A088304.P13054139920486053205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248772 (n + 1) : ℚ) / (A007947 (A248772 (n + 1)).toNat : ℚ)

end

end A088304.P13054139920486053205

/-!
# A088305: a(0) = 1, a(n) = Fibonacci(2*n). It has the property that a(n) = 1*a(n-1) + 2*a(n-2) + 3*a(n-3) + 4*a(n-4) + ...

The programs for A088305, the canonical program `A088305.P15158109030213123408` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088305 has offset 0).

The definition of A088305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088305.P15158109030213123408

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088305

/-- `3*a(n-1)-a(n-2)` -/
def P15158109030213123408.Spec : Prop :=
  ∀ n, P15158109030213123408.a n = A088305 n

theorem P15158109030213123408.correct : P15158109030213123408.Spec := by
  intro n
  simp only [A088305]

end A088305

/-! ## A088305.P6629936889158609062

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A088305.P6629936889158609062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A088305.P6629936889158609062

namespace A088305

/-- `ceil(ϕ²*a(n-1))` -/
def P6629936889158609062.Spec : Prop :=
  ∀ n, P6629936889158609062.a n = A088305 n

end A088305

/-! ## A088305.P5873835075011779869

`round(ϕ²*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A088305.P5873835075011779869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A088305.P5873835075011779869

namespace A088305

/-- `round(ϕ²*a(n-1))` -/
def P5873835075011779869.Spec : Prop :=
  ∀ n, P5873835075011779869.a n = A088305 n

end A088305

/-! ## A088305.P4515216952779863388

`ceil(a(n-1)/(2-ϕ))` with `a(0)=1, a(1)=1`
-/

namespace A088305.P4515216952779863388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A088305.P4515216952779863388

namespace A088305

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P4515216952779863388.Spec : Prop :=
  ∀ n, P4515216952779863388.a n = A088305 n

end A088305

/-! ## A088305.P4706356318732871904

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A088305.P4706356318732871904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A088305.P4706356318732871904

namespace A088305

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P4706356318732871904.Spec : Prop :=
  ∀ n, P4706356318732871904.a n = A088305 n

end A088305

/-! ## A088305.P6802291386421067637

`round(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A088305.P6802291386421067637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A088305.P6802291386421067637

namespace A088305

/-- `round(ϕ*ϕ*a(n-1))` -/
def P6802291386421067637.Spec : Prop :=
  ∀ n, P6802291386421067637.a n = A088305 n

end A088305

/-! ## A088305.P11064802578911621830

`∑[floor(ϕ²*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A088305.P11064802578911621830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088305.P11064802578911621830

namespace A088305

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P11064802578911621830.Spec : Prop :=
  ∀ n, P11064802578911621830.a n = A088305 n

end A088305

/-! ## A088305.P15002528509173829459

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A088305.P15002528509173829459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A088305.P15002528509173829459

namespace A088305

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P15002528509173829459.Spec : Prop :=
  ∀ n, P15002528509173829459.a n = A088305 n

theorem P15002528509173829459.correct : P15002528509173829459.Spec := by
  intro n
  simp only [A088305, Nat.add_sub_cancel, A088305.P15002528509173829459.a, A088305.P15158109030213123408.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A088305

/-! ## A088305.P1836494250502114961

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A088305.P1836494250502114961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A088305.P1836494250502114961

namespace A088305

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P1836494250502114961.Spec : Prop :=
  ∀ n, P1836494250502114961.a n = A088305 n

theorem P1836494250502114961.correct : P1836494250502114961.Spec := by
  intro n
  simp only [A088305, Nat.add_sub_cancel, A088305.P1836494250502114961.a, A088305.P15158109030213123408.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A088305

/-! ## A088305.P2123721208335317138

`A052925(n)-1`
-/

namespace A088305.P2123721208335317138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052925 n - 1

end

end A088305.P2123721208335317138

namespace A088305

/-- `A052925(n)-1` -/
def P2123721208335317138.Spec : Prop :=
  ∀ n, P2123721208335317138.a n = A088305 n

end A088305

/-! ## A088305.P18361526274805416668

`A324969(Δ[n²])`
-/

namespace A088305.P18361526274805416668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088305.P18361526274805416668

namespace A088305

/-- `A324969(Δ[n²])` -/
def P18361526274805416668.Spec : Prop :=
  ∀ n, P18361526274805416668.a n = A088305 n

end A088305

/-! ## A088305.P11923041021432129110

`∏{d}[2*n, A061446(#)]`
-/

namespace A088305.P11923041021432129110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A061446 d

end

end A088305.P11923041021432129110

namespace A088305

/-- `∏{d}[2*n, A061446(#)]` -/
def P11923041021432129110.Spec : Prop :=
  ∀ n, P11923041021432129110.a n = A088305 n

end A088305

/-! ## A088305.P11322101806613835233

`∑[A001519(n)-char[1]]`
-/

namespace A088305.P11322101806613835233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088305.P11322101806613835233

namespace A088305

/-- `∑[A001519(n)-char[1]]` -/
def P11322101806613835233.Spec : Prop :=
  ∀ n, P11322101806613835233.a n = A088305 n

end A088305

/-! ## A088305.P14568024703094552391

`A000045(comp[record[xor(1, n+1)]])`
-/

namespace A088305.P14568024703094552391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088305.P14568024703094552391

namespace A088305

/-- `A000045(comp[record[xor(1, n+1)]])` -/
def P14568024703094552391.Spec : Prop :=
  ∀ n, P14568024703094552391.a n = A088305 n

end A088305

/-! ## A088305.P1486441120979854683

`A000045(ceil(abs(2*n-γ)))`
-/

namespace A088305.P1486441120979854683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈|(2 * n : ℝ) - Real.eulerMascheroniConstant|⌉.toNat

end

end A088305.P1486441120979854683

namespace A088305

/-- `A000045(ceil(abs(2*n-γ)))` -/
def P1486441120979854683.Spec : Prop :=
  ∀ n, P1486441120979854683.a n = A088305 n

end A088305

/-! ## A088305.P1110229841662370759

`A001906(A028310(n))`
-/

namespace A088305.P1110229841662370759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A028310 n).toNat

end

end A088305.P1110229841662370759

namespace A088305

/-- `A001906(A028310(n))` -/
def P1110229841662370759.Spec : Prop :=
  ∀ n, P1110229841662370759.a n = A088305 n

end A088305

/-! ## A088305.P18135753020723888718

`A052952(A004275(n))`
-/

namespace A088305.P18135753020723888718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (A004275 n).toNat

end

end A088305.P18135753020723888718

namespace A088305

/-- `A052952(A004275(n))` -/
def P18135753020723888718.Spec : Prop :=
  ∀ n, P18135753020723888718.a n = A088305 n

end A088305

/-! ## A088305.P15536972053059498312

`A098054(A008574(n))`
-/

namespace A088305.P15536972053059498312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (A008574 n).toNat

end

end A088305.P15536972053059498312

namespace A088305

/-- `A098054(A008574(n))` -/
def P15536972053059498312.Spec : Prop :=
  ∀ n, P15536972053059498312.a n = A088305 n

end A088305

/-!
# A088307: Triangle, read by rows, T(n,k) = n^2 + k^2 if gcd(n,k)=1, otherwise 0.

The programs for A088307, the canonical program `A088307.P12779661996335787613` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088307 has offset 1).

The definition of A088307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088307.P12779661996335787613

`A054521(n+1)*A070216(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A088307

/-- `A054521(n+1)*A070216(n+1)` -/
def P12779661996335787613.Spec : Prop :=
  ∀ n, P12779661996335787613.a n = A088307 (n + 1)

theorem P12779661996335787613.correct : P12779661996335787613.Spec := by
  intro n
  simp only [A088307, Nat.add_sub_cancel]

end A088307

/-! ## A088307.P12570605228355645633

`lcm(A070216(n+1), A215200(n+1))`
-/

namespace A088307.P12570605228355645633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070216 (n + 1)) (A215200 (n + 1))

end

end A088307.P12570605228355645633

namespace A088307

/-- `lcm(A070216(n+1), A215200(n+1))` -/
def P12570605228355645633.Spec : Prop :=
  ∀ n, (P12570605228355645633.a n : ℤ) = A088307 (n + 1)

end A088307

/-! ## A088307.P9207043271279740603

`(A154614(n+1)+A073254(n))*A054521(n+1)`
-/

namespace A088307.P9207043271279740603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154614 (n + 1) + A073254 n) * A054521 (n + 1)

end

end A088307.P9207043271279740603

namespace A088307

/-- `(A154614(n+1)+A073254(n))*A054521(n+1)` -/
def P9207043271279740603.Spec : Prop :=
  ∀ n, P9207043271279740603.a n = A088307 (n + 1)

end A088307

/-! ## A088307.P9756918944084416932

`A054521(n+1)/A108872(n+1)*A321490(n+1)`
-/

namespace A088307.P9756918944084416932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054521 (n + 1) : ℚ) / (A108872 (n + 1) : ℚ) * (A321490 (n + 1) : ℚ)

end

end A088307.P9756918944084416932

namespace A088307

/-- `A054521(n+1)/A108872(n+1)*A321490(n+1)` -/
def P9756918944084416932.Spec : Prop :=
  ∀ n, P9756918944084416932.a n = (A088307 (n + 1) : ℚ)

end A088307

/-! ## A088307.P5553179861483265537

`(2*A004201(n+1)-A335821(n))*A054521(n+1)`
-/

namespace A088307.P5553179861483265537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A004201 (n + 1) - A335821 n) * A054521 (n + 1)

end

end A088307.P5553179861483265537

namespace A088307

/-- `(2*A004201(n+1)-A335821(n))*A054521(n+1)` -/
def P5553179861483265537.Spec : Prop :=
  ∀ n, P5553179861483265537.a n = A088307 (n + 1)

end A088307

/-!
# A088308: 2 followed by list of composite numbers mod 10.

The programs for A088308, the canonical program `A088308.P16348985359279735252` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088308 has offset 1).

The definition of A088308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088308.P16348985359279735252

`(A060462(n+1)+1)%10`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088308

/-- `(A060462(n+1)+1)%10` -/
def P16348985359279735252.Spec : Prop :=
  ∀ n, P16348985359279735252.a n = A088308 (n + 1)

theorem P16348985359279735252.correct : P16348985359279735252.Spec := by
  intro n
  simp only [A088308, Nat.add_sub_cancel]

end A088308

/-! ## A088308.P7514536568553202437

`lt[n+1, A000203(or(1, n))]%10`
-/

namespace A088308.P7514536568553202437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 10

end

end A088308.P7514536568553202437

namespace A088308

/-- `lt[n+1, A000203(or(1, n))]%10` -/
def P7514536568553202437.Spec : Prop :=
  ∀ n, (P7514536568553202437.a n : ℤ) = A088308 (n + 1)

end A088308

/-! ## A088308.P11426017076883008379

`comp[C(A006530(3*(n+1)), n)]%10`
-/

namespace A088308.P11426017076883008379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (3 * (n + 1))).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 10

end

end A088308.P11426017076883008379

namespace A088308

/-- `comp[C(A006530(3*(n+1)), n)]%10` -/
def P11426017076883008379.Spec : Prop :=
  ∀ n, (P11426017076883008379.a n : ℤ) = A088308 (n + 1)

end A088308

/-! ## A088308.P12866381544771944975

`A018252(n+1)%A018252(A343436(A343435(a(n-1)+3)+3))` with `a(0)=2`
-/

namespace A088308.P12866381544771944975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A018252 (n + 1)) (A018252 (A343436 (A343435 (a (n - 1) + 3).toNat + 3).toNat).toNat)

end

end A088308.P12866381544771944975

namespace A088308

/-- `A018252(n+1)%A018252(A343436(A343435(a(n-1)+3)+3))` -/
def P12866381544771944975.Spec : Prop :=
  ∀ n, P12866381544771944975.a n = A088308 (n + 1)

end A088308

/-! ## A088308.P10813080444244829024

`(A007088(A008329(n+2))+A018252(n+1))%10`
-/

namespace A088308.P10813080444244829024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A008329 (n + 2)).toNat + A018252 (n + 1)) 10

end

end A088308.P10813080444244829024

namespace A088308

/-- `(A007088(A008329(n+2))+A018252(n+1))%10` -/
def P10813080444244829024.Spec : Prop :=
  ∀ n, P10813080444244829024.a n = A088308 (n + 1)

end A088308

/-! ## A088308.P13924652127838737760

`record[A089088(n+1)]%10`
-/

namespace A088308.P13924652127838737760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A088308.P13924652127838737760

namespace A088308

/-- `record[A089088(n+1)]%10` -/
def P13924652127838737760.Spec : Prop :=
  ∀ n, P13924652127838737760.a n = A088308 (n + 1)

end A088308

/-! ## A088308.P10611949572890985173

`lt[A196564(n), A003415(n)]%10`
-/

namespace A088308.P10611949572890985173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 10

end

end A088308.P10611949572890985173

namespace A088308

/-- `lt[A196564(n), A003415(n)]%10` -/
def P10611949572890985173.Spec : Prop :=
  ∀ n, (P10611949572890985173.a n : ℤ) = A088308 (n + 1)

end A088308

/-! ## A088308.P12852151394985749862

`lt[n%2+n, ∑{d}[n, #]]%10`
-/

namespace A088308.P12852151394985749862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 10

end

end A088308.P12852151394985749862

namespace A088308

/-- `lt[n%2+n, ∑{d}[n, #]]%10` -/
def P12852151394985749862.Spec : Prop :=
  ∀ n, (P12852151394985749862.a n : ℤ) = A088308 (n + 1)

end A088308

/-! ## A088308.P1613560627112811215

`lt[∑{p}[2*n, #], ∑{d}[n, #]]%10`
-/

namespace A088308.P1613560627112811215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n % 10

end

end A088308.P1613560627112811215

namespace A088308

/-- `lt[∑{p}[2*n, #], ∑{d}[n, #]]%10` -/
def P1613560627112811215.Spec : Prop :=
  ∀ n, (P1613560627112811215.a n : ℤ) = A088308 (n + 1)

end A088308

/-! ## A088308.P15993416939568980600

`A010879(A065090(n+2))`
-/

namespace A088308.P15993416939568980600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065090 (n + 2)).toNat

end

end A088308.P15993416939568980600

namespace A088308

/-- `A010879(A065090(n+2))` -/
def P15993416939568980600.Spec : Prop :=
  ∀ n, P15993416939568980600.a n = A088308 (n + 1)

end A088308

/-! ## A088308.P12136779067946324083

`A010879(A060462(n+1)+1)`
-/

namespace A088308.P12136779067946324083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A060462 (n + 1) + 1).toNat

end

end A088308.P12136779067946324083

namespace A088308

/-- `A010879(A060462(n+1)+1)` -/
def P12136779067946324083.Spec : Prop :=
  ∀ n, P12136779067946324083.a n = A088308 (n + 1)

end A088308

/-! ## A088308.P9723905160073668186

`(A266222(A266222(n+1))+A018252(n+1))%10`
-/

namespace A088308.P9723905160073668186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266222 (A266222 (n + 1)).toNat + A018252 (n + 1)) 10

end

end A088308.P9723905160073668186

namespace A088308

/-- `(A266222(A266222(n+1))+A018252(n+1))%10` -/
def P9723905160073668186.Spec : Prop :=
  ∀ n, P9723905160073668186.a n = A088308 (n + 1)

end A088308

/-! ## A088308.P15850299919316126621

`A018252(n+1)%10*A001511(A000040(n+1))`
-/

namespace A088308.P15850299919316126621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 1)) 10 * A001511 (A000040 (n + 1)).toNat

end

end A088308.P15850299919316126621

namespace A088308

/-- `A018252(n+1)%10*A001511(A000040(n+1))` -/
def P15850299919316126621.Spec : Prop :=
  ∀ n, P15850299919316126621.a n = A088308 (n + 1)

end A088308

/-! ## A088308.P2440930296489268548

`A069517(A215144(n))+A010879(A018252(n+1))`
-/

namespace A088308.P2440930296489268548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A215144 n).toNat + A010879 (A018252 (n + 1)).toNat

end

end A088308.P2440930296489268548

namespace A088308

/-- `A069517(A215144(n))+A010879(A018252(n+1))` -/
def P2440930296489268548.Spec : Prop :=
  ∀ n, P2440930296489268548.a n = A088308 (n + 1)

end A088308

/-!
# A088309: Number of equivalence classes of n X n (0,1)-matrices with all rows distinct and all columns distinct.

The programs for A088309, there is no canonical definition to state claims against.
-/

/-! ## A088309.P9217595164969434741

`A088310(n)/n!`
-/

namespace A088309.P9217595164969434741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088310 n : ℚ) / (Nat.factorial n : ℚ)

end

end A088309.P9217595164969434741

/-! ## A088309.P10358449779265646671

`A088310(n)/A000142(n)`
-/

namespace A088309.P10358449779265646671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088310 n : ℚ) / (A000142 n : ℚ)

end

end A088309.P10358449779265646671

/-! ## A088309.P13877809646865811184

`A088310(n)/Δ[A003422(n)]`
-/

namespace A088309.P13877809646865811184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088310 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A088309.P13877809646865811184

/-! ## A088309.P2990402649554374695

`A088310(n)/∏[A028310(n)]`
-/

namespace A088309.P2990402649554374695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088310 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A088309.P2990402649554374695

/-! ## A088309.P11175696040646993427

`A059084(A061761(n))`
-/

namespace A088309.P11175696040646993427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059084 (A061761 n).toNat

end

end A088309.P11175696040646993427

/-!
# A088310: Number of n X n (0,1)-matrices with all rows distinct and all columns distinct.

The programs for A088310, there is no canonical definition to state claims against.
-/

/-! ## A088310.P7519218962013947937

`n!*A088309(n)`
-/

namespace A088310.P7519218962013947937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A088309 n

end

end A088310.P7519218962013947937

/-! ## A088310.P2442662311351315048

`A000142(n)*A088309(n)`
-/

namespace A088310.P2442662311351315048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A088309 n

end

end A088310.P2442662311351315048

/-! ## A088310.P3255015313237026434

`Δ[A003422(n)]*A088309(n)`
-/

namespace A088310.P3255015313237026434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A088309 n

end

end A088310.P3255015313237026434

/-! ## A088310.P12716154911482005072

`∏[A028310(n)]*A088309(n)`
-/

namespace A088310.P12716154911482005072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A088309 n

end

end A088310.P12716154911482005072

/-! ## A088310.P16523922980499901873

`A088309(n)*A094346(A000096(n))`
-/

namespace A088310.P16523922980499901873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088309 n * A094346 (A000096 n).toNat

end

end A088310.P16523922980499901873

/-!
# A088311: Number of sets of lists with distinct list sizes, cf. A000262.

The programs for A088311, there is no canonical definition to state claims against.
-/

/-! ## A088311.P2060659113067084558

`n!*A000009(n)`
-/

namespace A088311.P2060659113067084558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000009 n

end

end A088311.P2060659113067084558

/-! ## A088311.P11668104462139416305

`abs(n!*A081360(n))`
-/

namespace A088311.P11668104462139416305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A081360 n|

end

end A088311.P11668104462139416305

/-! ## A088311.P6528078694034047330

`n!*A054242(∑[n])`
-/

namespace A088311.P6528078694034047330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A054242 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088311.P6528078694034047330

/-! ## A088311.P14711322530163396508

`n!*∑[A087897(n)]`
-/

namespace A088311.P14711322530163396508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088311.P14711322530163396508

/-! ## A088311.P14058738616954964895

`A293135(∑[n+2]-1)`
-/

namespace A088311.P14058738616954964895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A088311.P14058738616954964895

/-! ## A088311.P17577901325058407668

`(A111133(n)+1)*n!`
-/

namespace A088311.P17577901325058407668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1) * (Nat.factorial n : ℤ)

end

end A088311.P17577901325058407668

/-! ## A088311.P10587915193036962758

`n!*A035457(2*n)`
-/

namespace A088311.P10587915193036962758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A035457 (2 * n)

end

end A088311.P10587915193036962758

/-! ## A088311.P15695710096877146506

`(A333147(n)+1)/2*n!`
-/

namespace A088311.P15695710096877146506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333147 n + 1 : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A088311.P15695710096877146506

/-! ## A088311.P12720544914569917887

`A000009(n)*A000142(n)`
-/

namespace A088311.P12720544914569917887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A000142 n

end

end A088311.P12720544914569917887

/-!
# A088312: Number of sets of lists (cf. A000262) with even number of lists.

The programs for A088312, there is no canonical definition to state claims against.
-/

/-! ## A088312.P2534825176261813733

`A293116(n)+A088313(n)`
-/

namespace A088312.P2534825176261813733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293116 n + A088313 n

end

end A088312.P2534825176261813733

/-! ## A088312.P15731560614263768916

`A000262(n)-A088313(n)`
-/

namespace A088312.P15731560614263768916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A088313 n

end

end A088312.P15731560614263768916

/-! ## A088312.P6259849552733948531

`abs(A293125(n))-A088313(n)`
-/

namespace A088312.P6259849552733948531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n| - A088313 n

end

end A088312.P6259849552733948531

/-! ## A088312.P14239121674070961070

`A129652(∑[n])-A088313(n)`
-/

namespace A088312.P14239121674070961070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j) - A088313 n

end

end A088312.P14239121674070961070

/-! ## A088312.P10974295538858724

`A206703(∑[n])-A088313(n)`
-/

namespace A088312.P10974295538858724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f1 j) - A088313 n

end

end A088312.P10974295538858724

/-! ## A088312.P14674285833754506804

`(A293116(n)+A000262(n))/2`
-/

namespace A088312.P14674285833754506804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293116 n + A000262 n : ℚ) / 2

end

end A088312.P14674285833754506804

/-! ## A088312.P5139200763337091881

`A261764(∑[n]+n)-A088313(n)`
-/

namespace A088312.P5139200763337091881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A088313 n

end

end A088312.P5139200763337091881

/-! ## A088312.P4251559183515106952

`A253286(∑[n+1]+1)-A088313(n)`
-/

namespace A088312.P4251559183515106952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A088313 n

end

end A088312.P4251559183515106952

/-! ## A088312.P16763794262368661644

`A056953(A004273(n))-A088313(n)`
-/

namespace A088312.P16763794262368661644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A004273 n).toNat - A088313 n

end

end A088312.P16763794262368661644

/-! ## A088312.P5551738913194839942

`A293985(A027379(n))-A088313(n)`
-/

namespace A088312.P5551738913194839942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A027379 n).toNat - A088313 n

end

end A088312.P5551738913194839942

/-!
# A088313: Number of "sets of lists" (cf. A000262) with an odd number of lists.

The programs for A088313, there is no canonical definition to state claims against.
-/

/-! ## A088313.P11724581803489177370

`A000262(n)-A088312(n)`
-/

namespace A088313.P11724581803489177370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A088312 n

end

end A088313.P11724581803489177370

/-! ## A088313.P7100915417128434186

`A088312(n)-A293116(n)`
-/

namespace A088313.P7100915417128434186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088312 n - A293116 n

end

end A088313.P7100915417128434186

/-! ## A088313.P12297760535315459021

`abs(A293125(n))-A088312(n)`
-/

namespace A088313.P12297760535315459021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n| - A088312 n

end

end A088313.P12297760535315459021

/-! ## A088313.P8932844551163605727

`A129652(∑[n])-A088312(n)`
-/

namespace A088313.P8932844551163605727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j) - A088312 n

end

end A088313.P8932844551163605727

/-! ## A088313.P4353987647653948063

`A206703(∑[n])-A088312(n)`
-/

namespace A088313.P4353987647653948063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f1 j) - A088312 n

end

end A088313.P4353987647653948063

/-! ## A088313.P11147835191728224485

`(A000262(n)-A293116(n))/2`
-/

namespace A088313.P11147835191728224485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n - A293116 n : ℚ) / 2

end

end A088313.P11147835191728224485

/-! ## A088313.P12977888747933279148

`A261764(∑[n]+n)-A088312(n)`
-/

namespace A088313.P12977888747933279148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A088312 n

end

end A088313.P12977888747933279148

/-! ## A088313.P11962181027610960377

`A293053(∑[n]+n)-A088312(n)`
-/

namespace A088313.P11962181027610960377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A088312 n

end

end A088313.P11962181027610960377

/-! ## A088313.P11841094701345882950

`A056953(A004273(n))-A088312(n)`
-/

namespace A088313.P11841094701345882950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A004273 n).toNat - A088312 n

end

end A088313.P11841094701345882950

/-! ## A088313.P2736945731718685389

`A293985(A027379(n))-A088312(n)`
-/

namespace A088313.P2736945731718685389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A027379 n).toNat - A088312 n

end

end A088313.P2736945731718685389

/-!
# A088314: Cardinality of set of sets of parts of all partitions of n.

The programs for A088314, there is no canonical definition to state claims against.
-/

/-! ## A088314.P4142213140591283529

`A365042(n)+1`
-/

namespace A088314.P4142213140591283529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365042 n + 1

end

end A088314.P4142213140591283529

/-! ## A088314.P7945289732540617062

`Δ[A365043(abs(1-n))]+1`
-/

namespace A088314.P7945289732540617062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365043 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A088314.P7945289732540617062

/-! ## A088314.P13230846652348357667

`A011782(n)-A070880(A028310(n))`
-/

namespace A088314.P13230846652348357667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A070880 (A028310 n).toNat

end

end A088314.P13230846652348357667

/-! ## A088314.P4660479969293151472

`A011782(n)-A070880(A233583(n+1))`
-/

namespace A088314.P4660479969293151472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A070880 (A233583 (n + 1)).toNat

end

end A088314.P4660479969293151472

/-! ## A088314.P16043809622200200329

`ceil(A000079(n)/2-A070880(A028310(n)))`
-/

namespace A088314.P16043809622200200329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℚ) / 2 - (A070880 (A028310 n).toNat : ℚ)⌉

end

end A088314.P16043809622200200329

/-! ## A088314.P13499085957552938164

`Δ[A131577(n)]-A070880(A233583(n+1))`
-/

namespace A088314.P13499085957552938164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070880 (A233583 (n + 1)).toNat

end

end A088314.P13499085957552938164

/-! ## A088314.P173647867409487963

`A016116(A004273(n))-A070880(A028310(n))`
-/

namespace A088314.P173647867409487963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004273 n).toNat - A070880 (A028310 n).toNat

end

end A088314.P173647867409487963

/-! ## A088314.P18224746083439499191

`2^n-A365322(n)`
-/

namespace A088314.P18224746083439499191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365322 n

end

end A088314.P18224746083439499191

/-! ## A088314.P3922175084940290914

`A088571(n)+A000009(n)`
-/

namespace A088314.P3922175084940290914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088571 n + A000009 n

end

end A088314.P3922175084940290914

/-! ## A088314.P5250603386743668764

`A094373(n)-A365045(n)`
-/

namespace A088314.P5250603386743668764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A365045 n

end

end A088314.P5250603386743668764

/-!
# A088315: For n such that all numbers between the largest prime preceding n! and the smallest prime following n! + n are composite (see A088331), sequence is number of such consecutive composite numbers.

The programs for A088315, there is no canonical definition to state claims against.
-/

/-! ## A088315.P14703297320826026662

`A340802(A088331(n+1))`
-/

namespace A088315.P14703297320826026662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A088331 (n + 1)).toNat

end

end A088315.P14703297320826026662

/-! ## A088315.P16543467102510867635

`A340802(lt[0, A090975(n)])`
-/

namespace A088315.P16543467102510867635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088315.P16543467102510867635

/-! ## A088315.P3180811720447596267

`A340802(lt[0, A193814(n)])`
-/

namespace A088315.P3180811720447596267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088315.P3180811720447596267

/-! ## A088315.P10657425655071738000

`A340802(lt[1, A033932(n)])`
-/

namespace A088315.P10657425655071738000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088315.P10657425655071738000

/-! ## A088315.P2952067113385038749

`A340802(lt[1, A093621(n)])`
-/

namespace A088315.P2952067113385038749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088315.P2952067113385038749

/-! ## A088315.P8925688129075580537

`A340802(lt[1, A212281(n)])`
-/

namespace A088315.P8925688129075580537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088315.P8925688129075580537

/-! ## A088315.P10746134238669113971

`A340802(lt[1, A269485(n)])`
-/

namespace A088315.P10746134238669113971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088315.P10746134238669113971

/-! ## A088315.P9938380238241040533

`A340802(comp[A002981(n+1)])`
-/

namespace A088315.P9938380238241040533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088315.P9938380238241040533

/-! ## A088315.P9809265035987258488

`A340802(eq[0, char[A002981(n+1)]])`
-/

namespace A088315.P9809265035987258488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A088315.P9809265035987258488

/-!
# A088316: a(n) = 13*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 13.

The programs for A088316, the canonical program `A088316.P13862182402388718505` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088316 has offset 0).

The definition of A088316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*a(n-1)+a(n-2)` (program `A088316.P13862182402388718505`, by `A088316.P13862182402388718505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088316.P13862182402388718505

`13*a(n-1)+a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088316

/-- `13*a(n-1)+a(n-2)` -/
def P13862182402388718505.Spec : Prop :=
  ∀ n, (P13862182402388718505.a n : ℤ) = A088316 n

theorem P13862182402388718505.correct : P13862182402388718505.Spec := by
  intro n
  simp only [A088316]

end A088316

/-! ## A088316.P9606787018743959991

`((13+sqrt(173))/2)^n+((13-sqrt(173))/2)^n`
-/

namespace A088316.P9606787018743959991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((13 + Real.sqrt (173 : ℝ)) / 2) ^ n + ((13 - Real.sqrt (173 : ℝ)) / 2) ^ n

end

end A088316.P9606787018743959991

namespace A088316

/-- `((13+sqrt(173))/2)^n+((13-sqrt(173))/2)^n` -/
def P9606787018743959991.Spec : Prop :=
  ∀ n, P9606787018743959991.a n = (A088316 n : ℝ)

end A088316

/-!
# A088317: a(n) = 8*a(n-1) + a(n-2), starting with a(0) = 1 and a(1) = 4.

The programs for A088317, the canonical program `A088317.P13887211836182595507` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088317 has offset 0).

The definition of A088317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+a(n-2)` (program `A088317.P13887211836182595507`, by `A088317.P13887211836182595507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088317.P13887211836182595507

`8*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088317

/-- `8*a(n-1)+a(n-2)` -/
def P13887211836182595507.Spec : Prop :=
  ∀ n, (P13887211836182595507.a n : ℤ) = A088317 n

theorem P13887211836182595507.correct : P13887211836182595507.Spec := by
  intro n
  simp only [A088317]

end A088317

/-! ## A088317.P7354333154482742900

`A086594(n)/2`
-/

namespace A088317.P7354333154482742900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086594 n : ℚ) / 2

end

end A088317.P7354333154482742900

namespace A088317

/-- `A086594(n)/2` -/
def P7354333154482742900.Spec : Prop :=
  ∀ n, P7354333154482742900.a n = (A088317 n : ℚ)

end A088317

/-! ## A088317.P250158835480507654

`3*3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A088317.P250158835480507654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (3 * a (n - 1)) - (a (n - 1) - a (n - 2))

end

end A088317.P250158835480507654

namespace A088317

/-- `3*3*a(n-1)-(a(n-1)-a(n-2))` -/
def P250158835480507654.Spec : Prop :=
  ∀ n, P250158835480507654.a n = A088317 n

end A088317

/-! ## A088317.P16105635770591026180

`A041024(and(2, a(n-1))+n-1)` with `a(0)=1`
-/

namespace A088317.P16105635770591026180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041024 (Int.land 2 (a (n - 1)) + ((n : ℤ) - 1)).toNat

end

end A088317.P16105635770591026180

namespace A088317

/-- `A041024(and(2, a(n-1))+n-1)` -/
def P16105635770591026180.Spec : Prop :=
  ∀ n, P16105635770591026180.a n = A088317 n

end A088317

/-! ## A088317.P14715609226160605528

`gcd(and(2, a(n-1)), A041024(n-1))` with `a(0)=1`
-/

namespace A088317.P14715609226160605528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (Nat.land 2 (a (n - 1)) : ℤ) (A041024 (n - 1))

end

end A088317.P14715609226160605528

namespace A088317

/-- `gcd(and(2, a(n-1)), A041024(n-1))` -/
def P14715609226160605528.Spec : Prop :=
  ∀ n, (P14715609226160605528.a n : ℤ) = A088317 n

end A088317

/-! ## A088317.P11045211968348210777

`((4+sqrt(17))^n+(4-sqrt(17))^n)/2`
-/

namespace A088317.P11045211968348210777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (17 : ℝ)) ^ n + (4 - Real.sqrt (17 : ℝ)) ^ n) / 2

end

end A088317.P11045211968348210777

namespace A088317

/-- `((4+sqrt(17))^n+(4-sqrt(17))^n)/2` -/
def P11045211968348210777.Spec : Prop :=
  ∀ n, P11045211968348210777.a n = (A088317 n : ℝ)

end A088317

/-! ## A088317.P14854003461016908452

`record[(A174508(n)+1)/2]`
-/

namespace A088317.P14854003461016908452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174508 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088317.P14854003461016908452

namespace A088317

/-- `record[(A174508(n)+1)/2]` -/
def P14854003461016908452.Spec : Prop :=
  ∀ n, P14854003461016908452.a n = (A088317 n : ℚ)

end A088317

/-! ## A088317.P14872821766096387183

`Δ[A041024(n)]%A041024(n)`
-/

namespace A088317.P14872821766096387183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A041024 n)

end

end A088317.P14872821766096387183

namespace A088317

/-- `Δ[A041024(n)]%A041024(n)` -/
def P14872821766096387183.Spec : Prop :=
  ∀ n, P14872821766096387183.a n = A088317 n

end A088317

/-! ## A088317.P12681295636636279208

`A041024(n+1)%A041024(n)`
-/

namespace A088317.P12681295636636279208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041024 (n + 1)) (A041024 n)

end

end A088317.P12681295636636279208

namespace A088317

/-- `A041024(n+1)%A041024(n)` -/
def P12681295636636279208.Spec : Prop :=
  ∀ n, P12681295636636279208.a n = A088317 n

end A088317

/-! ## A088317.P11568442272220246484

`A041024(n+1)-A040012(n+1)*A041024(n)`
-/

namespace A088317.P11568442272220246484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041024 (n + 1) - A040012 (n + 1) * A041024 n

end

end A088317.P11568442272220246484

namespace A088317

/-- `A041024(n+1)-A040012(n+1)*A041024(n)` -/
def P11568442272220246484.Spec : Prop :=
  ∀ n, P11568442272220246484.a n = A088317 n

end A088317

/-!
# A088318: The number of possible values of the squarefree kernel (A007947) shared by at least two solutions x to A056239(x) = n.

The programs for A088318, there is no canonical definition to state claims against.
-/

/-! ## A088318.P13747088744244954479

`floor((sqrt(A271481(n))-1)/3)`
-/

namespace A088318.P13747088744244954479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A271481 n : ℝ) - 1) / 3⌋

end

end A088318.P13747088744244954479

/-! ## A088318.P9839042378250529162

`A111660(A000701(n))`
-/

namespace A088318.P9839042378250529162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A000701 n).toNat

end

end A088318.P9839042378250529162

/-! ## A088318.P12576200162631617161

`A121902(A307605(n))`
-/

namespace A088318.P12576200162631617161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A307605 n).toNat

end

end A088318.P12576200162631617161

/-! ## A088318.P731889542206313671

`A121902(A380124(n))`
-/

namespace A088318.P731889542206313671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A380124 n).toNat

end

end A088318.P731889542206313671

/-! ## A088318.P7085498498122428665

`A111660(A123975(n+1))`
-/

namespace A088318.P7085498498122428665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A123975 (n + 1)).toNat

end

end A088318.P7085498498122428665

/-!
# A088319: Ordered hypotenuses of primitive Pythagorean triangles having legs that add up to a square.

The programs for A088319, there is no canonical definition to state claims against.
-/

/-! ## A088319.P17814194934582057155

`A089549(n+1)-A089551(n+1)`
-/

namespace A088319.P17814194934582057155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089549 (n + 1) - A089551 (n + 1)

end

end A088319.P17814194934582057155

/-! ## A088319.P13633480886367792692

`2*A089549(n+1)-A089552(n+1)`
-/

namespace A088319.P13633480886367792692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089549 (n + 1) - A089552 (n + 1)

end

end A088319.P13633480886367792692

/-! ## A088319.P11137656865704674028

`A089549(n+1)-2*A089558(n+1)`
-/

namespace A088319.P11137656865704674028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089549 (n + 1) - 2 * A089558 (n + 1)

end

end A088319.P11137656865704674028

/-! ## A088319.P13784601870867851313

`A089552(n+1)-2*A089551(n+1)`
-/

namespace A088319.P13784601870867851313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089552 (n + 1) - 2 * A089551 (n + 1)

end

end A088319.P13784601870867851313

/-! ## A088319.P2167476176770173797

`A089545(n+1)²+A089546(n+1)²`
-/

namespace A088319.P2167476176770173797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089545 (n + 1) ^ 2 + A089546 (n + 1) ^ 2

end

end A088319.P2167476176770173797

/-! ## A088319.P2274857574365075559

`2*A089549(n+1)-A088546(n+1)²`
-/

namespace A088319.P2274857574365075559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089549 (n + 1) - A088546 (n + 1) ^ 2

end

end A088319.P2274857574365075559

/-! ## A088319.P4320290153918444502

`A088546(n+1)²-2*A089551(n+1)`
-/

namespace A088319.P4320290153918444502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (n + 1) ^ 2 - 2 * A089551 (n + 1)

end

end A088319.P4320290153918444502

/-! ## A088319.P12458692516698977212

`A089552(n+1)-A089551(n+1)²/A089558(n+1)`
-/

namespace A088319.P12458692516698977212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) : ℚ) - (A089551 (n + 1) ^ 2 : ℚ) / (A089558 (n + 1) : ℚ)

end

end A088319.P12458692516698977212

/-!
# A088320: a(n) = 10*a(n-1) + a(n-2), starting with a(0) = 1 and a(1) = 5.

The programs for A088320, the canonical program `A088320.P965863681850005009` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088320 has offset 0).

The definition of A088320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+a(n-2)` (program `A088320.P965863681850005009`, by `A088320.P965863681850005009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088320.P965863681850005009

`10*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088320

/-- `10*a(n-1)+a(n-2)` -/
def P965863681850005009.Spec : Prop :=
  ∀ n, (P965863681850005009.a n : ℤ) = A088320 n

theorem P965863681850005009.correct : P965863681850005009.Spec := by
  intro n
  simp only [A088320]

end A088320

/-! ## A088320.P16466725751742879093

`((5+sqrt(26))^n+(5-sqrt(26))^n)/2`
-/

namespace A088320.P16466725751742879093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (26 : ℝ)) ^ n + (5 - Real.sqrt (26 : ℝ)) ^ n) / 2

end

end A088320.P16466725751742879093

namespace A088320

/-- `((5+sqrt(26))^n+(5-sqrt(26))^n)/2` -/
def P16466725751742879093.Spec : Prop :=
  ∀ n, P16466725751742879093.a n = (A088320 n : ℝ)

end A088320

/-! ## A088320.P13782543605065064002

`floor(A086927(n)/2)`
-/

namespace A088320.P13782543605065064002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086927 n : ℚ) / 2⌋

end

end A088320.P13782543605065064002

namespace A088320

/-- `floor(A086927(n)/2)` -/
def P13782543605065064002.Spec : Prop :=
  ∀ n, P13782543605065064002.a n = A088320 n

end A088320

/-! ## A088320.P6305340999225723753

`record[(A174509(n)+1)/2]`
-/

namespace A088320.P6305340999225723753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174509 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088320.P6305340999225723753

namespace A088320

/-- `record[(A174509(n)+1)/2]` -/
def P6305340999225723753.Spec : Prop :=
  ∀ n, P6305340999225723753.a n = (A088320 n : ℚ)

end A088320

/-! ## A088320.P17704731831172449847

`Δ[A041040(n)]%A041040(n)`
-/

namespace A088320.P17704731831172449847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A041040 n)

end

end A088320.P17704731831172449847

namespace A088320

/-- `Δ[A041040(n)]%A041040(n)` -/
def P17704731831172449847.Spec : Prop :=
  ∀ n, P17704731831172449847.a n = A088320 n

end A088320

/-! ## A088320.P2455731070582517500

`A041040(n+1)%A041040(n)`
-/

namespace A088320.P2455731070582517500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041040 (n + 1)) (A041040 n)

end

end A088320.P2455731070582517500

namespace A088320

/-- `A041040(n+1)%A041040(n)` -/
def P2455731070582517500.Spec : Prop :=
  ∀ n, P2455731070582517500.a n = A088320 n

end A088320

/-! ## A088320.P15429480939165381285

`A041040(n+1)-A040020(n+1)*A041040(n)`
-/

namespace A088320.P15429480939165381285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041040 (n + 1) - A040020 (n + 1) * A041040 n

end

end A088320.P15429480939165381285

namespace A088320

/-- `A041040(n+1)-A040020(n+1)*A041040(n)` -/
def P15429480939165381285.Spec : Prop :=
  ∀ n, P15429480939165381285.a n = A088320 n

end A088320

/-!
# A088322: Number of monotone functions f: 2^X -> 2^X where 2^X is the power set of an n-set X. Here f is monotone means that if A is a subset of B then f(A) is a subset of f(B).

The programs for A088322, there is no canonical definition to state claims against.
-/

/-! ## A088322.P5276407413866512419

`A000372(n)^n`
-/

namespace A088322.P5276407413866512419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n ^ n

end

end A088322.P5276407413866512419

/-! ## A088322.P8412750339866147853

`(A014466(n)+1)^n`
-/

namespace A088322.P8412750339866147853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014466 n + 1) ^ n

end

end A088322.P8412750339866147853

/-! ## A088322.P10648085992797336326

`A132581(2^n)^n`
-/

namespace A088322.P10648085992797336326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (2 ^ n) ^ n

end

end A088322.P10648085992797336326

/-!
# A088323: Number of numbers b>1 such that n is a repunit in base b representation.

The programs for A088323, there is no canonical definition to state claims against.
-/

/-! ## A088323.P8364888997558696322

`gcd(A001221(n+1), A302982(A000041(n)))`
-/

namespace A088323.P8364888997558696322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (A302982 (A000041 n).toNat)

end

end A088323.P8364888997558696322

/-! ## A088323.P9488663123427660944

`A001221(n+1)^A010815(A330369(2*(n+1)))`
-/

namespace A088323.P9488663123427660944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) ^ (A010815 (A330369 (2 * (n + 1))).toNat : ℤ)

end

end A088323.P9488663123427660944

/-! ## A088323.P4047683399486193876

`A003631(p?[63*n-17])%A163671(n+1)`
-/

namespace A088323.P4047683399486193876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003631 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A163671 (n + 1))

end

end A088323.P4047683399486193876

/-! ## A088323.P11012116536471814751

`A001221(or(A072345(n), A174269(n+1)))`
-/

namespace A088323.P11012116536471814751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A072345 n) (A174269 (n + 1))).toNat

end

end A088323.P11012116536471814751

/-! ## A088323.P8411178911793149973

`A124010(lcm(A113744(n+1), A307095(n+1)))`
-/

namespace A088323.P8411178911793149973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (Int.lcm (A113744 (n + 1)) (A307095 (n + 1)))

end

end A088323.P8411178911793149973

/-!
# A088325: Piet Hut's "coat-hanger" sequence: unlabeled forests of rooted trees with n edges, where there can be any number of components, the outdegree of each node is <= 2 and the symmetric group acts on the components.

The programs for A088325, there is no canonical definition to state claims against.
-/

/-! ## A088325.P14858994093938287382

`A215930(n)-A007953(A185293(n+2))`
-/

namespace A088325.P14858994093938287382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215930 n - A007953 (A185293 (n + 2)).toNat

end

end A088325.P14858994093938287382

/-! ## A088325.P5254637780791484183

`A257639(A151297(n))`
-/

namespace A088325.P5254637780791484183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A151297 n).toNat

end

end A088325.P5254637780791484183

/-! ## A088325.P17027946586507621103

`A172471(A326977(∑[n]))`
-/

namespace A088325.P17027946586507621103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A326977 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A088325.P17027946586507621103

/-! ## A088325.P13130761279811251867

`A000006(A303477(n)+n)`
-/

namespace A088325.P13130761279811251867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A303477 n + (n : ℤ)).toNat

end

end A088325.P13130761279811251867

/-! ## A088325.P6643646658057888908

`A337716(n)-A337682(A337720(n))`
-/

namespace A088325.P6643646658057888908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337716 n - A337682 (A337720 n).toNat

end

end A088325.P6643646658057888908

/-!
# A088326: Triangle T(n,k) (n>=1, 1<=k<=n) read by rows, giving number of Piet Hut's "coat-hanger" arrangements: unlabeled forests of rooted trees with n edges and k connected components, in which the outdegree of each node is <= 2 and the symmetric group acts on the components.

The programs for A088326, there is no canonical definition to state claims against.
-/

/-! ## A088326.P3196055804270935999

`A075458(A345530(n+1))`
-/

namespace A088326.P3196055804270935999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075458 (A345530 (n + 1)).toNat

end

end A088326.P3196055804270935999

/-! ## A088326.P9021109386544471114

`A075458(2*A345710(n+1))`
-/

namespace A088326.P9021109386544471114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075458 (2 * A345710 (n + 1)).toNat

end

end A088326.P9021109386544471114

/-! ## A088326.P8785443989453587580

`A108611(3*A345530(n+1))`
-/

namespace A088326.P8785443989453587580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (3 * A345530 (n + 1)).toNat

end

end A088326.P8785443989453587580

/-! ## A088326.P15162743202547853329

`A105564(5*A345710(n+1))`
-/

namespace A088326.P15162743202547853329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (5 * A345710 (n + 1)).toNat

end

end A088326.P15162743202547853329

/-! ## A088326.P4315939047823262141

`A108611(6*A345710(n+1))`
-/

namespace A088326.P4315939047823262141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A345710 (n + 1)).toNat

end

end A088326.P4315939047823262141

/-!
# A088327: G.f.: exp(Sum_{k>=1} B(x^k)/k), where B(x) = x + 2*x^2 + 5*x^3 + 14*x^4 + 42*x^5 + ... = (C(x)-1)/x and C is the g.f. for the Catalan numbers A000108.

The programs for A088327, there is no canonical definition to state claims against.
-/

/-! ## A088327.P18095314813311312119

`A319951(A045905(n))+A148783(n)`
-/

namespace A088327.P18095314813311312119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A045905 n).toNat + A148783 n

end

end A088327.P18095314813311312119

/-! ## A088327.P5192933358158530922

`A226762(A241278(n+1))`
-/

namespace A088327.P5192933358158530922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A241278 (n + 1)).toNat

end

end A088327.P5192933358158530922

/-! ## A088327.P14237832061937776384

`or(A007059(2*n), A388711(A336482(n)))`
-/

namespace A088327.P14237832061937776384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007059 (2 * n)) (A388711 (A336482 n).toNat)

end

end A088327.P14237832061937776384

/-!
# A088328: Table read by rows where row n contains lower twin primes of the form k*A002110(n)-1 in the range 0 < k < A006094(n+1).

The programs for A088328, there is no canonical definition to state claims against.
-/

/-! ## A088328.P5750254131312782998

`A001359(A274640(n)%A007810(n+1))`
-/

namespace A088328.P5750254131312782998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (Int.tmod (A274640 n) (A007810 (n + 1))).toNat

end

end A088328.P5750254131312782998

/-! ## A088328.P16676165373171049383

`A078859(A274640(n))%A210251(n+3)`
-/

namespace A088328.P16676165373171049383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078859 (A274640 n).toNat) (A210251 (n + 3))

end

end A088328.P16676165373171049383

/-! ## A088328.P6980811229530857268

`A001359(A010411(2*n+5)%A342046(n+3))`
-/

namespace A088328.P6980811229530857268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (Int.tmod (A010411 (2 * n + 5)) (A342046 (n + 3))).toNat

end

end A088328.P6980811229530857268

/-!
# A088331: Numbers n such that all numbers between the largest prime preceding n! and the smallest prime following n! + n are composite.

The programs for A088331, there is no canonical definition to state claims against.
-/

/-! ## A088331.P17427005089958975825

`lt[1, A033932(n)]`
-/

namespace A088331.P17427005089958975825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088331.P17427005089958975825

/-! ## A088331.P11362964405835319870

`lt[1, A093621(n)]`
-/

namespace A088331.P11362964405835319870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088331.P11362964405835319870

/-! ## A088331.P17031461309523474379

`lt[1, A212281(n)]`
-/

namespace A088331.P17031461309523474379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088331.P17031461309523474379

/-! ## A088331.P439299679195753300

`lt[1, A269485(n)]`
-/

namespace A088331.P439299679195753300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088331.P439299679195753300

/-! ## A088331.P2681241267845165326

`comp[A002981(n+1)]`
-/

namespace A088331.P2681241267845165326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088331.P2681241267845165326

/-! ## A088331.P7852751441411325864

`lt[1, A035093(n+1)]+1`
-/

namespace A088331.P7852751441411325864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088331.P7852751441411325864

/-! ## A088331.P17164647541396424950

`lt[1, A054990(n+1)]+1`
-/

namespace A088331.P17164647541396424950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088331.P17164647541396424950

/-! ## A088331.P16416904113300636146

`lt[n+1, A245695(n+1)]`
-/

namespace A088331.P16416904113300636146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088331.P16416904113300636146

/-! ## A088331.P9757031845621087544

`lt[1, A035093(A028310(n))]`
-/

namespace A088331.P9757031845621087544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035093 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088331.P9757031845621087544

/-! ## A088331.P12214248094685047959

`eq[1, A008683(2*A033932(n))]`
-/

namespace A088331.P12214248094685047959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A033932 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088331.P12214248094685047959

/-!
# A088332: 

The programs for A088332, there is no canonical definition to state claims against.
-/

/-! ## A088332.P12694394516532049563

`A002583(A002981(n+2))`
-/

namespace A088332.P12694394516532049563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 (A002981 (n + 2)).toNat

end

end A088332.P12694394516532049563

/-! ## A088332.P15515603276801738586

`A185387(A002981(n+2)+1)`
-/

namespace A088332.P15515603276801738586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185387 (A002981 (n + 2) + 1).toNat

end

end A088332.P15515603276801738586

/-! ## A088332.P604629428827862343

`record[A037151(n+1)%A037152(n+1)]`
-/

namespace A088332.P604629428827862343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037151 (n + 1)) (A037152 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088332.P604629428827862343

/-!
# A088333: A version of Josephus problem: a(n) is the surviving integer under the following elimination process. Arrange 1,2,3,...,n in a circle, increasing clockwise. Starting with i=1, delete the integer 3 places clockwise from i. Repeat, counting 3 places from the next undeleted integer, until only one integer remains.

The programs for A088333, the canonical program `A088333.P18292271710616315416` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088333 has offset 1).

The definition of A088333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088333.P18292271710616315416

`(a(n-1)+3)%(n+1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088333

/-- `(a(n-1)+3)%(n+1)+1` -/
def P18292271710616315416.Spec : Prop :=
  ∀ n, (P18292271710616315416.a n : ℤ) = A088333 (n + 1)

theorem P18292271710616315416.correct : P18292271710616315416.Spec := by
  intro n
  simp only [A088333, Nat.add_sub_cancel]

end A088333

/-! ## A088333.P13467503231060471427

`a(n-1)*ratio[(a(n-1)-3)%n-1]` with `a(0)=1`
-/

namespace A088333.P13467503231060471427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (f1 (n - 1) - 3) (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A088333.P13467503231060471427

namespace A088333

/-- `a(n-1)*ratio[(a(n-1)-3)%n-1]` -/
def P13467503231060471427.Spec : Prop :=
  ∀ n, P13467503231060471427.a n = (A088333 (n + 1) : ℚ)

end A088333

/-! ## A088333.P8057349776764456446

`((a(A023443(n))+2)%(n+1)+1)%(n+1)+1` with `a(0)=1`
-/

namespace A088333.P8057349776764456446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((a (A023443 n).toNat + 2) % (n + 1) + 1) % (n + 1) + 1

end

end A088333.P8057349776764456446

namespace A088333

/-- `((a(A023443(n))+2)%(n+1)+1)%(n+1)+1` -/
def P8057349776764456446.Spec : Prop :=
  ∀ n, (P8057349776764456446.a n : ℤ) = A088333 (n + 1)

end A088333

/-! ## A088333.P10054220925818829120

`A032434(A077169(n+1)-1)`
-/

namespace A088333.P10054220925818829120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032434 (A077169 (n + 1) - 1).toNat

end

end A088333.P10054220925818829120

namespace A088333

/-- `A032434(A077169(n+1)-1)` -/
def P10054220925818829120.Spec : Prop :=
  ∀ n, P10054220925818829120.a n = A088333 (n + 1)

end A088333

/-! ## A088333.P8302024750367642954

`A198789(∑[n+4]+3)`
-/

namespace A088333.P8302024750367642954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A088333.P8302024750367642954

namespace A088333

/-- `A198789(∑[n+4]+3)` -/
def P8302024750367642954.Spec : Prop :=
  ∀ n, P8302024750367642954.a n = A088333 (n + 1)

end A088333

/-! ## A088333.P9296759167505593848

`A198788(∑[n+3]+7)`
-/

namespace A088333.P9296759167505593848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A088333.P9296759167505593848

namespace A088333

/-- `A198788(∑[n+3]+7)` -/
def P9296759167505593848.Spec : Prop :=
  ∀ n, P9296759167505593848.a n = A088333 (n + 1)

end A088333

/-! ## A088333.P7944554811814047974

`or(char[1], A198788(A000124(n+3)+3))`
-/

namespace A088333.P7944554811814047974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A198788 (A000124 (n + 3) + 3).toNat)

end

end A088333.P7944554811814047974

namespace A088333

/-- `or(char[1], A198788(A000124(n+3)+3))` -/
def P7944554811814047974.Spec : Prop :=
  ∀ n, P7944554811814047974.a n = A088333 (n + 1)

end A088333

/-!
# A088334: Expansion of 1/phi (phi being the golden ratio) as an infinite product: 1/phi = Product_{k=0..n} (1-1/a(k)).

The programs for A088334, there is no canonical definition to state claims against.
-/

/-! ## A088334.P14023933565763811009

`A081714(∑[2^n])`
-/

namespace A088334.P14023933565763811009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088334.P14023933565763811009

/-! ## A088334.P15982925546422357296

`A101342(n+2)+1`
-/

namespace A088334.P15982925546422357296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101342 (n + 2) + 1

end

end A088334.P15982925546422357296

/-! ## A088334.P1448335426611220051

`A032908(2^(n+1))`
-/

namespace A088334.P1448335426611220051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (2 ^ (n + 1))

end

end A088334.P1448335426611220051

/-!
# A088335: Number of permutations in the symmetric group S_n such that the size of their centralizer is even.

The programs for A088335, there is no canonical definition to state claims against.
-/

/-! ## A088335.P17750215166514051872

`n!-A088994(n)`
-/

namespace A088335.P17750215166514051872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A088994 n

end

end A088335.P17750215166514051872

/-! ## A088335.P8836311639906116491

`A000142(n)-A088994(n)`
-/

namespace A088335.P8836311639906116491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A088994 n

end

end A088335.P8836311639906116491

/-! ## A088335.P4888341991645731777

`Δ[A003422(n)]-A088994(n)`
-/

namespace A088335.P4888341991645731777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088994 n

end

end A088335.P4888341991645731777

/-! ## A088335.P3213941899343249016

`∏[A028310(n)]-A088994(n)`
-/

namespace A088335.P3213941899343249016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A088994 n

end

end A088335.P3213941899343249016

/-! ## A088335.P6457729319582690613

`A273730(A000096(n))-A088994(n)`
-/

namespace A088335.P6457729319582690613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A000096 n).toNat - A088994 n

end

end A088335.P6457729319582690613

/-! ## A088335.P13534866772127573702

`∏[A008619(A004275(n))]-A088994(n)`
-/

namespace A088335.P13534866772127573702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A088994 n

end

end A088335.P13534866772127573702

/-!
# A088336: Number of permutations in the symmetric group S_n that have even number of transpositions in their cycle decomposition.

The programs for A088336, there is no canonical definition to state claims against.
-/

/-! ## A088336.P14007498509886042401

`A062282(n)+A063083(n)-A088506(n)`
-/

namespace A088336.P14007498509886042401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062282 n + (A063083 n - A088506 n)

end

end A088336.P14007498509886042401

/-! ## A088336.P17500095144993879326

`n!-A088506(n)`
-/

namespace A088336.P17500095144993879326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A088506 n

end

end A088336.P17500095144993879326

/-! ## A088336.P315228393722956620

`A000142(n)-A088506(n)`
-/

namespace A088336.P315228393722956620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A088506 n

end

end A088336.P315228393722956620

/-! ## A088336.P3200317083321729411

`Δ[A003422(n)]-A088506(n)`
-/

namespace A088336.P3200317083321729411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088506 n

end

end A088336.P3200317083321729411

/-! ## A088336.P9318163160930762348

`∏[A028310(n)]-A088506(n)`
-/

namespace A088336.P9318163160930762348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A088506 n

end

end A088336.P9318163160930762348

/-!
# A088338: Numbers n such that frac(x^n)=frac(x*frac(x^(n-1))) where x=3/2 and frac(x) denotes the fractional part of x.

The programs for A088338, there is no canonical definition to state claims against.
-/

/-! ## A088338.P9535362259512426668

`comp[A073632(n+1)+1]`
-/

namespace A088338.P9535362259512426668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073632 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088338.P9535362259512426668

/-! ## A088338.P10206755924900957183

`comp[(n+1)*A072418(n+1)+1]`
-/

namespace A088338.P10206755924900957183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072418 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088338.P10206755924900957183

/-! ## A088338.P8916283404170455882

`lt[and(A000079(n), A025192(n)), 2]`
-/

namespace A088338.P8916283404170455882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n) (A025192 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088338.P8916283404170455882

/-! ## A088338.P16985333215785247094

`lt[and(A025192(n), A171449(n)), 2]`
-/

namespace A088338.P16985333215785247094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025192 n) (A171449 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088338.P16985333215785247094

/-! ## A088338.P2998767524869562792

`eq[0, and(A000079(n+1), A003946(n))]`
-/

namespace A088338.P2998767524869562792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 (n + 1)) (A003946 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088338.P2998767524869562792

/-! ## A088338.P3066740634439260828

`comp[(n+2)*A072418(A028310(n))]-1`
-/

namespace A088338.P3066740634439260828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A072418 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A088338.P3066740634439260828

/-!
# A088339: Numbers n such that n multiplied by (the 9's complement of n) + 1 is a prime. If n has d digits then 9's complement of n is 10^d -(n+1).

The programs for A088339, there is no canonical definition to state claims against.
-/

/-! ## A088339.P4945875574816974296

`3*A088417(n+1)`
-/

namespace A088339.P4945875574816974296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088417 (n + 1)

end

end A088339.P4945875574816974296

/-! ## A088339.P13133546040142875285

`6*A088417(n-log2(1/2))/2`
-/

namespace A088339.P13133546040142875285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A088417 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2)

end

end A088339.P13133546040142875285

/-! ## A088339.P16675675866332198775

`A008486(A088417(n+1))`
-/

namespace A088339.P16675675866332198775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A088417 (n + 1)).toNat

end

end A088339.P16675675866332198775

/-! ## A088339.P10288988976107896473

`A008585(A088417(n-log2(1/2)))`
-/

namespace A088339.P10288988976107896473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A088417 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A088339.P10288988976107896473

/-! ## A088339.P17780346104655338110

`A008585(or(char[4], A088417(n+1)))`
-/

namespace A088339.P17780346104655338110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A088417 (n + 1))).toNat

end

end A088339.P17780346104655338110

/-! ## A088339.P2076380423652517989

`A008585(A088417(n+1)%(∑[n+1]+1))`
-/

namespace A088339.P2076380423652517989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A088417 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A088339.P2076380423652517989

/-! ## A088339.P14906736659640869878

`A008585(∑{d}[A088417(n+1), A000010(#)])`
-/

namespace A088339.P14906736659640869878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A088339.P14906736659640869878

/-! ## A088339.P1031345060502301254

`A008585(A088417(n+1)+A000007(n+1))`
-/

namespace A088339.P1031345060502301254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A088417 (n + 1) + A000007 (n + 1)).toNat

end

end A088339.P1031345060502301254

/-! ## A088339.P5353144141568639742

`A008585(A088417(n+1))/A007318(A000217(n))`
-/

namespace A088339.P5353144141568639742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A088417 (n + 1)).toNat : ℚ) / (A007318 (A000217 n).toNat : ℚ)

end

end A088339.P5353144141568639742

/-!
# A088340: Numbers k such that frac(x^k) = frac(x*frac(x^(k-1))) where x=5/2 and frac(x) denotes the fractional part of x.

The programs for A088340, there is no canonical definition to state claims against.
-/

/-! ## A088340.P12209421394147077566

`record[n+1-and(5^n, 2^n)]`
-/

namespace A088340.P12209421394147077566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land (5 ^ n) (2 ^ n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088340.P12209421394147077566

/-! ## A088340.P14705301407598801465

`eq[A003849(n), A144595(A007678(n+1))]`
-/

namespace A088340.P14705301407598801465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 (A007678 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088340.P14705301407598801465

/-! ## A088340.P4670785298148385780

`lt[A083254(A000070(n+4)), 4]`
-/

namespace A088340.P4670785298148385780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A000070 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088340.P4670785298148385780

/-! ## A088340.P7798056368379115641

`lt[A352513(3*n+4), A309207(n)]`
-/

namespace A088340.P7798056368379115641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309207 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088340.P7798056368379115641

/-! ## A088340.P16260040807279854657

`lt[A214665(A038222(n)), A055641(n)]`
-/

namespace A088340.P16260040807279854657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214665 (A038222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088340.P16260040807279854657

/-!
# A088342: Let T = Sum_{k >= 1} k^(k-1)*x^k be the g.f. for rooted labeled trees (A000169); sequence has g.f. T/(1-T).

The programs for A088342, there is no canonical definition to state claims against.
-/

/-! ## A088342.P9359451436616816110

`A007015(∏[Δ[n²]])+val(n+1, 3)`
-/

namespace A088342.P9359451436616816110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007015 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (SequenceMachineLib.valuation (n + 1) 3 : ℤ)

end

end A088342.P9359451436616816110

/-!
# A088343: Records in A069862.

The programs for A088343, there is no canonical definition to state claims against.
-/

/-! ## A088343.P12598872980680776487

`record[A069862(n+1)]`
-/

namespace A088343.P12598872980680776487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088343.P12598872980680776487

/-! ## A088343.P10344970034388140268

`A069862(A088947(n+1))`
-/

namespace A088343.P10344970034388140268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (A088947 (n + 1)).toNat

end

end A088343.P10344970034388140268

/-! ## A088343.P5598708672175764930

`record[A077312(n+1)-(n+1)]`
-/

namespace A088343.P5598708672175764930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077312 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088343.P5598708672175764930

/-! ## A088343.P2409759789082895314

`record[A077312(-xor(n, -1))-1-n]`
-/

namespace A088343.P2409759789082895314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077312 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088343.P2409759789082895314

/-! ## A088343.P5291866188400181272

`record[A077312(Δ[n²]-n)-1-n]`
-/

namespace A088343.P5291866188400181272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077312 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088343.P5291866188400181272

/-!
# A088345: n is divisible by the sum of all divisors of n which are less than the square root of n (values of n where 1 is the only divisor less than sqrt(n) are excluded as trivial cases.).

The programs for A088345, there is no canonical definition to state claims against.
-/

/-! ## A088345.P1581837524492209963

`∩[A102883(n+1), A145739(n+1)]`
-/

namespace A088345.P1581837524492209963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088345.P1581837524492209963

/-! ## A088345.P6440285981943501678

`∩[A119357(n+1), A145739(n+1)]`
-/

namespace A088345.P6440285981943501678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088345.P6440285981943501678

/-! ## A088345.P15456363828782426943

`∩[A005279(n+1), A145739(n+1)]`
-/

namespace A088345.P15456363828782426943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088345.P15456363828782426943

/-! ## A088345.P14511097245558012262

`∩[A051774(n+1), A145739(n+1)]`
-/

namespace A088345.P14511097245558012262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088345.P14511097245558012262

/-! ## A088345.P10855387267860557943

`∩[A145739(n+1), A389462(n+1)]`
-/

namespace A088345.P10855387267860557943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088345.P10855387267860557943

/-! ## A088345.P12701619729762028358

`∩[A145739(n+1), A379271(n+1)]`
-/

namespace A088345.P12701619729762028358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088345.P12701619729762028358

/-!
# A088346: Smallest integer k for which exp(x) > x^n, for all x>=k, n>=3.

The programs for A088346, there is no canonical definition to state claims against.
-/

/-! ## A088346.P15130903095411161979

`A190952(n+3)+1`
-/

namespace A088346.P15130903095411161979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190952 (n + 3) + 1

end

end A088346.P15130903095411161979

/-! ## A088346.P9042819493695995855

`eq[1, A291197(n+2)]+3`
-/

namespace A088346.P9042819493695995855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291197 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A088346.P9042819493695995855

/-! ## A088346.P4847490468177378162

`A020725(A190952(n+3))`
-/

namespace A088346.P4847490468177378162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A190952 (n + 3)).toNat

end

end A088346.P4847490468177378162

/-! ## A088346.P10427600044800460254

`A291197(A190951(n+3))+A190951(n+3)`
-/

namespace A088346.P10427600044800460254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291197 (A190951 (n + 3)).toNat + A190951 (n + 3)

end

end A088346.P10427600044800460254

/-!
# A088347: This sequence needs a definition.

The programs for A088347, there is no canonical definition to state claims against.
-/

/-! ## A088347.P3679809419612963904

`gcd(Δ[A061288(n+1)], n+2)`
-/

namespace A088347.P3679809419612963904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A088347.P3679809419612963904

/-! ## A088347.P11683055393011789703

`gcd(n+2, Δ[A028391(A253145(n))])`
-/

namespace A088347.P11683055393011789703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A253145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A088347.P11683055393011789703

/-! ## A088347.P13292695816892990059

`(n+2)^A002126(Δ[A061288(n+1)])`
-/

namespace A088347.P13292695816892990059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A002126 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A088347.P13292695816892990059

/-! ## A088347.P16507865108013126361

`(n+2)^A077957(Δ[A172474(2*n+3)])`
-/

namespace A088347.P16507865108013126361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (2 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A077957 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A088347.P16507865108013126361

/-! ## A088347.P14372135571272936010

`(n+2)^A106566(Δ[A172474(2*n+3)])`
-/

namespace A088347.P14372135571272936010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (2 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A106566 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A088347.P14372135571272936010

/-! ## A088347.P8525158113756512059

`(n+2)^A108362(Δ[A172474(2*n+3)])`
-/

namespace A088347.P8525158113756512059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (2 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A108362 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A088347.P8525158113756512059

/-! ## A088347.P17132933437369104745

`(n+2)^A151622(Δ[A172474(2*n+3)])`
-/

namespace A088347.P17132933437369104745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (2 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A151622 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A088347.P17132933437369104745

/-!
# A088348: Primes of the form prime(n) + 2pi(n), where pi is A000720.

The programs for A088348, the canonical program `A088348.P12772427099632848417` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088348 has offset 1).

The definition of A088348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088348.P8036516702129499239

`p?[A100486(n+1)+A000720(n+1)]`
-/

namespace A088348.P8036516702129499239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) + A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P8036516702129499239

namespace A088348

/-- `p?[A100486(n+1)+A000720(n+1)]` -/
def P8036516702129499239.Spec : Prop :=
  ∀ n, P8036516702129499239.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P17048095245667088570

`p?[A230980(n+1)+A100486(n+1)]`
-/

namespace A088348.P17048095245667088570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) + A100486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P17048095245667088570

namespace A088348

/-- `p?[A230980(n+1)+A100486(n+1)]` -/
def P17048095245667088570.Spec : Prop :=
  ∀ n, P17048095245667088570.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P12772427099632848417

`p?[A008578(n+1)+2*A230980(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088348

/-- `p?[A008578(n+1)+2*A230980(n)]` -/
def P12772427099632848417.Spec : Prop :=
  ∀ n, P12772427099632848417.a n = A088348 (n + 1)

theorem P12772427099632848417.correct : P12772427099632848417.Spec := by
  intro n
  simp only [A088348, Nat.add_sub_cancel]

end A088348

/-! ## A088348.P16063975797202823649

`p?[A100486(n+1)+∑[A010051(n+1)]]`
-/

namespace A088348.P16063975797202823649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P16063975797202823649

namespace A088348

/-- `p?[A100486(n+1)+∑[A010051(n+1)]]` -/
def P16063975797202823649.Spec : Prop :=
  ∀ n, P16063975797202823649.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P17647004494116332223

`p?[A000040(n+1)+2*A000720(n+1)]`
-/

namespace A088348.P17647004494116332223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P17647004494116332223

namespace A088348

/-- `p?[A000040(n+1)+2*A000720(n+1)]` -/
def P17647004494116332223.Spec : Prop :=
  ∀ n, P17647004494116332223.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P1862390811564815994

`p?[A000040(n+1)+2*A230980(n+1)]`
-/

namespace A088348.P1862390811564815994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A230980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P1862390811564815994

namespace A088348

/-- `p?[A000040(n+1)+2*A230980(n+1)]` -/
def P1862390811564815994.Spec : Prop :=
  ∀ n, P1862390811564815994.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P807756674296943485

`p?[2*A100486(n+1)-A000040(n+1)]`
-/

namespace A088348.P807756674296943485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100486 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P807756674296943485

namespace A088348

/-- `p?[2*A100486(n+1)-A000040(n+1)]` -/
def P807756674296943485.Spec : Prop :=
  ∀ n, P807756674296943485.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P14295677339201470743

`p?[A005843(A000720(n+1))+A000040(n+1)]`
-/

namespace A088348.P14295677339201470743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000720 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P14295677339201470743

namespace A088348

/-- `p?[A005843(A000720(n+1))+A000040(n+1)]` -/
def P14295677339201470743.Spec : Prop :=
  ∀ n, P14295677339201470743.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P17116071357968123309

`record[A006530(A100486(n+1)+A000720(n+1))]`
-/

namespace A088348.P17116071357968123309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100486 (n + 1) + A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088348.P17116071357968123309

namespace A088348

/-- `record[A006530(A100486(n+1)+A000720(n+1))]` -/
def P17116071357968123309.Spec : Prop :=
  ∀ n, P17116071357968123309.a n = A088348 (n + 1)

end A088348

/-! ## A088348.P12697869604652418697

`record[A020639(A100486(n+1)+A000720(n+1))]`
-/

namespace A088348.P12697869604652418697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100486 (n + 1) + A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088348.P12697869604652418697

namespace A088348

/-- `record[A020639(A100486(n+1)+A000720(n+1))]` -/
def P12697869604652418697.Spec : Prop :=
  ∀ n, P12697869604652418697.a n = A088348 (n + 1)

end A088348

/-!
# A088349: a(n) = (A085249(n) - 1)/6.

The programs for A088349, there is no canonical definition to state claims against.
-/

/-! ## A088349.P4161762269068521800

`(A085249(n+1)-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088349.P4161762269068521800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085249 (n + 1) - 1 : ℚ) / 6

end

end A088349.P4161762269068521800

/-! ## A088349.P11841754388516369847

`24*A088350(n+1)+5`
-/

namespace A088349.P11841754388516369847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A088350 (n + 1) + 5

end

end A088349.P11841754388516369847

/-! ## A088349.P17643628534387307016

`floor(A085249(n+1)/6)`
-/

namespace A088349.P17643628534387307016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085249 (n + 1) : ℚ) / 6⌋

end

end A088349.P17643628534387307016

/-! ## A088349.P15988179239532690456

`round(A085249(C(n+1, n))/6)`
-/

namespace A088349.P15988179239532690456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085249 (Nat.choose (n + 1) n) : ℚ) / 6)

end

end A088349.P15988179239532690456

/-! ## A088349.P9550673649805957102

`A007318(∑[n])*round(A085249(n+1)/6)`
-/

namespace A088349.P9550673649805957102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A085249 (n + 1) : ℚ) / 6)

end

end A088349.P9550673649805957102

/-! ## A088349.P15252547133840098511

`A103214(A088350(n+1))+4`
-/

namespace A088349.P15252547133840098511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A088350 (n + 1)).toNat + 4

end

end A088349.P15252547133840098511

/-! ## A088349.P14090524937919617882

`∑{d}[round(A085249(n+1)/6), A000010(#)]`
-/

namespace A088349.P14090524937919617882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085249 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088349.P14090524937919617882

/-!
# A088350: a(n) = (A088349(n)-5)/24.

The programs for A088350, there is no canonical definition to state claims against.
-/

/-! ## A088350.P16376311299930097861

`(A088349(n+1)-5)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088350.P16376311299930097861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088349 (n + 1) - 5 : ℚ) / 24

end

end A088350.P16376311299930097861

/-! ## A088350.P6881404254063041803

`floor(A088349(n+1)/24)`
-/

namespace A088350.P6881404254063041803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088349 (n + 1) : ℚ) / 24⌋

end

end A088350.P6881404254063041803

/-! ## A088350.P14181084997671030812

`A008683(4*(n+1))+round(A088349(n+1)/24)`
-/

namespace A088350.P14181084997671030812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A088349 (n + 1) : ℚ) / 24)

end

end A088350.P14181084997671030812

/-! ## A088350.P14726317083679682039

`round(A088349(n+1)/24)%A000041(3*n)`
-/

namespace A088350.P14726317083679682039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A088349 (n + 1) : ℚ) / 24)) (A000041 (3 * n))

end

end A088350.P14726317083679682039

/-! ## A088350.P12460189666454145921

`∑{d}[round(A088349(n+1)/24), A000010(#)]`
-/

namespace A088350.P12460189666454145921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088349 (n + 1) : ℚ) / 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088350.P12460189666454145921

/-! ## A088350.P11297594426830642217

`round(A088349(n+1)/24)/A007318(C(n, 2))`
-/

namespace A088350.P11297594426830642217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A088349 (n + 1) : ℚ) / 24) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A088350.P11297594426830642217

/-! ## A088350.P8883147243642066917

`A007318(∑[n])*round(A088349(n+1)/24)`
-/

namespace A088350.P8883147243642066917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A088349 (n + 1) : ℚ) / 24)

end

end A088350.P8883147243642066917

/-!
# A088351: G.f. A(x) satisfies: 1+x = A(xA(2xA(3xA(4xA(...(n*xA(...))))))).

The programs for A088351, there is no canonical definition to state claims against.
-/

/-! ## A088351.P14838287914219290505

`A008836(A063902(n))*A063902(n)`
-/

namespace A088351.P14838287914219290505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A063902 n).toNat * A063902 n

end

end A088351.P14838287914219290505

/-! ## A088351.P6878168171554705667

`A020985(A246731(n))*A063902(n)`
-/

namespace A088351.P6878168171554705667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A246731 n).toNat * A063902 n

end

end A088351.P6878168171554705667

/-!
# A088352: Expansion of continued fraction A(x) = 1/(1-x-x^2/(1-x^3-x^4/(1-x^5-x^6/(1-x^7-x^8/(1-...))))).

The programs for A088352, there is no canonical definition to state claims against.
-/

/-! ## A088352.P6280674236585931546

`A008618(Δ[Δ[A164403(n+4)]])`
-/

namespace A088352.P6280674236585931546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164403 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (f1 (n + 1) - f1 n).toNat

end

end A088352.P6280674236585931546

/-! ## A088352.P2718842403698068090

`A165111(A251072(n))+A157271(A018072(n))`
-/

namespace A088352.P2718842403698068090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 (A251072 n).toNat + A157271 (A018072 n).toNat

end

end A088352.P2718842403698068090

/-! ## A088352.P4985480479794568857

`ceil(sqrt(sqrt(A220535(n+2)))/6)`
-/

namespace A088352.P4985480479794568857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A220535 (n + 2) : ℝ)) / 6⌉

end

end A088352.P4985480479794568857

/-! ## A088352.P11207549996423758441

`A157271(A018072(n*A251072(n)))`
-/

namespace A088352.P11207549996423758441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A018072 ((n : ℤ) * A251072 n).toNat).toNat

end

end A088352.P11207549996423758441

/-! ## A088352.P10479753650664362987

`A157271(A018072(n)^A251072(n))`
-/

namespace A088352.P10479753650664362987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.roundAway ((A018072 n : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A088352.P10479753650664362987

/-!
# A088353: G.f. = continued fraction: A(x)=1/(1-x-x^2-x^3/(1-x^4-x^5-x^6/(1-x^7-x^8-x^9/(...)))).

The programs for A088353, there is no canonical definition to state claims against.
-/

/-! ## A088353.P5728263079662476837

`A265826(n)+A206499(A157726(n))`
-/

namespace A088353.P5728263079662476837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265826 n + A206499 (A157726 n).toNat

end

end A088353.P5728263079662476837

/-! ## A088353.P13520026284583835221

`A265826(A062399(n))`
-/

namespace A088353.P13520026284583835221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265826 (A062399 n).toNat

end

end A088353.P13520026284583835221

/-! ## A088353.P3698344805636357796

`A265826(A120126(n))`
-/

namespace A088353.P3698344805636357796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265826 (A120126 n).toNat

end

end A088353.P3698344805636357796

/-! ## A088353.P13039199175729106628

`A265826(A351870(n))`
-/

namespace A088353.P13039199175729106628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265826 (A351870 n).toNat

end

end A088353.P13039199175729106628

/-! ## A088353.P5959097371407315335

`A265826(A004894(n+1))`
-/

namespace A088353.P5959097371407315335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265826 (A004894 (n + 1)).toNat

end

end A088353.P5959097371407315335

/-!
# A088354: Expansion of continued fraction A(x) = 1/(1-x-x/(1-x^2-x^2/(1-x^3-x^3/(1-x^4-x^4/(1-...))))).

The programs for A088354, there is no canonical definition to state claims against.
-/

/-! ## A088354.P7009168040955066283

`∑[A240357(n)]*A326793(n)`
-/

namespace A088354.P7009168040955066283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A326793 n

end

end A088354.P7009168040955066283

/-! ## A088354.P10487493998285725592

`A036452(n+1)*A326793(n)`
-/

namespace A088354.P10487493998285725592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A326793 n

end

end A088354.P10487493998285725592

/-! ## A088354.P13058438414492985245

`A036453(n+1)*A326793(n)`
-/

namespace A088354.P13058438414492985245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A326793 n

end

end A088354.P13058438414492985245

/-!
# A088355: G.f.: A(x) = 1/(1-x - x/(1-x - x^2/(1-x - x^3/(1-x - x^4/(1-x - x^5/(...)))))), a continued fraction.

The programs for A088355, there is no canonical definition to state claims against.
-/

/-! ## A088355.P12039524336387400156

`∑[∑[A081134(A005169(2*n+1))]]+1`
-/

namespace A088355.P12039524336387400156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A005169 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088355.P12039524336387400156

/-! ## A088355.P1848566298033866120

`A195120(A061675(n))`
-/

namespace A088355.P1848566298033866120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A061675 n).toNat

end

end A088355.P1848566298033866120

/-! ## A088355.P3503189061618223556

`A387141(A279460(n+2))`
-/

namespace A088355.P3503189061618223556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A279460 (n + 2)).toNat

end

end A088355.P3503189061618223556

/-! ## A088355.P17129954810367487606

`A331180(A335643(n))+∑[floor(3^(n-1))]`
-/

namespace A088355.P17129954810367487606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331180 (A335643 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088355.P17129954810367487606

/-!
# A088356: G.f. = continued fraction: A(x)=1/(1-x^2-x/(1-x^2-x^2/(1-x^2-x^3/(1-x^2-x^4/(...))))).

The programs for A088356, there is no canonical definition to state claims against.
-/

/-! ## A088356.P10810544733258477402

`A383110(A285291(n))`
-/

namespace A088356.P10810544733258477402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (A285291 n).toNat

end

end A088356.P10810544733258477402

/-! ## A088356.P6090293515244965687

`A140140(A360055(n+1))`
-/

namespace A088356.P6090293515244965687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140140 (A360055 (n + 1)).toNat

end

end A088356.P6090293515244965687

/-! ## A088356.P10881105342195022064

`A347454(A011782(n)+n%floor(sqrt(n+1)))`
-/

namespace A088356.P10881105342195022064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (A011782 n + ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)).toNat

end

end A088356.P10881105342195022064

/-! ## A088356.P4608415350252408148

`A052962(n)+A003141(A000048(n))`
-/

namespace A088356.P4608415350252408148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052962 n + A003141 (A000048 n).toNat

end

end A088356.P4608415350252408148

/-!
# A088357: G.f. = continued fraction: A(x)=1/(1-x/(1-2*x^2/(1-3*x^3/(1-4*x^4/(...))))).

The programs for A088357, there is no canonical definition to state claims against.
-/

/-! ## A088357.P15060964123139777700

`A263658(n+2)-A281116(A220336(n+1))`
-/

namespace A088357.P15060964123139777700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263658 (n + 2) - A281116 (A220336 (n + 1)).toNat

end

end A088357.P15060964123139777700

/-! ## A088357.P18361012085176047332

`A055086(A000110(n))-A213177(n)`
-/

namespace A088357.P18361012085176047332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A000110 n).toNat - A213177 n

end

end A088357.P18361012085176047332

/-! ## A088357.P898842274664340474

`A003986(or(A034893(n), A053617(n)))`
-/

namespace A088357.P898842274664340474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Int.lor (A034893 n) (A053617 n)).toNat

end

end A088357.P898842274664340474

/-! ## A088357.P14471591393145194877

`or(A002024(A213093(n)), A234503(3*n+2))`
-/

namespace A088357.P14471591393145194877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A213093 n).toNat) (A234503 (3 * n + 2))

end

end A088357.P14471591393145194877

/-!
# A088358: a(n) equals sum of first n terms of A(x)^n for n>=1, with a(0)=1.

The programs for A088358, there is no canonical definition to state claims against.
-/

/-! ## A088358.P11856723141359458154

`A386807((n+1)^(n-1))`
-/

namespace A088358.P11856723141359458154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A088358.P11856723141359458154

/-! ## A088358.P1106558860736904458

`A254531(floor(n^n/2))+n^abs(2-n)*C(n, 2)`
-/

namespace A088358.P1106558860736904458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254531 (⌊(n ^ n : ℚ) / 2⌋.toNat + 27) : ℚ) + (n : ℚ) ^ (|2 - (n : ℤ)| : ℤ) * (Nat.choose n 2 : ℚ)

end

end A088358.P1106558860736904458

/-!
# A088359: Numbers which occur only once in A004001.

The programs for A088359, the canonical program `A088359.P524068171485654818` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088359 has offset 1).

The definition of A088359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088359.P9896435064801999499

`∑[A051135(n+1)]+1`
-/

namespace A088359.P9896435064801999499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088359.P9896435064801999499

namespace A088359

/-- `∑[A051135(n+1)]+1` -/
def P9896435064801999499.Spec : Prop :=
  ∀ n, P9896435064801999499.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P12739930949610735642

`∑[A265332(n+1)]+2`
-/

namespace A088359.P12739930949610735642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A088359.P12739930949610735642

namespace A088359

/-- `∑[A265332(n+1)]+2` -/
def P12739930949610735642.Spec : Prop :=
  ∀ n, P12739930949610735642.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P13627861503081187558

`comp[A087686(n+1)-1]+1`
-/

namespace A088359.P13627861503081187558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A088359.P13627861503081187558

namespace A088359

/-- `comp[A087686(n+1)-1]+1` -/
def P13627861503081187558.Spec : Prop :=
  ∀ n, (P13627861503081187558.a n : ℤ) = A088359 (n + 1)

end A088359

/-! ## A088359.P524068171485654818

`a(n-A004001(n+1))+n+1` with `a(0)=3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088359

/-- `a(n-A004001(n+1))+n+1` -/
def P524068171485654818.Spec : Prop :=
  ∀ n, (P524068171485654818.a n : ℤ) = A088359 (n + 1)

theorem P524068171485654818.correct : P524068171485654818.Spec := by
  intro n
  simp only [A088359, Nat.add_sub_cancel]

end A088359

/-! ## A088359.P3740055212224761025

`A188163(n+1)+A051135(n+1)`
-/

namespace A088359.P3740055212224761025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) + A051135 (n + 1)

end

end A088359.P3740055212224761025

namespace A088359

/-- `A188163(n+1)+A051135(n+1)` -/
def P3740055212224761025.Spec : Prop :=
  ∀ n, P3740055212224761025.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P4166480168022213821

`A188163(n+2)`
-/

namespace A088359.P4166480168022213821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 2)

end

end A088359.P4166480168022213821

namespace A088359

/-- `A188163(n+2)` -/
def P4166480168022213821.Spec : Prop :=
  ∀ n, P4166480168022213821.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P12170246275532222105

`A266412(2*(n+2))`
-/

namespace A088359.P12170246275532222105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (2 * (n + 2))

end

end A088359.P12170246275532222105

namespace A088359

/-- `A266412(2*(n+2))` -/
def P12170246275532222105.Spec : Prop :=
  ∀ n, P12170246275532222105.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P12104352644027244939

`A266109(n+2)-A087686(n+3)`
-/

namespace A088359.P12104352644027244939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266109 (n + 2) - A087686 (n + 3)

end

end A088359.P12104352644027244939

namespace A088359

/-- `A266109(n+2)-A087686(n+3)` -/
def P12104352644027244939.Spec : Prop :=
  ∀ n, P12104352644027244939.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P17160360263732565065

`eq[1, A093879(n+1)]+2`
-/

namespace A088359.P17160360263732565065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088359.P17160360263732565065

namespace A088359

/-- `eq[1, A093879(n+1)]+2` -/
def P17160360263732565065.Spec : Prop :=
  ∀ n, (P17160360263732565065.a n : ℤ) = A088359 (n + 1)

end A088359

/-! ## A088359.P6932884067172470552

`eq[1, A051135(n+2)]+2`
-/

namespace A088359.P6932884067172470552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088359.P6932884067172470552

namespace A088359

/-- `eq[1, A051135(n+2)]+2` -/
def P6932884067172470552.Spec : Prop :=
  ∀ n, (P6932884067172470552.a n : ℤ) = A088359 (n + 1)

end A088359

/-! ## A088359.P7307285030181583501

`eq[1, A265332(n+2)]+2`
-/

namespace A088359.P7307285030181583501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088359.P7307285030181583501

namespace A088359

/-- `eq[1, A265332(n+2)]+2` -/
def P7307285030181583501.Spec : Prop :=
  ∀ n, (P7307285030181583501.a n : ℤ) = A088359 (n + 1)

end A088359

/-! ## A088359.P5408269425844784052

`lt[1, A266640(n+1)]+2`
-/

namespace A088359.P5408269425844784052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A088359.P5408269425844784052

namespace A088359

/-- `lt[1, A266640(n+1)]+2` -/
def P5408269425844784052.Spec : Prop :=
  ∀ n, (P5408269425844784052.a n : ℤ) = A088359 (n + 1)

end A088359

/-! ## A088359.P11431784817625977010

`A276442(2*A276441(n+1))`
-/

namespace A088359.P11431784817625977010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (2 * A276441 (n + 1)).toNat

end

end A088359.P11431784817625977010

namespace A088359

/-- `A276442(2*A276441(n+1))` -/
def P11431784817625977010.Spec : Prop :=
  ∀ n, P11431784817625977010.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P16259177979046734344

`A276344(A055938(A276343(n+1)))`
-/

namespace A088359.P16259177979046734344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276344 (A055938 (A276343 (n + 1)).toNat).toNat

end

end A088359.P16259177979046734344

namespace A088359

/-- `A276344(A055938(A276343(n+1)))` -/
def P16259177979046734344.Spec : Prop :=
  ∀ n, P16259177979046734344.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P1038207920342047203

`A276442(A276441(n+1)+A276441(n+1))`
-/

namespace A088359.P1038207920342047203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A276441 (n + 1) + A276441 (n + 1)).toNat

end

end A088359.P1038207920342047203

namespace A088359

/-- `A276442(A276441(n+1)+A276441(n+1))` -/
def P1038207920342047203.Spec : Prop :=
  ∀ n, P1038207920342047203.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P4583638378477342609

`A004001(A266399(n+1))`
-/

namespace A088359.P4583638378477342609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A266399 (n + 1)).toNat

end

end A088359.P4583638378477342609

namespace A088359

/-- `A004001(A266399(n+1))` -/
def P4583638378477342609.Spec : Prop :=
  ∀ n, P4583638378477342609.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P6312860747763364375

`A162598(A266399(2*n+1-n))`
-/

namespace A088359.P6312860747763364375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162598 (A266399 (2 * n + 1 - n)).toNat

end

end A088359.P6312860747763364375

namespace A088359

/-- `A162598(A266399(2*n+1-n))` -/
def P6312860747763364375.Spec : Prop :=
  ∀ n, P6312860747763364375.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P9114628439356619137

`A080677(A266109(n+2)-1)`
-/

namespace A088359.P9114628439356619137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (A266109 (n + 2) - 1).toNat

end

end A088359.P9114628439356619137

namespace A088359

/-- `A080677(A266109(n+2)-1)` -/
def P9114628439356619137.Spec : Prop :=
  ∀ n, P9114628439356619137.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P17844319636419602591

`A267110(A266109(n+2))`
-/

namespace A088359.P17844319636419602591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267110 (A266109 (n + 2)).toNat

end

end A088359.P17844319636419602591

namespace A088359

/-- `A267110(A266109(n+2))` -/
def P17844319636419602591.Spec : Prop :=
  ∀ n, P17844319636419602591.a n = A088359 (n + 1)

end A088359

/-! ## A088359.P14959860144435258729

`A267110(A267110(A267103(n+2)))`
-/

namespace A088359.P14959860144435258729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267110 (A267110 (A267103 (n + 2)).toNat).toNat

end

end A088359.P14959860144435258729

namespace A088359

/-- `A267110(A267110(A267103(n+2)))` -/
def P14959860144435258729.Spec : Prop :=
  ∀ n, P14959860144435258729.a n = A088359 (n + 1)

end A088359

/-!
# A088363: Local minima of A053707 (first differences of A025475, powers of a prime but not prime).

The programs for A088363, there is no canonical definition to state claims against.
-/

/-! ## A088363.P918705503004246902

`A053707(A088364(n+1))`
-/

namespace A088363.P918705503004246902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (A088364 (n + 1)).toNat

end

end A088363.P918705503004246902

/-!
# A088364: a(n) = index of the n-th local minimum of A053707.

The programs for A088364, there is no canonical definition to state claims against.
-/

/-! ## A088364.P4495672216597239168

`A025466(A238331(n+1))+A008486(n)`
-/

namespace A088364.P4495672216597239168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A238331 (n + 1)).toNat + A008486 n

end

end A088364.P4495672216597239168

/-!
# A088365: Local maxima of A053707 (first differences of A025475, powers of a prime but not prime).

The programs for A088365, there is no canonical definition to state claims against.
-/

/-! ## A088365.P6636931909530092196

`A053707(A088366(n+1))`
-/

namespace A088365.P6636931909530092196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (A088366 (n + 1)).toNat

end

end A088365.P6636931909530092196

/-!
# A088366: a(n) = index of the n-th local maximum of A053707.

The programs for A088366, there is no canonical definition to state claims against.
-/

/-! ## A088366.P5438035948179290630

`A367905(A095347(n+1))+A016777(n)`
-/

namespace A088366.P5438035948179290630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (A095347 (n + 1)).toNat + A016777 n

end

end A088366.P5438035948179290630

/-!
# A088368: G.f. satisfies: A(x) = Sum_{n>=0} n!*x^n*A(x)^n.

The programs for A088368, there is no canonical definition to state claims against.
-/

/-! ## A088368.P14755263256666024935

`A301833(n)/2^n`
-/

namespace A088368.P14755263256666024935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301833 n : ℚ) / (2 ^ n : ℚ)

end

end A088368.P14755263256666024935

/-! ## A088368.P2646258545686615840

`ceil(A301833(n)/A000079(n))`
-/

namespace A088368.P2646258545686615840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301833 n : ℚ) / (A000079 n : ℚ)⌉

end

end A088368.P2646258545686615840

/-! ## A088368.P11441509041181574749

`A084938(A001105(n+1))/(n+1)`
-/

namespace A088368.P11441509041181574749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A001105 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A088368.P11441509041181574749

/-! ## A088368.P13975907929999906273

`A084938(A005843((n+1)²))/(n+1)`
-/

namespace A088368.P13975907929999906273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A005843 ((n + 1) ^ 2)).toNat : ℚ) / (n + 1 : ℚ)

end

end A088368.P13975907929999906273

/-! ## A088368.P15014362932037799894

`A287899(n)/A293471(n)*A301833(n)`
-/

namespace A088368.P15014362932037799894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287899 n : ℚ) / (A293471 n : ℚ) * (A301833 n : ℚ)

end

end A088368.P15014362932037799894

/-!
# A088369: Expansion of e.g.f. 1/(1 - x - x^2)^x.

The programs for A088369, there is no canonical definition to state claims against.
-/

/-! ## A088369.P16353807331927910643

`A354623(A228909(n)+n)`
-/

namespace A088369.P16353807331927910643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354623 (A228909 n + (n : ℤ)).toNat

end

end A088369.P16353807331927910643

/-! ## A088369.P11216690323045783508

`A354623(n*A046988(n))`
-/

namespace A088369.P11216690323045783508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354623 ((n : ℤ) * A046988 n).toNat

end

end A088369.P11216690323045783508

/-!
# A088370: Triangle T(n,k), read by rows, where the n-th row is a binary arrangement of the numbers 1 through n.

The programs for A088370, there is no canonical definition to state claims against.
-/

/-! ## A088370.P11644892170081696487

`log2(∏{p}[A003401(n+1), A000010(#)])+1`
-/

namespace A088370.P11644892170081696487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p : ℤ) : ℝ) + 1

end

end A088370.P11644892170081696487

/-! ## A088370.P1163097752371848005

`log2(∏{p}[A003401(n+1), A003958(#)])+1`
-/

namespace A088370.P1163097752371848005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003958 p : ℤ) : ℝ) + 1

end

end A088370.P1163097752371848005

/-! ## A088370.P13992800909731756198

`A000005(∏{p}[A003401(n+1), #-1])`
-/

namespace A088370.P13992800909731756198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)).toNat

end

end A088370.P13992800909731756198

/-! ## A088370.P3323746431189274941

`A133700(∏{p}[A003401(n+1), A000010(#)])`
-/

namespace A088370.P3323746431189274941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p).toNat

end

end A088370.P3323746431189274941

/-! ## A088370.P11958136573657565457

`A001222(∏{p}[A003401(n+1), A000010(#)])+1`
-/

namespace A088370.P11958136573657565457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p).toNat + 1

end

end A088370.P11958136573657565457

/-! ## A088370.P8075744684090687432

`A001222(∏{p}[A003401(n+1), A003958(#)])+1`
-/

namespace A088370.P8075744684090687432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003958 p).toNat + 1

end

end A088370.P8075744684090687432

/-! ## A088370.P4605568526233967182

`A000005(A003958(A003401(n+1)))`
-/

namespace A088370.P4605568526233967182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003958 (A003401 (n + 1)).toNat).toNat

end

end A088370.P4605568526233967182

/-! ## A088370.P16969328809525592004

`∑{d}[A003958(A003401(n+1)), A000265(#)]`
-/

namespace A088370.P16969328809525592004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d

end

end A088370.P16969328809525592004

/-! ## A088370.P16362566744157003562

`∑{d}[A003958(A003401(n+1)), A003958(#)]`
-/

namespace A088370.P16362566744157003562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003958 d

end

end A088370.P16362566744157003562

/-! ## A088370.P11978221117123694570

`∑{d}[A305422(A003401(n+1)), A006257(#)]`
-/

namespace A088370.P11978221117123694570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A003401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006257 d

end

end A088370.P11978221117123694570

/-! ## A088370.P17879631295721243673

`∑{d}[A305422(A003401(n+1)), A295660(#)]`
-/

namespace A088370.P17879631295721243673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A003401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A295660 d

end

end A088370.P17879631295721243673

/-! ## A088370.P9874693043719233334

`∑{d}[A305422(A003401(n+1)), A305422(#)]`
-/

namespace A088370.P9874693043719233334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A003401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305422 d

end

end A088370.P9874693043719233334

/-! ## A088370.P13876911465821190178

`A175548(∏{p}[A003401(n+1), #-1])`
-/

namespace A088370.P13876911465821190178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175548 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)).toNat

end

end A088370.P13876911465821190178

/-! ## A088370.P13397250019137544795

`A000523(2*A000265(A003401(n+1)))`
-/

namespace A088370.P13397250019137544795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A000265 (A003401 (n + 1)).toNat).toNat

end

end A088370.P13397250019137544795

/-!
# A088371: Position where n is inserted into the n-th row of triangle A088370, where the n-th row differs from the prior row only by the presence of n.

The programs for A088371, the canonical program `A088371.P12131248355167568380` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088371 has offset 1).

The definition of A088371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088371.P12131248355167568380

`∑[a(floor(n/2))+n%2-a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088371

/-- `∑[a(floor(n/2))+n%2-a(n-1)]` -/
def P12131248355167568380.Spec : Prop :=
  ∀ n, P12131248355167568380.a n = A088371 (n + 1)

theorem P12131248355167568380.correct : P12131248355167568380.Spec := by
  intro n
  simp only [A088371, Nat.add_sub_cancel]

end A088371

/-! ## A088371.P13802832838511741553

`A264596(n)+1`
-/

namespace A088371.P13802832838511741553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 n + 1

end

end A088371.P13802832838511741553

namespace A088371

/-- `A264596(n)+1` -/
def P13802832838511741553.Spec : Prop :=
  ∀ n, P13802832838511741553.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P1455743921053879511

`1-A233931(n)+n`
-/

namespace A088371.P1455743921053879511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A233931 n + (n : ℤ)

end

end A088371.P1455743921053879511

namespace A088371

/-- `1-A233931(n)+n` -/
def P1455743921053879511.Spec : Prop :=
  ∀ n, P1455743921053879511.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P4473024080312818420

`n-A354158(n+1)`
-/

namespace A088371.P4473024080312818420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A354158 (n + 1)

end

end A088371.P4473024080312818420

namespace A088371

/-- `n-A354158(n+1)` -/
def P4473024080312818420.Spec : Prop :=
  ∀ n, P4473024080312818420.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P12663956912864449217

`A004482(A264596(n))`
-/

namespace A088371.P12663956912864449217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A264596 n).toNat

end

end A088371.P12663956912864449217

namespace A088371

/-- `A004482(A264596(n))` -/
def P12663956912864449217.Spec : Prop :=
  ∀ n, P12663956912864449217.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P17732660128874611003

`n-A023443(A233931(n))`
-/

namespace A088371.P17732660128874611003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A233931 n).toNat

end

end A088371.P17732660128874611003

namespace A088371

/-- `n-A023443(A233931(n))` -/
def P17732660128874611003.Spec : Prop :=
  ∀ n, P17732660128874611003.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P17935026074373541743

`A000120(n)+A233905(n)+1`
-/

namespace A088371.P17935026074373541743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A233905 n + 1)

end

end A088371.P17935026074373541743

namespace A088371

/-- `A000120(n)+A233905(n)+1` -/
def P17935026074373541743.Spec : Prop :=
  ∀ n, P17935026074373541743.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P14076819124293901678

`A233905(n)+A063787(n+1)`
-/

namespace A088371.P14076819124293901678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + A063787 (n + 1)

end

end A088371.P14076819124293901678

namespace A088371

/-- `A233905(n)+A063787(n+1)` -/
def P14076819124293901678.Spec : Prop :=
  ∀ n, P14076819124293901678.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P6464485097173041789

`A228451(n)+1-A233905(n)`
-/

namespace A088371.P6464485097173041789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 n + (1 - A233905 n)

end

end A088371.P6464485097173041789

namespace A088371

/-- `A228451(n)+1-A233905(n)` -/
def P6464485097173041789.Spec : Prop :=
  ∀ n, P6464485097173041789.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P9049077385482629145

`n-A023443(n-A264596(n))`
-/

namespace A088371.P9049077385482629145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A264596 n).toNat

end

end A088371.P9049077385482629145

namespace A088371

/-- `n-A023443(n-A264596(n))` -/
def P9049077385482629145.Spec : Prop :=
  ∀ n, P9049077385482629145.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P8047317116197590553

`log2(A001316(n))+A233905(n)+1`
-/

namespace A088371.P8047317116197590553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) + (A233905 n + 1 : ℝ)

end

end A088371.P8047317116197590553

namespace A088371

/-- `log2(A001316(n))+A233905(n)+1` -/
def P8047317116197590553.Spec : Prop :=
  ∀ n, P8047317116197590553.a n = (A088371 (n + 1) : ℝ)

end A088371

/-! ## A088371.P1670733170286132069

`A233905(n)+n-A011371(n)+1`
-/

namespace A088371.P1670733170286132069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((n : ℤ) - A011371 n) + 1

end

end A088371.P1670733170286132069

namespace A088371

/-- `A233905(n)+n-A011371(n)+1` -/
def P1670733170286132069.Spec : Prop :=
  ∀ n, P1670733170286132069.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P1207372506080749301

`A233904(n)+n+1-A233905(n)`
-/

namespace A088371.P1207372506080749301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233904 n + (n : ℤ) + (1 - A233905 n)

end

end A088371.P1207372506080749301

namespace A088371

/-- `A233904(n)+n+1-A233905(n)` -/
def P1207372506080749301.Spec : Prop :=
  ∀ n, P1207372506080749301.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P760580177689635977

`A233905(n)+A070939(A001316(n))`
-/

namespace A088371.P760580177689635977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + A070939 (A001316 n).toNat

end

end A088371.P760580177689635977

namespace A088371

/-- `A233905(n)+A070939(A001316(n))` -/
def P760580177689635977.Spec : Prop :=
  ∀ n, P760580177689635977.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P14426684953907378886

`A001222(A071044(n))+A233905(n)+1`
-/

namespace A088371.P14426684953907378886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat + (A233905 n + 1)

end

end A088371.P14426684953907378886

namespace A088371

/-- `A001222(A071044(n))+A233905(n)+1` -/
def P14426684953907378886.Spec : Prop :=
  ∀ n, P14426684953907378886.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P2659570669049798271

`A233905(n)+A070939(A071044(n))`
-/

namespace A088371.P2659570669049798271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + A070939 (A071044 n).toNat

end

end A088371.P2659570669049798271

namespace A088371

/-- `A233905(n)+A070939(A071044(n))` -/
def P2659570669049798271.Spec : Prop :=
  ∀ n, P2659570669049798271.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P12364621490361963124

`A233905(n)+A001222(A278222(n))+1`
-/

namespace A088371.P12364621490361963124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + (A001222 (A278222 n).toNat + 1)

end

end A088371.P12364621490361963124

namespace A088371

/-- `A233905(n)+A001222(A278222(n))+1` -/
def P12364621490361963124.Spec : Prop :=
  ∀ n, P12364621490361963124.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P10895241208276727693

`A008619(2*A264596(n))`
-/

namespace A088371.P10895241208276727693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A264596 n).toNat

end

end A088371.P10895241208276727693

namespace A088371

/-- `A008619(2*A264596(n))` -/
def P10895241208276727693.Spec : Prop :=
  ∀ n, P10895241208276727693.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P7452970130480367225

`Δ[n²]-A233931(2*n)`
-/

namespace A088371.P7452970130480367225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A233931 (2 * n)

end

end A088371.P7452970130480367225

namespace A088371

/-- `Δ[n²]-A233931(2*n)` -/
def P7452970130480367225.Spec : Prop :=
  ∀ n, P7452970130480367225.a n = A088371 (n + 1)

end A088371

/-! ## A088371.P1768227621228282747

`1-(A000035(2*n)-A264596(n))`
-/

namespace A088371.P1768227621228282747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - A264596 n)

end

end A088371.P1768227621228282747

namespace A088371

/-- `1-(A000035(2*n)-A264596(n))` -/
def P1768227621228282747.Spec : Prop :=
  ∀ n, P1768227621228282747.a n = A088371 (n + 1)

end A088371

/-!
# A088372: Table read by rows where T(0,0)=0; n-th row has 2^n terms T(n,j),j=0 to 2^n-1. T(n,T088208(n,j))=2^n-j, where T088208 is the table described in A088208.

The programs for A088372, there is no canonical definition to state claims against.
-/

/-! ## A088372.P17629610389004619260

`A062050(A341916(n+1))%Δ[n²]`
-/

namespace A088372.P17629610389004619260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062050 (A341916 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A088372.P17629610389004619260

/-! ## A088372.P13746231515175961963

`A062050(A341916(n+1))-A000007(n)`
-/

namespace A088372.P13746231515175961963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A341916 (n + 1)).toNat - A000007 n

end

end A088372.P13746231515175961963

/-! ## A088372.P17720809016516744203

`A057427(n)*A062050(A341916(n+1))`
-/

namespace A088372.P17720809016516744203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A062050 (A341916 (n + 1)).toNat

end

end A088372.P17720809016516744203

/-! ## A088372.P12515517548380108982

`A062050(A341916(n+1))-∏{d}[n, A001221(#)]`
-/

namespace A088372.P12515517548380108982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A341916 (n + 1)).toNat - ∏ d ∈ Nat.divisors (f1 n), A001221 d

end

end A088372.P12515517548380108982

/-! ## A088372.P7584549404431018598

`A062050(A341916(n+1))-∏{d}[n, A001222(#)]`
-/

namespace A088372.P7584549404431018598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A341916 (n + 1)).toNat - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A088372.P7584549404431018598

/-!
# A088377: a(n) = (smallest prime factor of n)^2; a(1) = 1.

The programs for A088377, there is no canonical definition to state claims against.
-/

/-! ## A088377.P4166361083231031224

`sqrt(A088379(n+1))`
-/

namespace A088377.P4166361083231031224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088379 (n + 1) : ℝ)

end

end A088377.P4166361083231031224

/-! ## A088377.P2137649005767409215

`A000290(A020639(n+1))`
-/

namespace A088377.P2137649005767409215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A020639 (n + 1)).toNat

end

end A088377.P2137649005767409215

/-! ## A088377.P11642279417714739661

`A028233(∏{p}[n+1, #])²`
-/

namespace A088377.P11642279417714739661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A088377.P11642279417714739661

/-! ## A088377.P13061800551972960752

`∏{p}[A068794(n+1), #²]`
-/

namespace A088377.P13061800551972960752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A088377.P13061800551972960752

/-! ## A088377.P10883618484906184533

`∏{p}[A304181(n+1), #²]`
-/

namespace A088377.P10883618484906184533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A088377.P10883618484906184533

/-! ## A088377.P3579809112230630120

`∏{p}[A323130(n+1), #²]`
-/

namespace A088377.P3579809112230630120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A088377.P3579809112230630120

/-! ## A088377.P6757451924256144506

`A088378(n+1)^(2/3)`
-/

namespace A088377.P6757451924256144506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088378 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A088377.P6757451924256144506

/-! ## A088377.P9200246347864685543

`A020639(C(n+1, n))^2`
-/

namespace A088377.P9200246347864685543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (n + 1) n) ^ 2

end

end A088377.P9200246347864685543

/-! ## A088377.P15028264079367712432

`A020639(∏{p}[n+1, #])^2`
-/

namespace A088377.P15028264079367712432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A088377.P15028264079367712432

/-! ## A088377.P9710962506712952147

`(n+1-A061228(n+1))²`
-/

namespace A088377.P9710962506712952147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A061228 (n + 1)) ^ 2

end

end A088377.P9710962506712952147

/-! ## A088377.P6004919426563053996

`((n+1)/A032742(n+1))²`
-/

namespace A088377.P6004919426563053996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ)) ^ 2

end

end A088377.P6004919426563053996

/-! ## A088377.P2954314435687603595

`(A285109(n+1)/(n+1))²`
-/

namespace A088377.P2954314435687603595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A285109 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A088377.P2954314435687603595

/-! ## A088377.P4695377550072502758

`gcd(n+1, A096014(n+1))²`
-/

namespace A088377.P4695377550072502758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A096014 (n + 1)) ^ 2

end

end A088377.P4695377550072502758

/-! ## A088377.P7734498027634583975

`∏{d}[A020639(2*n-(n-1)), #²]`
-/

namespace A088377.P7734498027634583975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A088377.P7734498027634583975

/-! ## A088377.P17138099137310423285

`A066048(A028233(n+1))`
-/

namespace A088377.P17138099137310423285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A028233 (n + 1)).toNat

end

end A088377.P17138099137310423285

/-! ## A088377.P3999813278045806067

`A078615(A068794(n+1))`
-/

namespace A088377.P3999813278045806067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A068794 (n + 1)).toNat

end

end A088377.P3999813278045806067

/-! ## A088377.P3591968667645288051

`A066048(A304181(n+1))`
-/

namespace A088377.P3591968667645288051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A304181 (n + 1)).toNat

end

end A088377.P3591968667645288051

/-! ## A088377.P2256445530098885678

`A066048(A323130(n+1))`
-/

namespace A088377.P2256445530098885678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A323130 (n + 1)).toNat

end

end A088377.P2256445530098885678

/-!
# A088378: a(n) = (smallest prime factor of n)^3; a(1) = 1.

The programs for A088378, there is no canonical definition to state claims against.
-/

/-! ## A088378.P4288161022048637903

`A000578(A020639(n+1))`
-/

namespace A088378.P4288161022048637903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A020639 (n + 1)).toNat

end

end A088378.P4288161022048637903

/-! ## A088378.P12878352292907933925

`sqrt(A088377(n+1)^3)`
-/

namespace A088378.P12878352292907933925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) ^ 3 : ℝ)

end

end A088378.P12878352292907933925

/-! ## A088378.P12393293639102670252

`∏{p}[A028233(n+1), #*#²]`
-/

namespace A088378.P12393293639102670252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A088378.P12393293639102670252

/-! ## A088378.P14122798068404541246

`∏{p}[A304181(n+1), #*#²]`
-/

namespace A088378.P14122798068404541246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A088378.P14122798068404541246

/-! ## A088378.P13762251554899094100

`(A061228(n+1)-(n+1))^3`
-/

namespace A088378.P13762251554899094100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061228 (n + 1) - (n + 1 : ℤ)) ^ 3

end

end A088378.P13762251554899094100

/-! ## A088378.P7444920205738223005

`((n+1)/A032742(n+1))^3`
-/

namespace A088378.P7444920205738223005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ)) ^ 3

end

end A088378.P7444920205738223005

/-! ## A088378.P3154628690642621558

`(A285109(n+1)/(n+1))^3`
-/

namespace A088378.P3154628690642621558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A285109 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A088378.P3154628690642621558

/-! ## A088378.P1247954278917454512

`abs((-A020639(2*n-(n-1)))^3)`
-/

namespace A088378.P1247954278917454512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A020639 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) ^ 3|

end

end A088378.P1247954278917454512

/-! ## A088378.P16461531060833915573

`A386704(A028233(n+1))`
-/

namespace A088378.P16461531060833915573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386704 (A028233 (n + 1)).toNat

end

end A088378.P16461531060833915573

/-! ## A088378.P12020613957485049923

`A386704(A068794(n+1))`
-/

namespace A088378.P12020613957485049923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386704 (A068794 (n + 1)).toNat

end

end A088378.P12020613957485049923

/-! ## A088378.P17098554006027103180

`A386704(A304181(n+1))`
-/

namespace A088378.P17098554006027103180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386704 (A304181 (n + 1)).toNat

end

end A088378.P17098554006027103180

/-! ## A088378.P2391272420492024656

`A386704(A323130(n+1))`
-/

namespace A088378.P2391272420492024656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386704 (A323130 (n + 1)).toNat

end

end A088378.P2391272420492024656

/-! ## A088378.P15425411423397955897

`A020639(n+1)*A088377(n+1)`
-/

namespace A088378.P15425411423397955897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A088377 (n + 1)

end

end A088378.P15425411423397955897

/-! ## A088378.P14635264123172979312

`A088379(n+1)/A020639(n+1)`
-/

namespace A088378.P14635264123172979312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088379 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A088378.P14635264123172979312

/-! ## A088378.P7338570076749005592

`A056555(A020639(2*n+1-n))`
-/

namespace A088378.P7338570076749005592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A020639 (2 * n + 1 - n)).toNat

end

end A088378.P7338570076749005592

/-! ## A088378.P12032754632597386581

`∑{d}[A020639(n+1), A068601(#)]+1`
-/

namespace A088378.P12032754632597386581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A068601 d + 1

end

end A088378.P12032754632597386581

/-! ## A088378.P8504434969481988145

`∏{p}[A020639(n+1), A000583(#)/#]`
-/

namespace A088378.P8504434969481988145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000583 p : ℚ) / (p : ℚ)

end

end A088378.P8504434969481988145

/-! ## A088378.P15702540891429465369

`∏{d}[A020639(n+1), #*A020639(#)²]`
-/

namespace A088378.P15702540891429465369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A020639 d ^ 2

end

end A088378.P15702540891429465369

/-!
# A088379: a(n) = (smallest prime factor of n)^4; a(1) = 1.

The programs for A088379, there is no canonical definition to state claims against.
-/

/-! ## A088379.P3381790134298471644

`A088377(n+1)²`
-/

namespace A088379.P3381790134298471644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1) ^ 2

end

end A088379.P3381790134298471644

/-! ## A088379.P2610397429113478885

`A000583(A020639(n+1))`
-/

namespace A088379.P2610397429113478885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A020639 (n + 1)).toNat

end

end A088379.P2610397429113478885

/-! ## A088379.P6969899369939162822

`A020639(C(n+1, n))²²`
-/

namespace A088379.P6969899369939162822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (Nat.choose (n + 1) n) ^ 2) ^ 2

end

end A088379.P6969899369939162822

/-! ## A088379.P10929979715539020593

`A020639(-xor(n, -1))²²`
-/

namespace A088379.P10929979715539020593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (-Int.xor (n : ℤ) (-1)).toNat ^ 2) ^ 2

end

end A088379.P10929979715539020593

/-! ## A088379.P1565935962894313916

`A020639(∏{p}[n+1, #])²²`
-/

namespace A088379.P1565935962894313916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2) ^ 2

end

end A088379.P1565935962894313916

/-! ## A088379.P17159177901522890397

`∏{p}[A028233(n+1), #²²]`
-/

namespace A088379.P17159177901522890397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A088379.P17159177901522890397

/-! ## A088379.P14621021944953075464

`∏{p}[A068794(n+1), #²²]`
-/

namespace A088379.P14621021944953075464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A088379.P14621021944953075464

/-! ## A088379.P8896408272467091496

`∏{p}[A304181(n+1), #²²]`
-/

namespace A088379.P8896408272467091496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A088379.P8896408272467091496

/-! ## A088379.P5329387315589522662

`∏{p}[A323130(n+1), #²²]`
-/

namespace A088379.P5329387315589522662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A088379.P5329387315589522662

/-! ## A088379.P11921710052391747602

`(n+1-A061228(n+1))²²`
-/

namespace A088379.P11921710052391747602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) - A061228 (n + 1)) ^ 2) ^ 2

end

end A088379.P11921710052391747602

/-! ## A088379.P4100628179571358690

`((n+1)/A032742(n+1))²²`
-/

namespace A088379.P4100628179571358690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℚ) / (A032742 (n + 1) : ℚ)) ^ 2) ^ 2

end

end A088379.P4100628179571358690

/-! ## A088379.P17753152382113956593

`(A285109(n+1)/(n+1))²²`
-/

namespace A088379.P17753152382113956593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A285109 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2) ^ 2

end

end A088379.P17753152382113956593

/-! ## A088379.P9706891292501206529

`A020639(2*n-(n-1))²²`
-/

namespace A088379.P9706891292501206529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2) ^ 2

end

end A088379.P9706891292501206529

/-! ## A088379.P1716540874991050433

`A066048(A028233(n+1))²`
-/

namespace A088379.P1716540874991050433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A028233 (n + 1)).toNat ^ 2

end

end A088379.P1716540874991050433

/-! ## A088379.P9024874382130120512

`A078615(A068794(n+1))²`
-/

namespace A088379.P9024874382130120512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A068794 (n + 1)).toNat ^ 2

end

end A088379.P9024874382130120512

/-! ## A088379.P4860613501595373893

`A066048(A304181(n+1))²`
-/

namespace A088379.P4860613501595373893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A304181 (n + 1)).toNat ^ 2

end

end A088379.P4860613501595373893

/-! ## A088379.P1176102885427989577

`A066048(A323130(n+1))²`
-/

namespace A088379.P1176102885427989577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A323130 (n + 1)).toNat ^ 2

end

end A088379.P1176102885427989577

/-! ## A088379.P12848341337061218076

`A006530(A074828(n+1))²²`
-/

namespace A088379.P12848341337061218076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006530 (A074828 (n + 1)).toNat ^ 2) ^ 2

end

end A088379.P12848341337061218076

/-!
# A088380: Numbers not exceeding the cube of their smallest prime factor.

The programs for A088380, there is no canonical definition to state claims against.
-/

/-! ## A088380.P14518679452667583511

`lt[n, A020639(n+1)^3]+1`
-/

namespace A088380.P14518679452667583511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088380.P14518679452667583511

/-! ## A088380.P15379564721679163202

`filter[A253784(n+1), A353799(#)]`
-/

namespace A088380.P15379564721679163202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A088380.P15379564721679163202

/-! ## A088380.P16048499528449683493

`∩[A007964(n+1), A253784(n+1)]`
-/

namespace A088380.P16048499528449683493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088380.P16048499528449683493

/-! ## A088380.P15410145557841994567

`filter[A253567(n+1), A353799(#)]`
-/

namespace A088380.P15410145557841994567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A088380.P15410145557841994567

/-! ## A088380.P1557012535030265136

`∩[A007964(n+1), A253567(n+1)]`
-/

namespace A088380.P1557012535030265136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088380.P1557012535030265136

/-! ## A088380.P2641857276931565362

`record[A284253(n+1)/A317145(n+1)]`
-/

namespace A088380.P2641857276931565362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284253 (n + 1) : ℚ) / (A317145 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088380.P2641857276931565362

/-! ## A088380.P11845327386052110433

`lt[n, A088378(n+1)]+1`
-/

namespace A088380.P11845327386052110433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088380.P11845327386052110433

/-! ## A088380.P2045463008294928925

`eq[char[A088381(n+1)], A010051(2*(n+1))]`
-/

namespace A088380.P2045463008294928925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A088380.P2045463008294928925

/-! ## A088380.P6365443531531378796

`record[(n+1)%A034262(A074828(n+1))]`
-/

namespace A088380.P6365443531531378796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A034262 (A074828 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088380.P6365443531531378796

/-! ## A088380.P7389849165924097291

`record[A088382(n+1)/A020639(A088382(n+1))]`
-/

namespace A088380.P7389849165924097291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088382 (n + 1) : ℚ) / (A020639 (A088382 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088380.P7389849165924097291

/-! ## A088380.P5429696428193809071

`record[A032742(A088382(n+1))]`
-/

namespace A088380.P5429696428193809071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A088382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088380.P5429696428193809071

/-!
# A088381: Numbers greater than the cube of their smallest prime factor.

The programs for A088381, there is no canonical definition to state claims against.
-/

/-! ## A088381.P1110809511813361472

`lt[A020639(n+1)^3, n]+1`
-/

namespace A088381.P1110809511813361472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088381.P1110809511813361472

/-! ## A088381.P633136495438131645

`∪[A058080(n+1), A063764(n+1)]`
-/

namespace A088381.P633136495438131645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088381.P633136495438131645

/-! ## A088381.P8377467638893595888

`∪[A058080(n+1), A138511(n+1)]`
-/

namespace A088381.P8377467638893595888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088381.P8377467638893595888

/-! ## A088381.P9413716278901366841

`∪[A058080(n+1), A245729(n+1)]`
-/

namespace A088381.P9413716278901366841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088381.P9413716278901366841

/-! ## A088381.P17293084733137514476

`∪[A058080(n+1), A251727(n+1)]`
-/

namespace A088381.P17293084733137514476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088381.P17293084733137514476

/-! ## A088381.P318231238259915558

`∪[A058080(n+1), A253569(n+1)]`
-/

namespace A088381.P318231238259915558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088381.P318231238259915558

/-! ## A088381.P5484521148579718959

`∪[A058080(n+1), A253785(n+1)]`
-/

namespace A088381.P5484521148579718959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088381.P5484521148579718959

/-! ## A088381.P15671658920394640493

`∪[A058080(n+1), A395778(n+1)]`
-/

namespace A088381.P15671658920394640493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088381.P15671658920394640493

/-! ## A088381.P15177530004545612139

`lt[A088378(n+1), n]+1`
-/

namespace A088381.P15177530004545612139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088378 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088381.P15177530004545612139

/-! ## A088381.P9933587921433153390

`lt[A088377(n+1), A032742(n+1)]+1`
-/

namespace A088381.P9933587921433153390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A088381.P9933587921433153390

/-! ## A088381.P10079638542620535700

`lt[A020639(n+1)², A032742(n+1)]+1`
-/

namespace A088381.P10079638542620535700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A088381.P10079638542620535700

/-! ## A088381.P8141090829536924805

`A065475(lt[A088377(n+1), A032742(n+1)])`
-/

namespace A088381.P8141090829536924805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088381.P8141090829536924805

/-! ## A088381.P12956027436292772144

`A326178(lt[A088377(n+1), A032742(n+1)])`
-/

namespace A088381.P12956027436292772144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088381.P12956027436292772144

/-! ## A088381.P16869499237524810577

`eq[char[A088380(n+1)], A010051(2*(n+1))]`
-/

namespace A088381.P16869499237524810577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A088381.P16869499237524810577

/-!
# A088382: Numbers not exceeding the 4th power of their smallest prime factor.

The programs for A088382, there is no canonical definition to state claims against.
-/

/-! ## A088382.P9205900746878073836

`lt[n, A020639(n+1)^4]+1`
-/

namespace A088382.P9205900746878073836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088382.P9205900746878073836

/-! ## A088382.P18352101037304142992

`lt[sqrt(sqrt(n)), A102457(n+2)]+1`
-/

namespace A088382.P18352101037304142992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A088382.P18352101037304142992

/-! ## A088382.P7601473042594498955

`lt[n, A088379(n+1)]+1`
-/

namespace A088382.P7601473042594498955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088382.P7601473042594498955

/-! ## A088382.P10726307542591807475

`A094759(record[n%A020639(n+1)²²]+1)`
-/

namespace A088382.P10726307542591807475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) ((A020639 (n + 1) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A088382.P10726307542591807475

/-! ## A088382.P7939187897694230476

`record[(n+1)%(A014963(n+1)+A020639(n+1)²²)]`
-/

namespace A088382.P7939187897694230476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (n + 1) + (A020639 (n + 1) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088382.P7939187897694230476

/-! ## A088382.P18287499517673450613

`lt[A008414(A078898(n)), A113518(n+1)]`
-/

namespace A088382.P18287499517673450613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (A078898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088382.P18287499517673450613

/-! ## A088382.P10096863236813034691

`record[(n+1)%A006450(A020639(n+1)²)]`
-/

namespace A088382.P10096863236813034691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006450 (A020639 (n + 1) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088382.P10096863236813034691

/-! ## A088382.P3370262104441913572

`lt[A091437(A078898(n)), A000096(n)]`
-/

namespace A088382.P3370262104441913572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091437 (A078898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088382.P3370262104441913572

/-! ## A088382.P3470181375282428286

`eq[A056924(n+1), A337176(n+1)]+1`
-/

namespace A088382.P3470181375282428286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088382.P3470181375282428286

/-! ## A088382.P11829944575336743298

`lt[(A026741(n+1)+2)², 24*n]`
-/

namespace A088382.P11829944575336743298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088382.P11829944575336743298

/-!
# A088383: Numbers greater than the 4th power of their smallest prime factor.

The programs for A088383, there is no canonical definition to state claims against.
-/

/-! ## A088383.P17731872459296253622

`lt[A020639(n+1)^4, n]+1`
-/

namespace A088383.P17731872459296253622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088383.P17731872459296253622

/-! ## A088383.P16466663318858980979

`lt[A020639(abs(1-n)+1)²², n]`
-/

namespace A088383.P16466663318858980979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (|1 - (n : ℤ)| + 1).toNat ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088383.P16466663318858980979

/-! ## A088383.P2884301962775713231

`lt[A074828(n+2)^4, n+1]+2`
-/

namespace A088383.P2884301962775713231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 2) ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A088383.P2884301962775713231

/-! ## A088383.P14058921565169134381

`lt[A020639(n+2)²², n+1]+2`
-/

namespace A088383.P14058921565169134381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A088383.P14058921565169134381

/-! ## A088383.P2906641764931664656

`lt[A088379(n+1), n]+1`
-/

namespace A088383.P2906641764931664656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088379 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088383.P2906641764931664656

/-! ## A088383.P7539104860424126249

`lt[A088377(n+1)², n]+1`
-/

namespace A088383.P7539104860424126249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088383.P7539104860424126249

/-! ## A088383.P11436617763069727803

`lt[A088379(A028310(n)), n]`
-/

namespace A088383.P11436617763069727803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088379 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088383.P11436617763069727803

/-! ## A088383.P12542301817417540747

`A065475(lt[A088377(n+1)², n])`
-/

namespace A088383.P12542301817417540747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A088383.P12542301817417540747

/-! ## A088383.P1580037520069726509

`A326178(lt[A088377(n+1)², n])`
-/

namespace A088383.P1580037520069726509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A088383.P1580037520069726509

/-! ## A088383.P3691748739823355404

`A020725(lt[A020639(n+1)²², n])`
-/

namespace A088383.P3691748739823355404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A088383.P3691748739823355404

/-! ## A088383.P10621195904933793918

`A020725(lt[A074828(n+1)²², n])`
-/

namespace A088383.P10621195904933793918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074828 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A088383.P10621195904933793918

/-! ## A088383.P5900561355911998394

`A061767(lt[A074828(n+1)²², n])`
-/

namespace A088383.P5900561355911998394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074828 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A088383.P5900561355911998394

/-! ## A088383.P6572576122404675483

`A065475(lt[A088377(n+1), n/A088377(n+1)])`
-/

namespace A088383.P6572576122404675483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A088377 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A088383.P6572576122404675483

/-! ## A088383.P3677981537034090153

`A326178(lt[A088377(n+1), n/A088377(n+1)])`
-/

namespace A088383.P3677981537034090153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A088377 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A088383.P3677981537034090153

/-! ## A088383.P18281385534917603271

`lt[A113518(n+1), A008414(A078898(n))]`
-/

namespace A088383.P18281385534917603271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (A078898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088383.P18281385534917603271

/-!
# A088385: a(n) = prime(n+1)^prime(n+1) - prime(n)^prime(n).

The programs for A088385, the canonical program `A088385.P8087248075102541654` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088385 has offset 1).

The definition of A088385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088385.P8087248075102541654

`A051674(n+2)-A051674(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088385

/-- `A051674(n+2)-A051674(n+1)` -/
def P8087248075102541654.Spec : Prop :=
  ∀ n, P8087248075102541654.a n = A088385 (n + 1)

theorem P8087248075102541654.correct : P8087248075102541654.Spec := by
  intro n
  simp only [A088385, Nat.add_sub_cancel]

end A088385

/-! ## A088385.P12333561452735731067

`Δ[A051674(n+1)]`
-/

namespace A088385.P12333561452735731067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088385.P12333561452735731067

namespace A088385

/-- `Δ[A051674(n+1)]` -/
def P12333561452735731067.Spec : Prop :=
  ∀ n, P12333561452735731067.a n = A088385 (n + 1)

theorem P12333561452735731067.correct : P12333561452735731067.Spec := by
  intro n
  simp only [A088385, Nat.add_sub_cancel, A088385.P12333561452735731067.f1, A088385.P12333561452735731067.a, A088385.P8087248075102541654.a, SequenceMachineLib.memo_apply]

end A088385

/-! ## A088385.P9062962479954106095

`Δ[A088730(n+1)]`
-/

namespace A088385.P9062962479954106095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088385.P9062962479954106095

namespace A088385

/-- `Δ[A088730(n+1)]` -/
def P9062962479954106095.Spec : Prop :=
  ∀ n, P9062962479954106095.a n = A088385 (n + 1)

end A088385

/-! ## A088385.P15995362458255566361

`Δ[record[A108138(n+2)]]`
-/

namespace A088385.P15995362458255566361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108138 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088385.P15995362458255566361

namespace A088385

/-- `Δ[record[A108138(n+2)]]` -/
def P15995362458255566361.Spec : Prop :=
  ∀ n, P15995362458255566361.a n = A088385 (n + 1)

end A088385

/-! ## A088385.P8983919259825152704

`Δ[∑{d}[A000040(n+1), #^#]]`
-/

namespace A088385.P8983919259825152704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088385.P8983919259825152704

namespace A088385

/-- `Δ[∑{d}[A000040(n+1), #^#]]` -/
def P8983919259825152704.Spec : Prop :=
  ∀ n, P8983919259825152704.a n = A088385 (n + 1)

end A088385

/-!
# A088386: a(n) = 2^n*(n!)^3.

The programs for A088386, the canonical program `A088386.P15569628831596578487` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088386 has offset 0).

The definition of A088386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*n!^3` (program `A088386.P15569628831596578487`, by `A088386.P15569628831596578487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088386.P15569628831596578487

`2^n*n!^3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088386

/-- `2^n*n!^3` -/
def P15569628831596578487.Spec : Prop :=
  ∀ n, (P15569628831596578487.a n : ℤ) = A088386 n

theorem P15569628831596578487.correct : P15569628831596578487.Spec := by
  intro n
  simp only [A088386]

end A088386

/-! ## A088386.P17398085800760804747

`2*n^3*a(n-1)` with `a(0)=1`
-/

namespace A088386.P17398085800760804747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n ^ 3 * a (n - 1)

end

end A088386.P17398085800760804747

namespace A088386

/-- `2*n^3*a(n-1)` -/
def P17398085800760804747.Spec : Prop :=
  ∀ n, (P17398085800760804747.a n : ℤ) = A088386 n

end A088386

/-! ## A088386.P13925227538224854739

`∏[floor(2/acot(n^3))]`
-/

namespace A088386.P13925227538224854739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n ^ 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088386.P13925227538224854739

namespace A088386

/-- `∏[floor(2/acot(n^3))]` -/
def P13925227538224854739.Spec : Prop :=
  ∀ n, P13925227538224854739.a n = A088386 n

end A088386

/-! ## A088386.P15523666568418075223

`∏[floor(acot(n))+2*n^3]`
-/

namespace A088386.P15523666568418075223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088386.P15523666568418075223

namespace A088386

/-- `∏[floor(acot(n))+2*n^3]` -/
def P15523666568418075223.Spec : Prop :=
  ∀ n, P15523666568418075223.a n = A088386 n

end A088386

/-! ## A088386.P16757297316329191591

`∏[gcd(2*n^3, floor(acot(n)))]`
-/

namespace A088386.P16757297316329191591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n ^ 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088386.P16757297316329191591

namespace A088386

/-- `∏[gcd(2*n^3, floor(acot(n)))]` -/
def P16757297316329191591.Spec : Prop :=
  ∀ n, (P16757297316329191591.a n : ℤ) = A088386 n

end A088386

/-!
# A088387: Prime corresponding to largest prime power factor of n, a(1)=1.

The programs for A088387, there is no canonical definition to state claims against.
-/

/-! ## A088387.P397945808699787547

`∏{p}[A034699(n+1), #]`
-/

namespace A088387.P397945808699787547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A088387.P397945808699787547

/-! ## A088387.P4774427570956988736

`A006530(A034699(n+1))`
-/

namespace A088387.P4774427570956988736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034699 (n + 1)).toNat

end

end A088387.P4774427570956988736

/-! ## A088387.P110541195288150962

`gcd(A034699(n+1), A144845(n))`
-/

namespace A088387.P110541195288150962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034699 (n + 1)) (A144845 n)

end

end A088387.P110541195288150962

/-! ## A088387.P16455218428003472168

`A006530(1-A081805(n+1)+n)`
-/

namespace A088387.P16455218428003472168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - A081805 (n + 1) + (n : ℤ)).toNat

end

end A088387.P16455218428003472168

/-! ## A088387.P16138436355410880546

`A020639(1-A081805(n+1)+n)`
-/

namespace A088387.P16138436355410880546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - A081805 (n + 1) + (n : ℤ)).toNat

end

end A088387.P16138436355410880546

/-! ## A088387.P3162950740201312425

`A088835(1-A081805(n+1)+n)`
-/

namespace A088387.P3162950740201312425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088835 (1 - A081805 (n + 1) + (n : ℤ)).toNat

end

end A088387.P3162950740201312425

/-! ## A088387.P16689632293205938684

`A365521(n+1-A081805(n+1))`
-/

namespace A088387.P16689632293205938684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365521 ((n + 1 : ℤ) - A081805 (n + 1)).toNat

end

end A088387.P16689632293205938684

/-! ## A088387.P7864211516898923344

`A006530((n+1)/A284600(n+1))`
-/

namespace A088387.P7864211516898923344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088387.P7864211516898923344

/-! ## A088387.P2918637960497405268

`A007947((n+1)/A284600(n+1))`
-/

namespace A088387.P2918637960497405268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088387.P2918637960497405268

/-! ## A088387.P12391029595637831747

`A014963((n+1)/A284600(n+1))`
-/

namespace A088387.P12391029595637831747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088387.P12391029595637831747

/-! ## A088387.P12273012754676167939

`A020639((n+1)/A284600(n+1))`
-/

namespace A088387.P12273012754676167939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088387.P12273012754676167939

/-! ## A088387.P14923930781754479554

`A365521((n+1)/A284600(n+1))`
-/

namespace A088387.P14923930781754479554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088387.P14923930781754479554

/-! ## A088387.P12838024490934668245

`A020639(A034699(2*n+1-n))`
-/

namespace A088387.P12838024490934668245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034699 (2 * n + 1 - n)).toNat

end

end A088387.P12838024490934668245

/-! ## A088387.P10584619012040205663

`gcd(A062953(n+1), A081805(n+1))`
-/

namespace A088387.P10584619012040205663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062953 (n + 1)) (A081805 (n + 1))

end

end A088387.P10584619012040205663

/-! ## A088387.P14421445394205626180

`A006530(A057110(n+1)+A002034(n+1))`
-/

namespace A088387.P14421445394205626180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057110 (n + 1) + A002034 (n + 1)).toNat

end

end A088387.P14421445394205626180

/-! ## A088387.P16691722051708220587

`A006530(A100574(n+1)+A034684(n+1))`
-/

namespace A088387.P16691722051708220587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100574 (n + 1) + A034684 (n + 1)).toNat

end

end A088387.P16691722051708220587

/-! ## A088387.P7697252943536092146

`A020639(A100574(n+1)+A034684(n+1))`
-/

namespace A088387.P7697252943536092146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100574 (n + 1) + A034684 (n + 1)).toNat

end

end A088387.P7697252943536092146

/-! ## A088387.P2916604471867659184

`A006530(A304233(n+1)/A034684(n+1))`
-/

namespace A088387.P2916604471867659184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ))).toNat

end

end A088387.P2916604471867659184

/-! ## A088387.P311008857991222266

`A020639(A034699(n+1)+char[A252323(n+1)])`
-/

namespace A088387.P311008857991222266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252323 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034699 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A088387.P311008857991222266

/-! ## A088387.P8528243451323140245

`A020639(A034699(n+1)+char[A252324(n+1)])`
-/

namespace A088387.P8528243451323140245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252324 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034699 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A088387.P8528243451323140245

/-!
# A088388: Exponent of the largest prime power factor of n, a(1)=0.

The programs for A088388, there is no canonical definition to state claims against.
-/

/-! ## A088388.P13210555002543680724

`∑{e}[A034699(n+1), #]`
-/

namespace A088388.P13210555002543680724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A088388.P13210555002543680724

/-! ## A088388.P1769220950129009021

`A001222(A034699(n+1))`
-/

namespace A088388.P1769220950129009021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034699 (n + 1)).toNat

end

end A088388.P1769220950129009021

/-! ## A088388.P692772743358670372

`A001222((n+1)/A284600(n+1))`
-/

namespace A088388.P692772743358670372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088388.P692772743358670372

/-! ## A088388.P11747082123620279065

`A032741((n+1)/A284600(n+1))`
-/

namespace A088388.P11747082123620279065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088388.P11747082123620279065

/-! ## A088388.P11990235893507622398

`A051904(A034699(2*n+1-n))`
-/

namespace A088388.P11990235893507622398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A034699 (2 * n + 1 - n)).toNat

end

end A088388.P11990235893507622398

/-! ## A088388.P16720293294421447707

`A000005(A034699(char[1]+1+n))-1`
-/

namespace A088388.P16720293294421447707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034699 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat - 1

end

end A088388.P16720293294421447707

/-! ## A088388.P2697253554610805566

`A001222(n+1)-A001222(A284600(n+1))`
-/

namespace A088388.P2697253554610805566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A284600 (n + 1)).toNat

end

end A088388.P2697253554610805566

/-! ## A088388.P1353986606230834965

`A073093(n+1)-A073093(A284600(n+1))`
-/

namespace A088388.P1353986606230834965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A073093 (A284600 (n + 1)).toNat

end

end A088388.P1353986606230834965

/-! ## A088388.P4569664336980873956

`A000005(n+1)/A000005(A284600(n+1))-1`
-/

namespace A088388.P4569664336980873956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (A284600 (n + 1)).toNat : ℚ) - 1

end

end A088388.P4569664336980873956

/-! ## A088388.P4137561177541858626

`A001222(A210208(A210241(n+1)))`
-/

namespace A088388.P4137561177541858626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A210208 (A210241 (n + 1)).toNat).toNat

end

end A088388.P4137561177541858626

/-! ## A088388.P11722364212188952796

`A001222(A081472(n+1)-(n+1))`
-/

namespace A088388.P11722364212188952796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A081472 (n + 1) - (n + 1 : ℤ)).toNat

end

end A088388.P11722364212188952796

/-! ## A088388.P13968860944768108141

`A001222(gcd(n+1, A081472(n+1)))`
-/

namespace A088388.P13968860944768108141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 1 : ℤ) (A081472 (n + 1)))

end

end A088388.P13968860944768108141

/-! ## A088388.P9308908052148397572

`A000005(A081472(n+1)-(n+1))-1`
-/

namespace A088388.P9308908052148397572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A081472 (n + 1) - (n + 1 : ℤ)).toNat - 1

end

end A088388.P9308908052148397572

/-! ## A088388.P7674277791798149090

`A065770(A034699((n+1)²))-A065770(A034699(n+1))`
-/

namespace A088388.P7674277791798149090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A034699 ((n + 1) ^ 2)).toNat - A065770 (A034699 (n + 1)).toNat

end

end A088388.P7674277791798149090

/-! ## A088388.P16927131866352089753

`A056595(A034699((n+1)²))`
-/

namespace A088388.P16927131866352089753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A034699 ((n + 1) ^ 2)).toNat

end

end A088388.P16927131866352089753

/-! ## A088388.P4574960578300766077

`A071325(A034699(n+1)²)`
-/

namespace A088388.P4574960578300766077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A034699 (n + 1) ^ 2).toNat

end

end A088388.P4574960578300766077

/-! ## A088388.P6694347683303872027

`A341644(A034699(n+1)²)`
-/

namespace A088388.P6694347683303872027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A034699 (n + 1) ^ 2).toNat

end

end A088388.P6694347683303872027

/-! ## A088388.P12776341022863488402

`A347708(A366649((n+1)²))`
-/

namespace A088388.P12776341022863488402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347708 (A366649 ((n + 1) ^ 2)).toNat

end

end A088388.P12776341022863488402

/-! ## A088388.P4133516755159616002

`A001222(sqrt(A274006((n+1)²)))`
-/

namespace A088388.P4133516755159616002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A274006 ((n + 1) ^ 2) : ℝ))).toNat

end

end A088388.P4133516755159616002

/-! ## A088388.P50287584558876343

`A381133((n+1)/A284600(n+1))`
-/

namespace A088388.P50287584558876343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A088388.P50287584558876343

/-!
# A088389: Number of real regular n X n (0,1) matrices modulo rows permutations.

The programs for A088389, there is no canonical definition to state claims against.
-/

/-! ## A088389.P5578039245739769460

`A055165(n)/n!`
-/

namespace A088389.P5578039245739769460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055165 n : ℚ) / (Nat.factorial n : ℚ)

end

end A088389.P5578039245739769460

/-! ## A088389.P7575539883814796124

`A055165(n)/A000142(n)`
-/

namespace A088389.P7575539883814796124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055165 n : ℚ) / (A000142 n : ℚ)

end

end A088389.P7575539883814796124

/-! ## A088389.P4863164311476492859

`A055165(n)/∏[A028310(n)]`
-/

namespace A088389.P4863164311476492859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055165 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A088389.P4863164311476492859

/-! ## A088389.P1029863952164610171

`A054780(n)-A116532(A028310(n))`
-/

namespace A088389.P1029863952164610171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054780 n - A116532 (A028310 n).toNat

end

end A088389.P1029863952164610171

/-! ## A088389.P17856931428254737914

`A094000(n)-A116527(A028310(n))`
-/

namespace A088389.P17856931428254737914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094000 n - A116527 (A028310 n).toNat

end

end A088389.P17856931428254737914

/-!
# A088391: a(n)=A069521(n)/n.

The programs for A088391, there is no canonical definition to state claims against.
-/

/-! ## A088391.P9357757004857528013

`A069521(n+1)/(n+1)`
-/

namespace A088391.P9357757004857528013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069521 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088391.P9357757004857528013

/-!
# A088392: a(n)=A069522(n)/n.

The programs for A088392, there is no canonical definition to state claims against.
-/

/-! ## A088392.P2122077754156878759

`A069522(n+1)/(n+1)`
-/

namespace A088392.P2122077754156878759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069522 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088392.P2122077754156878759

/-! ## A088392.P12586035212136694814

`A088395(2*(n+1))%A016755(A069522(n+1))`
-/

namespace A088392.P12586035212136694814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088395 (2 * (n + 1))) (A016755 (A069522 (n + 1)).toNat)

end

end A088392.P12586035212136694814

/-! ## A088392.P12000869400946642885

`A088395(2*n+2)%A222257(A069522(n+1))`
-/

namespace A088392.P12000869400946642885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088395 (2 * n + 2)) (A222257 (A069522 (n + 1)).toNat)

end

end A088392.P12000869400946642885

/-!
# A088393: a(n)=A069523(n)/n.

The programs for A088393, there is no canonical definition to state claims against.
-/

/-! ## A088393.P9730733473115925088

`A069523(n+1)/(n+1)`
-/

namespace A088393.P9730733473115925088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069523 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088393.P9730733473115925088

/-! ## A088393.P7237250682603934546

`floor(A069523(A222257(n))/A222257(n))`
-/

namespace A088393.P7237250682603934546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069523 (A222257 n).toNat : ℚ) / (A222257 n : ℚ)⌋

end

end A088393.P7237250682603934546

/-! ## A088393.P4765067584449319455

`A069523(A222257(n))/A222257(n)*A033999(n)²`
-/

namespace A088393.P4765067584449319455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069523 (A222257 n).toNat : ℚ) / (A222257 n : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A088393.P4765067584449319455

/-!
# A088394: a(n)=A069524(n)/n.

The programs for A088394, there is no canonical definition to state claims against.
-/

/-! ## A088394.P7491356962912056968

`A069524(n+1)/(n+1)`
-/

namespace A088394.P7491356962912056968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069524 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088394.P7491356962912056968

/-! ## A088394.P12711569073604406051

`A109050(A069524(n+1))%A017257(n)`
-/

namespace A088394.P12711569073604406051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109050 (A069524 (n + 1)).toNat) (A017257 n)

end

end A088394.P12711569073604406051

/-! ## A088394.P1274334054936356424

`A007953(A069526(n+1)*A088391(n+1))`
-/

namespace A088394.P1274334054936356424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A069526 (n + 1) * A088391 (n + 1)).toNat

end

end A088394.P1274334054936356424

/-!
# A088395: a(n) = A069525(n)/n.

The programs for A088395, there is no canonical definition to state claims against.
-/

/-! ## A088395.P2083361391492987174

`A069525(n+1)/(n+1)`
-/

namespace A088395.P2083361391492987174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069525 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088395.P2083361391492987174

/-!
# A088396: a(n)=A069526(n)/n.

The programs for A088396, there is no canonical definition to state claims against.
-/

/-! ## A088396.P2073460129521175749

`A069526(n+1)/(n+1)`
-/

namespace A088396.P2073460129521175749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069526 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088396.P2073460129521175749

/-! ## A088396.P11312091174624018627

`A109050(A069526(n+1))%A017257(n)`
-/

namespace A088396.P11312091174624018627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109050 (A069526 (n + 1)).toNat) (A017257 n)

end

end A088396.P11312091174624018627

/-! ## A088396.P16591396071071269270

`A070692(A069524(n+1)*A088394(n+1))`
-/

namespace A088396.P16591396071071269270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070692 (A069524 (n + 1) * A088394 (n + 1)).toNat

end

end A088396.P16591396071071269270

/-! ## A088396.P10939660837709587279

`A070692(A017221(n+3)*A088394(n+1))`
-/

namespace A088396.P10939660837709587279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070692 (A017221 (n + 3) * A088394 (n + 1)).toNat

end

end A088396.P10939660837709587279

/-! ## A088396.P17198504920691236252

`A088388(2^A088394(2*(n+1)))`
-/

namespace A088396.P17198504920691236252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A088394 (2 * (n + 1)) : ℤ))).toNat

end

end A088396.P17198504920691236252

/-!
# A088397: a(n)=A069527(n)/n.

The programs for A088397, there is no canonical definition to state claims against.
-/

/-! ## A088397.P9033033295082770527

`A069527(n+1)/(n+1)`
-/

namespace A088397.P9033033295082770527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069527 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088397.P9033033295082770527

/-! ## A088397.P11539261733223333631

`A070692(A105374(n+1))`
-/

namespace A088397.P11539261733223333631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070692 (A105374 (n + 1)).toNat

end

end A088397.P11539261733223333631

/-!
# A088398: a(n) = A069528(n)/n.

The programs for A088398, there is no canonical definition to state claims against.
-/

/-! ## A088398.P2551623453350288675

`A069528(n+1)/(n+1)`
-/

namespace A088398.P2551623453350288675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069528 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088398.P2551623453350288675

/-! ## A088398.P8012690149235231862

`A109050(gcd(A076710(n), A321801(n+1)))/(n+1)`
-/

namespace A088398.P8012690149235231862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109050 (Int.gcd (A076710 n) (A321801 (n + 1))) : ℚ) / (n + 1 : ℚ)

end

end A088398.P8012690149235231862

/-! ## A088398.P9618638626899320929

`lcm(A005010(n*A076710(n)), A321801(n+1))/(n+1)`
-/

namespace A088398.P9618638626899320929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005010 ((n : ℤ) * A076710 n).toNat) (A321801 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A088398.P9618638626899320929

/-! ## A088398.P11206012534923727297

`A109050(A321801(n+1)+A076710(n+1))/A080683(n+1)`
-/

namespace A088398.P11206012534923727297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109050 (A321801 (n + 1) + A076710 (n + 1)).toNat : ℚ) / (A080683 (n + 1) : ℚ)

end

end A088398.P11206012534923727297

/-! ## A088398.P12740234678670714998

`lcm(n+1, A180599(A281416(n)))/A077168(n)`
-/

namespace A088398.P12740234678670714998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A180599 (A281416 n).toNat) : ℚ) / (A077168 n : ℚ)

end

end A088398.P12740234678670714998

/-!
# A088399: a(n)=A069529(n)/n.

The programs for A088399, there is no canonical definition to state claims against.
-/

/-! ## A088399.P11967814343175541742

`A069529(n+1)/(n+1)`
-/

namespace A088399.P11967814343175541742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069529 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088399.P11967814343175541742

