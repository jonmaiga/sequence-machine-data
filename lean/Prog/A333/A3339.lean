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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A333900: Number of nonequivalent n X n binary matrices with 4 ones in every row and column up to permutation of rows.

The programs for A333900, there is no canonical definition to state claims against.
-/

/-! ## A333900.P7875578203956570586

`2*(4^(a(n-2)+2*a(n-1))+1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A333900.P7875578203956570586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1] fun n a =>
  2 * (4 ^ (a (n - 2) + 2 * a (n - 1)) + 1)

end

end A333900.P7875578203956570586

/-! ## A333900.P6092917616448854397

`A100098(n*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A333900.P6092917616448854397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1] fun n a =>
  A100098 ((n : ℤ) * a (n - 1)).toNat

end

end A333900.P6092917616448854397

/-!
# A333901: Array read by antidiagonals: T(n,k) is the number of n X k nonnegative integer matrices with all column sums n and row sums k.

The programs for A333901, there is no canonical definition to state claims against.
-/

/-! ## A333901.P13011233985070853550

`A132106(floor(A143007(n)/A307646(3*n+1)))`
-/

namespace A333901.P13011233985070853550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 ⌊(A143007 n : ℚ) / (A307646 (3 * n + 1) : ℚ)⌋.toNat

end

end A333901.P13011233985070853550

/-!
# A333902: Number of nonequivalent 3 X n nonnegative integer matrices with all column sums 3 and row sums n up to permutation of rows.

The programs for A333902, there is no canonical definition to state claims against.
-/

/-! ## A333902.P14064134344358512874

`A257462(A167614(n+2))`
-/

namespace A333902.P14064134344358512874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (A167614 (n + 2)).toNat

end

end A333902.P14064134344358512874

/-! ## A333902.P17326363988865864082

`A257462(A141214(n)+6)`
-/

namespace A333902.P17326363988865864082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (A141214 n + 6).toNat

end

end A333902.P17326363988865864082

/-! ## A333902.P8987366978573695364

`A257462(A052905(n)+8)`
-/

namespace A333902.P8987366978573695364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (A052905 n + 8).toNat

end

end A333902.P8987366978573695364

/-! ## A333902.P8185132629178095331

`A257462(eq[3, A002262(n)])`
-/

namespace A333902.P8185132629178095331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333902.P8185132629178095331

/-! ## A333902.P3442359206059930481

`A257462(eq[8, A059268(n)])`
-/

namespace A333902.P3442359206059930481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333902.P3442359206059930481

/-!
# A333903: Number of directed Hamiltonian paths in a 2*n X n grid starting at the upper left corner and finishing in the lower left corner.

The programs for A333903, there is no canonical definition to state claims against.
-/

/-! ## A333903.P12089445241618253817

`A271592(C(2*(n+1)+n+1-1, 2)+2*(n+1))`
-/

namespace A333903.P12089445241618253817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (Nat.choose ((2 * (n + 1) + (n + 1) : ℤ) - 1).toNat 2 + 2 * (n + 1))

end

end A333903.P12089445241618253817

/-! ## A333903.P607242500040841397

`A271592(A064226(n))`
-/

namespace A333903.P607242500040841397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A064226 n).toNat

end

end A333903.P607242500040841397

/-! ## A333903.P18357888058959947944

`A271592(A140064(n+1))`
-/

namespace A333903.P18357888058959947944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A140064 (n + 1)).toNat

end

end A333903.P18357888058959947944

/-! ## A333903.P13230603510197481407

`A271592(A062708(n+1)+1)`
-/

namespace A333903.P13230603510197481407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A062708 (n + 1) + 1).toNat

end

end A333903.P13230603510197481407

/-! ## A333903.P17415952979592497040

`A271592(A000217(3*n+2)-n)`
-/

namespace A333903.P17415952979592497040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A000217 (3 * n + 2) - (n : ℤ)).toNat

end

end A333903.P17415952979592497040

/-!
# A333904: The smallest number which is the sum of 2 distinct lucky numbers in exactly n different ways.

The programs for A333904, there is no canonical definition to state claims against.
-/

/-! ## A333904.P15785044372228641856

`A082897(n+1)+A057432(A261531(2*n+1))`
-/

namespace A333904.P15785044372228641856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082897 (n + 1) + A057432 (A261531 (2 * n + 1)).toNat

end

end A333904.P15785044372228641856

/-! ## A333904.P683701479653296755

`A000010(A169926(3*(n+1)))²%A169928(3*(n+1))`
-/

namespace A333904.P683701479653296755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A169926 (3 * (n + 1))).toNat ^ 2) (A169928 (3 * (n + 1)))

end

end A333904.P683701479653296755

/-!
# A333905: Lexicographically earliest sequence of distinct positive integers such that a(n) divides the concatenation of a(n+1) to a(n+2).

The programs for A333905, the canonical program `A333905.P5790733750334327707` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333905 has offset 1).

The definition of A333905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333905.P5062297738692129508

`ogf((1+2x+x^2-x^4-2x^5-4x^7)/(1-2x^2))`
-/

namespace A333905.P5062297738692129508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 0, -1, -2, 0, -4] [1, 0, -2] n

end

end A333905.P5062297738692129508

namespace A333905

/-- `ogf((1+2x+x^2-x^4-2x^5-4x^7)/(1-2x^2))` -/
def P5062297738692129508.Spec : Prop :=
  ∀ n, P5062297738692129508.a n = A333905 (n + 1)

end A333905

/-! ## A333905.P5790733750334327707

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=10, a(7)=8`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333905

/-- `2*a(n-2)` -/
def P5790733750334327707.Spec : Prop :=
  ∀ n, (P5790733750334327707.a n : ℤ) = A333905 (n + 1)

theorem P5790733750334327707.correct : P5790733750334327707.Spec := by
  intro n
  simp only [A333905, Nat.add_sub_cancel]

end A333905

/-!
# A333906: For n >= 2, a(n) = Sum_{k=2..n} prevpower2(k) + nextpower2(k) - 2*k, where prevpower2(k) is the largest power of 2 < k, nextpower2(k) is the smallest power of 2 > k.

The programs for A333906, there is no canonical definition to state claims against.
-/

/-! ## A333906.P1777081156895554109

`∑[A035327(n+2)-(1-2^floor(log2(n+1))+n)]`
-/

namespace A333906.P1777081156895554109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (n + 2) - (1 - (2 ^ Nat.log 2 (n + 1) : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P1777081156895554109

/-! ## A333906.P921041037315216429

`∑[A080079(n+2)-A062050(n+1)]`
-/

namespace A333906.P921041037315216429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 2) - A062050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P921041037315216429

/-! ## A333906.P11629263593690598762

`A062050(n+2)*A080079(n+2)-1`
-/

namespace A333906.P11629263593690598762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (n + 2) * A080079 (n + 2) - 1

end

end A333906.P11629263593690598762

/-! ## A333906.P17079817858136560126

`∑[A080079(n+2)-(A053645(n+1)+1)]`
-/

namespace A333906.P17079817858136560126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 2) - (A053645 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P17079817858136560126

/-! ## A333906.P1378233462948086314

`∑[A053644(n+1)-A053645(2*(n+2))]`
-/

namespace A333906.P1378233462948086314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) - A053645 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P1378233462948086314

/-! ## A333906.P156861207614882429

`∑[A080079(n+2)-(2*(n+1)-A092754(n+1))]`
-/

namespace A333906.P156861207614882429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 2) - ((2 * (n + 1) : ℤ) - A092754 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P156861207614882429

/-! ## A333906.P2816437348841415158

`∑[A080079(n+2)-∑[(n+1)/gcd(2, A014963(n+1))-n]]`
-/

namespace A333906.P2816437348841415158
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A014963 (n + 1)) : ℚ) - (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080079 (n + 2) : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P2816437348841415158

/-! ## A333906.P5561768430537859274

`∑[A292370(A000695(n+2))-A053645(n+1)]`
-/

namespace A333906.P5561768430537859274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A000695 (n + 2)).toNat - A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P5561768430537859274

/-! ## A333906.P15829440216621779024

`∑[A153152(A054429(n+2))-A153152(n+1)]`
-/

namespace A333906.P15829440216621779024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A054429 (n + 2)).toNat - A153152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333906.P15829440216621779024

/-! ## A333906.P13842641210621051734

`A063915(n)-(A363166(n+2)+A363166(n+2))`
-/

namespace A333906.P13842641210621051734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063915 n - (A363166 (n + 2) + A363166 (n + 2))

end

end A333906.P13842641210621051734

/-!
# A333907: For n >= 1, a(n) = Sum_{k=1..n} prevfib(k) + nextfib(k) - 2*k, where prevfib(k) is the largest Fibonacci number < k, nextfib(k) is the smallest Fibonacci number > k.

The programs for A333907, there is no canonical definition to state claims against.
-/

/-! ## A333907.P4137992544463578620

`∑[A361989(n)-A066628(n)]`
-/

namespace A333907.P4137992544463578620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361989 n - A066628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333907.P4137992544463578620

/-! ## A333907.P5828629330464132312

`∑[A023444(A246104(n)-n)-A066628(n)]`
-/

namespace A333907.P5828629330464132312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246104 n - (n : ℤ)).toNat - A066628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333907.P5828629330464132312

/-! ## A333907.P2679680839230727417

`dr(A262985(A263003(n)²))`
-/

namespace A333907.P2679680839230727417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A262985 (A263003 n ^ 2).toNat)

end

end A333907.P2679680839230727417

/-!
# A333908: Position of n-th 0 in A030604.

The programs for A333908, there is no canonical definition to state claims against.
-/

/-! ## A333908.P18093546311298226564

`eq[0, A030604(n)]`
-/

namespace A333908.P18093546311298226564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333908.P18093546311298226564

/-! ## A333908.P5261199645352129245

`lt[A030604(n), acot(A028310(n))]`
-/

namespace A333908.P5261199645352129245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A028310 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A333908.P5261199645352129245

/-! ## A333908.P991355237196616647

`lt[A030604(n), acot(A154612(n))]`
-/

namespace A333908.P991355237196616647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A154612 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A333908.P991355237196616647

/-! ## A333908.P5934509896759731625

`lt[A030604(n), acot(A013946(n+1))]`
-/

namespace A333908.P5934509896759731625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A013946 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A333908.P5934509896759731625

/-! ## A333908.P12406761030138575084

`lt[A030604(n), acot(A060747(n+1))]`
-/

namespace A333908.P12406761030138575084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A060747 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A333908.P12406761030138575084

/-! ## A333908.P2358445274578793854

`lt[A030604(n), acot(A070976(n))]`
-/

namespace A333908.P2358445274578793854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A070976 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A333908.P2358445274578793854

/-! ## A333908.P283114349016757490

`lt[A030604(n), acot(A103284(n))]`
-/

namespace A333908.P283114349016757490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A103284 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A333908.P283114349016757490

/-!
# A333909: Numbers k such that phi(k) is the sum of 2 squares, where phi is the Euler totient function (A000010).

The programs for A333909, the canonical program `A333909.P16369031029610307077` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333909 has offset 1).

The definition of A333909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333909.P16369031029610307077

`eq[1, A229062(A062570(n+1))]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333909

/-- `eq[1, A229062(A062570(n+1))]+1` -/
def P16369031029610307077.Spec : Prop :=
  ∀ n, (P16369031029610307077.a n : ℤ) = A333909 (n + 1)

theorem P16369031029610307077.correct : P16369031029610307077.Spec := by
  intro n
  simp only [A333909, Nat.add_sub_cancel]

end A333909

/-! ## A333909.P6550507696187522662

`lt[0, A002654(A000010(1+n))]+1`
-/

namespace A333909.P6550507696187522662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A000010 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333909.P6550507696187522662

namespace A333909

