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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A018800: Smallest prime that begins with n.

The programs for A018800, there is no canonical definition to state claims against.
-/

/-! ## A018800.P8348155337176354163

`A000040(A085608(n+1))`
-/

namespace A018800.P8348155337176354163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A085608 (n + 1)).toNat

end

end A018800.P8348155337176354163

/-! ## A018800.P6472052115342746778

`A008578(A085608(n+1)+1)`
-/

namespace A018800.P6472052115342746778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A085608 (n + 1) + 1).toNat

end

end A018800.P6472052115342746778

/-! ## A018800.P7512284024317656086

`A158611(A085608(n+1)+2)`
-/

namespace A018800.P7512284024317656086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A085608 (n + 1) + 2).toNat

end

end A018800.P7512284024317656086

/-! ## A018800.P12052807013712011218

`A073846(2*A085608(n+1))`
-/

namespace A018800.P12052807013712011218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A085608 (n + 1)).toNat

end

end A018800.P12052807013712011218

/-! ## A018800.P15235353785067340407

`A082500(2*A085608(n+1))`
-/

namespace A018800.P15235353785067340407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A085608 (n + 1)).toNat

end

end A018800.P15235353785067340407

/-! ## A018800.P10738648402363426508

`A077344(∑[n]+1)`
-/

namespace A018800.P10738648402363426508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A018800.P10738648402363426508

/-! ## A018800.P3795341684229159875

`A262369(∑[n]+1)`
-/

namespace A018800.P3795341684229159875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A018800.P3795341684229159875

/-! ## A018800.P3300980464620859512

`A006530(A077344(A000217(n)+1))`
-/

namespace A018800.P3300980464620859512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077344 (A000217 n + 1).toNat).toNat

end

end A018800.P3300980464620859512

/-! ## A018800.P1435310305141738570

`A014963(A262369(A000217(n)+1))`
-/

namespace A018800.P1435310305141738570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A262369 (A000217 n + 1).toNat).toNat

end

end A018800.P1435310305141738570

/-!
# A018801: Index of smallest triangular number beginning with n.

The programs for A018801, there is no canonical definition to state claims against.
-/

/-! ## A018801.P3205130695190078640

`floor(sqrt(2*A018855(n+1)))`
-/

namespace A018801.P3205130695190078640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A018855 (n + 1))

end

end A018801.P3205130695190078640

/-! ## A018801.P12145368930847826166

`A080098(A018855(n+1))`
-/

namespace A018801.P12145368930847826166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A018855 (n + 1)).toNat

end

end A018801.P12145368930847826166

/-! ## A018801.P8841517269832221762

`A127648(A018855(n+1)-1)`
-/

namespace A018801.P8841517269832221762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A018855 (n + 1) - 1).toNat

end

end A018801.P8841517269832221762

/-! ## A018801.P11068787756584804321

`A175778(A018855(n+1)+char[2])`
-/

namespace A018801.P11068787756584804321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175778 (A018855 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A018801.P11068787756584804321

/-! ## A018801.P4593092774807332087

`A175778(A151909(n)+A018855(n+1))`
-/

namespace A018801.P4593092774807332087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175778 (A151909 n + A018855 (n + 1)).toNat

end

end A018801.P4593092774807332087

/-! ## A018801.P12890579236252363795

`A175778(or(A000007(n), A018855(n+1)))`
-/

namespace A018801.P12890579236252363795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175778 (Int.lor (A000007 n) (A018855 (n + 1))).toNat

end

end A018801.P12890579236252363795

/-! ## A018801.P8709579868108729727

`ceil(1/A007318(n))*A175778(A018855(n+1))`
-/

namespace A018801.P8709579868108729727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A175778 (A018855 (n + 1)).toNat

end

end A018801.P8709579868108729727

/-! ## A018801.P14507648371146119602

`A175778(2*A018855(n+1)-A018855(n+1))`
-/

namespace A018801.P14507648371146119602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175778 (2 * A018855 (n + 1) - A018855 (n + 1)).toNat

end

end A018801.P14507648371146119602

/-! ## A018801.P3519037388497071080

`A014963(6*(n+1))*A175778(A018855(n+1))`
-/

namespace A018801.P3519037388497071080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A175778 (A018855 (n + 1)).toNat

end

end A018801.P3519037388497071080

/-! ## A018801.P2828616271615016023

`A002024(A018855(n+1))`
-/

namespace A018801.P2828616271615016023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A018855 (n + 1)).toNat

end

end A018801.P2828616271615016023

/-!
# A018802: Smallest power of 2 that begins with n.

The programs for A018802, there is no canonical definition to state claims against.
-/

/-! ## A018802.P13623237888076896111

`2^A018856(n+1)`
-/

namespace A018802.P13623237888076896111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A018856 (n + 1) : ℤ)

end

end A018802.P13623237888076896111

/-! ## A018802.P10258283500872743324

`A000079(A018856(n+1))`
-/

namespace A018802.P10258283500872743324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A018856 (n + 1)).toNat

end

end A018802.P10258283500872743324

/-! ## A018802.P2689807612278924852

`A011782(A018856(n+1)+1)`
-/

namespace A018802.P2689807612278924852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A018856 (n + 1) + 1).toNat

end

end A018802.P2689807612278924852

/-! ## A018802.P9521890893944319561

`A131577(A018856(n+1)+1)`
-/

namespace A018802.P9521890893944319561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A018856 (n + 1) + 1).toNat

end

end A018802.P9521890893944319561

/-!
# A018803: Number of ways to color cells of an n X n square with 2 colors so that no subsquare of side > 1 has all corners same color.

The programs for A018803, there is no canonical definition to state claims against.
-/

/-! ## A018803.P14291602772788371551

`A255256(∑[4*n])`
-/

namespace A018803.P14291602772788371551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018803.P14291602772788371551

/-! ## A018803.P155278453459463193

`record[A255256(∑[(n²-1)%Δ[n²]])]`
-/

namespace A018803.P155278453459463193
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018803.P155278453459463193

/-! ## A018803.P684134313960090316

`record[A255256(∑[floor((gcd(n, n%3)+n)/3)])]`
-/

namespace A018803.P684134313960090316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (n % 3) + n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018803.P684134313960090316

/-!
# A018804: Pillai's arithmetical function: Sum_{k=1..n} gcd(k, n).

The programs for A018804, the canonical program `A018804.P4748681952283325633` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018804 has offset 1).

The definition of A018804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd(#+1, n+1)]` (program `A018804.P4748681952283325633`, by `A018804.P4748681952283325633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018804.P9162922748918649679

`∑{d}[n+1, #*A000010((n+1)/#)]`
-/

namespace A018804.P9162922748918649679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A018804.P9162922748918649679

namespace A018804

/-- `∑{d}[n+1, #*A000010((n+1)/#)]` -/
def P9162922748918649679.Spec : Prop :=
  ∀ n, P9162922748918649679.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P14785544444996688537

`∑{d}[n+1, #*A000005(#)*A008683((n+1)/#)]`
-/

namespace A018804.P14785544444996688537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A018804.P14785544444996688537

namespace A018804

/-- `∑{d}[n+1, #*A000005(#)*A008683((n+1)/#)]` -/
def P14785544444996688537.Spec : Prop :=
  ∀ n, P14785544444996688537.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P3571482619138000535

`1/4*A344372(2*(n+1))`
-/

namespace A018804.P3571482619138000535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A344372 (2 * (n + 1)) : ℚ)

end

end A018804.P3571482619138000535

namespace A018804

/-- `1/4*A344372(2*(n+1))` -/
def P3571482619138000535.Spec : Prop :=
  ∀ n, P3571482619138000535.a n = (A018804 (n + 1) : ℚ)

end A018804

/-! ## A018804.P4748681952283325633

