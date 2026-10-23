import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A079800: Initial term of n-th group in A079798.

The programs for A079800, there is no canonical definition to state claims against.
-/

/-! ## A079800.P3235722265593794738

`∑{e}[A005015(n), A079801(#)]`
-/

namespace A079800.P3235722265593794738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A079801 (Nat.factorization (f1 n).natAbs p)

end

end A079800.P3235722265593794738

/-! ## A079800.P6354582899265352112

`∑{e}[A007283(n), A079801(#)]`
-/

namespace A079800.P6354582899265352112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A079801 (Nat.factorization (f1 n).natAbs p)

end

end A079800.P6354582899265352112

/-! ## A079800.P6044933306607165449

`∑{e}[A020714(n), A079801(#)]`
-/

namespace A079800.P6044933306607165449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A079801 (Nat.factorization (f1 n).natAbs p)

end

end A079800.P6044933306607165449

/-! ## A079800.P14312185560617392600

`A079801(A028310(n))-(floor(acot(n))-1)`
-/

namespace A079800.P14312185560617392600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079801 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A079800.P14312185560617392600

/-! ## A079800.P10676074584906852364

`A079801(A028310(n))+A057427(n)`
-/

namespace A079800.P10676074584906852364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079801 (A028310 n).toNat + A057427 n

end

end A079800.P10676074584906852364

/-!
# A079801: Final term of n-th group in A079798.

The programs for A079801, there is no canonical definition to state claims against.
-/

/-! ## A079801.P10230535100143574174

`A079800(n+2)-1`
-/

namespace A079801.P10230535100143574174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079800 (n + 2) - 1

end

end A079801.P10230535100143574174

/-! ## A079801.P9192200073974077458

`∑[abs(Δ[A079800(n+1)])]`
-/

namespace A079801.P9192200073974077458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079800 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079801.P9192200073974077458

/-! ## A079801.P8303137738949035973

`record[Δ[A079800(A004736(n+1))]]`
-/

namespace A079801.P8303137738949035973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079800 (A004736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079801.P8303137738949035973

/-! ## A079801.P16129738894707217117

`record[Δ[A079800(A079786(n+1))]]`
-/

namespace A079801.P16129738894707217117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079800 (A079786 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079801.P16129738894707217117

/-! ## A079801.P8326579047694795033

`∑[Δ[A079800(n+1)]*A304042(n)]`
-/

namespace A079801.P8326579047694795033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079800 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A304042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079801.P8326579047694795033

/-!
# A079803: A079802(n)/A079802(n-1).

The programs for A079803, there is no canonical definition to state claims against.
-/

/-! ## A079803.P15683657320233308803

`A079802(n+2)/A079802(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079803.P15683657320233308803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079802 (n + 2) : ℚ) / (A079802 (n + 1) : ℚ)

end

end A079803.P15683657320233308803

/-!
# A079805: Final term of n-th group in A079802.

The programs for A079805, there is no canonical definition to state claims against.
-/

/-! ## A079805.P11639015796376371314

`A275272(A032637(n+1))`
-/

namespace A079805.P11639015796376371314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275272 (A032637 (n + 1)).toNat

end

end A079805.P11639015796376371314

/-!
# A079806: Number of even numbers that can be formed by permuting the digits of n.

The programs for A079806, there is no canonical definition to state claims against.
-/

/-! ## A079806.P4931459772799831888

`gcd(A196563(n), A360709(A183025(2*n+5)))`
-/

namespace A079806.P4931459772799831888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196563 n) (A360709 (A183025 (2 * n + 5)).toNat)

end

end A079806.P4931459772799831888

/-! ## A079806.P1329492893104146299

`A003984(A196222(3*n)*A196563(n))`
-/

namespace A079806.P1329492893104146299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A196222 (3 * n) * A196563 n).toNat

end

end A079806.P1329492893104146299

/-! ## A079806.P17640984825384833960

`gcd(A196563(n), A327780(A322391(n+1)))`
-/

namespace A079806.P17640984825384833960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196563 n) (A327780 (A322391 (n + 1)).toNat)

end

end A079806.P17640984825384833960

/-! ## A079806.P9349194834860983064

`A196563(A335520(3*n+4)+n)`
-/

namespace A079806.P9349194834860983064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A335520 (3 * n + 4) + (n : ℤ)).toNat

end

end A079806.P9349194834860983064

/-! ## A079806.P4693933737948636816

`A072359(n+1)%(A196563(n)+1)`
-/

namespace A079806.P4693933737948636816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072359 (n + 1)) (A196563 n + 1)

end

end A079806.P4693933737948636816

/-!
# A079807: Number of multiples of 3 that can be formed by permuting the digits of n.

The programs for A079807, there is no canonical definition to state claims against.
-/

/-! ## A079807.P1737040105002662970

`A047726(abs(1-n)+1)*A079978(n)`
-/

namespace A079807.P1737040105002662970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (|1 - (n : ℤ)| + 1).toNat * A079978 n

end

end A079807.P1737040105002662970

/-! ## A079807.P8318790708899999001

`char[3*n]*A047726(A233583(n+1))`
-/

namespace A079807.P8318790708899999001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A047726 (A233583 (n + 1)).toNat

end

end A079807.P8318790708899999001

/-! ## A079807.P14344947789497483484

`A047726(A233583(n+1))%A010225(n)`
-/

namespace A079807.P14344947789497483484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047726 (A233583 (n + 1)).toNat) (A010225 n)

end

end A079807.P14344947789497483484

/-! ## A079807.P14442059810448744106

`A047726(A213217(n))%A040361(n)`
-/

namespace A079807.P14442059810448744106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047726 (A213217 n).toNat) (A040361 n)

end

end A079807.P14442059810448744106

/-! ## A079807.P12465461630891685865

`A037213(A196222(n)+A010872(n))`
-/

namespace A079807.P12465461630891685865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A196222 n + A010872 n).toNat

end

end A079807.P12465461630891685865

/-! ## A079807.P9831755189191863946

`A037213(A196222(n)+A011655(n))`
-/

namespace A079807.P9831755189191863946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A196222 n + A011655 n).toNat

end

end A079807.P9831755189191863946

/-! ## A079807.P17733029067224993802

`A043562(n)*A057078(n²)`
-/

namespace A079807.P17733029067224993802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A057078 (n ^ 2)

end

end A079807.P17733029067224993802

/-! ## A079807.P11868625288589402325

`A043562(n)*A079978(n²)`
-/

namespace A079807.P11868625288589402325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A079978 (n ^ 2)

end

end A079807.P11868625288589402325

/-! ## A079807.P15338580773029413349

`and(A043562(n), A101426(n²))`
-/

namespace A079807.P15338580773029413349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043562 n) (A101426 (n ^ 2))

end

end A079807.P15338580773029413349

/-!
# A079808: Consider a triangle in which the 2n-th row contains first 2n positive integers in decreasing order and the (2n+1)-st row contains first 2n+1 positive integers in increasing order; sequence contains concatenation of numbers read upward at a 45-degree angle.

The programs for A079808, there is no canonical definition to state claims against.
-/

/-! ## A079808.P7862601794259368130

`∏{e}[2^n², A086795(#)]`
-/

namespace A079808.P7862601794259368130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A086795 (Nat.factorization (f1 n) p)

end

end A079808.P7862601794259368130

/-!
# A079809: Consider a triangle in which the 2n-th row contains first 2n positive integers in increasing order and the (2n+1)-st row contains first 2n+1 positive integers in decreasing order; sequence contains concatenation of numbers read upward at a 45-degree angle.

The programs for A079809, there is no canonical definition to state claims against.
-/

/-! ## A079809.P18438046766509178362

`A070827(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=32, a(3)=12`
-/

namespace A079809.P18438046766509178362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 32, 12] fun n a =>
  A070827 (a (n - 1) + 1).toNat

end

end A079809.P18438046766509178362

/-!
# A079810: Sums of diagonals (upward from left to right) of the triangle shown in A079809.

The programs for A079810, the canonical program `A079810.P7721792288216442728` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079810 has offset 1).

The definition of A079810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079810.P7721792288216442728

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=3, a(4)=8, a(5)=8, a(6)=16, a(7)=12, a(8)=21`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079810

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P7721792288216442728.Spec : Prop :=
  ∀ n, P7721792288216442728.a n = A079810 (n + 1)

theorem P7721792288216442728.correct : P7721792288216442728.Spec := by
  intro n
  simp only [A079810, Nat.add_sub_cancel]

end A079810

/-! ## A079810.P15116184288625707446

`A000212(A057353(xor(1, n))+2)`
-/

namespace A079810.P15116184288625707446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A057353 (Nat.xor 1 n) + 2).toNat

end

end A079810.P15116184288625707446

namespace A079810

/-- `A000212(A057353(xor(1, n))+2)` -/
def P15116184288625707446.Spec : Prop :=
  ∀ n, P15116184288625707446.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P8521389507791762147

`A032438(A028242(n))+A029579(n)`
-/

namespace A079810.P8521389507791762147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 (A028242 n).toNat + A029579 n

end

end A079810.P8521389507791762147

namespace A079810

/-- `A032438(A028242(n))+A029579(n)` -/
def P8521389507791762147.Spec : Prop :=
  ∀ n, P8521389507791762147.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P7459375127646674312

`A110660(A028242(n))+A008805(n)`
-/

namespace A079810.P7459375127646674312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A028242 n).toNat + A008805 n

end

end A079810.P7459375127646674312

namespace A079810

/-- `A110660(A028242(n))+A008805(n)` -/
def P7459375127646674312.Spec : Prop :=
  ∀ n, P7459375127646674312.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P5108284063686292123

`A008805(n)+A002378(A059169(n+1))`
-/

namespace A079810.P5108284063686292123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + A002378 (A059169 (n + 1)).toNat

end

end A079810.P5108284063686292123

namespace A079810

/-- `A008805(n)+A002378(A059169(n+1))` -/
def P5108284063686292123.Spec : Prop :=
  ∀ n, P5108284063686292123.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P10179185260553547024

`A000212(A008619(n)+A008619(A028242(n)))`
-/

namespace A079810.P10179185260553547024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A008619 n + A008619 (A028242 n).toNat).toNat

end

end A079810.P10179185260553547024

namespace A079810

/-- `A000212(A008619(n)+A008619(A028242(n)))` -/
def P10179185260553547024.Spec : Prop :=
  ∀ n, P10179185260553547024.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P16663093142950275198

`A211539(n+2)-A079811(n+1)`
-/

namespace A079810.P16663093142950275198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 (n + 2) - A079811 (n + 1)

end

end A079810.P16663093142950275198

namespace A079810

/-- `A211539(n+2)-A079811(n+1)` -/
def P16663093142950275198.Spec : Prop :=
  ∀ n, P16663093142950275198.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P16924768632166049864

`A001399(A063196(A166517(n)))`
-/

namespace A079810.P16924768632166049864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A063196 (A166517 n).toNat).toNat

end

end A079810.P16924768632166049864

namespace A079810

/-- `A001399(A063196(A166517(n)))` -/
def P16924768632166049864.Spec : Prop :=
  ∀ n, P16924768632166049864.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P5074100149914550597

`A000212(A110654(A166517(n))+1)`
-/

namespace A079810.P5074100149914550597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A110654 (A166517 n).toNat + 1).toNat

end

end A079810.P5074100149914550597

namespace A079810

/-- `A000212(A110654(A166517(n))+1)` -/
def P5074100149914550597.Spec : Prop :=
  ∀ n, P5074100149914550597.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P12737351250869620561

`A000212(A065033(A168200(n+1)))`
-/

namespace A079810.P12737351250869620561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A065033 (A168200 (n + 1)).toNat).toNat

end

end A079810.P12737351250869620561

namespace A079810

/-- `A000212(A065033(A168200(n+1)))` -/
def P12737351250869620561.Spec : Prop :=
  ∀ n, P12737351250869620561.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P12647340480155450452

`A002264(A080513(A166517(n))²)`
-/

namespace A079810.P12647340480155450452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A080513 (A166517 n).toNat ^ 2).toNat

end

end A079810.P12647340480155450452

namespace A079810

/-- `A002264(A080513(A166517(n))²)` -/
def P12647340480155450452.Spec : Prop :=
  ∀ n, P12647340480155450452.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P7959013102128005233

`A002264(A001057(A168200(n+1))²)`
-/

namespace A079810.P7959013102128005233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001057 (A168200 (n + 1)).toNat ^ 2).toNat

end

end A079810.P7959013102128005233

namespace A079810

/-- `A002264(A001057(A168200(n+1))²)` -/
def P7959013102128005233.Spec : Prop :=
  ∀ n, P7959013102128005233.a n = A079810 (n + 1)

end A079810

/-! ## A079810.P1753735048633009408

`A002264(A004526(A166517(n+2))²)`
-/

namespace A079810.P1753735048633009408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004526 (A166517 (n + 2)).toNat ^ 2).toNat

end

end A079810.P1753735048633009408

namespace A079810

/-- `A002264(A004526(A166517(n+2))²)` -/
def P1753735048633009408.Spec : Prop :=
  ∀ n, P1753735048633009408.a n = A079810 (n + 1)

end A079810

/-!
# A079811: Sum of numbers read upward at a 45-degree angle in A079809.

The programs for A079811, the canonical program `A079811.P13621248167847764952` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079811 has offset 1).

The definition of A079811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079811.P13621248167847764952

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=6, a(4)=7, a(5)=10, a(6)=10, a(7)=18, a(8)=19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079811

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P13621248167847764952.Spec : Prop :=
  ∀ n, P13621248167847764952.a n = A079811 (n + 1)

theorem P13621248167847764952.correct : P13621248167847764952.Spec := by
  intro n
  simp only [A079811, Nat.add_sub_cancel]

end A079811

/-! ## A079811.P11136266384449703414

`A008621(n)+A001082(A008621(2*n+3))`
-/

namespace A079811.P11136266384449703414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + A001082 (A008621 (2 * n + 3)).toNat

end

end A079811.P11136266384449703414

namespace A079811

/-- `A008621(n)+A001082(A008621(2*n+3))` -/
def P11136266384449703414.Spec : Prop :=
  ∀ n, P11136266384449703414.a n = A079811 (n + 1)

end A079811

/-!
# A079813: n 0's followed by n 1's.

The programs for A079813, the canonical program `A079813.P15510439695013111739` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079813 has offset 1).

The definition of A079813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079813.P15510439695013111739

`ceil(sqrt(n+1))-round(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079813

/-- `ceil(sqrt(n+1))-round(sqrt(n+1))` -/
def P15510439695013111739.Spec : Prop :=
  ∀ n, P15510439695013111739.a n = A079813 (n + 1)

theorem P15510439695013111739.correct : P15510439695013111739.Spec := by
  intro n
  simp only [A079813, Nat.add_sub_cancel]

end A079813

/-! ## A079813.P11579252024766921731

`ceil(record[sqrt(xor(3, n))])%2`
-/

namespace A079813.P11579252024766921731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ 2

end

end A079813.P11579252024766921731

namespace A079813

/-- `ceil(record[sqrt(xor(3, n))])%2` -/
def P11579252024766921731.Spec : Prop :=
  ∀ n, P11579252024766921731.a n = A079813 (n + 1)

end A079813

/-! ## A079813.P16543297997274426133

`and(1, ceil(record[sqrt(xor(3, n))]))`
-/

namespace A079813.P16543297997274426133
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A079813.P16543297997274426133

namespace A079813

/-- `and(1, ceil(record[sqrt(xor(3, n))]))` -/
def P16543297997274426133.Spec : Prop :=
  ∀ n, P16543297997274426133.a n = A079813 (n + 1)

end A079813

/-! ## A079813.P10742263367012668265

`ceil(2*sqrt(n+1))%2`
-/

namespace A079813.P10742263367012668265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

end

end A079813.P10742263367012668265

namespace A079813

/-- `ceil(2*sqrt(n+1))%2` -/
def P10742263367012668265.Spec : Prop :=
  ∀ n, P10742263367012668265.a n = A079813 (n + 1)

end A079813

/-! ## A079813.P13546451822514336499

`and(1, ceil(2*sqrt(n+1)))`
-/

namespace A079813.P13546451822514336499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

end

end A079813.P13546451822514336499

namespace A079813

/-- `and(1, ceil(2*sqrt(n+1)))` -/
def P13546451822514336499.Spec : Prop :=
  ∀ n, P13546451822514336499.a n = A079813 (n + 1)

end A079813

/-! ## A079813.P8744891612557657376

`val(comp[n²+n], comp[n²])`
-/

namespace A079813.P8744891612557657376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A079813.P8744891612557657376

namespace A079813

/-- `val(comp[n²+n], comp[n²])` -/
def P8744891612557657376.Spec : Prop :=
  ∀ n, (P8744891612557657376.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P2700900756350180851

`C(comp[n²+n], comp[n²])`
-/

namespace A079813.P2700900756350180851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A079813.P2700900756350180851

namespace A079813

/-- `C(comp[n²+n], comp[n²])` -/
def P2700900756350180851.Spec : Prop :=
  ∀ n, (P2700900756350180851.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P229980048938441490

`log2(gcd(2, floor(sqrt(4*n+1))))`
-/

namespace A079813.P229980048938441490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (Nat.sqrt (4 * n + 1)) : ℝ)

end

end A079813.P229980048938441490

namespace A079813

/-- `log2(gcd(2, floor(sqrt(4*n+1))))` -/
def P229980048938441490.Spec : Prop :=
  ∀ n, P229980048938441490.a n = (A079813 (n + 1) : ℝ)

end A079813

/-! ## A079813.P16459464176642146739

`char[comp[A061885(n)]]`
-/

namespace A079813.P16459464176642146739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079813.P16459464176642146739

namespace A079813

/-- `char[comp[A061885(n)]]` -/
def P16459464176642146739.Spec : Prop :=
  ∀ n, (P16459464176642146739.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P8711234368464064148

`char[A064801(n+1)]`
-/

namespace A079813.P8711234368464064148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079813.P8711234368464064148

namespace A079813

/-- `char[A064801(n+1)]` -/
def P8711234368464064148.Spec : Prop :=
  ∀ n, (P8711234368464064148.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P16402598456997382594

`a(A076874(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A079813.P16402598456997382594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A076874 (n + 1)).toNat

end

end A079813.P16402598456997382594

namespace A079813

/-- `a(A076874(n+1))` -/
def P16402598456997382594.Spec : Prop :=
  ∀ n, (P16402598456997382594.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P18180415828213362073

`a(A083479(n)-1)` with `a(0)=0, a(1)=1`
-/

namespace A079813.P18180415828213362073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A083479 n - 1).toNat

end

end A079813.P18180415828213362073

namespace A079813

/-- `a(A083479(n)-1)` -/
def P18180415828213362073.Spec : Prop :=
  ∀ n, (P18180415828213362073.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P15334447441197497816

`a(n-A280026(n))` with `a(0)=0, a(1)=1`
-/

namespace A079813.P15334447441197497816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A280026 n).toNat

end

end A079813.P15334447441197497816

namespace A079813

/-- `a(n-A280026(n))` -/
def P15334447441197497816.Spec : Prop :=
  ∀ n, (P15334447441197497816.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P8699789404160552630

`char[A004202(n+1)-1]`
-/

namespace A079813.P8699789404160552630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079813.P8699789404160552630

namespace A079813

/-- `char[A004202(n+1)-1]` -/
def P8699789404160552630.Spec : Prop :=
  ∀ n, (P8699789404160552630.a n : ℤ) = A079813 (n + 1)

end A079813

/-! ## A079813.P503197265102626367

`char[lt[A013942(n+1), 2]]`
-/

namespace A079813.P503197265102626367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079813.P503197265102626367

namespace A079813

/-- `char[lt[A013942(n+1), 2]]` -/
def P503197265102626367.Spec : Prop :=
  ∀ n, (P503197265102626367.a n : ℤ) = A079813 (n + 1)

end A079813

/-!
# A079814: Odd integers k such that phi(k)/k < 6/Pi^2 where phi = A000010.

The programs for A079814, the canonical program `A079814.P13038477736834189508` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079814 has offset 1).

The definition of A079814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079814.P4059397315727438947

`∩[A217460(n+1), A280877(n+1)]`
-/

namespace A079814.P4059397315727438947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079814.P4059397315727438947

namespace A079814

/-- `∩[A217460(n+1), A280877(n+1)]` -/
def P4059397315727438947.Spec : Prop :=
  ∀ n, (P4059397315727438947.a n : ℤ) = A079814 (n + 1)

end A079814

/-! ## A079814.P13038477736834189508

`lt[A000010(A042948(n)+1), A256502(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079814

/-- `lt[A000010(A042948(n)+1), A256502(n+1)]` -/
def P13038477736834189508.Spec : Prop :=
  ∀ n, (P13038477736834189508.a n : ℤ) = A079814 (n + 1)

theorem P13038477736834189508.correct : P13038477736834189508.Spec := by
  intro n
  simp only [A079814, Nat.add_sub_cancel]

end A079814

/-! ## A079814.P17601223158594319047

`lt[A000010(A133090(n+1)), A256502(n+1)]`
-/

namespace A079814.P17601223158594319047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A133090 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079814.P17601223158594319047

namespace A079814

/-- `lt[A000010(A133090(n+1)), A256502(n+1)]` -/
def P17601223158594319047.Spec : Prop :=
  ∀ n, (P17601223158594319047.a n : ℤ) = A079814 (n + 1)

end A079814

/-! ## A079814.P4425520895707000796

`∩[A173263(n+1), A280877(n+1)]`
-/

namespace A079814.P4425520895707000796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079814.P4425520895707000796

namespace A079814

/-- `∩[A173263(n+1), A280877(n+1)]` -/
def P4425520895707000796.Spec : Prop :=
  ∀ n, (P4425520895707000796.a n : ℤ) = A079814 (n + 1)

end A079814

/-! ## A079814.P3325520527924552840

`∩[A003963(A000040(2*n+1)), A280877(n+1)]`
-/

namespace A079814.P3325520527924552840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000040 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079814.P3325520527924552840

namespace A079814

/-- `∩[A003963(A000040(2*n+1)), A280877(n+1)]` -/
def P3325520527924552840.Spec : Prop :=
  ∀ n, (P3325520527924552840.a n : ℤ) = A079814 (n + 1)

end A079814

/-!
# A079816: Number of permutations satisfying -k <= p(i)-i <= r and p(i)-i not in I, i=1..n, with k=1, r=5, I={1}.

The programs for A079816, the canonical program `A079816.P13384342390462299723` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079816 has offset 0).

The definition of A079816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079816.P13384342390462299723

`a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079816

/-- `a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P13384342390462299723.Spec : Prop :=
  ∀ n, (P13384342390462299723.a n : ℤ) = A079816 n

theorem P13384342390462299723.correct : P13384342390462299723.Spec := by
  intro n
  simp only [A079816]

end A079816

/-! ## A079816.P147764049200566440

`A082447(floor(sqrt(A088714(n))))`
-/

namespace A079816.P147764049200566440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (Int.sqrt (A088714 n)).toNat

end

end A079816.P147764049200566440

namespace A079816

/-- `A082447(floor(sqrt(A088714(n))))` -/
def P147764049200566440.Spec : Prop :=
  ∀ n, P147764049200566440.a n = A079816 n

end A079816

/-! ## A079816.P4309244721153534012

`A375815(A102403(n))`
-/

namespace A079816.P4309244721153534012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A102403 n).toNat

end

end A079816.P4309244721153534012

namespace A079816

/-- `A375815(A102403(n))` -/
def P4309244721153534012.Spec : Prop :=
  ∀ n, P4309244721153534012.a n = A079816 n

end A079816

/-! ## A079816.P16394970416622114532

`A278814(A368344(n))`
-/

namespace A079816.P16394970416622114532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A368344 n).toNat

end

end A079816.P16394970416622114532

namespace A079816

/-- `A278814(A368344(n))` -/
def P16394970416622114532.Spec : Prop :=
  ∀ n, P16394970416622114532.a n = A079816 n

end A079816

/-! ## A079816.P18129549946269422378

`A003056(A182488(n+1))`
-/

namespace A079816.P18129549946269422378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A182488 (n + 1)).toNat

end

end A079816.P18129549946269422378

namespace A079816

/-- `A003056(A182488(n+1))` -/
def P18129549946269422378.Spec : Prop :=
  ∀ n, P18129549946269422378.a n = A079816 n

end A079816

/-!
# A079819: Number of positions that are exactly n moves from the starting position in the Rubik's UFO puzzle.

The programs for A079819, there is no canonical definition to state claims against.
-/

/-! ## A079819.P13751015463729929200

`A341721(or(A002409(n), A323238(n+1)))`
-/

namespace A079819.P13751015463729929200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (Int.lor (A002409 n) (A323238 (n + 1))).toNat

end

end A079819.P13751015463729929200

/-!
# A079820: Number of positions that are exactly n moves from the starting position in the Rubik's UFO puzzle.

The programs for A079820, there is no canonical definition to state claims against.
-/

/-! ## A079820.P14896619544800544497

`A050296(A390828(n))`
-/

namespace A079820.P14896619544800544497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A390828 n).toNat

end

end A079820.P14896619544800544497

/-! ## A079820.P17576938060408768128

`A229277(n)+∑[A277796(2*n+1)]`
-/

namespace A079820.P17576938060408768128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277796 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079820.P17576938060408768128

/-!
# A079821: Smallest n-digit multiple of the n-th prime.

The programs for A079821, the canonical program `A079821.P8748528471149396368` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079821 has offset 1).

The definition of A079821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079821.P8748528471149396368

`ceil(10^n/A000040(n+1))*A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079821

/-- `ceil(10^n/A000040(n+1))*A000040(n+1)` -/
def P8748528471149396368.Spec : Prop :=
  ∀ n, P8748528471149396368.a n = A079821 (n + 1)

theorem P8748528471149396368.correct : P8748528471149396368.Spec := by
  intro n
  simp only [A079821, Nat.add_sub_cancel]

end A079821

/-! ## A079821.P12112720015443315532

`A091803(n+1)+10^n`
-/

namespace A079821.P12112720015443315532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091803 (n + 1) + (10 ^ n : ℤ)

end

end A079821.P12112720015443315532

namespace A079821

/-- `A091803(n+1)+10^n` -/
def P12112720015443315532.Spec : Prop :=
  ∀ n, P12112720015443315532.a n = A079821 (n + 1)

end A079821

/-! ## A079821.P6698749639637572571

`A309761(A000124(n))+A091803(n+1)`
-/

namespace A079821.P6698749639637572571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A000124 n).toNat + A091803 (n + 1)

end

end A079821.P6698749639637572571

namespace A079821

/-- `A309761(A000124(n))+A091803(n+1)` -/
def P6698749639637572571.Spec : Prop :=
  ∀ n, P6698749639637572571.a n = A079821 (n + 1)

end A079821

/-! ## A079821.P672720505622941559

`∑[A011557(n)]+A091803(n+1)-A002275(n)`
-/

namespace A079821.P672720505622941559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A091803 (n + 1) - A002275 n)

end

end A079821.P672720505622941559

namespace A079821

/-- `∑[A011557(n)]+A091803(n+1)-A002275(n)` -/
def P672720505622941559.Spec : Prop :=
  ∀ n, P672720505622941559.a n = A079821 (n + 1)

end A079821

/-! ## A079821.P10437661463746874531

`A002275(n+1)+A091803(n+1)-A002275(n)`
-/

namespace A079821.P10437661463746874531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A091803 (n + 1) - A002275 n)

end

end A079821.P10437661463746874531

namespace A079821

/-- `A002275(n+1)+A091803(n+1)-A002275(n)` -/
def P10437661463746874531.Spec : Prop :=
  ∀ n, P10437661463746874531.a n = A079821 (n + 1)

end A079821

/-!
# A079822: Smallest n-digit multiple of the n-th composite number.

The programs for A079822, there is no canonical definition to state claims against.
-/

/-! ## A079822.P2983033801555766479

`A103517(or(n, A195211(n)))`
-/

namespace A079822.P2983033801555766479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.lor (n : ℤ) (A195211 n)).toNat

end

end A079822.P2983033801555766479

/-!
# A079824: Sum of numbers in n-th upward diagonal of triangle in A079823.

The programs for A079824, the canonical program `A079824.P14206331420896025504` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079824 has offset 1).

The definition of A079824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079824.P14206331420896025504

`A109900(n)+A058187(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079824

/-- `A109900(n)+A058187(n)` -/
def P14206331420896025504.Spec : Prop :=
  ∀ n, P14206331420896025504.a n = A079824 (n + 1)

theorem P14206331420896025504.correct : P14206331420896025504.Spec := by
  intro n
  simp only [A079824, Nat.add_sub_cancel]

end A079824

/-! ## A079824.P6948983480709442322

`A058187(n)+∑[A001318(n)]`
-/

namespace A079824.P6948983480709442322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079824.P6948983480709442322

namespace A079824

/-- `A058187(n)+∑[A001318(n)]` -/
def P6948983480709442322.Spec : Prop :=
  ∀ n, P6948983480709442322.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P16443353190839675075

`A005993(n)+∑[A123596(n)]`
-/

namespace A079824.P16443353190839675075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079824.P16443353190839675075

namespace A079824

/-- `A005993(n)+∑[A123596(n)]` -/
def P16443353190839675075.Spec : Prop :=
  ∀ n, P16443353190839675075.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P6108048266873842155

`A294172(n+1)-A212977(n)`
-/

namespace A079824.P6108048266873842155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294172 (n + 1) - A212977 n

end

end A079824.P6108048266873842155

namespace A079824

/-- `A294172(n+1)-A212977(n)` -/
def P6108048266873842155.Spec : Prop :=
  ∀ n, P6108048266873842155.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P2459571921945782692

`∑[A123596(n)+A008619(n)²]`
-/

namespace A079824.P2459571921945782692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n + A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079824.P2459571921945782692

namespace A079824

/-- `∑[A123596(n)+A008619(n)²]` -/
def P2459571921945782692.Spec : Prop :=
  ∀ n, P2459571921945782692.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P2844961612850436451

`A356288(n+1)-A093005(n+1)`
-/

namespace A079824.P2844961612850436451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356288 (n + 1) - A093005 (n + 1)

end

end A079824.P2844961612850436451

namespace A079824

/-- `A356288(n+1)-A093005(n+1)` -/
def P2844961612850436451.Spec : Prop :=
  ∀ n, P2844961612850436451.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P13768310506265563918

`A000292(A008619(n))+∑[A001318(n)]`
-/

namespace A079824.P13768310506265563918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A008619 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079824.P13768310506265563918

namespace A079824

/-- `A000292(A008619(n))+∑[A001318(n)]` -/
def P13768310506265563918.Spec : Prop :=
  ∀ n, P13768310506265563918.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P8319260039803715044

`A109900(n)+Δ[A096338(n)]`
-/

namespace A079824.P8319260039803715044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + (f1 (n + 1) - f1 n)

end

end A079824.P8319260039803715044

namespace A079824

/-- `A109900(n)+Δ[A096338(n)]` -/
def P8319260039803715044.Spec : Prop :=
  ∀ n, P8319260039803715044.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P3476107779798989974

`A058187(n)+A034828(n+1)`
-/

namespace A079824.P3476107779798989974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n + A034828 (n + 1)

end

end A079824.P3476107779798989974

namespace A079824

/-- `A058187(n)+A034828(n+1)` -/
def P3476107779798989974.Spec : Prop :=
  ∀ n, P3476107779798989974.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P7461056224666671094

`A034828(n+1)+A000292(A008619(n))`
-/

namespace A079824.P7461056224666671094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + A000292 (A008619 n).toNat

end

end A079824.P7461056224666671094

namespace A079824

/-- `A034828(n+1)+A000292(A008619(n))` -/
def P7461056224666671094.Spec : Prop :=
  ∀ n, P7461056224666671094.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P3489103338627859955

`∑[A000982(n+1)]-A000292(A004526(n+1))`
-/

namespace A079824.P3489103338627859955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000292 (A004526 (n + 1)).toNat

end

end A079824.P3489103338627859955

namespace A079824

/-- `∑[A000982(n+1)]-A000292(A004526(n+1))` -/
def P3489103338627859955.Spec : Prop :=
  ∀ n, P3489103338627859955.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P127862569024669615

`∑[A123596(n+2)+A002620(n)]`
-/

namespace A079824.P127862569024669615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n + 2) + A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079824.P127862569024669615

namespace A079824

/-- `∑[A123596(n+2)+A002620(n)]` -/
def P127862569024669615.Spec : Prop :=
  ∀ n, P127862569024669615.a n = A079824 (n + 1)

end A079824

/-! ## A079824.P4226788417196217472

`A000292(A008624(2*n))+∑[A001318(n)]`
-/

namespace A079824.P4226788417196217472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A008624 (2 * n)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079824.P4226788417196217472

namespace A079824

/-- `A000292(A008624(2*n))+∑[A001318(n)]` -/
def P4226788417196217472.Spec : Prop :=
  ∀ n, P4226788417196217472.a n = A079824 (n + 1)

end A079824

/-!
# A079827: a(n) = floor((n + reverse(n))/2).

The programs for A079827, there is no canonical definition to state claims against.
-/

/-! ## A079827.P12687398388216040129

`floor(A056964(n+1)/2)`
-/

namespace A079827.P12687398388216040129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056964 (n + 1) : ℚ) / 2⌋

end

end A079827.P12687398388216040129

/-! ## A079827.P2965832804068585136

`ceil((A004086(n+1)+n)/2)`
-/

namespace A079827.P2965832804068585136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004086 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A079827.P2965832804068585136

/-! ## A079827.P13370791042697382642

`floor((2-A056965(n+1))/2)+n`
-/

namespace A079827.P13370791042697382642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - A056965 (n + 1) : ℚ) / 2⌋ + (n : ℤ)