/-- `lt[0, A002654(A000010(1+n))]+1` -/
def P6550507696187522662.Spec : Prop :=
  ∀ n, (P6550507696187522662.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P10122413917310646328

`eq[1, A229062(A053575(n+1))]+1`
-/

namespace A333909.P10122413917310646328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A053575 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333909.P10122413917310646328

namespace A333909

/-- `eq[1, A229062(A053575(n+1))]+1` -/
def P10122413917310646328.Spec : Prop :=
  ∀ n, (P10122413917310646328.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P10537829271519876939

`lt[A070176(A000010(5*(n+1))), 1]+1`
-/

namespace A333909.P10537829271519876939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A000010 (5 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333909.P10537829271519876939

namespace A333909

/-- `lt[A070176(A000010(5*(n+1))), 1]+1` -/
def P10537829271519876939.Spec : Prop :=
  ∀ n, (P10537829271519876939.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P10437987846339306639

`lt[n*A070176(A225530(n)), n]`
-/

namespace A333909.P10437987846339306639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070176 (A225530 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333909.P10437987846339306639

namespace A333909

/-- `lt[n*A070176(A225530(n)), n]` -/
def P10437987846339306639.Spec : Prop :=
  ∀ n, (P10437987846339306639.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P14548102233770065339

`eq[0, A070176(A225530(n+1))]+1`
-/

namespace A333909.P14548102233770065339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A225530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333909.P14548102233770065339

namespace A333909

/-- `eq[0, A070176(A225530(n+1))]+1` -/
def P14548102233770065339.Spec : Prop :=
  ∀ n, (P14548102233770065339.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P10475957447637044975

`eq[A000007(n), A070176(A225530(n))]`
-/

namespace A333909.P10475957447637044975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333909.P10475957447637044975

namespace A333909

/-- `eq[A000007(n), A070176(A225530(n))]` -/
def P10475957447637044975.Spec : Prop :=
  ∀ n, (P10475957447637044975.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P3598673453910670502

`eq[A000038(n), A070176(A225530(n))]`
-/

namespace A333909.P3598673453910670502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333909.P3598673453910670502

namespace A333909

/-- `eq[A000038(n), A070176(A225530(n))]` -/
def P3598673453910670502.Spec : Prop :=
  ∀ n, (P3598673453910670502.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P7891118075884532055

`eq[A057427(n), A229062(A225530(n))]`
-/

namespace A333909.P7891118075884532055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333909.P7891118075884532055

namespace A333909

/-- `eq[A057427(n), A229062(A225530(n))]` -/
def P7891118075884532055.Spec : Prop :=
  ∀ n, (P7891118075884532055.a n : ℤ) = A333909 (n + 1)

end A333909

/-! ## A333909.P9907095732131910033

`record[A028310(n)*A229062(A225530(n))]`
-/

namespace A333909.P9907095732131910033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A229062 (A225530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333909.P9907095732131910033

namespace A333909

/-- `record[A028310(n)*A229062(A225530(n))]` -/
def P9907095732131910033.Spec : Prop :=
  ∀ n, P9907095732131910033.a n = A333909 (n + 1)

end A333909

/-! ## A333909.P6264862882385291968

`eq[A014963(4*(2*n+1)), A229062(A225530(n))]`
-/

namespace A333909.P6264862882385291968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333909.P6264862882385291968

namespace A333909

/-- `eq[A014963(4*(2*n+1)), A229062(A225530(n))]` -/
def P6264862882385291968.Spec : Prop :=
  ∀ n, (P6264862882385291968.a n : ℤ) = A333909 (n + 1)

end A333909

/-!
# A333910: Numbers k such that psi(k) is the sum of 2 squares, where psi is the Dedekind psi function (A001615).

The programs for A333910, the canonical program `A333910.P3160973853015198064` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333910 has offset 1).

The definition of A333910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333910.P3160973853015198064

`lt[A070176(A001615(n+1)), 1]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333910

/-- `lt[A070176(A001615(n+1)), 1]+1` -/
def P3160973853015198064.Spec : Prop :=
  ∀ n, (P3160973853015198064.a n : ℤ) = A333910 (n + 1)

theorem P3160973853015198064.correct : P3160973853015198064.Spec := by
  intro n
  simp only [A333910, Nat.add_sub_cancel]

end A333910

/-! ## A333910.P8898706891988190080

`lt[A070176(A000203(n+1)-A244963(n+1)), 1]+1`
-/

namespace A333910.P8898706891988190080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A000203 (n + 1) - A244963 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333910.P8898706891988190080

namespace A333910

/-- `lt[A070176(A000203(n+1)-A244963(n+1)), 1]+1` -/
def P8898706891988190080.Spec : Prop :=
  ∀ n, (P8898706891988190080.a n : ℤ) = A333910 (n + 1)

theorem P8898706891988190080.correct : P8898706891988190080.Spec := by
  intro n
  simp only [A333910, Nat.add_sub_cancel, A333910.P8898706891988190080.f1, A333910.P8898706891988190080.f2, A333910.P8898706891988190080.a, A333910.P3160973853015198064.f1, A333910.P3160973853015198064.f2, A333910.P3160973853015198064.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A070176, A070176.P12484260426223726726.f2, A070176.P12484260426223726726.f1, A070176.P12484260426223726726.a, A244963, A244963.P8812478636684031312.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A166687, A166687.P48719713538474585.a, A001481, A001481.P5191009309182040448.f1, A001481.P5191009309182040448.f2, A001481.P5191009309182040448.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333910

/-!
# A333911: Numbers k such that sigma(k) is the sum of 2 squares, where sigma is the sum of divisors function (A000203).

The programs for A333911, the canonical program `A333911.P11420999789406905389` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333911 has offset 1).

The definition of A333911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333911.P11420999789406905389

`eq[1, A229062(A000203(1+n))]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A333911

/-- `eq[1, A229062(A000203(1+n))]+1` -/
def P11420999789406905389.Spec : Prop :=
  ∀ n, (P11420999789406905389.a n : ℤ) = A333911 (n + 1)

theorem P11420999789406905389.correct : P11420999789406905389.Spec := by
  intro n
  simp only [A333911, Nat.add_sub_cancel]

end A333911

/-! ## A333911.P121035451119666558

`record[(n+1)*A010052(A262678(∑{d}[n+1, #]))]`
-/

namespace A333911.P121035451119666558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A262678 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333911.P121035451119666558

namespace A333911

/-- `record[(n+1)*A010052(A262678(∑{d}[n+1, #]))]` -/
def P121035451119666558.Spec : Prop :=
  ∀ n, P121035451119666558.a n = A333911 (n + 1)

end A333911

/-! ## A333911.P14776506347983956141

`lt[0, A004018(A161942(n+1))]+1`
-/

namespace A333911.P14776506347983956141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A161942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333911.P14776506347983956141

namespace A333911

/-- `lt[0, A004018(A161942(n+1))]+1` -/
def P14776506347983956141.Spec : Prop :=
  ∀ n, (P14776506347983956141.a n : ℤ) = A333911 (n + 1)

end A333911

/-! ## A333911.P17690904320399999997

`lt[1, A004018(∑{d}[n, #])]`
-/

namespace A333911.P17690904320399999997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333911.P17690904320399999997

namespace A333911

/-- `lt[1, A004018(∑{d}[n, #])]` -/
def P17690904320399999997.Spec : Prop :=
  ∀ n, (P17690904320399999997.a n : ℤ) = A333911 (n + 1)

end A333911

/-! ## A333911.P9694299420488345550

`lt[A000038(n), A000161(∑{d}[n, #])]`
-/

namespace A333911.P9694299420488345550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333911.P9694299420488345550

namespace A333911

/-- `lt[A000038(n), A000161(∑{d}[n, #])]` -/
def P9694299420488345550.Spec : Prop :=
  ∀ n, (P9694299420488345550.a n : ℤ) = A333911 (n + 1)

end A333911

/-! ## A333911.P1418360175593034777

`eq[1, A005171(A004018(∑{d}[n, #])+2)]`
-/

namespace A333911.P1418360175593034777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A004018 (∑ d ∈ Nat.divisors (f3 n), d) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333911.P1418360175593034777

namespace A333911

/-- `eq[1, A005171(A004018(∑{d}[n, #])+2)]` -/
def P1418360175593034777.Spec : Prop :=
  ∀ n, (P1418360175593034777.a n : ℤ) = A333911 (n + 1)

end A333911

/-!
# A333912: Numbers k such that phi(k) is not the sum of 3 squares, where phi is the Euler totient function (A000010).

The programs for A333912, there is no canonical definition to state claims against.
-/

/-! ## A333912.P942313529382856128

`eq[0, A000164(A225530(n))]`
-/

namespace A333912.P942313529382856128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333912.P942313529382856128

/-! ## A333912.P3741022907928175871

`eq[A000007(n), A005875(A225530(n))]`
-/

namespace A333912.P3741022907928175871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333912.P3741022907928175871

/-! ## A333912.P3695667479115576930

`eq[A002828(A225530(n)), A040002(n)]`
-/

namespace A333912.P3695667479115576930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333912.P3695667479115576930

/-! ## A333912.P12857449622875257028

`eq[A005875(A225530(n)), A112316(n)]`
-/

namespace A333912.P12857449622875257028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333912.P12857449622875257028

/-! ## A333912.P15416029536091804808

`eq[A151774(n), A213384(A225530(n))]`
-/

namespace A333912.P15416029536091804808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333912.P15416029536091804808

/-!
# A333913: Numbers k such that lambda(k) is not the sum of 3 squares, where lambda is the Carmichael lambda function (A002322).

The programs for A333913, there is no canonical definition to state claims against.
-/

/-! ## A333913.P15524683925070615127

`eq[0, A213384(A002322(n+1))]+1`
-/

namespace A333913.P15524683925070615127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333913.P15524683925070615127

/-!
# A333915: Number of ways to represent n as a pyramidal number.

The programs for A333915, there is no canonical definition to state claims against.
-/

/-! ## A333915.P9786724782109563834

`A160014(A220521(2*n+5)%A295923(2*(n+2)))`
-/

namespace A333915.P9786724782109563834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (Int.tmod (A220521 (2 * n + 5)) (A295923 (2 * (n + 2)))).toNat

end

end A333915.P9786724782109563834

/-! ## A333915.P17282580732743165967

`A051194(A000005(A281873(n+1)+A005408(n)))`
-/

namespace A333915.P17282580732743165967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A000005 (A281873 (n + 1) + A005408 n).toNat).toNat

end

end A333915.P17282580732743165967

/-! ## A333915.P15120413183525958279

`ceil(A337176(3*n+2)/3)`
-/

namespace A333915.P15120413183525958279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337176 (3 * n + 2) : ℚ) / 3⌉

end

end A333915.P15120413183525958279

/-! ## A333915.P13124200313318093606

`A065033(A337176(3*n+2)-1)`
-/

namespace A333915.P13124200313318093606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A337176 (3 * n + 2) - 1).toNat

end

end A333915.P13124200313318093606

/-! ## A333915.P9585875665231322022

`A094440(A038548(3*n+2)%A263568(n+1))`
-/

namespace A333915.P9585875665231322022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (Int.tmod (A038548 (3 * n + 2)) (A263568 (n + 1))).toNat

end

end A333915.P9585875665231322022

/-!
# A333916: a(n) is the least integer that is pyramidal in exactly n ways.

The programs for A333916, there is no canonical definition to state claims against.
-/

/-! ## A333916.P16961894142315876705

`lcm(A226340(n+1), A278727(A318869(n)))`
-/

namespace A333916.P16961894142315876705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226340 (n + 1)) (A278727 (A318869 n).toNat)

end

end A333916.P16961894142315876705

/-!
# A333918: Perimeters of integer-sided triangles whose altitude from their shortest side is an integer.

The programs for A333918, there is no canonical definition to state claims against.
-/

/-! ## A333918.P9536123815678799248

`lt[A106612(n), A308091(n+1)]+1`
-/

namespace A333918.P9536123815678799248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A333918.P9536123815678799248

/-! ## A333918.P15932115884949265378

`A020725(lt[A106612(n), A308091(n+1)])`
-/

namespace A333918.P15932115884949265378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333918.P15932115884949265378

/-! ## A333918.P4408524928927894456

`∪[A305888(n+1), A334989(n+1)]%A334989(3*n+5)`
-/

namespace A333918.P4408524928927894456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A334989 (3 * n + 5))

end

end A333918.P4408524928927894456

/-! ## A333918.P13590824942015625892

`∪[A334589(n+1), A334989(n+1)]%A334989(3*n+5)`
-/

namespace A333918.P13590824942015625892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A334989 (3 * n + 5))

end

end A333918.P13590824942015625892

/-! ## A333918.P16072250603967094962

`∪[A334665(n+1), A334989(n+1)]%A334989(3*n+5)`
-/

namespace A333918.P16072250603967094962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A334989 (3 * n + 5))

end

end A333918.P16072250603967094962

/-!
# A333919: Perimeters of integer-sided triangles with side lengths a <= b <= c whose altitude from side b is an integer.

The programs for A333919, there is no canonical definition to state claims against.
-/

/-! ## A333919.P8884842193810216470

`∩[A074697(n+1), A351290(n+1)]`
-/

namespace A333919.P8884842193810216470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333919.P8884842193810216470

/-! ## A333919.P16331650007339312516

`∩[A074697(n+1), A231369(n+1)]`
-/

namespace A333919.P16331650007339312516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333919.P16331650007339312516

/-! ## A333919.P5803626269339381196

`∩[A074697(n+1), A323733(n+1)]`
-/

namespace A333919.P5803626269339381196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333919.P5803626269339381196

/-! ## A333919.P14430465449609369318

`∩[A219227(n+1), A336583(n+1)]`
-/

namespace A333919.P14430465449609369318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333919.P14430465449609369318

/-! ## A333919.P1518084663095848391

`A336583(A033621(n+2))`
-/

namespace A333919.P1518084663095848391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336583 (A033621 (n + 2)).toNat

end

end A333919.P1518084663095848391

/-!
# A333920: a(n) is the least k such that the binary representation of n appears as a substring in the concatenation of the binary representations of 0, 1, ..., k.

The programs for A333920, there is no canonical definition to state claims against.
-/

/-! ## A333920.P10326035512017988479

`A083653(n)+A083654(n)-1`
-/

namespace A333920.P10326035512017988479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083653 n + (A083654 n - 1)

end

end A333920.P10326035512017988479

/-! ## A333920.P864041960253439433

`A023443(A083654(n)+A083653(n))`
-/

namespace A333920.P864041960253439433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083654 n + A083653 n).toNat

end

end A333920.P864041960253439433

/-! ## A333920.P15430674787772862310

`or(-1, A000041(n))+A083654(n)+A083653(n)`
-/

namespace A333920.P15430674787772862310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + (A083654 n + A083653 n)

end

end A333920.P15430674787772862310

/-! ## A333920.P14659362823955242073

`A008683(A151800(n))+A083654(n)+A083653(n)`
-/

namespace A333920.P14659362823955242073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + (A083654 n + A083653 n)

end

end A333920.P14659362823955242073

/-! ## A333920.P4870263147878558636

`A008683(A007304(n+1))+A083654(n)+A083653(n)`
-/

namespace A333920.P4870263147878558636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007304 (n + 1)).toNat + (A083654 n + A083653 n)

end

end A333920.P4870263147878558636

/-! ## A333920.P17971737166410029689

`A008683(A045344(n+1))+A083654(n)+A083653(n)`
-/

namespace A333920.P17971737166410029689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045344 (n + 1)).toNat + (A083654 n + A083653 n)

end

end A333920.P17971737166410029689

/-! ## A333920.P1341931559039996825

`A008683(A065091(n+1))+A083654(n)+A083653(n)`
-/

namespace A333920.P1341931559039996825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat + (A083654 n + A083653 n)

end

end A333920.P1341931559039996825

/-! ## A333920.P14795130332191002205

`A046667(2*(A083654(n)+A083653(n)))`
-/

namespace A333920.P14795130332191002205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * (A083654 n + A083653 n)).toNat

end

end A333920.P14795130332191002205

/-! ## A333920.P15973295312028800558

`A008683(A014963(2*(n+1))+1)+A083654(n)+A083653(n)`
-/

namespace A333920.P15973295312028800558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (2 * (n + 1)) + 1).toNat + (A083654 n + A083653 n)

end

end A333920.P15973295312028800558

/-! ## A333920.P4903238141347032716

`A059169(4*(A083654(n)+A083653(n)))`
-/

namespace A333920.P4903238141347032716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * (A083654 n + A083653 n)).toNat

end

end A333920.P4903238141347032716

/-! ## A333920.P4633710492268197370

`A008683(A001359(n+1))+A083654(n)+A083653(n)`
-/

namespace A333920.P4633710492268197370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + (A083654 n + A083653 n)

end

end A333920.P4633710492268197370

/-! ## A333920.P6342664084881917123

`A008683(A031933(n))+A083654(n)+A083653(n)`
-/

namespace A333920.P6342664084881917123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031933 n).toNat + (A083654 n + A083653 n)

end

end A333920.P6342664084881917123

/-! ## A333920.P8762838841277393985

`A259361((A083654(n)+A083653(n))²)`
-/

namespace A333920.P8762838841277393985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((A083654 n + A083653 n) ^ 2).toNat

end

end A333920.P8762838841277393985

/-!
# A333921: a(n) is the least k such that the decimal representation of n appears as a substring in the concatenation of 0, 1, ..., k.

The programs for A333921, there is no canonical definition to state claims against.
-/

/-! ## A333921.P2632787985204967928

`A345672(n)+char[A116700(n+1)]`
-/

namespace A333921.P2632787985204967928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345672 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333921.P2632787985204967928

/-!
# A333922: a(n) = 1 - (floor(2^n*A002487(n)/A002487(n+1)) mod 2).

The programs for A333922, the canonical program `A333922.P16456559979994857998` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333922 has offset 0).

The definition of A333922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333922.P16456559979994857998

