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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A003100: Decimal Gray code for n.

The programs for A003100, there is no canonical definition to state claims against.
-/

/-! ## A003100.P7900022325154001910

`A174025(A174025(A174025(n)))`
-/

namespace A003100.P7900022325154001910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174025 (A174025 (A174025 n).toNat).toNat

end

end A003100.P7900022325154001910

/-!
# A003101: a(n) = Sum_{k = 1..n} (n - k + 1)^k.

The programs for A003101, the canonical program `A003101.P4107025312266769847` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003101 has offset 0).

The definition of A003101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (n-(#+1)+1)^(#+1)]` (program `A003101.P4107025312266769847`, by `A003101.P4107025312266769847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003101.P4107025312266769847

`∑{#}[n-1, (n-(#+1)+1)^(#+1)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003101

/-- `∑{#}[n-1, (n-(#+1)+1)^(#+1)]` -/
def P4107025312266769847.Spec : Prop :=
  ∀ n, P4107025312266769847.a n = A003101 n

theorem P4107025312266769847.correct : P4107025312266769847.Spec := by
  intro n
  simp only [A003101]

end A003101

/-! ## A003101.P13236633330006142093

`A026898(n)-1`
-/

namespace A003101.P13236633330006142093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n - 1

end

end A003101.P13236633330006142093

namespace A003101

/-- `A026898(n)-1` -/
def P13236633330006142093.Spec : Prop :=
  ∀ n, P13236633330006142093.a n = A003101 n

end A003101

/-! ## A003101.P2196886221374699890

`Δ[A103439(n)]-1`
-/

namespace A003101.P2196886221374699890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A003101.P2196886221374699890

namespace A003101

/-- `Δ[A103439(n)]-1` -/
def P2196886221374699890.Spec : Prop :=
  ∀ n, P2196886221374699890.a n = A003101 n

end A003101

/-! ## A003101.P15519347464547594880

`Δ[A104879(n)]-1`
-/

namespace A003101.P15519347464547594880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A003101.P15519347464547594880

namespace A003101

/-- `Δ[A104879(n)]-1` -/
def P15519347464547594880.Spec : Prop :=
  ∀ n, P15519347464547594880.a n = A003101 n

end A003101

/-! ## A003101.P9097838739243307139

`record[ratio[A101494(n)]-1]`
-/

namespace A003101.P9097838739243307139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003101.P9097838739243307139

namespace A003101

/-- `record[ratio[A101494(n)]-1]` -/
def P9097838739243307139.Spec : Prop :=
  ∀ n, P9097838739243307139.a n = (A003101 n : ℚ)

end A003101

/-! ## A003101.P13120653463467104328

`floor(A062810(n+1)/2)`
-/

namespace A003101.P13120653463467104328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062810 (n + 1) : ℚ) / 2⌋

end

end A003101.P13120653463467104328

namespace A003101

/-- `floor(A062810(n+1)/2)` -/
def P13120653463467104328.Spec : Prop :=
  ∀ n, P13120653463467104328.a n = A003101 n

end A003101

/-! ## A003101.P13899361372341637342

`A101494(∑[n+1])-1`
-/

namespace A003101.P13899361372341637342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A003101.P13899361372341637342

namespace A003101

/-- `A101494(∑[n+1])-1` -/
def P13899361372341637342.Spec : Prop :=
  ∀ n, P13899361372341637342.a n = A003101 n

end A003101

/-! ## A003101.P6720840648697920468

`A103480(n+1)-(n+2)`
-/

namespace A003101.P6720840648697920468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103480 (n + 1) - (n + 2 : ℤ)

end

end A003101.P6720840648697920468

namespace A003101

/-- `A103480(n+1)-(n+2)` -/
def P6720840648697920468.Spec : Prop :=
  ∀ n, P6720840648697920468.a n = A003101 n

end A003101

/-! ## A003101.P17971545823188153884

`record[A101494(A001971(n))-1]`
-/

namespace A003101.P17971545823188153884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (A001971 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003101.P17971545823188153884

namespace A003101

/-- `record[A101494(A001971(n))-1]` -/
def P17971545823188153884.Spec : Prop :=
  ∀ n, P17971545823188153884.a n = A003101 n

end A003101

/-! ## A003101.P10466852939121719157

`Δ[A103439(n)+A001489(n)]`
-/

namespace A003101.P10466852939121719157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003101.P10466852939121719157

namespace A003101

/-- `Δ[A103439(n)+A001489(n)]` -/
def P10466852939121719157.Spec : Prop :=
  ∀ n, P10466852939121719157.a n = A003101 n

end A003101

/-!
# A003102: Largest number divisible by all numbers < its n-th root.

The programs for A003102, there is no canonical definition to state claims against.
-/

/-! ## A003102.P12809246503950840475

`A266228(A360405(n+1))`
-/

namespace A003102.P12809246503950840475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (A360405 (n + 1)).toNat

end

end A003102.P12809246503950840475

/-! ## A003102.P12723662981297558612

`A168264(A100725(2*n+1))*A262501(n+1)`
-/

namespace A003102.P12723662981297558612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168264 (A100725 (2 * n + 1)).toNat * A262501 (n + 1)

end

end A003102.P12723662981297558612

/-!
# A003104: Number of hexagonal n-element polyominoes whose graph is a path.

The programs for A003104, there is no canonical definition to state claims against.
-/

/-! ## A003104.P18361447449943829086

`A038142(n+1)-A323851(n+1)`
-/

namespace A003104.P18361447449943829086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038142 (n + 1) - A323851 (n + 1)

end

end A003104.P18361447449943829086

/-! ## A003104.P1960908103541927680

`A000228(n+1)-(A323851(n+1)+A137193(n+1))`
-/

namespace A003104.P1960908103541927680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - (A323851 (n + 1) + A137193 (n + 1))

end

end A003104.P1960908103541927680

/-! ## A003104.P7972623113209628198

`A018190(n+1)+A038144(n+1)-A137193(n+1)-A323851(n+1)`
-/

namespace A003104.P7972623113209628198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + (A038144 (n + 1) - A137193 (n + 1)) - A323851 (n + 1)

end

end A003104.P7972623113209628198

/-! ## A003104.P13201048644347975445

`A030225(n+1)+A030226(n+1)-A137193(n+1)-A323851(n+1)`
-/

namespace A003104.P13201048644347975445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A030226 (n + 1) - A137193 (n + 1)) - A323851 (n + 1)

end

end A003104.P13201048644347975445

/-!
# A003105: Schur's 1926 partition theorem: number of partitions of n into parts 6n+1 or 6n-1.

The programs for A003105, there is no canonical definition to state claims against.
-/

/-! ## A003105.P13176025221271511673

`abs(A227398(n))`
-/

namespace A003105.P13176025221271511673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227398 n|

end

end A003105.P13176025221271511673

/-! ## A003105.P13691254452169099712

`A380481(n)+A011655(n)`
-/

namespace A003105.P13691254452169099712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380481 n + A011655 n

end

end A003105.P13691254452169099712

/-! ## A003105.P16031350638617478558

`A033999(n)*A227398(n)`
-/

namespace A003105.P16031350638617478558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A227398 n

end

end A003105.P16031350638617478558

/-! ## A003105.P5476693800761528329

`gcd(A000038(n), A227398(n))`
-/

namespace A003105.P5476693800761528329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A227398 n)

end

end A003105.P5476693800761528329

/-! ## A003105.P2806157805250177360

`lcm(A020985(n), A227398(n))`
-/

namespace A003105.P2806157805250177360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A227398 n)

end

end A003105.P2806157805250177360

/-! ## A003105.P5187468003066162736

`lcm(A008836(n+1)*A227398(n), A008836(n+1))`
-/

namespace A003105.P5187468003066162736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1) * A227398 n) (A008836 (n + 1))

end

end A003105.P5187468003066162736

/-! ## A003105.P11164833862649388697

`A112207(6*n)`
-/

namespace A003105.P11164833862649388697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (6 * n)

end

end A003105.P11164833862649388697

/-! ## A003105.P2524270837572454914

`A112208(6*n)`
-/

namespace A003105.P2524270837572454914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 (6 * n)

end

end A003105.P2524270837572454914

/-! ## A003105.P13943957081224666247

`A290307(∑[n+3])`
-/

namespace A003105.P13943957081224666247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003105.P13943957081224666247

/-!
# A003106: Number of partitions of n into parts 5k+2 or 5k+3.

The programs for A003106, there is no canonical definition to state claims against.
-/

/-! ## A003106.P12384347537677243929

`A286745(n)+A286744(n)`
-/

namespace A003106.P12384347537677243929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286745 n + A286744 n

end

end A003106.P12384347537677243929

/-! ## A003106.P13575291673597943710

`A224898(n)+2*A286745(n)`
-/

namespace A003106.P13575291673597943710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224898 n + 2 * A286745 n

end

end A003106.P13575291673597943710

/-! ## A003106.P12564273452156078995

`2*A286744(n)-A224898(n)`
-/

namespace A003106.P12564273452156078995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286744 n - A224898 n

end

end A003106.P12564273452156078995

/-! ## A003106.P9929854810272953148

`A000041(n)-A039900(n)`
-/

namespace A003106.P9929854810272953148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A039900 n

end

end A003106.P9929854810272953148

/-! ## A003106.P17820665383808072031

`∑[A002865(n)]-A039900(n)`
-/

namespace A003106.P17820665383808072031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A039900 n

end

end A003106.P17820665383808072031

/-! ## A003106.P7385242791899184203

`A133041(n)-(A039900(n)+n)`
-/

namespace A003106.P7385242791899184203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A039900 n + (n : ℤ))

end

end A003106.P7385242791899184203

/-! ## A003106.P9094409435464162697

`A052810(n)-(A057427(n)+A039900(n))`
-/

namespace A003106.P9094409435464162697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A057427 n + A039900 n)

end

end A003106.P9094409435464162697

/-! ## A003106.P7464196025265804642

`A052810(n)+A057428(n)-A039900(n)`
-/

namespace A003106.P7464196025265804642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n + (A057428 n - A039900 n)

end

end A003106.P7464196025265804642

/-! ## A003106.P10691574004156461997

`A139582(n)/2-A039900(n)`
-/

namespace A003106.P10691574004156461997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A039900 n : ℚ)

end

end A003106.P10691574004156461997

/-! ## A003106.P564843255313589615

`A003113(n)-A003114(n)`
-/

namespace A003106.P564843255313589615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - A003114 n

end

end A003106.P564843255313589615

/-! ## A003106.P15852541337249879054

`A035363(2*n)-A039900(n)`
-/

namespace A003106.P15852541337249879054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A039900 n

end

end A003106.P15852541337249879054

/-! ## A003106.P14189870654208294312

`A003114(n)+A039899(n)-A039900(n)`
-/

namespace A003106.P14189870654208294312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A039899 n - A039900 n)

end

end A003106.P14189870654208294312

/-! ## A003106.P153115824961589634

`A035574(n)-A035584(n)`
-/

namespace A003106.P153115824961589634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - A035584 n

end

end A003106.P153115824961589634

/-!
# A003107: Number of partitions of n into Fibonacci parts (with a single type of 1).

The programs for A003107, there is no canonical definition to state claims against.
-/

/-! ## A003107.P3575059958005361529

`∑[A238999(n)]`
-/

namespace A003107.P3575059958005361529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003107.P3575059958005361529

/-! ## A003107.P10895117856432090473

`∑[A239000(n)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003107.P10895117856432090473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239000 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A003107.P10895117856432090473

/-! ## A003107.P16110314373020556407

`A238999(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A003107.P16110314373020556407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A238999 n + a (A023443 n).toNat

end

end A003107.P16110314373020556407

/-! ## A003107.P14448712657249198225

`Δ[A007000(n)]-A238999(n+1)`
-/

namespace A003107.P14448712657249198225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238999 (n + 1)

end

end A003107.P14448712657249198225

/-! ## A003107.P9904309422876638557

`Δ[A007000(n)-A238999(n)]-A238999(n)`
-/

namespace A003107.P9904309422876638557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007000 n - A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238999 n

end

end A003107.P9904309422876638557

/-! ## A003107.P17416631495600074680

`A007000(n+1)-(A238999(n+1)+A007000(n))`
-/

namespace A003107.P17416631495600074680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007000 (n + 1) - (A238999 (n + 1) + A007000 n)

end

end A003107.P17416631495600074680

/-! ## A003107.P8147376749281512884

`2*A339371(n)-A298949(n)`
-/

namespace A003107.P8147376749281512884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339371 n - A298949 n

end

end A003107.P8147376749281512884

/-! ## A003107.P5960346709213702107

`A339372(n)+A339371(n)`
-/

namespace A003107.P5960346709213702107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339372 n + A339371 n

end

end A003107.P5960346709213702107

/-! ## A003107.P1862109648680061672

`A298949(n)+2*A339372(n)`
-/

namespace A003107.P1862109648680061672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298949 n + 2 * A339372 n

end

end A003107.P1862109648680061672

/-!
# A003108: Number of partitions of n into cubes.

The programs for A003108, there is no canonical definition to state claims against.
-/

/-! ## A003108.P11021098616546053016

`abs(Δ[A302834(abs(1-n))])`
-/

namespace A003108.P11021098616546053016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302834 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A003108.P11021098616546053016

/-! ## A003108.P2145038796413716147

`A078128(n)+a(n-1)` with `a(0)=1`
-/

namespace A003108.P2145038796413716147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078128 n + a (n - 1)

end

end A003108.P2145038796413716147

/-! ## A003108.P10213840946736625923

`A348522(n)+A010057(n)`
-/

namespace A003108.P10213840946736625923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348522 n + A010057 n

end

end A003108.P10213840946736625923

/-! ## A003108.P945840107135566003

`∑[A078128(A028310(n))]+1`
-/

namespace A003108.P945840107135566003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003108.P945840107135566003

/-! ## A003108.P6189672215967426721

`Δ[A302834(n)]-A078128(n+1)`
-/

namespace A003108.P6189672215967426721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078128 (n + 1)

end

end A003108.P6189672215967426721

/-! ## A003108.P3569845105126176411

`A302834(n+1)-(A302834(n)+A078128(n+1))`
-/

namespace A003108.P3569845105126176411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302834 (n + 1) - (A302834 n + A078128 (n + 1))

end

end A003108.P3569845105126176411

/-! ## A003108.P12763085160046865427

`A292560(n)+2*A339369(n)`
-/

namespace A003108.P12763085160046865427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292560 n + 2 * A339369 n

end

end A003108.P12763085160046865427

/-! ## A003108.P2111345158049296104

`A339369(n)+A339368(n)`
-/

namespace A003108.P2111345158049296104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 n + A339368 n

end

end A003108.P2111345158049296104

/-! ## A003108.P2303579344325545466

`2*A339368(n)-A292560(n)`
-/

namespace A003108.P2303579344325545466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339368 n - A292560 n

end

end A003108.P2303579344325545466

/-! ## A003108.P13116478119876374134

`A339368(n)-A057428(n)*A339369(n)`
-/

namespace A003108.P13116478119876374134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339368 n - A057428 n * A339369 n

end

end A003108.P13116478119876374134

/-! ## A003108.P4079269829797239748

`A023358(n)+A348522(n)-A348524(n)`
-/

namespace A003108.P4079269829797239748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n + (A348522 n - A348524 n)

end

end A003108.P4079269829797239748

/-! ## A003108.P5146399631021349601

`∑[A078128(A233583(n+1))]+1`
-/

namespace A003108.P5146399631021349601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003108.P5146399631021349601

/-!
# A003109: a(n) = number of special even permutations of 2*n+1.

The programs for A003109, there is no canonical definition to state claims against.
-/

/-! ## A003109.P7891042734558939041

`A003111(n+1)-A003110(n+1)`
-/

namespace A003109.P7891042734558939041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003111 (n + 1) - A003110 (n + 1)

end

end A003109.P7891042734558939041

/-! ## A003109.P15503972391129743406

`A006609(2*(n+2))-A003110(n+1)`
-/

namespace A003109.P15503972391129743406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006609 (2 * (n + 2)) - A003110 (n + 1)

end

end A003109.P15503972391129743406

/-!
# A003110: a(n) = number of special odd permutations of 2*n+1.

The programs for A003110, there is no canonical definition to state claims against.
-/

/-! ## A003110.P12801459958395313002

`A003111(n+1)-A003109(n+1)`
-/

namespace A003110.P12801459958395313002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003111 (n + 1) - A003109 (n + 1)

end

end A003110.P12801459958395313002

/-! ## A003110.P16826588219773947014

`A006609(2*(n+2))-A003109(n+1)`
-/

namespace A003110.P16826588219773947014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006609 (2 * (n + 2)) - A003109 (n + 1)

end

end A003110.P16826588219773947014

/-!
# A003111: Number of complete mappings of the cyclic group Z_{2n+1}.

The programs for A003111, there is no canonical definition to state claims against.
-/

/-! ## A003111.P16926278281948407533

`A006717(n)/Δ[n²]`
-/

namespace A003111.P16926278281948407533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006717 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A003111.P16926278281948407533

/-! ## A003111.P17250125857141883448

`floor(A006717(n)/A005408(n))`
-/

namespace A003111.P17250125857141883448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006717 n : ℚ) / (A005408 n : ℚ)⌋

end

end A003111.P17250125857141883448

/-! ## A003111.P8973555593535613004

`floor(A006717(n)/A283002(n+1))`
-/

namespace A003111.P8973555593535613004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006717 n : ℚ) / (A283002 (n + 1) : ℚ)⌋

end

end A003111.P8973555593535613004

/-!
# A003113: Coefficients in expansion of permanent of infinite tridiagonal matrix shown below.

The programs for A003113, there is no canonical definition to state claims against.
-/

/-! ## A003113.P2371306781992714288

`A003114(n)+A003106(n)`
-/

namespace A003113.P2371306781992714288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + A003106 n

end

end A003113.P2371306781992714288

/-! ## A003113.P1703095347704378696

`A003114(n)+A286745(n)+A286744(n)`
-/

namespace A003113.P1703095347704378696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A286745 n + A286744 n)

end

end A003113.P1703095347704378696

/-! ## A003113.P1332264622776431178

`A000041(n)+A003114(n)-A039900(n)`
-/

namespace A003113.P1332264622776431178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A003114 n - A039900 n)

end

end A003113.P1332264622776431178

/-! ## A003113.P18401911874673600294

`A003106(n)+A286316(n)+A286041(n)`
-/

namespace A003113.P18401911874673600294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A286316 n + A286041 n)

end

end A003113.P18401911874673600294

/-! ## A003113.P12478797984974754199

`A000041(n)+A003106(n)-A039899(n)`
-/

namespace A003113.P12478797984974754199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A003106 n - A039899 n)

end

end A003113.P12478797984974754199

/-!
# A003114: Number of partitions of n into parts 5k+1 or 5k+4.

The programs for A003114, there is no canonical definition to state claims against.
-/

/-! ## A003114.P15051739562859412411

`A000009(n)-A238708(n)`
-/

namespace A003114.P15051739562859412411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A238708 n

end

end A003114.P15051739562859412411

/-! ## A003114.P2563101609872874171

`abs(A081360(n))-A238708(n)`
-/

namespace A003114.P2563101609872874171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A238708 n

end

end A003114.P2563101609872874171

/-! ## A003114.P8674515369798860890

`A052839(n)+A057428(n)-A238708(n)`
-/

namespace A003114.P8674515369798860890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + (A057428 n - A238708 n)

end

end A003114.P8674515369798860890

/-! ## A003114.P12712647383044895309

`A000041(n)-(A238708(n)+A047967(n))`
-/

namespace A003114.P12712647383044895309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A238708 n + A047967 n)

end

end A003114.P12712647383044895309

/-! ## A003114.P13125673418535821685

`A003113(n)-A003106(n)`
-/

namespace A003114.P13125673418535821685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - A003106 n

end

end A003114.P13125673418535821685

/-! ## A003114.P16822261146386239600

`A286316(n)+A286041(n)`
-/

namespace A003114.P16822261146386239600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286316 n + A286041 n

end

end A003114.P16822261146386239600

/-! ## A003114.P2349621534996663376

`A039924(n)+2*A286316(n)`
-/

namespace A003114.P2349621534996663376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039924 n + 2 * A286316 n

end

end A003114.P2349621534996663376

/-! ## A003114.P15884608018597816077

`2*A286041(n)-A039924(n)`
-/

namespace A003114.P15884608018597816077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286041 n - A039924 n

end

end A003114.P15884608018597816077

/-! ## A003114.P3511051500108654993

`A286041(n)-A057428(n)*A286316(n)`
-/

namespace A003114.P3511051500108654993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286041 n - A057428 n * A286316 n

end

end A003114.P3511051500108654993

/-! ## A003114.P13070044824329511004

`A035457(2*n)-A238708(n)`
-/

namespace A003114.P13070044824329511004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A238708 n

end

end A003114.P13070044824329511004

/-! ## A003114.P16221087238617541720

`A000041(n)-A039899(n)`
-/

namespace A003114.P16221087238617541720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A039899 n

end

end A003114.P16221087238617541720

/-! ## A003114.P9007967064897320677

`∑[A002865(n)]-A039899(n)`
-/

namespace A003114.P9007967064897320677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A039899 n

end

end A003114.P9007967064897320677

/-! ## A003114.P6839426735702267135

`A133041(n)-(A039899(n)+n)`
-/

namespace A003114.P6839426735702267135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A039899 n + (n : ℤ))

end

end A003114.P6839426735702267135

/-! ## A003114.P11297191295599869069

`A003106(n)+A039900(n)-A039899(n)`
-/

namespace A003114.P11297191295599869069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n - A039899 n)

end

end A003114.P11297191295599869069

/-! ## A003114.P6091542986101111502

`A035575(n)-A035585(n)`
-/

namespace A003114.P6091542986101111502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035575 n - A035585 n

end

end A003114.P6091542986101111502

/-! ## A003114.P3701877912594288967

`A114087(∑[abs(1-n)])`
-/

namespace A003114.P3701877912594288967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003114.P3701877912594288967

/-! ## A003114.P12651010595337320214

`A114088(∑[abs(1-n)])`
-/

namespace A003114.P12651010595337320214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003114.P12651010595337320214

/-! ## A003114.P3122348773717979182

`A194543(A133263(n)+A134824(n)+1)`
-/

namespace A003114.P3122348773717979182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A133263 n + (A134824 n + 1)).toNat

end

end A003114.P3122348773717979182

/-! ## A003114.P2353559440767598361

`A194543(A027379(n)-(A004274(n)+1))`
-/

namespace A003114.P2353559440767598361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A027379 n - (A004274 n + 1)).toNat

end

end A003114.P2353559440767598361

/-! ## A003114.P11581862840385431546

`A194543(A027379(n)-1-A004274(n))`
-/

namespace A003114.P11581862840385431546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A027379 n - 1 - A004274 n).toNat

end

end A003114.P11581862840385431546

/-!
# A003115: a(n) = 4^floor(n/2)*a(n-1) - a(n-2), for n >= 2, with a(0) = a(1) = 1.

The programs for A003115, the canonical program `A003115.P11358601072911552252` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003115 has offset 0).

The definition of A003115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003115.P11358601072911552252

`4^floor(n/2)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003115

/-- `4^floor(n/2)*a(n-1)-a(n-2)` -/
def P11358601072911552252.Spec : Prop :=
  ∀ n, P11358601072911552252.a n = (A003115 n : ℚ)

end A003115

/-! ## A003115.P13857535365471580060

`(4^(n-1)-5)*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=11`
-/

namespace A003115.P13857535365471580060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 11] fun n a =>
  ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 5) * a (n - 2) - 4 * a (n - 4)

end

end A003115.P13857535365471580060

namespace A003115

/-- `(4^(n-1)-5)*a(n-2)-4*a(n-4)` -/
def P13857535365471580060.Spec : Prop :=
  ∀ n, P13857535365471580060.a n = (A003115 n : ℚ)

end A003115

/-!
# A003116: Expansion of the reciprocal of the g.f. defining A039924.

The programs for A003116, there is no canonical definition to state claims against.
-/

/-! ## A003116.P848936127558326712

`A225085(A238531(n))`
-/

namespace A003116.P848936127558326712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225085 (A238531 n).toNat

end

end A003116.P848936127558326712

/-! ## A003116.P415219255441066139

`A168396(A001105(A000007(n)+n))`
-/

namespace A003116.P415219255441066139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (A001105 (A000007 n + (n : ℤ)).toNat).toNat

end

end A003116.P415219255441066139

/-! ## A003116.P6904550699725251873

`A168396(∑[4*n]+1)`
-/

namespace A003116.P6904550699725251873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003116.P6904550699725251873

/-! ## A003116.P11369620487339753531

`gcd(A151878(n), A168396(A001844(n)))`
-/

namespace A003116.P11369620487339753531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A168396 (A001844 n).toNat)

end

end A003116.P11369620487339753531

/-! ## A003116.P17500519366256383092

`or(A000007(n), A168396(A001844(n)))`
-/

namespace A003116.P17500519366256383092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A168396 (A001844 n).toNat)

end

end A003116.P17500519366256383092

/-! ## A003116.P8664559250235425942

`A168396(A001844(n))+A000038(n+1)`
-/

namespace A003116.P8664559250235425942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (A001844 n).toNat + A000038 (n + 1)

end

end A003116.P8664559250235425942

/-!
# A003119: High-temperature series for spin-1/2 Ising magnetic susceptibility on diamond structure.

The programs for A003119, there is no canonical definition to state claims against.
-/

/-! ## A003119.P14470713855127811626

`A345676(A335780(n+1))+A334877(n)`
-/

namespace A003119.P14470713855127811626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345676 (A335780 (n + 1)).toNat + A334877 n

end

end A003119.P14470713855127811626

/-!
# A003120: Number of rooted trees with n nodes and omega-valency 1.

The programs for A003120, there is no canonical definition to state claims against.
-/

/-! ## A003120.P1486006911232238280

`A193491(A016028(n+1))`
-/

namespace A003120.P1486006911232238280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193491 (A016028 (n + 1)).toNat

end

end A003120.P1486006911232238280

/-! ## A003120.P12454631424265003105

`A193491(A022856(n+2)+1)`
-/

namespace A003120.P12454631424265003105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193491 (A022856 (n + 2) + 1).toNat

end

end A003120.P12454631424265003105

/-! ## A003120.P1524117882210709458

`A193491(A133263(n)-A004275(n))`
-/

namespace A003120.P1524117882210709458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193491 (A133263 n - A004275 n).toNat

end

end A003120.P1524117882210709458

/-! ## A003120.P8030745772215239102

`A193530(n)+A102681(A071742(n))`
-/

namespace A003120.P8030745772215239102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193530 n + A102681 (A071742 n).toNat

end

end A003120.P8030745772215239102

/-! ## A003120.P6684616173228964352

`A193530(A004892(n+1))`
-/

namespace A003120.P6684616173228964352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193530 (A004892 (n + 1)).toNat

end

end A003120.P6684616173228964352

/-!
# A003121: Strict sense ballot numbers: n candidates, k-th candidate gets k votes.

The programs for A003121, there is no canonical definition to state claims against.
-/

/-! ## A003121.P2921372994030652127

`A004065(2^n-1)`
-/

namespace A003121.P2921372994030652127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004065 (2 ^ n - 1)

end

end A003121.P2921372994030652127

/-! ## A003121.P17928518934802062061

`A282698(A000125(n))`
-/

namespace A003121.P17928518934802062061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282698 (A000125 n).toNat

end

end A003121.P17928518934802062061

/-! ## A003121.P3806518974472075488

`A282698(A318111(n+1))`
-/

namespace A003121.P3806518974472075488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282698 (A318111 (n + 1)).toNat

end

end A003121.P3806518974472075488

/-! ## A003121.P10643108982742054666

`lcm(A004065(A000225(n)), A004065(n))`
-/

namespace A003121.P10643108982742054666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004065 (A000225 n).toNat) (A004065 n)

end

end A003121.P10643108982742054666

/-! ## A003121.P18170347035350646533

`A282698(eq[A204118(n+1), A282698(n+1)])`
-/

namespace A003121.P18170347035350646533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282698 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A003121.P18170347035350646533

/-!
# A003122: Number of Hamiltonian rooted triangulations with n internal nodes and 3 external nodes.

The programs for A003122, there is no canonical definition to state claims against.
-/

/-! ## A003122.P4014635910626007443

`A391153(∑[n]+n)`
-/

namespace A003122.P4014635910626007443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391153 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A003122.P4014635910626007443

/-!
# A003123: Number of Hamiltonian rooted triangulations with n internal nodes and 4 external nodes.

The programs for A003123, there is no canonical definition to state claims against.
-/

/-! ## A003123.P568561109492946052

`A391153(∑[n+1]+n)`
-/

namespace A003123.P568561109492946052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391153 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A003123.P568561109492946052

/-!
# A003124: One of the basic cycles in the x->3x-1 (x odd) or x/2 (x even) problem.

The programs for A003124, the canonical program `A003124.P4124040314412767087` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003124 has offset 0).

The definition of A003124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003124.P4124040314412767087

`A001281(a(n-1))` with `a(0)=17`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003124

/-- `A001281(a(n-1))` -/
def P4124040314412767087.Spec : Prop :=
  ∀ n, P4124040314412767087.a n = A003124 n

theorem P4124040314412767087.correct : P4124040314412767087.Spec := by
  intro n
  simp only [A003124]

end A003124

/-!
# A003125: Value of an urn with n balls of type -1 and n+2 balls of type +1.

The programs for A003125, there is no canonical definition to state claims against.
-/

/-! ## A003125.P3186388988651874634

`A305849(A277924(n))-A000079(n)`
-/

namespace A003125.P3186388988651874634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305849 (A277924 n).toNat - A000079 n

end

end A003125.P3186388988651874634

/-! ## A003125.P7299848506667494215

`A008619(A291219(2*n+3))-A000984(n)`
-/

namespace A003125.P7299848506667494215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A291219 (2 * n + 3)).toNat - A000984 n

end

end A003125.P7299848506667494215

/-!
# A003126: Value of an urn with n balls of type -1 and n+1 balls of type +1.

The programs for A003126, there is no canonical definition to state claims against.
-/

/-! ## A003126.P7779775564139609317

`A073357(n)+A004709(A007583(n))`
-/

namespace A003126.P7779775564139609317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n + A004709 (A007583 n).toNat

end

end A003126.P7779775564139609317

/-! ## A003126.P13043386217332791969

`∑[A110655(Δ[A326212(n+1)])]`
-/

namespace A003126.P13043386217332791969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326212 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003126.P13043386217332791969

/-!
# A003127: Value of an urn with n balls of type -1 and n balls of type +1.

The programs for A003127, there is no canonical definition to state claims against.
-/

/-! ## A003127.P2487080312917617376

`A134119(A265939(n))`
-/

namespace A003127.P2487080312917617376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A265939 n).toNat

end

end A003127.P2487080312917617376

/-! ## A003127.P11541834809885975630

`A054896(∑[A003947(n)+1])`
-/

namespace A003127.P11541834809885975630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003127.P11541834809885975630

/-! ## A003127.P13421263167638201386

`floor(A116591(A000302(n)-1)/5)`
-/

namespace A003127.P13421263167638201386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116591 (A000302 n - 1).toNat : ℚ) / 5⌋

end

end A003127.P13421263167638201386

/-!
# A003128: Number of driving-point impedances of an n-terminal network.

The programs for A003128, the canonical program `A003128.P16016465235768534178` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003128 has offset 0).

The definition of A003128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003128.P16016465235768534178

`(A000110(n)-3*A000110(n+1)+A000110(n+2))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003128