end

end A079827.P13370791042697382642

/-! ## A079827.P9371580665474743383

`ceil((A135020(2*(n+1))+n)/2)`
-/

namespace A079827.P9371580665474743383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135020 (2 * (n + 1)) + (n : ℤ) : ℚ) / 2⌉

end

end A079827.P9371580665474743383

/-! ## A079827.P7593275276614114887

`A004526(A056964(n+1))`
-/

namespace A079827.P7593275276614114887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056964 (n + 1)).toNat

end

end A079827.P7593275276614114887

/-! ## A079827.P16298413280981660486

`A065033(A056964(n+1)-1)`
-/

namespace A079827.P16298413280981660486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A056964 (n + 1) - 1).toNat

end

end A079827.P16298413280981660486

/-! ## A079827.P10077875011028138652

`A008619(A056964(n+1)-2)`
-/

namespace A079827.P10077875011028138652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A056964 (n + 1) - 2).toNat

end

end A079827.P10077875011028138652

/-! ## A079827.P748287259460736311

`A065033(A004086(n+1)+n)`
-/

namespace A079827.P748287259460736311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004086 (n + 1) + (n : ℤ)).toNat

end

end A079827.P748287259460736311

/-! ## A079827.P9538341870068990047

`A110654(A004086(n+1)+n)`
-/

namespace A079827.P9538341870068990047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004086 (n + 1) + (n : ℤ)).toNat

end

end A079827.P9538341870068990047

/-! ## A079827.P17949620857394491039

`A004526(A004086(n+1)+n+1)`
-/

namespace A079827.P17949620857394491039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004086 (n + 1) + (n + 1 : ℤ)).toNat

end

end A079827.P17949620857394491039

/-! ## A079827.P17722628474438089050

`A123108(A056964(n+1)*A057427(n))`
-/

namespace A079827.P17722628474438089050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A056964 (n + 1) * A057427 n).toNat

end

end A079827.P17722628474438089050

/-!
# A079829: a(n) = smallest k such that floor(reverse(k)/k) >= n.

The programs for A079829, there is no canonical definition to state claims against.
-/

/-! ## A079829.P11790287293976737334

`A074164(n+1)%A110383(n+1)`
-/

namespace A079829.P11790287293976737334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074164 (n + 1)) (A110383 (n + 1))

end

end A079829.P11790287293976737334

/-! ## A079829.P5017022975356414151

`A074164(n+1)^A167634((n+1)²)`
-/

namespace A079829.P5017022975356414151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074164 (n + 1) : ℚ) ^ (A167634 ((n + 1) ^ 2) : ℤ)

end

end A079829.P5017022975356414151

/-! ## A079829.P11280237782581012829

`A028310(A074164(n+1)^A048766(n))`
-/

namespace A079829.P11280237782581012829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A074164 (n + 1) : ℚ) ^ (A048766 n : ℤ))).toNat

end

end A079829.P11280237782581012829

/-! ## A079829.P2696713267030714891

`gcd(A008683(A103455(n)), A074164(n+1))`
-/

namespace A079829.P2696713267030714891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A103455 n).toNat) (A074164 (n + 1))

end

end A079829.P2696713267030714891

/-!
# A079832: Numbers k such that floor(reverse(k)/k) = 3.

The programs for A079832, there is no canonical definition to state claims against.
-/

/-! ## A079832.P16692428083292032346

`eq[4, floor((A004086(n)+n)/A028310(n))]`
-/

namespace A079832.P16692428083292032346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004086 n + (n : ℤ) : ℚ) / (A028310 n : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079832.P16692428083292032346

/-!
# A079837: Leading diagonal of triangle in A079836.

The programs for A079837, there is no canonical definition to state claims against.
-/

/-! ## A079837.P12832168483447117974

`A079835(n+2)-1`
-/

namespace A079837.P12832168483447117974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079835 (n + 2) - 1

end

end A079837.P12832168483447117974

/-!
# A079838: a(1)=1 and for n>1, a(n) is the smallest multiple of a(n-1) which has no nonzero digit in common with a(n-1).

The programs for A079838, there is no canonical definition to state claims against.
-/

/-! ## A079838.P12163229398987209172

`A256701(A290687(n))`
-/

namespace A079838.P12163229398987209172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (A290687 n).toNat

end

end A079838.P12163229398987209172

/-! ## A079838.P12110879693047459388

`A256701(A290855(n))`
-/

namespace A079838.P12110879693047459388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (A290855 n).toNat

end

end A079838.P12110879693047459388

/-! ## A079838.P6134979247058763134

`∏[A037888(∑[A027375(n+3)])]`
-/

namespace A079838.P6134979247058763134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079838.P6134979247058763134

/-! ## A079838.P4712475088637786668

`A289435(∏[A184340(3*n+5)+1])`
-/

namespace A079838.P4712475088637786668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184340 (3 * n + 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079838.P4712475088637786668

/-! ## A079838.P3572846452858147904

`∏[A336500(A005728(round(n/(n%2+1/2))))]`
-/

namespace A079838.P3572846452858147904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336500 (A005728 (SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079838.P3572846452858147904

/-!
# A079839: Number of positions that are exactly n moves from the starting position in the Billiards Nine-Ball puzzle.

The programs for A079839, there is no canonical definition to state claims against.
-/

/-! ## A079839.P11962635534017832335

`round(sqrt(A020498(10^n)))`
-/

namespace A079839.P11962635534017832335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A020498 (10 ^ n) : ℝ))

end

end A079839.P11962635534017832335

/-!
# A079843: Number of positions that are exactly n moves from the starting position in the Rashkey Type 1 puzzle.

The programs for A079843, there is no canonical definition to state claims against.
-/

/-! ## A079843.P17202658715040910995

`A180129(n+1)+A180121(A024494(n+1))`
-/

namespace A079843.P17202658715040910995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180129 (n + 1) + A180121 (A024494 (n + 1)).toNat

end

end A079843.P17202658715040910995

/-! ## A079843.P12990889761890345134

`A006779(n)-A260088(A006789(n))`
-/

namespace A079843.P12990889761890345134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006779 n - A260088 (A006789 n).toNat

end

end A079843.P12990889761890345134

/-!
# A079844: Number of positions that are exactly n moves from the starting position in the Rashkey Type 1 puzzle.

The programs for A079844, there is no canonical definition to state claims against.
-/

/-! ## A079844.P1610039590144477306

`∑[A182210(5^n+1)]`
-/

namespace A079844.P1610039590144477306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (5 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079844.P1610039590144477306

/-! ## A079844.P6632278293013556358

`floor(sqrt(A343108(2*5^n)))`
-/

namespace A079844.P6632278293013556358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A343108 (2 * 5 ^ n))

end

end A079844.P6632278293013556358

/-!
# A079845: Powers of 2 which differ at all digits from the previous term.

The programs for A079845, there is no canonical definition to state claims against.
-/

/-! ## A079845.P7869685355259820249

`2^comp[or(4, n)+4]`
-/

namespace A079845.P7869685355259820249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A079845.P7869685355259820249

/-! ## A079845.P2888034550953032507

`sqrt(lcm(4, gcd(64, n))^n)`
-/

namespace A079845.P2888034550953032507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 4 (Nat.gcd 64 n) ^ n : ℝ)

end

end A079845.P2888034550953032507

/-! ## A079845.P389016088404662746

`2^or(n, ∑[floor(n/5)])`
-/

namespace A079845.P389016088404662746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A079845.P389016088404662746

/-!
# A079846: Powers of 3 which differ at all digits from the previous term.

The programs for A079846, there is no canonical definition to state claims against.
-/

/-! ## A079846.P10961805780929294931

`3^lt[A276331(n), 5]`
-/

namespace A079846.P10961805780929294931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079846.P10961805780929294931

/-! ## A079846.P15784246057917458616

`3^lt[A004183(n), 6]`
-/

namespace A079846.P15784246057917458616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079846.P15784246057917458616

/-! ## A079846.P13585407304053371385

`3^lt[A125717(n), 9]`
-/

namespace A079846.P13585407304053371385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079846.P13585407304053371385

/-! ## A079846.P10958810330298456737

`3^(A187259(n)+n)`
-/

namespace A079846.P10958810330298456737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A187259 n + (n : ℤ) : ℤ)