`∑{#}[n, gcd(#+1, n+1)]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018804

/-- `∑{#}[n, gcd(#+1, n+1)]` -/
def P4748681952283325633.Spec : Prop :=
  ∀ n, (P4748681952283325633.a n : ℤ) = A018804 (n + 1)

theorem P4748681952283325633.correct : P4748681952283325633.Spec := by
  intro n
  simp only [A018804, Nat.add_sub_cancel]

end A018804

/-! ## A018804.P16372386133762549948

`Δ[A209981(n)/32]`
-/

namespace A018804.P16372386133762549948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018804.P16372386133762549948

namespace A018804

/-- `Δ[A209981(n)/32]` -/
def P16372386133762549948.Spec : Prop :=
  ∀ n, P16372386133762549948.a n = (A018804 (n + 1) : ℚ)

end A018804

/-! ## A018804.P6410160326725155887

`∑{d}[n+1, A029935(#)]`
-/

namespace A018804.P6410160326725155887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d

end

end A018804.P6410160326725155887

namespace A018804

/-- `∑{d}[n+1, A029935(#)]` -/
def P6410160326725155887.Spec : Prop :=
  ∀ n, P6410160326725155887.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P3764702339025347594

`∑[Δ[A209295(n)]-1]`
-/

namespace A018804.P3764702339025347594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018804.P3764702339025347594

namespace A018804

/-- `∑[Δ[A209295(n)]-1]` -/
def P3764702339025347594.Spec : Prop :=
  ∀ n, P3764702339025347594.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P6104473425216682828

`A006579(n+1)+1+n`
-/

namespace A018804.P6104473425216682828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + 1 + (n : ℤ)

end

end A018804.P6104473425216682828

namespace A018804

/-- `A006579(n+1)+1+n` -/
def P6104473425216682828.Spec : Prop :=
  ∀ n, P6104473425216682828.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P15116409645243024886

`A209295(n+1)-(n+1)`
-/

namespace A018804.P15116409645243024886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (n + 1 : ℤ)

end

end A018804.P15116409645243024886

namespace A018804

/-- `A209295(n+1)-(n+1)` -/
def P15116409645243024886.Spec : Prop :=
  ∀ n, P15116409645243024886.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P10421015565928020302

`A268631(n+1)+Δ[n²]`
-/

namespace A018804.P10421015565928020302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A018804.P10421015565928020302

namespace A018804

/-- `A268631(n+1)+Δ[n²]` -/
def P10421015565928020302.Spec : Prop :=
  ∀ n, P10421015565928020302.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P12267933129864309361

`(n+1)²-A344485(n+1)`
-/

namespace A018804.P12267933129864309361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A344485 (n + 1)

end

end A018804.P12267933129864309361

namespace A018804

/-- `(n+1)²-A344485(n+1)` -/
def P12267933129864309361.Spec : Prop :=
  ∀ n, P12267933129864309361.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P14335962320001499971

`(A344598(n+1)+n+1)/2`
-/

namespace A018804.P14335962320001499971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344598 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A018804.P14335962320001499971

namespace A018804

/-- `(A344598(n+1)+n+1)/2` -/
def P14335962320001499971.Spec : Prop :=
  ∀ n, P14335962320001499971.a n = (A018804 (n + 1) : ℚ)

end A018804

/-! ## A018804.P17819439700980054159

`∑{d}[n+1, A000010((n+1)/#)*#]`
-/

namespace A018804.P17819439700980054159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A018804.P17819439700980054159

namespace A018804

/-- `∑{d}[n+1, A000010((n+1)/#)*#]` -/
def P17819439700980054159.Spec : Prop :=
  ∀ n, P17819439700980054159.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P12474018931467636317

`A063754(n+1)+A029935(n+1)`
-/

namespace A018804.P12474018931467636317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063754 (n + 1) + A029935 (n + 1)

end

end A018804.P12474018931467636317

namespace A018804

/-- `A063754(n+1)+A029935(n+1)` -/
def P12474018931467636317.Spec : Prop :=
  ∀ n, P12474018931467636317.a n = A018804 (n + 1)

theorem P12474018931467636317.correct : P12474018931467636317.Spec := by
  intro n
  simp only [A018804, Nat.add_sub_cancel, A018804.P12474018931467636317.a, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A029935, A029935.P1636467149315566281.f1, A029935.P1636467149315566281.a, A063754, A063754.P8530571032129736586.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018804

/-! ## A018804.P8334658162388807593

`A396514(n+1)+A000203(n+1)`
-/

namespace A018804.P8334658162388807593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396514 (n + 1) + A000203 (n + 1)

end

end A018804.P8334658162388807593

namespace A018804

/-- `A396514(n+1)+A000203(n+1)` -/
def P8334658162388807593.Spec : Prop :=
  ∀ n, P8334658162388807593.a n = A018804 (n + 1)

theorem P8334658162388807593.correct : P8334658162388807593.Spec := by
  intro n
  simp only [A018804, Nat.add_sub_cancel, A018804.P8334658162388807593.a, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A396514, A396514.P190034944072554770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018804

/-! ## A018804.P12994971698420860156

`A349131(n+1)+A348981(n+1)`
-/

namespace A018804.P12994971698420860156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349131 (n + 1) + A348981 (n + 1)

end

end A018804.P12994971698420860156

namespace A018804

/-- `A349131(n+1)+A348981(n+1)` -/
def P12994971698420860156.Spec : Prop :=
  ∀ n, P12994971698420860156.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P16224158381681715006

`A400361(n+1)+A384628(n+1)`
-/

namespace A018804.P16224158381681715006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400361 (n + 1) + A384628 (n + 1)

end

end A018804.P16224158381681715006

namespace A018804

/-- `A400361(n+1)+A384628(n+1)` -/
def P16224158381681715006.Spec : Prop :=
  ∀ n, P16224158381681715006.a n = A018804 (n + 1)

theorem P16224158381681715006.correct : P16224158381681715006.Spec := by
  intro n
  simp only [A018804, Nat.add_sub_cancel, A018804.P16224158381681715006.a, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A384628, A384628.P13926361255697979705.f1, A384628.P13926361255697979705.a, A400361, A400361.P1889396071312864242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018804

/-! ## A018804.P4711020537866362477

`A347095(n+1)-A101035(n+1)`
-/

namespace A018804.P4711020537866362477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347095 (n + 1) - A101035 (n + 1)

end

end A018804.P4711020537866362477

namespace A018804

/-- `A347095(n+1)-A101035(n+1)` -/
def P4711020537866362477.Spec : Prop :=
  ∀ n, P4711020537866362477.a n = A018804 (n + 1)

theorem P4711020537866362477.correct : P4711020537866362477.Spec := by
  intro n
  simp only [A018804, Nat.add_sub_cancel, A018804.P4711020537866362477.a, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A347095, A347095.P13848354769774225057.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018804

/-! ## A018804.P9048115294672408082

`A349171(n+1)-A349141(n+1)`
-/

namespace A018804.P9048115294672408082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - A349141 (n + 1)

end

end A018804.P9048115294672408082

namespace A018804

/-- `A349171(n+1)-A349141(n+1)` -/
def P9048115294672408082.Spec : Prop :=
  ∀ n, P9048115294672408082.a n = A018804 (n + 1)

end A018804

/-! ## A018804.P17365527503515671369

`A003557(n+1)*A347128(n+1)`
-/

namespace A018804.P17365527503515671369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A347128 (n + 1)

end

end A018804.P17365527503515671369

namespace A018804

/-- `A003557(n+1)*A347128(n+1)` -/
def P17365527503515671369.Spec : Prop :=
  ∀ n, P17365527503515671369.a n = A018804 (n + 1)

end A018804

/-!
# A018805: Number of elements in the set {(x,y): 1 <= x,y <= n, gcd(x,y)=1}.

The programs for A018805, the canonical program `A018805.P12666295524682144614` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018805 has offset 1).

The definition of A018805 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A018805.P12666295524682144614

`2*A015614(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A018805

/-- `2*A015614(n+1)+1` -/
def P12666295524682144614.Spec : Prop :=
  ∀ n, P12666295524682144614.a n = A018805 (n + 1)

theorem P12666295524682144614.correct : P12666295524682144614.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel]

end A018805

/-! ## A018805.P18246111041831740553

`2*A002088(n+1)-1`
-/

namespace A018805.P18246111041831740553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002088 (n + 1) - 1

end

end A018805.P18246111041831740553

namespace A018805

/-- `2*A002088(n+1)-1` -/
def P18246111041831740553.Spec : Prop :=
  ∀ n, P18246111041831740553.a n = A018805 (n + 1)

theorem P18246111041831740553.correct : P18246111041831740553.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P18246111041831740553.a, A018805.P12666295524682144614.a, A002088, A002088.P11293466613211840242.a, A015614, A015614.P13535555482679389419.a, A000010, A000010.P4673923239450215316.a, A000217, A000217.P10269402890581615239.a, A185670, A185670.P7671735460308608982.a, A003557, A003557.P6364735403900941810.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P5818546037543361649

`2*A005728(n+1)-3`
-/

namespace A018805.P5818546037543361649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005728 (n + 1) - 3

end

end A018805.P5818546037543361649

namespace A018805

/-- `2*A005728(n+1)-3` -/
def P5818546037543361649.Spec : Prop :=
  ∀ n, P5818546037543361649.a n = A018805 (n + 1)

theorem P5818546037543361649.correct : P5818546037543361649.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P5818546037543361649.a, A018805.P12666295524682144614.a, A005728, A005728.P12032251568510858139.a, A015614, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, A185670, A185670.P7671735460308608982.a, A000010, A000010.P4673923239450215316.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P4425934319598196971

`A015614(n+1)+A002088(n+1)`
-/

namespace A018805.P4425934319598196971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + A002088 (n + 1)

end

end A018805.P4425934319598196971

namespace A018805

/-- `A015614(n+1)+A002088(n+1)` -/
def P4425934319598196971.Spec : Prop :=
  ∀ n, P4425934319598196971.a n = A018805 (n + 1)

theorem P4425934319598196971.correct : P4425934319598196971.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P4425934319598196971.a, A018805.P12666295524682144614.a, A002088, A002088.P11293466613211840242.a, A015614, A015614.P13535555482679389419.a, A000010, A000010.P4673923239450215316.a, A000217, A000217.P10269402890581615239.a, A185670, A185670.P7671735460308608982.a, A003557, A003557.P6364735403900941810.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P5986665590105158353

`A000290(n+1)-A100613(n+1)`
-/

namespace A018805.P5986665590105158353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A100613 (n + 1)

end

end A018805.P5986665590105158353

namespace A018805

/-- `A000290(n+1)-A100613(n+1)` -/
def P5986665590105158353.Spec : Prop :=
  ∀ n, P5986665590105158353.a n = A018805 (n + 1)

theorem P5986665590105158353.correct : P5986665590105158353.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P5986665590105158353.a, A018805.P12666295524682144614.a, A000290, A000290.P12206242496348924484.a, A015614, A015614.P13535555482679389419.a, A100613, A100613.P7468063633472476903.a, A000217, A000217.P10269402890581615239.a, A063985, A063985.P3942861327483730228.a, A185670, A185670.P7671735460308608982.a, A002088, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P10142599837808162740

`∑{#}[n, A008683(#+1)*floor((n+1)/(#+1))²]`
-/

namespace A018805.P10142599837808162740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 (k + 1) * ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ ^ 2

end

end A018805.P10142599837808162740

namespace A018805

/-- `∑{#}[n, A008683(#+1)*floor((n+1)/(#+1))²]` -/
def P10142599837808162740.Spec : Prop :=
  ∀ n, P10142599837808162740.a n = A018805 (n + 1)

end A018805

/-! ## A018805.P16385692016361969645

`∑[2*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]-1`
-/

namespace A018805.P16385692016361969645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A018805.P16385692016361969645

namespace A018805

/-- `∑[2*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]-1` -/
def P16385692016361969645.Spec : Prop :=
  ∀ n, P16385692016361969645.a n = (A018805 (n + 1) : ℚ)

end A018805

/-! ## A018805.P9899878156335480718

`∑[A140434(n+1)]`
-/

namespace A018805.P9899878156335480718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018805.P9899878156335480718

namespace A018805

/-- `∑[A140434(n+1)]` -/
def P9899878156335480718.Spec : Prop :=
  ∀ n, P9899878156335480718.a n = A018805 (n + 1)

end A018805

/-! ## A018805.P16681089821022540160

`Δ[2*A103116(n)]-1`
-/

namespace A018805.P16681089821022540160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A018805.P16681089821022540160

namespace A018805

/-- `Δ[2*A103116(n)]-1` -/
def P16681089821022540160.Spec : Prop :=
  ∀ n, P16681089821022540160.a n = A018805 (n + 1)

end A018805

/-! ## A018805.P5488202671621116999

`2*A092249(n+1)-1`
-/

namespace A018805.P5488202671621116999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092249 (n + 1) - 1

end

end A018805.P5488202671621116999

namespace A018805

/-- `2*A092249(n+1)-1` -/
def P5488202671621116999.Spec : Prop :=
  ∀ n, P5488202671621116999.a n = A018805 (n + 1)

end A018805

/-! ## A018805.P11659061204230760122

`A140466(n+1)/2-1`
-/

namespace A018805.P11659061204230760122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 (n + 1) : ℚ) / 2 - 1

end

end A018805.P11659061204230760122

namespace A018805

/-- `A140466(n+1)/2-1` -/
def P11659061204230760122.Spec : Prop :=
  ∀ n, P11659061204230760122.a n = (A018805 (n + 1) : ℚ)

theorem P11659061204230760122.correct : P11659061204230760122.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P11659061204230760122.a, A018805.P12666295524682144614.a, A015614, A015614.P13535555482679389419.a, A140466, A140466.P2617124052483112329.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, A185670, A185670.P7671735460308608982.a, A000010, A000010.P4673923239450215316.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P3892010743346285394

`(A100449(n+1)-3)/2`
-/

namespace A018805.P3892010743346285394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 (n + 1) - 3 : ℚ) / 2

end

end A018805.P3892010743346285394

namespace A018805

/-- `(A100449(n+1)-3)/2` -/
def P3892010743346285394.Spec : Prop :=
  ∀ n, P3892010743346285394.a n = (A018805 (n + 1) : ℚ)

theorem P3892010743346285394.correct : P3892010743346285394.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P3892010743346285394.a, A018805.P12666295524682144614.a, A015614, A015614.P13535555482679389419.a, A100449, A100449.P13498763257578754956.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, A185670, A185670.P7671735460308608982.a, A000010, A000010.P4673923239450215316.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P12117604375239124807

`A137243(n+1)/4-1`
-/

namespace A018805.P12117604375239124807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137243 (n + 1) : ℚ) / 4 - 1

end

end A018805.P12117604375239124807

namespace A018805

/-- `A137243(n+1)/4-1` -/
def P12117604375239124807.Spec : Prop :=
  ∀ n, P12117604375239124807.a n = (A018805 (n + 1) : ℚ)

theorem P12117604375239124807.correct : P12117604375239124807.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P12117604375239124807.a, A018805.P12666295524682144614.a, A015614, A015614.P13535555482679389419.a, A137243, A137243.P6717013021254346252.a, A000217, A000217.P10269402890581615239.a, A185670, A185670.P7671735460308608982.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A002088, A002088.P11293466613211840242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P14487520570219894316

`(A206258(n+1)-1)/4`
-/

namespace A018805.P14487520570219894316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206258 (n + 1) - 1 : ℚ) / 4

end

end A018805.P14487520570219894316

namespace A018805

/-- `(A206258(n+1)-1)/4` -/
def P14487520570219894316.Spec : Prop :=
  ∀ n, P14487520570219894316.a n = (A018805 (n + 1) : ℚ)

theorem P14487520570219894316.correct : P14487520570219894316.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P14487520570219894316.a, A018805.P12666295524682144614.a, A015614, A015614.P13535555482679389419.a, A206258, A206258.P13828075839344405108.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, A185670, A185670.P7671735460308608982.a, A000010, A000010.P4673923239450215316.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P12459039972714468639

`∑[2*Δ[A005728(n)]]-1`
-/

namespace A018805.P12459039972714468639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A018805.P12459039972714468639

namespace A018805

/-- `∑[2*Δ[A005728(n)]]-1` -/
def P12459039972714468639.Spec : Prop :=
  ∀ n, P12459039972714468639.a n = A018805 (n + 1)

end A018805

/-! ## A018805.P12013535517546200834

`∑[2*A000010(n+1)]-1`
-/

namespace A018805.P12013535517546200834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A018805.P12013535517546200834

namespace A018805

/-- `∑[2*A000010(n+1)]-1` -/
def P12013535517546200834.Spec : Prop :=
  ∀ n, P12013535517546200834.a n = A018805 (n + 1)

end A018805

/-! ## A018805.P17184685874483073366

`∑[A319998(2*(n+1))]-1`
-/

namespace A018805.P17184685874483073366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A018805.P17184685874483073366

namespace A018805

/-- `∑[A319998(2*(n+1))]-1` -/
def P17184685874483073366.Spec : Prop :=
  ∀ n, P17184685874483073366.a n = A018805 (n + 1)

end A018805

/-! ## A018805.P15625075588668341728

`(∑[A002246(n+1)]-1)/2`
-/

namespace A018805.P15625075588668341728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A018805.P15625075588668341728

namespace A018805

/-- `(∑[A002246(n+1)]-1)/2` -/
def P15625075588668341728.Spec : Prop :=
  ∀ n, P15625075588668341728.a n = (A018805 (n + 1) : ℚ)

end A018805

/-! ## A018805.P11461125409030425860

`(n+1)²-A100613(n+1)`
-/

namespace A018805.P11461125409030425860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A100613 (n + 1)

end

end A018805.P11461125409030425860

namespace A018805

/-- `(n+1)²-A100613(n+1)` -/
def P11461125409030425860.Spec : Prop :=
  ∀ n, P11461125409030425860.a n = A018805 (n + 1)

theorem P11461125409030425860.correct : P11461125409030425860.Spec := by
  intro n
  simp only [A018805, Nat.add_sub_cancel, A018805.P11461125409030425860.a, A018805.P12666295524682144614.a, A015614, A015614.P13535555482679389419.a, A100613, A100613.P7468063633472476903.a, A000217, A000217.P10269402890581615239.a, A063985, A063985.P3942861327483730228.a, A185670, A185670.P7671735460308608982.a, A002088, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018805

/-! ## A018805.P7085741446063972384

`2*∑[A000010(2*n-(n-1))]-1`
-/

namespace A018805.P7085741446063972384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A018805.P7085741446063972384

namespace A018805

/-- `2*∑[A000010(2*n-(n-1))]-1` -/
def P7085741446063972384.Spec : Prop :=
  ∀ n, P7085741446063972384.a n = A018805 (n + 1)

end A018805

/-!
# A018806: Sum of gcd(x, y) for 1 <= x, y <= n.

The programs for A018806, the canonical program `A018806.P11565272913801985938` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018806 has offset 1).

The definition of A018806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018806.P11565272913801985938

`∑{#}[n, A000010(#+1)*floor((n+1)/(#+1))²]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018806

/-- `∑{#}[n, A000010(#+1)*floor((n+1)/(#+1))²]` -/
def P11565272913801985938.Spec : Prop :=
  ∀ n, P11565272913801985938.a n = A018806 (n + 1)

theorem P11565272913801985938.correct : P11565272913801985938.Spec := by
  intro n
  simp only [A018806, Nat.add_sub_cancel]

end A018806

/-! ## A018806.P10991983438619491476

`∑[A344598(n+1)]`
-/

namespace A018806.P10991983438619491476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P10991983438619491476

namespace A018806

/-- `∑[A344598(n+1)]` -/
def P10991983438619491476.Spec : Prop :=
  ∀ n, P10991983438619491476.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P4806980630235148241

`(A134506(n+1)+(n+1)²)/2`
-/

namespace A018806.P4806980630235148241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134506 (n + 1) + ((n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A018806.P4806980630235148241

namespace A018806

/-- `(A134506(n+1)+(n+1)²)/2` -/
def P4806980630235148241.Spec : Prop :=
  ∀ n, P4806980630235148241.a n = (A018806 (n + 1) : ℚ)

end A018806

/-! ## A018806.P15296158977354866688

`∑[2*A006579(n+1)+n+1]`
-/

namespace A018806.P15296158977354866688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006579 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P15296158977354866688

namespace A018806

/-- `∑[2*A006579(n+1)+n+1]` -/
def P15296158977354866688.Spec : Prop :=
  ∀ n, P15296158977354866688.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P9809897884526315681

`∑[2*A018804(n+1)-(n+1)]`
-/

namespace A018806.P9809897884526315681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018804 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P9809897884526315681

namespace A018806

/-- `∑[2*A018804(n+1)-(n+1)]` -/
def P9809897884526315681.Spec : Prop :=
  ∀ n, P9809897884526315681.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P12516998539957395475

`A272718(n+1)+A178881(n+1)`
-/

namespace A018806.P12516998539957395475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272718 (n + 1) + A178881 (n + 1)

end

end A018806.P12516998539957395475

namespace A018806

/-- `A272718(n+1)+A178881(n+1)` -/
def P12516998539957395475.Spec : Prop :=
  ∀ n, P12516998539957395475.a n = A018806 (n + 1)

theorem P12516998539957395475.correct : P12516998539957395475.Spec := by
  intro n
  simp only [A018806, Nat.add_sub_cancel, A018806.P12516998539957395475.a, A018806.P11565272913801985938.f1, A018806.P11565272913801985938.a, A000010, A000010.P4673923239450215316.a, A178881, A178881.P10769260265071727443.a, A272718, A272718.P14404705752265822826.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018806

/-! ## A018806.P15834384459050989727

`∑[A018804(n+1)+A006579(n+1)]`
-/

namespace A018806.P15834384459050989727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A006579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P15834384459050989727

namespace A018806

/-- `∑[A018804(n+1)+A006579(n+1)]` -/
def P15834384459050989727.Spec : Prop :=
  ∀ n, P15834384459050989727.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P9696113381288392811

`A178881(n+1)+∑[A018804(n+1)]`
-/

namespace A018806.P9696113381288392811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178881 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P9696113381288392811

namespace A018806

/-- `A178881(n+1)+∑[A018804(n+1)]` -/
def P9696113381288392811.Spec : Prop :=
  ∀ n, P9696113381288392811.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P1535496020863328656

`∑[A006579(n+1)+Δ[A209981(n)/32]]`
-/

namespace A018806.P1535496020863328656
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006579 (n + 1) : ℚ) + (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P1535496020863328656

namespace A018806

/-- `∑[A006579(n+1)+Δ[A209981(n)/32]]` -/
def P1535496020863328656.Spec : Prop :=
  ∀ n, P1535496020863328656.a n = (A018806 (n + 1) : ℚ)

end A018806

/-! ## A018806.P13058123579384008564

`∑[A006579(n+1)+A268631(n+1)+n+n+1]`
-/

namespace A018806.P13058123579384008564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + (A268631 (n + 1) + (n : ℤ) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P13058123579384008564

namespace A018806

/-- `∑[A006579(n+1)+A268631(n+1)+n+n+1]` -/
def P13058123579384008564.Spec : Prop :=
  ∀ n, P13058123579384008564.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P9191670166154582392

`A000217(n+1)+A178881(n+1)+A178881(n+1)`
-/

namespace A018806.P9191670166154582392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A178881 (n + 1) + A178881 (n + 1))

end

end A018806.P9191670166154582392

namespace A018806

/-- `A000217(n+1)+A178881(n+1)+A178881(n+1)` -/
def P9191670166154582392.Spec : Prop :=
  ∀ n, P9191670166154582392.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P17539055354726945420

`A272718(n+1)+A272718(n+1)-A000217(n+1)`
-/

namespace A018806.P17539055354726945420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272718 (n + 1) + (A272718 (n + 1) - A000217 (n + 1))

end

end A018806.P17539055354726945420

namespace A018806

/-- `A272718(n+1)+A272718(n+1)-A000217(n+1)` -/
def P17539055354726945420.Spec : Prop :=
  ∀ n, P17539055354726945420.a n = A018806 (n + 1)

end A018806

/-! ## A018806.P15586219567152434394

`A211058(n+1)-A083374(n+1)`
-/

namespace A018806.P15586219567152434394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) - A083374 (n + 1)

end

end A018806.P15586219567152434394

namespace A018806

/-- `A211058(n+1)-A083374(n+1)` -/
def P15586219567152434394.Spec : Prop :=
  ∀ n, P15586219567152434394.a n = A018806 (n + 1)

end A018806

/-!
# A018807: Number of ways to place n^2 nonattacking kings on 2n X 2n chessboard.

The programs for A018807, there is no canonical definition to state claims against.
-/

/-! ## A018807.P17686902304972312280

`A193580(A005894(n)-1)`
-/

namespace A018807.P17686902304972312280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193580 (A005894 n - 1).toNat

end

end A018807.P17686902304972312280

/-!
# A018808: Number of lines through at least 2 points of an n X n grid of points.

The programs for A018808, there is no canonical definition to state claims against.
-/

/-! ## A018808.P6009271500989029454

`2*A331780(n)`
-/

namespace A018808.P6009271500989029454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331780 n

end

end A018808.P6009271500989029454

/-! ## A018808.P7847653779917062851

`A119438(n)-(n²+1)`
-/

namespace A018808.P7847653779917062851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119438 n - (n ^ 2 + 1 : ℤ)

end

end A018808.P7847653779917062851

/-! ## A018808.P16986442395707653895

`abs(A002522(n)-A119438(n))`
-/

namespace A018808.P16986442395707653895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002522 n - A119438 n|

end

end A018808.P16986442395707653895

/-! ## A018808.P6981792875755235131

`A008683(A005886(n))+A119438(n)-A002522(n)`
-/

namespace A018808.P6981792875755235131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005886 n).toNat + (A119438 n - A002522 n)

end

end A018808.P6981792875755235131

/-! ## A018808.P7678871986971706760

`(A119438(n)-A002522(n))%A000583(n+1)`
-/

namespace A018808.P7678871986971706760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119438 n - A002522 n) (A000583 (n + 1))

end

end A018808.P7678871986971706760

/-! ## A018808.P2417942959910677571

`A397426(n)+A018810(n)+A018809(n)`
-/

namespace A018808.P2417942959910677571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397426 n + A018810 n + A018809 n

end

end A018808.P2417942959910677571

/-! ## A018808.P6095379143830562363

`A225606(n)+A018809(n)`
-/

namespace A018808.P6095379143830562363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225606 n + A018809 n

end

end A018808.P6095379143830562363

/-! ## A018808.P16554335140977229723

`A099395(A099382(n+1))+A119438(n)-A002522(n)`
-/

namespace A018808.P16554335140977229723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (A099382 (n + 1)).toNat + (A119438 n - A002522 n)

end

end A018808.P16554335140977229723

/-! ## A018808.P17744006365949504834

`A099395(A099389(n+1))+A119438(n)-A002522(n)`
-/

namespace A018808.P17744006365949504834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (A099389 (n + 1)).toNat + (A119438 n - A002522 n)

end

end A018808.P17744006365949504834

/-! ## A018808.P18347617019881252942

`A099395(A052905(n+1))+A119438(n)-A002522(n)`
-/

namespace A018808.P18347617019881252942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (A052905 (n + 1)).toNat + (A119438 n - A002522 n)

end

end A018808.P18347617019881252942

/-! ## A018808.P5564307518262243090

`A099395(A000096(n+3))+A119438(n)-A002522(n)`
-/

namespace A018808.P5564307518262243090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (A000096 (n + 3)).toNat + (A119438 n - A002522 n)

end

end A018808.P5564307518262243090

/-! ## A018808.P17176315322458869062

`A099395(A169707(n+1))+A119438(n)-A002522(n)`
-/

namespace A018808.P17176315322458869062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (A169707 (n + 1)).toNat + (A119438 n - A002522 n)

end

end A018808.P17176315322458869062

/-! ## A018808.P327619003324792264

`A103451(A167614(n+6))+A119438(n)-A002522(n)`
-/

namespace A018808.P327619003324792264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A167614 (n + 6)).toNat + (A119438 n - A002522 n)

end

end A018808.P327619003324792264

/-!
# A018809: Number of lines through exactly 2 points of an n X n grid of points.

The programs for A018809, there is no canonical definition to state claims against.
-/

/-! ## A018809.P14935956616920316805

`A018808(n)-(A397426(n)+A018810(n))`
-/

namespace A018809.P14935956616920316805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n - (A397426 n + A018810 n)

end

end A018809.P14935956616920316805

/-! ## A018809.P9698901172089940062

`A018808(n)-A225606(n)`
-/

namespace A018809.P9698901172089940062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n - A225606 n

end

end A018809.P9698901172089940062

/-! ## A018809.P7946650262132730694

`2*A331780(n)-A225606(n)`
-/

namespace A018809.P7946650262132730694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331780 n - A225606 n

end

end A018809.P7946650262132730694

/-! ## A018809.P2686440526705137034

`A119438(n)-(n²+1)-A225606(n)`
-/

namespace A018809.P2686440526705137034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119438 n - (n ^ 2 + 1 : ℤ) - A225606 n

end

end A018809.P2686440526705137034

/-! ## A018809.P7409564596158793466

`A119438(n)-(A225606(n)+A002522(n))`
-/

namespace A018809.P7409564596158793466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119438 n - (A225606 n + A002522 n)

end

end A018809.P7409564596158793466

/-! ## A018809.P2742652541686487687

`A295707((n-1)*2*n+1)-A225606(n)`
-/

namespace A018809.P2742652541686487687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (((n : ℤ) - 1) * (2 * n : ℤ) + 1).toNat - A225606 n

end

end A018809.P2742652541686487687

/-!
# A018810: Number of lines through exactly 3 points of an n X n grid of points.

The programs for A018810, there is no canonical definition to state claims against.
-/

/-! ## A018810.P11256315286978455688

`A018808(n)-(A397426(n)+A018809(n))`
-/

namespace A018810.P11256315286978455688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n - (A397426 n + A018809 n)

end

end A018810.P11256315286978455688

/-! ## A018810.P7036425048623878097

`A225606(n)-A397426(n)`
-/

namespace A018810.P7036425048623878097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225606 n - A397426 n

end

end A018810.P7036425048623878097

/-!
# A018811: Number of lines through exactly 4 points of an n X n grid of points.

The programs for A018811, there is no canonical definition to state claims against.
-/

/-! ## A018811.P1729231147858460832

`and(A139582(n), A247245(A190090(n)))`
-/

namespace A018811.P1729231147858460832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139582 n) (A247245 (A190090 n).toNat)

end

end A018811.P1729231147858460832

/-! ## A018811.P17653282988677466938

`A036705(A196265(n+1))%A225078(n+1)`
-/

namespace A018811.P17653282988677466938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036705 (A196265 (n + 1)).toNat) (A225078 (n + 1))

end

end A018811.P17653282988677466938

/-!
# A018818: Number of partitions of n into divisors of n.

The programs for A018818, there is no canonical definition to state claims against.
-/

/-! ## A018818.P13964159629318601472

`A210442(n+1)+1`
-/

namespace A018818.P13964159629318601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (n + 1) + 1

end