`1-floor(2^n*A002487(n)/A002487(n+1))%2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A333922

/-- `1-floor(2^n*A002487(n)/A002487(n+1))%2` -/
def P16456559979994857998.Spec : Prop :=
  ∀ n, P16456559979994857998.a n = A333922 n

theorem P16456559979994857998.correct : P16456559979994857998.Spec := by
  intro n
  simp only [A333922]

end A333922

/-! ## A333922.P14522848994948734364

`A168046(A237591(3*(n+1))+A000041(n))`
-/

namespace A333922.P14522848994948734364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A237591 (3 * (n + 1)) + A000041 n).toNat

end

end A333922.P14522848994948734364

namespace A333922

/-- `A168046(A237591(3*(n+1))+A000041(n))` -/
def P14522848994948734364.Spec : Prop :=
  ∀ n, P14522848994948734364.a n = A333922 n

end A333922

/-! ## A333922.P4207985051499260803

`round(A306010(n+4)/A306010(2*(n+2)))`
-/

namespace A333922.P4207985051499260803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A306010 (n + 4) : ℚ) / (A306010 (2 * (n + 2)) : ℚ))

end

end A333922.P4207985051499260803

namespace A333922

/-- `round(A306010(n+4)/A306010(2*(n+2)))` -/
def P4207985051499260803.Spec : Prop :=
  ∀ n, P4207985051499260803.a n = A333922 n

end A333922

/-! ## A333922.P3283847609436957183

`A113360(A196004(n+1))%2`
-/

namespace A333922.P3283847609436957183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113360 (A196004 (n + 1)).toNat) 2

end

end A333922.P3283847609436957183

namespace A333922

/-- `A113360(A196004(n+1))%2` -/
def P3283847609436957183.Spec : Prop :=
  ∀ n, P3283847609436957183.a n = A333922 n

end A333922

/-!
# A333923: a(n) is the smallest positive integer such that n^a(n) is divisible by n+a(n).

The programs for A333923, there is no canonical definition to state claims against.
-/

/-! ## A333923.P7599873837877019336

`A063427(n+2)+A000007(2^n)-A236378(n+1)`
-/

namespace A333923.P7599873837877019336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063427 (n + 2) + A000007 (2 ^ n) - A236378 (n + 1)

end

end A333923.P7599873837877019336

/-! ## A333923.P6944786868602851219

`A063427(n+2)-A350251(A089061(n))`
-/

namespace A333923.P6944786868602851219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063427 (n + 2) - A350251 (A089061 n).toNat

end

end A333923.P6944786868602851219

/-! ## A333923.P17383769161169509266

`A077662(n+2)-A077741(A077741(n+2))`
-/

namespace A333923.P17383769161169509266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077662 (n + 2) - A077741 (A077741 (n + 2)).toNat

end

end A333923.P17383769161169509266

/-! ## A333923.P9766426097771976334

`A063718(n+2)-(n+2)-A350251(A089061(n))`
-/

namespace A333923.P9766426097771976334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063718 (n + 2) - (n + 2 : ℤ) - A350251 (A089061 n).toNat

end

end A333923.P9766426097771976334

/-! ## A333923.P7429130348072634917

`A140271((n+2)²)-(n+2)-A350251(A089061(n))`
-/

namespace A333923.P7429130348072634917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 ((n + 2) ^ 2) - (n + 2 : ℤ) - A350251 (A089061 n).toNat

end

end A333923.P7429130348072634917

/-!
# A333924: Smallest prime of the form 4*k + 3 that is a divisor of 4*n! - 1.

The programs for A333924, there is no canonical definition to state claims against.
-/

/-! ## A333924.P1584994378134976657

`∏{p}[2-A173322(n), gcd(#, or(3, #))]`
-/

namespace A333924.P1584994378134976657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A173322 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd p (Nat.lor 3 p)

end

end A333924.P1584994378134976657

/-! ## A333924.P3282535835813585253

`A125254(n!)`
-/

namespace A333924.P3282535835813585253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125254 (Nat.factorial n)

end

end A333924.P3282535835813585253

/-! ## A333924.P17482208607119987611

`A096431(2*n!)`
-/

namespace A333924.P17482208607119987611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096431 (2 * Nat.factorial n)

end

end A333924.P17482208607119987611

/-!
# A333925: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j=2..k+1} 1/(1 - x^j).

The programs for A333925, there is no canonical definition to state claims against.
-/

/-! ## A333925.P6951278411513848635

`A058398(n+1)-A072233(A038722(n+1))`
-/

namespace A333925.P6951278411513848635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (n + 1) - A072233 (A038722 (n + 1)).toNat

end

end A333925.P6951278411513848635

/-! ## A333925.P14975166041330305265

`A058398(n+1)-A072233(A002024(n+1)²-n)`
-/

namespace A333925.P14975166041330305265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (n + 1) - A072233 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A333925.P14975166041330305265

/-! ## A333925.P8877340810546314350

`A008284(A061579(n)+1)-A072233(A038722(n+1))`
-/

namespace A333925.P8877340810546314350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A061579 n + 1).toNat - A072233 (A038722 (n + 1)).toNat

end

end A333925.P8877340810546314350

/-! ## A333925.P8474594972545169288

`A008284(A114327(n)+1+n)-A072233(A038722(n+1))`
-/

namespace A333925.P8474594972545169288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A114327 n + 1 + (n : ℤ)).toNat - A072233 (A038722 (n + 1)).toNat

end

end A333925.P8474594972545169288

/-! ## A333925.P15499236874404750727

`A124768(A259776(n))`
-/

namespace A333925.P15499236874404750727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A259776 n).toNat

end

end A333925.P15499236874404750727

/-! ## A333925.P4140793949099812991

`A163352(A000120(A259776(n)²))`
-/

namespace A333925.P4140793949099812991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A000120 (A259776 n ^ 2).toNat).toNat

end

end A333925.P4140793949099812991

/-! ## A333925.P8419179883351814626

`∑{d}[A000120(A259776(n)²), A115971(#)]`
-/

namespace A333925.P8419179883351814626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A259776 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A115971 d

end

end A333925.P8419179883351814626

/-! ## A333925.P6890121512614451201

`∑{digits}[A000120(A259776(n)²), A003056(#)]`
-/

namespace A333925.P6890121512614451201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A259776 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003056 x).sum

end

end A333925.P6890121512614451201

/-!
# A333927: Recursive perfect numbers: numbers k such that A333926(k) = 2*k.

The programs for A333927, there is no canonical definition to state claims against.
-/

/-! ## A333927.P17396263733865172958

`A049603(∑[A068042(n)])`
-/

namespace A333927.P17396263733865172958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333927.P17396263733865172958

/-! ## A333927.P1565409123873916359

`A049603(record[A306680(n)])`
-/

namespace A333927.P1565409123873916359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333927.P1565409123873916359

/-! ## A333927.P15653333160420203600

`A049603(A104419(n+1))`
-/

namespace A333927.P15653333160420203600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049603 (A104419 (n + 1)).toNat

end

end A333927.P15653333160420203600

/-!
# A333928: Recursive abundant numbers: numbers k such that A333926(k) > 2*k.

The programs for A333928, there is no canonical definition to state claims against.
-/

/-! ## A333928.P4388185056456701676

`lt[A103517(n), A333926(n+1)]+1`
-/

namespace A333928.P4388185056456701676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A333928.P4388185056456701676

/-! ## A333928.P6283875777561336021

`lt[A004275(n+2), A333926(n+1)]+1`
-/

namespace A333928.P6283875777561336021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A333928.P6283875777561336021

/-! ## A333928.P16552921615195924941

`A020725(lt[2*(n+1), A333926(n+1)])`
-/

namespace A333928.P16552921615195924941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333928.P16552921615195924941

/-! ## A333928.P12836152803472037034

`lt[A047261(n+1)+1, A333926(n+1)]+1`
-/

namespace A333928.P12836152803472037034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A333928.P12836152803472037034

/-! ## A333928.P4873754154342529894

`A153152(lt[A103517(n), A333926(n+1)])`
-/

namespace A333928.P4873754154342529894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333928.P4873754154342529894

/-!
# A333929: Lesser of recursive amicable numbers pair: numbers m < k such that m = s(k) and k = s(m), where s(k) = A333926(k) - k is the sum of proper recursive divisors of k.

The programs for A333929, there is no canonical definition to state claims against.
-/

/-! ## A333929.P5955011271344334531

`A274116(∑{e}[5*10^n, #])`
-/

namespace A333929.P5955011271344334531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274116 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A333929.P5955011271344334531

/-! ## A333929.P15362939462404496493

`A274116(A083964(n+1))`
-/

namespace A333929.P15362939462404496493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274116 (A083964 (n + 1)).toNat

end

end A333929.P15362939462404496493

/-!
# A333930: Larger of recursive amicable numbers pair: numbers m < k such that m = s(k) and k = s(m), where s(k) = A333926(k) - k is the sum of proper recursive divisors of k.

The programs for A333930, there is no canonical definition to state claims against.
-/

/-! ## A333930.P9552713785212808162

`A274116(A166880(n)+A083964(n+1))`
-/

namespace A333930.P9552713785212808162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274116 (A166880 n + A083964 (n + 1)).toNat

end

end A333930.P9552713785212808162

/-! ## A333930.P3693491234714771564

`A274116(A349056(n+1)+A083964(n+1))`
-/

namespace A333930.P3693491234714771564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274116 (A349056 (n + 1) + A083964 (n + 1)).toNat

end

end A333930.P3693491234714771564

/-!
# A333931: Recursive highly composite numbers: numbers with a record number of recursive divisors (A282446).

The programs for A333931, there is no canonical definition to state claims against.
-/

/-! ## A333931.P9859053457627433652

`record[A353899(A353862(n+2))]`
-/

namespace A333931.P9859053457627433652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353899 (A353862 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333931.P9859053457627433652

/-! ## A333931.P12446010688057777280

`A353899(n+1)+A083910(A064349(n))`
-/

namespace A333931.P12446010688057777280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353899 (n + 1) + A083910 (A064349 n).toNat

end

end A333931.P12446010688057777280

/-! ## A333931.P6265895333702537885

`A353899(n+1)%A125574(A298310(n))`
-/

namespace A333931.P6265895333702537885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353899 (n + 1)) (A125574 (A298310 n).toNat)

end

end A333931.P6265895333702537885

/-! ## A333931.P6844749601928873413

`lcm(A000120(A211890(n)), A353899(n+1))`
-/

namespace A333931.P6844749601928873413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 (A211890 n).toNat) (A353899 (n + 1))

end

end A333931.P6844749601928873413

/-! ## A333931.P346500165184010087

`A353899(n+1)+A128064(A038764(2*n+3))`
-/

namespace A333931.P346500165184010087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353899 (n + 1) + A128064 (A038764 (2 * n + 3)).toNat

end

end A333931.P346500165184010087

/-!
# A333932: a(n) is the least integer that is 4-dimensional pyramidal in exactly n ways.

The programs for A333932, there is no canonical definition to state claims against.
-/

/-! ## A333932.P13327017742604844944

`A274535(A282567(n)+A001302(n))`
-/

namespace A333932.P13327017742604844944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (A282567 n + A001302 n).toNat

end

end A333932.P13327017742604844944

/-!
# A333933: Lexicographically earliest sequence of distinct positive integers such that a(n), a(n+1) and the product a(n)*a(n+1) have in common the substring n.

The programs for A333933, there is no canonical definition to state claims against.
-/

/-! ## A333933.P14288610567512047079

`∑[A038713(A005260(n))]`
-/

namespace A333933.P14288610567512047079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038713 (A005260 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333933.P14288610567512047079

/-!
# A333934: Number of permutations of [n] such that the product of the first k elements and the product of the last k elements are multiples of k for all k in [n].

The programs for A333934, there is no canonical definition to state claims against.
-/

/-! ## A333934.P9568893574483742467

`and(A037027(A018769(n+1)), A151399(n))`
-/

namespace A333934.P9568893574483742467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037027 (A018769 (n + 1)).toNat) (A151399 n)

end

end A333934.P9568893574483742467

/-! ## A333934.P5810329557286831136