/-- `(A000110(n)-3*A000110(n+1)+A000110(n+2))/2` -/
def P16016465235768534178.Spec : Prop :=
  ∀ n, P16016465235768534178.a n = (A003128 n : ℚ)

end A003128

/-! ## A003128.P8425069057174878355

`A226506(n)/2`
-/

namespace A003128.P8425069057174878355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226506 n : ℚ) / 2

end

end A003128.P8425069057174878355

namespace A003128

/-- `A226506(n)/2` -/
def P8425069057174878355.Spec : Prop :=
  ∀ n, P8425069057174878355.a n = (A003128 n : ℚ)

end A003128

/-! ## A003128.P18406596045771082109

`A033452(n)-A059606(n)`
-/

namespace A003128.P18406596045771082109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033452 n - A059606 n

end

end A003128.P18406596045771082109

namespace A003128

/-- `A033452(n)-A059606(n)` -/
def P18406596045771082109.Spec : Prop :=
  ∀ n, P18406596045771082109.a n = A003128 n

end A003128

/-! ## A003128.P8600710194027534342

`A005493(n)-A087648(n)`
-/

namespace A003128.P8600710194027534342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A087648 n

end

end A003128.P8600710194027534342

namespace A003128

/-- `A005493(n)-A087648(n)` -/
def P8600710194027534342.Spec : Prop :=
  ∀ n, P8600710194027534342.a n = A003128 n

end A003128

/-! ## A003128.P8872251371120943099

`A011965(n)-A087649(n)`
-/

namespace A003128.P8872251371120943099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A087649 n

end

end A003128.P8872251371120943099

namespace A003128

/-- `A011965(n)-A087649(n)` -/
def P8872251371120943099.Spec : Prop :=
  ∀ n, P8872251371120943099.a n = A003128 n

end A003128

/-! ## A003128.P7747776463280516061

`∑[A011965(n)]-A087648(n)`
-/

namespace A003128.P7747776463280516061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087648 n

end

end A003128.P7747776463280516061

namespace A003128

/-- `∑[A011965(n)]-A087648(n)` -/
def P7747776463280516061.Spec : Prop :=
  ∀ n, P7747776463280516061.a n = A003128 n

end A003128

/-! ## A003128.P17195599943861146206

`A059606(n)-Δ[A000110(n)]`
-/

namespace A003128.P17195599943861146206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059606 n - (f1 (n + 1) - f1 n)

end

end A003128.P17195599943861146206

namespace A003128

/-- `A059606(n)-Δ[A000110(n)]` -/
def P17195599943861146206.Spec : Prop :=
  ∀ n, P17195599943861146206.a n = A003128 n

end A003128

/-! ## A003128.P13849848894604829254

`A087649(n)-A000110(n+1)`
-/

namespace A003128.P13849848894604829254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087649 n - A000110 (n + 1)

end

end A003128.P13849848894604829254

namespace A003128

/-- `A087649(n)-A000110(n+1)` -/
def P13849848894604829254.Spec : Prop :=
  ∀ n, P13849848894604829254.a n = A003128 n

end A003128

/-! ## A003128.P16424395290734344603

`Δ[A000110(n+1)]-A087648(n)`
-/

namespace A003128.P16424395290734344603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A087648 n

end

end A003128.P16424395290734344603

namespace A003128

/-- `Δ[A000110(n+1)]-A087648(n)` -/
def P16424395290734344603.Spec : Prop :=
  ∀ n, P16424395290734344603.a n = A003128 n

end A003128

/-! ## A003128.P8469549892977366575

`(A033452(n)-Δ[A000110(n)])/2`
-/

namespace A003128.P8469549892977366575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033452 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A003128.P8469549892977366575

namespace A003128

/-- `(A033452(n)-Δ[A000110(n)])/2` -/
def P8469549892977366575.Spec : Prop :=
  ∀ n, P8469549892977366575.a n = (A003128 n : ℚ)

end A003128

/-!
# A003129: Number of transfer impedances of an n-terminal network.

The programs for A003129, there is no canonical definition to state claims against.
-/

/-! ## A003129.P354637390623535565

`A004525(floor(A212700(n+1)/8))`
-/

namespace A003129.P354637390623535565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌊(A212700 (n + 1) : ℚ) / 8⌋.toNat

end

end A003129.P354637390623535565

/-!
# A003132: Sum of squares of digits of n.

The programs for A003132, the canonical program `A003132.P15693766495744030229` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003132 has offset 0).

The definition of A003132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003132.P15693766495744030229

`∑{digits}[n, #²]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003132

/-- `∑{digits}[n, #²]` -/
def P15693766495744030229.Spec : Prop :=
  ∀ n, (P15693766495744030229.a n : ℤ) = A003132 n

theorem P15693766495744030229.correct : P15693766495744030229.Spec := by
  intro n
  simp only [A003132]

end A003132

/-! ## A003132.P18020375409938144584

`log2(∏{digits}[n, 2^#²])`
-/

namespace A003132.P18020375409938144584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x ^ 2).prod : ℕ) : ℝ)

end

end A003132.P18020375409938144584

namespace A003132

/-- `log2(∏{digits}[n, 2^#²])` -/
def P18020375409938144584.Spec : Prop :=
  ∀ n, P18020375409938144584.a n = (A003132 n : ℝ)

end A003132

/-! ## A003132.P320911789472732322

`val(∏{digits}[n, 2^#²], 2)`
-/

namespace A003132.P320911789472732322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x ^ 2).prod 2

end

end A003132.P320911789472732322

namespace A003132

/-- `val(∏{digits}[n, 2^#²], 2)` -/
def P320911789472732322.Spec : Prop :=
  ∀ n, (P320911789472732322.a n : ℤ) = A003132 n

end A003132

/-! ## A003132.P6890159773869233557

`floor(∑{digits}[n, #^(4/2)])`
-/

namespace A003132.P6890159773869233557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum⌋

end

end A003132.P6890159773869233557

namespace A003132

/-- `floor(∑{digits}[n, #^(4/2)])` -/
def P6890159773869233557.Spec : Prop :=
  ∀ n, P6890159773869233557.a n = A003132 n

end A003132

/-! ## A003132.P1859039242950891107

`ceil(∑{digits}[n, #^(4/2)])`
-/

namespace A003132.P1859039242950891107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum⌉

end

end A003132.P1859039242950891107

namespace A003132

/-- `ceil(∑{digits}[n, #^(4/2)])` -/
def P1859039242950891107.Spec : Prop :=
  ∀ n, P1859039242950891107.a n = A003132 n

end A003132

/-! ## A003132.P1892429535858868703

`round(∑{digits}[n, #^(4/2)])`
-/

namespace A003132.P1892429535858868703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum

end

end A003132.P1892429535858868703

namespace A003132

/-- `round(∑{digits}[n, #^(4/2)])` -/
def P1892429535858868703.Spec : Prop :=
  ∀ n, P1892429535858868703.a n = A003132 n

end A003132

/-! ## A003132.P4819520729797081694

`∑{digits}[n, A001105(#)]/2`
-/

namespace A003132.P4819520729797081694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2

end

end A003132.P4819520729797081694

namespace A003132

/-- `∑{digits}[n, A001105(#)]/2` -/
def P4819520729797081694.Spec : Prop :=
  ∀ n, P4819520729797081694.a n = (A003132 n : ℚ)

end A003132

/-! ## A003132.P6348294962046798244

`A118881(n)-A069816(n)`
-/

namespace A003132.P6348294962046798244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A069816 n

end

end A003132.P6348294962046798244

namespace A003132

/-- `A118881(n)-A069816(n)` -/
def P6348294962046798244.Spec : Prop :=
  ∀ n, P6348294962046798244.a n = A003132 n

theorem P6348294962046798244.correct : P6348294962046798244.Spec := by
  intro n
  simp only [A003132, Nat.add_sub_cancel, A003132.P6348294962046798244.a, A003132.P15693766495744030229.f1, A003132.P15693766495744030229.a, A069816, A069816.P2167086169845687567.a, A118881, A118881.P8524186405013838056.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003132

/-! ## A003132.P11079155982778269406

`A007953(n)²-A069816(n)`
-/

namespace A003132.P11079155982778269406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A069816 n

end

end A003132.P11079155982778269406

namespace A003132

/-- `A007953(n)²-A069816(n)` -/
def P11079155982778269406.Spec : Prop :=
  ∀ n, P11079155982778269406.a n = A003132 n

theorem P11079155982778269406.correct : P11079155982778269406.Spec := by
  intro n
  simp only [A003132, Nat.add_sub_cancel, A003132.P11079155982778269406.a, A003132.P15693766495744030229.f1, A003132.P15693766495744030229.a, A007953, A007953.P3472751987379697826.a, A069816, A069816.P2167086169845687567.a, A054899, A054899.P10770181254942084517.a, A118881, A118881.P8524186405013838056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003132

/-! ## A003132.P4531331125905377551

`A004159(n)+A067552(n)-A069816(n)`
-/

namespace A003132.P4531331125905377551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (A067552 n - A069816 n)

end

end A003132.P4531331125905377551

namespace A003132

/-- `A004159(n)+A067552(n)-A069816(n)` -/
def P4531331125905377551.Spec : Prop :=
  ∀ n, P4531331125905377551.a n = A003132 n

theorem P4531331125905377551.correct : P4531331125905377551.Spec := by
  intro n
  simp only [A003132, Nat.add_sub_cancel, A003132.P4531331125905377551.a, A003132.P15693766495744030229.f1, A003132.P15693766495744030229.a, A004159, A004159.P12894520007403696170.a, A067552, A067552.P17186920303504174424.a, A069816, A069816.P2167086169845687567.a, A007953, A007953.P3472751987379697826.a, A118881, A118881.P8524186405013838056.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003132

/-! ## A003132.P15335040591110349988

`A289506(A113581(n))`
-/

namespace A003132.P15335040591110349988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A113581 n).toNat

end

end A003132.P15335040591110349988

namespace A003132

/-- `A289506(A113581(n))` -/
def P15335040591110349988.Spec : Prop :=
  ∀ n, P15335040591110349988.a n = A003132 n

end A003132

/-! ## A003132.P10956283521217728221

`log(∏{digits}[n, exp(#²)])`
-/

namespace A003132.P10956283521217728221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x ^ 2 : ℝ)).prod

end

end A003132.P10956283521217728221

namespace A003132

/-- `log(∏{digits}[n, exp(#²)])` -/
def P10956283521217728221.Spec : Prop :=
  ∀ n, P10956283521217728221.a n = (A003132 n : ℝ)

end A003132

/-! ## A003132.P18395526762027328662

`A257587(A051022(n))`
-/

namespace A003132.P18395526762027328662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 (A051022 n).toNat

end

end A003132.P18395526762027328662

namespace A003132

/-- `A257587(A051022(n))` -/
def P18395526762027328662.Spec : Prop :=
  ∀ n, P18395526762027328662.a n = A003132 n

end A003132

/-! ## A003132.P10338673557763489545

`A111707(A056142(n))`
-/

namespace A003132.P10338673557763489545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A056142 n).toNat

end

end A003132.P10338673557763489545

namespace A003132

/-- `A111707(A056142(n))` -/
def P10338673557763489545.Spec : Prop :=
  ∀ n, P10338673557763489545.a n = A003132 n

end A003132

/-!
# A003136: Loeschian numbers: numbers of the form x^2 + xy + y^2; norms of vectors in A2 lattice.

The programs for A003136, the canonical program `A003136.P5015395237831385942` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003136 has offset 1).

The definition of A003136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003136.P12544857352875693919

`lt[0, A033716(n)]`
-/

namespace A003136.P12544857352875693919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003136.P12544857352875693919

namespace A003136

/-- `lt[0, A033716(n)]` -/
def P12544857352875693919.Spec : Prop :=
  ∀ n, (P12544857352875693919.a n : ℤ) = A003136 (n + 1)

end A003136

/-! ## A003136.P5729546204456407188

`lt[0, A119395(n)]`
-/

namespace A003136.P5729546204456407188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003136.P5729546204456407188

namespace A003136

/-- `lt[0, A119395(n)]` -/
def P5729546204456407188.Spec : Prop :=
  ∀ n, (P5729546204456407188.a n : ℤ) = A003136 (n + 1)

end A003136

/-! ## A003136.P169594680264224413

`lt[0, A217220(n)]`
-/

namespace A003136.P169594680264224413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003136.P169594680264224413

namespace A003136

/-- `lt[0, A217220(n)]` -/
def P169594680264224413.Spec : Prop :=
  ∀ n, (P169594680264224413.a n : ℤ) = A003136 (n + 1)

end A003136

/-! ## A003136.P5015395237831385942