end A018818.P13964159629318601472

/-! ## A018818.P10828250275857225156

`2-∑[-Δ[A210442(n)]]`
-/

namespace A018818.P10828250275857225156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018818.P10828250275857225156

/-! ## A018818.P17377066195913282400

`∑[Δ[A210442(n)]*A158388(n)]`
-/

namespace A018818.P17377066195913282400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018818.P17377066195913282400

/-! ## A018818.P16026294000835293432

`A211110(n+1)+A014648(n+1)`
-/

namespace A018818.P16026294000835293432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (n + 1) + A014648 (n + 1)

end

end A018818.P16026294000835293432

/-! ## A018818.P10869997294137192925

`Δ[∑[A210442(n)]-A022972(n)]`
-/

namespace A018818.P10869997294137192925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A022972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018818.P10869997294137192925

/-!
# A018819: Binary partition function: number of partitions of n into powers of 2.

The programs for A018819, the canonical program `A018819.P3593375773759220258` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018819 has offset 0).

The definition of A018819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018819.P3593375773759220258

`a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018819

/-- `a(n-2)+a(floor(n/2))` -/
def P3593375773759220258.Spec : Prop :=
  ∀ n, (P3593375773759220258.a n : ℤ) = A018819 n

theorem P3593375773759220258.correct : P3593375773759220258.Spec := by
  intro n
  simp only [A018819]

end A018819

/-! ## A018819.P5521943076661559946

`abs(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1`
-/

namespace A018819.P5521943076661559946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A018819.P5521943076661559946

namespace A018819

/-- `abs(a(n-2)+a(and(n, -2)/2))` -/
def P5521943076661559946.Spec : Prop :=
  ∀ n, (P5521943076661559946.a n : ℤ) = A018819 n

end A018819

/-! ## A018819.P18114047280414506429

`ceil(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A018819.P18114047280414506429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A018819.P18114047280414506429

namespace A018819

/-- `ceil(a(n-2)+a(and(n, -2)/2))` -/
def P18114047280414506429.Spec : Prop :=
  ∀ n, (P18114047280414506429.a n : ℤ) = A018819 n

end A018819

/-! ## A018819.P14448695652929093366

`round(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A018819.P14448695652929093366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A018819.P14448695652929093366

namespace A018819

/-- `round(a(n-2)+a(and(n, -2)/2))` -/
def P14448695652929093366.Spec : Prop :=
  ∀ n, (P14448695652929093366.a n : ℤ) = A018819 n

end A018819

/-! ## A018819.P8658622255583144462

`Δ[a(n-1)+a(∑[a(n-2)²])]` with `a(0)=0, a(1)=1`
-/

namespace A018819.P8658622255583144462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A018819.P8658622255583144462

namespace A018819

/-- `Δ[a(n-1)+a(∑[a(n-2)²])]` -/
def P8658622255583144462.Spec : Prop :=
  ∀ n, P8658622255583144462.a n = A018819 n

end A018819

/-! ## A018819.P3150471559875694449

`A000123(floor(n/2))`
-/

namespace A018819.P3150471559875694449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ⌊(n : ℚ) / 2⌋.toNat

end

end A018819.P3150471559875694449

namespace A018819

/-- `A000123(floor(n/2))` -/
def P3150471559875694449.Spec : Prop :=
  ∀ n, P3150471559875694449.a n = A018819 n

end A018819

/-! ## A018819.P2168414986721870225

`abs(Δ[A000123(abs(1-n))])`
-/

namespace A018819.P2168414986721870225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A018819.P2168414986721870225

namespace A018819

/-- `abs(Δ[A000123(abs(1-n))])` -/
def P2168414986721870225.Spec : Prop :=
  ∀ n, P2168414986721870225.a n = A018819 n

end A018819

/-! ## A018819.P858370037739513780

`A357476(n)+A255738(n+1)`
-/

namespace A018819.P858370037739513780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357476 n + A255738 (n + 1)

end

end A018819.P858370037739513780

namespace A018819

/-- `A357476(n)+A255738(n+1)` -/
def P858370037739513780.Spec : Prop :=
  ∀ n, P858370037739513780.a n = A018819 n

theorem P858370037739513780.correct : P858370037739513780.Spec := by
  intro n
  simp only [A018819, Nat.add_sub_cancel, A018819.P858370037739513780.a, A018819.P3593375773759220258.a, A255738, A255738.P3969788085053868356.f1, A255738.P3969788085053868356.a, A357476, A357476.P18270851588785334001.f1, A357476.P18270851588785334001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018819

/-! ## A018819.P7791985877091094982

`A307148(Δ[n²])`
-/

namespace A018819.P7791985877091094982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018819.P7791985877091094982

namespace A018819

/-- `A307148(Δ[n²])` -/
def P7791985877091094982.Spec : Prop :=
  ∀ n, P7791985877091094982.a n = A018819 n

end A018819

/-! ## A018819.P6396297377635657958

`A023359(n)+A357476(n)-A357534(n)`
-/

namespace A018819.P6396297377635657958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n + (A357476 n - A357534 n)

end

end A018819.P6396297377635657958

namespace A018819

/-- `A023359(n)+A357476(n)-A357534(n)` -/
def P6396297377635657958.Spec : Prop :=
  ∀ n, P6396297377635657958.a n = A018819 n

end A018819

/-! ## A018819.P9275020796134642644

`A000027(A307148(2*n+1))`
-/

namespace A018819.P9275020796134642644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A307148 (2 * n + 1)).toNat

end

end A018819.P9275020796134642644

namespace A018819

/-- `A000027(A307148(2*n+1))` -/
def P9275020796134642644.Spec : Prop :=
  ∀ n, P9275020796134642644.a n = A018819 n

end A018819

/-! ## A018819.P9705331053485774264

`A101566(∑[n])`
-/

namespace A018819.P9705331053485774264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101566 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018819.P9705331053485774264

namespace A018819

/-- `A101566(∑[n])` -/
def P9705331053485774264.Spec : Prop :=
  ∀ n, P9705331053485774264.a n = A018819 n

end A018819

/-! ## A018819.P11780115993341973437

`A181322(A183575(n+1)-n)`
-/

namespace A018819.P11780115993341973437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181322 (A183575 (n + 1) - (n : ℤ)).toNat

end

end A018819.P11780115993341973437

namespace A018819

/-- `A181322(A183575(n+1)-n)` -/
def P11780115993341973437.Spec : Prop :=
  ∀ n, P11780115993341973437.a n = A018819 n

end A018819

/-! ## A018819.P11569276868117059384

`A181322(2*A002620(n)+n)`
-/

namespace A018819.P11569276868117059384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181322 (2 * A002620 n + (n : ℤ)).toNat

end

end A018819.P11569276868117059384

namespace A018819

/-- `A181322(2*A002620(n)+n)` -/
def P11569276868117059384.Spec : Prop :=
  ∀ n, P11569276868117059384.a n = A018819 n

end A018819

/-! ## A018819.P11345173556407280087

`A181322(A047838(n+2))`
-/

namespace A018819.P11345173556407280087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181322 (A047838 (n + 2)).toNat

end

end A018819.P11345173556407280087

namespace A018819

/-- `A181322(A047838(n+2))` -/
def P11345173556407280087.Spec : Prop :=
  ∀ n, P11345173556407280087.a n = A018819 n

end A018819

/-! ## A018819.P8559623508523533982

`A181322(A116940(n+1))`
-/

namespace A018819.P8559623508523533982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181322 (A116940 (n + 1)).toNat

end

end A018819.P8559623508523533982

namespace A018819

/-- `A181322(A116940(n+1))` -/
def P8559623508523533982.Spec : Prop :=
  ∀ n, P8559623508523533982.a n = A018819 n

end A018819

/-! ## A018819.P17647850438355585652

`A262553(A074148(n+2))`
-/

namespace A018819.P17647850438355585652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262553 (A074148 (n + 2)).toNat

end

end A018819.P17647850438355585652

namespace A018819

/-- `A262553(A074148(n+2))` -/
def P17647850438355585652.Spec : Prop :=
  ∀ n, P17647850438355585652.a n = A018819 n

end A018819

/-! ## A018819.P7849351726605131060

`A238392(A194274(n))`
-/

namespace A018819.P7849351726605131060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238392 (A194274 n).toNat

end

end A018819.P7849351726605131060

namespace A018819

/-- `A238392(A194274(n))` -/
def P7849351726605131060.Spec : Prop :=
  ∀ n, P7849351726605131060.a n = A018819 n

end A018819

/-! ## A018819.P6187402190241631868

`A238392(A007590(n+1))`
-/

namespace A018819.P6187402190241631868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238392 (A007590 (n + 1)).toNat

end

end A018819.P6187402190241631868

namespace A018819

/-- `A238392(A007590(n+1))` -/
def P6187402190241631868.Spec : Prop :=
  ∀ n, P6187402190241631868.a n = A018819 n

end A018819

/-! ## A018819.P15897617748652836112

`A238392(A080476(n+1))`
-/

namespace A018819.P15897617748652836112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238392 (A080476 (n + 1)).toNat

end

end A018819.P15897617748652836112

namespace A018819

/-- `A238392(A080476(n+1))` -/
def P15897617748652836112.Spec : Prop :=
  ∀ n, P15897617748652836112.a n = A018819 n

end A018819

/-!
# A018820: Numbers k that are the sum of m nonzero squares for all 1 <= m <= k - 14.

The programs for A018820, the canonical program `A018820.P234269659203219396` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018820 has offset 1).

The definition of A018820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341329, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A018820.P234269659203219396

`A341329(n+1)²`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A018820

/-- `A341329(n+1)²` -/
def P234269659203219396.Spec : Prop :=
  ∀ n, P234269659203219396.a n = A018820 (n + 1)

theorem P234269659203219396.correct : P234269659203219396.Spec := by
  intro n
  simp only [A018820, Nat.add_sub_cancel]

end A018820

/-! ## A018820.P16820162942722215856

`A341329(n+1)^(2%A000408(n+1))`
-/

namespace A018820.P16820162942722215856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341329 (n + 1) : ℚ) ^ (Int.tmod 2 (A000408 (n + 1)) : ℤ)

end

end A018820.P16820162942722215856

namespace A018820

/-- `A341329(n+1)^(2%A000408(n+1))` -/
def P16820162942722215856.Spec : Prop :=
  ∀ n, P16820162942722215856.a n = (A018820 (n + 1) : ℚ)

end A018820

/-! ## A018820.P10988158930064054193

`(A341329(n+1)%A045037(n+1))^2`
-/

namespace A018820.P10988158930064054193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341329 (n + 1)) (A045037 (n + 1)) ^ 2

end

end A018820.P10988158930064054193

namespace A018820

/-- `(A341329(n+1)%A045037(n+1))^2` -/
def P10988158930064054193.Spec : Prop :=
  ∀ n, P10988158930064054193.a n = A018820 (n + 1)

end A018820

/-! ## A018820.P15502302621985961169

`A341329(n+1)^A001222(A001358(n+1))`
-/

namespace A018820.P15502302621985961169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341329 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A018820.P15502302621985961169

namespace A018820

/-- `A341329(n+1)^A001222(A001358(n+1))` -/
def P15502302621985961169.Spec : Prop :=
  ∀ n, P15502302621985961169.a n = (A018820 (n + 1) : ℚ)

end A018820

/-! ## A018820.P17303932912430815250

`∩[A009003(n+1), A161992(n+1)]²`
-/

namespace A018820.P17303932912430815250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A018820.P17303932912430815250

namespace A018820

/-- `∩[A009003(n+1), A161992(n+1)]²` -/
def P17303932912430815250.Spec : Prop :=
  ∀ n, (P17303932912430815250.a n : ℤ) = A018820 (n + 1)

end A018820

/-! ## A018820.P13386287880139478739

`∩[A134422(n+1), A169580(n+1)]`
-/

namespace A018820.P13386287880139478739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018820.P13386287880139478739

namespace A018820

/-- `∩[A134422(n+1), A169580(n+1)]` -/
def P13386287880139478739.Spec : Prop :=
  ∀ n, (P13386287880139478739.a n : ℤ) = A018820 (n + 1)

end A018820

/-! ## A018820.P8842248442986791846

`∩[A169580(n+1), A266927(n+1)]`
-/

namespace A018820.P8842248442986791846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018820.P8842248442986791846

namespace A018820

/-- `∩[A169580(n+1), A266927(n+1)]` -/
def P8842248442986791846.Spec : Prop :=
  ∀ n, (P8842248442986791846.a n : ℤ) = A018820 (n + 1)

end A018820

/-! ## A018820.P10913027419459225642

`∩[A005767(n+1), A009003(n+1)]²`
-/

namespace A018820.P10913027419459225642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A018820.P10913027419459225642

namespace A018820

/-- `∩[A005767(n+1), A009003(n+1)]²` -/
def P10913027419459225642.Spec : Prop :=
  ∀ n, (P10913027419459225642.a n : ℤ) = A018820 (n + 1)

end A018820

/-! ## A018820.P10090557793471268787

`A000290(A341329(A000290(n+1)/(n+1)))`
-/

namespace A018820.P10090557793471268787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A341329 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A018820.P10090557793471268787

namespace A018820

/-- `A000290(A341329(A000290(n+1)/(n+1)))` -/
def P10090557793471268787.Spec : Prop :=
  ∀ n, P10090557793471268787.a n = A018820 (n + 1)

end A018820

/-! ## A018820.P6900735616584375410

`A002620(2*A341329(n+1))`
-/

namespace A018820.P6900735616584375410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A341329 (n + 1)).toNat

end

end A018820.P6900735616584375410

namespace A018820

/-- `A002620(2*A341329(n+1))` -/
def P6900735616584375410.Spec : Prop :=
  ∀ n, P6900735616584375410.a n = A018820 (n + 1)

end A018820

/-! ## A018820.P6529626236701526843

`A341329(n+1)^A000005(A340694(n))`
-/

namespace A018820.P6529626236701526843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341329 (n + 1) : ℚ) ^ (A000005 (A340694 n).toNat : ℤ)

end

end A018820.P6529626236701526843

namespace A018820

/-- `A341329(n+1)^A000005(A340694(n))` -/
def P6529626236701526843.Spec : Prop :=
  ∀ n, P6529626236701526843.a n = (A018820 (n + 1) : ℚ)

end A018820

/-! ## A018820.P961350661179709224

`A341329(n+1)^A000005(A031924(n+1))`
-/

namespace A018820.P961350661179709224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341329 (n + 1) : ℚ) ^ (A000005 (A031924 (n + 1)).toNat : ℤ)

end

end A018820.P961350661179709224

namespace A018820

/-- `A341329(n+1)^A000005(A031924(n+1))` -/
def P961350661179709224.Spec : Prop :=
  ∀ n, P961350661179709224.a n = (A018820 (n + 1) : ℚ)

end A018820

/-! ## A018820.P1851431072165601012

`A008217(4*A341329(n+1))`
-/

namespace A018820.P1851431072165601012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (4 * A341329 (n + 1)).toNat

end

end A018820.P1851431072165601012

namespace A018820

/-- `A008217(4*A341329(n+1))` -/
def P1851431072165601012.Spec : Prop :=
  ∀ n, P1851431072165601012.a n = A018820 (n + 1)

end A018820

/-! ## A018820.P16053815869040499907

`∩[A134422(n+1), A267986(n+1)]`
-/

namespace A018820.P16053815869040499907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018820.P16053815869040499907

namespace A018820

/-- `∩[A134422(n+1), A267986(n+1)]` -/
def P16053815869040499907.Spec : Prop :=
  ∀ n, (P16053815869040499907.a n : ℤ) = A018820 (n + 1)

end A018820

/-! ## A018820.P2517777170438457629

`A341329(n+1)^(2%A020714(n))`
-/

namespace A018820.P2517777170438457629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341329 (n + 1) : ℚ) ^ (Int.tmod 2 (A020714 n) : ℤ)

end

end A018820.P2517777170438457629

namespace A018820

/-- `A341329(n+1)^(2%A020714(n))` -/
def P2517777170438457629.Spec : Prop :=
  ∀ n, P2517777170438457629.a n = (A018820 (n + 1) : ℚ)

end A018820

/-! ## A018820.P7555346599537866560

`A341329(n+1)^A000005(A089120(n+1))`
-/

namespace A018820.P7555346599537866560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341329 (n + 1) : ℚ) ^ (A000005 (A089120 (n + 1)).toNat : ℤ)

end

end A018820.P7555346599537866560

namespace A018820

/-- `A341329(n+1)^A000005(A089120(n+1))` -/
def P7555346599537866560.Spec : Prop :=
  ∀ n, P7555346599537866560.a n = (A018820 (n + 1) : ℚ)

end A018820

/-! ## A018820.P8860825329283425554

`A341329(n+1)^A020639(A027693(n))`
-/

namespace A018820.P8860825329283425554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341329 (n + 1) : ℚ) ^ (A020639 (A027693 n).toNat : ℤ)

end

end A018820.P8860825329283425554

namespace A018820

/-- `A341329(n+1)^A020639(A027693(n))` -/
def P8860825329283425554.Spec : Prop :=
  ∀ n, P8860825329283425554.a n = (A018820 (n + 1) : ℚ)

end A018820

/-! ## A018820.P8904389945068776631

`∩[A169580(n+1), A355769(n+1)]`
-/

namespace A018820.P8904389945068776631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018820.P8904389945068776631

namespace A018820

/-- `∩[A169580(n+1), A355769(n+1)]` -/
def P8904389945068776631.Spec : Prop :=
  ∀ n, (P8904389945068776631.a n : ℤ) = A018820 (n + 1)

end A018820

/-! ## A018820.P14750173881767793902

`∩[A267986(n+1), A355769(n+1)]`
-/

namespace A018820.P14750173881767793902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018820.P14750173881767793902

namespace A018820

/-- `∩[A267986(n+1), A355769(n+1)]` -/
def P14750173881767793902.Spec : Prop :=
  ∀ n, (P14750173881767793902.a n : ℤ) = A018820 (n + 1)

end A018820

/-! ## A018820.P5027834577040846167

`∩[A169580(n+1), A264732(n+1)]`
-/

namespace A018820.P5027834577040846167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018820.P5027834577040846167

namespace A018820

/-- `∩[A169580(n+1), A264732(n+1)]` -/
def P5027834577040846167.Spec : Prop :=
  ∀ n, (P5027834577040846167.a n : ℤ) = A018820 (n + 1)

end A018820

/-!
# A018821: n is the sum of k nonzero squares for all 2 <= k <= n-14.

The programs for A018821, there is no canonical definition to state claims against.
-/

/-! ## A018821.P8186453503520412197

`∩[A000404(n+1), A018822(n+1)]`
-/

namespace A018821.P8186453503520412197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018821.P8186453503520412197

/-! ## A018821.P7137905190984722882

`∩[A018822(n+1), comp[A018825(n+1)]]`
-/

namespace A018821.P7137905190984722882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018822 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A018821.P7137905190984722882

/-! ## A018821.P5009124561937860585

`∩[A018822(n+1), A272119(n+1)]`
-/

namespace A018821.P5009124561937860585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018821.P5009124561937860585

/-!
# A018822: n is the sum of k nonzero squares for all 3 <= k <= n-14.

The programs for A018822, there is no canonical definition to state claims against.
-/

/-! ## A018822.P14646565775080487361

`lt[A293881(A198318(n)), A025427(n)]`
-/

namespace A018822.P14646565775080487361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (A198318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A018822.P14646565775080487361

/-!
# A018823: n is the sum of k nonzero squares for all 4 <= k <= n-14.

The programs for A018823, the canonical program `A018823.P12096141700946058092` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018823 has offset 1).

The definition of A018823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018823.P12096141700946058092

`A000414(A011760(n+1)+7)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018823

/-- `A000414(A011760(n+1)+7)` -/
def P12096141700946058092.Spec : Prop :=
  ∀ n, P12096141700946058092.a n = A018823 (n + 1)

theorem P12096141700946058092.correct : P12096141700946058092.Spec := by
  intro n
  simp only [A018823, Nat.add_sub_cancel]

end A018823

/-! ## A018823.P13557630286654040510

`A000414(A140823(n+3)+4)`
-/

namespace A018823.P13557630286654040510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000414 (A140823 (n + 3) + 4).toNat

end

end A018823.P13557630286654040510

namespace A018823

/-- `A000414(A140823(n+3)+4)` -/
def P13557630286654040510.Spec : Prop :=
  ∀ n, P13557630286654040510.a n = A018823 (n + 1)

end A018823

/-! ## A018823.P10718334190889208533

`lt[1, A037216(n)*A037216(A339433(n))]`
-/

namespace A018823.P10718334190889208533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037216 n * A037216 (A339433 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A018823.P10718334190889208533

namespace A018823

/-- `lt[1, A037216(n)*A037216(A339433(n))]` -/
def P10718334190889208533.Spec : Prop :=
  ∀ n, (P10718334190889208533.a n : ℤ) = A018823 (n + 1)

end A018823

/-! ## A018823.P946783401653611708

`lt[A204892(n+1), A003573(A185216(n))]`
-/

namespace A018823.P946783401653611708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003573 (A185216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A018823.P946783401653611708

namespace A018823

/-- `lt[A204892(n+1), A003573(A185216(n))]` -/
def P946783401653611708.Spec : Prop :=
  ∀ n, (P946783401653611708.a n : ℤ) = A018823 (n + 1)

end A018823

/-! ## A018823.P17387376715957082482

`A029837(A076766(n))+18`
-/

namespace A018823.P17387376715957082482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A076766 n).toNat + 18

end

end A018823.P17387376715957082482

namespace A018823

/-- `A029837(A076766(n))+18` -/
def P17387376715957082482.Spec : Prop :=
  ∀ n, P17387376715957082482.a n = A018823 (n + 1)

end A018823

/-!
# A018824: n is the sum of k nonzero squares for all 5 <= k <= n-14 (contains all integers >= 19 except 33).

The programs for A018824, the canonical program `A018824.P6282990863347909248` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018824 has offset 1).

The definition of A018824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018824.P6282990863347909248

`A047700(n+8)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018824

/-- `A047700(n+8)` -/
def P6282990863347909248.Spec : Prop :=
  ∀ n, P6282990863347909248.a n = A018824 (n + 1)

theorem P6282990863347909248.correct : P6282990863347909248.Spec := by
  intro n
  simp only [A018824, Nat.add_sub_cancel]

end A018824

/-!
# A018825: Numbers that are not the sum of 2 nonzero squares.

The programs for A018825, the canonical program `A018825.P17104001644328074366` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018825 has offset 1).

The definition of A018825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018825.P4916226358951116800

`lt[n*A025426(n), n]`
-/

namespace A018825.P4916226358951116800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025426 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A018825.P4916226358951116800

namespace A018825

/-- `lt[n*A025426(n), n]` -/
def P4916226358951116800.Spec : Prop :=
  ∀ n, (P4916226358951116800.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P3669233556411918250

`eq[0, A025426(n+1)]+1`
-/

namespace A018825.P3669233556411918250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018825.P3669233556411918250

namespace A018825

/-- `eq[0, A025426(n+1)]+1` -/
def P3669233556411918250.Spec : Prop :=
  ∀ n, (P3669233556411918250.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P17576326723406659209

`comp[A000404(n+1)-1]+1`
-/

namespace A018825.P17576326723406659209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A018825.P17576326723406659209

namespace A018825

/-- `comp[A000404(n+1)-1]+1` -/
def P17576326723406659209.Spec : Prop :=
  ∀ n, (P17576326723406659209.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P13572513954528422273

`eq[1, A025426(a(A025426(n)))]` with `a(0)=2`
-/

namespace A018825.P13572513954528422273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A025426 (f2 (A025426 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018825.P13572513954528422273

namespace A018825

/-- `eq[1, A025426(a(A025426(n)))]` -/
def P13572513954528422273.Spec : Prop :=
  ∀ n, (P13572513954528422273.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P14007562535309529078

`∪[A000548(n+1), A022544(n+1)]`
-/

namespace A018825.P14007562535309529078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018825.P14007562535309529078

namespace A018825

/-- `∪[A000548(n+1), A022544(n+1)]` -/
def P14007562535309529078.Spec : Prop :=
  ∀ n, (P14007562535309529078.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P12290738485569424870

`∩[A004439(n+1), A183300(n+1)]`
-/

namespace A018825.P12290738485569424870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018825.P12290738485569424870

namespace A018825

/-- `∩[A004439(n+1), A183300(n+1)]` -/
def P12290738485569424870.Spec : Prop :=
  ∀ n, (P12290738485569424870.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P17104001644328074366

`comp[A069011(comp[∑[n+1]])]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018825

/-- `comp[A069011(comp[∑[n+1]])]` -/
def P17104001644328074366.Spec : Prop :=
  ∀ n, (P17104001644328074366.a n : ℤ) = A018825 (n + 1)

theorem P17104001644328074366.correct : P17104001644328074366.Spec := by
  intro n
  simp only [A018825, Nat.add_sub_cancel]

end A018825

/-! ## A018825.P9060946378700925154

`lt[A347801(n), row(n)]`
-/

namespace A018825.P9060946378700925154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A018825.P9060946378700925154

namespace A018825

/-- `lt[A347801(n), row(n)]` -/
def P9060946378700925154.Spec : Prop :=
  ∀ n, (P9060946378700925154.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P16954713978647055590

`lt[1, A266314(n)]+1`
-/

namespace A018825.P16954713978647055590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A018825.P16954713978647055590

namespace A018825

/-- `lt[1, A266314(n)]+1` -/
def P16954713978647055590.Spec : Prop :=
  ∀ n, (P16954713978647055590.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P17947261574400687434

`lt[n*A037214(n), n]`
-/

namespace A018825.P17947261574400687434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037214 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A018825.P17947261574400687434

namespace A018825

/-- `lt[n*A037214(n), n]` -/
def P17947261574400687434.Spec : Prop :=
  ∀ n, (P17947261574400687434.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P6127310101001484259

`lt[n*A063725(n), n]`
-/

namespace A018825.P6127310101001484259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063725 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A018825.P6127310101001484259

namespace A018825

/-- `lt[n*A063725(n), n]` -/
def P6127310101001484259.Spec : Prop :=
  ∀ n, (P6127310101001484259.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P10857538921637046231

`lt[A037214(n+1), 1]+1`
-/

namespace A018825.P10857538921637046231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018825.P10857538921637046231

namespace A018825

/-- `lt[A037214(n+1), 1]+1` -/
def P10857538921637046231.Spec : Prop :=
  ∀ n, (P10857538921637046231.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P13915117011043557616

`lt[A063725(n+1), 1]+1`
-/

namespace A018825.P13915117011043557616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018825.P13915117011043557616

namespace A018825

/-- `lt[A063725(n+1), 1]+1` -/
def P13915117011043557616.Spec : Prop :=
  ∀ n, (P13915117011043557616.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P11491341541938277044

`lt[A347801(n+1), 1]+1`
-/

namespace A018825.P11491341541938277044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018825.P11491341541938277044

namespace A018825

/-- `lt[A347801(n+1), 1]+1` -/
def P11491341541938277044.Spec : Prop :=
  ∀ n, (P11491341541938277044.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P3983052950574123077

`eq[A000007(n), A025426(n)]`
-/

namespace A018825.P3983052950574123077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018825.P3983052950574123077

namespace A018825

/-- `eq[A000007(n), A025426(n)]` -/
def P3983052950574123077.Spec : Prop :=
  ∀ n, (P3983052950574123077.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P1982577992423232952

`eq[A000038(n), A025426(n)]`
-/

namespace A018825.P1982577992423232952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018825.P1982577992423232952

namespace A018825

/-- `eq[A000038(n), A025426(n)]` -/
def P1982577992423232952.Spec : Prop :=
  ∀ n, (P1982577992423232952.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P5553879331906848011

`eq[A000007(n), A037214(n)]`
-/

namespace A018825.P5553879331906848011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018825.P5553879331906848011

namespace A018825

/-- `eq[A000007(n), A037214(n)]` -/
def P5553879331906848011.Spec : Prop :=
  ∀ n, (P5553879331906848011.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P11809600716565764066

`eq[A000038(n), A037214(n)]`
-/

namespace A018825.P11809600716565764066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018825.P11809600716565764066

namespace A018825

/-- `eq[A000038(n), A037214(n)]` -/
def P11809600716565764066.Spec : Prop :=
  ∀ n, (P11809600716565764066.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P11520092369257042783

`eq[A000007(n), A063725(n)]`
-/

namespace A018825.P11520092369257042783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018825.P11520092369257042783

namespace A018825

/-- `eq[A000007(n), A063725(n)]` -/
def P11520092369257042783.Spec : Prop :=
  ∀ n, (P11520092369257042783.a n : ℤ) = A018825 (n + 1)

end A018825

/-! ## A018825.P17366968064548374872

`eq[A000038(n), A063725(n)]`
-/

namespace A018825.P17366968064548374872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018825.P17366968064548374872

namespace A018825

/-- `eq[A000038(n), A063725(n)]` -/
def P17366968064548374872.Spec : Prop :=
  ∀ n, (P17366968064548374872.a n : ℤ) = A018825 (n + 1)

end A018825

/-!
# A018826: Numbers n such that n is a substring of its square when both are written in base 2.

The programs for A018826, there is no canonical definition to state claims against.
-/

/-! ## A018826.P3927579128339828491

`lt[0, A076141(n)]`
-/

namespace A018826.P3927579128339828491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A018826.P3927579128339828491

/-! ## A018826.P2512679167214962800

`comp[A136492(n+1)]`
-/

namespace A018826.P2512679167214962800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A018826.P2512679167214962800

/-! ## A018826.P10040144209643030353

`eq[1, A076141(A028310(n))]`
-/

namespace A018826.P10040144209643030353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018826.P10040144209643030353

/-! ## A018826.P16347452122070367048

`filter[A103205(n), A076141(#)]`
-/

namespace A018826.P16347452122070367048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A018826.P16347452122070367048

/-! ## A018826.P14777352813099165603

`filter[A118763(n), A076141(#)]`
-/

namespace A018826.P14777352813099165603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A018826.P14777352813099165603

/-! ## A018826.P4525707443843122535

`filter[A118764(n), A076141(#)]`
-/

namespace A018826.P4525707443843122535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A018826.P4525707443843122535

/-! ## A018826.P9674397498788045254

`filter[A132368(n), A076141(#)]`
-/

namespace A018826.P9674397498788045254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A018826.P9674397498788045254

/-! ## A018826.P16761007061261686827

`filter[A159958(n), A076141(#)]`
-/

namespace A018826.P16761007061261686827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A018826.P16761007061261686827

/-! ## A018826.P8646017560977936127

`filter[A222249(n), A076141(#)]`
-/

namespace A018826.P8646017560977936127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A018826.P8646017560977936127

/-! ## A018826.P8432958577495465824

`filter[A263313(n), A076141(#)]`
-/

namespace A018826.P8432958577495465824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A018826.P8432958577495465824

/-!
# A018829: Numbers n such that n is a substring of its square in base 5 (written in base 10).

The programs for A018829, there is no canonical definition to state claims against.
-/

/-! ## A018829.P1870138774060966713

`A064458(A277016(n)+A000283(n))`
-/

namespace A018829.P1870138774060966713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A277016 n + A000283 n).toNat

end

end A018829.P1870138774060966713

/-!
# A018831: Numbers n such that n is a substring of its square in base 7 (written in base 10).

The programs for A018831, there is no canonical definition to state claims against.
-/

/-! ## A018831.P1732776559874277347

`xor(A001222(A102436(n+1)), A102428(n))`
-/

namespace A018831.P1732776559874277347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A102436 (n + 1)).toNat) (A102428 n)

end

end A018831.P1732776559874277347

/-!
# A018832: Numbers n such that n is a substring of its square in base 8 (written in base 10).

The programs for A018832, there is no canonical definition to state claims against.
-/

/-! ## A018832.P7699975054939882094

`A185238(A000326(n))+n^3`
-/

namespace A018832.P7699975054939882094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A000326 n).toNat + (n ^ 3 : ℤ)

end

end A018832.P7699975054939882094

/-! ## A018832.P11278131810626579803

`A185238(A056000(n))+n^3`
-/

namespace A018832.P11278131810626579803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A056000 n).toNat + (n ^ 3 : ℤ)

end

end A018832.P11278131810626579803

/-!
# A018834: Numbers k such that the decimal expansion of k^2 contains k as a substring.

The programs for A018834, there is no canonical definition to state claims against.
-/

/-! ## A018834.P16268283852994910190

`∪[A029943(n+1), A046836(n+1)]`
-/

namespace A018834.P16268283852994910190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018834.P16268283852994910190

/-! ## A018834.P12070825038640752978

`eq[2, A045537(n)]`
-/

namespace A018834.P12070825038640752978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018834.P12070825038640752978

/-! ## A018834.P17006244847259169429

`A029943(A242474(n+1))`
-/

namespace A018834.P17006244847259169429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029943 (A242474 (n + 1)).toNat

end

end A018834.P17006244847259169429

/-! ## A018834.P2685643238097104502

`A029943(A351374(n+1))`
-/

namespace A018834.P2685643238097104502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029943 (A351374 (n + 1)).toNat

end

end A018834.P2685643238097104502

/-! ## A018834.P16538852793871525616

`A004526(2*A029943(n+1))`
-/

namespace A018834.P16538852793871525616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A029943 (n + 1)).toNat

end

end A018834.P16538852793871525616

/-!
# A018835: Minimal number of smaller integer-sided squares that tile an n X n square.

The programs for A018835, there is no canonical definition to state claims against.
-/

/-! ## A018835.P7107049299483526576

`A005670(A092067(n+1))`
-/

namespace A018835.P7107049299483526576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (A092067 (n + 1)).toNat

end

end A018835.P7107049299483526576

/-! ## A018835.P11087742948813737152

`A005670(A020639(n+2))`
-/

namespace A018835.P11087742948813737152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (A020639 (n + 2)).toNat

end

end A018835.P11087742948813737152

/-! ## A018835.P17606091555567472286

`A211302(A055396(n+2))`
-/

namespace A018835.P17606091555567472286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211302 (A055396 (n + 2)).toNat

end

end A018835.P17606091555567472286

/-! ## A018835.P17024400510166439990

`A005670(A102457(n+3))`
-/

namespace A018835.P17024400510166439990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (A102457 (n + 3)).toNat

end

end A018835.P17024400510166439990

/-! ## A018835.P17588106766569545590

`A005670(p?[A136181(n+2)])`
-/

namespace A018835.P17588106766569545590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A018835.P17588106766569545590

/-!
# A018836: Number of squares on infinite chessboard at <= n knight's moves from a fixed square.

The programs for A018836, the canonical program `A018836.P14039530447609341193` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018836 has offset 0).

The definition of A018836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018836.P14039530447609341193

`ogf((1+6x+17x^2+12x^3-8x^4-4x^5+4x^6)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018836

/-- `ogf((1+6x+17x^2+12x^3-8x^4-4x^5+4x^6)/(1-3x+3x^2-x^3))` -/
def P14039530447609341193.Spec : Prop :=
  ∀ n, P14039530447609341193.a n = A018836 n

theorem P14039530447609341193.correct : P14039530447609341193.Spec := by
  intro n
  simp only [A018836]

end A018836

/-! ## A018836.P12265327264930151795

`∑[A018842(n)]`
-/

namespace A018836.P12265327264930151795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018836.P12265327264930151795

namespace A018836

/-- `∑[A018842(n)]` -/
def P12265327264930151795.Spec : Prop :=
  ∀ n, P12265327264930151795.a n = A018836 n

end A018836

/-! ## A018836.P780696092923995725

`A118312(n+1)+A118312(n)-A018842(n+1)`
-/

namespace A018836.P780696092923995725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118312 (n + 1) + (A118312 n - A018842 (n + 1))

end

end A018836.P780696092923995725

namespace A018836

/-- `A118312(n+1)+A118312(n)-A018842(n+1)` -/
def P780696092923995725.Spec : Prop :=
  ∀ n, P780696092923995725.a n = A018836 n

end A018836

/-! ## A018836.P17795588851483292403

`∑[A038522(2*n)]`
-/

namespace A018836.P17795588851483292403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038522 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018836.P17795588851483292403

namespace A018836

/-- `∑[A038522(2*n)]` -/
def P17795588851483292403.Spec : Prop :=
  ∀ n, P17795588851483292403.a n = A018836 n

end A018836

/-! ## A018836.P3311800050138981008

`A038522(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A018836.P3311800050138981008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038522 (n + n) + a (n - 1)

end

end A018836.P3311800050138981008

namespace A018836

/-- `A038522(n+n)+a(n-1)` -/
def P3311800050138981008.Spec : Prop :=
  ∀ n, P3311800050138981008.a n = A018836 n

end A018836

/-! ## A018836.P17236642396336397995

`∑[record[A038522(A014681(n))]]`
-/

namespace A018836.P17236642396336397995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038522 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018836.P17236642396336397995

namespace A018836

/-- `∑[record[A038522(A014681(n))]]` -/
def P17236642396336397995.Spec : Prop :=
  ∀ n, P17236642396336397995.a n = A018836 n

end A018836

/-! ## A018836.P5122130943038904964

`∑[record[A038522(A131452(n))]]`
-/

namespace A018836.P5122130943038904964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038522 (A131452 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018836.P5122130943038904964

namespace A018836

/-- `∑[record[A038522(A131452(n))]]` -/
def P5122130943038904964.Spec : Prop :=
  ∀ n, P5122130943038904964.a n = A018836 n

end A018836

/-! ## A018836.P13982965064564712565

`∑[record[A038522(A153733(n))]]`
-/

namespace A018836.P13982965064564712565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038522 (A153733 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018836.P13982965064564712565

namespace A018836

/-- `∑[record[A038522(A153733(n))]]` -/
def P13982965064564712565.Spec : Prop :=
  ∀ n, P13982965064564712565.a n = A018836 n

end A018836

/-! ## A018836.P12870303876315703420

`∑[record[A038522(A073898(n+1))]]`
-/

namespace A018836.P12870303876315703420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038522 (A073898 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018836.P12870303876315703420

namespace A018836

/-- `∑[record[A038522(A073898(n+1))]]` -/
def P12870303876315703420.Spec : Prop :=
  ∀ n, P12870303876315703420.a n = A018836 n

end A018836

/-! ## A018836.P12887782348679434204

`∑[record[A038522(A115273(n))]]`
-/

namespace A018836.P12887782348679434204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038522 (A115273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018836.P12887782348679434204

namespace A018836

/-- `∑[record[A038522(A115273(n))]]` -/
def P12887782348679434204.Spec : Prop :=
  ∀ n, P12887782348679434204.a n = A018836 n

end A018836

/-!
# A018837: Number of steps for knight to reach (n,0) on infinite chessboard.

The programs for A018837, the canonical program `A018837.P7998030943981064661` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018837 has offset 0).

The definition of A018837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018837.P7998030943981064661

`ogf((3x-x^2+x^3-x^4-2x^5+2x^6)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018837

/-- `ogf((3x-x^2+x^3-x^4-2x^5+2x^6)/(1-x-x^4+x^5))` -/
def P7998030943981064661.Spec : Prop :=
  ∀ n, P7998030943981064661.a n = A018837 n

theorem P7998030943981064661.correct : P7998030943981064661.Spec := by
  intro n
  simp only [A018837]

end A018837

/-! ## A018837.P12457294932435054562

`a(n-4)+2` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3, a(4)=2, a(5)=3`
-/

namespace A018837.P12457294932435054562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3, 2, 3] fun n a =>
  a (n - 4) + 2

end

end A018837.P12457294932435054562

namespace A018837

/-- `a(n-4)+2` -/
def P12457294932435054562.Spec : Prop :=
  ∀ n, (P12457294932435054562.a n : ℤ) = A018837 n

end A018837

/-! ## A018837.P14341433607681082751

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=-1, a(3)=1, a(4)=-1, a(5)=1, a(6)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A018837.P14341433607681082751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -1, 1, -1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018837.P14341433607681082751

namespace A018837

/-- `∑[floor(a(n-4))]` -/
def P14341433607681082751.Spec : Prop :=
  ∀ n, P14341433607681082751.a n = A018837 n

end A018837

/-! ## A018837.P9628694418576900176

`n%2-(a(n-2)-n)` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A018837.P9628694418576900176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2, 3] fun n a =>
  ((n % 2 : ℕ) : ℤ) - (a (n - 2) - (n : ℤ))

end

end A018837.P9628694418576900176

namespace A018837

/-- `n%2-(a(n-2)-n)` -/
def P9628694418576900176.Spec : Prop :=
  ∀ n, P9628694418576900176.a n = A018837 n

end A018837

/-! ## A018837.P9411160453295138663

`A083219(2*char[1]+n)`
-/

namespace A018837.P9411160453295138663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (2 * (if ∃ j, f1 j = n then 1 else 0) + n)

end

end A018837.P9411160453295138663

namespace A018837

/-- `A083219(2*char[1]+n)` -/
def P9411160453295138663.Spec : Prop :=
  ∀ n, P9411160453295138663.a n = A018837 n

end A018837

/-! ## A018837.P5172165351637529854

`n-A052928(a(n-2)%n)` with `a(0)=0, a(1)=3`
-/

namespace A018837.P5172165351637529854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (n : ℤ) - A052928 (Int.tmod (a (n - 2)) (n : ℤ)).toNat

end

end A018837.P5172165351637529854

namespace A018837

/-- `n-A052928(a(n-2)%n)` -/
def P5172165351637529854.Spec : Prop :=
  ∀ n, P5172165351637529854.a n = A018837 n

end A018837

/-! ## A018837.P2256474711234273604

`A183042(n)-A183050(n)`
-/

namespace A018837.P2256474711234273604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183042 n - A183050 n

end

end A018837.P2256474711234273604

namespace A018837

/-- `A183042(n)-A183050(n)` -/
def P2256474711234273604.Spec : Prop :=
  ∀ n, P2256474711234273604.a n = A018837 n

end A018837

/-! ## A018837.P1087414758703745519

`lcm(A083219(n), A260196(n))`
-/

namespace A018837.P1087414758703745519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083219 n) (A260196 n)

end

end A018837.P1087414758703745519

namespace A018837

/-- `lcm(A083219(n), A260196(n))` -/
def P1087414758703745519.Spec : Prop :=
  ∀ n, (P1087414758703745519.a n : ℤ) = A018837 n

end A018837

/-! ## A018837.P18048900198632024414

`2*A183044(n)-A183046(n)`
-/

namespace A018837.P18048900198632024414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183044 n - A183046 n

end

end A018837.P18048900198632024414

namespace A018837

/-- `2*A183044(n)-A183046(n)` -/
def P18048900198632024414.Spec : Prop :=
  ∀ n, P18048900198632024414.a n = A018837 n

end A018837

/-! ## A018837.P11512326256474692158

`xor(A130706(n), A187180(n+1))`
-/

namespace A018837.P11512326256474692158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130706 n) (A187180 (n + 1))

end

end A018837.P11512326256474692158

namespace A018837

/-- `xor(A130706(n), A187180(n+1))` -/
def P11512326256474692158.Spec : Prop :=
  ∀ n, P11512326256474692158.a n = A018837 n

end A018837

/-! ## A018837.P10257371597883200014

`A047878(n)+A083219(n)-A008611(n+1)`
-/

namespace A018837.P10257371597883200014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 n + (A083219 n - A008611 (n + 1))

end

end A018837.P10257371597883200014

namespace A018837

/-- `A047878(n)+A083219(n)-A008611(n+1)` -/
def P10257371597883200014.Spec : Prop :=
  ∀ n, P10257371597883200014.a n = A018837 n

end A018837

/-! ## A018837.P14543467607682994225

`A106249((char[1]+1)*(n+1))`
-/

namespace A018837.P14543467607682994225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 1))

end

end A018837.P14543467607682994225

namespace A018837

/-- `A106249((char[1]+1)*(n+1))` -/
def P14543467607682994225.Spec : Prop :=
  ∀ n, P14543467607682994225.a n = A018837 n

end A018837

/-! ## A018837.P8881779267176761549

`A106249(n+1)+A000038(A106249(n))`
-/

namespace A018837.P8881779267176761549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (n + 1) + A000038 (A106249 n).toNat

end

end A018837.P8881779267176761549

namespace A018837

/-- `A106249(n+1)+A000038(A106249(n))` -/
def P8881779267176761549.Spec : Prop :=
  ∀ n, P8881779267176761549.a n = A018837 n

end A018837

/-! ## A018837.P18234741880936240792

`A106249(n+1)+A047878(n)-A008611(n+1)`
-/

namespace A018837.P18234741880936240792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (n + 1) + (A047878 n - A008611 (n + 1))

end

end A018837.P18234741880936240792

namespace A018837

/-- `A106249(n+1)+A047878(n)-A008611(n+1)` -/
def P18234741880936240792.Spec : Prop :=
  ∀ n, P18234741880936240792.a n = A018837 n

end A018837

/-! ## A018837.P12953536648800404054

`A047878(A047269(n+1))`
-/

namespace A018837.P12953536648800404054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A047269 (n + 1)).toNat

end

end A018837.P12953536648800404054

namespace A018837

/-- `A047878(A047269(n+1))` -/
def P12953536648800404054.Spec : Prop :=
  ∀ n, P12953536648800404054.a n = A018837 n

end A018837

/-! ## A018837.P17826124903234396572

`A047878(A047246(n+2)-1)`
-/

namespace A018837.P17826124903234396572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A047246 (n + 2) - 1).toNat

end

end A018837.P17826124903234396572

namespace A018837

/-- `A047878(A047246(n+2)-1)` -/
def P17826124903234396572.Spec : Prop :=
  ∀ n, P17826124903234396572.a n = A018837 n

end A018837

/-! ## A018837.P4481880815723021251

`A047878(A047227(n+2)-2)`
-/

namespace A018837.P4481880815723021251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A047227 (n + 2) - 2).toNat

end

end A018837.P4481880815723021251

namespace A018837

/-- `A047878(A047227(n+2)-2)` -/
def P4481880815723021251.Spec : Prop :=
  ∀ n, P4481880815723021251.a n = A018837 n

end A018837

/-! ## A018837.P15147494909693394581

`A047878(2*n-A285869(n))`
-/

namespace A018837.P15147494909693394581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 ((2 * n : ℤ) - A285869 n).toNat

end

end A018837.P15147494909693394581

namespace A018837

/-- `A047878(2*n-A285869(n))` -/
def P15147494909693394581.Spec : Prop :=
  ∀ n, P15147494909693394581.a n = A018837 n

end A018837

/-! ## A018837.P7698786533154326874

`A047878(n-A285869(n)+n)`
-/

namespace A018837.P7698786533154326874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 ((n : ℤ) - A285869 n + (n : ℤ)).toNat

end

end A018837.P7698786533154326874

namespace A018837

/-- `A047878(n-A285869(n)+n)` -/
def P7698786533154326874.Spec : Prop :=
  ∀ n, P7698786533154326874.a n = A018837 n

end A018837

/-! ## A018837.P7938853723352099939

`A047878(n-(A285869(n)-n))`
-/

namespace A018837.P7938853723352099939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 ((n : ℤ) - (A285869 n - (n : ℤ))).toNat

end

end A018837.P7938853723352099939

namespace A018837

/-- `A047878(n-(A285869(n)-n))` -/
def P7938853723352099939.Spec : Prop :=
  ∀ n, P7938853723352099939.a n = A018837 n

end A018837

/-!
# A018838: Minimum number of steps for a knight to reach (n,n) on an infinite chessboard.

The programs for A018838, the canonical program `A018838.P11226184692269148407` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018838 has offset 0).