`A093819(∑[(n-1)!-ceil(-a(n-1))])` with `a(0)=2, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A333934.P5810329557286831136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333934.P5810329557286831136

/-! ## A333934.P16226939161311356231

`A328710(A122122(n))`
-/

namespace A333934.P16226939161311356231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328710 (A122122 n).toNat

end

end A333934.P16226939161311356231

/-!
# A333936: a(n) is the product of the distinct prime factors of A054412(n).

The programs for A333936, there is no canonical definition to state claims against.
-/

/-! ## A333936.P1410657666146536159

`A005361(A054412(n+1))`
-/

namespace A333936.P1410657666146536159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A054412 (n + 1)).toNat

end

end A333936.P1410657666146536159

/-! ## A333936.P4494880782328199198

`gcd(A002110(A020986(n)), A054412(n+1))`
-/

namespace A333936.P4494880782328199198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A020986 n).toNat) (A054412 (n + 1))

end

end A333936.P4494880782328199198

/-! ## A333936.P15556571855728026090

`gcd(A054412(n+1), A128040(n+1))`
-/

namespace A333936.P15556571855728026090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054412 (n + 1)) (A128040 (n + 1))

end

end A333936.P15556571855728026090

/-! ## A333936.P7594910779718937888

`∏{p}[A054412(n+1), #]`
-/

namespace A333936.P7594910779718937888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A333936.P7594910779718937888

/-! ## A333936.P12968684163990978882

`∏{e}[A054412(1-(n-2*n)), #]`
-/

namespace A333936.P12968684163990978882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A333936.P12968684163990978882

/-!
# A333937: Triangle read by rows: T(n, k) = (k-1)*n - binomial(n, 2) + floor((n-k)/2) + 1, transposed.

The programs for A333937, there is no canonical definition to state claims against.
-/

/-! ## A333937.P5920956500136596796

`∑[char[∑[n]]]²-n-A007590(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A333937.P5920956500136596796
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - A007590 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A333937.P5920956500136596796

/-! ## A333937.P14417330735123127225

`floor(A303273(n)+A051162(n)/2)`
-/

namespace A333937.P14417330735123127225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A303273 n : ℚ) + (A051162 n : ℚ) / 2⌋

end

end A333937.P14417330735123127225

/-! ## A333937.P8788849776866007258

`A144652(n+1)-A134464(n+1)`
-/

namespace A333937.P8788849776866007258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144652 (n + 1) - A134464 (n + 1)

end

end A333937.P8788849776866007258

/-! ## A333937.P15450412515621033255

`ceil((A079904(n)+A003991(n+1))/2)`
-/

namespace A333937.P15450412515621033255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079904 n + A003991 (n + 1) : ℚ) / 2⌉

end

end A333937.P15450412515621033255

/-! ## A333937.P15443622644075453459

`A038722(n+1)-floor(A055461(n+1)/2)`
-/

namespace A333937.P15443622644075453459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - ⌊(A055461 (n + 1) : ℚ) / 2⌋

end

end A333937.P15443622644075453459

/-! ## A333937.P8190457867781300957

`A061579(n)+1-floor(A004736(n+1)²/2)`
-/

namespace A333937.P8190457867781300957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 1 - ⌊(A004736 (n + 1) ^ 2 : ℚ) / 2⌋

end

end A333937.P8190457867781300957

/-! ## A333937.P15211662515134733955

`A087401(n)+A008619(A051162(n))`
-/

namespace A333937.P15211662515134733955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n + A008619 (A051162 n).toNat

end

end A333937.P15211662515134733955

/-! ## A333937.P16623842716777118186

`A008619(A079904(n)+A059036(n))`
-/

namespace A333937.P16623842716777118186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A079904 n + A059036 n).toNat

end

end A333937.P16623842716777118186

/-! ## A333937.P7215477588576290614

`A087401(n)+A008619(A134478(n))`
-/

namespace A333937.P7215477588576290614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n + A008619 (A134478 n).toNat

end

end A333937.P7215477588576290614

/-! ## A333937.P16964627955087566891

`A008619(A143844(n)+A141387(n))`
-/

namespace A333937.P16964627955087566891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A143844 n + A141387 n).toNat

end

end A333937.P16964627955087566891

/-!
# A333939: Number of multisets of compositions that can be shuffled together to obtain the k-th composition in standard order.

The programs for A333939, there is no canonical definition to state claims against.
-/

/-! ## A333939.P9423269522970272928

`A333942(A333627(n)%A375138(2*n+3))`
-/

namespace A333939.P9423269522970272928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (Int.tmod (A333627 n) (A375138 (2 * n + 3))).toNat

end

end A333939.P9423269522970272928

/-! ## A333939.P12728928730134577741

`A333942(A333627(n)%A158375(n))`
-/

namespace A333939.P12728928730134577741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (Int.tmod (A333627 n) (A158375 n)).toNat

end

end A333939.P12728928730134577741

/-! ## A333939.P10440258659195482909

`A043558(3^A333627(n))`
-/

namespace A333939.P10440258659195482909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A333627 n : ℤ))).toNat

end

end A333939.P10440258659195482909

/-! ## A333939.P1977854314989161172

`A134021(A000005(A333627(n)!))`
-/

namespace A333939.P1977854314989161172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A000005 (Nat.factorial (A333627 n).toNat)).toNat

end

end A333939.P1977854314989161172

/-! ## A333939.P17388504205218241723

`A118668(A000120(n)^A334300(n))`
-/

namespace A333939.P17388504205218241723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 (SequenceMachineLib.roundAway ((A000120 n : ℚ) ^ (A334300 n : ℤ))).toNat

end

end A333939.P17388504205218241723

/-!
# A333940: Number of Lyndon factorizations of the k-th composition in standard order.

The programs for A333940, there is no canonical definition to state claims against.
-/

/-! ## A333940.P12563025316469647193

`A333765(∑[n*char[2^n]]-A025480(n))`
-/

namespace A333940.P12563025316469647193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333765 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A025480 n).toNat

end

end A333940.P12563025316469647193

/-! ## A333940.P3047284401861465718

`A333765(xor(A003817(n), A025480(n)))`
-/

namespace A333940.P3047284401861465718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333765 (Int.xor (A003817 n) (A025480 n)).toNat

end

end A333940.P3047284401861465718

/-! ## A333940.P3400426050087983640

`A001055(A348268(n))%p?[A045968(n+1)]`
-/

namespace A333940.P3400426050087983640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A348268 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A333940.P3400426050087983640

/-! ## A333940.P10470632169336999721

`A001055(A348268(n))%A157428(A348553(n))`
-/

namespace A333940.P10470632169336999721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A348268 n).toNat) (A157428 (A348553 n).toNat)

end

end A333940.P10470632169336999721

/-! ## A333940.P8208715272936355922

`A160498(A066523(n+1))+A001055(A348268(n))`
-/

namespace A333940.P8208715272936355922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (A066523 (n + 1)).toNat + A001055 (A348268 n).toNat

end

end A333940.P8208715272936355922

/-!
# A333941: Triangle read by rows where T(n,k) is the number of compositions of n with rotational period k.

The programs for A333941, there is no canonical definition to state claims against.
-/

/-! ## A333941.P6321574904571508187

`A124768(lcm(n+6, A333755(n)))`
-/

namespace A333941.P6321574904571508187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.lcm (n + 6 : ℤ) (A333755 n))

end

end A333941.P6321574904571508187

/-! ## A333941.P8570106341706650290

`A001221(A022173(n)+char[A299905(n)])`
-/

namespace A333941.P8570106341706650290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A022173 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A333941.P8570106341706650290

/-! ## A333941.P11336819550299515467

`A124765(A020664(n+1)*A244121(n))`
-/

namespace A333941.P11336819550299515467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A020664 (n + 1) * A244121 n).toNat

end

end A333941.P11336819550299515467

/-! ## A333941.P3773742728006325836

`A001221(or(A022173(n), A194702(n+1)))`
-/

namespace A333941.P3773742728006325836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A022173 n) (A194702 (n + 1))).toNat

end

end A333941.P3773742728006325836

/-! ## A333941.P16105933204527829202

`A262680(A333755(n)²*A065720(n+1))`
-/

namespace A333941.P16105933204527829202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (A333755 n ^ 2 * A065720 (n + 1)).toNat

end

end A333941.P16105933204527829202

/-!
# A333942: Number of multiset partitions of a multiset whose multiplicities are the parts of the n-th composition in standard order.

The programs for A333942, there is no canonical definition to state claims against.
-/

/-! ## A333942.P1859716865662900680

`A001055(A057335(n))`
-/

namespace A333942.P1859716865662900680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A057335 n).toNat

end

end A333942.P1859716865662900680

/-! ## A333942.P6795163130979000297

`A318284(A333219(n+1))`
-/

namespace A333942.P6795163130979000297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A333219 (n + 1)).toNat

end

end A333942.P6795163130979000297

/-! ## A333942.P11422745978198442080

`A318284(∏{e}[A057335(n), A000040(#)])`
-/

namespace A333942.P11422745978198442080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A333942.P11422745978198442080

/-! ## A333942.P17870720768624341700

`A318284(A358506(n+1)%A357850(n+1))`
-/

namespace A333942.P17870720768624341700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (Int.tmod (A358506 (n + 1)) (A357850 (n + 1))).toNat

end

end A333942.P17870720768624341700

/-! ## A333942.P18389835061298618882

`A318284(A358506(n+1)+A209640(2*n+3))`
-/

namespace A333942.P18389835061298618882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A358506 (n + 1) + A209640 (2 * n + 3)).toNat

end

end A333942.P18389835061298618882

/-! ## A333942.P8161796953194416420

`∑{d}[A057335(n), A050370(#)]`
-/

namespace A333942.P8161796953194416420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A333942.P8161796953194416420

/-! ## A333942.P6281397412952426866

`A028422(A057335(n))+A007318(C(n, 2))`
-/

namespace A333942.P6281397412952426866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A057335 n).toNat + A007318 (Nat.choose n 2)

end

end A333942.P6281397412952426866

/-! ## A333942.P8228814566961621742

`A028422(A057335(n))+A014963(4*n+10)`
-/

namespace A333942.P8228814566961621742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A057335 n).toNat + A014963 (4 * n + 10)

end

end A333942.P8228814566961621742

/-!
# A333943: Numbers k such that the k-th composition in standard order is a reversed necklace.

The programs for A333943, there is no canonical definition to state claims against.
-/

/-! ## A333943.P8222638219063226169

`∪[A334265(n+2), A334273(n+2)]`
-/

namespace A333943.P8222638219063226169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334265 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333943.P8222638219063226169

/-! ## A333943.P16965669891667712965

`eq[A059893(n+1), A163380(A059893(n+1))]+1`
-/

namespace A333943.P16965669891667712965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163380 (A059893 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333943.P16965669891667712965

/-! ## A333943.P17791246238759217352

`eq[A138904(n), A334297(n)]`
-/

namespace A333943.P17791246238759217352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333943.P17791246238759217352

/-! ## A333943.P12262116067900360782

`eq[(A029837(n+1)/A302291(n))^A000045(n²%(n+1)), A334297(n)]`
-/

namespace A333943.P12262116067900360782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A029837 (n + 1) : ℚ) / (A302291 n : ℚ)) ^ (A000045 (n ^ 2 % (n + 1)) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A333943.P12262116067900360782

/-! ## A333943.P8494482248898889573

`eq[A124765(n), A124778(A124738(2*n+3))]`
-/

namespace A333943.P8494482248898889573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A124738 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333943.P8494482248898889573

/-!
# A333945: Perimeters of integer-sided triangles with integer inradius.

The programs for A333945, there is no canonical definition to state claims against.
-/

/-! ## A333945.P118032845069491884

`lt[0, A070201(n+1)]+1`
-/

namespace A333945.P118032845069491884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333945.P118032845069491884

/-! ## A333945.P13381135865089248537

`lt[0, A070201(A028310(n))]`
-/

namespace A333945.P13381135865089248537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333945.P13381135865089248537

/-! ## A333945.P10615254492117069854

`eq[3, A000032(a(A070201(n)))]` with `a(0)=0`
-/

namespace A333945.P10615254492117069854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333945.P10615254492117069854

/-! ## A333945.P1055224902189913230

`eq[1, A055641(a(A070201(n)))]` with `a(0)=2`
-/

namespace A333945.P1055224902189913230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A055641 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333945.P1055224902189913230

/-! ## A333945.P14988437826879559741

`eq[3, A063597(a(A070201(n)))]` with `a(0)=0`
-/

namespace A333945.P14988437826879559741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A063597 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333945.P14988437826879559741

/-! ## A333945.P7662152380551997615

`eq[3, A063598(a(A070201(n)))]` with `a(0)=0`
-/

namespace A333945.P7662152380551997615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A063598 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333945.P7662152380551997615

/-! ## A333945.P4793688794704875091

`eq[3, A000029(a(A070201(n)))]` with `a(0)=1`
-/

namespace A333945.P4793688794704875091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000029 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333945.P4793688794704875091

/-! ## A333945.P4113244182012313350

`eq[3, A000037(a(A070201(n)))]` with `a(0)=1`
-/

namespace A333945.P4113244182012313350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000037 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333945.P4113244182012313350

/-! ## A333945.P4135774992340411835

`lt[2, A000040(a(A070201(n)))]` with `a(0)=1`
-/

namespace A333945.P4135774992340411835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333945.P4135774992340411835

/-! ## A333945.P9423637952079009055

`eq[1, A000045(a(A070201(n)))]` with `a(0)=3`
-/

namespace A333945.P9423637952079009055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A070201 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333945.P9423637952079009055

/-!
# A333946: Perimeters of integer-sided triangles with prime inradius.

The programs for A333946, there is no canonical definition to state claims against.
-/

/-! ## A333946.P14890996030019177720

`lt[A162018(n+1), A053256(A323774(n))]`
-/

namespace A333946.P14890996030019177720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053256 (A323774 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333946.P14890996030019177720

/-! ## A333946.P741347324629599611

`A333945(A196809(n+1)+A032559(n+1))`
-/

namespace A333946.P741347324629599611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333945 (A196809 (n + 1) + A032559 (n + 1)).toNat

end

end A333946.P741347324629599611

/-! ## A333946.P5700745051457555976

`A334665(A196809(n+1)+A032559(n+1))`
-/

namespace A333946.P5700745051457555976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (A196809 (n + 1) + A032559 (n + 1)).toNat

end

end A333946.P5700745051457555976

/-! ## A333946.P10174750799793532295

`A335146(A196809(n+1)+A032559(n+1))`
-/

namespace A333946.P10174750799793532295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335146 (A196809 (n + 1) + A032559 (n + 1)).toNat

end

end A333946.P10174750799793532295

/-!
# A333948: Number of integer-sided triangles with perimeter n whose side lengths have the same number of divisors.

The programs for A333948, there is no canonical definition to state claims against.
-/

/-! ## A333948.P7211588264515075687

`A073490(A206419(n+1)+n+1)`
-/

namespace A333948.P7211588264515075687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A206419 (n + 1) + (n + 1 : ℤ)).toNat

end

end A333948.P7211588264515075687

/-! ## A333948.P13661977400691193688

`A008612(A122201(∑[A007599(n)]))`
-/

namespace A333948.P13661977400691193688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A333948.P13661977400691193688

/-! ## A333948.P6468203149323594597

`A008612(A122202(∑[A007599(n)]))`
-/

namespace A333948.P6468203149323594597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A122202 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A333948.P6468203149323594597

/-! ## A333948.P4877930769631956200

`A008612(A122288(∑[A007599(n)]))`
-/

namespace A333948.P4877930769631956200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A122288 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A333948.P4877930769631956200

/-! ## A333948.P14102049998584213371

`A008612(A130401(∑[A007599(n)]))`
-/

namespace A333948.P14102049998584213371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A130401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A333948.P14102049998584213371

/-!
# A333949: Numbers k such that s(k) = s(k+1), where s(k) is the sum of recursive divisors of k (A333926).

The programs for A333949, there is no canonical definition to state claims against.
-/

/-! ## A333949.P10937236095493521684

`A349283(∑[∑[A091536(n)]])`
-/

namespace A333949.P10937236095493521684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333949.P10937236095493521684

/-! ## A333949.P14231922428615597750

`A014682(2*A349283(n+1))`
-/

namespace A333949.P14231922428615597750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A349283 (n + 1)).toNat

end

end A333949.P14231922428615597750

/-! ## A333949.P10270455045541282175

`A349283(n+1)/A015161(n)!`
-/

namespace A333949.P10270455045541282175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349283 (n + 1) : ℚ) / (Nat.factorial (A015161 n).toNat : ℚ)

end

end A333949.P10270455045541282175

/-! ## A333949.P738070937322150054

`A349283(n+1)/A091536(n)!`
-/

namespace A333949.P738070937322150054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349283 (n + 1) : ℚ) / (Nat.factorial (A091536 n).toNat : ℚ)

end

end A333949.P738070937322150054

/-! ## A333949.P17815039795302786286

`A349283(A187829(n+1))`
-/

namespace A333949.P17815039795302786286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349283 (A187829 (n + 1)).toNat

end

end A333949.P17815039795302786286

/-!
# A333950: Odd recursive abundant numbers: odd numbers k such that A333926(k) > 2*k.

The programs for A333950, there is no canonical definition to state claims against.
-/

/-! ## A333950.P5629887216971764785

`A357697(n+1)*A357698(A000040(n+1))`
-/

namespace A333950.P5629887216971764785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357697 (n + 1) * A357698 (A000040 (n + 1)).toNat

end

end A333950.P5629887216971764785

/-! ## A333950.P6186197056837054662

`A357697(n+1)%A357700(A000203(3*n+1))`
-/

namespace A333950.P6186197056837054662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357697 (n + 1)) (A357700 (A000203 (3 * n + 1)).toNat)

end

end A333950.P6186197056837054662

/-! ## A333950.P8192603344314953126

`A357697(n+1)%A344928(2*(n+1))`
-/

namespace A333950.P8192603344314953126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357697 (n + 1)) (A344928 (2 * (n + 1)))

end

end A333950.P8192603344314953126

/-! ## A333950.P13434049406452939991

`and(1, A112644(n+1))*A357697(n+1)`
-/

namespace A333950.P13434049406452939991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A112644 (n + 1)) * A357697 (n + 1)

end

end A333950.P13434049406452939991

/-! ## A333950.P15801717781314069864

`A357697(n+1)%A258365(n)`
-/

namespace A333950.P15801717781314069864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357697 (n + 1)) (A258365 (n + 55))

end

end A333950.P15801717781314069864

/-! ## A333950.P15883485724745950932

`A357697(n+1)%A075466(n)`
-/

namespace A333950.P15883485724745950932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357697 (n + 1)) (A075466 n)

end

end A333950.P15883485724745950932

/-! ## A333950.P12667557086208575552

`A357697(n+1)%A063054(n)`
-/

namespace A333950.P12667557086208575552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357697 (n + 1)) (A063054 n)

end

end A333950.P12667557086208575552

/-! ## A333950.P2541973169943551799

`filter[A005231(n+1), A212793(#)]`
-/

namespace A333950.P2541973169943551799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A333950.P2541973169943551799

/-!
# A333952: Recursively highly composite numbers: numbers m such that A067824(m) > A067824(k) for all k < m.

The programs for A333952, there is no canonical definition to state claims against.
-/

/-! ## A333952.P14394153969843886318

`A307866(n+1)+C(n, n²)`
-/

namespace A333952.P14394153969843886318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A333952.P14394153969843886318

/-! ## A333952.P4715095077388087227

`xor(A169585(n), A307866(n+1))`
-/

namespace A333952.P4715095077388087227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 n) (A307866 (n + 1))

end

end A333952.P4715095077388087227

/-! ## A333952.P14526413152294636131

`A307866(n+1)+char[A035887(n)]`
-/

namespace A333952.P14526413152294636131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035887 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333952.P14526413152294636131

/-! ## A333952.P7227904066566243304