`eq[1, A353816(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003136

/-- `eq[1, A353816(n)]` -/
def P5015395237831385942.Spec : Prop :=
  ∀ n, (P5015395237831385942.a n : ℤ) = A003136 (n + 1)

theorem P5015395237831385942.correct : P5015395237831385942.Spec := by
  intro n
  simp only [A003136, Nat.add_sub_cancel]

end A003136

/-! ## A003136.P10265867691592853523

`A270050(n+1)/2`
-/

namespace A003136.P10265867691592853523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270050 (n + 1) : ℚ) / 2

end

end A003136.P10265867691592853523

namespace A003136

/-- `A270050(n+1)/2` -/
def P10265867691592853523.Spec : Prop :=
  ∀ n, P10265867691592853523.a n = (A003136 (n + 1) : ℚ)

theorem P10265867691592853523.correct : P10265867691592853523.Spec := by
  intro n
  simp only [A003136, Nat.add_sub_cancel, A003136.P10265867691592853523.a, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270050, A270050.P15374850051776029815.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003136

/-! ## A003136.P10376578028980001030

`A270672(n+1)/3`
-/

namespace A003136.P10376578028980001030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270672 (n + 1) : ℚ) / 3

end

end A003136.P10376578028980001030

namespace A003136

/-- `A270672(n+1)/3` -/
def P10376578028980001030.Spec : Prop :=
  ∀ n, P10376578028980001030.a n = (A003136 (n + 1) : ℚ)

theorem P10376578028980001030.correct : P10376578028980001030.Spec := by
  intro n
  simp only [A003136, Nat.add_sub_cancel, A003136.P10376578028980001030.a, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270672, A270672.P7077653201386938758.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003136

/-! ## A003136.P16490903478483840804

`A270248(n+1)/4`
-/

namespace A003136.P16490903478483840804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270248 (n + 1) : ℚ) / 4

end

end A003136.P16490903478483840804

namespace A003136

/-- `A270248(n+1)/4` -/
def P16490903478483840804.Spec : Prop :=
  ∀ n, P16490903478483840804.a n = (A003136 (n + 1) : ℚ)

theorem P16490903478483840804.correct : P16490903478483840804.Spec := by
  intro n
  simp only [A003136, Nat.add_sub_cancel, A003136.P16490903478483840804.a, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270248, A270248.P13305958007717822557.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, A270050, A270050.P15374850051776029815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003136

/-! ## A003136.P1150959454151693093

`∪[A024614(n+1), n²]`
-/

namespace A003136.P1150959454151693093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A003136.P1150959454151693093

namespace A003136

/-- `∪[A024614(n+1), n²]` -/
def P1150959454151693093.Spec : Prop :=
  ∀ n, (P1150959454151693093.a n : ℤ) = A003136 (n + 1)

end A003136

/-! ## A003136.P7282147985263465488

`eq[1, A002828(A033716(n)²)]`
-/

namespace A003136.P7282147985263465488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A033716 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003136.P7282147985263465488

namespace A003136

/-- `eq[1, A002828(A033716(n)²)]` -/
def P7282147985263465488.Spec : Prop :=
  ∀ n, (P7282147985263465488.a n : ℤ) = A003136 (n + 1)

end A003136

/-! ## A003136.P11998807202817427363

`eq[1, A208645(2*A033716(n))]`
-/

namespace A003136.P11998807202817427363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (2 * A033716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003136.P11998807202817427363

namespace A003136

/-- `eq[1, A208645(2*A033716(n))]` -/
def P11998807202817427363.Spec : Prop :=
  ∀ n, (P11998807202817427363.a n : ℤ) = A003136 (n + 1)

end A003136

/-! ## A003136.P3781177389741553748

`filter[A383784(n+1), A353816(#)]`
-/

namespace A003136.P3781177389741553748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A003136.P3781177389741553748

namespace A003136

/-- `filter[A383784(n+1), A353816(#)]` -/
def P3781177389741553748.Spec : Prop :=
  ∀ n, P3781177389741553748.a n = A003136 (n + 1)

end A003136

/-! ## A003136.P7923619476852979538

`∪[A000290(n), A024614(n+1)]`
-/

namespace A003136.P7923619476852979538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003136.P7923619476852979538

namespace A003136

/-- `∪[A000290(n), A024614(n+1)]` -/
def P7923619476852979538.Spec : Prop :=
  ∀ n, (P7923619476852979538.a n : ℤ) = A003136 (n + 1)

end A003136

/-! ## A003136.P13726082004584026447

`A270672(n+1)-A270050(n+1)`
-/

namespace A003136.P13726082004584026447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270672 (n + 1) - A270050 (n + 1)

end

end A003136.P13726082004584026447

namespace A003136

/-- `A270672(n+1)-A270050(n+1)` -/
def P13726082004584026447.Spec : Prop :=
  ∀ n, P13726082004584026447.a n = A003136 (n + 1)

theorem P13726082004584026447.correct : P13726082004584026447.Spec := by
  intro n
  simp only [A003136, Nat.add_sub_cancel, A003136.P13726082004584026447.a, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270050, A270050.P15374850051776029815.a, A270672, A270672.P7077653201386938758.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003136

/-! ## A003136.P2078491178206700765

`A270248(n+1)-A270672(n+1)`
-/

namespace A003136.P2078491178206700765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 1) - A270672 (n + 1)

end

end A003136.P2078491178206700765

namespace A003136

/-- `A270248(n+1)-A270672(n+1)` -/
def P2078491178206700765.Spec : Prop :=
  ∀ n, P2078491178206700765.a n = A003136 (n + 1)

theorem P2078491178206700765.correct : P2078491178206700765.Spec := by
  intro n
  simp only [A003136, Nat.add_sub_cancel, A003136.P2078491178206700765.a, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270248, A270248.P13305958007717822557.a, A270672, A270672.P7077653201386938758.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, A270050, A270050.P15374850051776029815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003136

/-! ## A003136.P1736385417183474380

`filter[A014682(n), A353816(#)]`
-/

namespace A003136.P1736385417183474380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A003136.P1736385417183474380

namespace A003136

/-- `filter[A014682(n), A353816(#)]` -/
def P1736385417183474380.Spec : Prop :=
  ∀ n, P1736385417183474380.a n = A003136 (n + 1)

end A003136

/-! ## A003136.P5740087548510720099

`filter[A026140(n+1), A353816(#)]`
-/

namespace A003136.P5740087548510720099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A003136.P5740087548510720099

namespace A003136

/-- `filter[A026140(n+1), A353816(#)]` -/
def P5740087548510720099.Spec : Prop :=
  ∀ n, P5740087548510720099.a n = A003136 (n + 1)

end A003136

/-! ## A003136.P947089925419264360

`filter[A032766(n), A353816(#)]`
-/

namespace A003136.P947089925419264360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A003136.P947089925419264360

namespace A003136

/-- `filter[A032766(n), A353816(#)]` -/
def P947089925419264360.Spec : Prop :=
  ∀ n, P947089925419264360.a n = A003136 (n + 1)

end A003136

/-! ## A003136.P4371850934621164946

`filter[A107750(n), A353816(#)]`
-/

namespace A003136.P4371850934621164946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A003136.P4371850934621164946

namespace A003136

/-- `filter[A107750(n), A353816(#)]` -/
def P4371850934621164946.Spec : Prop :=
  ∀ n, P4371850934621164946.a n = A003136 (n + 1)

end A003136

/-! ## A003136.P15439340788320445073

`filter[A042965(n+1), A353816(#)]`
-/

namespace A003136.P15439340788320445073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A003136.P15439340788320445073

namespace A003136

/-- `filter[A042965(n+1), A353816(#)]` -/
def P15439340788320445073.Spec : Prop :=
  ∀ n, P15439340788320445073.a n = A003136 (n + 1)

end A003136

/-! ## A003136.P15645301722041355100

`comp[A034020(n+1)]`
-/

namespace A003136.P15645301722041355100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003136.P15645301722041355100

namespace A003136

/-- `comp[A034020(n+1)]` -/
def P15645301722041355100.Spec : Prop :=
  ∀ n, (P15645301722041355100.a n : ℤ) = A003136 (n + 1)

end A003136

/-!
# A003137: Write n in base 3 and juxtapose.

The programs for A003137, there is no canonical definition to state claims against.
-/

/-! ## A003137.P1223562258052963202

`2-A030351(n+1)`
-/

namespace A003137.P1223562258052963202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A030351 (n + 1)

end

end A003137.P1223562258052963202

/-! ## A003137.P3173897921157238533

`Δ[A054637(n)]`
-/

namespace A003137.P3173897921157238533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003137.P3173897921157238533

/-! ## A003137.P6647687847850664303

`A054635(n+1)`
-/

namespace A003137.P6647687847850664303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (n + 1)

end

end A003137.P6647687847850664303

/-! ## A003137.P13375975686965338716

`∑[Δ[A054635(n)]%3]`
-/

namespace A003137.P13375975686965338716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003137.P13375975686965338716

/-! ## A003137.P581773224692987806

`A054637(n+1)-A054637(n)`
-/

namespace A003137.P581773224692987806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (n + 1) - A054637 n

end

end A003137.P581773224692987806

/-! ## A003137.P18341635432090666560

`A055144(n+1)%3`
-/

namespace A003137.P18341635432090666560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055144 (n + 1)) 3

end

end A003137.P18341635432090666560

/-!
# A003138: Nearest integer to 24*(2^n - 1)/n.

The programs for A003138, the canonical program `A003138.P11274673192583861684` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003138 has offset 1).

The definition of A003138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003138.P11274673192583861684

`round(24*(2^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003138

/-- `round(24*(2^(n+1)-1)/(n+1))` -/
def P11274673192583861684.Spec : Prop :=
  ∀ n, P11274673192583861684.a n = A003138 (n + 1)

theorem P11274673192583861684.correct : P11274673192583861684.Spec := by
  intro n
  simp only [A003138, Nat.add_sub_cancel]

end A003138

/-! ## A003138.P3403059538774762660

`A000007(n+1)+round(A305065(n)/(n+1))`
-/

namespace A003138.P3403059538774762660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A305065 n : ℚ) / (n + 1 : ℚ))

end

end A003138.P3403059538774762660

namespace A003138

/-- `A000007(n+1)+round(A305065(n)/(n+1))` -/
def P3403059538774762660.Spec : Prop :=
  ∀ n, P3403059538774762660.a n = A003138 (n + 1)

theorem P3403059538774762660.correct : P3403059538774762660.Spec := by
  intro n
  simp only [A003138, Nat.add_sub_cancel, A003138.P3403059538774762660.a, A003138.P11274673192583861684.a, A000007, A000007.P6599383543502402472.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003138

/-! ## A003138.P4752873763893641941

`round(A305065(n)/(n+1))/A266227(2*n+3)`
-/

namespace A003138.P4752873763893641941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A305065 n : ℚ) / (n + 1 : ℚ)) : ℚ) / (A266227 (2 * n + 3) : ℚ)

end

end A003138.P4752873763893641941

namespace A003138

/-- `round(A305065(n)/(n+1))/A266227(2*n+3)` -/
def P4752873763893641941.Spec : Prop :=
  ∀ n, P4752873763893641941.a n = (A003138 (n + 1) : ℚ)

end A003138

/-! ## A003138.P7872198497459427510

`round(A305065(n)/(n+1))*A001222(A078376(n+1))`
-/

namespace A003138.P7872198497459427510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305065 n : ℚ) / (n + 1 : ℚ)) * A001222 (A078376 (n + 1)).toNat

end

end A003138.P7872198497459427510

namespace A003138

/-- `round(A305065(n)/(n+1))*A001222(A078376(n+1))` -/
def P7872198497459427510.Spec : Prop :=
  ∀ n, P7872198497459427510.a n = A003138 (n + 1)

end A003138

/-! ## A003138.P6586228852740270985

`round(A305065(n)/(n+1))%A075299(n+2)`
-/

namespace A003138.P6586228852740270985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A305065 n : ℚ) / (n + 1 : ℚ))) (A075299 (n + 2))

end

end A003138.P6586228852740270985

namespace A003138

/-- `round(A305065(n)/(n+1))%A075299(n+2)` -/
def P6586228852740270985.Spec : Prop :=
  ∀ n, P6586228852740270985.a n = A003138 (n + 1)

end A003138

/-! ## A003138.P9771087955927250505

`A088911(A044486(n+1))+round(A305065(n)/(n+1))`
-/

namespace A003138.P9771087955927250505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (A044486 (n + 1)).toNat + SequenceMachineLib.roundAway ((A305065 n : ℚ) / (n + 1 : ℚ))

end

end A003138.P9771087955927250505

namespace A003138

/-- `A088911(A044486(n+1))+round(A305065(n)/(n+1))` -/
def P9771087955927250505.Spec : Prop :=
  ∀ n, P9771087955927250505.a n = A003138 (n + 1)

end A003138

/-!
# A003139: Number of coprime chains with largest member n.

The programs for A003139, there is no canonical definition to state claims against.
-/

/-! ## A003139.P8590649442298553924

`A325091(A048864(n+1)%A338197(n+3))`
-/

namespace A003139.P8590649442298553924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325091 (Int.tmod (A048864 (n + 1)) (A338197 (n + 3))).toNat

end

end A003139.P8590649442298553924

/-! ## A003139.P4353646814705110680

`A325091(A048864(n+1))%A176983(3*(n+1))`
-/

namespace A003139.P4353646814705110680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325091 (A048864 (n + 1)).toNat) (A176983 (3 * (n + 1)))

end

end A003139.P4353646814705110680

/-! ## A003139.P14513558607899657273

`A046097(A048864(n+1))`
-/

namespace A003139.P14513558607899657273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046097 (A048864 (n + 1)).toNat

end

end A003139.P14513558607899657273

/-! ## A003139.P7671470313496364030

`A046097(A036997(n+1)+1)`
-/

namespace A003139.P7671470313496364030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046097 (A036997 (n + 1) + 1).toNat

end

end A003139.P7671470313496364030

/-! ## A003139.P7944799154276489079

`A106444(∏{e}[A124442(n+1), #])`
-/

namespace A003139.P7944799154276489079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A003139.P7944799154276489079

/-!
# A003140: Number of coprime chains with largest member prime(n).

The programs for A003140, there is no canonical definition to state claims against.
-/

/-! ## A003140.P5808617551880627231

`A003139(p?[xor(1, n)])`
-/

namespace A003140.P5808617551880627231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A003140.P5808617551880627231

/-! ## A003140.P18342588065000235014

`A343659(p?[xor(1, n)])`
-/

namespace A003140.P18342588065000235014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343659 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A003140.P18342588065000235014

/-! ## A003140.P3418607559744949581

`A003139(p?[comp[n²]])`
-/

namespace A003140.P3418607559744949581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A003140.P3418607559744949581

/-! ## A003140.P15126604018347629670

`A343659(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A003140.P15126604018347629670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343659 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A003140.P15126604018347629670

/-! ## A003140.P16763375867261753140

`A003139(Δ[A007504(n)])`
-/

namespace A003140.P16763375867261753140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (f1 (n + 1) - f1 n).toNat

end

end A003140.P16763375867261753140

/-! ## A003140.P1130734462609818072

`A343659(Δ[A007504(n)])`
-/

namespace A003140.P1130734462609818072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343659 (f1 (n + 1) - f1 n).toNat

end

end A003140.P1130734462609818072

/-! ## A003140.P11615735826562751923

`A003139(A000040(n+1))`
-/

namespace A003140.P11615735826562751923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (A000040 (n + 1)).toNat

end

end A003140.P11615735826562751923

/-! ## A003140.P3247043604892998444

`A003139(A006005(n+1))`
-/

namespace A003140.P3247043604892998444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (A006005 (n + 1)).toNat

end

end A003140.P3247043604892998444

/-! ## A003140.P4211922521611114773

`A003139(A176997(n+1))`
-/

namespace A003140.P4211922521611114773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (A176997 (n + 1)).toNat

end

end A003140.P4211922521611114773

/-! ## A003140.P9219091999850227448

`A003139(A216883(n+1))`
-/

namespace A003140.P9219091999850227448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (A216883 (n + 1)).toNat

end

end A003140.P9219091999850227448

/-!
# A003141: Minimal number of arcs whose reversal yields a transitive tournament.

The programs for A003141, there is no canonical definition to state claims against.
-/

/-! ## A003141.P17826907170359968531

`∑[ceil(n/(gcd(4, n)+1))]-n`
-/

namespace A003141.P17826907170359968531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (Nat.gcd 4 n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A003141.P17826907170359968531

/-! ## A003141.P2743308683117970710

`ceil(2*C(n, 3)/lt[n, n*n%6])`
-/

namespace A003141.P2743308683117970710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Nat.choose n 3 : ℚ) / (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ)⌉

end

end A003141.P2743308683117970710

/-! ## A003141.P9551456773941612054

`∑[A059995(lcm(4, n)+n)]`
-/

namespace A003141.P9551456773941612054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Nat.lcm 4 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003141.P9551456773941612054

/-! ## A003141.P7686129523954242808

`∑[ceil(abs(n/A123725(n)))]-n`
-/

namespace A003141.P7686129523954242808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(n : ℚ) / (A123725 n : ℚ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A003141.P7686129523954242808

/-! ## A003141.P10871147787565262708

`∑[ceil(n/A089080(n+1))]-n`
-/

namespace A003141.P10871147787565262708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A089080 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A003141.P10871147787565262708

/-!
# A003142: Largest subset of 3 X 3 X ... X 3 cube (in n dimensions) with no 3 points collinear.

The programs for A003142, there is no canonical definition to state claims against.
-/

/-! ## A003142.P4908351431549134394

`A183112(n)+A055498(n)`
-/

namespace A003142.P4908351431549134394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 n + A055498 n

end

end A003142.P4908351431549134394

/-! ## A003142.P16518858730312301342

`A090413(n)-A326511(n)`
-/

namespace A003142.P16518858730312301342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090413 n - A326511 (n + 10)

end

end A003142.P16518858730312301342

/-! ## A003142.P9241909813675073370

`A333106(n)-A139800(n)`
-/

namespace A003142.P9241909813675073370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333106 n - A139800 n

end

end A003142.P9241909813675073370

/-!
# A003143: a(2*n) = floor( 17*2^n/14 ), a(2*n+1) = floor( 12*2^n/7 ).

The programs for A003143, the canonical program `A003143.P5014643393181588498` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003143 has offset 0).

The definition of A003143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003143.P5014643393181588498

`ogf((1+x^3-x^4+x^5-x^6+x^7)/(1-x-x^2+x^3-x^4+x^5-2x^6+2x^7))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003143

/-- `ogf((1+x^3-x^4+x^5-x^6+x^7)/(1-x-x^2+x^3-x^4+x^5-2x^6+2x^7))` -/
def P5014643393181588498.Spec : Prop :=
  ∀ n, P5014643393181588498.a n = A003143 n

theorem P5014643393181588498.correct : P5014643393181588498.Spec := by
  intro n
  simp only [A003143]

end A003143

/-! ## A003143.P13085285990544806927

`A200310(A028310(n))+1`
-/

namespace A003143.P13085285990544806927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200310 (A028310 n).toNat + 1

end

end A003143.P13085285990544806927

namespace A003143

/-- `A200310(A028310(n))+1` -/
def P13085285990544806927.Spec : Prop :=
  ∀ n, P13085285990544806927.a n = A003143 n

end A003143

/-! ## A003143.P10671447012945367819

`A200310(abs(A274922(n)))+1`
-/

namespace A003143.P10671447012945367819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200310 |A274922 n|.toNat + 1

end

end A003143.P10671447012945367819

namespace A003143

/-- `A200310(abs(A274922(n)))+1` -/
def P10671447012945367819.Spec : Prop :=
  ∀ n, P10671447012945367819.a n = A003143 n

end A003143

/-! ## A003143.P17950422047520103601

`A200310(A065033(2*n))+1`
-/

namespace A003143.P17950422047520103601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200310 (A065033 (2 * n)).toNat + 1

end

end A003143.P17950422047520103601

namespace A003143

/-- `A200310(A065033(2*n))+1` -/
def P17950422047520103601.Spec : Prop :=
  ∀ n, P17950422047520103601.a n = A003143 n

end A003143

/-! ## A003143.P170074439756737904

`ceil(∑[A070875(n)/14])`
-/

namespace A003143.P170074439756737904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070875 n : ℚ) / 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A003143.P170074439756737904

namespace A003143

/-- `ceil(∑[A070875(n)/14])` -/
def P170074439756737904.Spec : Prop :=
  ∀ n, P170074439756737904.a n = A003143 n

end A003143

/-! ## A003143.P7204080118992514230

`floor((29+5*(-1)^n)*2^((2*n-7-(-1)^n)/4)/7)`
-/

namespace A003143.P7204080118992514230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(29 + 5 * (-1) ^ n : ℝ) * (2 : ℝ) ^ (((2 * n : ℤ) - 7 - (-1) ^ n : ℚ) / 4 : ℝ) / 7⌋

end

end A003143.P7204080118992514230

namespace A003143

/-- `floor((29+5*(-1)^n)*2^((2*n-7-(-1)^n)/4)/7)` -/
def P7204080118992514230.Spec : Prop :=
  ∀ n, P7204080118992514230.a n = A003143 n

end A003143

/-! ## A003143.P12851877261108406275

`A200310(A134478(∑[n]))+1`
-/

namespace A003143.P12851877261108406275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200310 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A003143.P12851877261108406275

namespace A003143

/-- `A200310(A134478(∑[n]))+1` -/
def P12851877261108406275.Spec : Prop :=
  ∀ n, P12851877261108406275.a n = A003143 n

end A003143

/-! ## A003143.P9156597075224992819

`A200310(A137734(n²))+1`
-/

namespace A003143.P9156597075224992819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200310 (A137734 (n ^ 2)).toNat + 1

end

end A003143.P9156597075224992819

namespace A003143

/-- `A200310(A137734(n²))+1` -/
def P9156597075224992819.Spec : Prop :=
  ∀ n, P9156597075224992819.a n = A003143 n

end A003143

/-!
# A003144: Positions of letter a in the tribonacci word abacabaabacababac... generated by a->ab, b->ac, c->a (cf. A092782).

The programs for A003144, the canonical program `A003144.P14581909281585168490` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003144 has offset 1).

The definition of A003144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003144.P10936853882164874396

`A278039(n)+1`
-/

namespace A003144.P10936853882164874396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + 1

end

end A003144.P10936853882164874396

namespace A003144

/-- `A278039(n)+1` -/
def P10936853882164874396.Spec : Prop :=
  ∀ n, P10936853882164874396.a n = A003144 (n + 1)

theorem P10936853882164874396.correct : P10936853882164874396.Spec := by
  intro n
  simp only [A003144, Nat.add_sub_cancel, A003144.P10936853882164874396.a, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A278039, A278039.P16218767788797619260.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003144

/-! ## A003144.P552051402215599829

`∑[A305374(n)-1]`
-/

namespace A003144.P552051402215599829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003144.P552051402215599829

namespace A003144

/-- `∑[A305374(n)-1]` -/
def P552051402215599829.Spec : Prop :=
  ∀ n, P552051402215599829.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P14732317380471545084

`∑[2-A276791(n)]`
-/

namespace A003144.P14732317380471545084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003144.P14732317380471545084

namespace A003144

/-- `∑[2-A276791(n)]` -/
def P14732317380471545084.Spec : Prop :=
  ∀ n, P14732317380471545084.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P2504265218086173068

`comp[A351631(n+1)]`
-/

namespace A003144.P2504265218086173068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003144.P2504265218086173068

namespace A003144

/-- `comp[A351631(n+1)]` -/
def P2504265218086173068.Spec : Prop :=
  ∀ n, (P2504265218086173068.a n : ℤ) = A003144 (n + 1)

end A003144

/-! ## A003144.P16698941269334957511

`eq[0, A080843(n)]+1`
-/

namespace A003144.P16698941269334957511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003144.P16698941269334957511

namespace A003144

/-- `eq[0, A080843(n)]+1` -/
def P16698941269334957511.Spec : Prop :=
  ∀ n, (P16698941269334957511.a n : ℤ) = A003144 (n + 1)

end A003144

/-! ## A003144.P14581909281585168490

`lt[0, A278045(n)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003144

/-- `lt[0, A278045(n)]+1` -/
def P14581909281585168490.Spec : Prop :=
  ∀ n, (P14581909281585168490.a n : ℤ) = A003144 (n + 1)

theorem P14581909281585168490.correct : P14581909281585168490.Spec := by
  intro n
  simp only [A003144, Nat.add_sub_cancel]

end A003144

/-! ## A003144.P960801586646891848

`lt[5, A275925(n+1)]`
-/

namespace A003144.P960801586646891848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003144.P960801586646891848

namespace A003144

/-- `lt[5, A275925(n+1)]` -/
def P960801586646891848.Spec : Prop :=
  ∀ n, (P960801586646891848.a n : ℤ) = A003144 (n + 1)

end A003144

/-! ## A003144.P7069264970962879187

`∑[Δ[A140101(n)]-1]`
-/

namespace A003144.P7069264970962879187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003144.P7069264970962879187

namespace A003144

/-- `∑[Δ[A140101(n)]-1]` -/
def P7069264970962879187.Spec : Prop :=
  ∀ n, P7069264970962879187.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P4940761485901159404

`comp[A003265(n+1)]+1`
-/

namespace A003144.P4940761485901159404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003144.P4940761485901159404

namespace A003144

/-- `comp[A003265(n+1)]+1` -/
def P4940761485901159404.Spec : Prop :=
  ∀ n, (P4940761485901159404.a n : ℤ) = A003144 (n + 1)

end A003144

/-! ## A003144.P14366046318048488194

`record[A317193(n+1)+n]`
-/

namespace A003144.P14366046318048488194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003144.P14366046318048488194

namespace A003144

/-- `record[A317193(n+1)+n]` -/
def P14366046318048488194.Spec : Prop :=
  ∀ n, P14366046318048488194.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P6850420931673974452

`eq[1, A092782(n+1)]+1`
-/

namespace A003144.P6850420931673974452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003144.P6850420931673974452

namespace A003144

/-- `eq[1, A092782(n+1)]+1` -/
def P6850420931673974452.Spec : Prop :=
  ∀ n, (P6850420931673974452.a n : ℤ) = A003144 (n + 1)

end A003144

/-! ## A003144.P11464320115069457687

`lt[1, A305392(n+1)]+1`
-/

namespace A003144.P11464320115069457687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A003144.P11464320115069457687

namespace A003144

/-- `lt[1, A305392(n+1)]+1` -/
def P11464320115069457687.Spec : Prop :=
  ∀ n, (P11464320115069457687.a n : ℤ) = A003144 (n + 1)

end A003144

/-! ## A003144.P12194082639281961511

`A140101(n+1)-(n+1)`
-/

namespace A003144.P12194082639281961511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) - (n + 1 : ℤ)

end

end A003144.P12194082639281961511

namespace A003144

/-- `A140101(n+1)-(n+1)` -/
def P12194082639281961511.Spec : Prop :=
  ∀ n, P12194082639281961511.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P15065391735408250204

`2*(n+1)-A276798(n)`
-/

namespace A003144.P15065391735408250204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A276798 n

end

end A003144.P15065391735408250204

namespace A003144

/-- `2*(n+1)-A276798(n)` -/
def P15065391735408250204.Spec : Prop :=
  ∀ n, P15065391735408250204.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P13814816712522819871

`A322408(n)-2*(n+1)`
-/

namespace A003144.P13814816712522819871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322408 n - (2 * (n + 1) : ℤ)

end

end A003144.P13814816712522819871

namespace A003144

/-- `A322408(n)-2*(n+1)` -/
def P13814816712522819871.Spec : Prop :=
  ∀ n, P13814816712522819871.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P3096516983097055888

`A276788(n)+a(n-1)` with `a(0)=1`
-/

namespace A003144.P3096516983097055888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276788 n + a (n - 1)

end

end A003144.P3096516983097055888

namespace A003144

/-- `A276788(n)+a(n-1)` -/
def P3096516983097055888.Spec : Prop :=
  ∀ n, P3096516983097055888.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P16932007542799742732

`comp[comp[A003146(n+1)]+n]`
-/

namespace A003144.P16932007542799742732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A003144.P16932007542799742732

namespace A003144

/-- `comp[comp[A003146(n+1)]+n]` -/
def P16932007542799742732.Spec : Prop :=
  ∀ n, (P16932007542799742732.a n : ℤ) = A003144 (n + 1)

end A003144

/-! ## A003144.P16277605533649683779

`comp[A140100(n+1)-1]-n`
-/

namespace A003144.P16277605533649683779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A003144.P16277605533649683779

namespace A003144

/-- `comp[A140100(n+1)-1]-n` -/
def P16277605533649683779.Spec : Prop :=
  ∀ n, P16277605533649683779.a n = A003144 (n + 1)

end A003144

/-! ## A003144.P15130906645541017770

`∑[A000010(Δ[A140101(n)])]`
-/

namespace A003144.P15130906645541017770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003144.P15130906645541017770

namespace A003144

/-- `∑[A000010(Δ[A140101(n)])]` -/
def P15130906645541017770.Spec : Prop :=
  ∀ n, P15130906645541017770.a n = A003144 (n + 1)

end A003144

/-!
# A003145: Positions of letter b in the tribonacci word abacabaabacababac... generated by a->ab, b->ac, c->a (cf. A092782).

The programs for A003145, the canonical program `A003145.P16204300471705086444` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003145 has offset 1).

The definition of A003145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003145.P6586035979863107819

`A278040(n)+1`
-/

namespace A003145.P6586035979863107819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + 1

end

end A003145.P6586035979863107819

namespace A003145

/-- `A278040(n)+1` -/
def P6586035979863107819.Spec : Prop :=
  ∀ n, P6586035979863107819.a n = A003145 (n + 1)

theorem P6586035979863107819.correct : P6586035979863107819.Spec := by
  intro n
  simp only [A003145, Nat.add_sub_cancel, A003145.P6586035979863107819.a, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A278040, A278040.P10650196326427599491.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003145

/-! ## A003145.P17239080772526550733

`A308199(n)+2`
-/

namespace A003145.P17239080772526550733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 n + 2

end

end A003145.P17239080772526550733

namespace A003145

/-- `A308199(n)+2` -/
def P17239080772526550733.Spec : Prop :=
  ∀ n, P17239080772526550733.a n = A003145 (n + 1)

theorem P17239080772526550733.correct : P17239080772526550733.Spec := by
  intro n
  simp only [A003145, Nat.add_sub_cancel, A003145.P17239080772526550733.a, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A308199, A308199.P4084788755827198599.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278040, A278040.P10650196326427599491.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003145

/-! ## A003145.P6651705164889889627

`eq[5, A275925(n+1)]`
-/

namespace A003145.P6651705164889889627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003145.P6651705164889889627

namespace A003145

/-- `eq[5, A275925(n+1)]` -/
def P6651705164889889627.Spec : Prop :=
  ∀ n, (P6651705164889889627.a n : ℤ) = A003145 (n + 1)

end A003145

/-! ## A003145.P2970792609250704447

`lt[2, A059832(n)]+n`
-/

namespace A003145.P2970792609250704447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n

end

end A003145.P2970792609250704447

namespace A003145

/-- `lt[2, A059832(n)]+n` -/
def P2970792609250704447.Spec : Prop :=
  ∀ n, (P2970792609250704447.a n : ℤ) = A003145 (n + 1)

end A003145

/-! ## A003145.P3956970613766106816

`comp[A140102(n)]-(n+1)`
-/

namespace A003145.P3956970613766106816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A003145.P3956970613766106816

namespace A003145

/-- `comp[A140102(n)]-(n+1)` -/
def P3956970613766106816.Spec : Prop :=
  ∀ n, P3956970613766106816.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P16344230313289770253

`lt[1, A305393(n+1)]+1`
-/

namespace A003145.P16344230313289770253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A003145.P16344230313289770253

namespace A003145

/-- `lt[1, A305393(n+1)]+1` -/
def P16344230313289770253.Spec : Prop :=
  ∀ n, (P16344230313289770253.a n : ℤ) = A003145 (n + 1)

end A003145

/-! ## A003145.P230252723904345633

`eq[2, A305393(n+2)]+2`
-/

namespace A003145.P230252723904345633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A003145.P230252723904345633

namespace A003145

/-- `eq[2, A305393(n+2)]+2` -/
def P230252723904345633.Spec : Prop :=
  ∀ n, (P230252723904345633.a n : ℤ) = A003145 (n + 1)

end A003145

/-! ## A003145.P786542905635639489

`A140103(n+1)-(n+1)`
-/

namespace A003145.P786542905635639489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - (n + 1 : ℤ)

end

end A003145.P786542905635639489

namespace A003145

/-- `A140103(n+1)-(n+1)` -/
def P786542905635639489.Spec : Prop :=
  ∀ n, P786542905635639489.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P6378481242318966010

`A276789(n)+a(n-1)` with `a(0)=2`
-/

namespace A003145.P6378481242318966010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A276789 n + a (n - 1)

end

end A003145.P6378481242318966010

namespace A003145

/-- `A276789(n)+a(n-1)` -/
def P6378481242318966010.Spec : Prop :=
  ∀ n, P6378481242318966010.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P16204300471705086444

`lt[A317193(n+1)/17, 0]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003145

/-- `lt[A317193(n+1)/17, 0]+1` -/
def P16204300471705086444.Spec : Prop :=
  ∀ n, (P16204300471705086444.a n : ℤ) = A003145 (n + 1)

theorem P16204300471705086444.correct : P16204300471705086444.Spec := by
  intro n
  simp only [A003145, Nat.add_sub_cancel]

end A003145

/-! ## A003145.P10891244432975026796

`A278039(A003144(n+1))`
-/

namespace A003145.P10891244432975026796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A003144 (n + 1)).toNat

end

end A003145.P10891244432975026796

namespace A003145

/-- `A278039(A003144(n+1))` -/
def P10891244432975026796.Spec : Prop :=
  ∀ n, P10891244432975026796.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P16291729781176387107

`A278039(A278039(n)+1)`
-/

namespace A003145.P16291729781176387107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 n + 1).toNat

end

end A003145.P16291729781176387107

namespace A003145

/-- `A278039(A278039(n)+1)` -/
def P16291729781176387107.Spec : Prop :=
  ∀ n, P16291729781176387107.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P13206603343079865760

`A276796(n)+A140101(n+1)`
-/

namespace A003145.P13206603343079865760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n + A140101 (n + 1)

end

end A003145.P13206603343079865760

namespace A003145

/-- `A276796(n)+A140101(n+1)` -/
def P13206603343079865760.Spec : Prop :=
  ∀ n, P13206603343079865760.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P16325053090808932206

`n-(A023443(n)-A278040(n))`
-/

namespace A003145.P16325053090808932206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A278040 n)

end

end A003145.P16325053090808932206

namespace A003145

/-- `n-(A023443(n)-A278040(n))` -/
def P16325053090808932206.Spec : Prop :=
  ∀ n, P16325053090808932206.a n = A003145 (n + 1)

theorem P16325053090808932206.correct : P16325053090808932206.Spec := by
  intro n
  simp only [A003145, Nat.add_sub_cancel, A003145.P16325053090808932206.a, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A023443, A023443.P2966051066474347068.a, A278040, A278040.P10650196326427599491.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003145

/-! ## A003145.P8845649939920368734

`A140100(n+1)+A003144(n+1)`
-/

namespace A003145.P8845649939920368734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) + A003144 (n + 1)

end

end A003145.P8845649939920368734

namespace A003145

/-- `A140100(n+1)+A003144(n+1)` -/
def P8845649939920368734.Spec : Prop :=
  ∀ n, P8845649939920368734.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P15652904181631536553

`A140102(A003144(n+1)+1)+n`
-/

namespace A003145.P15652904181631536553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (A003144 (n + 1) + 1).toNat + (n : ℤ)

end

end A003145.P15652904181631536553

namespace A003145

/-- `A140102(A003144(n+1)+1)+n` -/
def P15652904181631536553.Spec : Prop :=
  ∀ n, P15652904181631536553.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P10790138257592688086

`A003146(n+1)-A140101(n+1)`
-/

namespace A003145.P10790138257592688086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) - A140101 (n + 1)

end

end A003145.P10790138257592688086

namespace A003145

/-- `A003146(n+1)-A140101(n+1)` -/
def P10790138257592688086.Spec : Prop :=
  ∀ n, P10790138257592688086.a n = A003145 (n + 1)

end A003145

/-! ## A003145.P13146890259451481886

`A277722(n+1)-A276799(n+1)`
-/

namespace A003145.P13146890259451481886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) - A276799 (n + 1)

end

end A003145.P13146890259451481886

namespace A003145

/-- `A277722(n+1)-A276799(n+1)` -/
def P13146890259451481886.Spec : Prop :=
  ∀ n, P13146890259451481886.a n = A003145 (n + 1)

theorem P13146890259451481886.correct : P13146890259451481886.Spec := by
  intro n
  simp only [A003145, Nat.add_sub_cancel, A003145.P13146890259451481886.a, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A276799, A276799.P8873014292681214512.a, A277722, A277722.P12636272293561228807.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003145

/-! ## A003145.P4670916418724839342

`A276797(n)+2*A140100(n+1)`
-/

namespace A003145.P4670916418724839342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 n + 2 * A140100 (n + 1)

end

end A003145.P4670916418724839342

namespace A003145

/-- `A276797(n)+2*A140100(n+1)` -/
def P4670916418724839342.Spec : Prop :=
  ∀ n, P4670916418724839342.a n = A003145 (n + 1)

end A003145

/-!
# A003146: Positions of letter c in the tribonacci word abacabaabacababac... generated by a->ab, b->ac, c->a (cf. A092782).

The programs for A003146, the canonical program `A003146.P4319550854608353230` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003146 has offset 1).

The definition of A003146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003146.P873248830673261228

`A278041(n)+1`
-/

namespace A003146.P873248830673261228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n + 1

end

end A003146.P873248830673261228

namespace A003146

/-- `A278041(n)+1` -/
def P873248830673261228.Spec : Prop :=
  ∀ n, P873248830673261228.a n = A003146 (n + 1)

theorem P873248830673261228.correct : P873248830673261228.Spec := by
  intro n
  simp only [A003146, Nat.add_sub_cancel, A003146.P873248830673261228.a, A003146.P4319550854608353230.a, A278041, A278041.P13470193706674634785.a, A308200, A308200.P11353778696816616322.a, A275925, A275925.P1014596103965212206.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A056974, A056974.P14269005406388105579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003146

/-! ## A003146.P4319550854608353230

`A308200(n)+4`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A003146

/-- `A308200(n)+4` -/
def P4319550854608353230.Spec : Prop :=
  ∀ n, P4319550854608353230.a n = A003146 (n + 1)

theorem P4319550854608353230.correct : P4319550854608353230.Spec := by
  intro n
  simp only [A003146, Nat.add_sub_cancel]

end A003146

/-! ## A003146.P14315393727607916734

`A319967(n+1)+2`
-/

namespace A003146.P14315393727607916734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) + 2

end

end A003146.P14315393727607916734

namespace A003146

/-- `A319967(n+1)+2` -/
def P14315393727607916734.Spec : Prop :=
  ∀ n, P14315393727607916734.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P12944563817110655018

`∑[A275925(n+1)+1]`
-/

namespace A003146.P12944563817110655018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003146.P12944563817110655018

namespace A003146

/-- `∑[A275925(n+1)+1]` -/
def P12944563817110655018.Spec : Prop :=
  ∀ n, P12944563817110655018.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P8280908135057289010