The definition of A018838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018838.P12512338434271058386

`ogf((2x+2x^2-2x^3-2x^5+2x^6)/(1-x-x^3+x^4))`
-/

namespace A018838.P12512338434271058386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, -2, 0, -2, 2] [1, -1, 0, -1, 1] n

end

end A018838.P12512338434271058386

namespace A018838

/-- `ogf((2x+2x^2-2x^3-2x^5+2x^6)/(1-x-x^3+x^4))` -/
def P12512338434271058386.Spec : Prop :=
  ∀ n, P12512338434271058386.a n = A018838 n

end A018838

/-! ## A018838.P11226184692269148407

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=2, a(4)=4, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018838

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P11226184692269148407.Spec : Prop :=
  ∀ n, P11226184692269148407.a n = A018838 n

theorem P11226184692269148407.correct : P11226184692269148407.Spec := by
  intro n
  simp only [A018838]

end A018838

/-! ## A018838.P6127662405404994414

`a(n-3)+2` with `a(0)=0, a(1)=2, a(2)=4, a(3)=2, a(4)=4, a(5)=4`
-/

namespace A018838.P6127662405404994414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 2, 4, 4] fun n a =>
  a (n - 3) + 2

end

end A018838.P6127662405404994414

namespace A018838

/-- `a(n-3)+2` -/
def P6127662405404994414.Spec : Prop :=
  ∀ n, (P6127662405404994414.a n : ℤ) = A018838 n