`A307866(n+1)+A019590(n+1)`
-/

namespace A333952.P7227904066566243304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + A019590 (n + 1)

end

end A333952.P7227904066566243304

/-! ## A333952.P17421582409776103356

`A307866(n+1)+char[1-A266220(n)]`
-/

namespace A333952.P17421582409776103356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333952.P17421582409776103356

/-! ## A333952.P861988250141296803

`A307866(n+1)+A000007(A201629(n))`
-/

namespace A333952.P861988250141296803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + A000007 (A201629 n).toNat

end

end A333952.P861988250141296803

/-! ## A333952.P9335837158453801657

`A307866(n+1)+A008683(A053187(n+1))`
-/

namespace A333952.P9335837158453801657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + A008683 (A053187 (n + 1)).toNat

end

end A333952.P9335837158453801657

/-! ## A333952.P13533115891532808628

`A307866(n+1)+1-A328672(A215406(n))`
-/

namespace A333952.P13533115891532808628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + (1 - A328672 (A215406 n).toNat)

end

end A333952.P13533115891532808628

/-!
# A333953: Recursively superabundant numbers: numbers m such that A330575(m)/m > A330575(k)/k for all k < m.

The programs for A333953, there is no canonical definition to state claims against.
-/

/-! ## A333953.P4810343632995510909

`record[A333963(n+1)/(2-A015600(n))]`
-/

namespace A333953.P4810343632995510909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333963 (n + 1) : ℚ) / (2 - A015600 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333953.P4810343632995510909

/-! ## A333953.P9826346263577310782

`lcm(A255890(n), A333963(n+1))`
-/

namespace A333953.P9826346263577310782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A255890 n) (A333963 (n + 1))

end

end A333953.P9826346263577310782

/-! ## A333953.P3988934086816660410

`A333963(∑[A034516(n+1)!])`
-/

namespace A333953.P3988934086816660410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333953.P3988934086816660410

/-! ## A333953.P9780663542171726997

`A333963(∑[A034516(n+1)+1])`
-/

namespace A333953.P9780663542171726997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034516 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333953.P9780663542171726997

/-! ## A333953.P14686020595680731753

`A333963(A269393(n+1))`
-/

namespace A333953.P14686020595680731753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (A269393 (n + 1)).toNat

end

end A333953.P14686020595680731753

/-!
# A333955: Numbers k with digits in nondecreasing order and each digit greater than 1 such that the iterated product of digits of k is a prime.

The programs for A333955, there is no canonical definition to state claims against.
-/

/-! ## A333955.P6879174205900536586

`∩[A028843(n+1), A318276(n+1)]`
-/

namespace A333955.P6879174205900536586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333955.P6879174205900536586

/-!
# A333956: G.f. A(x) satisfies: A(x) = x - Sum_{k>=2} sigma(k) * A(x)^k.

The programs for A333956, there is no canonical definition to state claims against.
-/

/-! ## A333956.P6256600246843579265

`A333948(A140304(n))+A291535(n+1)`
-/

namespace A333956.P6256600246843579265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333948 (A140304 n).toNat + A291535 (n + 1)

end

end A333956.P6256600246843579265

/-!
# A333958: The number of closed lambda calculus terms of size n that have a normal form, where size(lambda M)=2+size(M), size(M N)=2+size(M)+size(N), and size(V)=1+i for a variable V bound by the i-th enclosing lambda.

The programs for A333958, there is no canonical definition to state claims against.
-/

/-! ## A333958.P6313397262037411298

`A114852(n+1)-A107846(A181586(n))`
-/

namespace A333958.P6313397262037411298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114852 (n + 1) - A107846 (A181586 n).toNat

end

end A333958.P6313397262037411298

/-! ## A333958.P15198637939134096974

`A114852(A000005(2^n))`
-/

namespace A333958.P15198637939134096974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114852 (A000005 (2 ^ n)).toNat

end

end A333958.P15198637939134096974

/-! ## A333958.P89781374124923453

`A114852(∑[A278657(n)!])`
-/

namespace A333958.P89781374124923453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114852 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333958.P89781374124923453

/-! ## A333958.P16405143153049338947

`A072088(A114852(n+1))`
-/

namespace A333958.P16405143153049338947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A114852 (n + 1)).toNat

end

end A333958.P16405143153049338947

/-! ## A333958.P15169720936850861442

`A114852(A187829(n+1))`
-/

namespace A333958.P15169720936850861442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114852 (A187829 (n + 1)).toNat

end

end A333958.P15169720936850861442

/-!
# A333961: Numbers k with property that k is the least logarithmically smooth numbers (meaning largest prime factor of k is less than log(k)) having squarefree kernel equal to squarefree kernel of k.

The programs for A333961, there is no canonical definition to state claims against.
-/

/-! ## A333961.P8481603836821950517

`filter[A212861(n+1), A241422(#)]`
-/

namespace A333961.P8481603836821950517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241422 (f1 j).toNat = 1) n)

end

end A333961.P8481603836821950517

/-!
# A333962: a(n) = A330575(A025487(n)).

The programs for A333962, there is no canonical definition to state claims against.
-/

/-! ## A333962.P17893067375295441931

`A330575(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333962.P17893067375295441931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (A025487 (n + 1)).toNat

end

end A333962.P17893067375295441931

/-! ## A333962.P86537271773475762

`A330575(record[A046523(n+1)])`
-/

namespace A333962.P86537271773475762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333962.P86537271773475762

/-! ## A333962.P13760641157595750371

`A330575(record[A329899(n+1)])`
-/

namespace A333962.P13760641157595750371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333962.P13760641157595750371

/-! ## A333962.P11546113635485100809

`A330575(record[A051466(n+2)])`
-/

namespace A333962.P11546113635485100809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333962.P11546113635485100809

/-! ## A333962.P11280693637610393880

`A330575(∪[A364710(n+1), A070175(n)])`
-/

namespace A333962.P11280693637610393880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A333962.P11280693637610393880

/-! ## A333962.P4046713502528351413

`A330575(A247451(n+1)*A307107(n+1))`
-/

namespace A333962.P4046713502528351413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A333962.P4046713502528351413

/-! ## A333962.P14843192194508853996

`A330575(∪[A001013(n+1), A064783(n+1)])`
-/

namespace A333962.P14843192194508853996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A333962.P14843192194508853996

/-!
# A333963: Intersection of A307866 and A333953, together with the number 2.

The programs for A333963, there is no canonical definition to state claims against.
-/

/-! ## A333963.P16556673658506780256

`A333953(A258068(n+2))`
-/

namespace A333963.P16556673658506780256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (A258068 (n + 2)).toNat

end

end A333963.P16556673658506780256

/-! ## A333963.P13409218481680690020

`∩[A333952(n+1), A333953(n+1)]`
-/

namespace A333963.P13409218481680690020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333963.P13409218481680690020

/-! ## A333963.P14711779321489443525

`A333953(lt[A275414(n+1), (8*n)²+1])`
-/

namespace A333963.P14711779321489443525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275414 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A333963.P14711779321489443525

/-! ## A333963.P13818508471751975909

`∩[A307866(n+1)+C(n, n²), A333953(n+1)]`
-/

namespace A333963.P13818508471751975909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333963.P13818508471751975909

/-! ## A333963.P6868560870920866217

`A333953(lt[A250662(n+4), A250120(n)])`
-/

namespace A333963.P6868560870920866217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333963.P6868560870920866217

/-!
# A333964: Numbers of the form 2^i * 6^j * 30^k * 210^m where i, j, k, m >= 0.

The programs for A333964, there is no canonical definition to state claims against.
-/

/-! ## A333964.P3116921018933003884

`record[A025487(n+1)/gcd(11, A025487(n+1))]`
-/

namespace A333964.P3116921018933003884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (Int.gcd 11 (A025487 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333964.P3116921018933003884

/-! ## A333964.P5620395554463555328

`A307107(eq[4, A061394(n+1)]+1)`
-/

namespace A333964.P5620395554463555328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333964.P5620395554463555328

/-! ## A333964.P10318021897775137712

`record[A185114(A061394(n+1))*A307107(n+1)]`
-/

namespace A333964.P10318021897775137712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A061394 (n + 1)).toNat * A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333964.P10318021897775137712

/-! ## A333964.P13675237054471114625

`∩[A002473(n+1), A025487(n+1)]`
-/

namespace A333964.P13675237054471114625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333964.P13675237054471114625

/-! ## A333964.P2468236250305484354

`∩[A002473(n+1), A051466(A329898(n+1))]`
-/

namespace A333964.P2468236250305484354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333964.P2468236250305484354

/-! ## A333964.P9372302401414437190

`filter[A002473(n+1), A322585(#)]`
-/

namespace A333964.P9372302401414437190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A333964.P9372302401414437190

/-! ## A333964.P4969198093163500208

`filter[A048737(n+1), A322585(#)]`
-/

namespace A333964.P4969198093163500208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A333964.P4969198093163500208

/-! ## A333964.P13660759338610258269

`filter[A068383(n+1), A322585(#)]`
-/

namespace A333964.P13660759338610258269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A333964.P13660759338610258269

/-! ## A333964.P17816321263739773811

`filter[A122260(n+1), A322585(#)]`
-/

namespace A333964.P17816321263739773811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A333964.P17816321263739773811

/-! ## A333964.P14716430693995169470

`record[A328479(A002473(n+1))]`
-/

namespace A333964.P14716430693995169470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333964.P14716430693995169470

/-! ## A333964.P7083409974568054332

`record[A328479(A122260(n+1))]`
-/

namespace A333964.P7083409974568054332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A122260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333964.P7083409974568054332

/-!
# A333966: Positive integers where the number of triples of divisors (d1, d2, d3) such that d1 < d2 < d3 < 2*d1 and each pair of these divisors is pairwise coprime, sets a new record.

The programs for A333966, there is no canonical definition to state claims against.
-/

/-! ## A333966.P15912120810902928265

`A064060(lcm(2, A074342(n+1)))`
-/

namespace A333966.P15912120810902928265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064060 (Int.lcm 2 (A074342 (n + 1)))

end

end A333966.P15912120810902928265

/-!
# A333967: Subsequence of A071395. The extra constraint is m is not a term if m*q/p is abundant where prime p|m and q is the least prime larger than p.

The programs for A333967, there is no canonical definition to state claims against.
-/

/-! ## A333967.P816030154193542237

`filter[A335557(n+1), A173860(#)]`
-/

namespace A333967.P816030154193542237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173860 (f1 j).toNat = 1) n)

end

end A333967.P816030154193542237

/-!
# A333968: Where records occur in A333626.

The programs for A333968, there is no canonical definition to state claims against.
-/

/-! ## A333968.P13120801940462570542

`record[gcd(A215107(n+2), A336601(n+1))]`
-/

namespace A333968.P13120801940462570542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215107 (n + 2)) (A336601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333968.P13120801940462570542

/-! ## A333968.P8040830402942399004

`A229609(∑[2*n]-(∑[n]-n)+1)-(A058026(n+1)+n)`
-/

namespace A333968.P8040830402942399004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229609 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)) + 1).toNat - (A058026 (n + 1) + (n : ℤ))

end

end A333968.P8040830402942399004

/-!
# A333969: Squares of terms are the intersection of A025487 and A217584.

The programs for A333969, there is no canonical definition to state claims against.
-/

/-! ## A333969.P10294579220963284865

`A341617(record[A341522(n)])`
-/

namespace A333969.P10294579220963284865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341617 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333969.P10294579220963284865

/-! ## A333969.P12539253763081643498

`A341617(eq[1, A080791(n)])`
-/

namespace A333969.P12539253763081643498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333969.P12539253763081643498

/-!
# A333970: Irregular triangle read by rows where the n-th row lists the bases 2<=b<=n+1 where n in base b contains the digit b-1.

The programs for A333970, there is no canonical definition to state claims against.
-/

/-! ## A333970.P14614488671508728126

`A085058(A000096(record[A175298(n)]))`
-/

namespace A333970.P14614488671508728126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A000096 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A333970.P14614488671508728126

/-! ## A333970.P4576008703515456062

`A085058(A000096(record[A348363(n)]))`
-/

namespace A333970.P4576008703515456062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A000096 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A333970.P4576008703515456062

/-! ## A333970.P13176713164485470620

`A374630(lcm(2, A003592(n+1)))`
-/

namespace A333970.P13176713164485470620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (Int.lcm 2 (A003592 (n + 1)))

end

end A333970.P13176713164485470620

/-! ## A333970.P4090719096162030452

`A185679(A340316(2*(n+1))+8)-1`
-/

namespace A333970.P4090719096162030452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A340316 (2 * (n + 1)) + 8).toNat - 1

end

end A333970.P4090719096162030452

/-! ## A333970.P986482984210698290

`A335458(lt[A005940(2*n+3), A092875(2*(n+1))])`
-/

namespace A333970.P986482984210698290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092875 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333970.P986482984210698290

/-!
# A333971: a(n) is the number of semi-meanders with n top arches that have at least one arch with length 1 adjacent to the center of the top arch configuration or at either end of the arch configuration.

The programs for A333971, there is no canonical definition to state claims against.
-/

/-! ## A333971.P13116518125819846144

`Δ[A337581(n+2)]`
-/

namespace A333971.P13116518125819846144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333971.P13116518125819846144

/-! ## A333971.P18072889360496653630

`A337581(n+3)-A337581(n+2)`
-/

namespace A333971.P18072889360496653630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337581 (n + 3) - A337581 (n + 2)

end

end A333971.P18072889360496653630

/-! ## A333971.P8381623721512980702

`A000682(n+2)-A334615(n+2)`
-/

namespace A333971.P8381623721512980702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 2) - A334615 (n + 2)

end

end A333971.P8381623721512980702

/-! ## A333971.P6759682832402533210

`Δ[A330269(n+2)]-A334615(n+2)`
-/

namespace A333971.P6759682832402533210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A334615 (n + 2)

end

end A333971.P6759682832402533210

/-! ## A333971.P171136491435209132

`A000136(n+1)-(A334615(n+2)+A223094(n+1))`
-/

namespace A333971.P171136491435209132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000136 (n + 1) - (A334615 (n + 2) + A223094 (n + 1))

end

end A333971.P171136491435209132

/-!
# A333973: Numbers k such that A019320(k) is greater than A064078(k) and the latter is a prime or a prime power.

The programs for A333973, there is no canonical definition to state claims against.
-/

/-! ## A333973.P12733138504217344481

`∩[A093106(n+1), A161508(n+1)]`
-/

namespace A333973.P12733138504217344481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333973.P12733138504217344481

/-!
# A333975: a(1) = 1, a(2) = 2 and for n > 2, a(n) is the smallest number not of the form OR(a(i),a(j)) for 1 <= i < j < n.

The programs for A333975, the canonical program `A333975.P16248602436189593744` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333975 has offset 1).

The definition of A333975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333975.P16248602436189593744