`A276792(n)+a(n-1)` with `a(0)=4`
-/

namespace A003146.P8280908135057289010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A276792 n + a (n - 1)

end

end A003146.P8280908135057289010

namespace A003146

/-- `A276792(n)+a(n-1)` -/
def P8280908135057289010.Spec : Prop :=
  ∀ n, P8280908135057289010.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P16073511752676571553

`(A319966(n+1)+n+1)/2`
-/

namespace A003146.P16073511752676571553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319966 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A003146.P16073511752676571553

namespace A003146

/-- `(A319966(n+1)+n+1)/2` -/
def P16073511752676571553.Spec : Prop :=
  ∀ n, P16073511752676571553.a n = (A003146 (n + 1) : ℚ)

end A003146

/-! ## A003146.P11776710863118345034

`(A319968(n+1)+n+2)/2`
-/

namespace A003146.P11776710863118345034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319968 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A003146.P11776710863118345034

namespace A003146

/-- `(A319968(n+1)+n+2)/2` -/
def P11776710863118345034.Spec : Prop :=
  ∀ n, P11776710863118345034.a n = (A003146 (n + 1) : ℚ)

end A003146

/-! ## A003146.P12977343650657793538

`A278040(A003144(n+1))-1`
-/

namespace A003146.P12977343650657793538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A003144 (n + 1)).toNat - 1

end

end A003146.P12977343650657793538

namespace A003146

/-- `A278040(A003144(n+1))-1` -/
def P12977343650657793538.Spec : Prop :=
  ∀ n, P12977343650657793538.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P4173148092840193221

`A140100(A278040(n)+2)+n`
-/

namespace A003146.P4173148092840193221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A278040 n + 2).toNat + (n : ℤ)

end

end A003146.P4173148092840193221

namespace A003146

/-- `A140100(A278040(n)+2)+n` -/
def P4173148092840193221.Spec : Prop :=
  ∀ n, P4173148092840193221.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P2252795297108050456

`n-(A023443(n)-A278041(n))`
-/

namespace A003146.P2252795297108050456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A278041 n)

end

end A003146.P2252795297108050456

namespace A003146

/-- `n-(A023443(n)-A278041(n))` -/
def P2252795297108050456.Spec : Prop :=
  ∀ n, P2252795297108050456.a n = A003146 (n + 1)

theorem P2252795297108050456.correct : P2252795297108050456.Spec := by
  intro n
  simp only [A003146, Nat.add_sub_cancel, A003146.P2252795297108050456.a, A003146.P4319550854608353230.a, A023443, A023443.P2966051066474347068.a, A278041, A278041.P13470193706674634785.a, A308200, A308200.P11353778696816616322.a, A275925, A275925.P1014596103965212206.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A056974, A056974.P14269005406388105579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003146

/-! ## A003146.P5839864603144861134

`A140100(A003145(n+1)+1)+n`
-/

namespace A003146.P5839864603144861134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A003145 (n + 1) + 1).toNat + (n : ℤ)

end

end A003146.P5839864603144861134

namespace A003146

/-- `A140100(A003145(n+1)+1)+n` -/
def P5839864603144861134.Spec : Prop :=
  ∀ n, P5839864603144861134.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P5559932349168308096

`A140101(n+1)+A003145(n+1)`
-/

namespace A003146.P5559932349168308096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) + A003145 (n + 1)

end

end A003146.P5559932349168308096

namespace A003146

/-- `A140101(n+1)+A003145(n+1)` -/
def P5559932349168308096.Spec : Prop :=
  ∀ n, P5559932349168308096.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P16046956893871423949

`A140103(n+1)+A003144(n+1)`
-/

namespace A003146.P16046956893871423949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) + A003144 (n + 1)

end

end A003146.P16046956893871423949

namespace A003146

/-- `A140103(n+1)+A003144(n+1)` -/
def P16046956893871423949.Spec : Prop :=
  ∀ n, P16046956893871423949.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P2558322335106381934

`A140101(n+1)+A278040(n)+1`
-/

namespace A003146.P2558322335106381934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) + (A278040 n + 1)

end

end A003146.P2558322335106381934

namespace A003146

/-- `A140101(n+1)+A278040(n)+1` -/
def P2558322335106381934.Spec : Prop :=
  ∀ n, P2558322335106381934.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P6998319814828550393

`A140103(n+1)+A278039(n)+1`
-/

namespace A003146.P6998319814828550393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) + (A278039 n + 1)

end

end A003146.P6998319814828550393

namespace A003146

/-- `A140103(n+1)+A278039(n)+1` -/
def P6998319814828550393.Spec : Prop :=
  ∀ n, P6998319814828550393.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P1179185600990184750

`2*A003145(n+1)-A276796(n)`
-/

namespace A003146.P1179185600990184750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003145 (n + 1) - A276796 n

end

end A003146.P1179185600990184750

namespace A003146

/-- `2*A003145(n+1)-A276796(n)` -/
def P1179185600990184750.Spec : Prop :=
  ∀ n, P1179185600990184750.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P9591009509114520620

`A140100(A140103(n+1)-n)+n`
-/

namespace A003146.P9591009509114520620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A140103 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A003146.P9591009509114520620

namespace A003146

/-- `A140100(A140103(n+1)-n)+n` -/
def P9591009509114520620.Spec : Prop :=
  ∀ n, P9591009509114520620.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P770139880058569887

`A003144(n+1)+A003145(n+1)+n+1`
-/

namespace A003146.P770139880058569887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + A003145 (n + 1) + (n + 1 : ℤ)

end

end A003146.P770139880058569887

namespace A003146

/-- `A003144(n+1)+A003145(n+1)+n+1` -/
def P770139880058569887.Spec : Prop :=
  ∀ n, P770139880058569887.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P14640246035279751447

`A140100(n+1)+A276797(n)+A140103(n+1)`
-/

namespace A003146.P14640246035279751447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) + (A276797 n + A140103 (n + 1))

end

end A003146.P14640246035279751447

namespace A003146

/-- `A140100(n+1)+A276797(n)+A140103(n+1)` -/
def P14640246035279751447.Spec : Prop :=
  ∀ n, P14640246035279751447.a n = A003146 (n + 1)

end A003146

/-! ## A003146.P1835298266551520105

`A003145(n+1)+A140099(n+1)-A275926(n+1)`
-/

namespace A003146.P1835298266551520105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + (A140099 (n + 1) - A275926 (n + 1))

end

end A003146.P1835298266551520105

namespace A003146

/-- `A003145(n+1)+A140099(n+1)-A275926(n+1)` -/
def P1835298266551520105.Spec : Prop :=
  ∀ n, P1835298266551520105.a n = A003146 (n + 1)

end A003146

/-!
# A003147: Primes p with a Fibonacci primitive root g, i.e., such that g^2 = g + 1 (mod p).

The programs for A003147, there is no canonical definition to state claims against.
-/

/-! ## A003147.P16142032577324796874

`eq[n, A106291(n+1)]+1`
-/

namespace A003147.P16142032577324796874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003147.P16142032577324796874

/-! ## A003147.P6491504690251808105

`A004442(eq[n, A106291(n+1)])`
-/

namespace A003147.P6491504690251808105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003147.P6491504690251808105

/-! ## A003147.P9093588465648815238

`A109613(eq[n, A106291(n+1)])`
-/

namespace A003147.P9093588465648815238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003147.P9093588465648815238

/-! ## A003147.P16515468705012886804

`A166333(eq[n, A106291(n+1)])`
-/

namespace A003147.P16515468705012886804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003147.P16515468705012886804

/-! ## A003147.P6894830830979337193

`1+record[A106291(A038872(n+1))]`
-/

namespace A003147.P6894830830979337193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A038872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003147.P6894830830979337193

/-! ## A003147.P7700678017821051342

`A004442(record[A106291(A038872(n+1))])`
-/

namespace A003147.P7700678017821051342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A038872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003147.P7700678017821051342

/-!
# A003148: a(n+1) = a(n) + 2n*(2n+1)*a(n-1), with a(0) = a(1) = 1.

The programs for A003148, the canonical program `A003148.P18149042010576653881` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003148 has offset 0).

The definition of A003148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003148.P18149042010576653881

`a(n-1)+2*(n-1)*(2*n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003148

/-- `a(n-1)+2*(n-1)*(2*n-1)*a(n-2)` -/
def P18149042010576653881.Spec : Prop :=
  ∀ n, P18149042010576653881.a n = A003148 n

theorem P18149042010576653881.correct : P18149042010576653881.Spec := by
  intro n
  simp only [A003148]

end A003148

/-! ## A003148.P12367238471360861629

`A049606(n)*A123746(n)`
-/

namespace A003148.P12367238471360861629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 n * A123746 n

end

end A003148.P12367238471360861629

namespace A003148

/-- `A049606(n)*A123746(n)` -/
def P12367238471360861629.Spec : Prop :=
  ∀ n, P12367238471360861629.a n = A003148 n

end A003148

/-! ## A003148.P12301123633649539545

`A091520(n)*n!/2^n`
-/

namespace A003148.P12301123633649539545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091520 n * (Nat.factorial n : ℤ) : ℚ) / (2 ^ n : ℚ)

end

end A003148.P12301123633649539545

namespace A003148

/-- `A091520(n)*n!/2^n` -/
def P12301123633649539545.Spec : Prop :=
  ∀ n, P12301123633649539545.a n = (A003148 n : ℚ)

end A003148

/-! ## A003148.P14657233964872202514

`2^n*n!*A123746(n)/A046161(n)`
-/

namespace A003148.P14657233964872202514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n * Nat.factorial n : ℤ) * A123746 n : ℚ) / (A046161 n : ℚ)

end

end A003148.P14657233964872202514

namespace A003148

/-- `2^n*n!*A123746(n)/A046161(n)` -/
def P14657233964872202514.Spec : Prop :=
  ∀ n, P14657233964872202514.a n = (A003148 n : ℚ)

end A003148

/-! ## A003148.P8519784671375124231

`n!*A091520(n)/2^n`
-/

namespace A003148.P8519784671375124231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A091520 n : ℚ) / (2 ^ n : ℚ)

end

end A003148.P8519784671375124231

namespace A003148

/-- `n!*A091520(n)/2^n` -/
def P8519784671375124231.Spec : Prop :=
  ∀ n, P8519784671375124231.a n = (A003148 n : ℚ)

end A003148

/-!
# A003149: a(n) = Sum_{k=0..n} k!*(n - k)!.

The programs for A003149, the canonical program `A003149.P5032170507179723107` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003149 has offset 0).

The definition of A003149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, #!*(n-#)!]` (program `A003149.P5032170507179723107`, by `A003149.P5032170507179723107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003149.P5032170507179723107

`∑{#}[n, #!*(n-#)!]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003149

/-- `∑{#}[n, #!*(n-#)!]` -/
def P5032170507179723107.Spec : Prop :=
  ∀ n, (P5032170507179723107.a n : ℤ) = A003149 n

theorem P5032170507179723107.correct : P5032170507179723107.Spec := by
  intro n
  simp only [A003149]

end A003149

/-! ## A003149.P3330152657095519164

`n!+(n+1)/2*a(n-1)` with `a(0)=1`
-/

namespace A003149.P3330152657095519164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℚ) + (n + 1 : ℚ) / 2 * a (n - 1)

end

end A003149.P3330152657095519164

namespace A003149

/-- `n!+(n+1)/2*a(n-1)` -/
def P3330152657095519164.Spec : Prop :=
  ∀ n, P3330152657095519164.a n = (A003149 n : ℚ)

end A003149

/-! ## A003149.P17873066275562688974

`((3*n+1)*a(n-1)-n²*a(n-2))/2` with `a(0)=1, a(1)=2`
-/

namespace A003149.P17873066275562688974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((3 * n + 1 : ℚ) * a (n - 1) - (n ^ 2 : ℚ) * a (n - 2)) / 2

end

end A003149.P17873066275562688974

namespace A003149

/-- `((3*n+1)*a(n-1)-n²*a(n-2))/2` -/
def P17873066275562688974.Spec : Prop :=
  ∀ n, P17873066275562688974.a n = (A003149 n : ℚ)

end A003149

/-! ## A003149.P16679952715170476426

`∑[A186374(n+1)]`
-/

namespace A003149.P16679952715170476426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003149.P16679952715170476426

namespace A003149

/-- `∑[A186374(n+1)]` -/
def P16679952715170476426.Spec : Prop :=
  ∀ n, P16679952715170476426.a n = A003149 n

end A003149

/-! ## A003149.P9682471871445633031

`A025527(n+1)*A025533(n)`
-/

namespace A003149.P9682471871445633031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A025533 n

end

end A003149.P9682471871445633031

namespace A003149

/-- `A025527(n+1)*A025533(n)` -/
def P9682471871445633031.Spec : Prop :=
  ∀ n, P9682471871445633031.a n = A003149 n

end A003149

/-! ## A003149.P9566703347291412096

`A000142(n)/A046826(n)*A046825(n)`
-/

namespace A003149.P9566703347291412096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A046826 n : ℚ) * (A046825 n : ℚ)

end

end A003149.P9566703347291412096

namespace A003149

/-- `A000142(n)/A046826(n)*A046825(n)` -/
def P9566703347291412096.Spec : Prop :=
  ∀ n, P9566703347291412096.a n = (A003149 n : ℚ)

end A003149

/-! ## A003149.P8984685382847295652

`record[A084938(∑[n]+2)]`
-/

namespace A003149.P8984685382847295652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003149.P8984685382847295652

namespace A003149

/-- `record[A084938(∑[n]+2)]` -/
def P8984685382847295652.Spec : Prop :=
  ∀ n, P8984685382847295652.a n = A003149 n

end A003149

/-! ## A003149.P79401909907813621

`A084938(∑[n+2]+3)`
-/

namespace A003149.P79401909907813621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003149.P79401909907813621

namespace A003149

/-- `A084938(∑[n+2]+3)` -/
def P79401909907813621.Spec : Prop :=
  ∀ n, P79401909907813621.a n = A003149 n

end A003149

/-! ## A003149.P15824641659833091668

`record[gcd(A084938(n+2), A084938(n))]`
-/

namespace A003149.P15824641659833091668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 2)) (A084938 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003149.P15824641659833091668

namespace A003149

/-- `record[gcd(A084938(n+2), A084938(n))]` -/
def P15824641659833091668.Spec : Prop :=
  ∀ n, (P15824641659833091668.a n : ℤ) = A003149 n

end A003149

/-!
# A003150: Fibonomial Catalan numbers.

The programs for A003150, there is no canonical definition to state claims against.
-/

/-! ## A003150.P14792564185787789155

`A003267(n)/A000045(n+1)`
-/

namespace A003150.P14792564185787789155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003267 n : ℚ) / (A000045 (n + 1) : ℚ)

end

end A003150.P14792564185787789155

/-! ## A003150.P8197859188508451482

`A003267(n)/∑[A212804(n)]`
-/

namespace A003150.P8197859188508451482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003267 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A003150.P8197859188508451482

/-! ## A003150.P5333101134939211050

`A003267(n)/A212804(n+2)`
-/

namespace A003150.P5333101134939211050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003267 n : ℚ) / (A212804 (n + 2) : ℚ)

end

end A003150.P5333101134939211050

/-! ## A003150.P2610146599872985740

`A003267(n)/Δ[record[A133021(n+1)]]`
-/

namespace A003150.P2610146599872985740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003267 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A003150.P2610146599872985740

/-! ## A003150.P2628553196145924127

`A003267(n)/A050446(A000124(n))`
-/

namespace A003150.P2628553196145924127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003267 n : ℚ) / (A050446 (A000124 n).toNat : ℚ)

end

end A003150.P2628553196145924127

/-!
# A003151: Beatty sequence for 1+sqrt(2); a(n) = floor(n*(1+sqrt(2))).

The programs for A003151, the canonical program `A003151.P5230567170801236160` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003151 has offset 1).

The definition of A003151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(1+sqrt(2)))` (program `A003151.P5230567170801236160`, by `A003151.P5230567170801236160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003151.P5230567170801236160

`floor((n+1)*(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003151

/-- `floor((n+1)*(1+sqrt(2)))` -/
def P5230567170801236160.Spec : Prop :=
  ∀ n, P5230567170801236160.a n = A003151 (n + 1)

theorem P5230567170801236160.correct : P5230567170801236160.Spec := by
  intro n
  simp only [A003151, Nat.add_sub_cancel]

end A003151

/-! ## A003151.P6704435902429957293

`a(n-1)+Δ[ceil(n*sqrt(2))]+1` with `a(0)=2`
-/

namespace A003151.P6704435902429957293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n + 1)

end

end A003151.P6704435902429957293

namespace A003151

/-- `a(n-1)+Δ[ceil(n*sqrt(2))]+1` -/
def P6704435902429957293.Spec : Prop :=
  ∀ n, P6704435902429957293.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P7566582893153151485

`comp[floor(n*sqrt(2))]-n-(1-and(2, n))²`
-/

namespace A003151.P7566582893153151485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) - (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A003151.P7566582893153151485

namespace A003151

/-- `comp[floor(n*sqrt(2))]-n-(1-and(2, n))²` -/
def P7566582893153151485.Spec : Prop :=
  ∀ n, P7566582893153151485.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P5460328915996602954

`floor(a(n-1)+n/a(a(n-1)%n))+2` with `a(0)=2`
-/

namespace A003151.P5460328915996602954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / (a (Int.tmod (a (n - 1)) (n : ℤ)).toNat : ℚ)⌋ + 2

end

end A003151.P5460328915996602954

namespace A003151

/-- `floor(a(n-1)+n/a(a(n-1)%n))+2` -/
def P5460328915996602954.Spec : Prop :=
  ∀ n, P5460328915996602954.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P1438281318928638278

`∑[A097509(n)]-1`
-/

namespace A003151.P1438281318928638278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003151.P1438281318928638278

namespace A003151

/-- `∑[A097509(n)]-1` -/
def P1438281318928638278.Spec : Prop :=
  ∀ n, P1438281318928638278.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P17064054449193827240

`A286666(n+1)+1`
-/

namespace A003151.P17064054449193827240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + 1

end

end A003151.P17064054449193827240

namespace A003151

/-- `A286666(n+1)+1` -/
def P17064054449193827240.Spec : Prop :=
  ∀ n, P17064054449193827240.a n = A003151 (n + 1)

theorem P17064054449193827240.correct : P17064054449193827240.Spec := by
  intro n
  simp only [A003151, Nat.add_sub_cancel, A003151.P17064054449193827240.a, A003151.P5230567170801236160.a, A286666, A286666.P2262944503126098146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003151

/-! ## A003151.P6983470848896070320

`A080754(n+1)-1`
-/

namespace A003151.P6983470848896070320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) - 1

end

end A003151.P6983470848896070320

namespace A003151

/-- `A080754(n+1)-1` -/
def P6983470848896070320.Spec : Prop :=
  ∀ n, P6983470848896070320.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P12194186522320651337

`A022804(n+1)/2`
-/

namespace A003151.P12194186522320651337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022804 (n + 1) : ℚ) / 2

end

end A003151.P12194186522320651337

namespace A003151

/-- `A022804(n+1)/2` -/
def P12194186522320651337.Spec : Prop :=
  ∀ n, P12194186522320651337.a n = (A003151 (n + 1) : ℚ)

end A003151

/-! ## A003151.P8083190876651114215

`A087057(n+1)+n`
-/

namespace A003151.P8083190876651114215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) + (n : ℤ)

end

end A003151.P8083190876651114215

namespace A003151

/-- `A087057(n+1)+n` -/
def P8083190876651114215.Spec : Prop :=
  ∀ n, P8083190876651114215.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P15403999413977171035

`A184922(n+1)-n`
-/

namespace A003151.P15403999413977171035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) - (n : ℤ)

end

end A003151.P15403999413977171035

namespace A003151

/-- `A184922(n+1)-n` -/
def P15403999413977171035.Spec : Prop :=
  ∀ n, P15403999413977171035.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P1320794889006685479

`∑[Δ[A001951(n)]+1]`
-/

namespace A003151.P1320794889006685479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003151.P1320794889006685479

namespace A003151

/-- `∑[Δ[A001951(n)]+1]` -/
def P1320794889006685479.Spec : Prop :=
  ∀ n, P1320794889006685479.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P10586919650718922623

`n+1+A001951(n+1)`
-/

namespace A003151.P10586919650718922623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001951 (n + 1)

end

end A003151.P10586919650718922623

namespace A003151

/-- `n+1+A001951(n+1)` -/
def P10586919650718922623.Spec : Prop :=
  ∀ n, P10586919650718922623.a n = A003151 (n + 1)

end A003151

/-! ## A003151.P5606235916408658821

`A001952(n+1)-(n+1)`
-/

namespace A003151.P5606235916408658821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - (n + 1 : ℤ)

end

end A003151.P5606235916408658821

namespace A003151

/-- `A001952(n+1)-(n+1)` -/
def P5606235916408658821.Spec : Prop :=
  ∀ n, P5606235916408658821.a n = A003151 (n + 1)

end A003151

/-!
# A003152: A Beatty sequence: a(n) = floor(n*(1+1/sqrt(2))).

The programs for A003152, the canonical program `A003152.P8355508272175907392` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003152 has offset 1).

The definition of A003152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(1+1/sqrt(2)))` (program `A003152.P8355508272175907392`, by `A003152.P8355508272175907392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003152.P8355508272175907392

`floor((n+1)*(1+1/sqrt(2)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003152

/-- `floor((n+1)*(1+1/sqrt(2)))` -/
def P8355508272175907392.Spec : Prop :=
  ∀ n, P8355508272175907392.a n = A003152 (n + 1)

theorem P8355508272175907392.correct : P8355508272175907392.Spec := by
  intro n
  simp only [A003152, Nat.add_sub_cancel]

end A003152

/-! ## A003152.P17682683302345414261

`ceil(sqrt(∑[or(1, n)]))+n`
-/

namespace A003152.P17682683302345414261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + (n : ℤ)

end

end A003152.P17682683302345414261

namespace A003152

/-- `ceil(sqrt(∑[or(1, n)]))+n` -/
def P17682683302345414261.Spec : Prop :=
  ∀ n, P17682683302345414261.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P7140725238190682840

`A080755(n+1)-1`
-/

namespace A003152.P7140725238190682840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) - 1

end

end A003152.P7140725238190682840

namespace A003152

/-- `A080755(n+1)-1` -/
def P7140725238190682840.Spec : Prop :=
  ∀ n, P7140725238190682840.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P13949888192298654064

`A049474(n+1)+n`
-/

namespace A003152.P13949888192298654064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1) + (n : ℤ)

end

end A003152.P13949888192298654064

namespace A003152

/-- `A049474(n+1)+n` -/
def P13949888192298654064.Spec : Prop :=
  ∀ n, P13949888192298654064.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P11543307601884263192

`∑[Δ[A049472(n)]+1]`
-/

namespace A003152.P11543307601884263192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003152.P11543307601884263192

namespace A003152

/-- `∑[Δ[A049472(n)]+1]` -/
def P11543307601884263192.Spec : Prop :=
  ∀ n, P11543307601884263192.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P3629140102098797599

`∑[3-Δ[A195128(n)]]`
-/

namespace A003152.P3629140102098797599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003152.P3629140102098797599

namespace A003152

/-- `∑[3-Δ[A195128(n)]]` -/
def P3629140102098797599.Spec : Prop :=
  ∀ n, P3629140102098797599.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P13968002663769219784

`∑[char[A001951(n)]]+n`
-/

namespace A003152.P13968002663769219784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A003152.P13968002663769219784

namespace A003152

/-- `∑[char[A001951(n)]]+n` -/
def P13968002663769219784.Spec : Prop :=
  ∀ n, (P13968002663769219784.a n : ℤ) = A003152 (n + 1)

end A003152

/-! ## A003152.P11442343659150902296

`ceil(A184922(n+1)/2)`
-/

namespace A003152.P11442343659150902296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184922 (n + 1) : ℚ) / 2⌉

end

end A003152.P11442343659150902296

namespace A003152

/-- `ceil(A184922(n+1)/2)` -/
def P11442343659150902296.Spec : Prop :=
  ∀ n, P11442343659150902296.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P4122024210987863922

`∑[A188295(n+1)+1]`
-/

namespace A003152.P4122024210987863922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003152.P4122024210987863922

namespace A003152

/-- `∑[A188295(n+1)+1]` -/
def P4122024210987863922.Spec : Prop :=
  ∀ n, P4122024210987863922.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P10489911616516764199

`∑[A276869(n+1)-1]`
-/

namespace A003152.P10489911616516764199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276869 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003152.P10489911616516764199

namespace A003152

/-- `∑[A276869(n+1)-1]` -/
def P10489911616516764199.Spec : Prop :=
  ∀ n, P10489911616516764199.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P15928336287592517201

`comp[A286666(n+1)]+1`
-/

namespace A003152.P15928336287592517201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003152.P15928336287592517201

namespace A003152

/-- `comp[A286666(n+1)]+1` -/
def P15928336287592517201.Spec : Prop :=
  ∀ n, (P15928336287592517201.a n : ℤ) = A003152 (n + 1)

end A003152

/-! ## A003152.P11061716430629050922

`∑[gcd(2, A036694(n+1))]`
-/

namespace A003152.P11061716430629050922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A036694 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003152.P11061716430629050922

namespace A003152

/-- `∑[gcd(2, A036694(n+1))]` -/
def P11061716430629050922.Spec : Prop :=
  ∀ n, (P11061716430629050922.a n : ℤ) = A003152 (n + 1)

end A003152

/-! ## A003152.P9308548528742452290

`A049472(n+1)+1+n`
-/

namespace A003152.P9308548528742452290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + 1 + (n : ℤ)

end

end A003152.P9308548528742452290

namespace A003152

/-- `A049472(n+1)+1+n` -/
def P9308548528742452290.Spec : Prop :=
  ∀ n, P9308548528742452290.a n = A003152 (n + 1)

end A003152

/-! ## A003152.P3354579301268979927

`A182769(n+1)-(n+1)`
-/

namespace A003152.P3354579301268979927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 1) - (n + 1 : ℤ)

end

end A003152.P3354579301268979927

namespace A003152

/-- `A182769(n+1)-(n+1)` -/
def P3354579301268979927.Spec : Prop :=
  ∀ n, P3354579301268979927.a n = A003152 (n + 1)

end A003152

/-!
# A003153: a(n) = integer nearest n*(1+sqrt(2)).

The programs for A003153, the canonical program `A003153.P9487334492634024191` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003153 has offset 1).

The definition of A003153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003153.P9487334492634024191