end A018838

/-! ## A018838.P14105045433201148875

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=-2, a(4)=2, a(5)=0, a(6)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A018838.P14105045433201148875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, -2, 2, 0, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018838.P14105045433201148875

namespace A018838

/-- `∑[floor(a(n-3))]` -/
def P14105045433201148875.Spec : Prop :=
  ∀ n, P14105045433201148875.a n = A018838 n

end A018838

/-! ## A018838.P5947222870636513844

`∑[a(2-a(n-2))-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A018838.P5947222870636513844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  f1 (2 - f1 (n - 2)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018838.P5947222870636513844

namespace A018838

/-- `∑[a(2-a(n-2))-a(n-1)]` -/
def P5947222870636513844.Spec : Prop :=
  ∀ n, P5947222870636513844.a n = A018838 n

end A018838

/-! ## A018838.P180802798465433459

`(char[2]+1)*A302402(n)`
-/

namespace A018838.P180802798465433459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A302402 n

end

end A018838.P180802798465433459

namespace A018838

/-- `(char[2]+1)*A302402(n)` -/
def P180802798465433459.Spec : Prop :=
  ∀ n, P180802798465433459.a n = A018838 n

end A018838

/-! ## A018838.P2190405413388521985

`A302402(n*A294619(n))`
-/

namespace A018838.P2190405413388521985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 ((n : ℤ) * A294619 n).toNat

end

end A018838.P2190405413388521985

namespace A018838

/-- `A302402(n*A294619(n))` -/
def P2190405413388521985.Spec : Prop :=
  ∀ n, P2190405413388521985.a n = A018838 n

end A018838

/-! ## A018838.P1976014109773045730

`A302402(n*A329684(n))`
-/

namespace A018838.P1976014109773045730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 ((n : ℤ) * A329684 n).toNat

end

end A018838.P1976014109773045730

namespace A018838

/-- `A302402(n*A329684(n))` -/
def P1976014109773045730.Spec : Prop :=
  ∀ n, P1976014109773045730.a n = A018838 n

end A018838

/-! ## A018838.P7469086589825429792

`A208994(char[2]+1+n)-A208994(n)`
-/

namespace A018838.P7469086589825429792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) - A208994 n

end

end A018838.P7469086589825429792

namespace A018838

/-- `A208994(char[2]+1+n)-A208994(n)` -/
def P7469086589825429792.Spec : Prop :=
  ∀ n, P7469086589825429792.a n = A018838 n

end A018838

/-! ## A018838.P4202966751325179984

`A294619(n)²+A302402(n)-A294619(n)`
-/

namespace A018838.P4202966751325179984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n ^ 2 + (A302402 n - A294619 n)

end

end A018838.P4202966751325179984

namespace A018838

/-- `A294619(n)²+A302402(n)-A294619(n)` -/
def P4202966751325179984.Spec : Prop :=
  ∀ n, P4202966751325179984.a n = A018838 n

end A018838

/-! ## A018838.P8258306959301656882

`A302402(n)+A329684(n)²-A329684(n)`
-/

namespace A018838.P8258306959301656882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 n + (A329684 n ^ 2 - A329684 n)

end

end A018838.P8258306959301656882

namespace A018838

/-- `A302402(n)+A329684(n)²-A329684(n)` -/
def P8258306959301656882.Spec : Prop :=
  ∀ n, P8258306959301656882.a n = A018838 n

end A018838

/-! ## A018838.P13466083637354613544

`A052928(A004396(n+2)+char[2])`
-/

namespace A018838.P13466083637354613544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A004396 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A018838.P13466083637354613544

namespace A018838

/-- `A052928(A004396(n+2)+char[2])` -/
def P13466083637354613544.Spec : Prop :=
  ∀ n, P13466083637354613544.a n = A018838 n

end A018838

/-! ## A018838.P9215126761986955797

`A052928(char[2]+A004523(n+1)+1)`
-/

namespace A018838.P9215126761986955797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A004523 (n + 1) + 1)).toNat

end

end A018838.P9215126761986955797

namespace A018838

/-- `A052928(char[2]+A004523(n+1)+1)` -/
def P9215126761986955797.Spec : Prop :=
  ∀ n, P9215126761986955797.a n = A018838 n

end A018838

/-! ## A018838.P18163773273533084371

`A302402(n)^(A055891(n)%2+1)`
-/

namespace A018838.P18163773273533084371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302402 n : ℚ) ^ (Int.tmod (A055891 n) 2 + 1 : ℤ)

end

end A018838.P18163773273533084371

namespace A018838

/-- `A302402(n)^(A055891(n)%2+1)` -/
def P18163773273533084371.Spec : Prop :=
  ∀ n, P18163773273533084371.a n = (A018838 n : ℚ)

end A018838

/-! ## A018838.P12572373633690778630

`A183043(∑[n]+n)`
-/

namespace A018838.P12572373633690778630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183043 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A018838.P12572373633690778630

namespace A018838

/-- `A183043(∑[n]+n)` -/
def P12572373633690778630.Spec : Prop :=
  ∀ n, P12572373633690778630.a n = A018838 n

end A018838

/-!
# A018839: Squares on infinite chessboard at n moves from center using a {2,3} fairy knight (or zebra).

The programs for A018839, the canonical program `A018839.P2658286985825594665` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018839 has offset 0).

The definition of A018839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018839.P2658286985825594665

`ogf((1+6x+17x^2+32x^3+48x^4+8x^5-44x^6-24x^7+12x^8+12x^9)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018839

/-- `ogf((1+6x+17x^2+32x^3+48x^4+8x^5-44x^6-24x^7+12x^8+12x^9)/(1-2x+x^2))` -/
def P2658286985825594665.Spec : Prop :=
  ∀ n, P2658286985825594665.a n = A018839 n

theorem P2658286985825594665.correct : P2658286985825594665.Spec := by
  intro n
  simp only [A018839]

end A018839

/-!
# A018840: Number of steps for {2,3} fairy knight to reach (n,0) on infinite chessboard.

The programs for A018840, the canonical program `A018840.P9953061803301144968` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018840 has offset 0).

The definition of A018840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018840.P9953061803301144968

`ogf((5x-x^2+x^3-3x^4+3x^5-3x^6-2x^7+2x^10-2x^13+2x^14-2x^17+2x^18)/(1-x-x^6+x^7))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018840

/-- `ogf((5x-x^2+x^3-3x^4+3x^5-3x^6-2x^7+2x^10-2x^13+2x^14-2x^17+2x^18)/(1-x-x^6+x^7))` -/
def P9953061803301144968.Spec : Prop :=
  ∀ n, P9953061803301144968.a n = A018840 n

theorem P9953061803301144968.correct : P9953061803301144968.Spec := by
  intro n
  simp only [A018840]

end A018840

/-!
# A018841: Number of steps for {2,3} fairy knight to reach (n,n) on infinite chessboard.

The programs for A018841, the canonical program `A018841.P14105402096119489635` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018841 has offset 0).

The definition of A018841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018841.P14105402096119489635

`ogf((2x+2x^2+2x^3-2x^4-2x^5-2x^8+2x^9-2x^12+2x^14)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018841

/-- `ogf((2x+2x^2+2x^3-2x^4-2x^5-2x^8+2x^9-2x^12+2x^14)/(1-x-x^5+x^6))` -/
def P14105402096119489635.Spec : Prop :=
  ∀ n, P14105402096119489635.a n = A018841 n

theorem P14105402096119489635.correct : P14105402096119489635.Spec := by
  intro n
  simp only [A018841]

end A018841

/-!
# A018842: Number of squares on infinite chessboard at n knight's moves from center.

The programs for A018842, the canonical program `A018842.P15649371554948103012` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018842 has offset 0).

The definition of A018842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018842.P15649371554948103012