`eq[0, A023416(log2(A001316(n)))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A333975

/-- `eq[0, A023416(log2(A001316(n)))]` -/
def P16248602436189593744.Spec : Prop :=
  ∀ n, (P16248602436189593744.a n : ℤ) = A333975 (n + 1)

theorem P16248602436189593744.correct : P16248602436189593744.Spec := by
  intro n
  simp only [A333975, Nat.add_sub_cancel]

end A333975

/-! ## A333975.P10877324280740870492

`eq[0, A035327(log2(A001316(n)))]`
-/

namespace A333975.P10877324280740870492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P10877324280740870492

namespace A333975

/-- `eq[0, A035327(log2(A001316(n)))]` -/
def P10877324280740870492.Spec : Prop :=
  ∀ n, (P10877324280740870492.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P550563958732033964

`eq[1, A005811(log2(A001316(n)))]`
-/

namespace A333975.P550563958732033964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P550563958732033964

namespace A333975

/-- `eq[1, A005811(log2(A001316(n)))]` -/
def P550563958732033964.Spec : Prop :=
  ∀ n, (P550563958732033964.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P14874343416958710190

`eq[1, A290251(log2(A001316(n)))]`
-/

namespace A333975.P14874343416958710190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P14874343416958710190

namespace A333975

/-- `eq[1, A290251(log2(A001316(n)))]` -/
def P14874343416958710190.Spec : Prop :=
  ∀ n, (P14874343416958710190.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P10423788165734592250

`eq[1, A001222(2*A001316(n+1)+1)]+1`
-/

namespace A333975.P10423788165734592250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A001316 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333975.P10423788165734592250

namespace A333975

/-- `eq[1, A001222(2*A001316(n+1)+1)]+1` -/
def P10423788165734592250.Spec : Prop :=
  ∀ n, (P10423788165734592250.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P14870845812716315542

`eq[1, A005811(2*n-A005187(n))]`
-/

namespace A333975.P14870845812716315542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P14870845812716315542

namespace A333975

/-- `eq[1, A005811(2*n-A005187(n))]` -/
def P14870845812716315542.Spec : Prop :=
  ∀ n, (P14870845812716315542.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P10426179195365932808

`eq[1, A005811(n-A005187(n)+n)]`
-/

namespace A333975.P10426179195365932808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P10426179195365932808

namespace A333975

/-- `eq[1, A005811(n-A005187(n)+n)]` -/
def P10426179195365932808.Spec : Prop :=
  ∀ n, (P10426179195365932808.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P8209334363507143608

`eq[2, A116604(A001316(n))]`
-/

namespace A333975.P8209334363507143608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P8209334363507143608

namespace A333975

/-- `eq[2, A116604(A001316(n))]` -/
def P8209334363507143608.Spec : Prop :=
  ∀ n, (P8209334363507143608.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P7574700756314856736

`eq[0, A023416(A000120(n))]`
-/

namespace A333975.P7574700756314856736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P7574700756314856736

namespace A333975

/-- `eq[0, A023416(A000120(n))]` -/
def P7574700756314856736.Spec : Prop :=
  ∀ n, (P7574700756314856736.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P1802841605918674792

`eq[1, A035531(A000120(n)+1)]`
-/

namespace A333975.P1802841605918674792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P1802841605918674792

namespace A333975

/-- `eq[1, A035531(A000120(n)+1)]` -/
def P1802841605918674792.Spec : Prop :=
  ∀ n, (P1802841605918674792.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P1958776248246913969

`eq[2, A006530(A000120(n)+1)]`
-/

namespace A333975.P1958776248246913969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P1958776248246913969

namespace A333975

/-- `eq[2, A006530(A000120(n)+1)]` -/
def P1958776248246913969.Spec : Prop :=
  ∀ n, (P1958776248246913969.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P17628203180066697869

`eq[2, A007947(A000120(n)+1)]`
-/

namespace A333975.P17628203180066697869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P17628203180066697869

namespace A333975

/-- `eq[2, A007947(A000120(n)+1)]` -/
def P17628203180066697869.Spec : Prop :=
  ∀ n, (P17628203180066697869.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P3736776980275674290

`eq[2, A014963(A000120(n)+1)]`
-/

namespace A333975.P3736776980275674290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P3736776980275674290

namespace A333975

/-- `eq[2, A014963(A000120(n)+1)]` -/
def P3736776980275674290.Spec : Prop :=
  ∀ n, (P3736776980275674290.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P14551876297439584840

`eq[1, A053645(A000120(n)+2)]`
-/

namespace A333975.P14551876297439584840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A000120 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P14551876297439584840

namespace A333975

/-- `eq[1, A053645(A000120(n)+2)]` -/
def P14551876297439584840.Spec : Prop :=
  ∀ n, (P14551876297439584840.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P10710686108287826463

`eq[2, A069517(A000120(n)+1)]`
-/

namespace A333975.P10710686108287826463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P10710686108287826463

namespace A333975

/-- `eq[2, A069517(A000120(n)+1)]` -/
def P10710686108287826463.Spec : Prop :=
  ∀ n, (P10710686108287826463.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P4736450779973491418

`eq[2, A071044(A000120(n)+1)]`
-/

namespace A333975.P4736450779973491418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P4736450779973491418

namespace A333975

/-- `eq[2, A071044(A000120(n)+1)]` -/
def P4736450779973491418.Spec : Prop :=
  ∀ n, (P4736450779973491418.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P3386063234386816095

`eq[1, A341691(A000120(n)+2)]`
-/

namespace A333975.P3386063234386816095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341691 (A000120 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P3386063234386816095

namespace A333975

/-- `eq[1, A341691(A000120(n)+2)]` -/
def P3386063234386816095.Spec : Prop :=
  ∀ n, (P3386063234386816095.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P1398816831759928745

`eq[2, A292601(A000120(n)+2)]`
-/

namespace A333975.P1398816831759928745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (A000120 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P1398816831759928745

namespace A333975

/-- `eq[2, A292601(A000120(n)+2)]` -/
def P1398816831759928745.Spec : Prop :=
  ∀ n, (P1398816831759928745.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P14998624782999434118

`eq[4, A071051(A000120(n)+1)]`
-/

namespace A333975.P14998624782999434118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P14998624782999434118

namespace A333975

/-- `eq[4, A071051(A000120(n)+1)]` -/
def P14998624782999434118.Spec : Prop :=
  ∀ n, (P14998624782999434118.a n : ℤ) = A333975 (n + 1)

end A333975

/-! ## A333975.P10279690889131408898

`eq[1, A080791(2*A000120(n))]`
-/

namespace A333975.P10279690889131408898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P10279690889131408898

namespace A333975

/-- `eq[1, A080791(2*A000120(n))]` -/
def P10279690889131408898.Spec : Prop :=
  ∀ n, (P10279690889131408898.a n : ℤ) = A333975 (n + 1)

end A333975

/-!
# A333976: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and gcd(d1,d2) > 1.

The programs for A333976, the canonical program `A333976.P13271542286250004937` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333976 has offset 1).

The definition of A333976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333976.P13271542286250004937

`A184389(n+1)-A018892(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333976

/-- `A184389(n+1)-A018892(n+1)` -/
def P13271542286250004937.Spec : Prop :=
  ∀ n, P13271542286250004937.a n = A333976 (n + 1)

theorem P13271542286250004937.correct : P13271542286250004937.Spec := by
  intro n
  simp only [A333976, Nat.add_sub_cancel]

end A333976

/-! ## A333976.P808598031339999129

`(A000005(n+1)²-A000005((n+1)²)+A000005(n+1)-1)/2`
-/

namespace A333976.P808598031339999129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 - A000005 ((n + 1) ^ 2) + A000005 (n + 1) - 1 : ℚ) / 2

end

end A333976.P808598031339999129

namespace A333976

/-- `(A000005(n+1)²-A000005((n+1)²)+A000005(n+1)-1)/2` -/
def P808598031339999129.Spec : Prop :=
  ∀ n, P808598031339999129.a n = (A333976 (n + 1) : ℚ)

end A333976

/-! ## A333976.P3231828943504533798

`A275387(n+1)+A032741(n+1)`
-/

namespace A333976.P3231828943504533798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275387 (n + 1) + A032741 (n + 1)

end

end A333976.P3231828943504533798

namespace A333976

/-- `A275387(n+1)+A032741(n+1)` -/
def P3231828943504533798.Spec : Prop :=
  ∀ n, P3231828943504533798.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P9063927630326152667

`A066446(n+1)-A089233(n+1)`
-/

namespace A333976.P9063927630326152667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A089233 (n + 1)

end

end A333976.P9063927630326152667

namespace A333976

/-- `A066446(n+1)-A089233(n+1)` -/
def P9063927630326152667.Spec : Prop :=
  ∀ n, P9063927630326152667.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P2333280416368263628

`A065814(n+1)-A275387(n+1)`
-/

namespace A333976.P2333280416368263628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065814 (n + 1) - A275387 (n + 1)

end

end A333976.P2333280416368263628

namespace A333976

/-- `A065814(n+1)-A275387(n+1)` -/
def P2333280416368263628.Spec : Prop :=
  ∀ n, P2333280416368263628.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P11191897073704968355

`A394997(n+1)-A343877(n+1)`
-/

namespace A333976.P11191897073704968355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394997 (n + 1) - A343877 (n + 1)

end

end A333976.P11191897073704968355

namespace A333976

/-- `A394997(n+1)-A343877(n+1)` -/
def P11191897073704968355.Spec : Prop :=
  ∀ n, P11191897073704968355.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P150473125686417776

`A184389(n+1)-(A063647(n+1)+1)`
-/

namespace A333976.P150473125686417776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - (A063647 (n + 1) + 1)

end

end A333976.P150473125686417776

namespace A333976

/-- `A184389(n+1)-(A063647(n+1)+1)` -/
def P150473125686417776.Spec : Prop :=
  ∀ n, P150473125686417776.a n = A333976 (n + 1)

theorem P150473125686417776.correct : P150473125686417776.Spec := by
  intro n
  simp only [A333976, Nat.add_sub_cancel, A333976.P150473125686417776.a, A333976.P13271542286250004937.a, A018892, A018892.P739243444939951687.a, A063647, A063647.P10388026275025770888.a, A184389, A184389.P1294751775581732822.f1, A184389.P1294751775581732822.a, A000005, A000005.P16091521709108585461.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A004526, A004526.P10084182425416171735.a, A051731, A051731.P11318043630102858095.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333976

/-! ## A333976.P1023136018049330729

`A000005(n+1)+A275387(n+1)-1`
-/

namespace A333976.P1023136018049330729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A275387 (n + 1) - 1)

end

end A333976.P1023136018049330729

namespace A333976

/-- `A000005(n+1)+A275387(n+1)-1` -/
def P1023136018049330729.Spec : Prop :=
  ∀ n, P1023136018049330729.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P16463732317633355604

`C(A000005(n+1)+1, 2)-A018892(n+1)`
-/

namespace A333976.P16463732317633355604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000005 (n + 1) + 1).toNat 2 : ℤ) - A018892 (n + 1)

end

end A333976.P16463732317633355604

namespace A333976

/-- `C(A000005(n+1)+1, 2)-A018892(n+1)` -/
def P16463732317633355604.Spec : Prop :=
  ∀ n, P16463732317633355604.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P8771019115027720724

`∑{d}[n+1, A038548(#)*A293227((n+1)/#)]`
-/

namespace A333976.P8771019115027720724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038548 d * A293227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333976.P8771019115027720724

namespace A333976

/-- `∑{d}[n+1, A038548(#)*A293227((n+1)/#)]` -/
def P8771019115027720724.Spec : Prop :=
  ∀ n, P8771019115027720724.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P5188544201951440072

`∑{d}[n+1, A157658(#)*A184389((n+1)/#)]`
-/

namespace A333976.P5188544201951440072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A184389 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333976.P5188544201951440072

namespace A333976

/-- `∑{d}[n+1, A157658(#)*A184389((n+1)/#)]` -/
def P5188544201951440072.Spec : Prop :=
  ∀ n, P5188544201951440072.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P3576262627865204478

`∑{d}[n+1, A130054(#)*A318325((n+1)/#)]`
-/

namespace A333976.P3576262627865204478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A318325 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333976.P3576262627865204478

namespace A333976

/-- `∑{d}[n+1, A130054(#)*A318325((n+1)/#)]` -/
def P3576262627865204478.Spec : Prop :=
  ∀ n, P3576262627865204478.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P3298725970842077069

`∑{d}[n+1, A238952(#)*A353629((n+1)/#)]`
-/

namespace A333976.P3298725970842077069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238952 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333976.P3298725970842077069

namespace A333976

/-- `∑{d}[n+1, A238952(#)*A353629((n+1)/#)]` -/
def P3298725970842077069.Spec : Prop :=
  ∀ n, P3298725970842077069.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P14632800108652298130

`A063647(n+1)+A275387(n+1)-A089233(n+1)`
-/

namespace A333976.P14632800108652298130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + (A275387 (n + 1) - A089233 (n + 1))

end

end A333976.P14632800108652298130

namespace A333976

/-- `A063647(n+1)+A275387(n+1)-A089233(n+1)` -/
def P14632800108652298130.Spec : Prop :=
  ∀ n, P14632800108652298130.a n = A333976 (n + 1)

end A333976

/-! ## A333976.P8378982835291417603

`A000217(∏{e}[n+1, #+1])-(∏{e}[(n+1)², #+1]+1)/2`
-/

namespace A333976.P8378982835291417603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1 : ℕ) : ℚ) / 2

end

end A333976.P8378982835291417603

namespace A333976

/-- `A000217(∏{e}[n+1, #+1])-(∏{e}[(n+1)², #+1]+1)/2` -/
def P8378982835291417603.Spec : Prop :=
  ∀ n, P8378982835291417603.a n = (A333976 (n + 1) : ℚ)

end A333976

/-! ## A333976.P15772285043115529888

`A161680(∏{e}[n+1, #+1])-((∏{e}[(n+1)², #+1]+1)/2-∏{e}[n+1, #+1])`
-/

namespace A333976.P15772285043115529888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ) - (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1 : ℕ) : ℚ) / 2 - ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℚ))

end

end A333976.P15772285043115529888

namespace A333976

/-- `A161680(∏{e}[n+1, #+1])-((∏{e}[(n+1)², #+1]+1)/2-∏{e}[n+1, #+1])` -/
def P15772285043115529888.Spec : Prop :=
  ∀ n, P15772285043115529888.a n = (A333976 (n + 1) : ℚ)

end A333976

/-! ## A333976.P11663681550568505850

`A184389(n+1)-A038548((n+1)²)`
-/

namespace A333976.P11663681550568505850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A038548 ((n + 1) ^ 2)

end

end A333976.P11663681550568505850

namespace A333976

/-- `A184389(n+1)-A038548((n+1)²)` -/
def P11663681550568505850.Spec : Prop :=
  ∀ n, P11663681550568505850.a n = A333976 (n + 1)

end A333976

/-!
# A333978: Numbers of the form b_1 * b_2 * ... * b_t, where b_1 = 1 and b_(i + 1) - b_i = 0 or 1.

The programs for A333978, there is no canonical definition to state claims against.
-/

/-! ## A333978.P13737900437889363924

`record[A003557(n+1)*A053589(A329379(n+1))]`
-/

namespace A333978.P13737900437889363924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A053589 (A329379 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333978.P13737900437889363924

/-! ## A333978.P16781447554105920798

`record[A117818(n+1)/A079068(A275823(n+1))]`
-/

namespace A333978.P16781447554105920798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117818 (n + 1) : ℚ) / (A079068 (A275823 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333978.P16781447554105920798

/-! ## A333978.P16116557893402698675

`A064527(record[A008620(A127288(n))])`
-/

namespace A333978.P16116557893402698675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A127288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333978.P16116557893402698675

/-!
# A333979: Array read by antidiagonals, n >= 0, k >= 2: T(n,k) is the "digital derivative" of n in base k; if the base k representation of n is Sum_{j>=0} d_j*k^j, then T(n,k) = Sum_{j>=1} d_j*j*k^(j-1).

The programs for A333979, there is no canonical definition to state claims against.
-/

/-! ## A333979.P2885955128067926342

`A331591(A273730(n)²)²`
-/

namespace A333979.P2885955128067926342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A273730 n ^ 2).toNat ^ 2

end

end A333979.P2885955128067926342

/-! ## A333979.P3957285082862241748

`n²%A270533(A343088(n))`
-/

namespace A333979.P3957285082862241748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A270533 (A343088 n).toNat)