`round((n+1)*(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003153

/-- `round((n+1)*(1+sqrt(2)))` -/
def P9487334492634024191.Spec : Prop :=
  ∀ n, P9487334492634024191.a n = A003153 (n + 1)

theorem P9487334492634024191.correct : P9487334492634024191.Spec := by
  intro n
  simp only [A003153, Nat.add_sub_cancel]

end A003153

/-! ## A003153.P12746175468533848487

`∑[A214848(n)+1]`
-/

namespace A003153.P12746175468533848487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003153.P12746175468533848487

namespace A003153

/-- `∑[A214848(n)+1]` -/
def P12746175468533848487.Spec : Prop :=
  ∀ n, P12746175468533848487.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P14668536375014111273

`A186222(n+1)+1`
-/

namespace A003153.P14668536375014111273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1) + 1

end

end A003153.P14668536375014111273

namespace A003153

/-- `A186222(n+1)+1` -/
def P14668536375014111273.Spec : Prop :=
  ∀ n, P14668536375014111273.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P6845737672250134616

`∑[Δ[A022846(n)]+1]`
-/

namespace A003153.P6845737672250134616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003153.P6845737672250134616

namespace A003153

/-- `∑[Δ[A022846(n)]+1]` -/
def P6845737672250134616.Spec : Prop :=
  ∀ n, P6845737672250134616.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P8791459928620173918

`ceil(A197878(n+1)/2)`
-/

namespace A003153.P8791459928620173918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A197878 (n + 1) : ℚ) / 2⌉

end

end A003153.P8791459928620173918

namespace A003153

/-- `ceil(A197878(n+1)/2)` -/
def P8791459928620173918.Spec : Prop :=
  ∀ n, P8791459928620173918.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P17782969285695608092

`A022846(n+1)+1+n`
-/

namespace A003153.P17782969285695608092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1) + 1 + (n : ℤ)

end

end A003153.P17782969285695608092

namespace A003153

/-- `A022846(n+1)+1+n` -/
def P17782969285695608092.Spec : Prop :=
  ∀ n, P17782969285695608092.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P4307464632842707049

`∑[A000040(Δ[round(n*sqrt(2))])]`
-/

namespace A003153.P4307464632842707049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003153.P4307464632842707049

namespace A003153

/-- `∑[A000040(Δ[round(n*sqrt(2))])]` -/
def P4307464632842707049.Spec : Prop :=
  ∀ n, P4307464632842707049.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P16687208244470956923

`floor((A190337(n+1)-n)/2)`
-/

namespace A003153.P16687208244470956923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190337 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A003153.P16687208244470956923

namespace A003153

/-- `floor((A190337(n+1)-n)/2)` -/
def P16687208244470956923.Spec : Prop :=
  ∀ n, P16687208244470956923.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P12052152184820035435

`a(n-1)+A006338(n)+1` with `a(0)=2`
-/

namespace A003153.P12052152184820035435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A006338 n + 1)

end

end A003153.P12052152184820035435

namespace A003153

/-- `a(n-1)+A006338(n)+1` -/
def P12052152184820035435.Spec : Prop :=
  ∀ n, P12052152184820035435.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P10762988844309258614

`∑[A101045(Δ[A022846(n)])]`
-/

namespace A003153.P10762988844309258614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003153.P10762988844309258614

namespace A003153

/-- `∑[A101045(Δ[A022846(n)])]` -/
def P10762988844309258614.Spec : Prop :=
  ∀ n, P10762988844309258614.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P4715111145036243814

`A004767(n)-A189382(n+1)`
-/

namespace A003153.P4715111145036243814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A189382 (n + 1)

end

end A003153.P4715111145036243814

namespace A003153

/-- `A004767(n)-A189382(n+1)` -/
def P4715111145036243814.Spec : Prop :=
  ∀ n, P4715111145036243814.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P4247782779759705344

`A197879(n+1)+A003151(n+1)`
-/

namespace A003153.P4247782779759705344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (n + 1) + A003151 (n + 1)

end

end A003153.P4247782779759705344

namespace A003153

/-- `A197879(n+1)+A003151(n+1)` -/
def P4247782779759705344.Spec : Prop :=
  ∀ n, P4247782779759705344.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P6771208980632913983

`A190337(n+1)-A001952(n+1)`
-/

namespace A003153.P6771208980632913983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1) - A001952 (n + 1)

end

end A003153.P6771208980632913983

namespace A003153

/-- `A190337(n+1)-A001952(n+1)` -/
def P6771208980632913983.Spec : Prop :=
  ∀ n, P6771208980632913983.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P8553116524828792921

`A197878(n+1)-A003151(n+1)`
-/

namespace A003153.P8553116524828792921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197878 (n + 1) - A003151 (n + 1)

end

end A003153.P8553116524828792921

namespace A003153

/-- `A197878(n+1)-A003151(n+1)` -/
def P8553116524828792921.Spec : Prop :=
  ∀ n, P8553116524828792921.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P8574901250068221186

`A016825(n)+1-A189382(n+1)`
-/

namespace A003153.P8574901250068221186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (1 - A189382 (n + 1))

end

end A003153.P8574901250068221186

namespace A003153

/-- `A016825(n)+1-A189382(n+1)` -/
def P8574901250068221186.Spec : Prop :=
  ∀ n, P8574901250068221186.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P7489874613068034532

`A187393(n+1)-A187338(n+1)`
-/

namespace A003153.P7489874613068034532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187393 (n + 1) - A187338 (n + 1)

end

end A003153.P7489874613068034532

namespace A003153

/-- `A187393(n+1)-A187338(n+1)` -/
def P7489874613068034532.Spec : Prop :=
  ∀ n, P7489874613068034532.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P13142658943485864091

`A184921(n+1)-A286666(n+1)`
-/

namespace A003153.P13142658943485864091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184921 (n + 1) - A286666 (n + 1)

end

end A003153.P13142658943485864091

namespace A003153

/-- `A184921(n+1)-A286666(n+1)` -/
def P13142658943485864091.Spec : Prop :=
  ∀ n, P13142658943485864091.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P12775074739027374514

`A189381(n+1)-A286927(n+1)`
-/

namespace A003153.P12775074739027374514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189381 (n + 1) - A286927 (n + 1)

end

end A003153.P12775074739027374514

namespace A003153

/-- `A189381(n+1)-A286927(n+1)` -/
def P12775074739027374514.Spec : Prop :=
  ∀ n, P12775074739027374514.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P7466929397853271845

`A189381(n+1)%A001952(n+1)`
-/

namespace A003153.P7466929397853271845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189381 (n + 1)) (A001952 (n + 1))

end

end A003153.P7466929397853271845

namespace A003153

/-- `A189381(n+1)%A001952(n+1)` -/
def P7466929397853271845.Spec : Prop :=
  ∀ n, P7466929397853271845.a n = A003153 (n + 1)

end A003153

/-! ## A003153.P6399728240651624634

`A022842(n+1)+1-A054071(n+1)`
-/

namespace A003153.P6399728240651624634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + (1 - A054071 (n + 1))

end

end A003153.P6399728240651624634

namespace A003153

/-- `A022842(n+1)+1-A054071(n+1)` -/
def P6399728240651624634.Spec : Prop :=
  ∀ n, P6399728240651624634.a n = A003153 (n + 1)

end A003153

/-!
# A003154: Centered 12-gonal numbers, or centered dodecagonal numbers: numbers of the form 6*k*(k-1) + 1.

The programs for A003154, the canonical program `A003154.P12292724974289202885` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003154 has offset 1).

The definition of A003154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003154.P12292724974289202885

`12*C(n+1, 2)+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003154

/-- `12*C(n+1, 2)+1` -/
def P12292724974289202885.Spec : Prop :=
  ∀ n, (P12292724974289202885.a n : ℤ) = A003154 (n + 1)

theorem P12292724974289202885.correct : P12292724974289202885.Spec := by
  intro n
  simp only [A003154, Nat.add_sub_cancel]

end A003154

/-! ## A003154.P13201941439007235190

`6*(n+1)*n+1`
-/

namespace A003154.P13201941439007235190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1) * n + 1

end

end A003154.P13201941439007235190

namespace A003154

/-- `6*(n+1)*n+1` -/
def P13201941439007235190.Spec : Prop :=
  ∀ n, (P13201941439007235190.a n : ℤ) = A003154 (n + 1)

theorem P13201941439007235190.correct : P13201941439007235190.Spec := by
  intro n
  simp only [A003154, Nat.add_sub_cancel, A003154.P13201941439007235190.a, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003154

/-! ## A003154.P7513769436774433724

`ogf((1+10x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A003154.P7513769436774433724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 1] [1, -3, 3, -1] n

end

end A003154.P7513769436774433724

namespace A003154

/-- `ogf((1+10x+x^2)/(1-3x+3x^2-x^3))` -/
def P7513769436774433724.Spec : Prop :=
  ∀ n, P7513769436774433724.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P12789511306365079106

`or(1, ∑[12*n])`
-/

namespace A003154.P12789511306365079106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003154.P12789511306365079106

namespace A003154

/-- `or(1, ∑[12*n])` -/
def P12789511306365079106.Spec : Prop :=
  ∀ n, (P12789511306365079106.a n : ℤ) = A003154 (n + 1)

end A003154

/-! ## A003154.P6260723559270486997

`xor(1, ∑[12*n])`
-/

namespace A003154.P6260723559270486997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003154.P6260723559270486997

namespace A003154

/-- `xor(1, ∑[12*n])` -/
def P6260723559270486997.Spec : Prop :=
  ∀ n, (P6260723559270486997.a n : ℤ) = A003154 (n + 1)

end A003154

/-! ## A003154.P14839287872796406861

`∑[gcd(12*n, floor(acot(n)))]`
-/

namespace A003154.P14839287872796406861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (12 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003154.P14839287872796406861

namespace A003154

/-- `∑[gcd(12*n, floor(acot(n)))]` -/
def P14839287872796406861.Spec : Prop :=
  ∀ n, (P14839287872796406861.a n : ℤ) = A003154 (n + 1)

end A003154

/-! ## A003154.P13937415678982733458

`∑[a(n-1)+12]` with `a(0)=1, a(1)=12`
-/

namespace A003154.P13937415678982733458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003154.P13937415678982733458

namespace A003154

/-- `∑[a(n-1)+12]` -/
def P13937415678982733458.Spec : Prop :=
  ∀ n, (P13937415678982733458.a n : ℤ) = A003154 (n + 1)

end A003154

/-! ## A003154.P1028243697973547567

`Δ[lcm(n, 1-2*n²)]`
-/

namespace A003154.P1028243697973547567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (2 * n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A003154.P1028243697973547567

namespace A003154

/-- `Δ[lcm(n, 1-2*n²)]` -/
def P1028243697973547567.Spec : Prop :=
  ∀ n, P1028243697973547567.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P2818303043064290416

`∑[ogf((1+10x+x^2)/(1-2x+x^2))]`
-/

namespace A003154.P2818303043064290416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003154.P2818303043064290416

namespace A003154

/-- `∑[ogf((1+10x+x^2)/(1-2x+x^2))]` -/
def P2818303043064290416.Spec : Prop :=
  ∀ n, P2818303043064290416.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P16915269554814963047

`(∑[n]/tan(acot(36))+3)/3`
-/

namespace A003154.P16915269554814963047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (36 : ℝ)) + 3) / 3

end

end A003154.P16915269554814963047

namespace A003154

/-- `(∑[n]/tan(acot(36))+3)/3` -/
def P16915269554814963047.Spec : Prop :=
  ∀ n, P16915269554814963047.a n = (A003154 (n + 1) : ℝ)

end A003154

/-! ## A003154.P3413388785283360366

`abs(∑[a(n-1)-12]-1)` with `a(0)=0`
-/

namespace A003154.P3413388785283360366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A003154.P3413388785283360366

namespace A003154

/-- `abs(∑[a(n-1)-12]-1)` -/
def P3413388785283360366.Spec : Prop :=
  ∀ n, P3413388785283360366.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P5832669586071298470

`Δ[2*n*gcd(n, 2*n)²-n]`
-/

namespace A003154.P5832669586071298470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.gcd n (2 * n) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003154.P5832669586071298470

namespace A003154

/-- `Δ[2*n*gcd(n, 2*n)²-n]` -/
def P5832669586071298470.Spec : Prop :=
  ∀ n, P5832669586071298470.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P11451700755458714872

`Δ[A007588(n)]`
-/

namespace A003154.P11451700755458714872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003154.P11451700755458714872

namespace A003154

/-- `Δ[A007588(n)]` -/
def P11451700755458714872.Spec : Prop :=
  ∀ n, P11451700755458714872.a n = A003154 (n + 1)

theorem P11451700755458714872.correct : P11451700755458714872.Spec := by
  intro n
  simp only [A003154, Nat.add_sub_cancel, A003154.P11451700755458714872.f1, A003154.P11451700755458714872.a, A003154.P12292724974289202885.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003154

/-! ## A003154.P4476118198417717806

`∑[A298036(2*n)]`
-/

namespace A003154.P4476118198417717806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003154.P4476118198417717806

namespace A003154

/-- `∑[A298036(2*n)]` -/
def P4476118198417717806.Spec : Prop :=
  ∀ n, P4476118198417717806.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P11460121130684442947

`A017246(n)%A016898(n)`
-/

namespace A003154.P11460121130684442947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017246 n) (A016898 n)

end

end A003154.P11460121130684442947

namespace A003154

/-- `A017246(n)%A016898(n)` -/
def P11460121130684442947.Spec : Prop :=
  ∀ n, P11460121130684442947.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P5743188334750312773

`A001539(n)%A273366(n)`
-/

namespace A003154.P5743188334750312773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001539 n) (A273366 n)

end

end A003154.P5743188334750312773

namespace A003154

/-- `A001539(n)%A273366(n)` -/
def P5743188334750312773.Spec : Prop :=
  ∀ n, P5743188334750312773.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P8763057972333563812

`A332243(n)%A001504(n)`
-/

namespace A003154.P8763057972333563812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332243 n) (A001504 n)

end

end A003154.P8763057972333563812

namespace A003154

/-- `A332243(n)%A001504(n)` -/
def P8763057972333563812.Spec : Prop :=
  ∀ n, P8763057972333563812.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P8005970478549041445

`A175113(n)%A174994(n)`
-/

namespace A003154.P8005970478549041445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175113 n) (A174994 n)

end

end A003154.P8005970478549041445

namespace A003154

/-- `A175113(n)%A174994(n)` -/
def P8005970478549041445.Spec : Prop :=
  ∀ n, P8005970478549041445.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P7219613458254316070

`A144124(n)%A273366(n)`
-/

namespace A003154.P7219613458254316070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144124 n) (A273366 n)

end

end A003154.P7219613458254316070

namespace A003154

/-- `A144124(n)%A273366(n)` -/
def P7219613458254316070.Spec : Prop :=
  ∀ n, P7219613458254316070.a n = A003154 (n + 1)

end A003154

/-! ## A003154.P6356757173099520366

`A272850(n)%A174994(n)`
-/

namespace A003154.P6356757173099520366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272850 n) (A174994 n)

end

end A003154.P6356757173099520366

namespace A003154

/-- `A272850(n)%A174994(n)` -/
def P6356757173099520366.Spec : Prop :=
  ∀ n, P6356757173099520366.a n = A003154 (n + 1)

end A003154

/-!
# A003155: Number of ways to halve an n X n chessboard.

The programs for A003155, there is no canonical definition to state claims against.
-/

/-! ## A003155.P761596828092774044

`A067798(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=6`
-/

namespace A003155.P761596828092774044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 6] fun n a =>
  A067798 (a (n - 1)).toNat

end

end A003155.P761596828092774044

/-! ## A003155.P15626923756216566586

`∏{p}[A089632(a(n-1)*a(n-2)), #]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=6`
-/

namespace A003155.P15626923756216566586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 6] fun n f1 =>
  A089632 (f1 (n - 1) * f1 (n - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A003155.P15626923756216566586

/-!
# A003156: A self-generating sequence (see Comments for definition).

The programs for A003156, the canonical program `A003156.P13416231378439649425` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003156 has offset 1).

The definition of A003156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003156.P13416231378439649425

`A079523(n+1)-n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003156

/-- `A079523(n+1)-n` -/
def P13416231378439649425.Spec : Prop :=
  ∀ n, P13416231378439649425.a n = A003156 (n + 1)

theorem P13416231378439649425.correct : P13416231378439649425.Spec := by
  intro n
  simp only [A003156, Nat.add_sub_cancel]

end A003156

/-! ## A003156.P1663030547693133775

`A036554(n+1)-(n+1)`
-/

namespace A003156.P1663030547693133775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - (n + 1 : ℤ)

end

end A003156.P1663030547693133775

namespace A003156

/-- `A036554(n+1)-(n+1)` -/
def P1663030547693133775.Spec : Prop :=
  ∀ n, P1663030547693133775.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P14312760832635044969

`A072939(n+1)-(n+1)-1`
-/

namespace A003156.P14312760832635044969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) - (n + 1 : ℤ) - 1

end

end A003156.P14312760832635044969

namespace A003156

/-- `A072939(n+1)-(n+1)-1` -/
def P14312760832635044969.Spec : Prop :=
  ∀ n, P14312760832635044969.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P9484316165117931478

`A003157(n+1)-2*(n+1)`
-/

namespace A003156.P9484316165117931478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - (2 * (n + 1) : ℤ)

end

end A003156.P9484316165117931478

namespace A003156

/-- `A003157(n+1)-2*(n+1)` -/
def P9484316165117931478.Spec : Prop :=
  ∀ n, P9484316165117931478.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P5293378551909768302

`2*A003159(n+1)-(n+1)`
-/

namespace A003156.P5293378551909768302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1) - (n + 1 : ℤ)

end

end A003156.P5293378551909768302

namespace A003156

/-- `2*A003159(n+1)-(n+1)` -/
def P5293378551909768302.Spec : Prop :=
  ∀ n, P5293378551909768302.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P15857135264961908000

`A003158(n+1)-2*(n+1)+1`
-/

namespace A003156.P15857135264961908000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) - (2 * (n + 1) : ℤ) + 1

end

end A003156.P15857135264961908000

namespace A003156

/-- `A003158(n+1)-2*(n+1)+1` -/
def P15857135264961908000.Spec : Prop :=
  ∀ n, P15857135264961908000.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P17221434355601460073

`lt[0, val(n+1, 2)%2]-n`
-/

namespace A003156.P17221434355601460073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A003156.P17221434355601460073

namespace A003156

/-- `lt[0, val(n+1, 2)%2]-n` -/
def P17221434355601460073.Spec : Prop :=
  ∀ n, P17221434355601460073.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P3965209305532146632

`lt[xor(n, n+1)%3, 1]-n`
-/

namespace A003156.P3965209305532146632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A003156.P3965209305532146632

namespace A003156

/-- `lt[xor(n, n+1)%3, 1]-n` -/
def P3965209305532146632.Spec : Prop :=
  ∀ n, P3965209305532146632.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P17238251350555315324

`eq[(-1)^val(n+1, 2), -1]-n`
-/

namespace A003156.P17238251350555315324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A003156.P17238251350555315324

namespace A003156

/-- `eq[(-1)^val(n+1, 2), -1]-n` -/
def P17238251350555315324.Spec : Prop :=
  ∀ n, P17238251350555315324.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P16310135829248432509

`comp[or(n, val(n+2, 2))]+1-n`
-/

namespace A003156.P16310135829248432509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (1 - (n : ℤ))

end

end A003156.P16310135829248432509

namespace A003156

/-- `comp[or(n, val(n+2, 2))]+1-n` -/
def P16310135829248432509.Spec : Prop :=
  ∀ n, P16310135829248432509.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P15346218207082388870

`eq[0, xor(n, n-1)%3]-(n+1)`
-/

namespace A003156.P15346218207082388870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A003156.P15346218207082388870

namespace A003156

/-- `eq[0, xor(n, n-1)%3]-(n+1)` -/
def P15346218207082388870.Spec : Prop :=
  ∀ n, P15346218207082388870.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P2424540764850111905

`eq[3, xor(n, n-3)%6]-2-n`
-/

namespace A003156.P2424540764850111905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 3)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2 - (n : ℤ)

end

end A003156.P2424540764850111905

namespace A003156

/-- `eq[3, xor(n, n-3)%6]-2-n` -/
def P2424540764850111905.Spec : Prop :=
  ∀ n, P2424540764850111905.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P5303006890249140607

`∑[A080426(n+1)]`
-/

namespace A003156.P5303006890249140607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003156.P5303006890249140607

namespace A003156

/-- `∑[A080426(n+1)]` -/
def P5303006890249140607.Spec : Prop :=
  ∀ n, P5303006890249140607.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P10307576822737177598

`A284390(n+1)-2`
-/

namespace A003156.P10307576822737177598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1) - 2

end

end A003156.P10307576822737177598

namespace A003156

/-- `A284390(n+1)-2` -/
def P10307576822737177598.Spec : Prop :=
  ∀ n, P10307576822737177598.a n = A003156 (n + 1)

end A003156

/-! ## A003156.P2228561196765577776

`A162648(n+1)+1-n`
-/

namespace A003156.P2228561196765577776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + (1 - (n : ℤ))

end

end A003156.P2228561196765577776

namespace A003156

/-- `A162648(n+1)+1-n` -/
def P2228561196765577776.Spec : Prop :=
  ∀ n, P2228561196765577776.a n = A003156 (n + 1)

theorem P2228561196765577776.correct : P2228561196765577776.Spec := by
  intro n
  simp only [A003156, Nat.add_sub_cancel, A003156.P2228561196765577776.a, A003156.P13416231378439649425.a, A079523, A079523.P16371928625451652770.a, A162648, A162648.P16341361686892732013.a, A081706, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003156

/-!
# A003157: A self-generating sequence (see Comments in A003156 for the definition).

The programs for A003157, the canonical program `A003157.P4569272790691930079` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003157 has offset 1).

The definition of A003157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003157.P16427577606363892622

`A003158(n+1)+1`
-/

namespace A003157.P16427577606363892622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) + 1

end

end A003157.P16427577606363892622

namespace A003157

/-- `A003158(n+1)+1` -/
def P16427577606363892622.Spec : Prop :=
  ∀ n, P16427577606363892622.a n = A003157 (n + 1)

theorem P16427577606363892622.correct : P16427577606363892622.Spec := by
  intro n
  simp only [A003157, Nat.add_sub_cancel, A003157.P16427577606363892622.a, A003157.P4569272790691930079.a, A003158, A003158.P15521823830310252341.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003157

/-! ## A003157.P4569272790691930079

`A036554(n+1)+n+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003157

/-- `A036554(n+1)+n+1` -/
def P4569272790691930079.Spec : Prop :=
  ∀ n, P4569272790691930079.a n = A003157 (n + 1)

theorem P4569272790691930079.correct : P4569272790691930079.Spec := by
  intro n
  simp only [A003157, Nat.add_sub_cancel]

end A003157

/-! ## A003157.P4962665622447827893

`eq[3, xor(n, n-3)%6]+n`
-/

namespace A003157.P4962665622447827893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 3)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A003157.P4962665622447827893

namespace A003157

/-- `eq[3, xor(n, n-3)%6]+n` -/
def P4962665622447827893.Spec : Prop :=
  ∀ n, (P4962665622447827893.a n : ℤ) = A003157 (n + 1)

end A003157

/-! ## A003157.P5339134416549326850

`comp[n*and(n, -n)]+1+n`
-/

namespace A003157.P5339134416549326850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A003157.P5339134416549326850

namespace A003157

/-- `comp[n*and(n, -n)]+1+n` -/
def P5339134416549326850.Spec : Prop :=
  ∀ n, (P5339134416549326850.a n : ℤ) = A003157 (n + 1)

end A003157

/-! ## A003157.P17458851146021087209

`comp[or(n, val(n+2, 2))]+3+n`
-/

namespace A003157.P17458851146021087209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3 + n

end

end A003157.P17458851146021087209

namespace A003157

/-- `comp[or(n, val(n+2, 2))]+3+n` -/
def P17458851146021087209.Spec : Prop :=
  ∀ n, (P17458851146021087209.a n : ℤ) = A003157 (n + 1)

end A003157

/-! ## A003157.P6435307262467910846

`eq[2, and(n, -n)%3]+n+1`
-/

namespace A003157.P6435307262467910846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n + 1

end

end A003157.P6435307262467910846

namespace A003157

/-- `eq[2, and(n, -n)%3]+n+1` -/
def P6435307262467910846.Spec : Prop :=
  ∀ n, (P6435307262467910846.a n : ℤ) = A003157 (n + 1)

end A003157

/-! ## A003157.P12883931535454554894

`lt[(-(2*n))^val(n+1, 2), 0]+2+n`
-/

namespace A003157.P12883931535454554894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n : ℤ)) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 + n

end

end A003157.P12883931535454554894

namespace A003157

/-- `lt[(-(2*n))^val(n+1, 2), 0]+2+n` -/
def P12883931535454554894.Spec : Prop :=
  ∀ n, (P12883931535454554894.a n : ℤ) = A003157 (n + 1)

end A003157

/-! ## A003157.P11468833870392948953

`lt[0, val(n+1, 2)%2]-n+3*n+2-n`
-/

namespace A003157.P11468833870392948953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ) + ((3 * n + 2 : ℤ) - (n : ℤ))

end

end A003157.P11468833870392948953

namespace A003157

/-- `lt[0, val(n+1, 2)%2]-n+3*n+2-n` -/
def P11468833870392948953.Spec : Prop :=
  ∀ n, P11468833870392948953.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P14961137865684723402

`A072939(n+1)+n`
-/

namespace A003157.P14961137865684723402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) + (n : ℤ)

end

end A003157.P14961137865684723402

namespace A003157

/-- `A072939(n+1)+n` -/
def P14961137865684723402.Spec : Prop :=
  ∀ n, P14961137865684723402.a n = A003157 (n + 1)

theorem P14961137865684723402.correct : P14961137865684723402.Spec := by
  intro n
  simp only [A003157, Nat.add_sub_cancel, A003157.P14961137865684723402.a, A003157.P4569272790691930079.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003157

/-! ## A003157.P17626183458474691121

`∑[A080426(n+1)+2]`
-/

namespace A003157.P17626183458474691121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003157.P17626183458474691121

namespace A003157

/-- `∑[A080426(n+1)+2]` -/
def P17626183458474691121.Spec : Prop :=
  ∀ n, P17626183458474691121.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P18215772412845474151

`A079523(n+1)+2+n`
-/

namespace A003157.P18215772412845474151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + 2 + (n : ℤ)

end

end A003157.P18215772412845474151

namespace A003157

/-- `A079523(n+1)+2+n` -/
def P18215772412845474151.Spec : Prop :=
  ∀ n, P18215772412845474151.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P9375329343648794020

`A162648(n+1)+3+n`
-/

namespace A003157.P9375329343648794020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + 3 + (n : ℤ)

end

end A003157.P9375329343648794020

namespace A003157

/-- `A162648(n+1)+3+n` -/
def P9375329343648794020.Spec : Prop :=
  ∀ n, P9375329343648794020.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P488248825338739331

`A284390(n+1)+2*n`
-/

namespace A003157.P488248825338739331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1) + (2 * n : ℤ)

end

end A003157.P488248825338739331

namespace A003157

/-- `A284390(n+1)+2*n` -/
def P488248825338739331.Spec : Prop :=
  ∀ n, P488248825338739331.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P4448761650818084066

`∑[2*A026465(n+1)+1]`
-/

namespace A003157.P4448761650818084066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026465 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003157.P4448761650818084066

namespace A003157

/-- `∑[2*A026465(n+1)+1]` -/
def P4448761650818084066.Spec : Prop :=
  ∀ n, P4448761650818084066.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P14017012761796992793

`A003156(n+1)+2*(n+1)`
-/

namespace A003157.P14017012761796992793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + (2 * (n + 1) : ℤ)

end

end A003157.P14017012761796992793

namespace A003157

/-- `A003156(n+1)+2*(n+1)` -/
def P14017012761796992793.Spec : Prop :=
  ∀ n, P14017012761796992793.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P1813214456500496425

`2*A003159(n+1)+n+1`
-/

namespace A003157.P1813214456500496425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1) + (n + 1 : ℤ)

end

end A003157.P1813214456500496425

namespace A003157

/-- `2*A003159(n+1)+n+1` -/
def P1813214456500496425.Spec : Prop :=
  ∀ n, P1813214456500496425.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P10237915436693851594

`A108269(n+1)/2+n+1`
-/

namespace A003157.P10237915436693851594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A003157.P10237915436693851594

namespace A003157

/-- `A108269(n+1)/2+n+1` -/
def P10237915436693851594.Spec : Prop :=
  ∀ n, P10237915436693851594.a n = (A003157 (n + 1) : ℚ)