`ogf((1+6x+17x^2+12x^3-8x^4-4x^5+4x^6)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018842

/-- `ogf((1+6x+17x^2+12x^3-8x^4-4x^5+4x^6)/(1-2x+x^2))` -/
def P15649371554948103012.Spec : Prop :=
  ∀ n, P15649371554948103012.a n = A018842 n

theorem P15649371554948103012.correct : P15649371554948103012.Spec := by
  intro n
  simp only [A018842]

end A018842

/-!
# A018844: Arises from generalized Lucas-Lehmer test for primality.

The programs for A018844, there is no canonical definition to state claims against.
-/

/-! ## A018844.P17216185320006747333

`sqrt(A206257(n+1)+2)`
-/

namespace A018844.P17216185320006747333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206257 (n + 1) + 2 : ℝ)

end

end A018844.P17216185320006747333

/-! ## A018844.P17402791771720935158

`ceil(sqrt(A206257(n+1)))`
-/

namespace A018844.P17402791771720935158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A206257 (n + 1) : ℝ)⌉

end

end A018844.P17402791771720935158

/-!
# A018845: Number of iterations required for the sum of n and its prime divisors = t to reach a prime (where t replaces n in each iteration) in A016837.

The programs for A018845, there is no canonical definition to state claims against.
-/

/-! ## A018845.P10852091818009717804

`A165073(∑[A086645(n)+A017089(2*(n+1))])`
-/

namespace A018845.P10852091818009717804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n + A017089 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018845.P10852091818009717804

/-! ## A018845.P10679816063656832636

`A278516(or(A307436(n+1), A324837(n+1)))`
-/

namespace A018845.P10679816063656832636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278516 (Int.lor (A307436 (n + 1)) (A324837 (n + 1))).toNat

end

end A018845.P10679816063656832636

/-! ## A018845.P18310874865839623973

`A213636(8*A104803(2*(n+1)))`
-/

namespace A018845.P18310874865839623973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (8 * A104803 (2 * (n + 1))).toNat

end

end A018845.P18310874865839623973

/-! ## A018845.P13428695800886839878

`A178650(A028842(3*n+4))+1`
-/

namespace A018845.P13428695800886839878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178650 (A028842 (3 * n + 4)).toNat + 1

end

end A018845.P13428695800886839878

/-! ## A018845.P14604210329752047174

`A062072(A019299(n)-A376973(n+1))`
-/

namespace A018845.P14604210329752047174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062072 (A019299 n - A376973 (n + 1)).toNat

end

end A018845.P14604210329752047174

/-!
# A018847: Strobogrammatic primes: the same upside down (calculator-style numerals).

The programs for A018847, there is no canonical definition to state claims against.
-/

/-! ## A018847.P8644820164352440948

`∩[A018846(n+1), A178316(n+1)]`
-/

namespace A018847.P8644820164352440948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018847.P8644820164352440948

/-! ## A018847.P11238611987212765515

`∩[A018846(n+1), A038611(n+1)]`
-/

namespace A018847.P11238611987212765515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018847.P11238611987212765515

/-! ## A018847.P700642548562313434

`p?[A018846(n+1)]`
-/

namespace A018847.P700642548562313434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A018847.P700642548562313434

/-! ## A018847.P18378312603416849205

`p?[record[A018846(A052938(n))]]`
-/

namespace A018847.P18378312603416849205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A018847.P18378312603416849205

/-! ## A018847.P9554732714435356037

`p?[record[A018846(A133310(n))]]`
-/

namespace A018847.P9554732714435356037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A018847.P9554732714435356037

/-!
# A018848: Strobogrammatic squares: the same upside down (probably finite).

The programs for A018848, there is no canonical definition to state claims against.
-/

/-! ## A018848.P12563550656488423976

`A018849(eq[1, ∑{e}[n+1, #]])`
-/

namespace A018848.P12563550656488423976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018849 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A018848.P12563550656488423976

/-!
# A018849: Strobogrammatic squares: the same upside down (calculator-style numerals).

The programs for A018849, there is no canonical definition to state claims against.
-/

/-! ## A018849.P9695332649566164067

`∩[A018846(n+1), n²]`
-/

namespace A018849.P9695332649566164067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A018849.P9695332649566164067

/-! ## A018849.P14781958045663841338

`∩[A000290(n), A018846(n+1)]`
-/

namespace A018849.P14781958045663841338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018849.P14781958045663841338

/-!
# A018850: Numbers that are the sum of 2 cubes in more than 1 way (primitive solutions).

The programs for A018850, there is no canonical definition to state claims against.
-/

/-! ## A018850.P15871428758407193652

`A001235(A184333(n+1)%A034311(3*n+4))`
-/

namespace A018850.P15871428758407193652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (Int.tmod (A184333 (n + 1)) (A034311 (3 * n + 4))).toNat

end

end A018850.P15871428758407193652

/-! ## A018850.P3494149232692241205

`A001235(lt[A109509(n), A008299(n+3)])`
-/

namespace A018850.P3494149232692241205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A018850.P3494149232692241205

/-! ## A018850.P446428152945801301

`A001235(A184333(n+1))%A034312(3*n+4)`
-/

namespace A018850.P446428152945801301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001235 (A184333 (n + 1)).toNat) (A034312 (3 * n + 4))

end

end A018850.P446428152945801301

/-! ## A018850.P13375749677671275317

`A001235(lt[A017817(2*(n+2)), A273717(n+2)])`
-/

namespace A018850.P13375749677671275317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A018850.P13375749677671275317

/-!
# A018851: a(n)^2 is smallest square beginning with n.

The programs for A018851, there is no canonical definition to state claims against.
-/

/-! ## A018851.P13439420801992844874

`sqrt(A018796(n))`
-/

namespace A018851.P13439420801992844874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018796 n : ℝ)

end

end A018851.P13439420801992844874

/-! ## A018851.P17664295174318164355

`A018796(n)^(1/A040000(n))`
-/

namespace A018851.P17664295174318164355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018796 n : ℝ) ^ (1 / (A040000 n : ℚ) : ℝ)

end

end A018851.P17664295174318164355

/-! ## A018851.P3458378645172783684

`A018796(n)^(2/A040002(n))`
-/

namespace A018851.P3458378645172783684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018796 n : ℝ) ^ (2 / (A040002 n : ℚ) : ℝ)

end

end A018851.P3458378645172783684

/-! ## A018851.P309750099264603821

`A018796(n)^(A000034(2*n)/2)`
-/

namespace A018851.P309750099264603821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018796 n : ℝ) ^ ((A000034 (2 * n) : ℚ) / 2 : ℝ)

end

end A018851.P309750099264603821

/-! ## A018851.P11792684995926069828

`A018796(n)^(A000079(n)/A000079(n+1))`
-/

namespace A018851.P11792684995926069828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018796 n : ℝ) ^ ((A000079 n : ℚ) / (A000079 (n + 1) : ℚ) : ℝ)

end

end A018851.P11792684995926069828

/-! ## A018851.P9519274197855215782

`A056926(A018796(n)%A017355(n))`
-/

namespace A018851.P9519274197855215782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.tmod (A018796 n) (A017355 n)).toNat

end

end A018851.P9519274197855215782

/-! ## A018851.P5587094803939799734

`A056926(lcm(A018796(n), A033999(n)))`
-/

namespace A018851.P5587094803939799734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.lcm (A018796 n) (A033999 n))

end

end A018851.P5587094803939799734

/-!
# A018852: a(n)^3 is smallest cube beginning with n.

The programs for A018852, there is no canonical definition to state claims against.
-/

/-! ## A018852.P4595283996407153575

`A018797(n)^(1/3)`
-/

namespace A018852.P4595283996407153575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018797 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A018852.P4595283996407153575

/-! ## A018852.P6177229845427499486

`A054846(floor(sqrt(A018797(n))))`
-/

namespace A018852.P6177229845427499486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.sqrt (A018797 n)).toNat

end

end A018852.P6177229845427499486

/-! ## A018852.P8833931405283263022

`A054846(ceil(sqrt(A018797(n))))`
-/

namespace A018852.P8833931405283263022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 ⌈Real.sqrt (A018797 n : ℝ)⌉.toNat

end

end A018852.P8833931405283263022

/-! ## A018852.P9689847595983599531

`A100196(ceil(sqrt(A018797(n))))`
-/

namespace A018852.P9689847595983599531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A018797 n : ℝ)⌉.toNat

end

end A018852.P9689847595983599531

/-! ## A018852.P1010768113039102955

`A054846(round(sqrt(A018797(n))))`
-/

namespace A018852.P1010768113039102955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (SequenceMachineLib.roundAway (Real.sqrt (A018797 n : ℝ))).toNat

end

end A018852.P1010768113039102955

/-!
# A018853: a(n)^4 is smallest fourth power beginning with n.

The programs for A018853, there is no canonical definition to state claims against.
-/

/-! ## A018853.P16356900641714415422

`sqrt(sqrt(A018798(n)))`
-/

namespace A018853.P16356900641714415422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A018798 n : ℝ))

end

end A018853.P16356900641714415422

/-! ## A018853.P16546728976344251701

`A018798(n)^(1/A040002(n))`
-/

namespace A018853.P16546728976344251701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018798 n : ℝ) ^ (1 / (A040002 n : ℚ) : ℝ)

end

end A018853.P16546728976344251701

/-! ## A018853.P1663476351316064784

`A018798(n)^(A054977(n)/4)`
-/

namespace A018853.P1663476351316064784
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018798 n : ℝ) ^ ((A054977 n : ℚ) / 4 : ℝ)

end

end A018853.P1663476351316064784

/-! ## A018853.P5256470575426321521

`A018798(n)^(A057427(A318454(3*n+1))/4)`
-/

namespace A018853.P5256470575426321521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018798 n : ℝ) ^ ((A057427 (A318454 (3 * n + 1)).toNat : ℚ) / 4 : ℝ)

end

end A018853.P5256470575426321521

/-! ## A018853.P1945646522279090927

`A018798(n)^(A010051(A048646(n+1))/2)²`
-/

namespace A018853.P1945646522279090927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018798 n : ℝ) ^ (((A010051 (A048646 (n + 1)).toNat : ℚ) / 2) ^ 2 : ℝ)

end

end A018853.P1945646522279090927

/-!
# A018854: Smallest factorial that begins with n.

The programs for A018854, there is no canonical definition to state claims against.
-/

/-! ## A018854.P6606323612812866530

`A018799(n+1)!`
-/

namespace A018854.P6606323612812866530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A018799 (n + 1)).toNat

end

end A018854.P6606323612812866530

/-! ## A018854.P15281244831600178107

`A076219(1+n)!`
-/

namespace A018854.P15281244831600178107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A076219 (1 + n)).toNat

end

end A018854.P15281244831600178107

/-! ## A018854.P15562417669603194864

`A000142(A076219(n+1))`
-/

namespace A018854.P15562417669603194864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A076219 (n + 1)).toNat

end

end A018854.P15562417669603194864

/-! ## A018854.P4285064873794712012

`A214078(A018799(n+1)²)`
-/

namespace A018854.P4285064873794712012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A018799 (n + 1) ^ 2).toNat

end

end A018854.P4285064873794712012

/-!
# A018855: Smallest triangular number that begins with n.

The programs for A018855, there is no canonical definition to state claims against.
-/

/-! ## A018855.P17242847589931977054

`C(A018801(n+1)+1, 2)`
-/

namespace A018855.P17242847589931977054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018801 (n + 1) + 1).toNat 2

end

end A018855.P17242847589931977054

/-! ## A018855.P6483283184707301845

`A000217(A018801(1+n))`
-/

namespace A018855.P6483283184707301845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A018801 (1 + n)).toNat

end

end A018855.P6483283184707301845

/-! ## A018855.P15174314356045399863

`A161680(A018801(n+1)+1)`
-/

namespace A018855.P15174314356045399863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A018801 (n + 1) + 1).toNat

end

end A018855.P15174314356045399863

/-! ## A018855.P16614070951162607969

`A133263(A018801(n+1))-A020639(2*(n+2))`
-/

namespace A018855.P16614070951162607969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A018801 (n + 1)).toNat - A020639 (2 * (n + 2))

end

end A018855.P16614070951162607969

/-! ## A018855.P1761183093799284289

`A124093(2*A018801(n+1))`
-/

namespace A018855.P1761183093799284289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (2 * A018801 (n + 1)).toNat

end

end A018855.P1761183093799284289

/-!
# A018856: 2^a(n) is the smallest power of 2 beginning with n.

The programs for A018856, there is no canonical definition to state claims against.
-/

/-! ## A018856.P6657525924794893294

`log2(A018802(n+1))`
-/

namespace A018856.P6657525924794893294
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A018802 (n + 1) : ℝ)

end

end A018856.P6657525924794893294

/-! ## A018856.P6343628169481787490

`val(A018802(n+1), A000005(A018800(n+1)))`
-/

namespace A018856.P6343628169481787490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018802 (n + 1)).toNat (A000005 (A018800 (n + 1)).toNat).toNat

end

end A018856.P6343628169481787490

/-! ## A018856.P15504780930074516377

`val(A018802(n+1), A020639(A008458(n+1)))`
-/

namespace A018856.P15504780930074516377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018802 (n + 1)).toNat (A020639 (A008458 (n + 1)).toNat).toNat

end

end A018856.P15504780930074516377

/-! ## A018856.P410389471849617668

`val(A018802(n+1), A000034(A006530(3*(n+1))))`
-/

namespace A018856.P410389471849617668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018802 (n + 1)).toNat (A000034 (A006530 (3 * (n + 1))).toNat).toNat

end

end A018856.P410389471849617668

/-! ## A018856.P3530645370813411598

`val(A018802(n+1), A000034(A212848(n)))`
-/

namespace A018856.P3530645370813411598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018802 (n + 1)).toNat (A000034 (A212848 n).toNat).toNat

end

end A018856.P3530645370813411598

/-! ## A018856.P9836952689986354302

`A124916(n+1)+A124908(n+1)`
-/

namespace A018856.P9836952689986354302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124916 (n + 1) + A124908 (n + 1)

end

end A018856.P9836952689986354302

/-! ## A018856.P14858938332199373882

`val(A018802(n+1)*A018857(n+1), 2)`
-/

namespace A018856.P14858938332199373882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018802 (n + 1) * A018857 (n + 1)).toNat 2

end

end A018856.P14858938332199373882

/-! ## A018856.P5400615887624963763

`val(A018802(n+1), 2)%A018859(n+1)`
-/

namespace A018856.P5400615887624963763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A018802 (n + 1)).toNat 2 : ℤ) (A018859 (n + 1))

end

end A018856.P5400615887624963763

/-!
# A018857: Smallest power of 3 that begins with n.

The programs for A018857, there is no canonical definition to state claims against.
-/

/-! ## A018857.P10402439442676759816

`3^A018858(n+1)`
-/

namespace A018857.P10402439442676759816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A018858 (n + 1) : ℤ)

end

end A018857.P10402439442676759816

/-! ## A018857.P16865868202337468478

`A000244(A018858(n+1))`
-/

namespace A018857.P16865868202337468478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A018858 (n + 1)).toNat

end

end A018857.P16865868202337468478

/-! ## A018857.P3918792845003415840

`A038754(2*A018858(1+n))`
-/

namespace A018857.P3918792845003415840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * A018858 (1 + n)).toNat

end

end A018857.P3918792845003415840

/-! ## A018857.P12644620154131820688

`A000792(3*A018858(n+1))`
-/

namespace A018857.P12644620154131820688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (3 * A018858 (n + 1)).toNat

end

end A018857.P12644620154131820688

/-! ## A018857.P10164670458498637880

`A130599(2*A018858(n+1)+1)`
-/

namespace A018857.P10164670458498637880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 (2 * A018858 (n + 1) + 1).toNat

end

end A018857.P10164670458498637880

/-! ## A018857.P633188664711882982

`A130599(A018858(n+1)+A018858(n+1)+1)`
-/

namespace A018857.P633188664711882982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 (A018858 (n + 1) + (A018858 (n + 1) + 1)).toNat

end

end A018857.P633188664711882982

/-!
# A018858: 3^a(n) is smallest power of 3 beginning with n.

The programs for A018858, there is no canonical definition to state claims against.
-/

/-! ## A018858.P5216585930384648019

`val(A018857(n+1), 3)`
-/

namespace A018858.P5216585930384648019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018857 (n + 1)).toNat 3

end

end A018858.P5216585930384648019

/-!
# A018859: Smallest power of 4 that begins with n.

The programs for A018859, there is no canonical definition to state claims against.
-/

/-! ## A018859.P901356417341677907

`4^A018860(n+1)`
-/

namespace A018859.P901356417341677907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A018860 (n + 1) : ℤ)

end

end A018859.P901356417341677907

/-! ## A018859.P10156238400081288194

`A000079(2*A018860(n+1))`
-/

namespace A018859.P10156238400081288194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A018860 (n + 1)).toNat

end

end A018859.P10156238400081288194

/-! ## A018859.P11069980401781529473

`A131577(A018860(n+1)+1)²`
-/

namespace A018859.P11069980401781529473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A018860 (n + 1) + 1).toNat ^ 2

end

end A018859.P11069980401781529473

/-!
# A018860: 4^a(n) is smallest power of 4 beginning with n.

The programs for A018860, there is no canonical definition to state claims against.
-/

/-! ## A018860.P8547863769760459989

`val(A018859(n+1), 4)`
-/

namespace A018860.P8547863769760459989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018859 (n + 1)).toNat 4

end

end A018860.P8547863769760459989

/-!
# A018861: Smallest power of 5 that begins with n.

The programs for A018861, there is no canonical definition to state claims against.
-/

/-! ## A018861.P17679353992148744774

`5^A018862(n+1)`
-/

namespace A018861.P17679353992148744774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A018862 (n + 1) : ℤ)

end

end A018861.P17679353992148744774

/-! ## A018861.P16723023156643493421

`A000351(A018862(n+1))`
-/

namespace A018861.P16723023156643493421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A018862 (n + 1)).toNat

end

end A018861.P16723023156643493421

/-! ## A018861.P7740845416108464712

`A056451(2*A018862(n+1))`
-/

namespace A018861.P7740845416108464712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * A018862 (n + 1)).toNat

end

end A018861.P7740845416108464712

/-! ## A018861.P11749228912809340604

`5^(A124919(n+1)+A124911(n+1))`
-/

namespace A018861.P11749228912809340604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A124919 (n + 1) + A124911 (n + 1) : ℤ)

end

end A018861.P11749228912809340604

/-! ## A018861.P18026598304310311486

`A000351(A124919(n+1)+A124911(n+1))`
-/

namespace A018861.P18026598304310311486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A124919 (n + 1) + A124911 (n + 1)).toNat

end

end A018861.P18026598304310311486

/-! ## A018861.P11953709678895887128

`A056451(2*(A124919(n+1)+A124911(n+1)))`
-/

namespace A018861.P11953709678895887128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * (A124919 (n + 1) + A124911 (n + 1))).toNat

end

end A018861.P11953709678895887128

/-!
# A018862: 5^a(n) is smallest power of 5 beginning with n.

The programs for A018862, there is no canonical definition to state claims against.
-/

/-! ## A018862.P17492372554229801553

`A124919(n+1)+A124911(n+1)`
-/

namespace A018862.P17492372554229801553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124919 (n + 1) + A124911 (n + 1)

end

end A018862.P17492372554229801553

/-! ## A018862.P2741458132493772479

`val(A018861(n+1), 5)`
-/

namespace A018862.P2741458132493772479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018861 (n + 1)).toNat 5

end

end A018862.P2741458132493772479

/-!
# A018863: Smallest power of 6 that begins with n.

The programs for A018863, there is no canonical definition to state claims against.
-/

/-! ## A018863.P359999883133821231

`6^A018864(n+1)`
-/

namespace A018863.P359999883133821231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A018864 (n + 1) : ℤ)

end

end A018863.P359999883133821231

/-!
# A018865: Smallest power of 7 that begins with n.

The programs for A018865, there is no canonical definition to state claims against.
-/

/-! ## A018865.P15998316551058007185

`7^A018866(n+1)`
-/

namespace A018865.P15998316551058007185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A018866 (n + 1) : ℤ)

end

end A018865.P15998316551058007185

/-! ## A018865.P1658158340530983380

`A000420(A018866(n+1))`
-/

namespace A018865.P1658158340530983380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A018866 (n + 1)).toNat

end

end A018865.P1658158340530983380

/-!
# A018866: 7^a(n) is smallest power of 7 beginning with n.

The programs for A018866, there is no canonical definition to state claims against.
-/

/-! ## A018866.P4561195489761396813

`val(A018865(n+1), 7)`
-/

namespace A018866.P4561195489761396813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018865 (n + 1)).toNat 7

end

end A018866.P4561195489761396813

/-!
# A018867: Smallest power of 8 that begins with n.

The programs for A018867, there is no canonical definition to state claims against.
-/

/-! ## A018867.P9469753658620197022

`8^A018868(n+1)`
-/