end

end A079846.P10958810330298456737

/-!
# A079847: Smallest multiple of n in which the string of digits of n occurs after (n-1) most significant digits.

The programs for A079847, there is no canonical definition to state claims against.
-/

/-! ## A079847.P13180173008039701848

`A348056(A091924(n+1)+n²)`
-/

namespace A079847.P13180173008039701848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348056 (A091924 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A079847.P13180173008039701848

/-!
# A079848: Smallest primes such that a(j) - a(k) are all different.

The programs for A079848, there is no canonical definition to state claims against.
-/

/-! ## A079848.P3416382204875613306

`A133096(n+1)+A062294(n+1)`
-/

namespace A079848.P3416382204875613306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133096 (n + 1) + A062294 (n + 1)

end

end A079848.P3416382204875613306

/-! ## A079848.P10074173187623928698

`A079849(n)+a(n-1)` with `a(0)=2`
-/

namespace A079848.P10074173187623928698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079849 n + a (n - 1)

end

end A079848.P10074173187623928698

/-! ## A079848.P16813716417168004227

`∑[A079849(abs(1-n)+1)]`
-/

namespace A079848.P16813716417168004227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079848.P16813716417168004227

/-! ## A079848.P9590854293480028220

`∑[A079849(floor(acot(n)+n))]+1`
-/

namespace A079848.P9590854293480028220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079848.P9590854293480028220

/-! ## A079848.P4354630771205120753

`∑[A079849(round(sqrt(n²+1)))]+1`
-/

namespace A079848.P4354630771205120753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079848.P4354630771205120753

/-!
# A079849: First differences of A079848.

The programs for A079849, there is no canonical definition to state claims against.
-/

/-! ## A079849.P10514151516829593501

`Δ[A079848(n+1)]`
-/

namespace A079849.P10514151516829593501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079849.P10514151516829593501

/-! ## A079849.P12832978721409235660

`abs(Δ[A079848(-xor(n, -1))])`
-/

namespace A079849.P12832978721409235660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A079849.P12832978721409235660

/-! ## A079849.P3431198023924955832

`Δ[record[A079848(A133310(n))]]`
-/

namespace A079849.P3431198023924955832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079849.P3431198023924955832

/-! ## A079849.P8336941159359450601

`Δ[record[A079848(A152271(n))]]`
-/

namespace A079849.P8336941159359450601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079849.P8336941159359450601

/-! ## A079849.P15495339428858066629

`abs(Δ[A079848(A008619(2*n))])`
-/

namespace A079849.P15495339428858066629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A079849.P15495339428858066629

/-! ## A079849.P4834691476612966070

`A079848(n+2)-A079848(n+1)`
-/

namespace A079849.P4834691476612966070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (n + 2) - A079848 (n + 1)

end

end A079849.P4834691476612966070

/-! ## A079849.P12539261179580181761

`Δ[A133096(n+1)+A062294(n+1)]`
-/

namespace A079849.P12539261179580181761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133096 (n + 1) + A062294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079849.P12539261179580181761

/-! ## A079849.P2798544187943499552

`Δ[A079848(-xor(n, -1))%A022123(n)]`
-/

namespace A079849.P2798544187943499552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079848 (-Int.xor (n : ℤ) (-1)).toNat) (A022123 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079849.P2798544187943499552

/-! ## A079849.P13350392630022630936

`-A001489(Δ[A079848(-xor(n, -1))])`
-/

namespace A079849.P13350392630022630936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (f1 (n + 1) - f1 n).toNat

end

end A079849.P13350392630022630936

/-! ## A079849.P9837340130969150846

`A004525(2*Δ[A079848(-xor(n, -1))])`
-/

namespace A079849.P9837340130969150846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A079849.P9837340130969150846

/-!
# A079850: a(1) = 1 and then the smallest primes such that all a(k)-a(j) are distinct composite numbers.

The programs for A079850, there is no canonical definition to state claims against.
-/

/-! ## A079850.P6538016443564234163

`A109860(A080370(n+1)+A000045(n))`
-/

namespace A079850.P6538016443564234163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 (A080370 (n + 1) + A000045 n).toNat

end

end A079850.P6538016443564234163

/-! ## A079850.P17755849398858774063

`A327189(A182461(n))`
-/

namespace A079850.P17755849398858774063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327189 (A182461 n).toNat

end

end A079850.P17755849398858774063

/-! ## A079850.P5577470737206884663

`∑[∑[A323130(A004663(n))]]`
-/

namespace A079850.P5577470737206884663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (A004663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079850.P5577470737206884663

/-! ## A079850.P1532455053454272461

`∑[∑[A364255(A007052(n))]]`
-/

namespace A079850.P1532455053454272461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 (A007052 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079850.P1532455053454272461

/-!
# A079852: a(1) = 1, a(2) = 2, a(3) = 3 and a(n) is the smallest number such that all a(i)*a(j)*a(k) are different.

The programs for A079852, there is no canonical definition to state claims against.
-/

/-! ## A079852.P92779429150443673

`eq[1, A242359(A016009(n+1))]+1`
-/

namespace A079852.P92779429150443673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242359 (A016009 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079852.P92779429150443673

/-! ## A079852.P15140602144482121141

`filter[A329366(n+1), A122895(#)]`
-/

namespace A079852.P15140602144482121141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A079852.P15140602144482121141

/-! ## A079852.P16096183842400903167

`∩[A066724(n+1), A329366(n+1)]`
-/

namespace A079852.P16096183842400903167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079852.P16096183842400903167

/-! ## A079852.P13742115874324284611

`filter[A359390(n+1), A122895(#)]`
-/

namespace A079852.P13742115874324284611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A079852.P13742115874324284611

/-! ## A079852.P17676333316750601630

`filter[A383099(n+1), A122895(#)]`
-/

namespace A079852.P17676333316750601630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A079852.P17676333316750601630

/-! ## A079852.P9480951641402247660

`∩[A344979(n+1), A066724(n+1)]`
-/

namespace A079852.P9480951641402247660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079852.P9480951641402247660

/-! ## A079852.P8764455464094172367

`filter[A326534(n+1), A122895(#)]`
-/

namespace A079852.P8764455464094172367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A079852.P8764455464094172367

/-! ## A079852.P12160383593498391347

`filter[A298538(n+1), A122895(#)]`
-/

namespace A079852.P12160383593498391347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A079852.P12160383593498391347

/-!
# A079853: Primes p for which (p-2)! == 1 (mod p^2).

The programs for A079853, there is no canonical definition to state claims against.
-/

/-! ## A079853.P2504138800983057706

`A110482(A007097(n))`
-/

namespace A079853.P2504138800983057706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110482 (A007097 n).toNat

end

end A079853.P2504138800983057706

/-!
# A079854: a(1) = 1, a(k) divides a(k+r) for all k and r and the ratios a(k+r)/a(k) are all different.

The programs for A079854, there is no canonical definition to state claims against.
-/

/-! ## A079854.P13402741141939666092

`a(n-1)*A333559(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A079854.P13402741141939666092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A333559 (n - 1)

end

end A079854.P13402741141939666092

/-! ## A079854.P9209949905514270081

`∏[A000005(A166444(A002180(n+2)))]`
-/

namespace A079854.P9209949905514270081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A166444 (A002180 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079854.P9209949905514270081

/-! ## A079854.P17276337264891750571

`∏[A002180(n+2)-A025866(A028240(n))]`
-/

namespace A079854.P17276337264891750571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 2) - A025866 (A028240 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079854.P17276337264891750571

/-! ## A079854.P2733412275967630808

`∏[∑[A305193(A286910(n))]]`
-/

namespace A079854.P2733412275967630808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (A286910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079854.P2733412275967630808

/-!
# A079857: Number of positions that are exactly n moves from the starting position in the Rashkey Type 2 puzzle.

The programs for A079857, there is no canonical definition to state claims against.
-/

/-! ## A079857.P15534417273150210335

`A097992(A297988(n+1))`
-/

namespace A079857.P15534417273150210335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A297988 (n + 1)).toNat

end

end A079857.P15534417273150210335

/-! ## A079857.P9379895608734699951

`A154958(or(1, A297988(n+1)))`
-/

namespace A079857.P9379895608734699951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (Int.lor 1 (A297988 (n + 1))).toNat

end

end A079857.P9379895608734699951

/-! ## A079857.P2133467585683260495

`A008615(or(5, A297988(n+1)))`
-/

namespace A079857.P2133467585683260495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor 5 (A297988 (n + 1))).toNat

end

end A079857.P2133467585683260495

/-!
# A079858: E.g.f. 1/(cos(2*x) - sin(2*x)).

The programs for A079858, there is no canonical definition to state claims against.
-/

/-! ## A079858.P9609115003089715842

`2^n*A001586(n)`
-/

namespace A079858.P9609115003089715842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001586 n

end

end A079858.P9609115003089715842

/-! ## A079858.P15832095483471863121

`lcm(2^n, A188458(n))`
-/

namespace A079858.P15832095483471863121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A188458 n)

end

end A079858.P15832095483471863121

/-! ## A079858.P6164208608968688825

`lcm(A000079(n), A001586(n))`
-/

namespace A079858.P6164208608968688825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001586 n)

end

end A079858.P6164208608968688825

/-! ## A079858.P9569376957424158495

`abs(A000079(n)*A188458(n))`
-/

namespace A079858.P9569376957424158495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A188458 n|

end

end A079858.P9569376957424158495

/-! ## A079858.P12430065198907462464

`abs(A000079(n)*A212435(n))`
-/

namespace A079858.P12430065198907462464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A212435 n|

end

end A079858.P12430065198907462464

/-! ## A079858.P15576389514981592405

`lcm(sqrt(A000302(n)), A212435(n))`
-/

namespace A079858.P15576389514981592405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.sqrt (A000302 n : ℝ))) (A212435 n)

end

end A079858.P15576389514981592405

/-!
# A079859: a(n) = n*2^(n-4).

The programs for A079859, the canonical program `A079859.P8533235210470470455` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079859 has offset 4).

The definition of A079859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)*2^n` (program `A079859.P8533235210470470455`, by `A079859.P8533235210470470455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079859.P8533235210470470455

`(n+4)*2^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079859

/-- `(n+4)*2^n` -/
def P8533235210470470455.Spec : Prop :=
  ∀ n, (P8533235210470470455.a n : ℤ) = A079859 (n + 4)

theorem P8533235210470470455.correct : P8533235210470470455.Spec := by
  intro n
  simp only [A079859, Nat.add_sub_cancel]

end A079859

/-! ## A079859.P9998928775850184495

`4*a(n-1)-4*a(n-2)` with `a(0)=4, a(1)=10`
-/

namespace A079859.P9998928775850184495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A079859.P9998928775850184495

namespace A079859

/-- `4*a(n-1)-4*a(n-2)` -/
def P9998928775850184495.Spec : Prop :=
  ∀ n, P9998928775850184495.a n = A079859 (n + 4)

theorem P9998928775850184495.correct : P9998928775850184495.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079859, Nat.add_sub_cancel, A079859.P9998928775850184495.a, A079859.P8533235210470470455.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079859, Nat.add_sub_cancel, A079859.P9998928775850184495.a, A079859.P8533235210470470455.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079859

/-! ## A079859.P7315535907372866464

`ogf((4-6x)/(1-4x+4x^2))`
-/

namespace A079859.P7315535907372866464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6] [1, -4, 4] n

end

end A079859.P7315535907372866464

namespace A079859

/-- `ogf((4-6x)/(1-4x+4x^2))` -/
def P7315535907372866464.Spec : Prop :=
  ∀ n, P7315535907372866464.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P5783310188366498607

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=4, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A079859.P5783310188366498607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A079859.P5783310188366498607

namespace A079859

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P5783310188366498607.Spec : Prop :=
  ∀ n, P5783310188366498607.a n = A079859 (n + 4)

theorem P5783310188366498607.correct : P5783310188366498607.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079859, Nat.add_sub_cancel, A079859.P5783310188366498607.a, A079859.P8533235210470470455.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079859, Nat.add_sub_cancel, A079859.P5783310188366498607.a, A079859.P8533235210470470455.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079859

/-! ## A079859.P15852822705934411273

`a(n-1)+a(n-1)+2^n` with `a(0)=4`
-/

namespace A079859.P15852822705934411273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ n)

end

end A079859.P15852822705934411273

namespace A079859

/-- `a(n-1)+a(n-1)+2^n` -/
def P15852822705934411273.Spec : Prop :=
  ∀ n, (P15852822705934411273.a n : ℤ) = A079859 (n + 4)

theorem P15852822705934411273.correct : P15852822705934411273.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A079859, Nat.add_sub_cancel, A079859.P15852822705934411273.a, A079859.P8533235210470470455.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A079859, Nat.add_sub_cancel, A079859.P15852822705934411273.a, A079859.P8533235210470470455.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079859

/-! ## A079859.P7295498481359053241

`A087447(n+2)`
-/

namespace A079859.P7295498481359053241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 2)

end

end A079859.P7295498481359053241

namespace A079859

/-- `A087447(n+2)` -/
def P7295498481359053241.Spec : Prop :=
  ∀ n, P7295498481359053241.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P13894334859395626396

`A129953(n+2)`
-/

namespace A079859.P13894334859395626396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (n + 2)

end

end A079859.P13894334859395626396

namespace A079859

/-- `A129953(n+2)` -/
def P13894334859395626396.Spec : Prop :=
  ∀ n, P13894334859395626396.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P8138472743780517265

`A262258(2*(n+2))`
-/

namespace A079859.P8138472743780517265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (2 * (n + 2))

end

end A079859.P8138472743780517265

namespace A079859

/-- `A262258(2*(n+2))` -/
def P8138472743780517265.Spec : Prop :=
  ∀ n, P8138472743780517265.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P382472687416354665

`abs(Δ[2*A084219(n)])`
-/

namespace A079859.P382472687416354665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A079859.P382472687416354665

namespace A079859

/-- `abs(Δ[2*A084219(n)])` -/
def P382472687416354665.Spec : Prop :=
  ∀ n, P382472687416354665.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P3637586475050082006

`record[A087447(abs(2-n))]`
-/

namespace A079859.P3637586475050082006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079859.P3637586475050082006

namespace A079859

/-- `record[A087447(abs(2-n))]` -/
def P3637586475050082006.Spec : Prop :=
  ∀ n, P3637586475050082006.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P116070223449610198

`record[A129953(abs(2-n))]`
-/

namespace A079859.P116070223449610198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079859.P116070223449610198

namespace A079859

/-- `record[A129953(abs(2-n))]` -/
def P116070223449610198.Spec : Prop :=
  ∀ n, P116070223449610198.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P18256854844638185007

`∑[A129954(n+1)]+1`
-/

namespace A079859.P18256854844638185007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079859.P18256854844638185007

namespace A079859

/-- `∑[A129954(n+1)]+1` -/
def P18256854844638185007.Spec : Prop :=
  ∀ n, P18256854844638185007.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P14645712455904894603

`∑[A131352(n+1)]+2`
-/

namespace A079859.P14645712455904894603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A079859.P14645712455904894603

namespace A079859

/-- `∑[A131352(n+1)]+2` -/
def P14645712455904894603.Spec : Prop :=
  ∀ n, P14645712455904894603.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P5437498532326568244

`A134311(n+1)+2+n`
-/

namespace A079859.P5437498532326568244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134311 (n + 1) + 2 + (n : ℤ)

end

end A079859.P5437498532326568244

namespace A079859

/-- `A134311(n+1)+2+n` -/
def P5437498532326568244.Spec : Prop :=
  ∀ n, P5437498532326568244.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P17226792510772903377

`A360951(n+2)+n+3`
-/

namespace A079859.P17226792510772903377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360951 (n + 2) + (n + 3 : ℤ)

end

end A079859.P17226792510772903377

namespace A079859

/-- `A360951(n+2)+n+3` -/
def P17226792510772903377.Spec : Prop :=
  ∀ n, P17226792510772903377.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P7823106525834441642

`A001792(n+1)+2^n`
-/

namespace A079859.P7823106525834441642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) + (2 ^ n : ℤ)

end

end A079859.P7823106525834441642

namespace A079859

/-- `A001792(n+1)+2^n` -/
def P7823106525834441642.Spec : Prop :=
  ∀ n, P7823106525834441642.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P4796575737638626262

`A036289(n)+2^(n+2)`
-/

namespace A079859.P4796575737638626262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + (2 ^ (n + 2) : ℤ)

end

end A079859.P4796575737638626262

namespace A079859

/-- `A036289(n)+2^(n+2)` -/
def P4796575737638626262.Spec : Prop :=
  ∀ n, P4796575737638626262.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P2404439418561446383

`A045623(n+2)-2^n`
-/

namespace A079859.P2404439418561446383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 2) - (2 ^ n : ℤ)

end

end A079859.P2404439418561446383

namespace A079859

/-- `A045623(n+2)-2^n` -/
def P2404439418561446383.Spec : Prop :=
  ∀ n, P2404439418561446383.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P6528363161816921087

`A049610(n+3)+2^n`
-/

namespace A079859.P6528363161816921087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 3) + (2 ^ n : ℤ)

end

end A079859.P6528363161816921087

namespace A079859

/-- `A049610(n+3)+2^n` -/
def P6528363161816921087.Spec : Prop :=
  ∀ n, P6528363161816921087.a n = A079859 (n + 4)

end A079859

/-! ## A079859.P17775988422198311834

`A155559(n)+2*a(n-1)` with `a(0)=4`
-/

namespace A079859.P17775988422198311834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A155559 n + 2 * a (n - 1)

end

end A079859.P17775988422198311834

namespace A079859

/-- `A155559(n)+2*a(n-1)` -/
def P17775988422198311834.Spec : Prop :=
  ∀ n, P17775988422198311834.a n = A079859 (n + 4)

end A079859

/-!
# A079861: a(n) is the number of occurrences of 7's in the palindromic compositions of 2*n-1, or also, the number of occurrences of 8's in the palindromic compositions of 2*n.

The programs for A079861, the canonical program `A079861.P10223645142706720921` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079861 has offset 8).

The definition of A079861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079861.P4268163323832546383

`(2+n+8)*2^n`
-/

namespace A079861.P4268163323832546383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 + (n + 8)) * 2 ^ n

end

end A079861.P4268163323832546383

namespace A079861

/-- `(2+n+8)*2^n` -/
def P4268163323832546383.Spec : Prop :=
  ∀ n, (P4268163323832546383.a n : ℤ) = A079861 (n + 8)

theorem P4268163323832546383.correct : P4268163323832546383.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079861, Nat.add_sub_cancel, A079861.P4268163323832546383.a, A079861.P10223645142706720921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079861, Nat.add_sub_cancel, A079861.P4268163323832546383.a, A079861.P10223645142706720921.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079861

/-! ## A079861.P10223645142706720921

`4*a(n-1)-4*a(n-2)` with `a(0)=10, a(1)=22`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079861

/-- `4*a(n-1)-4*a(n-2)` -/
def P10223645142706720921.Spec : Prop :=
  ∀ n, P10223645142706720921.a n = A079861 (n + 8)

theorem P10223645142706720921.correct : P10223645142706720921.Spec := by
  intro n
  simp only [A079861, Nat.add_sub_cancel]

end A079861

/-! ## A079861.P6308008045031213568

`ogf((10-18x)/(1-4x+4x^2))`
-/

namespace A079861.P6308008045031213568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -18] [1, -4, 4] n

end

end A079861.P6308008045031213568

namespace A079861

/-- `ogf((10-18x)/(1-4x+4x^2))` -/
def P6308008045031213568.Spec : Prop :=
  ∀ n, P6308008045031213568.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P515295256379968208

`a(n-1)+a(n-1)+2^n` with `a(0)=10`
-/

namespace A079861.P515295256379968208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ n)

end

end A079861.P515295256379968208

namespace A079861

/-- `a(n-1)+a(n-1)+2^n` -/
def P515295256379968208.Spec : Prop :=
  ∀ n, (P515295256379968208.a n : ℤ) = A079861 (n + 8)

end A079861