theorem P10237915436693851594.correct : P10237915436693851594.Spec := by
  intro n
  simp only [A003157, Nat.add_sub_cancel, A003157.P10237915436693851594.a, A003157.P4569272790691930079.a, A036554, A036554.P8175060370953883075.a, A108269, A108269.P11596501751048516182.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003157

/-! ## A003157.P8852370238497550103

`2*A260480(n+1)-(n+1)`
-/

namespace A003157.P8852370238497550103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260480 (n + 1) - (n + 1 : ℤ)

end

end A003157.P8852370238497550103

namespace A003157

/-- `2*A260480(n+1)-(n+1)` -/
def P8852370238497550103.Spec : Prop :=
  ∀ n, P8852370238497550103.a n = A003157 (n + 1)

end A003157

/-! ## A003157.P6448199113847203362

`4*(n+1)-A071993(n+1)`
-/

namespace A003157.P6448199113847203362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A071993 (n + 1)

end

end A003157.P6448199113847203362

namespace A003157

/-- `4*(n+1)-A071993(n+1)` -/
def P6448199113847203362.Spec : Prop :=
  ∀ n, P6448199113847203362.a n = A003157 (n + 1)

end A003157

/-!
# A003158: A self-generating sequence (see Comments in A003156 for the definition).

The programs for A003158, the canonical program `A003158.P15521823830310252341` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003158 has offset 1).

The definition of A003158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003158.P15521823830310252341

`A003157(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003158

/-- `A003157(n+1)-1` -/
def P15521823830310252341.Spec : Prop :=
  ∀ n, P15521823830310252341.a n = A003158 (n + 1)

theorem P15521823830310252341.correct : P15521823830310252341.Spec := by
  intro n
  simp only [A003158, Nat.add_sub_cancel]

end A003158

/-! ## A003158.P15247909914178096863

`A079523(n+1)+n+1`
-/

namespace A003158.P15247909914178096863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + (n + 1 : ℤ)

end

end A003158.P15247909914178096863

namespace A003158

/-- `A079523(n+1)+n+1` -/
def P15247909914178096863.Spec : Prop :=
  ∀ n, P15247909914178096863.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P6323968213424483425

`comp[n*and(n, -n)]+n`
-/

namespace A003158.P6323968213424483425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A003158.P6323968213424483425

namespace A003158

/-- `comp[n*and(n, -n)]+n` -/
def P6323968213424483425.Spec : Prop :=
  ∀ n, (P6323968213424483425.a n : ℤ) = A003158 (n + 1)

end A003158

/-! ## A003158.P8344165516722466453

`eq[2, and(n, -n)%3]+n`
-/

namespace A003158.P8344165516722466453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A003158.P8344165516722466453

namespace A003158

/-- `eq[2, and(n, -n)%3]+n` -/
def P8344165516722466453.Spec : Prop :=
  ∀ n, (P8344165516722466453.a n : ℤ) = A003158 (n + 1)

end A003158

/-! ## A003158.P5217581833204208121

`eq[0, xor(n, n-1)%3]+n`
-/

namespace A003158.P5217581833204208121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A003158.P5217581833204208121

namespace A003158

/-- `eq[0, xor(n, n-1)%3]+n` -/
def P5217581833204208121.Spec : Prop :=
  ∀ n, (P5217581833204208121.a n : ℤ) = A003158 (n + 1)

end A003158

/-! ## A003158.P8126302100886353981

`comp[or(n, val(n+2, 2))]+2+n`
-/

namespace A003158.P8126302100886353981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n

end

end A003158.P8126302100886353981

namespace A003158

/-- `comp[or(n, val(n+2, 2))]+2+n` -/
def P8126302100886353981.Spec : Prop :=
  ∀ n, (P8126302100886353981.a n : ℤ) = A003158 (n + 1)

end A003158

/-! ## A003158.P5145972745222143085

`n-(1-eq[3, xor(n, n-3)%6])`
-/

namespace A003158.P5145972745222143085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 3)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ))

end

end A003158.P5145972745222143085

namespace A003158

/-- `n-(1-eq[3, xor(n, n-3)%6])` -/
def P5145972745222143085.Spec : Prop :=
  ∀ n, P5145972745222143085.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P13040744513006124865

`A036554(n+1)+n`
-/

namespace A003158.P13040744513006124865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + (n : ℤ)

end

end A003158.P13040744513006124865

namespace A003158

/-- `A036554(n+1)+n` -/
def P13040744513006124865.Spec : Prop :=
  ∀ n, P13040744513006124865.a n = A003158 (n + 1)

theorem P13040744513006124865.correct : P13040744513006124865.Spec := by
  intro n
  simp only [A003158, Nat.add_sub_cancel, A003158.P13040744513006124865.a, A003158.P15521823830310252341.a, A003157, A003157.P4569272790691930079.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003158

/-! ## A003158.P11457978706467287923

`A072939(n+1)-1+n`
-/

namespace A003158.P11457978706467287923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) - 1 + (n : ℤ)

end

end A003158.P11457978706467287923

namespace A003158

/-- `A072939(n+1)-1+n` -/
def P11457978706467287923.Spec : Prop :=
  ∀ n, P11457978706467287923.a n = A003158 (n + 1)

theorem P11457978706467287923.correct : P11457978706467287923.Spec := by
  intro n
  simp only [A003158, Nat.add_sub_cancel, A003158.P11457978706467287923.a, A003158.P15521823830310252341.a, A003157, A003157.P4569272790691930079.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, A036554, A036554.P8175060370953883075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003158

/-! ## A003158.P523284193056380212

`A162648(n+1)+2+n`
-/

namespace A003158.P523284193056380212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + 2 + (n : ℤ)

end

end A003158.P523284193056380212

namespace A003158

/-- `A162648(n+1)+2+n` -/
def P523284193056380212.Spec : Prop :=
  ∀ n, P523284193056380212.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P2228896722334606601

`2*A003159(n+1)+n`
-/

namespace A003158.P2228896722334606601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1) + (n : ℤ)

end

end A003158.P2228896722334606601

namespace A003158

/-- `2*A003159(n+1)+n` -/
def P2228896722334606601.Spec : Prop :=
  ∀ n, P2228896722334606601.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P11694528188939926062

`A108269(n+1)/2+n`
-/

namespace A003158.P11694528188939926062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A003158.P11694528188939926062

namespace A003158

/-- `A108269(n+1)/2+n` -/
def P11694528188939926062.Spec : Prop :=
  ∀ n, P11694528188939926062.a n = (A003158 (n + 1) : ℚ)

theorem P11694528188939926062.correct : P11694528188939926062.Spec := by
  intro n
  simp only [A003158, Nat.add_sub_cancel, A003158.P11694528188939926062.a, A003158.P15521823830310252341.a, A003157, A003157.P4569272790691930079.a, A108269, A108269.P11596501751048516182.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003158

/-! ## A003158.P11291592391052650386

`A003156(n+1)+Δ[n²]`
-/

namespace A003158.P11291592391052650386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A003158.P11291592391052650386

namespace A003158

/-- `A003156(n+1)+Δ[n²]` -/
def P11291592391052650386.Spec : Prop :=
  ∀ n, P11291592391052650386.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P11627496899332927474

`∑[A080426(n+1)+2]-1`
-/

namespace A003158.P11627496899332927474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003158.P11627496899332927474

namespace A003158

/-- `∑[A080426(n+1)+2]-1` -/
def P11627496899332927474.Spec : Prop :=
  ∀ n, P11627496899332927474.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P17463079743820672780

`∑[2*A026465(n+1)]+n`
-/

namespace A003158.P17463079743820672780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A003158.P17463079743820672780

namespace A003158

/-- `∑[2*A026465(n+1)]+n` -/
def P17463079743820672780.Spec : Prop :=
  ∀ n, P17463079743820672780.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P2129227236480436141

`record[2*A302792(n+1)]+n`
-/

namespace A003158.P2129227236480436141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A003158.P2129227236480436141

namespace A003158

/-- `record[2*A302792(n+1)]+n` -/
def P2129227236480436141.Spec : Prop :=
  ∀ n, P2129227236480436141.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P6077459639181986239

`2*A121539(n+1)+n+2`
-/

namespace A003158.P6077459639181986239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121539 (n + 1) + (n + 2 : ℤ)

end

end A003158.P6077459639181986239

namespace A003158

/-- `2*A121539(n+1)+n+2` -/
def P6077459639181986239.Spec : Prop :=
  ∀ n, P6077459639181986239.a n = A003158 (n + 1)

end A003158

/-! ## A003158.P13792416347074648894

`lt[2, A087229(val(n+2, 2))]+2+n`
-/

namespace A003158.P13792416347074648894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 (SequenceMachineLib.valuation (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 + n

end

end A003158.P13792416347074648894

namespace A003158

/-- `lt[2, A087229(val(n+2, 2))]+2+n` -/
def P13792416347074648894.Spec : Prop :=
  ∀ n, (P13792416347074648894.a n : ℤ) = A003158 (n + 1)

end A003158

/-! ## A003158.P17262463505363482122

`eq[3, A020639(xor(n, n+1))]+1+n`
-/

namespace A003158.P17262463505363482122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A003158.P17262463505363482122

namespace A003158

/-- `eq[3, A020639(xor(n, n+1))]+1+n` -/
def P17262463505363482122.Spec : Prop :=
  ∀ n, (P17262463505363482122.a n : ℤ) = A003158 (n + 1)

end A003158

/-!
# A003159: Numbers whose binary representation ends in an even number of zeros.

The programs for A003159, the canonical program `A003159.P11089210282787626786` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003159 has offset 1).

The definition of A003159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003159.P5383806545209504571

`A121539(n+1)+1`
-/

namespace A003159.P5383806545209504571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + 1

end

end A003159.P5383806545209504571

namespace A003159

/-- `A121539(n+1)+1` -/
def P5383806545209504571.Spec : Prop :=
  ∀ n, P5383806545209504571.a n = A003159 (n + 1)

theorem P5383806545209504571.correct : P5383806545209504571.Spec := by
  intro n
  simp only [A003159, Nat.add_sub_cancel, A003159.P5383806545209504571.a, A003159.P11089210282787626786.f1, A003159.P11089210282787626786.f2, A003159.P11089210282787626786.a, A121539, A121539.P12871047316155438586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003159

/-! ## A003159.P11089210282787626786

`eq[1, and(n, -n)%3]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003159

/-- `eq[1, and(n, -n)%3]` -/
def P11089210282787626786.Spec : Prop :=
  ∀ n, (P11089210282787626786.a n : ℤ) = A003159 (n + 1)

theorem P11089210282787626786.correct : P11089210282787626786.Spec := by
  intro n
  simp only [A003159, Nat.add_sub_cancel]

end A003159

/-! ## A003159.P8304546066760993332

`comp[2*n*gcd(64, n)]`
-/

namespace A003159.P8304546066760993332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.gcd 64 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A003159.P8304546066760993332

namespace A003159

/-- `comp[2*n*gcd(64, n)]` -/
def P8304546066760993332.Spec : Prop :=
  ∀ n, (P8304546066760993332.a n : ℤ) = A003159 (n + 1)

end A003159

/-! ## A003159.P2465878573316180856

`lt[0, xor(n, n-1)%3]`
-/

namespace A003159.P2465878573316180856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003159.P2465878573316180856

namespace A003159

/-- `lt[0, xor(n, n-1)%3]` -/
def P2465878573316180856.Spec : Prop :=
  ∀ n, (P2465878573316180856.a n : ℤ) = A003159 (n + 1)

end A003159

/-! ## A003159.P3376367914412917319

`comp[n*and(n, -n)]/2`
-/

namespace A003159.P3376367914412917319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2

end

end A003159.P3376367914412917319

namespace A003159

/-- `comp[n*and(n, -n)]/2` -/
def P3376367914412917319.Spec : Prop :=
  ∀ n, P3376367914412917319.a n = (A003159 (n + 1) : ℚ)

end A003159

/-! ## A003159.P12190926744754795582

`eq[0, val(n+1, 2)%2]+1`
-/

namespace A003159.P12190926744754795582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A003159.P12190926744754795582

namespace A003159

/-- `eq[0, val(n+1, 2)%2]+1` -/
def P12190926744754795582.Spec : Prop :=
  ∀ n, (P12190926744754795582.a n : ℤ) = A003159 (n + 1)

end A003159

/-! ## A003159.P7123967115308462855

`comp[or(n, val(n+2, 2))]/2+1`
-/

namespace A003159.P7123967115308462855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2 + 1

end

end A003159.P7123967115308462855

namespace A003159

/-- `comp[or(n, val(n+2, 2))]/2+1` -/
def P7123967115308462855.Spec : Prop :=
  ∀ n, P7123967115308462855.a n = (A003159 (n + 1) : ℚ)

end A003159

/-! ## A003159.P1657298772079237312

`(eq[3, xor(n, n-3)%6]-1)/2`
-/

namespace A003159.P1657298772079237312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 3)) 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1 : ℚ) / 2

end

end A003159.P1657298772079237312

namespace A003159

/-- `(eq[3, xor(n, n-3)%6]-1)/2` -/
def P1657298772079237312.Spec : Prop :=
  ∀ n, P1657298772079237312.a n = (A003159 (n + 1) : ℚ)

end A003159

/-! ## A003159.P9260803491179127151

`floor(a(n-1)+(a(n-1)+1)/a(a(n-1)-n))` with `a(0)=1`
-/

namespace A003159.P9260803491179127151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / (a (a (n - 1) - (n : ℤ)).toNat : ℚ)⌋

end

end A003159.P9260803491179127151

namespace A003159

/-- `floor(a(n-1)+(a(n-1)+1)/a(a(n-1)-n))` -/
def P9260803491179127151.Spec : Prop :=
  ∀ n, P9260803491179127151.a n = A003159 (n + 1)

end A003159

/-! ## A003159.P17424454365146677142

`∑[A026465(n+1)]`
-/

namespace A003159.P17424454365146677142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003159.P17424454365146677142

namespace A003159

/-- `∑[A026465(n+1)]` -/
def P17424454365146677142.Spec : Prop :=
  ∀ n, P17424454365146677142.a n = A003159 (n + 1)

end A003159

/-! ## A003159.P309244420063285974

`record[A302792(n+1)]`
-/

namespace A003159.P309244420063285974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003159.P309244420063285974

namespace A003159

/-- `record[A302792(n+1)]` -/
def P309244420063285974.Spec : Prop :=
  ∀ n, P309244420063285974.a n = A003159 (n + 1)

end A003159

/-! ## A003159.P14016951470292951836

`A036554(n+1)/2`
-/

namespace A003159.P14016951470292951836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036554 (n + 1) : ℚ) / 2

end

end A003159.P14016951470292951836

namespace A003159

/-- `A036554(n+1)/2` -/
def P14016951470292951836.Spec : Prop :=
  ∀ n, P14016951470292951836.a n = (A003159 (n + 1) : ℚ)

end A003159

/-!
# A003160: a(1) = a(2) = 1, a(n) = n - a(a(n-1)) - a(a(n-2)).

The programs for A003160, the canonical program `A003160.P4130532854386477480` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003160 has offset 1).

The definition of A003160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(a(n-1)-1)-a(a(n-2)-1)` (program `A003160.P4130532854386477480`, by `A003160.P4130532854386477480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003160.P4130532854386477480

`n+1-a(a(n-1)-1)-a(a(n-2)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003160

/-- `n+1-a(a(n-1)-1)-a(a(n-2)-1)` -/
def P4130532854386477480.Spec : Prop :=
  ∀ n, P4130532854386477480.a n = A003160 (n + 1)

theorem P4130532854386477480.correct : P4130532854386477480.Spec := by
  intro n
  simp only [A003160, Nat.add_sub_cancel]

end A003160

/-! ## A003160.P8759154926698487666

`A003159(n+2)-(n+2)`
-/

namespace A003160.P8759154926698487666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 2) - (n + 2 : ℤ)

end

end A003160.P8759154926698487666

namespace A003160

/-- `A003159(n+2)-(n+2)` -/
def P8759154926698487666.Spec : Prop :=
  ∀ n, P8759154926698487666.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P16091430416657576715

`∑[val(eq[1, xor(n, n+3)%3], 2)]`
-/

namespace A003160.P16091430416657576715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 3) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f2 j = f3 j) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P16091430416657576715

namespace A003160

/-- `∑[val(eq[1, xor(n, n+3)%3], 2)]` -/
def P16091430416657576715.Spec : Prop :=
  ∀ n, (P16091430416657576715.a n : ℤ) = A003160 (n + 1)

end A003160

/-! ## A003160.P5589187004725112168

`∑[A395089(n)]`
-/

namespace A003160.P5589187004725112168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P5589187004725112168

namespace A003160

/-- `∑[A395089(n)]` -/
def P5589187004725112168.Spec : Prop :=
  ∀ n, P5589187004725112168.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P14626177767123157459

`∑[1-A395088(n)]`
-/

namespace A003160.P14626177767123157459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A395088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P14626177767123157459

namespace A003160

/-- `∑[1-A395088(n)]` -/
def P14626177767123157459.Spec : Prop :=
  ∀ n, P14626177767123157459.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P2706633103132732612

`∑[val(A161580(n+1), 2)]`
-/

namespace A003160.P2706633103132732612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161580 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P2706633103132732612

namespace A003160

/-- `∑[val(A161580(n+1), 2)]` -/
def P2706633103132732612.Spec : Prop :=
  ∀ n, (P2706633103132732612.a n : ℤ) = A003160 (n + 1)

end A003160

/-! ## A003160.P16825911379658012389

`∑[val(A194688(n+1), 4)]`
-/

namespace A003160.P16825911379658012389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194688 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P16825911379658012389

namespace A003160

/-- `∑[val(A194688(n+1), 4)]` -/
def P16825911379658012389.Spec : Prop :=
  ∀ n, (P16825911379658012389.a n : ℤ) = A003160 (n + 1)

end A003160

/-! ## A003160.P2774610262482307461

`comp[A162648(n+1)]-n`
-/

namespace A003160.P2774610262482307461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A003160.P2774610262482307461

namespace A003160

/-- `comp[A162648(n+1)]-n` -/
def P2774610262482307461.Spec : Prop :=
  ∀ n, P2774610262482307461.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P9758449305029823148

`eq[1, A035263(n+2)]-n`
-/

namespace A003160.P9758449305029823148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A003160.P9758449305029823148

namespace A003160

/-- `eq[1, A035263(n+2)]-n` -/
def P9758449305029823148.Spec : Prop :=
  ∀ n, P9758449305029823148.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P14261305911587623441

`eq[1, A089608(n+2)]-n`
-/

namespace A003160.P14261305911587623441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A003160.P14261305911587623441

namespace A003160

/-- `eq[1, A089608(n+2)]-n` -/
def P14261305911587623441.Spec : Prop :=
  ∀ n, P14261305911587623441.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P13795329626077294792

`∑[char[A003156(n+1)-1]]`
-/

namespace A003160.P13795329626077294792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P13795329626077294792

namespace A003160

/-- `∑[char[A003156(n+1)-1]]` -/
def P13795329626077294792.Spec : Prop :=
  ∀ n, (P13795329626077294792.a n : ℤ) = A003160 (n + 1)

end A003160

/-! ## A003160.P9971428105075946701

`∑[char[A284393(n+1)-2]]`
-/

namespace A003160.P9971428105075946701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P9971428105075946701

namespace A003160

/-- `∑[char[A284393(n+1)-2]]` -/
def P9971428105075946701.Spec : Prop :=
  ∀ n, (P9971428105075946701.a n : ℤ) = A003160 (n + 1)

end A003160

/-! ## A003160.P2831037078985693433

`comp[A079523(n+1)-1]-n`
-/

namespace A003160.P2831037078985693433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A003160.P2831037078985693433

namespace A003160

/-- `comp[A079523(n+1)-1]-n` -/
def P2831037078985693433.Spec : Prop :=
  ∀ n, P2831037078985693433.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P9765433725149798529

`∑[char[∑[A080426(n+1)]-1]]`
-/

namespace A003160.P9765433725149798529
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P9765433725149798529

namespace A003160

/-- `∑[char[∑[A080426(n+1)]-1]]` -/
def P9765433725149798529.Spec : Prop :=
  ∀ n, (P9765433725149798529.a n : ℤ) = A003160 (n + 1)

end A003160

/-! ## A003160.P6302765944725893157

`(A095774(n+1)+n+1)/2`
-/

namespace A003160.P6302765944725893157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095774 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A003160.P6302765944725893157

namespace A003160

/-- `(A095774(n+1)+n+1)/2` -/
def P6302765944725893157.Spec : Prop :=
  ∀ n, P6302765944725893157.a n = (A003160 (n + 1) : ℚ)

theorem P6302765944725893157.correct : P6302765944725893157.Spec := by
  intro n
  simp only [A003160, Nat.add_sub_cancel, A003160.P6302765944725893157.a, A003160.P4130532854386477480.a, A095774, A095774.P3934160063967268362.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003160

/-! ## A003160.P12089249417031490920

`eq[A036987(n+1), A217586(n+2)]-n`
-/

namespace A003160.P12089249417031490920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A003160.P12089249417031490920

namespace A003160

/-- `eq[A036987(n+1), A217586(n+2)]-n` -/
def P12089249417031490920.Spec : Prop :=
  ∀ n, P12089249417031490920.a n = A003160 (n + 1)

end A003160

/-! ## A003160.P17883251016343007804

`∑[A284391(n+2)]`
-/

namespace A003160.P17883251016343007804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003160.P17883251016343007804

namespace A003160

/-- `∑[A284391(n+2)]` -/
def P17883251016343007804.Spec : Prop :=
  ∀ n, P17883251016343007804.a n = A003160 (n + 1)

end A003160

/-!
# A003161: A binomial coefficient sum.

The programs for A003161, there is no canonical definition to state claims against.
-/

/-! ## A003161.P8380056045694714279

`A001405(n)*A003162(n)`
-/

namespace A003161.P8380056045694714279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A003162 n

end

end A003161.P8380056045694714279

/-! ## A003161.P14960140113572550882

`abs(A003162(n)*A126930(n))`
-/

namespace A003161.P14960140113572550882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003162 n * A126930 n|

end

end A003161.P14960140113572550882

/-! ## A003161.P15417227313143996301

`A003162(n)*A210736(n+1)`
-/

namespace A003161.P15417227313143996301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003162 n * A210736 (n + 1)

end

end A003161.P15417227313143996301

/-! ## A003161.P6431046355579592143

`A003162(n)*A061554(A000217(n))`
-/

namespace A003161.P6431046355579592143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003162 n * A061554 (A000217 n).toNat

end

end A003161.P6431046355579592143

/-! ## A003161.P9828602142552087245

`A007318(A080476(n+1))*A003162(n)`
-/

namespace A003161.P9828602142552087245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A080476 (n + 1)).toNat * A003162 n

end

end A003161.P9828602142552087245

/-! ## A003161.P1913341418350935051

`A003162(n)*A054336(∑[n])`
-/

namespace A003161.P1913341418350935051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003162 n * A054336 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003161.P1913341418350935051

/-! ## A003161.P640389766790766127

`A003162(n)/A361888(n)*A361887(n)`
-/

namespace A003161.P640389766790766127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003162 n : ℚ) / (A361888 n : ℚ) * (A361887 n : ℚ)

end

end A003161.P640389766790766127

/-! ## A003161.P13802739037961534025

`A003162(n)*A361887(n)/A361888(n)`
-/

namespace A003161.P13802739037961534025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003162 n * A361887 n : ℚ) / (A361888 n : ℚ)

end

end A003161.P13802739037961534025

/-! ## A003161.P16655695586283589239

`A003162(n)/A361891(n)*A361890(n)`
-/

namespace A003161.P16655695586283589239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003162 n : ℚ) / (A361891 n : ℚ) * (A361890 n : ℚ)

end

end A003161.P16655695586283589239

/-!
# A003162: A binomial coefficient summation.

The programs for A003162, there is no canonical definition to state claims against.
-/

/-! ## A003162.P10455901792332071665

`A003161(n)/A001405(n)`
-/

namespace A003162.P10455901792332071665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A001405 n : ℚ)

end

end A003162.P10455901792332071665

/-! ## A003162.P3907141933650103538

`abs(A003161(n)/A126930(n))`
-/

namespace A003162.P3907141933650103538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A003161 n : ℚ) / (A126930 n : ℚ)|

end

end A003162.P3907141933650103538

/-! ## A003162.P4570292720257582226

`A003161(n)/A210736(n+1)`
-/

namespace A003162.P4570292720257582226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A210736 (n + 1) : ℚ)

end

end A003162.P4570292720257582226

/-! ## A003162.P6551483455386326653

`A003161(n)/A007318(A080476(n+1))`
-/

namespace A003162.P6551483455386326653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A007318 (A080476 (n + 1)).toNat : ℚ)

end

end A003162.P6551483455386326653

/-! ## A003162.P11858534324792401400

`A003161(n)/A054336(∑[n])`
-/

namespace A003162.P11858534324792401400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A054336 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A003162.P11858534324792401400

/-! ## A003162.P12145234484322391661

`A003161(n)/A361887(n)*A361888(n)`
-/

namespace A003162.P12145234484322391661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A361887 n : ℚ) * (A361888 n : ℚ)

end

end A003162.P12145234484322391661

/-!
# A003163: Denominators of Van der Pol numbers.

The programs for A003163, there is no canonical definition to state claims against.
-/

/-! ## A003163.P8526945228579666324

`A004184(∑[A007318(3^n-floor(2^(n-1)))])`
-/

namespace A003163.P8526945228579666324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((3 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003163.P8526945228579666324

/-!
# A003164: Numerators of Van der Pol numbers.

The programs for A003164, there is no canonical definition to state claims against.
-/

/-! ## A003164.P6268742609440766483

`A118400(A298950(n+1)-A022843(n))`
-/

namespace A003164.P6268742609440766483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118400 (A298950 (n + 1) - A022843 n).toNat

end

end A003164.P6268742609440766483

/-! ## A003164.P1996962152815789575

`A292461(A309861(n)-A145765(n+1))`
-/

namespace A003164.P1996962152815789575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292461 (A309861 n - A145765 (n + 1)).toNat

end

end A003164.P1996962152815789575

/-! ## A003164.P8386646104549567197

`A292461(xor(A145765(n+1), A309861(n)))`
-/

namespace A003164.P8386646104549567197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292461 (Int.xor (A145765 (n + 1)) (A309861 n)).toNat

end

end A003164.P8386646104549567197

/-! ## A003164.P17633848808914225211

`A292461(A145765(n+1)²)*A292461(A309861(n))`
-/

namespace A003164.P17633848808914225211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292461 (A145765 (n + 1) ^ 2).toNat * A292461 (A309861 n).toNat

end

end A003164.P17633848808914225211

/-!
# A003165: a(n) = floor(n/2) + 1 - d(n), where d(n) is the number of divisors of n.

The programs for A003165, the canonical program `A003165.P18392943898696329135` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003165 has offset 1).

The definition of A003165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003165.P15258080877705267757

`floor((n+1)/2)+1-A000005(n+1)`
-/

namespace A003165.P15258080877705267757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ + 1 - A000005 (n + 1)

end

end A003165.P15258080877705267757

namespace A003165

/-- `floor((n+1)/2)+1-A000005(n+1)` -/
def P15258080877705267757.Spec : Prop :=
  ∀ n, P15258080877705267757.a n = A003165 (n + 1)

theorem P15258080877705267757.correct : P15258080877705267757.Spec := by
  intro n
  simp only [A003165, Nat.add_sub_cancel, A003165.P15258080877705267757.a, A003165.P18392943898696329135.a, A000005, A000005.P16091521709108585461.a, A004526, A004526.P10084182425416171735.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003165

/-! ## A003165.P18392943898696329135

`A004526(n+1)-A000005(n+1)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003165

/-- `A004526(n+1)-A000005(n+1)+1` -/
def P18392943898696329135.Spec : Prop :=
  ∀ n, P18392943898696329135.a n = A003165 (n + 1)

theorem P18392943898696329135.correct : P18392943898696329135.Spec := by
  intro n
  simp only [A003165, Nat.add_sub_cancel]

end A003165

/-! ## A003165.P7189950207684117992

`∑{#}[floor((n+1)/2)-1, ceil((n+1)/(#+1))-floor((n+1)/(#+1))]`
-/

namespace A003165.P7189950207684117992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A003165.P7189950207684117992

namespace A003165