namespace A018867.P9469753658620197022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A018868 (n + 1) : ℤ)

end

end A018867.P9469753658620197022

/-! ## A018867.P10514876930865399724

`A000079(3*A018868(n+1))`
-/

namespace A018867.P10514876930865399724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * A018868 (n + 1)).toNat

end

end A018867.P10514876930865399724

/-!
# A018868: 8^a(n) is smallest power of 8 beginning with n.

The programs for A018868, there is no canonical definition to state claims against.
-/

/-! ## A018868.P12685338150723432940

`val(A018867(n+1), 8)`
-/

namespace A018868.P12685338150723432940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018867 (n + 1)).toNat 8

end

end A018868.P12685338150723432940

/-!
# A018869: Smallest power of 9 that begins with n.

The programs for A018869, there is no canonical definition to state claims against.
-/

/-! ## A018869.P18256527875469024413

`9^A018870(n+1)`
-/

namespace A018869.P18256527875469024413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A018870 (n + 1) : ℤ)

end

end A018869.P18256527875469024413

/-! ## A018869.P8242671008258307338

`A000244(2*A018870(n+1))`
-/

namespace A018869.P8242671008258307338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A018870 (n + 1)).toNat

end

end A018869.P8242671008258307338

/-!
# A018870: 9^a(n) is smallest power of 9 beginning with n.

The programs for A018870, there is no canonical definition to state claims against.
-/

/-! ## A018870.P16850402432291780763

`val(A018869(n+1), 9)`
-/

namespace A018870.P16850402432291780763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018869 (n + 1)).toNat 9

end

end A018870.P16850402432291780763

/-!
# A018871: Smallest fifth power that begins with n.

The programs for A018871, there is no canonical definition to state claims against.
-/

/-! ## A018871.P9060244682318706510

`A018872(n)^5`
-/

namespace A018871.P9060244682318706510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018872 n ^ 5

end

end A018871.P9060244682318706510

/-! ## A018871.P15230270609930039389

`A000584(A018872(n))`
-/

namespace A018871.P15230270609930039389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A018872 n).toNat

end

end A018871.P15230270609930039389

/-! ## A018871.P16930683157457116277

`A185721(5*A018872(n))`
-/

namespace A018871.P16930683157457116277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185721 (5 * A018872 n).toNat

end

end A018871.P16930683157457116277

/-! ## A018871.P17555410312883527118

`A018796(A018872(n)²)²*A018872(n)`
-/

namespace A018871.P17555410312883527118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A018872 n ^ 2).toNat ^ 2 * A018872 n

end

end A018871.P17555410312883527118

/-!
# A018872: a(n)^5 is smallest fifth power beginning with n.

The programs for A018872, there is no canonical definition to state claims against.
-/

/-! ## A018872.P6830095769148774141

`A018871(n)^(1/5)`
-/

namespace A018872.P6830095769148774141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018871 n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)

end

end A018872.P6830095769148774141

/-!
# A018873: Smallest sixth power that begins with n.

The programs for A018873, there is no canonical definition to state claims against.
-/

/-! ## A018873.P1801100116626750725

`A018874(n)^6`
-/

namespace A018873.P1801100116626750725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018874 n ^ 6

end

end A018873.P1801100116626750725

/-! ## A018873.P7210801100920675516

`A001014(A018874(n))`
-/

namespace A018873.P7210801100920675516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A018874 n).toNat

end

end A018873.P7210801100920675516

/-! ## A018873.P6554117969291548192

`∑{d}[A018874(n), A069091(#)]`
-/

namespace A018873.P6554117969291548192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069091 d

end

end A018873.P6554117969291548192

/-! ## A018873.P428758052336111801

`(A000578(A018874(n))*A020985(n))²`
-/

namespace A018873.P428758052336111801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A018874 n).toNat * A020985 n) ^ 2

end

end A018873.P428758052336111801

/-! ## A018873.P649296880586998299

`(A000578(A018874(n))*A057428(n))²`
-/

namespace A018873.P649296880586998299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A018874 n).toNat * A057428 n) ^ 2

end

end A018873.P649296880586998299

/-! ## A018873.P11531171190346162441

`A000578(and(A018874(n), A057428(n)))²`
-/

namespace A018873.P11531171190346162441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (Int.land (A018874 n) (A057428 n)).toNat ^ 2

end

end A018873.P11531171190346162441

/-! ## A018873.P14753235097494332741

`(A000578(A018874(n))%A286346(n+1))²`
-/

namespace A018873.P14753235097494332741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A018874 n).toNat) (A286346 (n + 1)) ^ 2

end

end A018873.P14753235097494332741

/-! ## A018873.P9345307028704741786

`(A008683(A007918(n))*A000578(A018874(n)))²`
-/

namespace A018873.P9345307028704741786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (A007918 n).toNat * A000578 (A018874 n).toNat) ^ 2

end

end A018873.P9345307028704741786

/-! ## A018873.P4572343090217472612

`(A018796(A018874(n)²)*A018874(n))²`
-/

namespace A018873.P4572343090217472612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018796 (A018874 n ^ 2).toNat * A018874 n) ^ 2

end

end A018873.P4572343090217472612

/-!
# A018874: a(n)^6 is smallest sixth power beginning with n.

The programs for A018874, there is no canonical definition to state claims against.
-/

/-! ## A018874.P7193408316921491060

`A018873(n)^(1/6)`
-/

namespace A018874.P7193408316921491060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018873 n : ℝ) ^ ((1 : ℚ) / 6 : ℝ)

end

end A018874.P7193408316921491060

/-!
# A018875: Smallest seventh power that begins with n.

The programs for A018875, there is no canonical definition to state claims against.
-/

/-! ## A018875.P10789093318877040103

`A018876(n)^7`
-/

namespace A018875.P10789093318877040103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018876 n ^ 7

end

end A018875.P10789093318877040103

/-! ## A018875.P11463223407421545369

`A001015(A018876(n))`
-/

namespace A018875.P11463223407421545369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A018876 n).toNat

end

end A018875.P11463223407421545369

/-! ## A018875.P2058595126619093437

`A000578(A018876(n)²)*A018876(n)`
-/

namespace A018875.P2058595126619093437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A018876 n ^ 2).toNat * A018876 n

end

end A018875.P2058595126619093437

/-!
# A018876: a(n)^7 is smallest seventh power beginning with n.

The programs for A018876, there is no canonical definition to state claims against.
-/

/-! ## A018876.P15130779722610001032

`A018875(n)^(1/7)`
-/

namespace A018876.P15130779722610001032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018875 n : ℝ) ^ ((1 : ℚ) / 7 : ℝ)

end

end A018876.P15130779722610001032

/-!
# A018877: Smallest eighth power that begins with n.

The programs for A018877, there is no canonical definition to state claims against.
-/

/-! ## A018877.P3020301304901058534

`A018878(n)^8`
-/

namespace A018877.P3020301304901058534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018878 n ^ 8

end

end A018877.P3020301304901058534

/-! ## A018877.P12636848061461069539

`A018878(2*n-n)²²²`
-/

namespace A018877.P12636848061461069539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A018878 (2 * n - n) ^ 2) ^ 2) ^ 2

end

end A018877.P12636848061461069539

/-! ## A018877.P5702969407120141378

`A001016(A018878(n))`
-/

namespace A018877.P5702969407120141378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A018878 n).toNat

end

end A018877.P5702969407120141378

/-! ## A018877.P4449355864493294703

`A018796(A018878(n)²)²²`
-/

namespace A018877.P4449355864493294703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018796 (A018878 n ^ 2).toNat ^ 2) ^ 2

end

end A018877.P4449355864493294703

/-! ## A018877.P16894741284148911483

`A000583(A018878(n)²)`
-/

namespace A018877.P16894741284148911483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A018878 n ^ 2).toNat

end

end A018877.P16894741284148911483

/-!
# A018878: a(n)^8 is smallest eighth power beginning with n.

The programs for A018878, there is no canonical definition to state claims against.
-/

/-! ## A018878.P11035405206567991507

`sqrt(sqrt(sqrt(A018877(n))))`
-/

namespace A018878.P11035405206567991507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (Real.sqrt (A018877 n : ℝ)))

end

end A018878.P11035405206567991507

/-!
# A018879: Smallest ninth power that begins with n.

The programs for A018879, there is no canonical definition to state claims against.
-/

/-! ## A018879.P9001063177590178043

`A018880(n)^9`
-/

namespace A018879.P9001063177590178043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018880 n ^ 9

end

end A018879.P9001063177590178043

/-! ## A018879.P2842921212667574663

`A001017(A018880(n))`
-/

namespace A018879.P2842921212667574663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A018880 n).toNat

end

end A018879.P2842921212667574663

/-!
# A018880: a(n)^9 is smallest ninth power beginning with n.

The programs for A018880, there is no canonical definition to state claims against.
-/

/-! ## A018880.P10748314454747838088

`A018879(n)^(1/9)`
-/

namespace A018880.P10748314454747838088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018879 n : ℝ) ^ ((1 : ℚ) / 9 : ℝ)

end

end A018880.P10748314454747838088

/-! ## A018880.P4361028031690420111

`A018879(n)%A018350(2*(n+2))`
-/

namespace A018880.P4361028031690420111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018879 n) (A018350 (2 * (n + 2)))

end

end A018880.P4361028031690420111

/-!
# A018881: Smallest tenth power that begins with n.

The programs for A018881, there is no canonical definition to state claims against.
-/

/-! ## A018881.P10025638689764159978

`A018882(n)^10`
-/

namespace A018881.P10025638689764159978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018882 n ^ 10

end

end A018881.P10025638689764159978

/-! ## A018881.P10610951895662360249

`A008454(A018882(n))`
-/

namespace A018881.P10610951895662360249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A018882 n).toNat

end

end A018881.P10610951895662360249

/-! ## A018881.P6548399292099206845

`∑{d}[A018882(n), A069095(#)]`
-/

namespace A018881.P6548399292099206845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069095 d

end

end A018881.P6548399292099206845

/-! ## A018881.P4192913824750664988

`A000584(A018882(n)²)`
-/

namespace A018881.P4192913824750664988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A018882 n ^ 2).toNat

end

end A018881.P4192913824750664988

/-! ## A018881.P12197773396056683404

`A000584(A018882(n)*A018882(n))`
-/

namespace A018881.P12197773396056683404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A018882 n * A018882 n).toNat

end

end A018881.P12197773396056683404

/-!
# A018882: a(n)^10 is smallest tenth power beginning with n.

The programs for A018882, there is no canonical definition to state claims against.
-/

/-! ## A018882.P9914998741605789622

`A018881(n)^(1/10)`
-/

namespace A018882.P9914998741605789622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018881 n : ℝ) ^ ((1 : ℚ) / 10 : ℝ)

end

end A018882.P9914998741605789622

/-!
# A018883: Least nonsquare having square residues for all moduli 2 through n.

The programs for A018883, there is no canonical definition to state claims against.
-/

/-! ## A018883.P13332813565720620736

`A330404(A058312(n+2))`
-/

namespace A018883.P13332813565720620736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (A058312 (n + 2)).toNat

end

end A018883.P13332813565720620736

/-! ## A018883.P17861387841434117397

`A330404(A109935(n+2))`
-/

namespace A018883.P17861387841434117397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (A109935 (n + 2)).toNat

end

end A018883.P17861387841434117397

/-! ## A018883.P11219364956571952003

`A330404(A244656(n+2))`
-/

namespace A018883.P11219364956571952003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (A244656 (n + 2)).toNat

end

end A018883.P11219364956571952003

/-! ## A018883.P11369024098064049288

`A330404(∏[A014963(n+2)])`
-/

namespace A018883.P11369024098064049288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018883.P11369024098064049288

/-! ## A018883.P14414922253858119238

`A330404(A070198(n+1)+1)`
-/

namespace A018883.P14414922253858119238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (A070198 (n + 1) + 1).toNat

end

end A018883.P14414922253858119238

/-!
# A018884: Squares using at most two distinct digits, not ending in 0.

The programs for A018884, there is no canonical definition to state claims against.
-/

/-! ## A018884.P6635952094106383696

`record[A004151(sqrt(A018885(n+2)))²]`
-/