/-! ## A079861.P8599859529909077120

`A267226(n+2)+1`
-/

namespace A079861.P8599859529909077120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267226 (n + 2) + 1

end

end A079861.P8599859529909077120

namespace A079861

/-- `A267226(n+2)+1` -/
def P8599859529909077120.Spec : Prop :=
  ∀ n, P8599859529909077120.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P11617614090680908659

`A109975(n+3)+2^n`
-/

namespace A079861.P11617614090680908659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 3) + (2 ^ n : ℤ)

end

end A079861.P11617614090680908659

namespace A079861

/-- `A109975(n+3)+2^n` -/
def P11617614090680908659.Spec : Prop :=
  ∀ n, P11617614090680908659.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P10280042143971682292

`A079862(n)-2^(n+3)`
-/

namespace A079861.P10280042143971682292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079862 (n + 10) - (2 ^ (n + 3) : ℤ)

end

end A079861.P10280042143971682292

namespace A079861

/-- `A079862(n)-2^(n+3)` -/
def P10280042143971682292.Spec : Prop :=
  ∀ n, P10280042143971682292.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P1545169624515736654

`A111297(n+3)-2^n`
-/

namespace A079861.P1545169624515736654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (n + 3) - (2 ^ n : ℤ)

end

end A079861.P1545169624515736654

namespace A079861

/-- `A111297(n+3)-2^n` -/
def P1545169624515736654.Spec : Prop :=
  ∀ n, P1545169624515736654.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P16324890681661739453

`A129955(n+2)+2^(n+1)`
-/

namespace A079861.P16324890681661739453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A079861.P16324890681661739453

namespace A079861

/-- `A129955(n+2)+2^(n+1)` -/
def P16324890681661739453.Spec : Prop :=
  ∀ n, P16324890681661739453.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P3067042134940474847

`A129954(n+2)+2^(n+2)`
-/

namespace A079861.P3067042134940474847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A079861.P3067042134940474847

namespace A079861

/-- `A129954(n+2)+2^(n+2)` -/
def P3067042134940474847.Spec : Prop :=
  ∀ n, P3067042134940474847.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P1726456820850233077

`A131352(n+2)+2^(n+2)`
-/

namespace A079861.P1726456820850233077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A079861.P1726456820850233077

namespace A079861

/-- `A131352(n+2)+2^(n+2)` -/
def P1726456820850233077.Spec : Prop :=
  ∀ n, P1726456820850233077.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P1894387474469482580

`A086225(n)+A000337(n)`
-/

namespace A079861.P1894387474469482580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086225 n + A000337 n

end

end A079861.P1894387474469482580

namespace A079861

/-- `A086225(n)+A000337(n)` -/
def P1894387474469482580.Spec : Prop :=
  ∀ n, P1894387474469482580.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P17097359882980885323

`A159697(n)+A001792(n)`
-/

namespace A079861.P17097359882980885323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 n + A001792 n

end

end A079861.P17097359882980885323

namespace A079861

/-- `A159697(n)+A001792(n)` -/
def P17097359882980885323.Spec : Prop :=
  ∀ n, P17097359882980885323.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P16708603057978330010

`A087323(n)+A083705(n)`
-/

namespace A079861.P16708603057978330010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A083705 n

end

end A079861.P16708603057978330010

namespace A079861

/-- `A087323(n)+A083705(n)` -/
def P16708603057978330010.Spec : Prop :=
  ∀ n, P16708603057978330010.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P13394153212015220852

`A005009(n)+A001792(n+1)`
-/

namespace A079861.P13394153212015220852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n + A001792 (n + 1)

end

end A079861.P13394153212015220852

namespace A079861

/-- `A005009(n)+A001792(n+1)` -/
def P13394153212015220852.Spec : Prop :=
  ∀ n, P13394153212015220852.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P4565815263302075830

`A005010(n)+A001787(n+1)`
-/

namespace A079861.P4565815263302075830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n + A001787 (n + 1)

end

end A079861.P4565815263302075830

namespace A079861

/-- `A005010(n)+A001787(n+1)` -/
def P4565815263302075830.Spec : Prop :=
  ∀ n, P4565815263302075830.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P4847345294527103424

`A036289(n)+A020714(n+1)`
-/

namespace A079861.P4847345294527103424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A020714 (n + 1)

end

end A079861.P4847345294527103424

namespace A079861

/-- `A036289(n)+A020714(n+1)` -/
def P4847345294527103424.Spec : Prop :=
  ∀ n, P4847345294527103424.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P3223914273868538371

`A083575(n)+A047859(n+1)`
-/

namespace A079861.P3223914273868538371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n + A047859 (n + 1)

end

end A079861.P3223914273868538371

namespace A079861

/-- `A083575(n)+A047859(n+1)` -/
def P3223914273868538371.Spec : Prop :=
  ∀ n, P3223914273868538371.a n = A079861 (n + 8)

end A079861

/-! ## A079861.P13703382830870212597

`A153894(n+1)+A002064(n)`
-/

namespace A079861.P13703382830870212597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (n + 1) + A002064 n

end

end A079861.P13703382830870212597

namespace A079861

/-- `A153894(n+1)+A002064(n)` -/
def P13703382830870212597.Spec : Prop :=
  ∀ n, P13703382830870212597.a n = A079861 (n + 8)

end A079861

/-!
# A079862: a(i) = the number of occurrences of 9's in the palindromic compositions of n=2*i-1 = the number of occurrences of 10's in the palindromic compositions of n=2*i.

The programs for A079862, the canonical program `A079862.P5079929542202207342` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079862 has offset 10).

The definition of A079862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079862.P4309856277613289571

`(n+18)*2^n`
-/

namespace A079862.P4309856277613289571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 18) * 2 ^ n

end

end A079862.P4309856277613289571

namespace A079862

/-- `(n+18)*2^n` -/
def P4309856277613289571.Spec : Prop :=
  ∀ n, (P4309856277613289571.a n : ℤ) = A079862 (n + 10)

theorem P4309856277613289571.correct : P4309856277613289571.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079862, Nat.add_sub_cancel, A079862.P4309856277613289571.a, A079862.P5079929542202207342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079862, Nat.add_sub_cancel, A079862.P4309856277613289571.a, A079862.P5079929542202207342.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079862

/-! ## A079862.P5079929542202207342

`4*a(n-1)-4*a(n-2)` with `a(0)=18, a(1)=38`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079862

/-- `4*a(n-1)-4*a(n-2)` -/
def P5079929542202207342.Spec : Prop :=
  ∀ n, P5079929542202207342.a n = A079862 (n + 10)

theorem P5079929542202207342.correct : P5079929542202207342.Spec := by
  intro n
  simp only [A079862, Nat.add_sub_cancel]

end A079862

/-! ## A079862.P12984847275690273177

`A159696(n+1)+2^n`
-/

namespace A079862.P12984847275690273177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159696 (n + 1) + (2 ^ n : ℤ)

end

end A079862.P12984847275690273177

namespace A079862

/-- `A159696(n+1)+2^n` -/
def P12984847275690273177.Spec : Prop :=
  ∀ n, P12984847275690273177.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P11904404595064962178

`A159697(n+1)-2^n`
-/

namespace A079862.P11904404595064962178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 (n + 1) - (2 ^ n : ℤ)

end

end A079862.P11904404595064962178

namespace A079862

/-- `A159697(n+1)-2^n` -/
def P11904404595064962178.Spec : Prop :=
  ∀ n, P11904404595064962178.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P13830830808403692744

`A000079(n)+2*a(n-1)` with `a(0)=18`
-/

namespace A079862.P13830830808403692744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  A000079 n + 2 * a (n - 1)

end

end A079862.P13830830808403692744

namespace A079862

/-- `A000079(n)+2*a(n-1)` -/
def P13830830808403692744.Spec : Prop :=
  ∀ n, P13830830808403692744.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P12686165402258046549

`A198276(n)+A000337(n)`
-/

namespace A079862.P12686165402258046549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198276 n + A000337 n

end

end A079862.P12686165402258046549

namespace A079862

/-- `A198276(n)+A000337(n)` -/
def P12686165402258046549.Spec : Prop :=
  ∀ n, P12686165402258046549.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P12465325937843403751

`A168415(n)+A048469(n+1)`
-/

namespace A079862.P12465325937843403751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 n + A048469 (n + 1)

end

end A079862.P12465325937843403751

namespace A079862

/-- `A168415(n)+A048469(n+1)` -/
def P12465325937843403751.Spec : Prop :=
  ∀ n, P12465325937843403751.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P3147305956391116868

`A175805(n)-A172160(n+2)`
-/

namespace A079862.P3147305956391116868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175805 n - A172160 (n + 2)

end

end A079862.P3147305956391116868

namespace A079862

/-- `A175805(n)-A172160(n+2)` -/
def P3147305956391116868.Spec : Prop :=
  ∀ n, P3147305956391116868.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P4154590606133366198

`A001792(n)+A079863(n)/2`
-/

namespace A079862.P4154590606133366198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001792 n : ℚ) + (A079863 (n + 12) : ℚ) / 2

end

end A079862.P4154590606133366198

namespace A079862

/-- `A001792(n)+A079863(n)/2` -/
def P4154590606133366198.Spec : Prop :=
  ∀ n, P4154590606133366198.a n = (A079862 (n + 10) : ℚ)

end A079862

/-! ## A079862.P9660812465246131077

`A196410(n+5)+A005029(n)`
-/

namespace A079862.P9660812465246131077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196410 (n + 5) + A005029 n

end

end A079862.P9660812465246131077

namespace A079862

/-- `A196410(n+5)+A005029(n)` -/
def P9660812465246131077.Spec : Prop :=
  ∀ n, P9660812465246131077.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P13568142191189152616

`A099035(n+1)+A020737(n+2)`
-/

namespace A079862.P13568142191189152616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099035 (n + 1) + A020737 (n + 2)

end

end A079862.P13568142191189152616

namespace A079862

/-- `A099035(n+1)+A020737(n+2)` -/
def P13568142191189152616.Spec : Prop :=
  ∀ n, P13568142191189152616.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P7549493444309337626

`A171497(n+2)+A057711(n+2)`
-/

namespace A079862.P7549493444309337626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 (n + 2) + A057711 (n + 2)

end

end A079862.P7549493444309337626

namespace A079862

/-- `A171497(n+2)+A057711(n+2)` -/
def P7549493444309337626.Spec : Prop :=
  ∀ n, P7549493444309337626.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P12002870122676124288

`A005010(n+1)+2*A001787(n)`
-/

namespace A079862.P12002870122676124288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 (n + 1) + 2 * A001787 n

end

end A079862.P12002870122676124288

namespace A079862

/-- `A005010(n+1)+2*A001787(n)` -/
def P12002870122676124288.Spec : Prop :=
  ∀ n, P12002870122676124288.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P11486416213444697625

`A081808(n+1)+A078836(n+6)`
-/

namespace A079862.P11486416213444697625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081808 (n + 1) + A078836 (n + 6)

end

end A079862.P11486416213444697625

namespace A079862

/-- `A081808(n+1)+A078836(n+6)` -/
def P11486416213444697625.Spec : Prop :=
  ∀ n, P11486416213444697625.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P561857183499681926

`A079861(n+8)+A020707(n+1)`
-/

namespace A079862.P561857183499681926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079861 (n + 8) + A020707 (n + 1)

end

end A079862.P561857183499681926

namespace A079862

/-- `A079861(n+8)+A020707(n+1)` -/
def P561857183499681926.Spec : Prop :=
  ∀ n, P561857183499681926.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P11454330820432665364

`A005009(n+1)+2*A045623(n+1)`
-/

namespace A079862.P11454330820432665364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 (n + 1) + 2 * A045623 (n + 1)

end

end A079862.P11454330820432665364

namespace A079862

/-- `A005009(n+1)+2*A045623(n+1)` -/
def P11454330820432665364.Spec : Prop :=
  ∀ n, P11454330820432665364.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P14656918554229571623

`A159694(n+1)+A159694(n)-A001792(n)`
-/

namespace A079862.P14656918554229571623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 (n + 1) + (A159694 n - A001792 n)

end

end A079862.P14656918554229571623

namespace A079862

/-- `A159694(n+1)+A159694(n)-A001792(n)` -/
def P14656918554229571623.Spec : Prop :=
  ∀ n, P14656918554229571623.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P8091007831821664670

`A000079(n+1)+A159695(n+1)+A000079(n)`
-/

namespace A079862.P8091007831821664670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A159695 (n + 1) + A000079 n)

end

end A079862.P8091007831821664670

namespace A079862

/-- `A000079(n+1)+A159695(n+1)+A000079(n)` -/
def P8091007831821664670.Spec : Prop :=
  ∀ n, P8091007831821664670.a n = A079862 (n + 10)

end A079862

/-! ## A079862.P6049962673952826843

`A045623(n+1)+A159696(n+1)-A001792(n)`
-/

namespace A079862.P6049962673952826843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) + (A159696 (n + 1) - A001792 n)

end

end A079862.P6049962673952826843

namespace A079862

/-- `A045623(n+1)+A159696(n+1)-A001792(n)` -/
def P6049962673952826843.Spec : Prop :=
  ∀ n, P6049962673952826843.a n = A079862 (n + 10)

end A079862

/-!
# A079863: a(n) is the number of occurrences of 11s in the palindromic compositions of m=2*n-1 = the number of occurrences of 12s in the palindromic compositions of m=2*n.

The programs for A079863, the canonical program `A079863.P5288835622497074507` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079863 has offset 12).

The definition of A079863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079863.P14720455187342843410

`(n+34)*2^n`
-/

namespace A079863.P14720455187342843410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 34) * 2 ^ n

end

end A079863.P14720455187342843410

namespace A079863

/-- `(n+34)*2^n` -/
def P14720455187342843410.Spec : Prop :=
  ∀ n, (P14720455187342843410.a n : ℤ) = A079863 (n + 12)

theorem P14720455187342843410.correct : P14720455187342843410.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079863, Nat.add_sub_cancel, A079863.P14720455187342843410.a, A079863.P5288835622497074507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079863, Nat.add_sub_cancel, A079863.P14720455187342843410.a, A079863.P5288835622497074507.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079863

/-! ## A079863.P5288835622497074507

`4*a(n-1)-4*a(n-2)` with `a(0)=34, a(1)=70`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079863

/-- `4*a(n-1)-4*a(n-2)` -/
def P5288835622497074507.Spec : Prop :=
  ∀ n, P5288835622497074507.a n = A079863 (n + 12)

theorem P5288835622497074507.correct : P5288835622497074507.Spec := by
  intro n
  simp only [A079863, Nat.add_sub_cancel]

end A079863

/-! ## A079863.P4739999102092125024

`A159697(n+1)+A079862(n)-A001792(n+1)`
-/

namespace A079863.P4739999102092125024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 (n + 1) + (A079862 (n + 10) - A001792 (n + 1))

end

end A079863.P4739999102092125024

namespace A079863

/-- `A159697(n+1)+A079862(n)-A001792(n+1)` -/
def P4739999102092125024.Spec : Prop :=
  ∀ n, P4739999102092125024.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P2785035174482534400

`A159697(n+1)+A159697(n+1)-A079859(n+4)`
-/

namespace A079863.P2785035174482534400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 (n + 1) + (A159697 (n + 1) - A079859 (n + 4))

end

end A079863.P2785035174482534400

namespace A079863

/-- `A159697(n+1)+A159697(n+1)-A079859(n+4)` -/
def P2785035174482534400.Spec : Prop :=
  ∀ n, P2785035174482534400.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P16998777079962532586

`A079862(n+1)-A087447(n+2)`
-/

namespace A079863.P16998777079962532586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079862 (n + 1 + 10) - A087447 (n + 2)

end

end A079863.P16998777079962532586

namespace A079863

/-- `A079862(n+1)-A087447(n+2)` -/
def P16998777079962532586.Spec : Prop :=
  ∀ n, P16998777079962532586.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P14185066149734779481

`A159697(n+2)-A129954(n+2)`
-/

namespace A079863.P14185066149734779481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 (n + 2) - A129954 (n + 2)

end

end A079863.P14185066149734779481

namespace A079863

/-- `A159697(n+2)-A129954(n+2)` -/
def P14185066149734779481.Spec : Prop :=
  ∀ n, P14185066149734779481.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P17470091374279287728

`A079862(n+1)-A079859(n+4)`
-/

namespace A079863.P17470091374279287728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079862 (n + 1 + 10) - A079859 (n + 4)

end

end A079863.P17470091374279287728

namespace A079863

/-- `A079862(n+1)-A079859(n+4)` -/
def P17470091374279287728.Spec : Prop :=
  ∀ n, P17470091374279287728.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P8922099374323398666

`A159697(n+2)-A078836(n+6)`
-/

namespace A079863.P8922099374323398666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 (n + 2) - A078836 (n + 6)

end

end A079863.P8922099374323398666

namespace A079863

/-- `A159697(n+2)-A078836(n+6)` -/
def P8922099374323398666.Spec : Prop :=
  ∀ n, P8922099374323398666.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P16980398335701851751

`A079862(n+1)+A079862(n)-A079861(n+9)`
-/

namespace A079863.P16980398335701851751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079862 (n + 1 + 10) + (A079862 (n + 10) - A079861 (n + 9))

end

end A079863.P16980398335701851751

namespace A079863

/-- `A079862(n+1)+A079862(n)-A079861(n+9)` -/
def P16980398335701851751.Spec : Prop :=
  ∀ n, P16980398335701851751.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P188174263615847995

`A079862(n+1)-A045623(n+1)-A045623(n+1)`
-/

namespace A079863.P188174263615847995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079862 (n + 1 + 10) - A045623 (n + 1) - A045623 (n + 1)

end

end A079863.P188174263615847995

namespace A079863

/-- `A079862(n+1)-A045623(n+1)-A045623(n+1)` -/
def P188174263615847995.Spec : Prop :=
  ∀ n, P188174263615847995.a n = A079863 (n + 12)

end A079863

/-! ## A079863.P6320589806157450313

`A001787(n+1)*A010986(n+1)/A010986(n)`
-/

namespace A079863.P6320589806157450313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) * A010986 (n + 1 + 33) : ℚ) / (A010986 (n + 33) : ℚ)

end

end A079863.P6320589806157450313

namespace A079863

/-- `A001787(n+1)*A010986(n+1)/A010986(n)` -/
def P6320589806157450313.Spec : Prop :=
  ∀ n, P6320589806157450313.a n = (A079863 (n + 12) : ℚ)

end A079863

/-!
# A079864: Number of positions that are exactly n moves from the starting position in the Rashkey Type 2 puzzle.

The programs for A079864, there is no canonical definition to state claims against.
-/

/-! ## A079864.P17804334867264934596

`A001906(n)+A000005(A070897(2*n+1))`
-/

namespace A079864.P17804334867264934596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + A000005 (A070897 (2 * n + 1)).toNat

end

end A079864.P17804334867264934596

/-! ## A079864.P656842900135152126

`A112325(A084787(n))`
-/

namespace A079864.P656842900135152126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A084787 n).toNat

end

end A079864.P656842900135152126

/-! ## A079864.P10487162273288535231

`A249728(A150959(n))`
-/

namespace A079864.P10487162273288535231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A150959 n).toNat

end

end A079864.P10487162273288535231

/-!
# A079866: a(1)=1 and for n>1: floor(n^(1/Omega(n))), where Omega(n) is the total number of prime factors of n (A001222).

The programs for A079866, the canonical program `A079866.P9611369517467576843` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079866 has offset 1).

The definition of A079866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079866.P9611369517467576843

`floor(root(n+1, ∑{e}[abs(1-n)+2, #]))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079866

/-- `floor(root(n+1, ∑{e}[abs(1-n)+2, #]))` -/
def P9611369517467576843.Spec : Prop :=
  ∀ n, P9611369517467576843.a n = A079866 (n + 1)

theorem P9611369517467576843.correct : P9611369517467576843.Spec := by
  intro n
  simp only [A079866, Nat.add_sub_cancel]

end A079866

/-! ## A079866.P10976045377902766858

`floor(root(n+1, A086436(n+1)))`
-/

namespace A079866.P10976045377902766858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (A086436 (n + 1) : ℝ))⌋

end

end A079866.P10976045377902766858

namespace A079866

/-- `floor(root(n+1, A086436(n+1)))` -/
def P10976045377902766858.Spec : Prop :=
  ∀ n, P10976045377902766858.a n = A079866 (n + 1)

end A079866

/-! ## A079866.P13973439681523291984

`floor(root(n+1, A252736(n+1)+1))`
-/

namespace A079866.P13973439681523291984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (A252736 (n + 1) + 1 : ℝ))⌋

end

end A079866.P13973439681523291984

namespace A079866

/-- `floor(root(n+1, A252736(n+1)+1))` -/
def P13973439681523291984.Spec : Prop :=
  ∀ n, P13973439681523291984.a n = A079866 (n + 1)

end A079866

/-! ## A079866.P301026901895716115

`floor(root(n+1, A001222(abs(1-n)+2)))`
-/

namespace A079866.P301026901895716115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (A001222 (|1 - (n : ℤ)| + 2).toNat : ℝ))⌋