/-- `∑{#}[floor((n+1)/2)-1, ceil((n+1)/(#+1))-floor((n+1)/(#+1))]` -/
def P7189950207684117992.Spec : Prop :=
  ∀ n, P7189950207684117992.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P10614174069566225672

`∑{#}[n, ceil((n+1)/(#+1))%floor((n+1)/(#+1))]`
-/

namespace A003165.P10614174069566225672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Int.tmod ⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋

end

end A003165.P10614174069566225672

namespace A003165

/-- `∑{#}[n, ceil((n+1)/(#+1))%floor((n+1)/(#+1))]` -/
def P10614174069566225672.Spec : Prop :=
  ∀ n, P10614174069566225672.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P9763366443102917246

`ceil(n/2)+1-∏{e}[n+1, #+1]`
-/

namespace A003165.P9763366443102917246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A003165.P9763366443102917246

namespace A003165

/-- `ceil(n/2)+1-∏{e}[n+1, #+1]` -/
def P9763366443102917246.Spec : Prop :=
  ∀ n, P9763366443102917246.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P14612355901444324523

`n-A088922(n+1)`
-/

namespace A003165.P14612355901444324523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A088922 (n + 1)

end

end A003165.P14612355901444324523

namespace A003165

/-- `n-A088922(n+1)` -/
def P14612355901444324523.Spec : Prop :=
  ∀ n, P14612355901444324523.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P15980424294878592858

`1-A361003(n+1)+n`
-/

namespace A003165.P15980424294878592858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361003 (n + 1) + (n : ℤ)

end

end A003165.P15980424294878592858

namespace A003165

/-- `1-A361003(n+1)+n` -/
def P15980424294878592858.Spec : Prop :=
  ∀ n, P15980424294878592858.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P15287345092161004222

`floor(n/2-A023645(n+1))`
-/

namespace A003165.P15287345092161004222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A023645 (n + 1) : ℚ)⌋

end

end A003165.P15287345092161004222

namespace A003165

/-- `floor(n/2-A023645(n+1))` -/
def P15287345092161004222.Spec : Prop :=
  ∀ n, P15287345092161004222.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P4333664844304141890

`A049820(n+1)-floor(n/2)`
-/

namespace A003165.P4333664844304141890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - ⌊(n : ℚ) / 2⌋

end

end A003165.P4333664844304141890

namespace A003165

/-- `A049820(n+1)-floor(n/2)` -/
def P4333664844304141890.Spec : Prop :=
  ∀ n, P4333664844304141890.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P4577109820496189384

`ceil(n/2-A032741(n+1))`
-/

namespace A003165.P4577109820496189384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A032741 (n + 1) : ℚ)⌉

end

end A003165.P4577109820496189384

namespace A003165

/-- `ceil(n/2-A032741(n+1))` -/
def P4577109820496189384.Spec : Prop :=
  ∀ n, P4577109820496189384.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P17051765468509730518

`(n+1-A086369(n+1))/2`
-/

namespace A003165.P17051765468509730518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A086369 (n + 1) : ℚ) / 2

end

end A003165.P17051765468509730518

namespace A003165

/-- `(n+1-A086369(n+1))/2` -/
def P17051765468509730518.Spec : Prop :=
  ∀ n, P17051765468509730518.a n = (A003165 (n + 1) : ℚ)

end A003165

/-! ## A003165.P1853661098174785682

`round(n/2)+1-Δ[A006218(n)]`
-/

namespace A003165.P1853661098174785682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) + (1 - (f1 (n + 1) - f1 n))

end

end A003165.P1853661098174785682

namespace A003165

/-- `round(n/2)+1-Δ[A006218(n)]` -/
def P1853661098174785682.Spec : Prop :=
  ∀ n, P1853661098174785682.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P5701904452335351579

`A065033(n)-A325765(n)`
-/

namespace A003165.P5701904452335351579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A325765 n

end

end A003165.P5701904452335351579

namespace A003165

/-- `A065033(n)-A325765(n)` -/
def P5701904452335351579.Spec : Prop :=
  ∀ n, P5701904452335351579.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P12593384216414133084

`A004526(n)-A023645(n+1)`
-/

namespace A003165.P12593384216414133084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A023645 (n + 1)

end

end A003165.P12593384216414133084

namespace A003165

/-- `A004526(n)-A023645(n+1)` -/
def P12593384216414133084.Spec : Prop :=
  ∀ n, P12593384216414133084.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P9282853742803101357

`A062968(n+1)-A008619(n)`
-/

namespace A003165.P9282853742803101357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A008619 n

end

end A003165.P9282853742803101357

namespace A003165

/-- `A062968(n+1)-A008619(n)` -/
def P9282853742803101357.Spec : Prop :=
  ∀ n, P9282853742803101357.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P712976991548317916

`A008619(n)-A076984(n+1)`
-/

namespace A003165.P712976991548317916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A076984 (n + 1)

end

end A003165.P712976991548317916

namespace A003165

/-- `A008619(n)-A076984(n+1)` -/
def P712976991548317916.Spec : Prop :=
  ∀ n, P712976991548317916.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P11908887111247145576

`A110654(n)-A032741(n+1)`
-/

namespace A003165.P11908887111247145576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A032741 (n + 1)

end

end A003165.P11908887111247145576

namespace A003165

/-- `A110654(n)-A032741(n+1)` -/
def P11908887111247145576.Spec : Prop :=
  ∀ n, P11908887111247145576.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P4962674816287598571

`A007494(n)%A134871(n+1)`
-/

namespace A003165.P4962674816287598571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007494 n) (A134871 (n + 1))

end

end A003165.P4962674816287598571

namespace A003165

/-- `A007494(n)%A134871(n+1)` -/
def P4962674816287598571.Spec : Prop :=
  ∀ n, P4962674816287598571.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P15054206059078219584

`A059292(n+1)%A266977(n)`
-/

namespace A003165.P15054206059078219584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059292 (n + 1)) (A266977 n)

end

end A003165.P15054206059078219584

namespace A003165

/-- `A059292(n+1)%A266977(n)` -/
def P15054206059078219584.Spec : Prop :=
  ∀ n, P15054206059078219584.a n = A003165 (n + 1)

end A003165

/-! ## A003165.P258765214606043164

`∑[A000035(n)-Δ[A032741(n)]]`
-/

namespace A003165.P258765214606043164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003165.P258765214606043164

namespace A003165

/-- `∑[A000035(n)-Δ[A032741(n)]]` -/
def P258765214606043164.Spec : Prop :=
  ∀ n, P258765214606043164.a n = A003165 (n + 1)

end A003165

/-!
# A003166: Numbers whose square in base 2 is a palindrome.

The programs for A003166, there is no canonical definition to state claims against.
-/

/-! ## A003166.P13450741139126508877

`sqrt(A029983(n+1))`
-/

namespace A003166.P13450741139126508877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029983 (n + 1) : ℝ)

end

end A003166.P13450741139126508877

/-! ## A003166.P14520406825558396605

`floor(sqrt(A029983(-xor(n, -1))))`
-/

namespace A003166.P14520406825558396605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A029983 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A003166.P14520406825558396605

/-! ## A003166.P260370589107515244

`record[sqrt(A029983(ceil(C(or(1, n), n)/2)))]`
-/

namespace A003166.P260370589107515244
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029983 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003166.P260370589107515244

/-! ## A003166.P534627323872945544

`A029983(n+1)^(A006519(2*n+3)/2)`
-/

namespace A003166.P534627323872945544
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029983 (n + 1) : ℝ) ^ ((A006519 (2 * n + 3) : ℚ) / 2 : ℝ)

end

end A003166.P534627323872945544

/-! ## A003166.P11191484631929713191

`A029983(n+1)^(A000034(A222404(n))/2)`
-/

namespace A003166.P11191484631929713191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029983 (n + 1) : ℝ) ^ ((A000034 (A222404 n).toNat : ℚ) / 2 : ℝ)

end

end A003166.P11191484631929713191

/-!
# A003168: Number of blobs with 2n+1 edges.

The programs for A003168, there is no canonical definition to state claims against.
-/

/-! ## A003168.P17230702174978116764

`ceil(A100327(n)/2)`
-/

namespace A003168.P17230702174978116764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100327 n : ℚ) / 2⌉

end

end A003168.P17230702174978116764

/-! ## A003168.P13091943631185196904

`ceil(A007165(2*n+1)/2)`
-/

namespace A003168.P13091943631185196904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007165 (2 * n + 1) : ℚ) / 2⌉

end

end A003168.P13091943631185196904

/-! ## A003168.P5632973613873448888

`A100327(A004277(n)-n)/2`
-/

namespace A003168.P5632973613873448888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100327 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A003168.P5632973613873448888

/-! ## A003168.P312635238343999395

`A007165(2*n+1)/gcd(2, A001405(2*n))`
-/

namespace A003168.P312635238343999395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007165 (2 * n + 1) : ℚ) / (Int.gcd 2 (A001405 (2 * n)) : ℚ)

end

end A003168.P312635238343999395

/-! ## A003168.P9814204472747234848

`A100327(n)/2*a(C(n, A000041(2*n)))` with `a(0)=1`
-/

namespace A003168.P9814204472747234848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A100327 n : ℚ) / 2 * a (Nat.choose n (A000041 (2 * n)).toNat)

end

end A003168.P9814204472747234848

/-! ## A003168.P12882715047265396977

`A100327(n)/A020639(A004277(n))`
-/

namespace A003168.P12882715047265396977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100327 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A003168.P12882715047265396977

/-! ## A003168.P419333577612122986

`A100327(n)/A020639(A103517(n))`
-/

namespace A003168.P419333577612122986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100327 n : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A003168.P419333577612122986

/-! ## A003168.P3439863117706781758

`A211789(n+1)+A211789(n+1)-A003169(n+1)`
-/

namespace A003168.P3439863117706781758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211789 (n + 1) + (A211789 (n + 1) - A003169 (n + 1))

end

end A003168.P3439863117706781758

/-! ## A003168.P2071398396579250405

`2*A211789(n+1)-A003169(n+1)`
-/

namespace A003168.P2071398396579250405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211789 (n + 1) - A003169 (n + 1)

end

end A003168.P2071398396579250405

/-!
# A003169: Number of 2-line arrays; or number of P-graphs with 2n edges.

The programs for A003169, the canonical program `A003169.P4319099051587737697` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003169 has offset 1).

The definition of A003169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003169.P4319099051587737697

`1/(n+1)*∑{#}[n, C(n+1, #+1)*C(2*(n+1)+#-1, #)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003169

/-- `1/(n+1)*∑{#}[n, C(n+1, #+1)*C(2*(n+1)+#-1, #)]` -/
def P4319099051587737697.Spec : Prop :=
  ∀ n, P4319099051587737697.a n = (A003169 (n + 1) : ℚ)

end A003169

/-! ## A003169.P2874786066873840670

`record[ratio[A100326(n)]]`
-/

namespace A003169.P2874786066873840670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003169.P2874786066873840670

namespace A003169

/-- `record[ratio[A100326(n)]]` -/
def P2874786066873840670.Spec : Prop :=
  ∀ n, P2874786066873840670.a n = (A003169 (n + 1) : ℚ)

end A003169

/-! ## A003169.P10210349924095929972

`A100326(∑[n+1])`
-/

namespace A003169.P10210349924095929972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003169.P10210349924095929972

namespace A003169

/-- `A100326(∑[n+1])` -/
def P10210349924095929972.Spec : Prop :=
  ∀ n, P10210349924095929972.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P10024760997590059788

`A007165(2*(n+1))`
-/

namespace A003169.P10024760997590059788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007165 (2 * (n + 1))

end

end A003169.P10024760997590059788

namespace A003169

/-- `A007165(2*(n+1))` -/
def P10024760997590059788.Spec : Prop :=
  ∀ n, P10024760997590059788.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P10409391122055818636

`record[A100326(A080036(n))]`
-/

namespace A003169.P10409391122055818636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003169.P10409391122055818636

namespace A003169

/-- `record[A100326(A080036(n))]` -/
def P10409391122055818636.Spec : Prop :=
  ∀ n, P10409391122055818636.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P13877306204280516645

`record[A100326(A053616(n)+n)]`
-/

namespace A003169.P13877306204280516645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A053616 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003169.P13877306204280516645

namespace A003169

/-- `record[A100326(A053616(n)+n)]` -/
def P13877306204280516645.Spec : Prop :=
  ∀ n, P13877306204280516645.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P4061940977991544751

`record[A100326(A326822(n)+n)]`
-/

namespace A003169.P4061940977991544751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A326822 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003169.P4061940977991544751

namespace A003169

/-- `record[A100326(A326822(n)+n)]` -/
def P4061940977991544751.Spec : Prop :=
  ∀ n, P4061940977991544751.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P14378520162331960634

`record[(1-A053616(n))*A100326(n)]`
-/

namespace A003169.P14378520162331960634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A053616 n) * A100326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003169.P14378520162331960634

namespace A003169

/-- `record[(1-A053616(n))*A100326(n)]` -/
def P14378520162331960634.Spec : Prop :=
  ∀ n, P14378520162331960634.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P2259739725295411929

`record[A100326(n+1)/A100326(n)]`
-/

namespace A003169.P2259739725295411929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100326 (n + 1) : ℚ) / (A100326 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003169.P2259739725295411929

namespace A003169

/-- `record[A100326(n+1)/A100326(n)]` -/
def P2259739725295411929.Spec : Prop :=
  ∀ n, P2259739725295411929.a n = (A003169 (n + 1) : ℚ)

end A003169

/-! ## A003169.P6219890445039293089

`A294728(2*(n+1))+A100327(n)`
-/

namespace A003169.P6219890445039293089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294728 (2 * (n + 1)) + A100327 n

end

end A003169.P6219890445039293089

namespace A003169

/-- `A294728(2*(n+1))+A100327(n)` -/
def P6219890445039293089.Spec : Prop :=
  ∀ n, P6219890445039293089.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P1065410658485690929

`record[A100326(A000217(A092942(n)))]`
-/

namespace A003169.P1065410658485690929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A000217 (A092942 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003169.P1065410658485690929

namespace A003169

/-- `record[A100326(A000217(A092942(n)))]` -/
def P1065410658485690929.Spec : Prop :=
  ∀ n, P1065410658485690929.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P10845305975801835853

`A211789(n+1)+A211789(n+1)-A003168(n)`
-/

namespace A003169.P10845305975801835853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211789 (n + 1) + (A211789 (n + 1) - A003168 n)

end

end A003169.P10845305975801835853

namespace A003169

/-- `A211789(n+1)+A211789(n+1)-A003168(n)` -/
def P10845305975801835853.Spec : Prop :=
  ∀ n, P10845305975801835853.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P3877708309237820119

`(A100328(n)+A100327(n))/2`
-/

namespace A003169.P3877708309237820119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100328 n + A100327 n : ℚ) / 2

end

end A003169.P3877708309237820119

namespace A003169

/-- `(A100328(n)+A100327(n))/2` -/
def P3877708309237820119.Spec : Prop :=
  ∀ n, P3877708309237820119.a n = (A003169 (n + 1) : ℚ)

end A003169

/-! ## A003169.P6858433288171269980

`2*A211789(n+1)-A003168(n)`
-/

namespace A003169.P6858433288171269980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211789 (n + 1) - A003168 n

end

end A003169.P6858433288171269980

namespace A003169

/-- `2*A211789(n+1)-A003168(n)` -/
def P6858433288171269980.Spec : Prop :=
  ∀ n, P6858433288171269980.a n = A003169 (n + 1)

end A003169

/-! ## A003169.P16180084730027746051

`A003168(n+1)-A294728(2*n+3)`
-/

namespace A003169.P16180084730027746051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003168 (n + 1) - A294728 (2 * n + 3)

end

end A003169.P16180084730027746051

namespace A003169

/-- `A003168(n+1)-A294728(2*n+3)` -/
def P16180084730027746051.Spec : Prop :=
  ∀ n, P16180084730027746051.a n = A003169 (n + 1)

end A003169

/-!
# A003170: Number of 4 X n Latin rectangles in which the first row is in order.

The programs for A003170, there is no canonical definition to state claims against.
-/

/-! ## A003170.P18325994857561840021

`∑[∑[a(n-1)+6]]*A000573(n+4)` with `a(0)=6`
-/

namespace A003170.P18325994857561840021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000573 (n + 4)

end

end A003170.P18325994857561840021

/-!
# A003171: Negated discriminants of orders of imaginary quadratic fields with 1 class per genus (a finite sequence).

The programs for A003171, there is no canonical definition to state claims against.
-/

/-! ## A003171.P215513705519251510

`∩[A232528(n+1), A014601(n)]`
-/

namespace A003171.P215513705519251510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003171.P215513705519251510

/-! ## A003171.P3087116803202965693

`eq[char[A232528(n+1)], A084101(n)]`
-/

namespace A003171.P3087116803202965693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232528 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003171.P3087116803202965693

/-! ## A003171.P12963922225698372696

`eq[char[A232528(n+1)], A087960(n)]`
-/

namespace A003171.P12963922225698372696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232528 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003171.P12963922225698372696

/-! ## A003171.P9612563819478248362

`∩[A154708(n+1), A232528(n+1)]`
-/

namespace A003171.P9612563819478248362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003171.P9612563819478248362

/-! ## A003171.P5902694050148375208

`∪[lt[n+1, A029595(n)], A133288(n+1)]`
-/

namespace A003171.P5902694050148375208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A003171.P5902694050148375208

/-!
# A003172: Q(sqrt n) is a unique factorization domain (or simple quadratic field).

The programs for A003172, there is no canonical definition to state claims against.
-/

/-! ## A003172.P3202678361403458528

`filter[A219361(n+1), A353471(#)]`
-/

namespace A003172.P3202678361403458528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A003172.P3202678361403458528

/-! ## A003172.P17369275659851900191

`filter[A219361(n+2), A008966(#)]`
-/

namespace A003172.P17369275659851900191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A003172.P17369275659851900191

/-! ## A003172.P8975651484906515021

`∩[A167171(n+1), A219361(n+1)]`
-/

namespace A003172.P8975651484906515021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003172.P8975651484906515021

/-! ## A003172.P10503147432448262150

`∩[A144338(n+1), A219361(n+1)]`
-/

namespace A003172.P10503147432448262150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003172.P10503147432448262150

/-! ## A003172.P14420399783197284653

`record[A007913(n+2)/A202053(n+2)]`
-/

namespace A003172.P14420399783197284653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 2) : ℚ) / (A202053 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003172.P14420399783197284653

/-!
# A003173: Heegner numbers: imaginary quadratic fields with unique factorization (or class number 1).

The programs for A003173, there is no canonical definition to state claims against.
-/

/-! ## A003173.P15251811533493844342

`record[∏{p}[A225229(n+1), #]]`
-/

namespace A003173.P15251811533493844342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225229 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003173.P15251811533493844342

/-! ## A003173.P9215205153488910293

`or(∑[4*a(n-2)], A030298(2*(n+1)))` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2, a(4)=6, a(5)=6`
-/

namespace A003173.P9215205153488910293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2, 6, 6] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A030298 (2 * (n + 1)))

end

end A003173.P9215205153488910293

/-! ## A003173.P7741127555875901648

`∑[A097057(A000078(n))]`
-/

namespace A003173.P7741127555875901648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (A000078 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003173.P7741127555875901648

/-! ## A003173.P11269135539991066826

`eq[A058305(n), A347523(n)]`
-/

namespace A003173.P11269135539991066826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003173.P11269135539991066826

/-! ## A003173.P11561813232882276805

`∑[∏[A063987(A332815(n))]]`
-/

namespace A003173.P11561813232882276805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063987 (A332815 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003173.P11561813232882276805

/-!
# A003174: Positive squarefree integers D such that Q[sqrt(D)] is a quadratic field which is norm-Euclidean.

The programs for A003174, there is no canonical definition to state claims against.
-/

/-! ## A003174.P7023627672404554975

`A048981(n+6)`
-/

namespace A003174.P7023627672404554975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048981 (n + 6)

end

end A003174.P7023627672404554975

/-! ## A003174.P4741181544168888474

`abs(A048981(A020715(n)))`
-/

namespace A003174.P4741181544168888474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048981 (A020715 n).toNat|

end

end A003174.P4741181544168888474

/-! ## A003174.P6312483230356900825

`A007913(A236546(n+6))`
-/

namespace A003174.P6312483230356900825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A236546 (n + 6)).toNat

end

end A003174.P6312483230356900825

/-! ## A003174.P14477384718332861533

`record[abs(A048981(A020705(n)))]`
-/

namespace A003174.P14477384718332861533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048981 (A020705 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003174.P14477384718332861533

/-! ## A003174.P17972267735196957417

`∩[A003172(n+1), A296818(n+1)]`
-/

namespace A003174.P17972267735196957417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003174.P17972267735196957417

/-!
# A003176: Integer part of 24(2^n-1)/n.

The programs for A003176, the canonical program `A003176.P14156912134365006035` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003176 has offset 1).

The definition of A003176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003176.P14156912134365006035

`floor(24*(2^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003176

/-- `floor(24*(2^(n+1)-1)/(n+1))` -/
def P14156912134365006035.Spec : Prop :=
  ∀ n, P14156912134365006035.a n = A003176 (n + 1)

theorem P14156912134365006035.correct : P14156912134365006035.Spec := by
  intro n
  simp only [A003176, Nat.add_sub_cancel]

end A003176

/-!
# A003177: a(n) = ceiling(24(2^n-1)/n).

The programs for A003177, the canonical program `A003177.P9292569667627816825` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003177 has offset 1).

The definition of A003177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(24*(2^(n+1)-1)/(n+1))` (program `A003177.P9292569667627816825`, by `A003177.P9292569667627816825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003177.P9292569667627816825

`ceil(24*(2^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003177

/-- `ceil(24*(2^(n+1)-1)/(n+1))` -/
def P9292569667627816825.Spec : Prop :=
  ∀ n, P9292569667627816825.a n = A003177 (n + 1)

theorem P9292569667627816825.correct : P9292569667627816825.Spec := by
  intro n
  simp only [A003177, Nat.add_sub_cancel]

end A003177

/-! ## A003177.P4802207260905574335

`floor(A248877(n+1)/(n+1))+1`
-/

namespace A003177.P4802207260905574335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248877 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A003177.P4802207260905574335

namespace A003177

/-- `floor(A248877(n+1)/(n+1))+1` -/
def P4802207260905574335.Spec : Prop :=
  ∀ n, P4802207260905574335.a n = A003177 (n + 1)

end A003177

/-! ## A003177.P11459442631363017690

`lcm(A004442(n)-n, ceil(A305065(n)/(n+1)))`
-/

namespace A003177.P11459442631363017690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) ⌈(A305065 n : ℚ) / (n + 1 : ℚ)⌉

end

end A003177.P11459442631363017690

namespace A003177

/-- `lcm(A004442(n)-n, ceil(A305065(n)/(n+1)))` -/
def P11459442631363017690.Spec : Prop :=
  ∀ n, (P11459442631363017690.a n : ℤ) = A003177 (n + 1)

end A003177

/-! ## A003177.P15657773094414488438

`ceil(A305065(n)/(n+1))/A204988(2*n+5)`
-/

namespace A003177.P15657773094414488438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A305065 n : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A204988 (2 * n + 5) : ℚ)

end

end A003177.P15657773094414488438

namespace A003177

/-- `ceil(A305065(n)/(n+1))/A204988(2*n+5)` -/
def P15657773094414488438.Spec : Prop :=
  ∀ n, P15657773094414488438.a n = (A003177 (n + 1) : ℚ)

end A003177

/-!
# A003178: Number of indecomposable self-dual binary codes of length 2n.

The programs for A003178, there is no canonical definition to state claims against.
-/

/-! ## A003178.P3421829991223753841

`A003179(n)-A322429(round(sqrt(n²+1)))`
-/

namespace A003178.P3421829991223753841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003179 n - A322429 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A003178.P3421829991223753841

/-! ## A003178.P5431892755153968098

`A000007(n+1)+A003179(n)-A322429(A028310(n))`
-/

namespace A003178.P5431892755153968098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A003179 n - A322429 (A028310 n).toNat)

end

end A003178.P5431892755153968098

/-! ## A003178.P12562590258457930520

`(A003179(n)-A322429(A028310(n)))%A132175(n+1)`
-/

namespace A003178.P12562590258457930520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003179 n - A322429 (A028310 n).toNat) (A132175 (n + 1))

end

end A003178.P12562590258457930520

/-! ## A003178.P15622298355709022540

`(A003179(n)-A322429(A028310(n)))^(A346943(n)%2)`
-/

namespace A003178.P15622298355709022540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003179 n - A322429 (A028310 n).toNat : ℚ) ^ (Int.tmod (A346943 n) 2 : ℤ)

end

end A003178.P15622298355709022540

/-! ## A003178.P688531107896333486

`(A003179(n)-A322429(A028310(n)))^(A346948(n+1)%2)`
-/

namespace A003178.P688531107896333486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003179 n - A322429 (A028310 n).toNat : ℚ) ^ (Int.tmod (A346948 (n + 1)) 2 : ℤ)

end

end A003178.P688531107896333486

/-!
# A003179: Number of self-dual binary codes of length 2n (up to column permutation equivalence).

The programs for A003179, there is no canonical definition to state claims against.
-/

/-! ## A003179.P10584219688879853370

`A322429(round(sqrt(n²+1)))+A003178(n)`
-/

namespace A003179.P10584219688879853370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322429 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A003178 n

end

end A003179.P10584219688879853370

/-! ## A003179.P12647146962171658607

`A322429(A028310(n))+A003178(n)-A000007(n+1)`
-/

namespace A003179.P12647146962171658607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322429 (A028310 n).toNat + A003178 n - A000007 (n + 1)

end

end A003179.P12647146962171658607

/-! ## A003179.P2537547178936570081

`(A322429(A028310(n))+A003178(n))%A132175(n+1)`
-/

namespace A003179.P2537547178936570081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322429 (A028310 n).toNat + A003178 n) (A132175 (n + 1))

end

end A003179.P2537547178936570081

/-! ## A003179.P4174622643560059742

`(A322429(A028310(n))+A003178(n))^(A346943(n)%2)`
-/

namespace A003179.P4174622643560059742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322429 (A028310 n).toNat + A003178 n : ℚ) ^ (Int.tmod (A346943 n) 2 : ℤ)

end

end A003179.P4174622643560059742

/-! ## A003179.P13639868626951345898

`(A322429(A028310(n))+A003178(n))^(A346948(n+1)%2)`
-/

namespace A003179.P13639868626951345898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322429 (A028310 n).toNat + A003178 n : ℚ) ^ (Int.tmod (A346948 (n + 1)) 2 : ℤ)

end

end A003179.P13639868626951345898

/-!
# A003180: Number of equivalence classes of Boolean functions of n variables under action of symmetric group.

The programs for A003180, there is no canonical definition to state claims against.
-/

/-! ## A003180.P4271878128260529263

`2*A000612(n)`
-/

namespace A003180.P4271878128260529263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000612 n

end

end A003180.P4271878128260529263

/-! ## A003180.P14628919112052099486

`∑[A003181(n)]`
-/

namespace A003180.P14628919112052099486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003180.P14628919112052099486

/-! ## A003180.P6014499983557107566

`∑[2*A055621(n)]`
-/

namespace A003180.P6014499983557107566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003180.P6014499983557107566

/-! ## A003180.P7915823021142822745

`A000612(n)+∑[A055621(n)]`
-/

namespace A003180.P7915823021142822745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000612 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003180.P7915823021142822745

/-! ## A003180.P13152013873868901828

`A000612(∏{digits}[n, #])+A000612(n)`
-/

namespace A003180.P13152013873868901828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000612 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + A000612 n

end

end A003180.P13152013873868901828

/-!
# A003181: Number of P-equivalence classes of nondegenerate Boolean functions of n variables.

The programs for A003181, there is no canonical definition to state claims against.
-/

/-! ## A003181.P13512048564032728917

`2*A055621(n)`
-/

namespace A003181.P13512048564032728917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055621 n

end

end A003181.P13512048564032728917

/-! ## A003181.P11977688468529644907

`A055621(A055648(n))+A055621(n)`
-/

namespace A003181.P11977688468529644907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055621 (A055648 n).toNat + A055621 n

end

end A003181.P11977688468529644907

/-! ## A003181.P18241807169569635524

`A055621(n)+A055621(A055649(n))`
-/

namespace A003181.P18241807169569635524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055621 n + A055621 (A055649 n).toNat

end

end A003181.P18241807169569635524

/-! ## A003181.P1546641489639940867

`A055621(A002113(n+1))+A055621(n)`
-/

namespace A003181.P1546641489639940867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055621 (A002113 (n + 1)).toNat + A055621 n

end

end A003181.P1546641489639940867

/-!
# A003182: Dedekind numbers: inequivalent monotone Boolean functions of n or fewer variables, or antichains of subsets of an n-set.

The programs for A003182, there is no canonical definition to state claims against.
-/

/-! ## A003182.P9451175776219701344

`A306505(n)+1`
-/

namespace A003182.P9451175776219701344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306505 n + 1

end

end A003182.P9451175776219701344

/-! ## A003182.P12986376358709873141

`∑[A006602(n)]`
-/

namespace A003182.P12986376358709873141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003182.P12986376358709873141

/-! ## A003182.P4632449954975637851

`∑[A261005(n)]+1`
-/

namespace A003182.P4632449954975637851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003182.P4632449954975637851

/-! ## A003182.P8163010161886220858

`n-(A023443(n)-A306505(n))`
-/

namespace A003182.P8163010161886220858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A306505 n)

end

end A003182.P8163010161886220858

/-! ## A003182.P736762643189764836

`A006602(n)+a(abs(A024000(n)))` with `a(0)=2`
-/

namespace A003182.P736762643189764836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006602 n + a |A024000 n|.toNat

end

end A003182.P736762643189764836

/-!
# A003183: Number of NPN-equivalence classes of unate Boolean functions of n or fewer variables.

The programs for A003183, there is no canonical definition to state claims against.
-/

/-! ## A003183.P2413773434142452147

`(A003182(n)+A400672(n))/2`
-/

namespace A003183.P2413773434142452147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003182 n + A400672 n : ℚ) / 2

end

end A003183.P2413773434142452147

/-! ## A003183.P14530737158529322987

`∑[A120587(n)]`
-/

namespace A003183.P14530737158529322987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003183.P14530737158529322987

/-!
# A003184: Number of NP-equivalence classes of self-dual threshold functions of exactly n variables.

The programs for A003184, there is no canonical definition to state claims against.
-/

/-! ## A003184.P15352433881400745293

`A000027(A001532(n+1))-A109456(n)`
-/

namespace A003184.P15352433881400745293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001532 (n + 1)).toNat - A109456 n

end

end A003184.P15352433881400745293

/-! ## A003184.P14252251241790089641

`A001532(A033088(n+1))-A109456(n)`
-/

namespace A003184.P14252251241790089641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001532 (A033088 (n + 1)).toNat - A109456 n

end

end A003184.P14252251241790089641

/-! ## A003184.P6120534895295169509

`A001532(A052382(n+1))-A109456(n)`
-/

namespace A003184.P6120534895295169509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001532 (A052382 (n + 1)).toNat - A109456 n

end

end A003184.P6120534895295169509

/-! ## A003184.P14586488842933329646

`A001532(A222261(n+1))-A109456(n)`
-/

namespace A003184.P14586488842933329646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001532 (A222261 (n + 1)).toNat - A109456 n

end

end A003184.P14586488842933329646

/-! ## A003184.P524925082843730244

`A001532(n+1)-A109456(A004881(n+1))`
-/

namespace A003184.P524925082843730244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001532 (n + 1) - A109456 (A004881 (n + 1)).toNat

end

end A003184.P524925082843730244

/-!
# A003185: a(n) = (4*n+1)*(4*n+5).

The programs for A003185, the canonical program `A003185.P5564052402226372071` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003185 has offset 0).