end

end A333979.P3957285082862241748

/-! ## A333979.P17081845183214430926

`A033831(round(sqrt(A214679(n+1))))`
-/

namespace A333979.P17081845183214430926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (SequenceMachineLib.roundAway (Real.sqrt (A214679 (n + 1) : ℝ))).toNat

end

end A333979.P17081845183214430926

/-! ## A333979.P9591057916562800599

`A346709(n)²%A010783(n+1)`
-/

namespace A333979.P9591057916562800599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346709 n ^ 2) (A010783 (n + 1))

end

end A333979.P9591057916562800599

/-! ## A333979.P6125972166031832847

`A004396(A331186(A273730(n)²))`
-/

namespace A333979.P6125972166031832847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A331186 (A273730 n ^ 2).toNat).toNat

end

end A333979.P6125972166031832847

/-!
# A333980: Partial sums of A337490.

The programs for A333980, there is no canonical definition to state claims against.
-/

/-! ## A333980.P5752487496837017694

`∑[A337490(n)]`
-/

namespace A333980.P5752487496837017694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333980.P5752487496837017694

/-! ## A333980.P13675486900065318726

`A337490(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A333980.P13675486900065318726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337490 n + a (A023443 n).toNat

end

end A333980.P13675486900065318726

/-! ## A333980.P17461879606453624370

`A337490(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A333980.P17461879606453624370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337490 n + a (A028310 n - 1).toNat

end

end A333980.P17461879606453624370

/-! ## A333980.P2827699830280341225

`A337490(n)+a(n%A008574(n)-1)` with `a(0)=1`
-/

namespace A333980.P2827699830280341225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337490 n + a (Int.tmod (n : ℤ) (A008574 n) - 1).toNat

end

end A333980.P2827699830280341225

/-! ## A333980.P15575729660143011734

`A337490(n)+a(A067004(A000040(n+1))-2)` with `a(0)=1`
-/

namespace A333980.P15575729660143011734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337490 n + a (A067004 (A000040 (n + 1)).toNat - 2).toNat

end

end A333980.P15575729660143011734

/-! ## A333980.P15401882163025351136

`A000027(A337490(n)+a(n-1))` with `a(0)=1`
-/

namespace A333980.P15401882163025351136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A337490 n + a (n - 1)).toNat

end

end A333980.P15401882163025351136

/-!
# A333981: a(0) = 0; a(n) = 2^(n-1) + (1/n) * Sum_{k=1..n-1} binomial(n,k)^2 * 2^(k-1) * (n-k) * a(n-k).

The programs for A333981, there is no canonical definition to state claims against.
-/

/-! ## A333981.P13596088859458792412

`A244320(n!²+n)`
-/

namespace A333981.P13596088859458792412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244320 (Nat.factorial n ^ 2 + n)

end

end A333981.P13596088859458792412

/-!
# A333982: a(0) = 0; a(n) = 3^(n-1) + (1/n) * Sum_{k=1..n-1} binomial(n,k)^2 * 3^(k-1) * (n-k) * a(n-k).

The programs for A333982, there is no canonical definition to state claims against.
-/

/-! ## A333982.P2061537330548688783

`A057355(A018001(∑[n]))`
-/

namespace A333982.P2061537330548688783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A018001 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A333982.P2061537330548688783

/-!
# A333983: a(0) = 0; a(n) = 4^(n-1) + (1/n) * Sum_{k=1..n-1} binomial(n,k)^2 * 4^(k-1) * (n-k) * a(n-k).

The programs for A333983, there is no canonical definition to state claims against.
-/

/-! ## A333983.P7519354505353088547

`A333489(A138137(2^n))`
-/

namespace A333983.P7519354505353088547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A138137 (2 ^ n)).toNat

end

end A333983.P7519354505353088547

/-!
# A333984: a(0) = 0; a(n) = 5^(n-1) + (1/n) * Sum_{k=1..n-1} binomial(n,k)^2 * 5^(k-1) * (n-k) * a(n-k).

The programs for A333984, there is no canonical definition to state claims against.
-/

/-! ## A333984.P261456191234472399

`A349095(6*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A333984.P261456191234472399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A349095 (6 * a (n - 1)).toNat

end

end A333984.P261456191234472399

/-!
# A333985: a(0) = 0; a(n) = 6^(n-1) + (1/n) * Sum_{k=1..n-1} binomial(n,k)^2 * 6^(k-1) * (n-k) * a(n-k).

The programs for A333985, there is no canonical definition to state claims against.
-/

/-! ## A333985.P17294693593061740007

`A236932(1-floor(-(n*a(n-1))))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A333985.P17294693593061740007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A236932 (1 - (-((n : ℤ) * a (n - 1)))).toNat

end

end A333985.P17294693593061740007

/-!
# A333986: Greatest prime factor of A007497(n).

The programs for A333986, the canonical program `A333986.P15313696154619897607` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333986 has offset 1).

The definition of A333986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333986.P15313696154619897607

`A006530(A007497(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A333986

/-- `A006530(A007497(n+1))` -/
def P15313696154619897607.Spec : Prop :=
  ∀ n, P15313696154619897607.a n = A333986 (n + 1)

theorem P15313696154619897607.correct : P15313696154619897607.Spec := by
  intro n
  simp only [A333986, Nat.add_sub_cancel]

end A333986

/-! ## A333986.P1265798792705477515

`A034699(∏{p}[A007497(n+1), #])`
-/

namespace A333986.P1265798792705477515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A333986.P1265798792705477515

namespace A333986

/-- `A034699(∏{p}[A007497(n+1), #])` -/
def P1265798792705477515.Spec : Prop :=
  ∀ n, P1265798792705477515.a n = A333986 (n + 1)

end A333986

/-! ## A333986.P12920839893503602300

`A088387(∏{p}[A007497(n+1), #])`
-/

namespace A333986.P12920839893503602300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A333986.P12920839893503602300

namespace A333986

/-- `A088387(∏{p}[A007497(n+1), #])` -/
def P12920839893503602300.Spec : Prop :=
  ∀ n, P12920839893503602300.a n = A333986 (n + 1)

end A333986

/-! ## A333986.P17545063164145623530

`A345941(∏{p}[A007497(n+1), #])`
-/

namespace A333986.P17545063164145623530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A333986.P17545063164145623530

namespace A333986

/-- `A345941(∏{p}[A007497(n+1), #])` -/
def P17545063164145623530.Spec : Prop :=
  ∀ n, P17545063164145623530.a n = A333986 (n + 1)

end A333986

/-!
# A333987: Integers m for which b(m) < b(m-1) where b(k) = Min_{sqrt(k) - sqrt(x) - sqrt(y) > 0 with x, y distinct integers}.

The programs for A333987, there is no canonical definition to state claims against.
-/

/-! ## A333987.P1619077533254978936

`lt[A106988(n+1), A123595(A345062(n+1))]+1`
-/

namespace A333987.P1619077533254978936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123595 ((A345062 (n + 1)).toNat + 34)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A333987.P1619077533254978936

/-! ## A333987.P17675940324567867535

`lt[A107135(n+1), A123595(A345062(n+1))]+1`
-/

namespace A333987.P17675940324567867535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123595 ((A345062 (n + 1)).toNat + 34)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A333987.P17675940324567867535

/-!
# A333988: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of (1-(k+1)*x) / (1-2*(k+1)*x+((k-1)*x)^2).

The programs for A333988, the canonical program `A333988.P8850483727452632362` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333988 has offset 0).

The definition of A333988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333988.P8850483727452632362

`A084097(A245300(n)+A002262(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A333988

/-- `A084097(A245300(n)+A002262(n))` -/
def P8850483727452632362.Spec : Prop :=
  ∀ n, P8850483727452632362.a n = A333988 n

theorem P8850483727452632362.correct : P8850483727452632362.Spec := by
  intro n
  simp only [A333988]

end A333988

/-! ## A333988.P5852002592946498511

`A004001(A083075(n)%A141214(2*n+1))`
-/

namespace A333988.P5852002592946498511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.tmod (A083075 n) (A141214 (2 * n + 1))).toNat

end

end A333988.P5852002592946498511

namespace A333988

/-- `A004001(A083075(n)%A141214(2*n+1))` -/
def P5852002592946498511.Spec : Prop :=
  ∀ n, P5852002592946498511.a n = A333988 n

end A333988

/-! ## A333988.P8065047159876241001

`A004001(A083075(n))^A339768(A336163(n))`
-/

namespace A333988.P8065047159876241001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004001 (A083075 n).toNat : ℚ) ^ (A339768 (A336163 n).toNat : ℤ)

end

end A333988.P8065047159876241001

namespace A333988

/-- `A004001(A083075(n))^A339768(A336163(n))` -/
def P8065047159876241001.Spec : Prop :=
  ∀ n, P8065047159876241001.a n = (A333988 n : ℚ)

end A333988

/-! ## A333988.P1106802774490123244

`A004001(A083075(n)^A254609(n))`
-/

namespace A333988.P1106802774490123244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((A083075 n : ℚ) ^ (A254609 n : ℤ))).toNat

end

end A333988.P1106802774490123244

namespace A333988

/-- `A004001(A083075(n)^A254609(n))` -/
def P1106802774490123244.Spec : Prop :=
  ∀ n, P1106802774490123244.a n = A333988 n

end A333988

/-!
# A333989: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of (1+(k-1)*x) / (1+2*(k-1)*x+((k+1)*x)^2).

The programs for A333989, there is no canonical definition to state claims against.
-/

/-! ## A333989.P10030709905996248881

`A221131(A245300(n)+A002262(n))`
-/

namespace A333989.P10030709905996248881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221131 (A245300 n + A002262 n).toNat

end

end A333989.P10030709905996248881

/-! ## A333989.P8106166036099736997

`A392713(A188646(n))`
-/

namespace A333989.P8106166036099736997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392713 (A188646 n).toNat

end

end A333989.P8106166036099736997

/-! ## A333989.P8520632635408030260

`and(-A339768(n), A304242(A125800(n))%4)`
-/

namespace A333989.P8520632635408030260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A339768 n) (Int.tmod (A304242 (A125800 n).toNat) 4)

end

end A333989.P8520632635408030260

/-!
# A333990: a(n) = Sum_{k=0..n} n^k * binomial(2*n,2*k).

The programs for A333990, the canonical program `A333990.P7389432199778469016` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333990 has offset 0).

The definition of A333990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, n^#*C(2*n, 2*#)]` (program `A333990.P7389432199778469016`, by `A333990.P7389432199778469016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333990.P7389432199778469016

`∑{#}[n, n^#*C(2*n, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333990

/-- `∑{#}[n, n^#*C(2*n, 2*#)]` -/
def P7389432199778469016.Spec : Prop :=
  ∀ n, (P7389432199778469016.a n : ℤ) = A333990 n

theorem P7389432199778469016.correct : P7389432199778469016.Spec := by
  intro n
  simp only [A333990]

end A333990

/-! ## A333990.P2088806943148739114

`A084097(A062728(n))`
-/

namespace A333990.P2088806943148739114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084097 (A062728 n).toNat

end

end A333990.P2088806943148739114

namespace A333990

/-- `A084097(A062728(n))` -/
def P2088806943148739114.Spec : Prop :=
  ∀ n, P2088806943148739114.a n = A333990 n

end A333990

/-! ## A333990.P5524913293307334581

`A333988(∑[4*n])`
-/

namespace A333990.P5524913293307334581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333988 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333990.P5524913293307334581

namespace A333990

/-- `A333988(∑[4*n])` -/
def P5524913293307334581.Spec : Prop :=
  ∀ n, P5524913293307334581.a n = A333990 n

end A333990

/-! ## A333990.P7489952358198860994

`record[A003982(n)*A333988(n)]`
-/

namespace A333990.P7489952358198860994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A333988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333990.P7489952358198860994

namespace A333990

/-- `record[A003982(n)*A333988(n)]` -/
def P7489952358198860994.Spec : Prop :=
  ∀ n, P7489952358198860994.a n = A333990 n

end A333990

/-! ## A333990.P15936623020791325568

`gcd(A000038(n), A333988(A046092(n)))`
-/

namespace A333990.P15936623020791325568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A333988 (A046092 n).toNat)

end

end A333990.P15936623020791325568

namespace A333990

/-- `gcd(A000038(n), A333988(A046092(n)))` -/
def P15936623020791325568.Spec : Prop :=
  ∀ n, (P15936623020791325568.a n : ℤ) = A333990 n

end A333990

/-!
# A333991: a(n) = Sum_{k=0..n} (-n)^k * binomial(2*n,2*k).

The programs for A333991, the canonical program `A333991.P3573221751448538312` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333991 has offset 0).

The definition of A333991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-n)^#*C(2*n, 2*#)]` (program `A333991.P3573221751448538312`, by `A333991.P3573221751448538312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333991.P3573221751448538312

`∑{#}[n, (-n)^#*C(2*n, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333991

/-- `∑{#}[n, (-n)^#*C(2*n, 2*#)]` -/
def P3573221751448538312.Spec : Prop :=
  ∀ n, P3573221751448538312.a n = A333991 n

theorem P3573221751448538312.correct : P3573221751448538312.Spec := by
  intro n
  simp only [A333991]

end A333991

/-! ## A333991.P9261668490071255416

`cos(2*n*atan(sqrt(n)))*(n+1)^n`
-/

namespace A333991.P9261668490071255416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * ((n : ℝ) * Real.arctan (Real.sqrt (n : ℝ)))) * ((n + 1) ^ n : ℝ)

end

end A333991.P9261668490071255416

namespace A333991

/-- `cos(2*n*atan(sqrt(n)))*(n+1)^n` -/
def P9261668490071255416.Spec : Prop :=
  ∀ n, P9261668490071255416.a n = (A333991 n : ℝ)

end A333991

/-!
# A333992: a(n) is the multiplicative order of the n-th prime number q modulo (q-1)#.

The programs for A333992, there is no canonical definition to state claims against.
-/

/-! ## A333992.P8530124651684091949

`A028310(gcd(A066220(n+1), A093159(n+1)))`
-/

namespace A333992.P8530124651684091949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (A066220 (n + 1)) (A093159 (n + 1)))

end

end A333992.P8530124651684091949

/-! ## A333992.P326782449048538584

`A066220(n+1)/A053150(A054497(n))`
-/

namespace A333992.P326782449048538584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066220 (n + 1) : ℚ) / (A053150 (A054497 n).toNat : ℚ)

end

end A333992.P326782449048538584

/-! ## A333992.P6760149848336435515

`A066220(n+1)/A267425(A266995(n+1))`
-/

namespace A333992.P6760149848336435515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066220 (n + 1) : ℚ) / (A267425 (A266995 (n + 1)).toNat : ℚ)

end

end A333992.P6760149848336435515

/-! ## A333992.P3490817228236079657

`A118975(A070689(n+1))`
-/

namespace A333992.P3490817228236079657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118975 (A070689 (n + 1)).toNat

end

end A333992.P3490817228236079657