end

end A079866.P301026901895716115

namespace A079866

/-- `floor(root(n+1, A001222(abs(1-n)+2)))` -/
def P301026901895716115.Spec : Prop :=
  ∀ n, P301026901895716115.a n = A079866 (n + 1)

end A079866

/-! ## A079866.P17384347828988114278

`A079870(n+1)-A143731(n+1)`
-/

namespace A079866.P17384347828988114278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079870 (n + 1) - A143731 (n + 1)

end

end A079866.P17384347828988114278

namespace A079866

/-- `A079870(n+1)-A143731(n+1)` -/
def P17384347828988114278.Spec : Prop :=
  ∀ n, P17384347828988114278.a n = A079866 (n + 1)

end A079866

/-! ## A079866.P4174679885069330954

`A079870(n+1)-abs(A079872(n+1))`
-/

namespace A079866.P4174679885069330954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079870 (n + 1) - |A079872 (n + 1)|

end

end A079866.P4174679885069330954

namespace A079866

/-- `A079870(n+1)-abs(A079872(n+1))` -/
def P4174679885069330954.Spec : Prop :=
  ∀ n, P4174679885069330954.a n = A079866 (n + 1)

end A079866

/-! ## A079866.P13358489306236498129

`A079870(n+1)-A001222(A076820(n+1))`
-/

namespace A079866.P13358489306236498129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079870 (n + 1) - A001222 (A076820 (n + 1)).toNat

end

end A079866.P13358489306236498129

namespace A079866

/-- `A079870(n+1)-A001222(A076820(n+1))` -/
def P13358489306236498129.Spec : Prop :=
  ∀ n, P13358489306236498129.a n = A079866 (n + 1)

end A079866

/-!
# A079867: a(1)=1 and for n>1: floor(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

The programs for A079867, the canonical program `A079867.P4677279557966897648` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079867 has offset 1).

The definition of A079867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079867.P4677279557966897648

`A079866(n+1)^∑{e}[n+1, #]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079867

/-- `A079866(n+1)^∑{e}[n+1, #]` -/
def P4677279557966897648.Spec : Prop :=
  ∀ n, P4677279557966897648.a n = A079867 (n + 1)

theorem P4677279557966897648.correct : P4677279557966897648.Spec := by
  intro n
  simp only [A079867, Nat.add_sub_cancel]

end A079867

/-! ## A079867.P10437529292815968948

`A079866(n+1)^Δ[A022559(n)]`
-/

namespace A079867.P10437529292815968948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079866 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A079867.P10437529292815968948

namespace A079867

/-- `A079866(n+1)^Δ[A022559(n)]` -/
def P10437529292815968948.Spec : Prop :=
  ∀ n, P10437529292815968948.a n = (A079867 (n + 1) : ℚ)

end A079867

/-! ## A079867.P451202311903100835

`A079866(n+1)^A001222(n+1)`
-/

namespace A079867.P451202311903100835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079866 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A079867.P451202311903100835

namespace A079867

/-- `A079866(n+1)^A001222(n+1)` -/
def P451202311903100835.Spec : Prop :=
  ∀ n, P451202311903100835.a n = (A079867 (n + 1) : ℚ)

end A079867

/-! ## A079867.P4666510961811753438

`A079866(n+1)^A086436(n+1)`
-/

namespace A079867.P4666510961811753438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079866 (n + 1) : ℚ) ^ (A086436 (n + 1) : ℤ)

end

end A079867.P4666510961811753438

namespace A079867

/-- `A079866(n+1)^A086436(n+1)` -/
def P4666510961811753438.Spec : Prop :=
  ∀ n, P4666510961811753438.a n = (A079867 (n + 1) : ℚ)

end A079867

/-! ## A079867.P13404178464383292984

`sqrt(A079866(n+1)^A255201(n+1))`
-/

namespace A079867.P13404178464383292984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A079866 (n + 1) : ℚ) ^ (A255201 (n + 1) : ℤ) : ℝ)

end

end A079867.P13404178464383292984

namespace A079867

/-- `sqrt(A079866(n+1)^A255201(n+1))` -/
def P13404178464383292984.Spec : Prop :=
  ∀ n, P13404178464383292984.a n = (A079867 (n + 1) : ℝ)

end A079867

/-! ## A079867.P3758594994341936654

`A061142(n+1)^log2(A079866(n+1))`
-/

namespace A079867.P3758594994341936654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℝ) ^ (Real.logb 2 (A079866 (n + 1) : ℝ))

end

end A079867.P3758594994341936654

namespace A079867

/-- `A061142(n+1)^log2(A079866(n+1))` -/
def P3758594994341936654.Spec : Prop :=
  ∀ n, P3758594994341936654.a n = (A079867 (n + 1) : ℝ)

end A079867

/-! ## A079867.P3844585954133061076

`floor(root(n+1, A086436(n+1)))^A001222(n+1)`
-/

namespace A079867.P3844585954133061076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) ^ (1 / (A086436 (n + 1) : ℝ))⌋ : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A079867.P3844585954133061076

namespace A079867

/-- `floor(root(n+1, A086436(n+1)))^A001222(n+1)` -/
def P3844585954133061076.Spec : Prop :=
  ∀ n, P3844585954133061076.a n = (A079867 (n + 1) : ℚ)

end A079867

/-! ## A079867.P9594077057614812625

`A079866(n+1)^∑{d}[n+1, n²%A014963(#)]`
-/

namespace A079867.P9594077057614812625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079866 (n + 1) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), Int.tmod (n ^ 2 : ℤ) (A014963 d) : ℤ)

end

end A079867.P9594077057614812625

namespace A079867

/-- `A079866(n+1)^∑{d}[n+1, n²%A014963(#)]` -/
def P9594077057614812625.Spec : Prop :=
  ∀ n, P9594077057614812625.a n = (A079867 (n + 1) : ℚ)

end A079867

/-! ## A079867.P1032559969321136826

`A079866(n+1)^(A000005(∏{e}[n+1, 2^#])-1)`
-/

namespace A079867.P1032559969321136826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079866 (n + 1) : ℚ) ^ (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1 : ℤ)

end

end A079867.P1032559969321136826

namespace A079867

/-- `A079866(n+1)^(A000005(∏{e}[n+1, 2^#])-1)` -/
def P1032559969321136826.Spec : Prop :=
  ∀ n, P1032559969321136826.a n = (A079867 (n + 1) : ℚ)

end A079867

/-! ## A079867.P11946865846226983936

`floor(root(n+1, A252736(n+1)+1))^A001222(n+1)`
-/

namespace A079867.P11946865846226983936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) ^ (1 / (A252736 (n + 1) + 1 : ℝ))⌋ : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A079867.P11946865846226983936

namespace A079867

/-- `floor(root(n+1, A252736(n+1)+1))^A001222(n+1)` -/
def P11946865846226983936.Spec : Prop :=
  ∀ n, P11946865846226983936.a n = (A079867 (n + 1) : ℚ)

end A079867

/-!
# A079868: a(1)=1 and for n>1: round(n^(1/Omega(n))), where Omega(n) is the total number of prime factors of n (A001222).

The programs for A079868, the canonical program `A079868.P12846795559542579474` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079868 has offset 1).

The definition of A079868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079868.P12846795559542579474

`round(root(n+1, ∑{e}[abs(1-n)+2, #]))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079868

/-- `round(root(n+1, ∑{e}[abs(1-n)+2, #]))` -/
def P12846795559542579474.Spec : Prop :=
  ∀ n, P12846795559542579474.a n = A079868 (n + 1)

theorem P12846795559542579474.correct : P12846795559542579474.Spec := by
  intro n
  simp only [A079868, Nat.add_sub_cancel]

end A079868

/-! ## A079868.P13406314537309462617

`round(root(n+1, A086436(n+1)))`
-/

namespace A079868.P13406314537309462617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (A086436 (n + 1) : ℝ)))

end

end A079868.P13406314537309462617

namespace A079868

/-- `round(root(n+1, A086436(n+1)))` -/
def P13406314537309462617.Spec : Prop :=
  ∀ n, P13406314537309462617.a n = A079868 (n + 1)

end A079868

/-! ## A079868.P18075431367538600437

`round(root(n+1, A252736(n+1)+1))`
-/

namespace A079868.P18075431367538600437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (A252736 (n + 1) + 1 : ℝ)))

end

end A079868.P18075431367538600437

namespace A079868

/-- `round(root(n+1, A252736(n+1)+1))` -/
def P18075431367538600437.Spec : Prop :=
  ∀ n, P18075431367538600437.a n = A079868 (n + 1)

end A079868

/-! ## A079868.P8216879886335304593

`round(root(n+1, A001222(abs(1-n)+2)))`
-/

namespace A079868.P8216879886335304593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (A001222 (|1 - (n : ℤ)| + 2).toNat : ℝ)))

end

end A079868.P8216879886335304593

namespace A079868

/-- `round(root(n+1, A001222(abs(1-n)+2)))` -/
def P8216879886335304593.Spec : Prop :=
  ∀ n, P8216879886335304593.a n = A079868 (n + 1)

end A079868

/-! ## A079868.P14232984006111754048

`root(A079869(n+1), A086436(n+1))`
-/

namespace A079868.P14232984006111754048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A079869 (n + 1) : ℝ) ^ (1 / (A086436 (n + 1) : ℝ))

end

end A079868.P14232984006111754048

namespace A079868

/-- `root(A079869(n+1), A086436(n+1))` -/
def P14232984006111754048.Spec : Prop :=
  ∀ n, P14232984006111754048.a n = (A079868 (n + 1) : ℝ)

end A079868

/-! ## A079868.P11476959524427642837

`∏{e}[A061142(n+1), root(A079869(n+1), #)]`
-/

namespace A079868.P11476959524427642837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A079869 (n + 1) : ℝ) ^ (1 / (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A079868.P11476959524427642837

namespace A079868

/-- `∏{e}[A061142(n+1), root(A079869(n+1), #)]` -/
def P11476959524427642837.Spec : Prop :=
  ∀ n, P11476959524427642837.a n = (A079868 (n + 1) : ℝ)

end A079868

/-! ## A079868.P14353818159846810288

`∏{e}[A068794(n+1), root(A079869(n+1), #)]`
-/

namespace A079868.P14353818159846810288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A079869 (n + 1) : ℝ) ^ (1 / (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A079868.P14353818159846810288

namespace A079868

/-- `∏{e}[A068794(n+1), root(A079869(n+1), #)]` -/
def P14353818159846810288.Spec : Prop :=
  ∀ n, P14353818159846810288.a n = (A079868 (n + 1) : ℝ)

end A079868

/-! ## A079868.P11352129810886597440

`A079866(n+1)+A079869(n+1)%A079866(n+1)`
-/

namespace A079868.P11352129810886597440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (n + 1) + Int.tmod (A079869 (n + 1)) (A079866 (n + 1))

end

end A079868.P11352129810886597440

namespace A079868

/-- `A079866(n+1)+A079869(n+1)%A079866(n+1)` -/
def P11352129810886597440.Spec : Prop :=
  ∀ n, P11352129810886597440.a n = A079868 (n + 1)

end A079868

/-!
# A079869: a(1)=1 and for n>1: round(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

The programs for A079869, the canonical program `A079869.P14772782790936458776` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079869 has offset 1).

The definition of A079869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079869.P14772782790936458776

`A079868(n+1)^∑{e}[n+1, #]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079869

/-- `A079868(n+1)^∑{e}[n+1, #]` -/
def P14772782790936458776.Spec : Prop :=
  ∀ n, P14772782790936458776.a n = A079869 (n + 1)

theorem P14772782790936458776.correct : P14772782790936458776.Spec := by
  intro n
  simp only [A079869, Nat.add_sub_cancel]

end A079869

/-! ## A079869.P5733314018592256791

`round(root(n+1, A086436(n+1)))^∑{e}[n+1, #]`
-/

namespace A079869.P5733314018592256791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (A086436 (n + 1) : ℝ))) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A079869.P5733314018592256791

namespace A079869

/-- `round(root(n+1, A086436(n+1)))^∑{e}[n+1, #]` -/
def P5733314018592256791.Spec : Prop :=
  ∀ n, P5733314018592256791.a n = A079869 (n + 1)

end A079869

/-! ## A079869.P8514647533946005419

`A079868(n+1)^Δ[A022559(n)]`
-/

namespace A079869.P8514647533946005419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079868 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A079869.P8514647533946005419

namespace A079869

/-- `A079868(n+1)^Δ[A022559(n)]` -/
def P8514647533946005419.Spec : Prop :=
  ∀ n, P8514647533946005419.a n = (A079869 (n + 1) : ℚ)

end A079869

/-! ## A079869.P9229593550006776256

`A079868(n+1)^A001222(n+1)`
-/

namespace A079869.P9229593550006776256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079868 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A079869.P9229593550006776256

namespace A079869

/-- `A079868(n+1)^A001222(n+1)` -/
def P9229593550006776256.Spec : Prop :=
  ∀ n, P9229593550006776256.a n = (A079869 (n + 1) : ℚ)

end A079869

/-! ## A079869.P2894703404677138560

`A079868(n+1)^A086436(n+1)`
-/

namespace A079869.P2894703404677138560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079868 (n + 1) : ℚ) ^ (A086436 (n + 1) : ℤ)

end

end A079869.P2894703404677138560

namespace A079869

/-- `A079868(n+1)^A086436(n+1)` -/
def P2894703404677138560.Spec : Prop :=
  ∀ n, P2894703404677138560.a n = (A079869 (n + 1) : ℚ)

end A079869

/-! ## A079869.P15839168290420741879

`sqrt(A079868(n+1)^A255201(n+1))`
-/

namespace A079869.P15839168290420741879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A079868 (n + 1) : ℚ) ^ (A255201 (n + 1) : ℤ) : ℝ)

end

end A079869.P15839168290420741879

namespace A079869

/-- `sqrt(A079868(n+1)^A255201(n+1))` -/
def P15839168290420741879.Spec : Prop :=
  ∀ n, P15839168290420741879.a n = (A079869 (n + 1) : ℝ)

end A079869

/-! ## A079869.P4172664267174679627

`A061142(n+1)^log2(A079868(n+1))`
-/

namespace A079869.P4172664267174679627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℝ) ^ (Real.logb 2 (A079868 (n + 1) : ℝ))

end

end A079869.P4172664267174679627

namespace A079869

/-- `A061142(n+1)^log2(A079868(n+1))` -/
def P4172664267174679627.Spec : Prop :=
  ∀ n, P4172664267174679627.a n = (A079869 (n + 1) : ℝ)

end A079869

/-! ## A079869.P3420966953764190958

`A079868(n+1)^(A000005(∏{e}[n+1, 2^#])-1)`
-/

namespace A079869.P3420966953764190958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079868 (n + 1) : ℚ) ^ (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1 : ℤ)

end

end A079869.P3420966953764190958

namespace A079869

/-- `A079868(n+1)^(A000005(∏{e}[n+1, 2^#])-1)` -/
def P3420966953764190958.Spec : Prop :=
  ∀ n, P3420966953764190958.a n = (A079869 (n + 1) : ℚ)

end A079869

/-! ## A079869.P10869777537474178666

`round(root(n+1, A252736(n+1)+1))^A001222(n+1)`
-/

namespace A079869.P10869777537474178666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (A252736 (n + 1) + 1 : ℝ))) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A079869.P10869777537474178666

namespace A079869

/-- `round(root(n+1, A252736(n+1)+1))^A001222(n+1)` -/
def P10869777537474178666.Spec : Prop :=
  ∀ n, P10869777537474178666.a n = (A079869 (n + 1) : ℚ)

end A079869

/-! ## A079869.P13951443014245920583

`A079868(n+1)^A252736(2*(n+1))`
-/

namespace A079869.P13951443014245920583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079868 (n + 1) : ℚ) ^ (A252736 (2 * (n + 1)) : ℤ)

end

end A079869.P13951443014245920583

namespace A079869

/-- `A079868(n+1)^A252736(2*(n+1))` -/
def P13951443014245920583.Spec : Prop :=
  ∀ n, P13951443014245920583.a n = (A079869 (n + 1) : ℚ)

end A079869

/-!
# A079870: a(1)=1 and for n>1: ceiling(n^(1/Omega(n))), where Omega(n) is the total number of prime factors of n (A001222).

The programs for A079870, the canonical program `A079870.P165111451500732316` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079870 has offset 1).

The definition of A079870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079870.P165111451500732316

`A143731(n+1)+A079866(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079870

/-- `A143731(n+1)+A079866(n+1)` -/
def P165111451500732316.Spec : Prop :=
  ∀ n, P165111451500732316.a n = A079870 (n + 1)

theorem P165111451500732316.correct : P165111451500732316.Spec := by
  intro n
  simp only [A079870, Nat.add_sub_cancel]

end A079870

/-! ## A079870.P14759331678519567095

`A079866(n+1)+abs(A079872(n+1))`
-/

namespace A079870.P14759331678519567095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (n + 1) + |A079872 (n + 1)|

end

end A079870.P14759331678519567095

namespace A079870

/-- `A079866(n+1)+abs(A079872(n+1))` -/
def P14759331678519567095.Spec : Prop :=
  ∀ n, P14759331678519567095.a n = A079870 (n + 1)

end A079870

/-! ## A079870.P16848123842681075223

`A079866(n+1)+A033183(A034444(n+1))`
-/

namespace A079870.P16848123842681075223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (n + 1) + A033183 (A034444 (n + 1)).toNat

end

end A079870.P16848123842681075223

namespace A079870

/-- `A079866(n+1)+A033183(A034444(n+1))` -/
def P16848123842681075223.Spec : Prop :=
  ∀ n, P16848123842681075223.a n = A079870 (n + 1)

end A079870

/-! ## A079870.P14728342117293265746

`A079866(n+1)+A001222(A076820(n+1))`
-/

namespace A079870.P14728342117293265746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (n + 1) + A001222 (A076820 (n + 1)).toNat

end

end A079870.P14728342117293265746

namespace A079870

/-- `A079866(n+1)+A001222(A076820(n+1))` -/
def P14728342117293265746.Spec : Prop :=
  ∀ n, P14728342117293265746.a n = A079870 (n + 1)

end A079870

/-! ## A079870.P16510487203088004725

`A211100(gcd(A102659(2*(n+2))*A349433(n+1), 2^n))`
-/

namespace A079870.P16510487203088004725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Int.gcd (A102659 (2 * (n + 2)) * A349433 (n + 1)) (2 ^ n : ℤ))

end

end A079870.P16510487203088004725

namespace A079870

/-- `A211100(gcd(A102659(2*(n+2))*A349433(n+1), 2^n))` -/
def P16510487203088004725.Spec : Prop :=
  ∀ n, P16510487203088004725.a n = A079870 (n + 1)

end A079870

/-!
# A079871: a(1)=1 and for n>1: ceiling(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

The programs for A079871, the canonical program `A079871.P17733197390291506852` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079871 has offset 1).

The definition of A079871 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A079870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079871.P17733197390291506852

`A079870(n+1)^A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079871

/-- `A079870(n+1)^A001222(n+1)` -/
def P17733197390291506852.Spec : Prop :=
  ∀ n, P17733197390291506852.a n = (A079871 (n + 1) : ℚ)

end A079871

/-! ## A079871.P12368228484460716968

`A079870(n+1)^Δ[A022559(n)]`
-/

namespace A079871.P12368228484460716968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079870 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A079871.P12368228484460716968

namespace A079871

/-- `A079870(n+1)^Δ[A022559(n)]` -/
def P12368228484460716968.Spec : Prop :=
  ∀ n, P12368228484460716968.a n = (A079871 (n + 1) : ℚ)

end A079871

/-! ## A079871.P12479837045536808699

`A079870(n+1)^A086436(n+1)`
-/

namespace A079871.P12479837045536808699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079870 (n + 1) : ℚ) ^ (A086436 (n + 1) : ℤ)

end

end A079871.P12479837045536808699

namespace A079871

/-- `A079870(n+1)^A086436(n+1)` -/
def P12479837045536808699.Spec : Prop :=
  ∀ n, P12479837045536808699.a n = (A079871 (n + 1) : ℚ)

end A079871

/-! ## A079871.P3540125101662232120

`sqrt(A079870(n+1)^A255201(n+1))`
-/