The definition of A003185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(4*n+5)` (program `A003185.P5564052402226372071`, by `A003185.P5564052402226372071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003185.P16813479689126010165

`ogf((5+30x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A003185.P16813479689126010165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 30, -3] [1, -3, 3, -1] n

end

end A003185.P16813479689126010165

namespace A003185

/-- `ogf((5+30x-3x^2)/(1-3x+3x^2-x^3))` -/
def P16813479689126010165.Spec : Prop :=
  ∀ n, P16813479689126010165.a n = A003185 n

end A003185

/-! ## A003185.P5564052402226372071

`(4*n+1)*(4*n+5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003185

/-- `(4*n+1)*(4*n+5)` -/
def P5564052402226372071.Spec : Prop :=
  ∀ n, (P5564052402226372071.a n : ℤ) = A003185 n

theorem P5564052402226372071.correct : P5564052402226372071.Spec := by
  intro n
  simp only [A003185]

end A003185

/-! ## A003185.P4345251990747349117

`record[xor(3, n)²-4]`
-/

namespace A003185.P4345251990747349117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003185.P4345251990747349117

namespace A003185

/-- `record[xor(3, n)²-4]` -/
def P4345251990747349117.Spec : Prop :=
  ∀ n, P4345251990747349117.a n = A003185 n

end A003185

/-! ## A003185.P13617963079829039085

`∑[a(n-1)+32]` with `a(0)=5, a(1)=40`
-/

namespace A003185.P13617963079829039085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 40] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003185.P13617963079829039085

namespace A003185

/-- `∑[a(n-1)+32]` -/
def P13617963079829039085.Spec : Prop :=
  ∀ n, (P13617963079829039085.a n : ℤ) = A003185 n

end A003185

/-! ## A003185.P1284274539286800623

`record[(n+3)*xor(3, n)-4]`
-/

namespace A003185.P1284274539286800623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.xor 3 n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003185.P1284274539286800623

namespace A003185

/-- `record[(n+3)*xor(3, n)-4]` -/
def P1284274539286800623.Spec : Prop :=
  ∀ n, P1284274539286800623.a n = A003185 n

end A003185

/-! ## A003185.P18010010346545969903

`A016838(n)-4`
-/

namespace A003185.P18010010346545969903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n - 4

end

end A003185.P18010010346545969903

namespace A003185

/-- `A016838(n)-4` -/
def P18010010346545969903.Spec : Prop :=
  ∀ n, P18010010346545969903.a n = A003185 n

theorem P18010010346545969903.correct : P18010010346545969903.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P18010010346545969903.a, A003185.P5564052402226372071.a, A016838, A016838.P1946869396513697861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P10479426989244983685

`A004767(n)²-4`
-/

namespace A003185.P10479426989244983685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n ^ 2 - 4

end

end A003185.P10479426989244983685

namespace A003185

/-- `A004767(n)²-4` -/
def P10479426989244983685.Spec : Prop :=
  ∀ n, P10479426989244983685.a n = A003185 n

theorem P10479426989244983685.correct : P10479426989244983685.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P10479426989244983685.a, A003185.P5564052402226372071.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P3667100813177170039

`sqrt(A016840(n))-4`
-/

namespace A003185.P3667100813177170039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016840 n : ℝ) - 4

end

end A003185.P3667100813177170039

namespace A003185

/-- `sqrt(A016840(n))-4` -/
def P3667100813177170039.Spec : Prop :=
  ∀ n, P3667100813177170039.a n = (A003185 n : ℝ)

end A003185

/-! ## A003185.P14801013322976097091

`4*A082108(n)+1`
-/

namespace A003185.P14801013322976097091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082108 n + 1

end

end A003185.P14801013322976097091

namespace A003185

/-- `4*A082108(n)+1` -/
def P14801013322976097091.Spec : Prop :=
  ∀ n, P14801013322976097091.a n = A003185 n

theorem P14801013322976097091.correct : P14801013322976097091.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P14801013322976097091.a, A003185.P5564052402226372071.a, A082108, A082108.P8640110216624797441.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P6403379537904250112

`A017138(n)/4-4`
-/

namespace A003185.P6403379537904250112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017138 n : ℚ) / 4 - 4

end

end A003185.P6403379537904250112

namespace A003185

/-- `A017138(n)/4-4` -/
def P6403379537904250112.Spec : Prop :=
  ∀ n, P6403379537904250112.a n = (A003185 n : ℚ)

theorem P6403379537904250112.correct : P6403379537904250112.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P6403379537904250112.a, A003185.P5564052402226372071.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P8541871937021672664

`A017089(n)+A001539(n)`
-/

namespace A003185.P8541871937021672664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n + A001539 n

end

end A003185.P8541871937021672664

namespace A003185

/-- `A017089(n)+A001539(n)` -/
def P8541871937021672664.Spec : Prop :=
  ∀ n, P8541871937021672664.a n = A003185 n

theorem P8541871937021672664.correct : P8541871937021672664.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P8541871937021672664.a, A003185.P5564052402226372071.a, A001539, A001539.P2367673173120689746.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P2867356484148805641

`A017077(n)+A016826(n)`
-/

namespace A003185.P2867356484148805641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n + A016826 n

end

end A003185.P2867356484148805641

namespace A003185

/-- `A017077(n)+A016826(n)` -/
def P2867356484148805641.Spec : Prop :=
  ∀ n, P2867356484148805641.a n = A003185 n

theorem P2867356484148805641.correct : P2867356484148805641.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P2867356484148805641.a, A003185.P5564052402226372071.a, A016826, A016826.P3235835473290805917.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P13752751342537145006

`A157870(n)+A017557(n)`
-/

namespace A003185.P13752751342537145006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157870 n + A017557 n

end

end A003185.P13752751342537145006

namespace A003185

/-- `A157870(n)+A017557(n)` -/
def P13752751342537145006.Spec : Prop :=
  ∀ n, P13752751342537145006.a n = A003185 n

theorem P13752751342537145006.correct : P13752751342537145006.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P13752751342537145006.a, A003185.P5564052402226372071.a, A017557, A017557.P7719209615978230604.a, A157870, A157870.P6469800247760931367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P16183710055544802857

`A260955(n)-A081585(n)`
-/

namespace A003185.P16183710055544802857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 n - A081585 n

end

end A003185.P16183710055544802857

namespace A003185

/-- `A260955(n)-A081585(n)` -/
def P16183710055544802857.Spec : Prop :=
  ∀ n, P16183710055544802857.a n = A003185 n

theorem P16183710055544802857.correct : P16183710055544802857.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P16183710055544802857.a, A003185.P5564052402226372071.a, A081585, A081585.P16109978161650450954.a, A260955, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P204976314045954235

`A133766(n)/A004767(n)`
-/

namespace A003185.P204976314045954235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133766 n : ℚ) / (A004767 n : ℚ)

end

end A003185.P204976314045954235

namespace A003185

/-- `A133766(n)/A004767(n)` -/
def P204976314045954235.Spec : Prop :=
  ∀ n, P204976314045954235.a n = (A003185 n : ℚ)

end A003185

/-! ## A003185.P18434379984329124619

`A154633(n)/A085027(n)`
-/

namespace A003185.P18434379984329124619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154633 n : ℚ) / (A085027 n : ℚ)

end

end A003185.P18434379984329124619

namespace A003185

/-- `A154633(n)/A085027(n)` -/
def P18434379984329124619.Spec : Prop :=
  ∀ n, P18434379984329124619.a n = (A003185 n : ℚ)

end A003185

/-! ## A003185.P5743770214803728173

`A119413(n+1)+A016814(n)`
-/

namespace A003185.P5743770214803728173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (n + 1) + A016814 n

end

end A003185.P5743770214803728173

namespace A003185

/-- `A119413(n+1)+A016814(n)` -/
def P5743770214803728173.Spec : Prop :=
  ∀ n, P5743770214803728173.a n = A003185 n

theorem P5743770214803728173.correct : P5743770214803728173.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P5743770214803728173.a, A003185.P5564052402226372071.a, A016814, A016814.P5668709183610020667.a, A119413, A119413.P2366630370367449973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P4278134977783459319

`A108928(n+1)+A035008(n)`
-/

namespace A003185.P4278134977783459319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108928 (n + 1) + A035008 n

end

end A003185.P4278134977783459319

namespace A003185

/-- `A108928(n+1)+A035008(n)` -/
def P4278134977783459319.Spec : Prop :=
  ∀ n, P4278134977783459319.a n = A003185 n

theorem P4278134977783459319.correct : P4278134977783459319.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P4278134977783459319.a, A003185.P5564052402226372071.a, A035008, A035008.P9220570800855289153.a, A108928, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P7526981334781375359

`A195315(n+1)+A017113(n)`
-/

namespace A003185.P7526981334781375359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195315 (n + 1) + A017113 n

end

end A003185.P7526981334781375359

namespace A003185

/-- `A195315(n+1)+A017113(n)` -/
def P7526981334781375359.Spec : Prop :=
  ∀ n, P7526981334781375359.a n = A003185 n

theorem P7526981334781375359.correct : P7526981334781375359.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P7526981334781375359.a, A003185.P5564052402226372071.a, A017113, A017113.P3624354701485579327.a, A195315, A195315.P11583310332755118474.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-! ## A003185.P16598794236596354459

`A139245(n+1)+A082041(n)`
-/

namespace A003185.P16598794236596354459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139245 (n + 1) + A082041 n

end

end A003185.P16598794236596354459

namespace A003185

/-- `A139245(n+1)+A082041(n)` -/
def P16598794236596354459.Spec : Prop :=
  ∀ n, P16598794236596354459.a n = A003185 n

theorem P16598794236596354459.correct : P16598794236596354459.Spec := by
  intro n
  simp only [A003185, Nat.add_sub_cancel, A003185.P16598794236596354459.a, A003185.P5564052402226372071.a, A082041, A082041.P4769740866210431926.a, A139245, A139245.P8764148854706106174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003185

/-!
# A003186: Number of positive pseudo-threshold functions.

The programs for A003186, there is no canonical definition to state claims against.
-/

/-! ## A003186.P3537312203994736039

`floor(a(n-1)+(1-a(n-1))²/(n+1))` with `a(0)=3`
-/

namespace A003186.P3537312203994736039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((1 - a (n - 1)) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A003186.P3537312203994736039

/-!
# A003187: Number of positive threshold functions of n variables.

The programs for A003187, there is no canonical definition to state claims against.
-/

/-! ## A003187.P1605463441601663187

`∑[a(n-1)*a(n-2)+7]` with `a(0)=3, a(1)=2, a(2)=5`
-/

namespace A003187.P1605463441601663187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 5] fun n f1 =>
  f1 (n - 1) * f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003187.P1605463441601663187

/-!
# A003188: Decimal equivalent of Gray code for n.

The programs for A003188, the canonical program `A003188.P10544524695508875182` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003188 has offset 0).

The definition of A003188 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A003188.anchor (n : ℕ) : A003188 n = ((n ^^^ (n / 2) : ℕ) : ℤ)` in `Proof.A003.A003188`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003188.P10544524695508875182

`xor(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003188

/-- `xor(n, floor(n/2))` -/
def P10544524695508875182.Spec : Prop :=
  ∀ n, P10544524695508875182.a n = A003188 n

theorem P10544524695508875182.correct : P10544524695508875182.Spec := by
  intro n
  simp only [A003188]

end A003188

/-! ## A003188.P3353355610312393085

`2*a(floor(n/2))+floor((n+1)/2)%2` with `a(0)=0`
-/

namespace A003188.P3353355610312393085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + Int.tmod ⌊(n + 1 : ℚ) / 2⌋ 2

end

end A003188.P3353355610312393085

namespace A003188

/-- `2*a(floor(n/2))+floor((n+1)/2)%2` -/
def P3353355610312393085.Spec : Prop :=
  ∀ n, P3353355610312393085.a n = A003188 n

end A003188

/-! ## A003188.P10519568420292024211

`A063946(a(A053645(n))+A053644(n))` with `a(0)=0`
-/

namespace A003188.P10519568420292024211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063946 (a (A053645 n).toNat + A053644 n).toNat

end

end A003188.P10519568420292024211

namespace A003188

/-- `A063946(a(A053645(n))+A053644(n))` -/
def P10519568420292024211.Spec : Prop :=
  ∀ n, P10519568420292024211.a n = A003188 n

end A003188

/-! ## A003188.P15793264014757388858

`2*a(floor(n/2))+A021913(n+1)` with `a(0)=0`
-/

namespace A003188.P15793264014757388858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + A021913 (n + 1)

end

end A003188.P15793264014757388858

namespace A003188

/-- `2*a(floor(n/2))+A021913(n+1)` -/
def P15793264014757388858.Spec : Prop :=
  ∀ n, P15793264014757388858.a n = A003188 n

end A003188

/-! ## A003188.P1738697599092064059

`a(A053645(A054429(n)))+A053644(n)` with `a(0)=0`
-/

namespace A003188.P1738697599092064059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A053645 (A054429 n).toNat).toNat + A053644 n

end

end A003188.P1738697599092064059

namespace A003188

/-- `a(A053645(A054429(n)))+A053644(n)` -/
def P1738697599092064059.Spec : Prop :=
  ∀ n, P1738697599092064059.a n = A003188 n

end A003188

/-! ## A003188.P9544753076198023563

`abs(xor(n, n-∑[n%2]))`
-/

namespace A003188.P9544753076198023563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A003188.P9544753076198023563

namespace A003188

/-- `abs(xor(n, n-∑[n%2]))` -/
def P9544753076198023563.Spec : Prop :=
  ∀ n, P9544753076198023563.a n = A003188 n

end A003188

/-! ## A003188.P10459573141310103222

`abs(xor(n, (or(1, n)-1)/2))`
-/

namespace A003188.P10459573141310103222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))|

end

end A003188.P10459573141310103222

namespace A003188

/-- `abs(xor(n, (or(1, n)-1)/2))` -/
def P10459573141310103222.Spec : Prop :=
  ∀ n, P10459573141310103222.a n = A003188 n

end A003188

/-! ## A003188.P15549542415141997863

`xor(2*n, and(n, -2))/2`
-/

namespace A003188.P15549542415141997863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2

end

end A003188.P15549542415141997863

namespace A003188

/-- `xor(2*n, and(n, -2))/2` -/
def P15549542415141997863.Spec : Prop :=
  ∀ n, P15549542415141997863.a n = (A003188 n : ℚ)

end A003188

/-! ## A003188.P643428971399693439

`ceil(xor(n-1, 2*n)/2)`
-/

namespace A003188.P643428971399693439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉

end

end A003188.P643428971399693439

namespace A003188

/-- `ceil(xor(n-1, 2*n)/2)` -/
def P643428971399693439.Spec : Prop :=
  ∀ n, P643428971399693439.a n = A003188 n

end A003188

/-! ## A003188.P10718399568050673610

`-ceil(xor(2*n, -n)/2)`
-/

namespace A003188.P10718399568050673610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉

end

end A003188.P10718399568050673610

namespace A003188

/-- `-ceil(xor(2*n, -n)/2)` -/
def P10718399568050673610.Spec : Prop :=
  ∀ n, P10718399568050673610.a n = A003188 n

end A003188

/-! ## A003188.P16980147273756933334

`round(sinh(log(xor(n, 2*n+1))))`
-/

namespace A003188.P16980147273756933334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Nat.xor n (2 * n + 1) : ℝ)))

end

end A003188.P16980147273756933334

namespace A003188

/-- `round(sinh(log(xor(n, 2*n+1))))` -/
def P16980147273756933334.Spec : Prop :=
  ∀ n, P16980147273756933334.a n = A003188 n

end A003188

/-! ## A003188.P9415571725167798075

`xor(2*n+1, or(1, n))/2`
-/

namespace A003188.P9415571725167798075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2

end

end A003188.P9415571725167798075

namespace A003188

/-- `xor(2*n+1, or(1, n))/2` -/
def P9415571725167798075.Spec : Prop :=
  ∀ n, P9415571725167798075.a n = (A003188 n : ℚ)

end A003188

/-! ## A003188.P10601613734701456338

`round(xor(2*n+1, n+1)/2)`
-/

namespace A003188.P10601613734701456338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2)

end

end A003188.P10601613734701456338

namespace A003188

/-- `round(xor(2*n+1, n+1)/2)` -/
def P10601613734701456338.Spec : Prop :=
  ∀ n, P10601613734701456338.a n = A003188 n

end A003188

/-! ## A003188.P17200554463234754608

`ceil(1/2*xor(2*n+1, n+1))`
-/

namespace A003188.P17200554463234754608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 2 * (Nat.xor (2 * n + 1) (n + 1) : ℚ)⌉

end

end A003188.P17200554463234754608

namespace A003188

/-- `ceil(1/2*xor(2*n+1, n+1))` -/
def P17200554463234754608.Spec : Prop :=
  ∀ n, P17200554463234754608.a n = A003188 n

end A003188

/-! ## A003188.P6132041676518928302

`∑[gcd(2, n+1)]-and(2*n+1, n+1)`
-/

namespace A003188.P6132041676518928302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land (2 * n + 1) (n + 1) : ℤ)

end

end A003188.P6132041676518928302

namespace A003188

/-- `∑[gcd(2, n+1)]-and(2*n+1, n+1)` -/
def P6132041676518928302.Spec : Prop :=
  ∀ n, P6132041676518928302.a n = A003188 n

end A003188

/-! ## A003188.P12655478667056791544

`∑[2/a(n-1)]-and(2*n+1, n+1)` with `a(0)=1`
-/

namespace A003188.P12655478667056791544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land (2 * n + 1) (n + 1) : ℚ)

end

end A003188.P12655478667056791544

namespace A003188

/-- `∑[2/a(n-1)]-and(2*n+1, n+1)` -/
def P12655478667056791544.Spec : Prop :=
  ∀ n, P12655478667056791544.a n = (A003188 n : ℚ)

end A003188

/-! ## A003188.P3641542300580114479

`A286548(n)+n`
-/

namespace A003188.P3641542300580114479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n + (n : ℤ)

end

end A003188.P3641542300580114479

namespace A003188

/-- `A286548(n)+n` -/
def P3641542300580114479.Spec : Prop :=
  ∀ n, P3641542300580114479.a n = A003188 n

theorem P3641542300580114479.correct : P3641542300580114479.Spec := by
  intro n
  simp only [A003188, Nat.add_sub_cancel, A003188.P3641542300580114479.a, A003188.P10544524695508875182.a, A286548, A286548.P11712479418656410754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003188

/-! ## A003188.P10562431387464551331

`floor(A048724(n)/2)`
-/

namespace A003188.P10562431387464551331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048724 n : ℚ) / 2⌋

end

end A003188.P10562431387464551331

namespace A003188

/-- `floor(A048724(n)/2)` -/
def P10562431387464551331.Spec : Prop :=
  ∀ n, P10562431387464551331.a n = A003188 n

end A003188

/-! ## A003188.P16686885983217200570

`A105081(n+1)-1`
-/

namespace A003188.P16686885983217200570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (n + 1) - 1

end

end A003188.P16686885983217200570

namespace A003188

/-- `A105081(n+1)-1` -/
def P16686885983217200570.Spec : Prop :=
  ∀ n, P16686885983217200570.a n = A003188 n

theorem P16686885983217200570.correct : P16686885983217200570.Spec := by
  intro n
  simp only [A003188, Nat.add_sub_cancel, A003188.P16686885983217200570.a, A003188.P10544524695508875182.a, A105081, A105081.P13201815104131715710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003188

/-! ## A003188.P16595077070717345778

`xor(n, A014601(n))/2`
-/

namespace A003188.P16595077070717345778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A014601 n) : ℚ) / 2

end

end A003188.P16595077070717345778

namespace A003188

/-- `xor(n, A014601(n))/2` -/
def P16595077070717345778.Spec : Prop :=
  ∀ n, P16595077070717345778.a n = (A003188 n : ℚ)

end A003188

/-!
# A003190: Number of connected 2-plexes.

The programs for A003190, there is no canonical definition to state claims against.
-/

/-! ## A003190.P2701788445321735389

`A301924(∑[n]+3)`
-/

namespace A003190.P2701788445321735389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301924 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003190.P2701788445321735389

/-! ## A003190.P2579084787466630321

`A326635(n)+A301924(A152950(n+1))`
-/

namespace A003190.P2579084787466630321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 n + A301924 (A152950 (n + 1)).toNat

end

end A003190.P2579084787466630321

/-! ## A003190.P15546196634183610992

`A301924(A152950(n+1))*A333733(n)`
-/

namespace A003190.P15546196634183610992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301924 (A152950 (n + 1)).toNat * A333733 n

end

end A003190.P15546196634183610992

/-! ## A003190.P18443206830780695301

`A301924(A152950(n+1))*A333737(n)`
-/

namespace A003190.P18443206830780695301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301924 (A152950 (n + 1)).toNat * A333737 n

end

end A003190.P18443206830780695301

/-! ## A003190.P7164248808562061048

`or(A035435(n), A301924(A152950(n+1)))`
-/

namespace A003190.P7164248808562061048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035435 n) (A301924 (A152950 (n + 1)).toNat)

end

end A003190.P7164248808562061048

/-!
# A003192: Length of uncrossed knight's path on an n X n board.

The programs for A003192, there is no canonical definition to state claims against.
-/

/-! ## A003192.P3342444105996888079

`∑[∑[a(n-5)²]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=2, a(5)=2`
-/

namespace A003192.P3342444105996888079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 2, 2] fun n f2 =>
  f2 (n - 5) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003192.P3342444105996888079

/-! ## A003192.P13016083795355067202

`A259195(6*n+1)`
-/

namespace A003192.P13016083795355067202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 (6 * n + 1)

end

end A003192.P13016083795355067202

/-! ## A003192.P16589328156986308739

`round(log(A205499(n+1))²)`
-/

namespace A003192.P16589328156986308739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A205499 (n + 1) : ℝ) ^ 2)

end

end A003192.P16589328156986308739

/-! ## A003192.P6503842180216916052

`∑[floor(log(A102647(n+3)))]`
-/

namespace A003192.P6503842180216916052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A102647 (n + 3) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003192.P6503842180216916052

/-! ## A003192.P6120759935322419341

`round(∑[log2(A073128(n+2))])`
-/

namespace A003192.P6120759935322419341
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A073128 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003192.P6120759935322419341

/-!
# A003194: Susceptibility series for b.c.c. lattice.

The programs for A003194, there is no canonical definition to state claims against.
-/

/-! ## A003194.P2147231611255584131

`A236378(A157207(3*n+2))-A236378(2*(n+2))`
-/

namespace A003194.P2147231611255584131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (A157207 (3 * n + 2)).toNat - A236378 (2 * (n + 2))

end

end A003194.P2147231611255584131

/-!
# A003197: Cluster series for bond percolation problem on hexagonal lattice.

The programs for A003197, there is no canonical definition to state claims against.
-/

/-! ## A003197.P18289026778100749265

`A360145((n+1)²*∏{e}[n+1, ceil(#/2)+1])`
-/

namespace A003197.P18289026778100749265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360145 (((n + 1) ^ 2 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉ + 1))).toNat

end

end A003197.P18289026778100749265

/-!
# A003198: Cluster series for bond percolation problem on square lattice.

The programs for A003198, there is no canonical definition to state claims against.
-/

/-! ## A003198.P5897830174267497828

`A383735(A167499(n+4)+1)`
-/

namespace A003198.P5897830174267497828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383735 (A167499 (n + 4) + 1).toNat

end

end A003198.P5897830174267497828

/-! ## A003198.P841275183232392348

`A383735(A167614(n+4)+3)`
-/

namespace A003198.P841275183232392348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383735 (A167614 (n + 4) + 3).toNat

end

end A003198.P841275183232392348

/-! ## A003198.P16194458561120265035

`A252943(A020104(n))+A003202(n)`
-/

namespace A003198.P16194458561120265035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252943 (A020104 n).toNat + A003202 n

end

end A003198.P16194458561120265035