/-!
# A333994: Arithmetical complexity of the regular paperfolding sequence (A014577).

The programs for A333994, the canonical program `A333994.P4506060253245914630` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333994 has offset 0).

The definition of A333994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333994.P4506060253245914630

`ogf((1+x^2+2x^3+4x^4+4x^7-4x^8+4x^9-2x^11-2x^15)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A333994

/-- `ogf((1+x^2+2x^3+4x^4+4x^7-4x^8+4x^9-2x^11-2x^15)/(1-2x+x^2))` -/
def P4506060253245914630.Spec : Prop :=
  ∀ n, P4506060253245914630.a n = A333994 n

theorem P4506060253245914630.correct : P4506060253245914630.Spec := by
  intro n
  simp only [A333994]

end A333994

/-!
# A333995: a(n) = number of distinct composite numbers in the n X n multiplication table that are not in the n-1 X n-1 multiplication table.

The programs for A333995, there is no canonical definition to state claims against.
-/

/-! ## A333995.P15145583838606101203

`ceil(n/(n+1)*A062854(n+1))`
-/

namespace A333995.P15145583838606101203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ) * (A062854 (n + 1) : ℚ)⌉

end

end A333995.P15145583838606101203

/-! ## A333995.P6246470800665299388

`Δ[A027384(n)]-A080339(n+1)`
-/

namespace A333995.P6246470800665299388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080339 (n + 1)

end

end A333995.P6246470800665299388

/-! ## A333995.P2827725863374088605

`A062854(n+1)-A080339(n+1)`
-/

namespace A333995.P2827725863374088605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1) - A080339 (n + 1)

end

end A333995.P2827725863374088605

/-! ## A333995.P13809624000739329517

`A062854(n+1)-C(A000010(n+1), n)`
-/

namespace A333995.P13809624000739329517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1) - (Nat.choose (A000010 (n + 1)).toNat n : ℤ)

end

end A333995.P13809624000739329517

/-! ## A333995.P12010077927790844531

`A062854(n+1)-char[A020639(n+1)-1]`
-/

namespace A333995.P12010077927790844531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333995.P12010077927790844531

/-! ## A333995.P2690058459094146477

`Δ[A334454(round(sqrt(n²+1)))]`
-/

namespace A333995.P2690058459094146477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334454 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333995.P2690058459094146477

/-! ## A333995.P4971062422577969978

`abs(Δ[A334454(A028310(n))])`
-/

namespace A333995.P4971062422577969978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334454 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A333995.P4971062422577969978

/-! ## A333995.P15968007146277648252

`A334454(n+1)-A334454(round(sqrt(n²+1)))`
-/

namespace A333995.P15968007146277648252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334454 (n + 1) - A334454 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A333995.P15968007146277648252

/-!
# A333996: Number of composite numbers in the triangular n X n multiplication table.

The programs for A333996, the canonical program `A333996.P18309204266803155261` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333996 has offset 1).

The definition of A333996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333996.P18309204266803155261

`A256885(n+1)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A333996

/-- `A256885(n+1)-1` -/
def P18309204266803155261.Spec : Prop :=
  ∀ n, P18309204266803155261.a n = A333996 (n + 1)

theorem P18309204266803155261.correct : P18309204266803155261.Spec := by
  intro n
  simp only [A333996, Nat.add_sub_cancel]

end A333996

/-! ## A333996.P8622748251032365655

`C(n+2, 2)-A000720(n+1)-1`
-/

namespace A333996.P8622748251032365655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - A000720 (n + 1) - 1

end

end A333996.P8622748251032365655

namespace A333996

/-- `C(n+2, 2)-A000720(n+1)-1` -/
def P8622748251032365655.Spec : Prop :=
  ∀ n, P8622748251032365655.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P16775103858084833398

`A000217(n+1)-A000720(n+1)-1`
-/

namespace A333996.P16775103858084833398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A000720 (n + 1) - 1

end

end A333996.P16775103858084833398

namespace A333996

/-- `A000217(n+1)-A000720(n+1)-1` -/
def P16775103858084833398.Spec : Prop :=
  ∀ n, P16775103858084833398.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P11056985965726553850

`∑[floor(atan(∑{e}[n+1, #]))+n]`
-/

namespace A333996.P11056985965726553850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P11056985965726553850

namespace A333996

/-- `∑[floor(atan(∑{e}[n+1, #]))+n]` -/
def P11056985965726553850.Spec : Prop :=
  ∀ n, P11056985965726553850.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P9835903830550471339

`∑[char[lt[1, ∑{e}[n+1, #]]]+n]`
-/

namespace A333996.P9835903830550471339
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P9835903830550471339

namespace A333996

/-- `∑[char[lt[1, ∑{e}[n+1, #]]]+n]` -/
def P9835903830550471339.Spec : Prop :=
  ∀ n, (P9835903830550471339.a n : ℤ) = A333996 (n + 1)

end A333996

/-! ## A333996.P10305428608174729793

`∑[∑{e}[∑{p}[∑{e}[n+1, #], #], #]+n]`
-/

namespace A333996.P10305428608174729793
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P10305428608174729793

namespace A333996

/-- `∑[∑{e}[∑{p}[∑{e}[n+1, #], #], #]+n]` -/
def P10305428608174729793.Spec : Prop :=
  ∀ n, (P10305428608174729793.a n : ℤ) = A333996 (n + 1)

end A333996

/-! ## A333996.P18204840557830779862

`∑[1-∑{e}[n+1, #]!%2+n]`
-/

namespace A333996.P18204840557830779862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P18204840557830779862

namespace A333996

/-- `∑[1-∑{e}[n+1, #]!%2+n]` -/
def P18204840557830779862.Spec : Prop :=
  ∀ n, P18204840557830779862.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P8517458727238484948

`∑[gcd(2, ∑{e}[n+1, #]!)-1+n]`
-/

namespace A333996.P8517458727238484948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P8517458727238484948

namespace A333996

/-- `∑[gcd(2, ∑{e}[n+1, #]!)-1+n]` -/
def P8517458727238484948.Spec : Prop :=
  ∀ n, P8517458727238484948.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P1452360055841899627

`∑[char[lt[n+2, ∑{d}[n+1, #]]]+n]`
-/

namespace A333996.P1452360055841899627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P1452360055841899627

namespace A333996

/-- `∑[char[lt[n+2, ∑{d}[n+1, #]]]+n]` -/
def P1452360055841899627.Spec : Prop :=
  ∀ n, (P1452360055841899627.a n : ℤ) = A333996 (n + 1)

end A333996

/-! ## A333996.P7285222212934867169

`∑[n+1-∏{p}[n+1, val(#, n+1)]]`
-/

namespace A333996.P7285222212934867169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P7285222212934867169

namespace A333996

/-- `∑[n+1-∏{p}[n+1, val(#, n+1)]]` -/
def P7285222212934867169.Spec : Prop :=
  ∀ n, P7285222212934867169.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P12318788340884117212

`∑[n+1-∏{p}[n+1, C(#, n+1)]]`
-/

namespace A333996.P12318788340884117212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P12318788340884117212

namespace A333996

/-- `∑[n+1-∏{p}[n+1, C(#, n+1)]]` -/
def P12318788340884117212.Spec : Prop :=
  ∀ n, P12318788340884117212.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P10890418730350232314

`∑[A014684(n+1)]-1`
-/

namespace A333996.P10890418730350232314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A333996.P10890418730350232314

namespace A333996

/-- `∑[A014684(n+1)]-1` -/
def P10890418730350232314.Spec : Prop :=
  ∀ n, P10890418730350232314.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P15474229938195185959

`A065855(n+1)+∑[n]`
-/

namespace A333996.P15474229938195185959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333996.P15474229938195185959

namespace A333996

/-- `A065855(n+1)+∑[n]` -/
def P15474229938195185959.Spec : Prop :=
  ∀ n, P15474229938195185959.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P8220039187207185024

`∑[A066247(n+1)+n]`
-/

namespace A333996.P8220039187207185024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P8220039187207185024

namespace A333996

/-- `∑[A066247(n+1)+n]` -/
def P8220039187207185024.Spec : Prop :=
  ∀ n, P8220039187207185024.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P16099316057288754031

`∑[char[A072668(n+1)]+n]`
-/

namespace A333996.P16099316057288754031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P16099316057288754031

namespace A333996

/-- `∑[char[A072668(n+1)]+n]` -/
def P16099316057288754031.Spec : Prop :=
  ∀ n, (P16099316057288754031.a n : ℤ) = A333996 (n + 1)

end A333996

/-! ## A333996.P8098785328003713525

`∑[n+1]-A036234(n+1)`
-/

namespace A333996.P8098785328003713525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A036234 (n + 1)

end

end A333996.P8098785328003713525

namespace A333996

/-- `∑[n+1]-A036234(n+1)` -/
def P8098785328003713525.Spec : Prop :=
  ∀ n, P8098785328003713525.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P8428509089299471488

`∑[n+1-A080339(n+1)]`
-/

namespace A333996.P8428509089299471488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P8428509089299471488

namespace A333996

/-- `∑[n+1-A080339(n+1)]` -/
def P8428509089299471488.Spec : Prop :=
  ∀ n, P8428509089299471488.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P14310695541207986877

`∑[n+1-A267133(n+1)²]`
-/

namespace A333996.P14310695541207986877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267133 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333996.P14310695541207986877

namespace A333996

/-- `∑[n+1-A267133(n+1)²]` -/
def P14310695541207986877.Spec : Prop :=
  ∀ n, P14310695541207986877.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P14054082555975712217

`A000096(n)-A000720(n+1)`
-/

namespace A333996.P14054082555975712217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A000720 (n + 1)

end

end A333996.P14054082555975712217

namespace A333996

/-- `A000096(n)-A000720(n+1)` -/
def P14054082555975712217.Spec : Prop :=
  ∀ n, P14054082555975712217.a n = A333996 (n + 1)

end A333996

/-! ## A333996.P17964701288593615678

`A028387(n)-A374426(n+1)`
-/

namespace A333996.P17964701288593615678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A374426 (n + 1)

end

end A333996.P17964701288593615678

namespace A333996

/-- `A028387(n)-A374426(n+1)` -/
def P17964701288593615678.Spec : Prop :=
  ∀ n, P17964701288593615678.a n = A333996 (n + 1)

end A333996

/-!
# A333997: Number of electrons per subshell in element Z=n expressed as a 56-bit unsigned integer.

The programs for A333997, there is no canonical definition to state claims against.
-/

/-! ## A333997.P14607853974567618844

`∑[A330960(or(1, n)²)²]`
-/

namespace A333997.P14607853974567618844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (Nat.lor 1 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333997.P14607853974567618844

/-! ## A333997.P8318055051940792893

`∑[A179932(round(ϕ^n)+7)²]`
-/

namespace A333997.P8318055051940792893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179932 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n) + 7).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333997.P8318055051940792893

/-! ## A333997.P10835414955673931630

`∑[A034444(A079227(n))²]`
-/

namespace A333997.P10835414955673931630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A079227 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333997.P10835414955673931630

/-! ## A333997.P560252452320246802

`∑[A061142(A073709(n)²)]`
-/

namespace A333997.P560252452320246802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A073709 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333997.P560252452320246802

/-! ## A333997.P3906314283611089457

`∑[A000005(A289404(n))²]`
-/

namespace A333997.P3906314283611089457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A289404 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333997.P3906314283611089457

/-!
# A333998: Positive even integers 2k such that for all Goldbach partitions (p,q) of 2k, there exists a prime r_0 in p < r_0 < q.

The programs for A333998, there is no canonical definition to state claims against.
-/

/-! ## A333998.P7930210491307295656

`2*A076639(n+1)`
-/

namespace A333998.P7930210491307295656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076639 (n + 1)

end

end A333998.P7930210491307295656

/-! ## A333998.P3091076176266737501

`4*A076639(Δ[n²]-n)/2`
-/

namespace A333998.P3091076176266737501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A076639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A333998.P3091076176266737501

/-! ## A333998.P1407660749520042752

`2*(comp[A063934(n+1)-1]+1)`
-/

namespace A333998.P1407660749520042752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A333998.P1407660749520042752

/-! ## A333998.P4829146702428798676

`2*(comp[A063932(n+2)-1]+1)`
-/

namespace A333998.P4829146702428798676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A333998.P4829146702428798676

/-! ## A333998.P18134097542564962568

`2*(comp[n+1-A063933(n+2)]+1)`
-/

namespace A333998.P18134097542564962568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A063933 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A333998.P18134097542564962568

/-! ## A333998.P3496677561721850905

`2*(comp[round(sqrt(A033476(n+1)))-1]+1)`
-/

namespace A333998.P3496677561721850905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A033476 (n + 1) : ℝ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A333998.P3496677561721850905

/-! ## A333998.P9978124079158149429

`A004277(A076639(n+1))`
-/

namespace A333998.P9978124079158149429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A076639 (n + 1)).toNat

end

end A333998.P9978124079158149429

/-! ## A333998.P6259425218055943991

`A004275(A076639(n+1)+1)`
-/

namespace A333998.P6259425218055943991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A076639 (n + 1) + 1).toNat

end

end A333998.P6259425218055943991

/-! ## A333998.P13108596603246415136

`A005843(A076639(Δ[n²]-n))`
-/

namespace A333998.P13108596603246415136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A076639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A333998.P13108596603246415136

/-! ## A333998.P6218648503206396078

`A028310(2*A076639(Δ[n²]-n))`
-/

namespace A333998.P6218648503206396078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A076639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A333998.P6218648503206396078

/-!
# A333999: Even numbers with a Goldbach partition (p,q), p < q (p, q prime) such that q - p is a nonzero square.

The programs for A333999, there is no canonical definition to state claims against.
-/

/-! ## A333999.P9155815200491532706

`∩[2*n, A309305(n+1)]`
-/

namespace A333999.P9155815200491532706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333999.P9155815200491532706

/-! ## A333999.P12738991636360184543

`record[A009531(A309305(n+2))]`
-/

namespace A333999.P12738991636360184543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A309305 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333999.P12738991636360184543

/-! ## A333999.P513227471179133549

`filter[A309305(n+1), A021913(#)]`
-/

namespace A333999.P513227471179133549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A333999.P513227471179133549

/-! ## A333999.P16157045246100650741

`filter[A309305(n+1), A059841(#)]`
-/

namespace A333999.P16157045246100650741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A333999.P16157045246100650741

/-! ## A333999.P12312614415810588212

`filter[A309305(n+1), A135528(#)]`
-/

namespace A333999.P12312614415810588212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A333999.P12312614415810588212

/-! ## A333999.P716759317131507527

`filter[A309305(n+1), A217586(#)]`
-/

namespace A333999.P716759317131507527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A333999.P716759317131507527

/-! ## A333999.P15211837503989138755

`filter[A309305(n+1), A260393(#)]`
-/

namespace A333999.P15211837503989138755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A333999.P15211837503989138755

/-! ## A333999.P16516658378030316766

`filter[A309305(n+1), A260397(#)]`
-/

namespace A333999.P16516658378030316766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A333999.P16516658378030316766

/-! ## A333999.P10544750105879792741

`filter[A309305(n+1), A260446(#)]`
-/

namespace A333999.P10544750105879792741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260446 (f1 j).toNat = 1) n)

end

end A333999.P10544750105879792741

/-! ## A333999.P7191036076407975350

`filter[A309305(n+1), A266591(#)]`
-/

namespace A333999.P7191036076407975350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A333999.P7191036076407975350