namespace A079871.P3540125101662232120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A079870 (n + 1) : ℚ) ^ (A255201 (n + 1) : ℤ) : ℝ)

end

end A079871.P3540125101662232120

namespace A079871

/-- `sqrt(A079870(n+1)^A255201(n+1))` -/
def P3540125101662232120.Spec : Prop :=
  ∀ n, P3540125101662232120.a n = (A079871 (n + 1) : ℝ)

end A079871

/-! ## A079871.P4340117500026727704

`A061142(n+1)^log2(A079870(n+1))`
-/

namespace A079871.P4340117500026727704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℝ) ^ (Real.logb 2 (A079870 (n + 1) : ℝ))

end

end A079871.P4340117500026727704

namespace A079871

/-- `A061142(n+1)^log2(A079870(n+1))` -/
def P4340117500026727704.Spec : Prop :=
  ∀ n, P4340117500026727704.a n = (A079871 (n + 1) : ℝ)

end A079871

/-! ## A079871.P15729741957728739565

`A079870(n+1)^∑{d}[n+1, n²%A014963(#)]`
-/

namespace A079871.P15729741957728739565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079870 (n + 1) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), Int.tmod (n ^ 2 : ℤ) (A014963 d) : ℤ)

end

end A079871.P15729741957728739565

namespace A079871

/-- `A079870(n+1)^∑{d}[n+1, n²%A014963(#)]` -/
def P15729741957728739565.Spec : Prop :=
  ∀ n, P15729741957728739565.a n = (A079871 (n + 1) : ℚ)

end A079871

/-! ## A079871.P4435938356424512682

`A079870(n+1)^(A000005(∏{e}[n+1, 2^#])-1)`
-/

namespace A079871.P4435938356424512682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079870 (n + 1) : ℚ) ^ (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1 : ℤ)

end

end A079871.P4435938356424512682

namespace A079871

/-- `A079870(n+1)^(A000005(∏{e}[n+1, 2^#])-1)` -/
def P4435938356424512682.Spec : Prop :=
  ∀ n, P4435938356424512682.a n = (A079871 (n + 1) : ℚ)

end A079871

/-! ## A079871.P13119242956640297417

`A079870(n+1)^A252736(2*(n+1))`
-/

namespace A079871.P13119242956640297417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079870 (n + 1) : ℚ) ^ (A252736 (2 * (n + 1)) : ℤ)

end

end A079871.P13119242956640297417

namespace A079871

/-- `A079870(n+1)^A252736(2*(n+1))` -/
def P13119242956640297417.Spec : Prop :=
  ∀ n, P13119242956640297417.a n = (A079871 (n + 1) : ℚ)

end A079871

/-!
# A079872: a(1)=0, a(n) = signum(round(n^(1/Omega(n)))^Omega(n) - n), where Omega(n) is the total number of prime factors of n (A001222).

The programs for A079872, there is no canonical definition to state claims against.
-/

/-! ## A079872.P15928336126923657914

`A348951(A348988(n+1))^A293874(n+1)`
-/

namespace A079872.P15928336126923657914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348951 (A348988 (n + 1)).toNat : ℚ) ^ (A293874 (n + 1) : ℤ)

end

end A079872.P15928336126923657914

/-! ## A079872.P15748015773482110071

`(-floor(∑{p}[n+1, root(γ, #)]))^A293872(n+1)`
-/

namespace A079872.P15748015773482110071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ : ℚ) ^ (A293872 (n + 1) : ℤ)

end

end A079872.P15748015773482110071

/-! ## A079872.P9119376659634097437

`(-floor(∑{p}[n+1, root(γ, #)]))^A293876(n+1)`
-/

namespace A079872.P9119376659634097437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ : ℚ) ^ (A293876 (n + 1) : ℤ)

end

end A079872.P9119376659634097437

/-! ## A079872.P10847432098490329236

`(-floor(∑{p}[n+1, root(γ, #)]))^A293878(n+1)`
-/

namespace A079872.P10847432098490329236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ : ℚ) ^ (A293878 (n + 1) : ℤ)

end

end A079872.P10847432098490329236

/-! ## A079872.P5345361225705131372

`(-floor(∑{p}[n+1, root(γ, #)]))^A293880(n+1)`
-/

namespace A079872.P5345361225705131372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ : ℚ) ^ (A293880 (n + 1) : ℤ)

end

end A079872.P5345361225705131372

/-!
# A079873: Number of positions that are exactly n moves from the starting position in the Classic Lights Out puzzle.

The programs for A079873, there is no canonical definition to state claims against.
-/

/-! ## A079873.P3649560085664713740

`∑{p}[5^(n+3), C(#², n)]`
-/

namespace A079873.P3649560085664713740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (p ^ 2) n

end

end A079873.P3649560085664713740

/-! ## A079873.P13243804051665392566

`C(25, A090883(2^n))`
-/

namespace A079873.P13243804051665392566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 25 (A090883 (2 ^ n)).toNat

end

end A079873.P13243804051665392566

/-!
# A079874: Number of configurations in the Classic Lights Out puzzle with n lights on.

The programs for A079874, there is no canonical definition to state claims against.
-/

/-! ## A079874.P14014392416506363239

`A206369(A099334(n+1)+A026188(n+1))`
-/

namespace A079874.P14014392416506363239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A099334 (n + 1) + A026188 (n + 1)).toNat

end

end A079874.P14014392416506363239

/-!
# A079875: Number of positions that are exactly n moves from the starting position in the Lights Out 2000 puzzle.

The programs for A079875, there is no canonical definition to state claims against.
-/

/-! ## A079875.P17216924431916289196

`A027907(A216125(floor(2/3*10^n))+n)`
-/

namespace A079875.P17216924431916289196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A216125 ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋.toNat + (n : ℤ)).toNat

end

end A079875.P17216924431916289196

/-!
# A079877: Numbers that are divisible by at least one pair of twin primes (A001097).

The programs for A079877, there is no canonical definition to state claims against.
-/

/-! ## A079877.P13117598935125471881

`lt[1, A322356(n+1)]+1`
-/

namespace A079877.P13117598935125471881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079877.P13117598935125471881

/-! ## A079877.P5751223337701411076

`lt[0, A322358(A004277(n))]`
-/

namespace A079877.P5751223337701411076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079877.P5751223337701411076

/-! ## A079877.P8373017740780806164

`lt[0, A322358(A008574(n))]`
-/

namespace A079877.P8373017740780806164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079877.P8373017740780806164

/-! ## A079877.P3214411412358368476

`lt[0, A322358(A028310(n))]`
-/

namespace A079877.P3214411412358368476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079877.P3214411412358368476

/-! ## A079877.P14270415361934428260

`A020725(lt[1, A322356(n+1)])`
-/

namespace A079877.P14270415361934428260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079877.P14270415361934428260

/-! ## A079877.P10993747226748774749

`A061767(lt[1, A322356(n+1)])`
-/

namespace A079877.P10993747226748774749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079877.P10993747226748774749

/-! ## A079877.P5754610523905192148

`A153152(lt[1, A322356(n+1)])`
-/

namespace A079877.P5754610523905192148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079877.P5754610523905192148

/-! ## A079877.P13568470639049555285

`lt[0, A322358(A233583(n+1))]`
-/

namespace A079877.P13568470639049555285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079877.P13568470639049555285

/-!
# A079878: a(1)=1, then a(n)=2*a(n-1) if 2*a(n-1)<=n, a(n)=2*a(n-1)-n otherwise.

The programs for A079878, the canonical program `A079878.P8509875506932410645` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079878 has offset 1).

The definition of A079878 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064434, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079878.P8509875506932410645

`A064434(n+1)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079878

/-- `A064434(n+1)+1` -/
def P8509875506932410645.Spec : Prop :=
  ∀ n, P8509875506932410645.a n = A079878 (n + 1)

theorem P8509875506932410645.correct : P8509875506932410645.Spec := by
  intro n
  simp only [A079878, Nat.add_sub_cancel]

end A079878

/-! ## A079878.P9967110540277965811

`1-(1-2*a(n-1))%(n+1)` with `a(0)=1`
-/

namespace A079878.P9967110540277965811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (1 - 2 * a (n - 1)) (n + 1 : ℤ)

end

end A079878.P9967110540277965811

namespace A079878

/-- `1-(1-2*a(n-1))%(n+1)` -/
def P9967110540277965811.Spec : Prop :=
  ∀ n, P9967110540277965811.a n = A079878 (n + 1)

end A079878

/-! ## A079878.P8660751018288216079

`a(n-1)-Δ[(2*a(n-1)-1)%n]` with `a(0)=1`
-/

namespace A079878.P8660751018288216079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (2 * f1 (n - 1) - 1) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A079878.P8660751018288216079

namespace A079878

/-- `a(n-1)-Δ[(2*a(n-1)-1)%n]` -/
def P8660751018288216079.Spec : Prop :=
  ∀ n, P8660751018288216079.a n = A079878 (n + 1)

end A079878

/-! ## A079878.P4490201467353879441

`1-(1-a(n-1)-a(n-1))%(n+1)` with `a(0)=1`
-/

namespace A079878.P4490201467353879441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (1 - a (n - 1) - a (n - 1)) (n + 1 : ℤ)

end

end A079878.P4490201467353879441

namespace A079878

/-- `1-(1-a(n-1)-a(n-1))%(n+1)` -/
def P4490201467353879441.Spec : Prop :=
  ∀ n, P4490201467353879441.a n = A079878 (n + 1)

end A079878

/-! ## A079878.P17233433674254532656

`a(n-1)-Δ[(a(n-1)-(1-a(n-1)))%n]` with `a(0)=1`
-/

namespace A079878.P17233433674254532656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (f1 (n - 1) - (1 - f1 (n - 1))) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A079878.P17233433674254532656

namespace A079878

/-- `a(n-1)-Δ[(a(n-1)-(1-a(n-1)))%n]` -/
def P17233433674254532656.Spec : Prop :=
  ∀ n, P17233433674254532656.a n = A079878 (n + 1)

end A079878

/-! ## A079878.P2146571550443055033

`Δ[A005408(a(n-1))%n]+a(n-1)` with `a(0)=1`
-/

namespace A079878.P2146571550443055033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A005408 (f1 (n - 1)).toNat) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A079878.P2146571550443055033

namespace A079878

/-- `Δ[A005408(a(n-1))%n]+a(n-1)` -/
def P2146571550443055033.Spec : Prop :=
  ∀ n, P2146571550443055033.a n = A079878 (n + 1)

end A079878

/-!
# A079879: Median prime factor: a(1)=1 and for n>1: least prime p such that not more than floor(Omega(n)/2) prime factors are greater than p; Omega(n) is the total number of prime factors of n (A001222).

The programs for A079879, there is no canonical definition to state claims against.
-/

/-! ## A079879.P16783830987323562444

`∏{p}[A079881(n+1), #]`
-/

namespace A079879.P16783830987323562444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079879.P16783830987323562444

/-! ## A079879.P5736621331658607817

`(n+1)/A079880(n+1)`
-/

namespace A079879.P5736621331658607817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A079880 (n + 1) : ℚ)

end

end A079879.P5736621331658607817

/-! ## A079879.P7869140055992768377

`abs((n-log2(1/2))/A079880(n-log2(1/2)))`
-/

namespace A079879.P7869140055992768377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) / (A079880 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)|

end

end A079879.P7869140055992768377

/-! ## A079879.P1108088494936201589

`A006530(A347043(n+1))`
-/

namespace A079879.P1108088494936201589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A347043 (n + 1)).toNat

end

end A079879.P1108088494936201589

/-! ## A079879.P13183207091290442624

`gcd(A079881(n+1), A144845(n))`
-/

namespace A079879.P13183207091290442624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079881 (n + 1)) (A144845 n)

end

end A079879.P13183207091290442624

/-! ## A079879.P5979279348721338147

`A006530(A079881(n+1))`
-/

namespace A079879.P5979279348721338147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079881 (n + 1)).toNat

end

end A079879.P5979279348721338147

/-! ## A079879.P12640579340601963080

`A079866(A079881(2*n+1-n))`
-/

namespace A079879.P12640579340601963080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A079881 (2 * n + 1 - n)).toNat

end

end A079879.P12640579340601963080

/-! ## A079879.P524383886223880091

`A007913(A007913(n+1)*A079880(n+1))`
-/

namespace A079879.P524383886223880091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * A079880 (n + 1)).toNat

end

end A079879.P524383886223880091

/-! ## A079879.P3699097185579337235

`A007913((n+1)*A079880(n+1))`
-/

namespace A079879.P3699097185579337235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A079880 (n + 1)).toNat

end

end A079879.P3699097185579337235

/-! ## A079879.P18323411679158492925

`A007913(A079880((n+1)²))`
-/

namespace A079879.P18323411679158492925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A079880 ((n + 1) ^ 2)).toNat

end

end A079879.P18323411679158492925

/-! ## A079879.P14293642535977865648

`A217581(A347045((n+1)²)²)`
-/

namespace A079879.P14293642535977865648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A347045 ((n + 1) ^ 2) ^ 2).toNat

end

end A079879.P14293642535977865648

/-! ## A079879.P15259183756774536753

`A079868(A079881(A033676((n+1)²)))`
-/

namespace A079879.P15259183756774536753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079868 (A079881 (A033676 ((n + 1) ^ 2)).toNat).toNat

end

end A079879.P15259183756774536753

/-! ## A079879.P1301327757631223306

`A079866(A079866(A079881(n+1))²)`
-/

namespace A079879.P1301327757631223306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A079866 (A079881 (n + 1)).toNat ^ 2).toNat

end

end A079879.P1301327757631223306

/-! ## A079879.P7424052374521235580

`A079868(A079868(A079881(n+1))²)`
-/

namespace A079879.P7424052374521235580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079868 (A079868 (A079881 (n + 1)).toNat ^ 2).toNat

end

end A079879.P7424052374521235580

/-! ## A079879.P17357019651198723578

`A079870(A079870(A079881(n+1))²)`
-/

namespace A079879.P17357019651198723578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079870 (A079870 (A079881 (n + 1)).toNat ^ 2).toNat

end

end A079879.P17357019651198723578

/-! ## A079879.P16695964604160267632

`A020639(A347046(A347043(n+1)²))`
-/

namespace A079879.P16695964604160267632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A347046 (A347043 (n + 1) ^ 2).toNat).toNat

end

end A079879.P16695964604160267632

/-! ## A079879.P9742356562946106357

`A014673(A087039(n+1)*A129598(n+1))`
-/

namespace A079879.P9742356562946106357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A087039 (n + 1) * A129598 (n + 1)).toNat

end

end A079879.P9742356562946106357

/-! ## A079879.P16416929811728884468

`A014673(A087039(n+1)*A253560(n+1))`
-/

namespace A079879.P16416929811728884468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A087039 (n + 1) * A253560 (n + 1)).toNat

end

end A079879.P16416929811728884468

/-! ## A079879.P699230655891418056

`A014673(A217581(n+1)*A253560(n+1))`
-/

namespace A079879.P699230655891418056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A217581 (n + 1) * A253560 (n + 1)).toNat

end

end A079879.P699230655891418056

/-! ## A079879.P12945668808337139361

`A087039(A285109(n+1)/A117358(n+1))`
-/

namespace A079879.P12945668808337139361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (SequenceMachineLib.roundAway ((A285109 (n + 1) : ℚ) / (A117358 (n + 1) : ℚ))).toNat

end

end A079879.P12945668808337139361

/-!
# A079880: a(n) = n/mpf(n), where mpf(n) is the median prime factor of n (A079879).

The programs for A079880, there is no canonical definition to state claims against.
-/

/-! ## A079880.P2306109091684452837

`(n+1)/A079879(n+1)`
-/

namespace A079880.P2306109091684452837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A079879 (n + 1) : ℚ)

end

end A079880.P2306109091684452837

/-! ## A079880.P9747118757684468286

`(n+1)/A006530(A347043(n+1))`
-/

namespace A079880.P9747118757684468286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (A347043 (n + 1)).toNat : ℚ)

end

end A079880.P9747118757684468286

/-! ## A079880.P1837105410998419406

`(n+1)/A006530(A079881(n+1))`
-/

namespace A079880.P1837105410998419406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (A079881 (n + 1)).toNat : ℚ)

end

end A079880.P1837105410998419406

/-! ## A079880.P10166967617860368223

`A219158(A079879(n+1)+A000217(n))`
-/

namespace A079880.P10166967617860368223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A079879 (n + 1) + A000217 n).toNat

end

end A079880.P10166967617860368223

/-! ## A079880.P8752236169002737388

`A051537(A079879(n+1)+∑[n])`
-/

namespace A079880.P8752236169002737388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A079879 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079880.P8752236169002737388

/-! ## A079880.P8774469226912177904

`A126988(A079879(n+1)+∑[n])`
-/

namespace A079880.P8774469226912177904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A079879 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079880.P8774469226912177904

/-! ## A079880.P15224077377646156793

`A010766(A079879(n+1)+A000217(n))`
-/

namespace A079880.P15224077377646156793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A079879 (n + 1) + A000217 n).toNat

end

end A079880.P15224077377646156793

/-! ## A079880.P703954613503873736

`A049834(A079879(n+1)+A000217(n))`
-/

namespace A079880.P703954613503873736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A079879 (n + 1) + A000217 n).toNat

end

end A079880.P703954613503873736

/-! ## A079880.P10766127477957747626

`A054531(A079879(n+1)+A000217(n))`
-/

namespace A079880.P10766127477957747626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A079879 (n + 1) + A000217 n).toNat

end

end A079880.P10766127477957747626

/-! ## A079880.P10704243832311797222

`(n+1)*A079879((n+1)²)^-1`
-/

namespace A079880.P10704243832311797222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A079879 ((n + 1) ^ 2) : ℚ) ^ (-1 : ℤ)

end

end A079880.P10704243832311797222

/-!
# A079881: mpf(n)^Omega(n), where mpf(n) is the median prime factor of n (A079879).

The programs for A079881, there is no canonical definition to state claims against.
-/

/-! ## A079881.P3167784644573622042

`A079879(n+1)^∑{e}[n+1, #]`
-/

namespace A079881.P3167784644573622042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A079881.P3167784644573622042

/-! ## A079881.P16679960731036780975

`((n+1)/A079880(n+1))^(∑{e}[xor(2*n, -2), #]-1)`
-/

namespace A079881.P16679960731036780975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A079880 (n + 1) : ℚ)) ^ (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1 : ℤ)

end

end A079881.P16679960731036780975

/-! ## A079881.P7556609430475531763

`A079879(n+1)^Δ[A022559(n)]`
-/

namespace A079881.P7556609430475531763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079879 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A079881.P7556609430475531763

/-! ## A079881.P10719978920870099184

`A079879(n+1)^A001222(n+1)`
-/

namespace A079881.P10719978920870099184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079879 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A079881.P10719978920870099184

/-! ## A079881.P16445539178879942823

`A079879(n+1)^A086436(n+1)`
-/

namespace A079881.P16445539178879942823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079879 (n + 1) : ℚ) ^ (A086436 (n + 1) : ℤ)

end

end A079881.P16445539178879942823

/-! ## A079881.P15623816189427928144

`A079879(n+1)^val(A165831(n+1), 2)`
-/

namespace A079881.P15623816189427928144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1) ^ SequenceMachineLib.valuation (A165831 (n + 1)).toNat 2

end

end A079881.P15623816189427928144

/-! ## A079881.P7881842886801840811

`A006530(A347043(n+1))^∑{e}[n+1, #]`
-/

namespace A079881.P7881842886801840811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A347043 (n + 1)).toNat ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A079881.P7881842886801840811

/-! ## A079881.P15964915150197776332

`((n+1)/A079880(n+1))^A001222(n+1)`
-/

namespace A079881.P15964915150197776332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A079880 (n + 1) : ℚ)) ^ (A001222 (n + 1) : ℤ)

end

end A079881.P15964915150197776332

/-! ## A079881.P5397677688211984190

`A079879(n+1)^(A000005(∏{e}[n+1, 2^#])-1)`
-/

namespace A079881.P5397677688211984190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079879 (n + 1) : ℚ) ^ (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1 : ℤ)

end

end A079881.P5397677688211984190

/-! ## A079881.P18154041755762258761

`A079879(n+1)^∑{d}[n+1, (n+2)%A014963(#)]`
-/

namespace A079881.P18154041755762258761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079879 (n + 1) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), Int.tmod (n + 2 : ℤ) (A014963 d) : ℤ)

end

end A079881.P18154041755762258761

/-!
# A079882: A run of 2^n 1's followed by a run of 2^n 2's, for n=0, 1, 2, ...

The programs for A079882, the canonical program `A079882.P12778706361266125530` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079882 has offset 0).