namespace A018884.P6635952094106383696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway (Real.sqrt (A018885 (n + 2) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018884.P6635952094106383696

/-! ## A018884.P16139210735990940760

`∩[A018885(n+1), A052041(n+1)]`
-/

namespace A018884.P16139210735990940760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018884.P16139210735990940760

/-! ## A018884.P4407352557569103006

`∩[A018885(n+1), A052382(n+1)]`
-/

namespace A018884.P4407352557569103006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018884.P4407352557569103006

/-! ## A018884.P14498154703771782672

`∩[A018885(n+1), A259315(n+1)]`
-/

namespace A018884.P14498154703771782672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018884.P14498154703771782672

/-! ## A018884.P8389866334922043879

`∩[A018885(n+1), A329781(n+1)]`
-/

namespace A018884.P8389866334922043879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018884.P8389866334922043879

/-!
# A018885: Squares using no more than two distinct digits.

The programs for A018885, there is no canonical definition to state claims against.
-/

/-! ## A018885.P14962736793533843362

`lt[A309432(n), 3]²`
-/

namespace A018885.P14962736793533843362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A018885.P14962736793533843362

/-! ## A018885.P4293385944484280564

`A000290(lt[A309432(n), 3])`
-/

namespace A018885.P4293385944484280564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A018885.P4293385944484280564

/-! ## A018885.P8652821523561940232

`A000290(eq[A309432(n)!, A309432(n)])`
-/

namespace A018885.P8652821523561940232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309432 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018885.P8652821523561940232

/-! ## A018885.P5723049871852465902

`A000290(∪[A016069(n+1), A030292(n+1)])`
-/

namespace A018885.P5723049871852465902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A018885.P5723049871852465902

/-! ## A018885.P14065014257560688522

`eq[A309432(n)!, A309432(n)]^A020639(2*(n+1))`
-/

namespace A018885.P14065014257560688522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309432 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A018885.P14065014257560688522

/-!
# A018886: Waring's problem: least positive integer requiring maximum number of terms when expressed as a sum of positive n-th powers.

The programs for A018886, the canonical program `A018886.P10016611591934568643` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018886 has offset 1).

The definition of A018886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018886.P10016611591934568643

`2^(n+1)*floor((3/2)^(n+1))-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018886

/-- `2^(n+1)*floor((3/2)^(n+1))-1` -/
def P10016611591934568643.Spec : Prop :=
  ∀ n, P10016611591934568643.a n = A018886 (n + 1)

theorem P10016611591934568643.correct : P10016611591934568643.Spec := by
  intro n
  simp only [A018886, Nat.add_sub_cancel]

end A018886

/-! ## A018886.P7603226283791142626

`or(∑[A027649(n)], A095121(n))`
-/

namespace A018886.P7603226283791142626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A095121 n)

end

end A018886.P7603226283791142626

namespace A018886

/-- `or(∑[A027649(n)], A095121(n))` -/
def P7603226283791142626.Spec : Prop :=
  ∀ n, P7603226283791142626.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P6525902047816839877

`or(∑[A027649(n)], A126646(n))`
-/

namespace A018886.P6525902047816839877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A126646 n)

end

end A018886.P6525902047816839877

namespace A018886

/-- `or(∑[A027649(n)], A126646(n))` -/
def P6525902047816839877.Spec : Prop :=
  ∀ n, P6525902047816839877.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P7348555957664732794

`or(∑[A027649(n)], A289098(n))`
-/

namespace A018886.P7348555957664732794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A289098 n)

end

end A018886.P7348555957664732794

namespace A018886

/-- `or(∑[A027649(n)], A289098(n))` -/
def P7348555957664732794.Spec : Prop :=
  ∀ n, P7348555957664732794.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P8687733458335593257

`or(A001047(n+1), A095121(n))`
-/

namespace A018886.P8687733458335593257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001047 (n + 1)) (A095121 n)

end

end A018886.P8687733458335593257

namespace A018886

/-- `or(A001047(n+1), A095121(n))` -/
def P8687733458335593257.Spec : Prop :=
  ∀ n, P8687733458335593257.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P2434041768325096853

`or(A001047(n+1), A126646(n))`
-/

namespace A018886.P2434041768325096853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001047 (n + 1)) (A126646 n)

end

end A018886.P2434041768325096853

namespace A018886

/-- `or(A001047(n+1), A126646(n))` -/
def P2434041768325096853.Spec : Prop :=
  ∀ n, P2434041768325096853.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P18286934886666931276

`or(∑[A000079(n)], A001047(n+1))`
-/

namespace A018886.P18286934886666931276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A001047 (n + 1))

end

end A018886.P18286934886666931276

namespace A018886

/-- `or(∑[A000079(n)], A001047(n+1))` -/
def P18286934886666931276.Spec : Prop :=
  ∀ n, P18286934886666931276.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P10586578227878118375

`or(∑[A027649(n)], A000225(n+1))`
-/

namespace A018886.P10586578227878118375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000225 (n + 1))

end

end A018886.P10586578227878118375

namespace A018886

/-- `or(∑[A027649(n)], A000225(n+1))` -/
def P10586578227878118375.Spec : Prop :=
  ∀ n, P10586578227878118375.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P18242365358378927513

`or(2*A000225(n), ∑[A027649(n)])`
-/

namespace A018886.P18242365358378927513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A000225 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018886.P18242365358378927513

namespace A018886

/-- `or(2*A000225(n), ∑[A027649(n)])` -/
def P18242365358378927513.Spec : Prop :=
  ∀ n, P18242365358378927513.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P16660052699711723931

`or(A000225(n+1), A001047(n+1))`
-/

namespace A018886.P16660052699711723931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (n + 1)) (A001047 (n + 1))

end

end A018886.P16660052699711723931

namespace A018886

/-- `or(A000225(n+1), A001047(n+1))` -/
def P16660052699711723931.Spec : Prop :=
  ∀ n, P16660052699711723931.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P12923423045250403591

`or(A000918(n+1), A001047(n+1))`
-/

namespace A018886.P12923423045250403591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000918 (n + 1)) (A001047 (n + 1))

end

end A018886.P12923423045250403591

namespace A018886

/-- `or(A000918(n+1), A001047(n+1))` -/
def P12923423045250403591.Spec : Prop :=
  ∀ n, P12923423045250403591.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P13874267807805706382

`or(A001047(n+1), A075427(2*n))`
-/

namespace A018886.P13874267807805706382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001047 (n + 1)) (A075427 (2 * n))

end

end A018886.P13874267807805706382

namespace A018886

/-- `or(A001047(n+1), A075427(2*n))` -/
def P13874267807805706382.Spec : Prop :=
  ∀ n, P13874267807805706382.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P9265629658323684792

`or(Δ[A000295(n+1)], A001047(n+1))`
-/

namespace A018886.P9265629658323684792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A001047 (n + 1))

end

end A018886.P9265629658323684792

namespace A018886

/-- `or(Δ[A000295(n+1)], A001047(n+1))` -/
def P9265629658323684792.Spec : Prop :=
  ∀ n, P9265629658323684792.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P8855965482844435878

`or(Δ[A132753(n)], A304973(2*n+3))`
-/

namespace A018886.P8855965482844435878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A304973 (2 * n + 3))

end

end A018886.P8855965482844435878

namespace A018886

/-- `or(Δ[A132753(n)], A304973(2*n+3))` -/
def P8855965482844435878.Spec : Prop :=
  ∀ n, P8855965482844435878.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P8590461396637321482

`or(A000079(n+1)-1, A001047(n+1))`
-/

namespace A018886.P8590461396637321482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 1) - 1) (A001047 (n + 1))

end

end A018886.P8590461396637321482

namespace A018886

/-- `or(A000079(n+1)-1, A001047(n+1))` -/
def P8590461396637321482.Spec : Prop :=
  ∀ n, P8590461396637321482.a n = A018886 (n + 1)

end A018886

/-! ## A018886.P2343935553032710046

`or(A000244(n+1)-A000051(n+1), A000225(n+1))`
-/

namespace A018886.P2343935553032710046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 (n + 1) - A000051 (n + 1)) (A000225 (n + 1))

end

end A018886.P2343935553032710046

namespace A018886

/-- `or(A000244(n+1)-A000051(n+1), A000225(n+1))` -/
def P2343935553032710046.Spec : Prop :=
  ∀ n, P2343935553032710046.a n = A018886 (n + 1)

end A018886

/-!
# A018888: Numbers which are not the sum of seven nonnegative cubes.

The programs for A018888, there is no canonical definition to state claims against.
-/

/-! ## A018888.P3670839961539786166

`eq[0, A025451(n)]`
-/

namespace A018888.P3670839961539786166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018888.P3670839961539786166

/-! ## A018888.P1966257480613855375

`eq[0, A173676(n)]`
-/

namespace A018888.P1966257480613855375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018888.P1966257480613855375

/-! ## A018888.P6142309557152824015

`A028310(lt[A025451(n), 1])`
-/

namespace A018888.P6142309557152824015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A018888.P6142309557152824015

/-! ## A018888.P12680831361396861697

`A028310(lt[A173676(n), 1])`
-/

namespace A018888.P12680831361396861697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A018888.P12680831361396861697

/-! ## A018888.P6190701665600119283

`lt[7, A002376(A028310(n))]`
-/

namespace A018888.P6190701665600119283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A018888.P6190701665600119283

/-!
# A018889: Numbers whose shortest representation as a sum of positive cubes requires exactly 8 cubes.

The programs for A018889, there is no canonical definition to state claims against.
-/

/-! ## A018889.P2559884737438085530

`A018888(comp[3*n²])`
-/

namespace A018889.P2559884737438085530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018888 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018889.P2559884737438085530

/-! ## A018889.P12561663063666513847

`eq[8, A002376(A028310(n))]`
-/

namespace A018889.P12561663063666513847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018889.P12561663063666513847

/-! ## A018889.P14498369663037164155

`eq[A156660(n), A173676(n)]`
-/

namespace A018889.P14498369663037164155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018889.P14498369663037164155

/-! ## A018889.P8346593799637396110

`lt[A173676(n), A025452(n)]`
-/

namespace A018889.P8346593799637396110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A018889.P8346593799637396110

/-! ## A018889.P3278005141858095902

`lt[A173676(n), A025461(n)]`
-/

namespace A018889.P3278005141858095902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A018889.P3278005141858095902

/-!
# A018890: Numbers whose smallest expression as a sum of positive cubes requires exactly 7 cubes.

The programs for A018890, there is no canonical definition to state claims against.
-/

/-! ## A018890.P13095654815829463970

`eq[7, A002376(n+1)]+1`
-/

namespace A018890.P13095654815829463970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018890.P13095654815829463970

/-! ## A018890.P9149793804333471683

`eq[7, A002376(A028310(n))]`
-/

namespace A018890.P9149793804333471683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018890.P9149793804333471683

/-! ## A018890.P12137616609164743721

`lt[A173680(n)², A025451(n)]`
-/

namespace A018890.P12137616609164743721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A018890.P12137616609164743721

/-! ## A018890.P18011052500178205491

`A020725(eq[7, A002376(n+1)])`
-/

namespace A018890.P18011052500178205491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018890.P18011052500178205491

/-! ## A018890.P336985561198325306

`A153152(eq[7, A002376(n+1)])`
-/

namespace A018890.P336985561198325306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018890.P336985561198325306

/-! ## A018890.P8826410266652698849

`∩[A003330(n+1), A069137(n+1)]`
-/

namespace A018890.P8826410266652698849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018890.P8826410266652698849

/-! ## A018890.P9903997167390918535

`eq[A000007(A025451(n)), A025450(n)]`
-/

namespace A018890.P9903997167390918535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025451 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018890.P9903997167390918535

/-! ## A018890.P6389484126103789109

`eq[A025460(n), A028310(A025451(n))]`
-/

namespace A018890.P6389484126103789109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A025451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018890.P6389484126103789109

/-! ## A018890.P975352509686854783

`eq[7, A002376(A060000(n+1))]`
-/

namespace A018890.P975352509686854783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018890.P975352509686854783

/-! ## A018890.P18065218194350489591

`eq[7, A002376(A233583(n+1))]`
-/

namespace A018890.P18065218194350489591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018890.P18065218194350489591

/-!
# A018891: Number of positive knots with n crossings.

The programs for A018891, there is no canonical definition to state claims against.
-/

/-! ## A018891.P1740686848049632248

`Δ[A176538(round(acot(n)+n))]`
-/

namespace A018891.P1740686848049632248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176538 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018891.P1740686848049632248

/-! ## A018891.P5023893652433023466

`Δ[A176538(round(sqrt(n²+1)))]`
-/

namespace A018891.P5023893652433023466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176538 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018891.P5023893652433023466

/-!
# A018892: Number of ways to write 1/n as a sum of exactly 2 unit fractions.

The programs for A018892, the canonical program `A018892.P739243444939951687` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018892 has offset 1).

The definition of A018892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A018892.P2663619502702791578

`A063647(n+1)+1`
-/

namespace A018892.P2663619502702791578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + 1

end

end A018892.P2663619502702791578

namespace A018892

/-- `A063647(n+1)+1` -/
def P2663619502702791578.Spec : Prop :=
  ∀ n, P2663619502702791578.a n = A018892 (n + 1)

theorem P2663619502702791578.correct : P2663619502702791578.Spec := by
  intro n
  simp only [A018892, Nat.add_sub_cancel, A018892.P2663619502702791578.a, A018892.P739243444939951687.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A063647, A063647.P10388026275025770888.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018892

/-! ## A018892.P739243444939951687

`A046079(2*(n+1))+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A018892

/-- `A046079(2*(n+1))+1` -/
def P739243444939951687.Spec : Prop :=
  ∀ n, P739243444939951687.a n = A018892 (n + 1)

theorem P739243444939951687.correct : P739243444939951687.Spec := by
  intro n
  simp only [A018892, Nat.add_sub_cancel]

end A018892

/-! ## A018892.P13012467743176304507

`A000005(n+1)+A089233(n+1)`
-/

namespace A018892.P13012467743176304507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A089233 (n + 1)

end

end A018892.P13012467743176304507

namespace A018892

/-- `A000005(n+1)+A089233(n+1)` -/
def P13012467743176304507.Spec : Prop :=
  ∀ n, P13012467743176304507.a n = A018892 (n + 1)

theorem P13012467743176304507.correct : P13012467743176304507.Spec := by
  intro n
  simp only [A018892, Nat.add_sub_cancel, A018892.P13012467743176304507.a, A018892.P739243444939951687.a, A000005, A000005.P16091521709108585461.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A089233, A089233.P13957741673571392928.a, A024361, A024361.P1146025692209475519.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A004526, A004526.P10084182425416171735.a, A051731, A051731.P11318043630102858095.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A000007, A000007.P6599383543502402472.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018892

/-! ## A018892.P13375019297646121880

`∑{d}[n+1, A008683((n+1)/#)*A184389(#)]`
-/

namespace A018892.P13375019297646121880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A184389 d

end

end A018892.P13375019297646121880

namespace A018892

/-- `∑{d}[n+1, A008683((n+1)/#)*A184389(#)]` -/
def P13375019297646121880.Spec : Prop :=
  ∀ n, P13375019297646121880.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P8953550575676219748

`(A000005((n+1)²)+1)/2`
-/

namespace A018892.P8953550575676219748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 2) + 1 : ℚ) / 2

end

end A018892.P8953550575676219748

namespace A018892

/-- `(A000005((n+1)²)+1)/2` -/
def P8953550575676219748.Spec : Prop :=
  ∀ n, P8953550575676219748.a n = (A018892 (n + 1) : ℚ)

end A018892

/-! ## A018892.P6995644215846738026

`A176835(4*(n+1))`
-/

namespace A018892.P6995644215846738026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (4 * (n + 1))

end

end A018892.P6995644215846738026

namespace A018892

/-- `A176835(4*(n+1))` -/
def P6995644215846738026.Spec : Prop :=
  ∀ n, P6995644215846738026.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P2371616888004833362

`∑{d}[n+1, A007875(#)]`
-/

namespace A018892.P2371616888004833362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d

end

end A018892.P2371616888004833362

namespace A018892

/-- `∑{d}[n+1, A007875(#)]` -/
def P2371616888004833362.Spec : Prop :=
  ∀ n, P2371616888004833362.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P3894769554234090294

`ceil(A048691(n+1)/2)`
-/

namespace A018892.P3894769554234090294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048691 (n + 1) : ℚ) / 2⌉

end

end A018892.P3894769554234090294

namespace A018892

/-- `ceil(A048691(n+1)/2)` -/
def P3894769554234090294.Spec : Prop :=
  ∀ n, P3894769554234090294.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P11901354308510330039

`(A146564(n+1)+2)/3`
-/

namespace A018892.P11901354308510330039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146564 (n + 1) + 2 : ℚ) / 3

end

end A018892.P11901354308510330039

namespace A018892

/-- `(A146564(n+1)+2)/3` -/
def P11901354308510330039.Spec : Prop :=
  ∀ n, P11901354308510330039.a n = (A018892 (n + 1) : ℚ)

theorem P11901354308510330039.correct : P11901354308510330039.Spec := by
  intro n
  simp only [A018892, Nat.add_sub_cancel, A018892.P11901354308510330039.a, A018892.P739243444939951687.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A146564, A146564.P5455940889942169782.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018892

/-! ## A018892.P14938490286367741597

`A000463(A048691(n+1))`
-/

namespace A018892.P14938490286367741597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A048691 (n + 1)).toNat

end

end A018892.P14938490286367741597

namespace A018892

/-- `A000463(A048691(n+1))` -/
def P14938490286367741597.Spec : Prop :=
  ∀ n, P14938490286367741597.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P550092683613220277

`A008620(A146564(n+1))`
-/

namespace A018892.P550092683613220277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A146564 (n + 1)).toNat

end

end A018892.P550092683613220277

namespace A018892

/-- `A008620(A146564(n+1))` -/
def P550092683613220277.Spec : Prop :=
  ∀ n, P550092683613220277.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P5331144549961671206

`A080513(A117677(n+1))`
-/

namespace A018892.P5331144549961671206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A117677 (n + 1)).toNat

end

end A018892.P5331144549961671206

namespace A018892

/-- `A080513(A117677(n+1))` -/
def P5331144549961671206.Spec : Prop :=
  ∀ n, P5331144549961671206.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P8606787199568905185

`A001281(A048691(n+1)+1)`
-/

namespace A018892.P8606787199568905185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048691 (n + 1) + 1).toNat

end

end A018892.P8606787199568905185

namespace A018892

/-- `A001281(A048691(n+1)+1)` -/
def P8606787199568905185.Spec : Prop :=
  ∀ n, P8606787199568905185.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P878691503497403853

`A004525(A048691(n+1)+1)`
-/

namespace A018892.P878691503497403853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048691 (n + 1) + 1).toNat

end

end A018892.P878691503497403853

namespace A018892

/-- `A004525(A048691(n+1)+1)` -/
def P878691503497403853.Spec : Prop :=
  ∀ n, P878691503497403853.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P10386378867603225350

`A004526(A048691(n+1)+1)`
-/

namespace A018892.P10386378867603225350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048691 (n + 1) + 1).toNat

end

end A018892.P10386378867603225350

namespace A018892

/-- `A004526(A048691(n+1)+1)` -/
def P10386378867603225350.Spec : Prop :=
  ∀ n, P10386378867603225350.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P5445273654895275653

`A029578(A048691(n+1)+1)`
-/

namespace A018892.P5445273654895275653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A048691 (n + 1) + 1).toNat

end

end A018892.P5445273654895275653

namespace A018892

/-- `A029578(A048691(n+1)+1)` -/
def P5445273654895275653.Spec : Prop :=
  ∀ n, P5445273654895275653.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P10592292940576227389

`A097140(A048691(n+1)+1)`
-/

namespace A018892.P10592292940576227389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A048691 (n + 1) + 1).toNat

end

end A018892.P10592292940576227389

namespace A018892

/-- `A097140(A048691(n+1)+1)` -/
def P10592292940576227389.Spec : Prop :=
  ∀ n, P10592292940576227389.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P15521526410895372109

`A004524(A048691(n+1)+2)`
-/

namespace A018892.P15521526410895372109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A048691 (n + 1) + 2).toNat

end

end A018892.P15521526410895372109

namespace A018892

/-- `A004524(A048691(n+1)+2)` -/
def P15521526410895372109.Spec : Prop :=
  ∀ n, P15521526410895372109.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P2974718223707566454

`A002265(2*(A048691(n+1)+1))`
-/

namespace A018892.P2974718223707566454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A048691 (n + 1) + 1)).toNat

end

end A018892.P2974718223707566454

namespace A018892

/-- `A002265(2*(A048691(n+1)+1))` -/
def P2974718223707566454.Spec : Prop :=
  ∀ n, P2974718223707566454.a n = A018892 (n + 1)

end A018892

/-! ## A018892.P13170875214835927504

`A184389(n+1)-A333976(n+1)`
-/

namespace A018892.P13170875214835927504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A333976 (n + 1)

end

end A018892.P13170875214835927504

namespace A018892

/-- `A184389(n+1)-A333976(n+1)` -/
def P13170875214835927504.Spec : Prop :=
  ∀ n, P13170875214835927504.a n = A018892 (n + 1)

theorem P13170875214835927504.correct : P13170875214835927504.Spec := by
  intro n
  simp only [A018892, Nat.add_sub_cancel, A018892.P13170875214835927504.a, A018892.P739243444939951687.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A184389, A184389.P1294751775581732822.f1, A184389.P1294751775581732822.a, A333976, A333976.P13271542286250004937.a, A000005, A000005.P16091521709108585461.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018892

/-!
# A018893: Blasius sequence: from coefficients in expansion of solution to Blasius's equation in boundary layer theory.

The programs for A018893, there is no canonical definition to state claims against.
-/

/-! ## A018893.P12600750116504942259

`A327002(n)+A291973(n)`
-/

namespace A018893.P12600750116504942259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327002 n + A291973 n

end

end A018893.P12600750116504942259

/-! ## A018893.P4936143428176650460

`A309522(abs(∑[n+4]-2)+4)`
-/

namespace A018893.P4936143428176650460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309522 (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2| + 4).toNat

end

end A018893.P4936143428176650460

/-! ## A018893.P17144892371543150695

`A327002(n)+A260876(∑[n+3]+n+3)`
-/

namespace A018893.P17144892371543150695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327002 n + A260876 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A018893.P17144892371543150695

/-!
# A018894: Numbers k such that sigma(k)/phi(k) sets a new record.

The programs for A018894, there is no canonical definition to state claims against.
-/

/-! ## A018894.P17000532574203625000

`A126098(A160544(n+1))+A000007(A159288(n))`
-/

namespace A018894.P17000532574203625000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A160544 (n + 1)).toNat + A000007 (A159288 n).toNat

end

end A018894.P17000532574203625000

/-! ## A018894.P13691813900342561354

`A126098(A160544(n+1))+A000007(A252139(n+1))`
-/

namespace A018894.P13691813900342561354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A160544 (n + 1)).toNat + A000007 (A252139 (n + 1)).toNat

end

end A018894.P13691813900342561354

/-! ## A018894.P847579402149615013

`A126098(A160544(n+1))+A000007(A126098(n+1))`
-/

namespace A018894.P847579402149615013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A160544 (n + 1)).toNat + A000007 (A126098 (n + 1)).toNat

end

end A018894.P847579402149615013

/-!
# A018896: a(n) = ( a(n-1)*a(n-7) + a(n-4)^2 ) / a(n-8); a(0) = ... = a(7) = 1.

The programs for A018896, the canonical program `A018896.P10692014710542095976` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018896 has offset 0).

The definition of A018896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018896.P10692014710542095976

`(a(n-1)*a(n-7)+a(n-4)²)/a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018896

/-- `(a(n-1)*a(n-7)+a(n-4)²)/a(n-8)` -/
def P10692014710542095976.Spec : Prop :=
  ∀ n, P10692014710542095976.a n = (A018896 n : ℚ)

end A018896

/-! ## A018896.P15328861877903562827

`A003003(A001401(Δ[A003269(n)]))`
-/

namespace A018896.P15328861877903562827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A001401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A018896.P15328861877903562827

namespace A018896

/-- `A003003(A001401(Δ[A003269(n)]))` -/
def P15328861877903562827.Spec : Prop :=
  ∀ n, P15328861877903562827.a n = A018896 n

end A018896

/-! ## A018896.P12640350071511418708

`A271341(n+3)-A161313(n+1)^A006720(n)`
-/

namespace A018896.P12640350071511418708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271341 (n + 3) : ℚ) - (A161313 (n + 1) : ℚ) ^ (A006720 n : ℤ)

end

end A018896.P12640350071511418708

namespace A018896

/-- `A271341(n+3)-A161313(n+1)^A006720(n)` -/
def P12640350071511418708.Spec : Prop :=
  ∀ n, P12640350071511418708.a n = (A018896 n : ℚ)

end A018896

/-! ## A018896.P18096797318781640097

`A271341(n+3)-A161313(n+1)^A056010(n)`
-/

namespace A018896.P18096797318781640097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271341 (n + 3) : ℚ) - (A161313 (n + 1) : ℚ) ^ (A056010 n : ℤ)

end

end A018896.P18096797318781640097

namespace A018896

/-- `A271341(n+3)-A161313(n+1)^A056010(n)` -/
def P18096797318781640097.Spec : Prop :=
  ∀ n, P18096797318781640097.a n = (A018896 n : ℚ)

end A018896

/-! ## A018896.P7514960429229110409

`A271341(n+3)-A161313(n+1)^A274166(n)`
-/

namespace A018896.P7514960429229110409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271341 (n + 3) : ℚ) - (A161313 (n + 1) : ℚ) ^ (A274166 n : ℤ)

end

end A018896.P7514960429229110409

namespace A018896

/-- `A271341(n+3)-A161313(n+1)^A274166(n)` -/
def P7514960429229110409.Spec : Prop :=
  ∀ n, P7514960429229110409.a n = (A018896 n : ℚ)

end A018896

/-!
# A018898: Theta series of 14-dimensional lattice of det 3^7 and minimal norm 2.

The programs for A018898, there is no canonical definition to state claims against.
-/

/-! ## A018898.P9618910358941319694

`A004048(∑{digits}[n, #])`
-/

namespace A018898.P9618910358941319694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004048 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A018898.P9618910358941319694

/-!
# A018899: Smallest positive integer not representable as the sum of at most n distinct numbers of form 2^a*3^b.

The programs for A018899, there is no canonical definition to state claims against.
-/

/-! ## A018899.P10386187124845725693

`A007310(2^n*n!*n^(abs(1-n)-1))`
-/

namespace A018899.P10386187124845725693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.roundAway ((2 ^ n * Nat.factorial n : ℚ) * (n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ))).toNat

end

end A018899.P10386187124845725693