The definition of A079882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079882.P12778706361266125530

`a(floor(n/2)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079882

/-- `a(floor(n/2)-1)` -/
def P12778706361266125530.Spec : Prop :=
  ∀ n, (P12778706361266125530.a n : ℤ) = A079882 n

theorem P12778706361266125530.correct : P12778706361266125530.Spec := by
  intro n
  simp only [A079882]

end A079882

/-! ## A079882.P838077026589593538

`abs(a(∑[(n-1)%2]))` with `a(0)=1, a(1)=2`
-/

namespace A079882.P838077026589593538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079882.P838077026589593538

namespace A079882

/-- `abs(a(∑[(n-1)%2]))` -/
def P838077026589593538.Spec : Prop :=
  ∀ n, (P838077026589593538.a n : ℤ) = A079882 n

end A079882

/-! ## A079882.P11709265210924832159

`gcd(2, a(n/gcd(2, n)-1))` with `a(0)=1, a(1)=2`
-/

namespace A079882.P11709265210924832159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 (a (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ) - 1)).toNat)

end

end A079882.P11709265210924832159

namespace A079882

/-- `gcd(2, a(n/gcd(2, n)-1))` -/
def P11709265210924832159.Spec : Prop :=
  ∀ n, (P11709265210924832159.a n : ℤ) = A079882 n

end A079882

/-! ## A079882.P2266944820845545398

`round(and(n+1, 2*(n+2))/(n+1))+1`
-/

namespace A079882.P2266944820845545398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land (n + 1) (2 * (n + 2)) : ℚ) / (n + 1 : ℚ)) + 1

end

end A079882.P2266944820845545398

namespace A079882

/-- `round(and(n+1, 2*(n+2))/(n+1))+1` -/
def P2266944820845545398.Spec : Prop :=
  ∀ n, P2266944820845545398.a n = A079882 n

end A079882

/-! ## A079882.P1035664550013952090

`1+A079944(n)`
-/

namespace A079882.P1035664550013952090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A079944 n

end

end A079882.P1035664550013952090

namespace A079882

/-- `1+A079944(n)` -/
def P1035664550013952090.Spec : Prop :=
  ∀ n, P1035664550013952090.a n = A079882 n

end A079882

/-! ## A079882.P1906383805112967044

`2-A086694(n+1)`
-/

namespace A079882.P1906383805112967044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A086694 (n + 1)

end

end A079882.P1906383805112967044

namespace A079882

/-- `2-A086694(n+1)` -/
def P1906383805112967044.Spec : Prop :=
  ∀ n, P1906383805112967044.a n = A079882 n

end A079882

/-! ## A079882.P13577515313541198491

`gcd(2, A081241(n+1))`
-/

namespace A079882.P13577515313541198491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A081241 (n + 1))

end

end A079882.P13577515313541198491

namespace A079882

/-- `gcd(2, A081241(n+1))` -/
def P13577515313541198491.Spec : Prop :=
  ∀ n, (P13577515313541198491.a n : ℤ) = A079882 n

end A079882

/-! ## A079882.P12818478346754549343

`A132679(n+1)%3`
-/

namespace A079882.P12818478346754549343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132679 (n + 1)) 3

end

end A079882.P12818478346754549343

namespace A079882

/-- `A132679(n+1)%3` -/
def P12818478346754549343.Spec : Prop :=
  ∀ n, P12818478346754549343.a n = A079882 n

end A079882

/-! ## A079882.P8384894565201559922

`A081242(n+2)%5`
-/

namespace A079882.P8384894565201559922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081242 (n + 2)) 5

end

end A079882.P8384894565201559922

namespace A079882

/-- `A081242(n+2)%5` -/
def P8384894565201559922.Spec : Prop :=
  ∀ n, P8384894565201559922.a n = A079882 n

end A079882

/-! ## A079882.P1061086712037674619

`ceil(ratio[A166079(n+3)])`
-/

namespace A079882.P1061086712037674619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A079882.P1061086712037674619

namespace A079882

/-- `ceil(ratio[A166079(n+3)])` -/
def P1061086712037674619.Spec : Prop :=
  ∀ n, P1061086712037674619.a n = A079882 n

end A079882

/-! ## A079882.P3983765606186710192

`char[A004760(n+1)-2]+1`
-/

namespace A079882.P3983765606186710192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A079882.P3983765606186710192

namespace A079882

/-- `char[A004760(n+1)-2]+1` -/
def P3983765606186710192.Spec : Prop :=
  ∀ n, (P3983765606186710192.a n : ℤ) = A079882 n

end A079882

/-! ## A079882.P9774118183354416358

`floor((n+1)/A162751(n+1))`
-/

namespace A079882.P9774118183354416358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A162751 (n + 1) : ℚ)⌋

end

end A079882.P9774118183354416358

namespace A079882

/-- `floor((n+1)/A162751(n+1))` -/
def P9774118183354416358.Spec : Prop :=
  ∀ n, P9774118183354416358.a n = A079882 n

end A079882

/-! ## A079882.P11229635476167825514

`ceil((n+1)/A346306(n+1))`
-/

namespace A079882.P11229635476167825514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A346306 (n + 1) : ℚ)⌉

end

end A079882.P11229635476167825514

namespace A079882

/-- `ceil((n+1)/A346306(n+1))` -/
def P11229635476167825514.Spec : Prop :=
  ∀ n, P11229635476167825514.a n = A079882 n

end A079882

/-! ## A079882.P13975957465570032185

`A000034(A103697(n))`
-/

namespace A079882.P13975957465570032185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A103697 n).toNat

end

end A079882.P13975957465570032185

namespace A079882

/-- `A000034(A103697(n))` -/
def P13975957465570032185.Spec : Prop :=
  ∀ n, P13975957465570032185.a n = A079882 n

end A079882

/-! ## A079882.P15030908410252046029

`A040001(A081241(n+1))`
-/

namespace A079882.P15030908410252046029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A081241 (n + 1)).toNat

end

end A079882.P15030908410252046029

namespace A079882

/-- `A040001(A081241(n+1))` -/
def P15030908410252046029.Spec : Prop :=
  ∀ n, P15030908410252046029.a n = A079882 n

end A079882

/-! ## A079882.P2924696561904392712

`A038219(A308173(n+1))+1`
-/

namespace A079882.P2924696561904392712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (A308173 (n + 1)).toNat + 1

end

end A079882.P2924696561904392712

namespace A079882

/-- `A038219(A308173(n+1))+1` -/
def P2924696561904392712.Spec : Prop :=
  ∀ n, P2924696561904392712.a n = A079882 n

end A079882

/-! ## A079882.P5755434127207534624

`A000035(A362160(n+1))+1`
-/

namespace A079882.P5755434127207534624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A362160 (n + 1)).toNat + 1

end

end A079882.P5755434127207534624

namespace A079882

/-- `A000035(A362160(n+1))+1` -/
def P5755434127207534624.Spec : Prop :=
  ∀ n, P5755434127207534624.a n = A079882 n

end A079882

/-! ## A079882.P1165568759444915561

`2-char[A038558(n)-2]`
-/

namespace A079882.P1165568759444915561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A079882.P1165568759444915561

namespace A079882

/-- `2-char[A038558(n)-2]` -/
def P1165568759444915561.Spec : Prop :=
  ∀ n, P1165568759444915561.a n = A079882 n

end A079882

/-! ## A079882.P17418852317658067595

`char[A053642(n+1)-2]+1`
-/

namespace A079882.P17418852317658067595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053642 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A079882.P17418852317658067595

namespace A079882

/-- `char[A053642(n+1)-2]+1` -/
def P17418852317658067595.Spec : Prop :=
  ∀ n, (P17418852317658067595.a n : ℤ) = A079882 n

end A079882

/-!
# A079883: a(1) = 1; a(n) = prime(n) - prime(n-1)* a(n-1) if n > 1.

The programs for A079883, there is no canonical definition to state claims against.
-/

/-! ## A079883.P1278083124152769997

`A006093(n+1)+1-a(n-1)*record[∑{p}[n, #]]` with `a(0)=1`
-/

namespace A079883.P1278083124152769997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006093 (n + 1) + 1 - a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A079883.P1278083124152769997

/-! ## A079883.P10480907481013964910

`Δ[A007504(n)]-a(n-1)*A000040(n)` with `a(0)=1`
-/

namespace A079883.P10480907481013964910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1) * A000040 n

end

end A079883.P10480907481013964910

/-! ## A079883.P12521088647292650594

`p?[A259153(n)]-a(n-1)*A000040(n)` with `a(0)=1`
-/

namespace A079883.P12521088647292650594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - a (n - 1) * A000040 n

end

end A079883.P12521088647292650594

/-! ## A079883.P10324760499557319478

`A000040(n+1)-a(n-1)*A000040(n)` with `a(0)=1`
-/

namespace A079883.P10324760499557319478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (n + 1) - a (n - 1) * A000040 n

end

end A079883.P10324760499557319478

/-!
# A079884: Number of comparisons required to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2.

The programs for A079884, the canonical program `A079884.P8102187884374382160` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079884 has offset 3).

The definition of A079884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079884.P15309502524313782722

`(n+3)*a(n-1)+(n+3)*(n+4)/2` with `a(0)=11`
-/

namespace A079884.P15309502524313782722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [11] fun n a =>
  (n + 3 : ℚ) * a (n - 1) + ((n + 3) * (n + 4) : ℚ) / 2

end

end A079884.P15309502524313782722

namespace A079884

/-- `(n+3)*a(n-1)+(n+3)*(n+4)/2` -/
def P15309502524313782722.Spec : Prop :=
  ∀ n, P15309502524313782722.a n = (A079884 (n + 3) : ℚ)

end A079884

/-! ## A079884.P8102187884374382160

`2*(n+3)!-1+A079750(n+3)+A079753(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079884

/-- `2*(n+3)!-1+A079750(n+3)+A079753(n+3)` -/
def P8102187884374382160.Spec : Prop :=
  ∀ n, P8102187884374382160.a n = A079884 (n + 3)

theorem P8102187884374382160.correct : P8102187884374382160.Spec := by
  intro n
  simp only [A079884, Nat.add_sub_cancel]

end A079884

/-! ## A079884.P4191906736559213810

`C(n+4, 2)+(n+3)*a(n-1)` with `a(0)=11`
-/

namespace A079884.P4191906736559213810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  Nat.choose (n + 4) 2 + (n + 3) * a (n - 1)

end

end A079884.P4191906736559213810

namespace A079884

/-- `C(n+4, 2)+(n+3)*a(n-1)` -/
def P4191906736559213810.Spec : Prop :=
  ∀ n, (P4191906736559213810.a n : ℤ) = A079884 (n + 3)

end A079884

/-! ## A079884.P8812654739871372447

`A000217(n+3)+(n+3)*a(n-1)` with `a(0)=11`
-/

namespace A079884.P8812654739871372447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A000217 (n + 3) + (n + 3 : ℤ) * a (n - 1)

end

end A079884.P8812654739871372447

namespace A079884

/-- `A000217(n+3)+(n+3)*a(n-1)` -/
def P8812654739871372447.Spec : Prop :=
  ∀ n, P8812654739871372447.a n = A079884 (n + 3)

end A079884

/-!
# A079885: Number of index tests required to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2.

The programs for A079885, the canonical program `A079885.P6656238905337535424` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079885 has offset 3).

The definition of A079885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079885.P6656238905337535424

`(n+3)*a(n-1)+1+(n+2)*floor((n+2)/2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079885

/-- `(n+3)*a(n-1)+1+(n+2)*floor((n+2)/2)` -/
def P6656238905337535424.Spec : Prop :=
  ∀ n, P6656238905337535424.a n = A079885 (n + 3)

theorem P6656238905337535424.correct : P6656238905337535424.Spec := by
  intro n
  simp only [A079885, Nat.add_sub_cancel]

end A079885

/-! ## A079885.P1123804811669749851

`A079751(n+3)+A079755(n+3)`
-/

namespace A079885.P1123804811669749851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079751 (n + 3) + A079755 (n + 3)

end

end A079885.P1123804811669749851

namespace A079885

/-- `A079751(n+3)+A079755(n+3)` -/
def P1123804811669749851.Spec : Prop :=
  ∀ n, P1123804811669749851.a n = A079885 (n + 3)

end A079885

/-! ## A079885.P2979342805518160221

`A079756(n+3)+A079750(n+3)`
-/

namespace A079885.P2979342805518160221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079756 (n + 3) + A079750 (n + 3)

end

end A079885.P2979342805518160221

namespace A079885

/-- `A079756(n+3)+A079750(n+3)` -/
def P2979342805518160221.Spec : Prop :=
  ∀ n, P2979342805518160221.a n = A079885 (n + 3)

end A079885

/-! ## A079885.P12009587173004342864

`A079756(n+3)+A185108(n+1)-1`
-/

namespace A079885.P12009587173004342864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079756 (n + 3) + (A185108 (n + 1) - 1)

end

end A079885.P12009587173004342864

namespace A079885

/-- `A079756(n+3)+A185108(n+1)-1` -/
def P12009587173004342864.Spec : Prop :=
  ∀ n, P12009587173004342864.a n = A079885 (n + 3)

end A079885

/-! ## A079885.P224216937381704683

`A079756(n+3)+(n+3)*A185108(n)`
-/

namespace A079885.P224216937381704683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079756 (n + 3) + (n + 3 : ℤ) * A185108 n

end

end A079885.P224216937381704683

namespace A079885

/-- `A079756(n+3)+(n+3)*A185108(n)` -/
def P224216937381704683.Spec : Prop :=
  ∀ n, P224216937381704683.a n = A079885 (n + 3)

end A079885

/-! ## A079885.P6685362449387770695

`A079756(n+3)+∑[A131965(n+2)]-1`
-/

namespace A079885.P6685362449387770695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079756 (n + 3) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A079885.P6685362449387770695

namespace A079885

/-- `A079756(n+3)+∑[A131965(n+2)]-1` -/
def P6685362449387770695.Spec : Prop :=
  ∀ n, P6685362449387770695.a n = A079885 (n + 3)

end A079885

/-!
# A079886: Values of x+y where p runs through the primes of form 4k+1 and p=x^2+y^2, 0<=x<=y.

The programs for A079886, there is no canonical definition to state claims against.
-/

/-! ## A079886.P6201187082349360591

`2*A096029(n+1)+1`
-/

namespace A079886.P6201187082349360591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096029 (n + 1) + 1

end

end A079886.P6201187082349360591

/-! ## A079886.P4350222989822963342

`A070079(n+1)/A079887(n+1)`
-/

namespace A079886.P4350222989822963342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070079 (n + 1) : ℚ) / (A079887 (n + 1) : ℚ)

end

end A079886.P4350222989822963342

/-! ## A079886.P7780494583786043113

`A002972(n+1)+2*A002973(n+1)`
-/

namespace A079886.P7780494583786043113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002972 (n + 1) + 2 * A002973 (n + 1)

end

end A079886.P7780494583786043113

/-! ## A079886.P5944350736926493385

`A002331(n+2)+A002330(n+2)`
-/

namespace A079886.P5944350736926493385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (n + 2) + A002330 (n + 2)

end

end A079886.P5944350736926493385

/-! ## A079886.P9477790337093091151

`A079887(n+1)+A145046(n)/A002330(n+2)`
-/

namespace A079886.P9477790337093091151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079887 (n + 1) : ℚ) + (A145046 n : ℚ) / (A002330 (n + 2) : ℚ)

end

end A079886.P9477790337093091151

/-! ## A079886.P15073158656512848445

`A002331(n+2)+A079887(n+1)+A002331(n+2)`
-/

namespace A079886.P15073158656512848445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (n + 2) + (A079887 (n + 1) + A002331 (n + 2))

end

end A079886.P15073158656512848445

/-! ## A079886.P8249578905994040547

`A096029(n+1)+A002330(n+2)-A096030(n+1)`
-/

namespace A079886.P8249578905994040547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (n + 1) + (A002330 (n + 2) - A096030 (n + 1))

end

end A079886.P8249578905994040547

/-! ## A079886.P1586890420543407153

`A002972(n+1)+A145019(n+1)/A002972(n+1)`
-/

namespace A079886.P1586890420543407153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002972 (n + 1) : ℚ) + (A145019 (n + 1) : ℚ) / (A002972 (n + 1) : ℚ)

end

end A079886.P1586890420543407153

/-! ## A079886.P2317705175469728118

`A002330(n+2)+A145019(n+1)/A002330(n+2)`
-/

namespace A079886.P2317705175469728118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002330 (n + 2) : ℚ) + (A145019 (n + 1) : ℚ) / (A002330 (n + 2) : ℚ)

end

end A079886.P2317705175469728118

/-! ## A079886.P700436250741202882

`A002331(n+2)+A145019(n+1)/A002331(n+2)`
-/

namespace A079886.P700436250741202882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002331 (n + 2) : ℚ) + (A145019 (n + 1) : ℚ) / (A002331 (n + 2) : ℚ)

end

end A079886.P700436250741202882

/-! ## A079886.P1081065088000920146

`A080088(A080147(n+1))`
-/

namespace A079886.P1081065088000920146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080088 (A080147 (n + 1)).toNat

end

end A079886.P1081065088000920146

/-! ## A079886.P6297238984513664952

`A080088(A138970(n+1)+1)`
-/

namespace A079886.P6297238984513664952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080088 (A138970 (n + 1) + 1).toNat

end

end A079886.P6297238984513664952

/-! ## A079886.P1105221777813125980

`filter[A080089(n+1), A000035(#)]`
-/

namespace A079886.P1105221777813125980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A079886.P1105221777813125980

/-! ## A079886.P373721083323507645

`filter[A080089(n+1), A115971(#)]`
-/

namespace A079886.P373721083323507645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A079886.P373721083323507645

/-! ## A079886.P10609547506487285377

`filter[A080089(n+1), A259044(#)]`
-/

namespace A079886.P10609547506487285377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A079886.P10609547506487285377

/-! ## A079886.P12069022381880581649

`filter[A080089(n+1), A276950(#)]`
-/

namespace A079886.P12069022381880581649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276950 (f1 j).toNat = 1) n)

end

end A079886.P12069022381880581649

/-! ## A079886.P16974543110521898523

`filter[A080089(n+1), A316829(#)]`
-/

namespace A079886.P16974543110521898523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A079886.P16974543110521898523

/-! ## A079886.P8680618124363396204

`filter[A080089(n+2), A097325(#)]`
-/

namespace A079886.P8680618124363396204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A079886.P8680618124363396204

/-! ## A079886.P8934515316739773834

`filter[A080089(n+2), A098725(#)]`
-/

namespace A079886.P8934515316739773834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A079886.P8934515316739773834

/-! ## A079886.P11805056484262203862

`filter[A080089(n+2), A166486(#)]`
-/

namespace A079886.P11805056484262203862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A079886.P11805056484262203862

/-!
# A079887: Values of y-x where p runs through the primes of form 4k+1 and p=x^2+y^2, 0<=x<=y.

The programs for A079887, there is no canonical definition to state claims against.
-/

/-! ## A079887.P1414624499593646057

`A002330(n+2)-A002331(n+2)`
-/

namespace A079887.P1414624499593646057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 2) - A002331 (n + 2)

end

end A079887.P1414624499593646057

/-! ## A079887.P5212560020682935691

`2*A096030(n+1)+1`
-/

namespace A079887.P5212560020682935691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096030 (n + 1) + 1

end

end A079887.P5212560020682935691

/-! ## A079887.P10241199801270850836

`A070079(n+1)/A079886(n+1)`
-/

namespace A079887.P10241199801270850836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070079 (n + 1) : ℚ) / (A079886 (n + 1) : ℚ)

end

end A079887.P10241199801270850836

/-! ## A079887.P9399205748795728352

`A096030(n+1)+A002330(n+2)-A096029(n+1)`
-/

namespace A079887.P9399205748795728352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096030 (n + 1) + (A002330 (n + 2) - A096029 (n + 1))

end

end A079887.P9399205748795728352

/-! ## A079887.P2707437967427054594

`A002330(n+2)+A002330(n+2)-A079886(n+1)`
-/

namespace A079887.P2707437967427054594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 2) + (A002330 (n + 2) - A079886 (n + 1))

end

end A079887.P2707437967427054594

/-! ## A079887.P6827710691886929194

`A079886(n+1)-A002331(n+2)-A002331(n+2)`
-/

namespace A079887.P6827710691886929194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079886 (n + 1) - A002331 (n + 2) - A002331 (n + 2)

end

end A079887.P6827710691886929194

/-! ## A079887.P13834844425937271355

`A070079(n+1)/(A002331(n+2)+A002330(n+2))`
-/

namespace A079887.P13834844425937271355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070079 (n + 1) : ℚ) / (A002331 (n + 2) + A002330 (n + 2) : ℚ)

end

end A079887.P13834844425937271355

/-! ## A079887.P773045119458867602

`A145019(n+1)/A002331(n+2)-A002331(n+2)`
-/

namespace A079887.P773045119458867602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145019 (n + 1) : ℚ) / (A002331 (n + 2) : ℚ) - (A002331 (n + 2) : ℚ)

end

end A079887.P773045119458867602

/-! ## A079887.P16830263549377236585

`A002330(n+2)-A145019(n+1)/A002330(n+2)`
-/

namespace A079887.P16830263549377236585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002330 (n + 2) : ℚ) - (A145019 (n + 1) : ℚ) / (A002330 (n + 2) : ℚ)

end

end A079887.P16830263549377236585

/-! ## A079887.P3773821798253038851

`A000196(A002144(n+1)-A145046(n))`
-/

namespace A079887.P3773821798253038851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002144 (n + 1) - A145046 n).toNat

end

end A079887.P3773821798253038851

/-! ## A079887.P682957076790431908

`sqrt(p?[4*n+1]-A037214(p?[4*n+1]))`
-/

namespace A079887.P682957076790431908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A037214 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) : ℝ)

end

end A079887.P682957076790431908

/-! ## A079887.P15657629373906139886

`A064875(A294091(n+2))`
-/

namespace A079887.P15657629373906139886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A294091 (n + 2)).toNat

end

end A079887.P15657629373906139886

/-! ## A079887.P6893051218495031503

`A064875(2*A002313(n+2))`
-/

namespace A079887.P6893051218495031503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (2 * A002313 (n + 2)).toNat

end

end A079887.P6893051218495031503

/-! ## A079887.P1438139647960978939

`A205790(2*p?[4*n+1])`
-/

namespace A079887.P1438139647960978939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079887.P1438139647960978939

/-! ## A079887.P12093879959837357518

`A205790(2*or(1, p?[4*n-7]-1))`
-/

namespace A079887.P12093879959837357518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (2 * Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A079887.P12093879959837357518

/-! ## A079887.P15792536619827327181

`A205790(2*xor(1, p?[4*n-7]-1))`
-/

namespace A079887.P15792536619827327181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (2 * Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A079887.P15792536619827327181

/-! ## A079887.P18176841712035796669

`A205790(2*A002313(n+2))`
-/

namespace A079887.P18176841712035796669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (2 * A002313 (n + 2)).toNat

end

end A079887.P18176841712035796669

/-! ## A079887.P173694130383297450

`A205790(2*A280084(n+2))`
-/

namespace A079887.P173694130383297450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (2 * A280084 (n + 2)).toNat

end

end A079887.P173694130383297450

/-!
# A079889: Primes indexed by A078515; i.e., primes which start record runs of consecutive primes with distinct first differences.

The programs for A079889, there is no canonical definition to state claims against.
-/

/-! ## A079889.P5725405373106307091

`record[A079007(n)-char[1]]`
-/

namespace A079889.P5725405373106307091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079007 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079889.P5725405373106307091

/-! ## A079889.P1039273413851472181

`record[A079007(ceil(xor(1, n)/2))]`
-/

namespace A079889.P1039273413851472181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079007 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079889.P1039273413851472181

/-! ## A079889.P6800680892205111883

`record[A079007(round(xor(1, n)/6))]`
-/

namespace A079889.P6800680892205111883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079007 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079889.P6800680892205111883

/-! ## A079889.P9279821749393487653

`record[A079007((n%4+n)/2)]`
-/

namespace A079889.P9279821749393487653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079007 (SequenceMachineLib.roundAway (((n % 4 + n : ℕ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079889.P9279821749393487653

/-! ## A079889.P7253519264874106107

`record[A079007(ceil(lcm(2, n+1)/4))]`
-/

namespace A079889.P7253519264874106107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079007 ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079889.P7253519264874106107

/-!
# A079891: a(n) = gcd(n, A079890(n)).

The programs for A079891, there is no canonical definition to state claims against.
-/

/-! ## A079891.P18294690012000170617

`gcd(n+1, A079890(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079891.P18294690012000170617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A079890 (n + 1))

end

end A079891.P18294690012000170617

/-! ## A079891.P9228427980500708448

`gcd(A079890(A110514(2*n)), A110514(2*n))`
-/

namespace A079891.P9228427980500708448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079890 (A110514 (2 * n)).toNat) (A110514 (2 * n))

end

end A079891.P9228427980500708448

/-! ## A079891.P13158297081260530634

`A109004(A079890(n+1)+A000217(n))`
-/

namespace A079891.P13158297081260530634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A079890 (n + 1) + A000217 n).toNat

end

end A079891.P13158297081260530634

/-! ## A079891.P3126389790908411962

`(n+1)/A299766((n+1)^3)`
-/

namespace A079891.P3126389790908411962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A299766 ((n + 1) ^ 3) : ℚ)

end

end A079891.P3126389790908411962

/-! ## A079891.P2552999139426661916

`gcd(n+1, A324655(A341703(n)))`
-/

namespace A079891.P2552999139426661916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324655 (A341703 n).toNat)

end

end A079891.P2552999139426661916

/-!
# A079892: Least number > n having one more distinct prime factor than n.

The programs for A079892, there is no canonical definition to state claims against.
-/

/-! ## A079892.P811479308763264035

`A294280(n+1)%A250292(n+1)+n+1`
-/

namespace A079892.P811479308763264035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294280 (n + 1)) (A250292 (n + 1)) + (n + 1 : ℤ)

end

end A079892.P811479308763264035

/-! ## A079892.P11449594507891810206

`A294280(n+1)+(n+1)%A159585(n+1)²`
-/

namespace A079892.P11449594507891810206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294280 (n + 1) + Int.tmod (n + 1 : ℤ) (A159585 (n + 1) ^ 2)

end

end A079892.P11449594507891810206

/-! ## A079892.P16778711999378042695

`A158388(A142361(n+1))+A294280(n+1)+n`
-/

namespace A079892.P16778711999378042695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A142361 (n + 1)).toNat + (A294280 (n + 1) + (n : ℤ))

end

end A079892.P16778711999378042695

/-! ## A079892.P4021206708401793650

`A158388(A142364(n+1))+A294280(n+1)+n`
-/

namespace A079892.P4021206708401793650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A142364 (n + 1)).toNat + (A294280 (n + 1) + (n : ℤ))

end

end A079892.P4021206708401793650

/-! ## A079892.P17078332922446430483

`A294280(A294277(n+1))+A294280(n+1)+n`
-/

namespace A079892.P17078332922446430483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294280 (A294277 (n + 1)).toNat + (A294280 (n + 1) + (n : ℤ))

end

end A079892.P17078332922446430483

/-!
# A079893: a(n) = gcd(n, A079892(n)), where A079892(n) is the least number > n having one more distinct prime factor than n.

The programs for A079893, there is no canonical definition to state claims against.
-/

/-! ## A079893.P13567225363795173234

`gcd(n+1, A079892(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079893.P13567225363795173234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A079892 (n + 1))

end

end A079893.P13567225363795173234

/-! ## A079893.P9299210435917057994

`gcd(xor(n, -1), A294280(n+1))`
-/

namespace A079893.P9299210435917057994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A294280 (n + 1))

end

end A079893.P9299210435917057994

/-! ## A079893.P2070774436236915687

`gcd(A005915(n), A294280(n+1))`
-/

namespace A079893.P2070774436236915687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005915 n) (A294280 (n + 1))

end

end A079893.P2070774436236915687

/-! ## A079893.P7216290597740204979

`gcd((n+1)*Δ[n^3], A294280(A000027(n+1)))`
-/

namespace A079893.P7216290597740204979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (A294280 (A000027 (n + 1)).toNat)

end

end A079893.P7216290597740204979

/-! ## A079893.P6381270297725751713

`gcd(A000027(n+1), A000027(A294280(n+1)))`
-/

namespace A079893.P6381270297725751713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A000027 (A294280 (n + 1)).toNat)

end

end A079893.P6381270297725751713

/-!
# A079894: a(n) = gcd(A079890(n), A079892(n)).

The programs for A079894, there is no canonical definition to state claims against.
-/

/-! ## A079894.P1018175534644070614

`gcd(A079890(n+1), A079892(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079894.P1018175534644070614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079890 (n + 1)) (A079892 (n + 1))

end

end A079894.P1018175534644070614

/-!
# A079895: a(1) = 1; a(n) = phi(n) - phi(n-1)* a(n-1) if n > 1.

The programs for A079895, there is no canonical definition to state claims against.
-/

/-! ## A079895.P14190154342395027848

`A000010(n+1)-a(n-1)*A000010(n)` with `a(0)=1`
-/

namespace A079895.P14190154342395027848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (n + 1) - a (n - 1) * A000010 n

end

end A079895.P14190154342395027848

/-! ## A079895.P12147308316073803044

`A349137(Δ[n²])-a(n-1)*A000010(n)` with `a(0)=1`
-/

namespace A079895.P12147308316073803044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1) * A000010 n

end

end A079895.P12147308316073803044

/-! ## A079895.P8113343322348445829

`Δ[A002088(n)]-(A109606(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A079895.P8113343322348445829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - (A109606 n + 1) * a (n - 1)

end

end A079895.P8113343322348445829

/-! ## A079895.P18405724557629494460

`1-A051953(n+1)+n-(A109606(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A079895.P18405724557629494460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A051953 (n + 1) + (n : ℤ) - (A109606 n + 1) * a (n - 1)

end

end A079895.P18405724557629494460

/-! ## A079895.P17437474184368801513

`A071118(n+1)/(2*(n+1))-(A109606(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A079895.P17437474184368801513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A071118 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) - (A109606 n + 1 : ℚ) * a (n - 1)

end

end A079895.P17437474184368801513

/-!
# A079896: Discriminants of indefinite binary quadratic forms.

The programs for A079896, the canonical program `A079896.P18351430055476264157` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079896 has offset 1).

The definition of A079896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079896.P18351430055476264157

`eq[(xor(2, n)-n)%8, A169695(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079896

/-- `eq[(xor(2, n)-n)%8, A169695(n)]` -/
def P18351430055476264157.Spec : Prop :=
  ∀ n, (P18351430055476264157.a n : ℤ) = A079896 (n + 1)

theorem P18351430055476264157.correct : P18351430055476264157.Spec := by
  intro n
  simp only [A079896, Nat.add_sub_cancel]

end A079896

/-! ## A079896.P4786610046669517038

`eq[A001223(xor(2, n)-n+8), A169695(n)]`
-/

namespace A079896.P4786610046669517038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((Nat.xor 2 n : ℤ) - (n : ℤ) + 8).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079896.P4786610046669517038

namespace A079896

/-- `eq[A001223(xor(2, n)-n+8), A169695(n)]` -/
def P4786610046669517038.Spec : Prop :=
  ∀ n, (P4786610046669517038.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P8169329340687646495

`eq[A057555(xor(2, n)-n+8), A169695(n)]`
-/

namespace A079896.P8169329340687646495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((Nat.xor 2 n : ℤ) - (n : ℤ) + 8).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079896.P8169329340687646495

namespace A079896

/-- `eq[A057555(xor(2, n)-n+8), A169695(n)]` -/
def P8169329340687646495.Spec : Prop :=
  ∀ n, (P8169329340687646495.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P4969350546922416064

`A100832(A183572(n+1))`
-/

namespace A079896.P4969350546922416064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (A183572 (n + 1)).toNat

end

end A079896.P4969350546922416064

namespace A079896

/-- `A100832(A183572(n+1))` -/
def P4969350546922416064.Spec : Prop :=
  ∀ n, P4969350546922416064.a n = A079896 (n + 1)

end A079896

/-! ## A079896.P3262366353167796662

`filter[A100832(n+1), A049240(#)]`
-/

namespace A079896.P3262366353167796662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A079896.P3262366353167796662

namespace A079896

/-- `filter[A100832(n+1), A049240(#)]` -/
def P3262366353167796662.Spec : Prop :=
  ∀ n, P3262366353167796662.a n = A079896 (n + 1)

end A079896

/-! ## A079896.P5165870752017419179

`A042948(A183572(n+1)+1)`
-/

namespace A079896.P5165870752017419179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A183572 (n + 1) + 1).toNat

end

end A079896.P5165870752017419179

namespace A079896

/-- `A042948(A183572(n+1)+1)` -/
def P5165870752017419179.Spec : Prop :=
  ∀ n, P5165870752017419179.a n = A079896 (n + 1)

end A079896

/-! ## A079896.P9433283271149227375

`filter[A042948(n+1), A049240(#)]`
-/

namespace A079896.P9433283271149227375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A079896.P9433283271149227375

namespace A079896

/-- `filter[A042948(n+1), A049240(#)]` -/
def P9433283271149227375.Spec : Prop :=
  ∀ n, P9433283271149227375.a n = A079896 (n + 1)

end A079896

/-! ## A079896.P9060627911909611301

`eq[A010141(n+1), A067694(n)]`
-/

namespace A079896.P9060627911909611301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079896.P9060627911909611301

namespace A079896

/-- `eq[A010141(n+1), A067694(n)]` -/
def P9060627911909611301.Spec : Prop :=
  ∀ n, (P9060627911909611301.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P4700006820563390548

`A042948(A000196(2*n+1)+n+2)`
-/

namespace A079896.P4700006820563390548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A000196 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A079896.P4700006820563390548

namespace A079896

/-- `A042948(A000196(2*n+1)+n+2)` -/
def P4700006820563390548.Spec : Prop :=
  ∀ n, P4700006820563390548.a n = A079896 (n + 1)

end A079896

/-! ## A079896.P1027761960253496512

`∩[A100832(n+1), A174805(n)]`
-/

namespace A079896.P1027761960253496512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079896.P1027761960253496512

namespace A079896

/-- `∩[A100832(n+1), A174805(n)]` -/
def P1027761960253496512.Spec : Prop :=
  ∀ n, (P1027761960253496512.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P843628232830272549

`∩[A000037(n+1), A042948(n)]`
-/

namespace A079896.P843628232830272549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079896.P843628232830272549

namespace A079896

/-- `∩[A000037(n+1), A042948(n)]` -/
def P843628232830272549.Spec : Prop :=
  ∀ n, (P843628232830272549.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P4803662710898213274

`∩[A000037(n+1), A100832(n+1)]`
-/

namespace A079896.P4803662710898213274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079896.P4803662710898213274

namespace A079896

/-- `∩[A000037(n+1), A100832(n+1)]` -/
def P4803662710898213274.Spec : Prop :=
  ∀ n, (P4803662710898213274.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P6484768776149007094

`filter[A098181(2*n), A049240(#)]`
-/

namespace A079896.P6484768776149007094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A079896.P6484768776149007094

namespace A079896

/-- `filter[A098181(2*n), A049240(#)]` -/
def P6484768776149007094.Spec : Prop :=
  ∀ n, P6484768776149007094.a n = A079896 (n + 1)

end A079896

/-! ## A079896.P1064117447607362438

`filter[A090964(2*n+1), A049240(#)]`
-/

namespace A079896.P1064117447607362438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A079896.P1064117447607362438

namespace A079896

/-- `filter[A090964(2*n+1), A049240(#)]` -/
def P1064117447607362438.Spec : Prop :=
  ∀ n, P1064117447607362438.a n = A079896 (n + 1)

end A079896

/-! ## A079896.P6686399292147877880

`lt[2, n/A110243(n)]`
-/

namespace A079896.P6686399292147877880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A110243 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A079896.P6686399292147877880

namespace A079896

/-- `lt[2, n/A110243(n)]` -/
def P6686399292147877880.Spec : Prop :=
  ∀ n, (P6686399292147877880.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P14355522116244778103

`eq[and(2, n), A000122(n)]`
-/

namespace A079896.P14355522116244778103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079896.P14355522116244778103

namespace A079896

/-- `eq[and(2, n), A000122(n)]` -/
def P14355522116244778103.Spec : Prop :=
  ∀ n, (P14355522116244778103.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P14998841179687692684

`eq[and(2, n), A002448(n)]`
-/

namespace A079896.P14998841179687692684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079896.P14998841179687692684

namespace A079896

/-- `eq[and(2, n), A002448(n)]` -/
def P14998841179687692684.Spec : Prop :=
  ∀ n, (P14998841179687692684.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P11987304688431769463

`eq[and(2, n), A010052(n)]`
-/

namespace A079896.P11987304688431769463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079896.P11987304688431769463

namespace A079896

/-- `eq[and(2, n), A010052(n)]` -/
def P11987304688431769463.Spec : Prop :=
  ∀ n, (P11987304688431769463.a n : ℤ) = A079896 (n + 1)

end A079896

/-! ## A079896.P1872267656755729439

`eq[and(2, n), A089807(n)]`
-/

namespace A079896.P1872267656755729439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079896.P1872267656755729439

namespace A079896

/-- `eq[and(2, n), A089807(n)]` -/
def P1872267656755729439.Spec : Prop :=
  ∀ n, (P1872267656755729439.a n : ℤ) = A079896 (n + 1)

end A079896

/-!
# A079897: a(1) = 1; a(n) = sigma(n) - sigma(n-1)* a(n-1) if n > 1.

The programs for A079897, there is no canonical definition to state claims against.
-/

/-! ## A079897.P6467280733453293121

`A000203(n+1)-a(n-1)*A000203(n)` with `a(0)=1`
-/

namespace A079897.P6467280733453293121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 (n + 1) - a (n - 1) * A000203 n

end

end A079897.P6467280733453293121

/-! ## A079897.P14984460046046434513

`A097012(n+1)-a(n-1)*A097012(n)` with `a(0)=1`
-/

namespace A079897.P14984460046046434513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097012 (n + 1) - a (n - 1) * A097012 n

end

end A079897.P14984460046046434513

/-!
# A079898: a(1) = 1; a(n) = tau(n) - tau(n-1)* a(n-1) if n > 1.

The programs for A079898, the canonical program `A079898.P5535237545047287973` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079898 has offset 1).

The definition of A079898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079898.P9382405263546918400

`A000005(n+1)-a(n-1)*A000005(n)` with `a(0)=1`
-/

namespace A079898.P9382405263546918400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (n + 1) - a (n - 1) * A000005 n

end

end A079898.P9382405263546918400

namespace A079898

/-- `A000005(n+1)-a(n-1)*A000005(n)` -/
def P9382405263546918400.Spec : Prop :=
  ∀ n, P9382405263546918400.a n = A079898 (n + 1)

end A079898

/-! ## A079898.P5535237545047287973

`∏{e}[n+1, #+1]-a(n-1)*A322483(n²)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079898

/-- `∏{e}[n+1, #+1]-a(n-1)*A322483(n²)` -/
def P5535237545047287973.Spec : Prop :=
  ∀ n, P5535237545047287973.a n = A079898 (n + 1)

theorem P5535237545047287973.correct : P5535237545047287973.Spec := by
  intro n
  simp only [A079898, Nat.add_sub_cancel]

end A079898

/-! ## A079898.P14239327268284992826

`Δ[A054519(n)]-a(n-1)*A322483(n²)` with `a(0)=1`
-/

namespace A079898.P14239327268284992826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1) * A322483 (n ^ 2)

end

end A079898.P14239327268284992826

namespace A079898

/-- `Δ[A054519(n)]-a(n-1)*A322483(n²)` -/
def P14239327268284992826.Spec : Prop :=
  ∀ n, P14239327268284992826.a n = A079898 (n + 1)

end A079898

/-!
# A079899: a(1) = 1; a(n) = Fibonacci(n) - Fibonacci(n-1)* a(n-1) if n > 1.

The programs for A079899, there is no canonical definition to state claims against.
-/

/-! ## A079899.P12677087450738003682

`A000045(n+1)-a(n-1)*A000045(n)` with `a(0)=1`
-/

namespace A079899.P12677087450738003682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n + 1) - a (n - 1) * A000045 n

end

end A079899.P12677087450738003682

/-! ## A079899.P8217318370494422232

`∑[A212804(n)]-a(n-1)*A212804(n+1)` with `a(0)=1`
-/

namespace A079899.P8217318370494422232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) * A212804 (n + 1)

end

end A079899.P8217318370494422232

/-! ## A079899.P15896922159964583585

`∑[A212804(n)]-(A157726(n)-3)*a(n-1)` with `a(0)=1`
-/

namespace A079899.P15896922159964583585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A157726 n - 3) * a (n - 1)

end

end A079899.P15896922159964583585

/-! ## A079899.P4356077551130738957

`A185357(n)-a(n-1)*A197896(∑[n])` with `a(0)=1`
-/

namespace A079899.P4356077551130738957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185357 n - a (n - 1) * A197896 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079899.P4356077551130738957

