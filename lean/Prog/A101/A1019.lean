import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B003.C004
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
# A101900: Column 0 of triangular matrix A101897, in which column k equals column 0 of A101897^(k+1) and where the n-th row sums are zero for n>0.

The programs for A101900, there is no canonical definition to state claims against.
-/

/-! ## A101900.P403726101326176354

`A101897(∑[n])`
-/

namespace A101900.P403726101326176354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101897 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101900.P403726101326176354

/-! ## A101900.P655959347762942403

`A101897(A000217(n))+char[16]`
-/

namespace A101900.P655959347762942403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101897 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101900.P655959347762942403

/-! ## A101900.P4075595298464981631

`A067059(n)*A101897(A000217(n))`
-/

namespace A101900.P4075595298464981631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A101897 (A000217 n).toNat

end

end A101900.P4075595298464981631

/-! ## A101900.P4247820174463408008

`A101897(A000217(n))*A152906(n)`
-/

namespace A101900.P4247820174463408008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101897 (A000217 n).toNat * A152906 n

end

end A101900.P4247820174463408008

/-! ## A101900.P5678560326815706043

`A101897(A000217(n))*A288120(n)`
-/

namespace A101900.P5678560326815706043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101897 (A000217 n).toNat * A288120 n

end

end A101900.P5678560326815706043

/-!
# A101901: Absolute row sums of triangular matrix A101897, in which column k equals column 0 of A101897^k and where the n-th row sums are zero for n>0.

The programs for A101901, there is no canonical definition to state claims against.
-/

/-! ## A101901.P6993432982236885221

`A178772(A149833(n))`
-/

namespace A101901.P6993432982236885221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (A149833 n).toNat

end

end A101901.P6993432982236885221

/-! ## A101901.P14650115956525034097

`∑[A055155(∏[A076921(n+1)])]`
-/

namespace A101901.P14650115956525034097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101901.P14650115956525034097

/-! ## A101901.P4792473963542548631

`A302478(A091352(n))-A066281(n+1)`
-/

namespace A101901.P4792473963542548631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A091352 n).toNat - A066281 (n + 1)

end

end A101901.P4792473963542548631

/-!
# A101902: Numbers n that are not of the form ab+bc+cd+de+ea with 1<=a<=b<=c<=d<=e.

The programs for A101902, there is no canonical definition to state claims against.
-/

/-! ## A101902.P9799343434617122321

`eq[A000007(n), A393712(n)]`
-/

namespace A101902.P9799343434617122321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101902.P9799343434617122321

/-! ## A101902.P6760259206750792225

`eq[A000038(n), A393712(n)]`
-/

namespace A101902.P6760259206750792225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101902.P6760259206750792225

/-! ## A101902.P12104560986567028066

`eq[A015161(n), A393712(n)]`
-/

namespace A101902.P12104560986567028066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101902.P12104560986567028066

/-! ## A101902.P13120748859872320394

`eq[A015703(n), A393712(n)]`
-/

namespace A101902.P13120748859872320394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101902.P13120748859872320394

/-! ## A101902.P3768442281980563583

`eq[A015824(n), A393712(n)]`
-/

namespace A101902.P3768442281980563583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101902.P3768442281980563583

/-!
# A101903: Number of twin Pythagorean triples with hypotenuse less than 10^n.

The programs for A101903, there is no canonical definition to state claims against.
-/

/-! ## A101903.P2306843317087877867

`A101904(n+1)+A001957(n)`
-/

namespace A101903.P2306843317087877867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101904 (n + 1) + A001957 n

end

end A101903.P2306843317087877867

/-! ## A101903.P13992057589979688471

`A101904(n+1)+comp[A001960(n)]`
-/

namespace A101903.P13992057589979688471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001960 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101904 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A101903.P13992057589979688471

/-! ## A101903.P13933590148216724103

`ceil(A101904(n+1)+log(A011367(n)))`
-/

namespace A101903.P13933590148216724103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101904 (n + 1) : ℝ) + Real.log (A011367 n : ℝ)⌉

end

end A101903.P13933590148216724103

/-! ## A101903.P10998530160992148767

`A001957(n)+floor((A035069(n+1)-2)/2)`
-/

namespace A101903.P10998530160992148767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 n + ⌊(A035069 (n + 1) - 2 : ℚ) / 2⌋

end

end A101903.P10998530160992148767

/-! ## A101903.P3624181922278649440

`A001957(n)+floor((A083377(n+2)-1)/2)`
-/

namespace A101903.P3624181922278649440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 n + ⌊(A083377 (n + 2) - 1 : ℚ) / 2⌋

end

end A101903.P3624181922278649440

/-!
# A101904: Number of leg-hypotenuse twin Pythagorean triples < 10^n.

The programs for A101904, there is no canonical definition to state claims against.
-/

/-! ## A101904.P11370478976263074603

`round(sqrt(5*10^n))-1`
-/

namespace A101904.P11370478976263074603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (5 * 10 ^ n : ℝ)) - 1

end

end A101904.P11370478976263074603

/-! ## A101904.P14077604147255079028

`floor((A035069(n+1)-2)/2)`
-/

namespace A101904.P14077604147255079028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035069 (n + 1) - 2 : ℚ) / 2⌋

end

end A101904.P14077604147255079028

/-! ## A101904.P10968424466105797961

`floor((A083377(n+2)-1)/2)`
-/

namespace A101904.P10968424466105797961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083377 (n + 2) - 1 : ℚ) / 2⌋

end

end A101904.P10968424466105797961

/-! ## A101904.P7219749204750298718

`(1-round(sqrt(A199685(n))))*(1-4/2)`
-/

namespace A101904.P7219749204750298718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - SequenceMachineLib.roundAway (Real.sqrt (A199685 n : ℝ)) : ℚ) * (1 - (4 : ℚ) / 2)

end

end A101904.P7219749204750298718

/-! ## A101904.P5394137934551402746

`abs(1-floor((ceil((A035075(n+1)+2)/2)-1)/2))`
-/

namespace A101904.P5394137934551402746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌊(⌈(A035075 (n + 1) + 2 : ℚ) / 2⌉ - 1 : ℚ) / 2⌋|

end

end A101904.P5394137934551402746

/-!
# A101905: a(1) = 1; a(n+1) = A101261(2n).

The programs for A101905, there is no canonical definition to state claims against.
-/

/-! ## A101905.P16225989800035605900

`A101261(floor(acot(n))+2*n)`
-/

namespace A101905.P16225989800035605900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101261 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A101905.P16225989800035605900

/-! ## A101905.P13466271835955135787

`A101261(round(1/acot(n))+n)`
-/

namespace A101905.P13466271835955135787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101261 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A101905.P13466271835955135787

/-! ## A101905.P5693910357124241813

`A101261(floor(3/acot(n))-n)`
-/

namespace A101905.P5693910357124241813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101261 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A101905.P5693910357124241813

/-! ## A101905.P2988888067155063265

`A101261(or(2*n, floor(acot(n))))`
-/

namespace A101905.P2988888067155063265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101261 (Int.lor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A101905.P2988888067155063265

/-! ## A101905.P16398933876026327030

`A101261(xor(2*n, floor(acot(n))))`
-/

namespace A101905.P16398933876026327030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101261 (Int.xor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A101905.P16398933876026327030

/-!
# A101907: Numbers k such that the arithmetic mean of the first k+1 Fibonacci numbers (beginning with F(0)) is an integer.

The programs for A101907, there is no canonical definition to state claims against.
-/

/-! ## A101907.P12090279613010861945

`A219612(n+1)-1`
-/

namespace A101907.P12090279613010861945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1) - 1

end

end A101907.P12090279613010861945

/-! ## A101907.P2121080246026936589

`A243492(A166092(gcd(n, n+1)))+A219612(n+1)`
-/

namespace A101907.P2121080246026936589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 (A166092 (Nat.gcd n (n + 1))).toNat + A219612 (n + 1)

end

end A101907.P2121080246026936589

/-! ## A101907.P9642033094121667068

`eq[1, A214967(n+2)]`
-/

namespace A101907.P9642033094121667068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214967 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101907.P9642033094121667068

/-! ## A101907.P10413503490754871463

`eq[n, n*A002726(n+1)]`
-/

namespace A101907.P10413503490754871463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101907.P10413503490754871463

/-! ## A101907.P13519759294164892684

`A023443(A219612(n+1))`
-/

namespace A101907.P13519759294164892684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A219612 (n + 1)).toNat

end

end A101907.P13519759294164892684

/-! ## A101907.P17194258506223193169

`A023444(A219612(n+1)+1)`
-/

namespace A101907.P17194258506223193169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A219612 (n + 1) + 1).toNat

end

end A101907.P17194258506223193169

/-! ## A101907.P12877664500594754982

`eq[A002726(n+1), A057427(n)]`
-/

namespace A101907.P12877664500594754982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101907.P12877664500594754982

/-! ## A101907.P15835658248525969975

`eq[A002726(n+1), A294619(n)]`
-/

namespace A101907.P15835658248525969975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101907.P15835658248525969975

/-! ## A101907.P9284639752865008290

`record[A000027(n+1)/A214967(n+2)-1]`
-/

namespace A101907.P9284639752865008290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A214967 (n + 2) : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101907.P9284639752865008290

/-! ## A101907.P8323497714846499951

`lt[∑[A000045(n)]%(n+1), 1]`
-/

namespace A101907.P8323497714846499951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A101907.P8323497714846499951

/-!
# A101909: Number of primes between 2n and 4n.

The programs for A101909, the canonical program `A101909.P4303666078231778873` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101909 has offset 1).

The definition of A101909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099802, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101909.P4303666078231778873

`A099802(2*(n+1))-A099802(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A101909

/-- `A099802(2*(n+1))-A099802(n+1)` -/
def P4303666078231778873.Spec : Prop :=
  ∀ n, P4303666078231778873.a n = A101909 (n + 1)

theorem P4303666078231778873.correct : P4303666078231778873.Spec := by
  intro n
  simp only [A101909, Nat.add_sub_cancel]

end A101909

/-! ## A101909.P198107438944663547

`A060715(2*(n+1))`
-/

namespace A101909.P198107438944663547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (2 * (n + 1))

end

end A101909.P198107438944663547

namespace A101909

/-- `A060715(2*(n+1))` -/
def P198107438944663547.Spec : Prop :=
  ∀ n, P198107438944663547.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P4604038693850994096

`A056171(4*(n+1))`
-/

namespace A101909.P4604038693850994096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (4 * (n + 1))

end

end A101909.P4604038693850994096

namespace A101909

/-- `A056171(4*(n+1))` -/
def P4604038693850994096.Spec : Prop :=
  ∀ n, P4604038693850994096.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P14350729131138210206

`A035250(2*(n+1))-floor(acot(n))`
-/

namespace A101909.P14350729131138210206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (2 * (n + 1)) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A101909.P14350729131138210206

namespace A101909

/-- `A035250(2*(n+1))-floor(acot(n))` -/
def P14350729131138210206.Spec : Prop :=
  ∀ n, P14350729131138210206.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P11845910344635706424

`A035250(floor(sqrt(n*(n+3)))+n+1)`
-/

namespace A101909.P11845910344635706424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (Nat.sqrt (n * (n + 3)) + n + 1)

end

end A101909.P11845910344635706424

namespace A101909

/-- `A035250(floor(sqrt(n*(n+3)))+n+1)` -/
def P11845910344635706424.Spec : Prop :=
  ∀ n, P11845910344635706424.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P17392179109463978720

`A075699(n+1)-A108954(n+1)`
-/

namespace A101909.P17392179109463978720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075699 (n + 1) - A108954 (n + 1)

end

end A101909.P17392179109463978720

namespace A101909

/-- `A075699(n+1)-A108954(n+1)` -/
def P17392179109463978720.Spec : Prop :=
  ∀ n, P17392179109463978720.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P5796107581569684311

`A035250(2*(n+1))-A000007(n)`
-/

namespace A101909.P5796107581569684311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (2 * (n + 1)) - A000007 n

end

end A101909.P5796107581569684311

namespace A101909

/-- `A035250(2*(n+1))-A000007(n)` -/
def P5796107581569684311.Spec : Prop :=
  ∀ n, P5796107581569684311.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P277305445686699493

`A000720(record[xor(3, n)])-A000720(2*(n+1))`
-/

namespace A101909.P277305445686699493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - A000720 (2 * (n + 1))

end

end A101909.P277305445686699493

namespace A101909

/-- `A000720(record[xor(3, n)])-A000720(2*(n+1))` -/
def P277305445686699493.Spec : Prop :=
  ∀ n, P277305445686699493.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P4395458651561232260

`A035250(2*(n+1))-A010051(2*(n+1))`
-/

namespace A101909.P4395458651561232260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (2 * (n + 1)) - A010051 (2 * (n + 1))

end

end A101909.P4395458651561232260

namespace A101909

/-- `A035250(2*(n+1))-A010051(2*(n+1))` -/
def P4395458651561232260.Spec : Prop :=
  ∀ n, P4395458651561232260.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P16776985298199824554

`A099801(2*n+1)-A000720(2*(n+1))`
-/

namespace A101909.P16776985298199824554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (2 * n + 1) - A000720 (2 * (n + 1))

end

end A101909.P16776985298199824554

namespace A101909

/-- `A099801(2*n+1)-A000720(2*(n+1))` -/
def P16776985298199824554.Spec : Prop :=
  ∀ n, P16776985298199824554.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P10111606246880524017

`A071917(2*(n+1))-A071917(2*n+1)`
-/

namespace A101909.P10111606246880524017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071917 (2 * (n + 1)) - A071917 (2 * n + 1)

end

end A101909.P10111606246880524017

namespace A101909

/-- `A071917(2*(n+1))-A071917(2*n+1)` -/
def P10111606246880524017.Spec : Prop :=
  ∀ n, P10111606246880524017.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P13063656800077031582

`A000720(A317331(n+1))-A099802(n+1)`
-/

namespace A101909.P13063656800077031582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A317331 (n + 1)).toNat - A099802 (n + 1)

end

end A101909.P13063656800077031582

namespace A101909

/-- `A000720(A317331(n+1))-A099802(n+1)` -/
def P13063656800077031582.Spec : Prop :=
  ∀ n, P13063656800077031582.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P9754713093983494875

`A000720(A047535(n+1))-A000720(2*(n+1))`
-/

namespace A101909.P9754713093983494875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A047535 (n + 1)).toNat - A000720 (2 * (n + 1))

end

end A101909.P9754713093983494875

namespace A101909

/-- `A000720(A047535(n+1))-A000720(2*(n+1))` -/
def P9754713093983494875.Spec : Prop :=
  ∀ n, P9754713093983494875.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P961820162030244462

`A000720(A317331(n+1))-A000720(2*(n+1))`
-/

namespace A101909.P961820162030244462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A317331 (n + 1)).toNat - A000720 (2 * (n + 1))

end

end A101909.P961820162030244462

namespace A101909

/-- `A000720(A317331(n+1))-A000720(2*(n+1))` -/
def P961820162030244462.Spec : Prop :=
  ∀ n, P961820162030244462.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P8813237945138101802

`A099801(2*n+1)+A101264(n+1)-A099801(n+1)`
-/

namespace A101909.P8813237945138101802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (2 * n + 1) + (A101264 (n + 1) - A099801 (n + 1))

end

end A101909.P8813237945138101802

namespace A101909

/-- `A099801(2*n+1)+A101264(n+1)-A099801(n+1)` -/
def P8813237945138101802.Spec : Prop :=
  ∀ n, P8813237945138101802.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P15170185154614461127

`2*n+1-A307912(A004275(n+2))`
-/

namespace A101909.P15170185154614461127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A307912 (A004275 (n + 2)).toNat

end

end A101909.P15170185154614461127

namespace A101909

/-- `2*n+1-A307912(A004275(n+2))` -/
def P15170185154614461127.Spec : Prop :=
  ∀ n, P15170185154614461127.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P17789649179049349641

`A000720(A008574(n+1))-A000720(2*(n+1))`
-/

namespace A101909.P17789649179049349641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008574 (n + 1)).toNat - A000720 (2 * (n + 1))

end

end A101909.P17789649179049349641

namespace A101909

/-- `A000720(A008574(n+1))-A000720(2*(n+1))` -/
def P17789649179049349641.Spec : Prop :=
  ∀ n, P17789649179049349641.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P2319679727446850876

`A000720(A008586(n+1))-A000720(2*(n+1))`
-/

namespace A101909.P2319679727446850876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008586 (n + 1)).toNat - A000720 (2 * (n + 1))

end

end A101909.P2319679727446850876

namespace A101909

/-- `A000720(A008586(n+1))-A000720(2*(n+1))` -/
def P2319679727446850876.Spec : Prop :=
  ∀ n, P2319679727446850876.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P4571031386326684523

`A108954(2*(n+1))`
-/

namespace A101909.P4571031386326684523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (2 * (n + 1))

end

end A101909.P4571031386326684523

namespace A101909

/-- `A108954(2*(n+1))` -/
def P4571031386326684523.Spec : Prop :=
  ∀ n, P4571031386326684523.a n = A101909 (n + 1)

end A101909

/-! ## A101909.P16360461020539486314

`A087011(2*(n+1))+A087010(2*(n+1))`
-/

namespace A101909.P16360461020539486314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (2 * (n + 1)) + A087010 (2 * (n + 1))

end

end A101909.P16360461020539486314

namespace A101909

/-- `A087011(2*(n+1))+A087010(2*(n+1))` -/
def P16360461020539486314.Spec : Prop :=
  ∀ n, P16360461020539486314.a n = A101909 (n + 1)

end A101909

/-!
# A101910: A fractal sequence such that a(n) = A101911(A000120(n-1)) for n>0, where A101911 is the binomial transform of this sequence.

The programs for A101910, there is no canonical definition to state claims against.
-/

/-! ## A101910.P7270469157728153761

`A101911(A000120(n)-∑{e}[xor(n, -n), 2-#])`
-/

namespace A101910.P7270469157728153761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (A000120 n - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A101910.P7270469157728153761

/-! ## A101910.P11666800613811353598

`A101911(∑[∑{e}[xor(n, -n), 2-#]]-A088705(n))`
-/

namespace A101910.P11666800613811353598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (∑ j ∈ Finset.range (n + 1), f1 j - A088705 n).toNat

end

end A101910.P11666800613811353598

/-! ## A101910.P304285943669699360

`A101911(∑[1-∑{e}[or(n, -n), #]]-1-A088705(n))`
-/

namespace A101910.P304285943669699360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (∑ j ∈ Finset.range (n + 1), f1 j - 1 - A088705 n).toNat

end

end A101910.P304285943669699360

/-! ## A101910.P17201055576889901251

`A101911(Δ[A000788(A289207(n))])`
-/

namespace A101910.P17201055576889901251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (f1 (n + 1) - f1 n).toNat

end

end A101910.P17201055576889901251

/-! ## A101910.P11721229222008942987

`A101911(A000120(n)-A088705(n))`
-/

namespace A101910.P11721229222008942987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (A000120 n - A088705 n).toNat

end

end A101910.P11721229222008942987

/-! ## A101910.P12497011260812490020

`A101911(log2(A001316(n))-A088705(n))`
-/

namespace A101910.P12497011260812490020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ) - (A088705 n : ℝ))).toNat

end

end A101910.P12497011260812490020

/-! ## A101910.P12542755934653402580

`A101911(∑[A088705(n)]-A088705(n))`
-/

namespace A101910.P12542755934653402580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (∑ j ∈ Finset.range (n + 1), f1 j - A088705 n).toNat

end

end A101910.P12542755934653402580

/-! ## A101910.P1995757616494993247

`A101911(val(A102377(n), 2)-A088705(n))`
-/

namespace A101910.P1995757616494993247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 ((SequenceMachineLib.valuation (A102377 n).toNat 2 : ℤ) - A088705 n).toNat

end

end A101910.P1995757616494993247

/-! ## A101910.P7236219278405944614

`A101911(log2(Δ[A006046(n)])-A088705(n))`
-/

namespace A101910.P7236219278405944614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ) - (A088705 n : ℝ))).toNat

end

end A101910.P7236219278405944614

/-!
# A101911: Binomial transform of A101910, where A101910(n) = a(A000120(n-1)) for n>0 with A101910(0) = 1.

The programs for A101911, there is no canonical definition to state claims against.
-/

/-! ## A101911.P4981667673187484964

`A101910(2^n)`
-/

namespace A101911.P4981667673187484964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101910 (2 ^ n)

end

end A101911.P4981667673187484964

/-! ## A101911.P13070715934778191881

`record[A101910(n)]`
-/

namespace A101911.P13070715934778191881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101911.P13070715934778191881

/-! ## A101911.P9049997972257713567

`A325353(A332283(2*n))`
-/

namespace A101911.P9049997972257713567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (A332283 (2 * n)).toNat

end

end A101911.P9049997972257713567

/-!
# A101912: G.f. satisfies: A(x) = 1/(1 + x*A(x^2)) and also the continued fraction: 1 + x*A(x^3) = [1; 1/x, 1/x^2, 1/x^4, 1/x^8, ..., 1/x^(2^(n-1)), ...].

The programs for A101912, there is no canonical definition to state claims against.
-/

/-! ## A101912.P1877328436588798263

`A218031(Δ[n²])`
-/

namespace A101912.P1877328436588798263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218031 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101912.P1877328436588798263

/-! ## A101912.P2824265618009427862

`or(char[1], A218031(2*n+1))`
-/

namespace A101912.P2824265618009427862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A218031 (2 * n + 1))

end

end A101912.P2824265618009427862

/-! ## A101912.P7762342640262262755

`A218031(2*n+1)+A000007(n+1)`
-/

namespace A101912.P7762342640262262755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218031 (2 * n + 1) + A000007 (n + 1)

end

end A101912.P7762342640262262755

/-! ## A101912.P5846452689198686811

`A218031(2*n+1)^A007318(C(2, n))`
-/

namespace A101912.P5846452689198686811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218031 (2 * n + 1) : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A101912.P5846452689198686811

/-! ## A101912.P6127850621597262333

`A218031(2*n+1)^(A000040(n+1)%2)`
-/

namespace A101912.P6127850621597262333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218031 (2 * n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A101912.P6127850621597262333

/-! ## A101912.P13849334714042516586

`A238429(6*n+3)`
-/

namespace A101912.P13849334714042516586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238429 (6 * n + 3)

end

end A101912.P13849334714042516586

/-! ## A101912.P1674605541826057012

`A218031(2*n+1)/A007318(C(n, 2))`
-/

namespace A101912.P1674605541826057012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218031 (2 * n + 1) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A101912.P1674605541826057012

/-! ## A101912.P14162804717771792540

`A007318(∑[n])*A218031(2*n+1)`
-/

namespace A101912.P14162804717771792540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A218031 (2 * n + 1)

end

end A101912.P14162804717771792540

/-! ## A101912.P11579419144930409953

`A218031(2*n+1)^A014963(∑[n+3])`
-/

namespace A101912.P11579419144930409953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218031 (2 * n + 1) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A101912.P11579419144930409953

/-!
# A101913: G.f. satisfies: A(x) = 1/(1 + x*A(x^3)) and also the continued fraction: 1+x*A(x^4) = [1;1/x,1/x^3,1/x^9,1/x^27,...,1/x^(3^(n-1)),...].

The programs for A101913, there is no canonical definition to state claims against.
-/

/-! ## A101913.P875507150860362463

`(-1)^n*A351870(A352042(n))`
-/

namespace A101913.P875507150860362463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A351870 (A352042 n).toNat

end

end A101913.P875507150860362463

/-! ## A101913.P3186751947877536542

`(-1)^n*A239088(A238434(n+1))`
-/

namespace A101913.P3186751947877536542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A239088 (A238434 (n + 1)).toNat

end

end A101913.P3186751947877536542

/-! ## A101913.P105020317972873599

`(-1)^n*A135660(A060013(n+2))`
-/

namespace A101913.P105020317972873599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A135660 (A060013 (n + 2)).toNat

end

end A101913.P105020317972873599

/-! ## A101913.P11654397071857729248

`A351870(A352042(n))/A033999(n)`
-/

namespace A101913.P11654397071857729248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351870 (A352042 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A101913.P11654397071857729248

/-! ## A101913.P3595724032280105837

`∏{e}[A182522(2*n), A199804(#)]`
-/

namespace A101913.P3595724032280105837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A199804 (Nat.factorization (f1 n).natAbs p)

end

end A101913.P3595724032280105837

/-!
# A101914: G.f. satisfies: A(x) = 1/(1 + x*A(x^4)) and also the continued fraction: 1 + x*A(x^5) = [1; 1/x, 1/x^4, 1/x^16, 1/x^64, ..., 1/x^(4^(n-1)), ...].

The programs for A101914, there is no canonical definition to state claims against.
-/

/-! ## A101914.P10727598690407923738

`A285408(A055646(n))+char[14]`
-/

namespace A101914.P10727598690407923738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285408 (A055646 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101914.P10727598690407923738

/-! ## A101914.P681093117024327656

`A285408(n)+A178798(A027187(n))`
-/

namespace A101914.P681093117024327656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285408 n + A178798 (A027187 n).toNat

end

end A101914.P681093117024327656

/-! ## A101914.P18230570539694500343

`A285408(n)+A033301(A247341(n))`
-/

namespace A101914.P18230570539694500343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285408 n + A033301 (A247341 n).toNat

end

end A101914.P18230570539694500343

/-! ## A101914.P5738345262867010900

`A285408(n)+A093958(A101842(n+1))`
-/

namespace A101914.P5738345262867010900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285408 n + A093958 (A101842 (n + 1)).toNat

end

end A101914.P5738345262867010900

/-! ## A101914.P16409954639371752901

`A295884(n+2)+A285408(A055646(n))`
-/

namespace A101914.P16409954639371752901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 2) + A285408 (A055646 n).toNat

end

end A101914.P16409954639371752901

/-!
# A101915: G.f. satisfies: A(x) = 1/(1 + x*A(x^5)) and also the continued fraction: 1+x*A(x^6) = [1;1/x,1/x^5,1/x^25,1/x^125,...,1/x^(5^(n-1)),...].

The programs for A101915, there is no canonical definition to state claims against.
-/

/-! ## A101915.P17929149907344627069

`(-1)^n*A000188(A295073(n)²)`
-/

namespace A101915.P17929149907344627069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000188 (A295073 n ^ 2).toNat

end

end A101915.P17929149907344627069

/-! ## A101915.P18031525908492474465

`(-1)^n*A019554(A295073(n)²)`
-/

namespace A101915.P18031525908492474465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A019554 (A295073 n ^ 2).toNat

end

end A101915.P18031525908492474465

/-! ## A101915.P9662903160504778078

`A000188(A295073(n)²)*A033999(n)`
-/

namespace A101915.P9662903160504778078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A295073 n ^ 2).toNat * A033999 n

end

end A101915.P9662903160504778078

/-! ## A101915.P17472745505101385629

`A000194(A295073(n)²)*A033999(n)`
-/

namespace A101915.P17472745505101385629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A295073 n ^ 2).toNat * A033999 n

end

end A101915.P17472745505101385629

/-! ## A101915.P11090949247310635057

`A056594(A157366(n+1))*A295073(n)`
-/

namespace A101915.P11090949247310635057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A157366 (n + 1)).toNat * A295073 n

end

end A101915.P11090949247310635057

/-!
# A101916: G.f. satisfies: A(x) = 1/(1 + x*A(x^6)) and also the continued fraction: 1+x*A(x^7) = [1;1/x,1/x^6,1/x^36,1/x^216,...,1/x^(6^(n-1)),...].

The programs for A101916, there is no canonical definition to state claims against.
-/

/-! ## A101916.P16934996636679291340

`A101918(n+2)-A185284(A295073(n+3))`
-/

namespace A101916.P16934996636679291340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101918 (n + 2) - A185284 (A295073 (n + 3)).toNat

end

end A101916.P16934996636679291340

/-! ## A101916.P521246607465575206

`A101918(A077168(n+1))`
-/

namespace A101916.P521246607465575206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101918 (A077168 (n + 1)).toNat

end

end A101916.P521246607465575206

/-! ## A101916.P1707397783801593396

`A291169(A043319(n+2))`
-/

namespace A101916.P1707397783801593396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 (A043319 (n + 2)).toNat

end

end A101916.P1707397783801593396

/-! ## A101916.P15438099939253053957

`A291169(A044916(n+2))`
-/

namespace A101916.P15438099939253053957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 (A044916 (n + 2)).toNat

end

end A101916.P15438099939253053957

/-! ## A101916.P4844502294531997819

`A291169(A055646(n+2))`
-/

namespace A101916.P4844502294531997819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 (A055646 (n + 2)).toNat

end

end A101916.P4844502294531997819

/-!
# A101917: G.f. satisfies: A(x) = 1/(1 + x*A(x^7)) and also the continued fraction: 1 + x*A(x^8) = [1; 1/x, 1/x^7, 1/x^49, 1/x^343, ..., 1/x^(7^(n-1)), ...].

The programs for A101917, there is no canonical definition to state claims against.
-/

/-! ## A101917.P17475298369497354052

`A004718(A000079(n))*A005710(n)`
-/

namespace A101917.P17475298369497354052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A000079 n).toNat * A005710 n

end

end A101917.P17475298369497354052

/-! ## A101917.P9367372962798487

`A008836(A000079(n))*A023358(n)`
-/

namespace A101917.P9367372962798487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000079 n).toNat * A023358 n

end

end A101917.P9367372962798487

/-! ## A101917.P11798207508072476298

`A005710(n)*A106400(A000225(n))`
-/

namespace A101917.P11798207508072476298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 n * A106400 (A000225 n).toNat

end

end A101917.P11798207508072476298

/-! ## A101917.P14115515483947173931

`A008836(A000079(n))*A173925(n)`
-/

namespace A101917.P14115515483947173931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000079 n).toNat * A173925 n

end

end A101917.P14115515483947173931

/-! ## A101917.P6816181789885670508

`A049347(A000225(n))*A173925(n)`
-/

namespace A101917.P6816181789885670508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A000225 n).toNat * A173925 n

end

end A101917.P6816181789885670508

/-!
# A101918: G.f. satisfies: A(x) = 1/(1 + x*A(x^8)) and also the continued fraction: 1 + x*A(x^9) = [1; 1/x, 1/x^8, 1/x^64, 1/x^512, ..., 1/x^(8^(n-1)), ...].

The programs for A101918, there is no canonical definition to state claims against.
-/

/-! ## A101918.P17855027386735120067

`A291169(n)%A002764(n)`
-/

namespace A101918.P17855027386735120067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291169 n) (A002764 n)

end

end A101918.P17855027386735120067

/-! ## A101918.P18079282409141926940

`A291169(n^A185284(n)!)`
-/

namespace A101918.P18079282409141926940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 (n ^ Nat.factorial (A185284 n).toNat)

end

end A101918.P18079282409141926940

/-! ## A101918.P4858527939936727601

`A291169(n*A161618(n+1))`
-/

namespace A101918.P4858527939936727601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 ((n : ℤ) * A161618 (n + 1)).toNat

end

end A101918.P4858527939936727601

/-! ## A101918.P11586327811864508608

`A291169(n^A161618(n+1))`
-/

namespace A101918.P11586327811864508608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A161618 (n + 1) : ℤ))).toNat

end

end A101918.P11586327811864508608

/-! ## A101918.P9178001150446767810

`A291169(C(n, A161618(n+1)))`
-/

namespace A101918.P9178001150446767810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 (Nat.choose n (A161618 (n + 1)).toNat)

end

end A101918.P9178001150446767810

/-!
# A101919: Triangle read by rows: T(n,k) is the number of Schroeder paths of length 2n and having k up steps starting at even heights.

The programs for A101919, there is no canonical definition to state claims against.
-/

/-! ## A101919.P5838156860437339058

`A143952(A194061(n+1)%A286751(n+1))`
-/

namespace A101919.P5838156860437339058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (Int.tmod (A194061 (n + 1)) (A286751 (n + 1))).toNat

end

end A101919.P5838156860437339058

/-! ## A101919.P17332817848849880337

`A143952(A194061(n+1))`
-/

namespace A101919.P17332817848849880337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A194061 (n + 1)).toNat

end

end A101919.P17332817848849880337

/-! ## A101919.P15121824509186564821

`A143952(A056537(n+1)-1)`
-/

namespace A101919.P15121824509186564821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A056537 (n + 1) - 1).toNat

end

end A101919.P15121824509186564821

/-! ## A101919.P245683786322264751

`A143952(A057428(n)+A056537(n+1))`
-/

namespace A101919.P245683786322264751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A057428 n + A056537 (n + 1)).toNat

end

end A101919.P245683786322264751

/-! ## A101919.P15481485337640079923

`A143952(A134824(n)+A056537(n+1))`
-/

namespace A101919.P15481485337640079923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A134824 n + A056537 (n + 1)).toNat

end

end A101919.P15481485337640079923

/-!
# A101920: Triangle read by rows: T(n,k) is the number of Schroeder paths of length 2n and having k up steps starting at an odd height.

The programs for A101920, there is no canonical definition to state claims against.
-/

/-! ## A101920.P9037989632830267147

`A271940(A082152(n+1)+2)`
-/

namespace A101920.P9037989632830267147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271940 (A082152 (n + 1) + 2).toNat

end

end A101920.P9037989632830267147

/-! ## A101920.P14738875224063043930

`A101919(A014132(n+1))+char[∑[n]]`
-/

namespace A101920.P14738875224063043930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101919 (A014132 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101920.P14738875224063043930

/-! ## A101920.P7806153565063042925

`A101919(A007401(n+2))+char[∑[n]]`
-/

namespace A101920.P7806153565063042925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101919 (A007401 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101920.P7806153565063042925

/-!
# A101921: a(2n) = a(n) + 2n - 1, a(2n+1) = 4n.

The programs for A101921, the canonical program `A101921.P8752601720569857390` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101921 has offset 1).

The definition of A101921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101921.P8752601720569857390

`2*(n+1)-2-val(n+1, 2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101921

/-- `2*(n+1)-2-val(n+1, 2)` -/
def P8752601720569857390.Spec : Prop :=
  ∀ n, P8752601720569857390.a n = A101921 (n + 1)

theorem P8752601720569857390.correct : P8752601720569857390.Spec := by
  intro n
  simp only [A101921, Nat.add_sub_cancel]

end A101921

/-! ## A101921.P1067168437908055571

`2*(n+1)-2-A007814(n+1)`
-/

namespace A101921.P1067168437908055571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 2 - A007814 (n + 1)

end

end A101921.P1067168437908055571

namespace A101921

/-- `2*(n+1)-2-A007814(n+1)` -/
def P1067168437908055571.Spec : Prop :=
  ∀ n, P1067168437908055571.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P650917815557748196

`n-val(n+1, 2)+n`
-/

namespace A101921.P650917815557748196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (n : ℤ)

end

end A101921.P650917815557748196

namespace A101921

/-- `n-val(n+1, 2)+n` -/
def P650917815557748196.Spec : Prop :=
  ∀ n, P650917815557748196.a n = A101921 (n + 1)

theorem P650917815557748196.correct : P650917815557748196.Spec := by
  intro n
  simp only [A101921, Nat.add_sub_cancel, A101921.P650917815557748196.a, A101921.P8752601720569857390.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A101921

/-! ## A101921.P10732979142211005437

`xor(n, val(n+1, 2))+n`
-/

namespace A101921.P10732979142211005437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (SequenceMachineLib.valuation (n + 1) 2) + n

end

end A101921.P10732979142211005437

namespace A101921

/-- `xor(n, val(n+1, 2))+n` -/
def P10732979142211005437.Spec : Prop :=
  ∀ n, (P10732979142211005437.a n : ℤ) = A101921 (n + 1)

end A101921

/-! ## A101921.P6625664404448306594

`n-floor(log2(xor(n, n+1)))+n`
-/

namespace A101921.P6625664404448306594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.log 2 (Nat.xor n (n + 1)) : ℤ) + (n : ℤ)

end

end A101921.P6625664404448306594

namespace A101921

/-- `n-floor(log2(xor(n, n+1)))+n` -/
def P6625664404448306594.Spec : Prop :=
  ∀ n, P6625664404448306594.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P11028729507644862012

`and(-(val(n+1, 2)+2), Δ[n²])`
-/

namespace A101921.P11028729507644862012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(SequenceMachineLib.valuation (n + 1) 2 + 2 : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A101921.P11028729507644862012

namespace A101921

/-- `and(-(val(n+1, 2)+2), Δ[n²])` -/
def P11028729507644862012.Spec : Prop :=
  ∀ n, P11028729507644862012.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P16783475643289797290

`and(2*n+1, -(val(n+1, 2)+2))`
-/

namespace A101921.P16783475643289797290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (-(SequenceMachineLib.valuation (n + 1) 2 + 2 : ℤ))

end

end A101921.P16783475643289797290

namespace A101921

/-- `and(2*n+1, -(val(n+1, 2)+2))` -/
def P16783475643289797290.Spec : Prop :=
  ∀ n, P16783475643289797290.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P8920929267967091740

`abs(2*n-val(2*n-(n-1), 2))`
-/

namespace A101921.P8920929267967091740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 2 : ℤ)|

end

end A101921.P8920929267967091740

namespace A101921

/-- `abs(2*n-val(2*n-(n-1), 2))` -/
def P8920929267967091740.Spec : Prop :=
  ∀ n, P8920929267967091740.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P16809610986686059165

`2*n-∑{e}[and(n+1, -(n+1)), #]`
-/

namespace A101921.P16809610986686059165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A101921.P16809610986686059165

namespace A101921

/-- `2*n-∑{e}[and(n+1, -(n+1)), #]` -/
def P16809610986686059165.Spec : Prop :=
  ∀ n, P16809610986686059165.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P17126168924011588750

`2*n-∑{e}[or(n+1, -(n+1)), #]`
-/

namespace A101921.P17126168924011588750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A101921.P17126168924011588750

namespace A101921

/-- `2*n-∑{e}[or(n+1, -(n+1)), #]` -/
def P17126168924011588750.Spec : Prop :=
  ∀ n, P17126168924011588750.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P5417721529351606810

`2*n+1-∑{e}[xor(n, -(n+2)), #]`
-/

namespace A101921.P5417721529351606810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A101921.P5417721529351606810

namespace A101921

/-- `2*n+1-∑{e}[xor(n, -(n+2)), #]` -/
def P5417721529351606810.Spec : Prop :=
  ∀ n, P5417721529351606810.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P15249226081325917816

`∏{e}[xor(n+1, -(n+1)), 2*n+1-#]`
-/

namespace A101921.P15249226081325917816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((2 * n + 1 : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A101921.P15249226081325917816

namespace A101921

/-- `∏{e}[xor(n+1, -(n+1)), 2*n+1-#]` -/
def P15249226081325917816.Spec : Prop :=
  ∀ n, P15249226081325917816.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P9316269580609672587

`Δ[A127944(n)]+n`
-/

namespace A101921.P9316269580609672587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A101921.P9316269580609672587

namespace A101921

/-- `Δ[A127944(n)]+n` -/
def P9316269580609672587.Spec : Prop :=
  ∀ n, P9316269580609672587.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P1885966950144949495

`Δ[n²-A005187(n)]`
-/

namespace A101921.P1885966950144949495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101921.P1885966950144949495

namespace A101921

/-- `Δ[n²-A005187(n)]` -/
def P1885966950144949495.Spec : Prop :=
  ∀ n, P1885966950144949495.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P5225073356528695217

`2*n-Δ[A011371(n)]`
-/

namespace A101921.P5225073356528695217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (f1 (n + 1) - f1 n)

end

end A101921.P5225073356528695217

namespace A101921

/-- `2*n-Δ[A011371(n)]` -/
def P5225073356528695217.Spec : Prop :=
  ∀ n, P5225073356528695217.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P4999284134794977264

`2*(n+1)-A085058(n)`
-/

namespace A101921.P4999284134794977264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A085058 n

end

end A101921.P4999284134794977264

namespace A101921

/-- `2*(n+1)-A085058(n)` -/
def P4999284134794977264.Spec : Prop :=
  ∀ n, P4999284134794977264.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P16869869066928996437

`Δ[n²]-A001511(n+1)`
-/

namespace A101921.P16869869066928996437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A001511 (n + 1)

end

end A101921.P16869869066928996437

namespace A101921

/-- `Δ[n²]-A001511(n+1)` -/
def P16869869066928996437.Spec : Prop :=
  ∀ n, P16869869066928996437.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P4047454847230825802

`Δ[(n+1)²-A120738(n)]`
-/

namespace A101921.P4047454847230825802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A120738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101921.P4047454847230825802

namespace A101921

/-- `Δ[(n+1)²-A120738(n)]` -/
def P4047454847230825802.Spec : Prop :=
  ∀ n, P4047454847230825802.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P16069220416518061912

`2*n+3-A090739(n+1)`
-/

namespace A101921.P16069220416518061912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A090739 (n + 1)

end

end A101921.P16069220416518061912

namespace A101921

/-- `2*n+3-A090739(n+1)` -/
def P16069220416518061912.Spec : Prop :=
  ∀ n, P16069220416518061912.a n = A101921 (n + 1)

end A101921

/-! ## A101921.P7186538544341957710

`2*n-A001222(or(n, n+1)-n)`
-/

namespace A101921.P7186538544341957710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A001222 (Nat.lor n (n + 1) - n)

end

end A101921.P7186538544341957710

namespace A101921

/-- `2*n-A001222(or(n, n+1)-n)` -/
def P7186538544341957710.Spec : Prop :=
  ∀ n, P7186538544341957710.a n = A101921 (n + 1)

end A101921

/-!
# A101922: Numerators of expansion of e.g.f. 2^(-1/2) * arcsinh(cos(x)), even powers only.

The programs for A101922, there is no canonical definition to state claims against.
-/

/-! ## A101922.P14513367073385274953

`-A263246(n+1)`
-/

namespace A101922.P14513367073385274953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A263246 (n + 1)

end

end A101922.P14513367073385274953

/-! ## A101922.P3252308047253071487

`char[A067431(n)]-A263246(n+1)`
-/

namespace A101922.P3252308047253071487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067431 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A263246 (n + 1)

end

end A101922.P3252308047253071487

/-! ## A101922.P1845119958625111778

`A339165(A084938(n))-A263246(n+1)`
-/

namespace A101922.P1845119958625111778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339165 (A084938 n).toNat - A263246 (n + 1)

end

end A101922.P1845119958625111778

/-! ## A101922.P5710593292652254537

`A339165(A339165(n))-A263246(n+1)`
-/

namespace A101922.P5710593292652254537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339165 (A339165 n).toNat - A263246 (n + 1)

end

end A101922.P5710593292652254537

/-! ## A101922.P12173867041176293194

`A008683(A001248(n+1))-A263246(n+1)`
-/

namespace A101922.P12173867041176293194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001248 (n + 1)).toNat - A263246 (n + 1)

end

end A101922.P12173867041176293194

/-!
# A101923: Expansion of 2 * arccot(cos(x)).

The programs for A101923, there is no canonical definition to state claims against.
-/

/-! ## A101923.P11400850475561191854

`A122111(n+1)-A117078(A360933(n))`
-/

namespace A101923.P11400850475561191854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) - A117078 (A360933 n).toNat

end

end A101923.P11400850475561191854

/-!
# A101925: a(n) = A005187(n) + 1.

The programs for A101925, the canonical program `A101925.P9724492527127448858` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101925 has offset 0).

The definition of A101925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(n)+1` (program `A101925.P9724492527127448858`, by `A101925.P9724492527127448858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101925.P9724492527127448858

`A005187(n)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101925

/-- `A005187(n)+1` -/
def P9724492527127448858.Spec : Prop :=
  ∀ n, P9724492527127448858.a n = A101925 n

theorem P9724492527127448858.correct : P9724492527127448858.Spec := by
  intro n
  simp only [A101925]

end A101925

/-! ## A101925.P16878863213951635440

`∑[∏{e}[xor(n, -n), #]]`
-/

namespace A101925.P16878863213951635440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101925.P16878863213951635440

namespace A101925

/-- `∑[∏{e}[xor(n, -n), #]]` -/
def P16878863213951635440.Spec : Prop :=
  ∀ n, (P16878863213951635440.a n : ℤ) = A101925 n

end A101925

/-! ## A101925.P10431344149448313518

`a(floor(n/2))+n` with `a(0)=1`
-/

namespace A101925.P10431344149448313518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + n

end

end A101925.P10431344149448313518

namespace A101925

/-- `a(floor(n/2))+n` -/
def P10431344149448313518.Spec : Prop :=
  ∀ n, (P10431344149448313518.a n : ℤ) = A101925 n

end A101925

/-! ## A101925.P15099794485424705719

`record[val(n, 2)-a(n-1)]` with `a(0)=1`
-/

namespace A101925.P15099794485424705719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101925.P15099794485424705719

namespace A101925

/-- `record[val(n, 2)-a(n-1)]` -/
def P15099794485424705719.Spec : Prop :=
  ∀ n, P15099794485424705719.a n = A101925 n

end A101925

/-! ## A101925.P4589820440472054035

`n-floor(-a(floor(n/2)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101925.P4589820440472054035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (-a ⌊(n : ℚ) / 2⌋.toNat)

end

end A101925.P4589820440472054035

namespace A101925

/-- `n-floor(-a(floor(n/2)))` -/
def P4589820440472054035.Spec : Prop :=
  ∀ n, P4589820440472054035.a n = A101925 n

end A101925

/-! ## A101925.P767432638698154577

`a(n-1)+val(n, 2)+1` with `a(0)=1`
-/

namespace A101925.P767432638698154577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 2 + 1

end

end A101925.P767432638698154577

namespace A101925

/-- `a(n-1)+val(n, 2)+1` -/
def P767432638698154577.Spec : Prop :=
  ∀ n, (P767432638698154577.a n : ℤ) = A101925 n

end A101925

/-! ## A101925.P11108655581970052671

`∑[val(abs(1-2*n)+1, 2)]`
-/

namespace A101925.P11108655581970052671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (2 * n : ℤ)| + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101925.P11108655581970052671

namespace A101925

/-- `∑[val(abs(1-2*n)+1, 2)]` -/
def P11108655581970052671.Spec : Prop :=
  ∀ n, (P11108655581970052671.a n : ℤ) = A101925 n

end A101925

/-! ## A101925.P17535437953487483521

`∑[a(∑[n]%n)+1]+1` with `a(0)=0`
-/

namespace A101925.P17535437953487483521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101925.P17535437953487483521

namespace A101925

/-- `∑[a(∑[n]%n)+1]+1` -/
def P17535437953487483521.Spec : Prop :=
  ∀ n, (P17535437953487483521.a n : ℤ) = A101925 n

end A101925

/-! ## A101925.P15310964750177441613

`2*n-(n-a(floor(n/2)))` with `a(0)=1`
-/

namespace A101925.P15310964750177441613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A101925.P15310964750177441613

namespace A101925

/-- `2*n-(n-a(floor(n/2)))` -/
def P15310964750177441613.Spec : Prop :=
  ∀ n, P15310964750177441613.a n = A101925 n

end A101925

/-! ## A101925.P11900727708601491020

`n-(n%a(floor(n/2))-n)` with `a(0)=1`
-/

namespace A101925.P11900727708601491020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (Int.tmod (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat) - (n : ℤ))

end

end A101925.P11900727708601491020

namespace A101925

/-- `n-(n%a(floor(n/2))-n)` -/
def P11900727708601491020.Spec : Prop :=
  ∀ n, P11900727708601491020.a n = A101925 n

end A101925

/-! ## A101925.P7490984774981224149

`1-floor(1-a(floor(n/2))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101925.P7490984774981224149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (1 - a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ))

end

end A101925.P7490984774981224149

namespace A101925

/-- `1-floor(1-a(floor(n/2))-n)` -/
def P7490984774981224149.Spec : Prop :=
  ∀ n, P7490984774981224149.a n = A101925 n

end A101925

/-! ## A101925.P3916755552553884961

`∑[sqrt(A123726(n))]`
-/

namespace A101925.P3916755552553884961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123726 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101925.P3916755552553884961

namespace A101925

/-- `∑[sqrt(A123726(n))]` -/
def P3916755552553884961.Spec : Prop :=
  ∀ n, P3916755552553884961.a n = (A101925 n : ℝ)

end A101925

/-! ## A101925.P9928083744517812558

`(A178207(n)+1)/2`
-/

namespace A101925.P9928083744517812558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178207 n + 1 : ℚ) / 2

end

end A101925.P9928083744517812558

namespace A101925

/-- `(A178207(n)+1)/2` -/
def P9928083744517812558.Spec : Prop :=
  ∀ n, P9928083744517812558.a n = (A101925 n : ℚ)

end A101925

/-! ## A101925.P1321200421762177342

`A011371(n)+1+n`
-/

namespace A101925.P1321200421762177342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + 1 + (n : ℤ)

end

end A101925.P1321200421762177342

namespace A101925

/-- `A011371(n)+1+n` -/
def P1321200421762177342.Spec : Prop :=
  ∀ n, P1321200421762177342.a n = A101925 n

end A101925

/-! ## A101925.P535752619280346551

`A004134(n)+1-n`
-/

namespace A101925.P535752619280346551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + (1 - (n : ℤ))

end

end A101925.P535752619280346551

namespace A101925

/-- `A004134(n)+1-n` -/
def P535752619280346551.Spec : Prop :=
  ∀ n, P535752619280346551.a n = A101925 n

end A101925

/-! ## A101925.P15722155218441625089

`∑{d}[n, A297111(#)]+1`
-/

namespace A101925.P15722155218441625089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297111 d + 1

end

end A101925.P15722155218441625089

namespace A101925

/-- `∑{d}[n, A297111(#)]+1` -/
def P15722155218441625089.Spec : Prop :=
  ∀ n, P15722155218441625089.a n = A101925 n

end A101925

/-! ## A101925.P7191982457835533988

`∑[abs(A123725(n))]-n`
-/

namespace A101925.P7191982457835533988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A101925.P7191982457835533988

namespace A101925

/-- `∑[abs(A123725(n))]-n` -/
def P7191982457835533988.Spec : Prop :=
  ∀ n, P7191982457835533988.a n = A101925 n

end A101925

/-! ## A101925.P13559630892577223793

`Δ[n²]-A000120(n)`
-/

namespace A101925.P13559630892577223793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000120 n

end

end A101925.P13559630892577223793

namespace A101925

/-- `Δ[n²]-A000120(n)` -/
def P13559630892577223793.Spec : Prop :=
  ∀ n, P13559630892577223793.a n = A101925 n

end A101925

/-!
# A101926: a(n) = 2^A101925(n).

The programs for A101926, the canonical program `A101926.P10081112457634097054` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101926 has offset 0).

The definition of A101926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101926.P10081112457634097054

`2^A101925(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101926

/-- `2^A101925(n)` -/
def P10081112457634097054.Spec : Prop :=
  ∀ n, P10081112457634097054.a n = (A101926 n : ℚ)

end A101926

/-! ## A101926.P34108680744769718

`∏[2*gcd(n, 2^n)]`
-/

namespace A101926.P34108680744769718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101926.P34108680744769718

namespace A101926

/-- `∏[2*gcd(n, 2^n)]` -/
def P34108680744769718.Spec : Prop :=
  ∀ n, (P34108680744769718.a n : ℤ) = A101926 n

end A101926

/-! ## A101926.P866237124699913133

`∏[xor(n, abs(1-n))+1]`
-/

namespace A101926.P866237124699913133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101926.P866237124699913133

namespace A101926

/-- `∏[xor(n, abs(1-n))+1]` -/
def P866237124699913133.Spec : Prop :=
  ∀ n, P866237124699913133.a n = A101926 n

end A101926

/-! ## A101926.P4914202731666179938

`2^∑[∏{e}[xor(n, -n), #]]`
-/

namespace A101926.P4914202731666179938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101926.P4914202731666179938

namespace A101926

/-- `2^∑[∏{e}[xor(n, -n), #]]` -/
def P4914202731666179938.Spec : Prop :=
  ∀ n, (P4914202731666179938.a n : ℤ) = A101926 n

end A101926

/-! ## A101926.P5292201575832141528

`2^n*a(floor(n/2))` with `a(0)=2`
-/

namespace A101926.P5292201575832141528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A101926.P5292201575832141528

namespace A101926

/-- `2^n*a(floor(n/2))` -/
def P5292201575832141528.Spec : Prop :=
  ∀ n, (P5292201575832141528.a n : ℤ) = A101926 n

end A101926

/-! ## A101926.P11583568568503786021

`-(xor(n, -n)*a(n-1))` with `a(0)=2`
-/

namespace A101926.P11583568568503786021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -(Int.xor (n : ℤ) (-(n : ℤ)) * a (n - 1))

end

end A101926.P11583568568503786021

namespace A101926

/-- `-(xor(n, -n)*a(n-1))` -/
def P11583568568503786021.Spec : Prop :=
  ∀ n, P11583568568503786021.a n = A101926 n

end A101926

/-! ## A101926.P7433752189538200667

`ceil(2^n*a(ceil(abs((1-n)/2))))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A101926.P7433752189538200667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ n * a ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat

end

end A101926.P7433752189538200667

namespace A101926

/-- `ceil(2^n*a(ceil(abs((1-n)/2))))` -/
def P7433752189538200667.Spec : Prop :=
  ∀ n, (P7433752189538200667.a n : ℤ) = A101926 n

end A101926

/-! ## A101926.P5779635778938608148

`-(or(2*n, -(2*n))*a(n-1))` with `a(0)=2`
-/

namespace A101926.P5779635778938608148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -(Int.lor (2 * n : ℤ) (-(2 * n : ℤ)) * a (n - 1))

end

end A101926.P5779635778938608148

namespace A101926

/-- `-(or(2*n, -(2*n))*a(n-1))` -/
def P5779635778938608148.Spec : Prop :=
  ∀ n, P5779635778938608148.a n = A101926 n

end A101926

/-! ## A101926.P795302209006998531

`floor(and(1-2*n, 2*n)*a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A101926.P795302209006998531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ) * a (n - 1)

end

end A101926.P795302209006998531

namespace A101926

/-- `floor(and(1-2*n, 2*n)*a(n-1))` -/
def P795302209006998531.Spec : Prop :=
  ∀ n, P795302209006998531.a n = A101926 n

end A101926

/-! ## A101926.P8442839994983995563

`2*A046161(n)`
-/

namespace A101926.P8442839994983995563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046161 n

end

end A101926.P8442839994983995563

namespace A101926

/-- `2*A046161(n)` -/
def P8442839994983995563.Spec : Prop :=
  ∀ n, P8442839994983995563.a n = A101926 n

end A101926

/-! ## A101926.P9437873233466983406

`A036069(Δ[n²])`
-/

namespace A101926.P9437873233466983406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101926.P9437873233466983406

namespace A101926

/-- `A036069(Δ[n²])` -/
def P9437873233466983406.Spec : Prop :=
  ∀ n, P9437873233466983406.a n = A101926 n

end A101926

/-! ## A101926.P10851435078313531136

`A086117(Δ[n²])`
-/

namespace A101926.P10851435078313531136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101926.P10851435078313531136

namespace A101926

/-- `A086117(Δ[n²])` -/
def P10851435078313531136.Spec : Prop :=
  ∀ n, P10851435078313531136.a n = A101926 n

end A101926

/-! ## A101926.P11607966212017904679

`record[2*A004732(n)]`
-/

namespace A101926.P11607966212017904679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101926.P11607966212017904679

namespace A101926

/-- `record[2*A004732(n)]` -/
def P11607966212017904679.Spec : Prop :=
  ∀ n, P11607966212017904679.a n = A101926 n

end A101926

/-! ## A101926.P2989532615540454916

`2*A004730(2*n)`
-/

namespace A101926.P2989532615540454916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004730 (2 * n)

end

end A101926.P2989532615540454916

namespace A101926

/-- `2*A004730(2*n)` -/
def P2989532615540454916.Spec : Prop :=
  ∀ n, P2989532615540454916.a n = A101926 n

end A101926

/-! ## A101926.P12836816034588392462

`2*A004732(2*n)`
-/

namespace A101926.P12836816034588392462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004732 (2 * n)

end

end A101926.P12836816034588392462

namespace A101926

/-- `2*A004732(2*n)` -/
def P12836816034588392462.Spec : Prop :=
  ∀ n, P12836816034588392462.a n = A101926 n

end A101926

/-! ## A101926.P8302204796134660608

`2*A060818(2*n)`
-/

namespace A101926.P8302204796134660608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060818 (2 * n)

end

end A101926.P8302204796134660608

namespace A101926

/-- `2*A060818(2*n)` -/
def P8302204796134660608.Spec : Prop :=
  ∀ n, P8302204796134660608.a n = A101926 n

end A101926

/-! ## A101926.P2227684063669128985

`2*A380909(2*n)`
-/

namespace A101926.P2227684063669128985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380909 (2 * n)

end

end A101926.P2227684063669128985

namespace A101926

/-- `2*A380909(2*n)` -/
def P2227684063669128985.Spec : Prop :=
  ∀ n, P2227684063669128985.a n = A101926 n

end A101926

/-! ## A101926.P13157734704620113953

`2*A397606(2*n)`
-/

namespace A101926.P13157734704620113953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A397606 (2 * n)

end

end A101926.P13157734704620113953

namespace A101926

/-- `2*A397606(2*n)` -/
def P13157734704620113953.Spec : Prop :=
  ∀ n, P13157734704620113953.a n = A101926 n

end A101926

/-! ## A101926.P10285695733521234585

`2^(A005187(n)+1)`
-/

namespace A101926.P10285695733521234585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 n + 1 : ℤ)

end

end A101926.P10285695733521234585

namespace A101926

/-- `2^(A005187(n)+1)` -/
def P10285695733521234585.Spec : Prop :=
  ∀ n, P10285695733521234585.a n = (A101926 n : ℚ)

end A101926

/-! ## A101926.P6889793914463642374

`2*A004731(Δ[n²])`
-/

namespace A101926.P6889793914463642374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101926.P6889793914463642374

namespace A101926

/-- `2*A004731(Δ[n²])` -/
def P6889793914463642374.Spec : Prop :=
  ∀ n, P6889793914463642374.a n = A101926 n

end A101926

/-!
# A101927: E.g.f. of sin(arcsinh(x)) (odd powers only).

The programs for A101927, there is no canonical definition to state claims against.
-/

/-! ## A101927.P13500097443463407494

`-∏[-(comp[2*(n+1)]²+1)]`
-/

namespace A101927.P13500097443463407494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A101927.P13500097443463407494

/-! ## A101927.P15502564091481300001

`∏[A111284(n+1)-(2*n)²]`
-/

namespace A101927.P15502564091481300001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101927.P15502564091481300001

/-! ## A101927.P6669686902812411922

`2*(2-A004767(∑[n]-n))*a(n-1)` with `a(0)=1`
-/

namespace A101927.P6669686902812411922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - A004767 (∑ j ∈ Finset.range (n + 1), f1 j - n)) * a (n - 1)

end

end A101927.P6669686902812411922

/-! ## A101927.P3811027456013815406

`∏[A161718(∑[A004275(n)])]`
-/

namespace A101927.P3811027456013815406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161718 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101927.P3811027456013815406

/-! ## A101927.P5973939775671117081

`A006228(2*n+1)*A033999(n)`
-/

namespace A101927.P5973939775671117081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (2 * n + 1) * A033999 n

end

end A101927.P5973939775671117081

/-!
# A101928: E.g.f. cos(arcsinh(x)) = sin(arccosh(x)) (even powers only).

The programs for A101928, there is no canonical definition to state claims against.
-/

/-! ## A101928.P10739953655624541430

`A006228(2*n)*A033999(n)`
-/

namespace A101928.P10739953655624541430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (2 * n) * A033999 n

end

end A101928.P10739953655624541430

/-! ## A101928.P6803722500206218331

`∏[A178334(n)-A102762(2*n)]`
-/

namespace A101928.P6803722500206218331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n - A102762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101928.P6803722500206218331

/-! ## A101928.P7941925901545131169

`A006228(2*n)*A062157(n+1)`
-/

namespace A101928.P7941925901545131169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (2 * n) * A062157 (n + 1)

end

end A101928.P7941925901545131169

/-! ## A101928.P826364422683249934

`A006228(2*n)*A165326(n+1)`
-/

namespace A101928.P826364422683249934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (2 * n) * A165326 (n + 1)

end

end A101928.P826364422683249934

/-! ## A101928.P8430684417946307683

`A006228(A005843(n))/A033999(n)`
-/

namespace A101928.P8430684417946307683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006228 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A101928.P8430684417946307683

/-!
# A101929: Number of Pythagorean triples with hypotenuse < 10^n.

The programs for A101929, there is no canonical definition to state claims against.
-/

/-! ## A101929.P9036132431252920456

`A101930(n+1)-(n+1)`
-/

namespace A101929.P9036132431252920456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101930 (n + 1) - (n + 1 : ℤ)

end

end A101929.P9036132431252920456

/-! ## A101929.P13445774714366270441

`A101930(A348553(n))-1-n`
-/

namespace A101929.P13445774714366270441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101930 (A348553 n).toNat - 1 - (n : ℤ)

end

end A101929.P13445774714366270441

/-! ## A101929.P9454002066343832576

`A196199((n+1)²)+A101930(n+1)`
-/

namespace A101929.P9454002066343832576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 ((n + 1) ^ 2) + A101930 (n + 1)

end

end A101929.P9454002066343832576

/-! ## A101929.P9248192273118613766

`(A101930(n+1)+A001478(n+1))%A101930(n+1)`
-/

namespace A101929.P9248192273118613766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101930 (n + 1) + A001478 (n + 1)) (A101930 (n + 1))

end

end A101929.P9248192273118613766

/-!
# A101930: Number of Pythagorean triples with hypotenuse <= 10^n.

The programs for A101930, there is no canonical definition to state claims against.
-/

/-! ## A101930.P5399603128733801932

`A101929(n+1)+n+1`
-/

namespace A101930.P5399603128733801932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101929 (n + 1) + (n + 1 : ℤ)

end

end A101930.P5399603128733801932

/-! ## A101930.P10366164404584490811

`A291769(n)+A101929(n+1)`
-/

namespace A101930.P10366164404584490811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n + A101929 (n + 1)

end

end A101930.P10366164404584490811

/-! ## A101930.P15297555080051890977

`A348553(n)+A101929(n+1)`
-/

namespace A101930.P15297555080051890977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n + A101929 (n + 1)

end

end A101930.P15297555080051890977

/-! ## A101930.P5233987937880453470

`A020705(n)-(3-A101929(A348553(n)))`
-/

namespace A101930.P5233987937880453470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - (3 - A101929 (A348553 n).toNat)

end

end A101930.P5233987937880453470

/-! ## A101930.P16991717102362213532

`Δ[A141214(n)]-(3-A101929(A348553(n)))`
-/

namespace A101930.P16991717102362213532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 - A101929 (A348553 n).toNat)

end

end A101930.P16991717102362213532

/-!
# A101932: Numbers n with omega(n) equal to omega(n-1) and omega (n+1).

The programs for A101932, the canonical program `A101932.P9208845352759817678` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101932 has offset 1).

The definition of A101932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101932.P9208845352759817678

`A006073(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101932

/-- `A006073(n+1)+1` -/
def P9208845352759817678.Spec : Prop :=
  ∀ n, P9208845352759817678.a n = A101932 (n + 1)

theorem P9208845352759817678.correct : P9208845352759817678.Spec := by
  intro n
  simp only [A101932, Nat.add_sub_cancel]

end A101932

/-! ## A101932.P1100023863126619263

`A006049(eq[1, Δ[A006049(n+1)]]+2)`
-/

namespace A101932.P1100023863126619263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A101932.P1100023863126619263

namespace A101932

/-- `A006049(eq[1, Δ[A006049(n+1)]]+2)` -/
def P1100023863126619263.Spec : Prop :=
  ∀ n, P1100023863126619263.a n = A101932 (n + 1)

end A101932

/-! ## A101932.P12283507184642392096

`record[A006049(n+2)%(A006049(n+1)+2)]`
-/

namespace A101932.P12283507184642392096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006049 (n + 2)) (A006049 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101932.P12283507184642392096

namespace A101932

/-- `record[A006049(n+2)%(A006049(n+1)+2)]` -/
def P12283507184642392096.Spec : Prop :=
  ∀ n, P12283507184642392096.a n = A101932 (n + 1)

end A101932

/-! ## A101932.P758879093121972013

`∩[A006049(n+1), A088070(n+1)]`
-/

namespace A101932.P758879093121972013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101932.P758879093121972013

namespace A101932

/-- `∩[A006049(n+1), A088070(n+1)]` -/
def P758879093121972013.Spec : Prop :=
  ∀ n, (P758879093121972013.a n : ℤ) = A101932 (n + 1)

end A101932

/-! ## A101932.P6018889438142921629

`∩[A006049(n+1), A063464(n+1)+1]`
-/

namespace A101932.P6018889438142921629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101932.P6018889438142921629

namespace A101932

/-- `∩[A006049(n+1), A063464(n+1)+1]` -/
def P6018889438142921629.Spec : Prop :=
  ∀ n, (P6018889438142921629.a n : ℤ) = A101932 (n + 1)

end A101932

/-! ## A101932.P10308766943713975562

`A020725(A006073(n+1))`
-/

namespace A101932.P10308766943713975562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A006073 (n + 1)).toNat

end

end A101932.P10308766943713975562

namespace A101932

/-- `A020725(A006073(n+1))` -/
def P10308766943713975562.Spec : Prop :=
  ∀ n, P10308766943713975562.a n = A101932 (n + 1)

end A101932

/-! ## A101932.P5769325766855210964

`∩[A023443(A006049(n+1)+2), A006049(n+1)]`
-/

namespace A101932.P5769325766855210964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A006049 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101932.P5769325766855210964

namespace A101932

/-- `∩[A023443(A006049(n+1)+2), A006049(n+1)]` -/
def P5769325766855210964.Spec : Prop :=
  ∀ n, (P5769325766855210964.a n : ℤ) = A101932 (n + 1)

end A101932

/-! ## A101932.P3906372056140600724

`record[gcd(1-A006049(n+2), A006049(n+1))]-A008836(A002144(n+1))`
-/

namespace A101932.P3906372056140600724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A006049 (n + 2)) (A006049 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A008836 (A002144 (n + 1)).toNat

end

end A101932.P3906372056140600724

namespace A101932

/-- `record[gcd(1-A006049(n+2), A006049(n+1))]-A008836(A002144(n+1))` -/
def P3906372056140600724.Spec : Prop :=
  ∀ n, P3906372056140600724.a n = A101932 (n + 1)

end A101932

/-!
# A101933: Concatenate the first n positive integers written in binary (with each integer written so the most significant 1 is on the left and the concatenated string is from left to right, A030302). a(n) is the number of times n written in binary appears disjointedly in the concatenated string.

The programs for A101933, there is no canonical definition to state claims against.
-/

/-! ## A101933.P13275905307860225035

`A117127(n+1)-A285963(A010029(n+1))`
-/

namespace A101933.P13275905307860225035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117127 (n + 1) - A285963 (A010029 (n + 1)).toNat

end

end A101933.P13275905307860225035

/-! ## A101933.P13797952974829543669

`A187752(n+1)%A187750(n+1)+1-A054908(A054908(n))`
-/

namespace A101933.P13797952974829543669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187752 (n + 1)) (A187750 (n + 1)) + 1 - A054908 (A054908 n).toNat

end

end A101933.P13797952974829543669

/-!
# A101934: Numbers n with omega(n) smaller than omega(n-1) and omega(n+1).

The programs for A101934, the canonical program `A101934.P8442723091966144168` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101934 has offset 1).

The definition of A101934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101934.P8442723091966144168

`∩[A294277(n+1), A294278(n+1)+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A101934

/-- `∩[A294277(n+1), A294278(n+1)+1]` -/
def P8442723091966144168.Spec : Prop :=
  ∀ n, (P8442723091966144168.a n : ℤ) = A101934 (n + 1)

theorem P8442723091966144168.correct : P8442723091966144168.Spec := by
  intro n
  simp only [A101934, Nat.add_sub_cancel]

end A101934

/-! ## A101934.P15355176675886836770

`∩[A294277(n+1), A065475(A294278(n+1))]`
-/

namespace A101934.P15355176675886836770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A294278 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101934.P15355176675886836770

namespace A101934

/-- `∩[A294277(n+1), A065475(A294278(n+1))]` -/
def P15355176675886836770.Spec : Prop :=
  ∀ n, (P15355176675886836770.a n : ℤ) = A101934 (n + 1)

end A101934

/-! ## A101934.P10076903774536455499

`∩[A226039(n+1), A373673(n+1)]`
-/

namespace A101934.P10076903774536455499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101934.P10076903774536455499

namespace A101934

/-- `∩[A226039(n+1), A373673(n+1)]` -/
def P10076903774536455499.Spec : Prop :=
  ∀ n, (P10076903774536455499.a n : ℤ) = A101934 (n + 1)

end A101934

/-! ## A101934.P7818265394397087101

`record[A373675(n+3)%A373677(2*(n+2))]`
-/

namespace A101934.P7818265394397087101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373675 (n + 3)) (A373677 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101934.P7818265394397087101

namespace A101934

/-- `record[A373675(n+3)%A373677(2*(n+2))]` -/
def P7818265394397087101.Spec : Prop :=
  ∀ n, P7818265394397087101.a n = A101934 (n + 1)

end A101934

/-!
# A101936: Numbers n with omega(n) = omega of 3 nearest larger and 3 nearest smaller neighbors.

The programs for A101936, the canonical program `A101936.P12055823515065416503` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101936 has offset 1).

The definition of A101936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101936.P12055823515065416503

`A045935(n+1)+3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A101936

/-- `A045935(n+1)+3` -/
def P12055823515065416503.Spec : Prop :=
  ∀ n, P12055823515065416503.a n = A101936 (n + 1)

theorem P12055823515065416503.correct : P12055823515065416503.Spec := by
  intro n
  simp only [A101936, Nat.add_sub_cancel]

end A101936

/-! ## A101936.P4330004510758864534

`∩[A045934(n+1)-1, A045934(n+1)]+3`
-/

namespace A101936.P4330004510758864534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 3

end

end A101936.P4330004510758864534

namespace A101936

/-- `∩[A045934(n+1)-1, A045934(n+1)]+3` -/
def P4330004510758864534.Spec : Prop :=
  ∀ n, (P4330004510758864534.a n : ℤ) = A101936 (n + 1)

end A101936

/-! ## A101936.P8752123873972461548

`∩[A045933(n+1)-2, A045933(n+1)]+3`
-/

namespace A101936.P8752123873972461548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 3

end

end A101936.P8752123873972461548

namespace A101936

/-- `∩[A045933(n+1)-2, A045933(n+1)]+3` -/
def P8752123873972461548.Spec : Prop :=
  ∀ n, (P8752123873972461548.a n : ℤ) = A101936 (n + 1)

end A101936

/-! ## A101936.P8777381673405570616

`A045934(eq[1, A045934(n+2)-A045934(n+1)]+1)+3`
-/

namespace A101936.P8777381673405570616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 2) - A045934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 3

end

end A101936.P8777381673405570616

namespace A101936

/-- `A045934(eq[1, A045934(n+2)-A045934(n+1)]+1)+3` -/
def P8777381673405570616.Spec : Prop :=
  ∀ n, P8777381673405570616.a n = A101936 (n + 1)

end A101936

/-! ## A101936.P12588291485048143091

`∩[A045932(n+1)+3, A045932(n+1)]`
-/

namespace A101936.P12588291485048143091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101936.P12588291485048143091

namespace A101936

/-- `∩[A045932(n+1)+3, A045932(n+1)]` -/
def P12588291485048143091.Spec : Prop :=
  ∀ n, (P12588291485048143091.a n : ℤ) = A101936 (n + 1)

end A101936

/-!
# A101937: Numbers n with omega(n) > omega of 2 nearest larger and 2 nearest smaller neighbors.

The programs for A101937, there is no canonical definition to state claims against.
-/

/-! ## A101937.P643308395909626

`A214195(n+1)+A198954(A022127(n))`
-/

namespace A101937.P643308395909626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1) + A198954 (A022127 n).toNat

end

end A101937.P643308395909626

/-! ## A101937.P15180615051593920001

`A019430(A000079(n))*A214195(n+1)`
-/

namespace A101937.P15180615051593920001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A000079 n).toNat * A214195 (n + 1)

end

end A101937.P15180615051593920001

/-! ## A101937.P6034607210915564498

`lt[A158923(A342766(n+1)), A062319(n)]`
-/

namespace A101937.P6034607210915564498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158923 (A342766 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101937.P6034607210915564498

/-! ## A101937.P4510499598752959887

`lt[A073359(A002113(n+3)), A062319(n)]`
-/

namespace A101937.P4510499598752959887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073359 (A002113 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101937.P4510499598752959887

/-! ## A101937.P7790935162878935570

`A214195(n+1)+A198954(A007670(n+1))`
-/

namespace A101937.P7790935162878935570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1) + A198954 (A007670 (n + 1)).toNat

end

end A101937.P7790935162878935570

/-!
# A101939: Numbers n with omega(n) > omega of 3 nearest larger and 3 nearest smaller neighbors.

The programs for A101939, there is no canonical definition to state claims against.
-/

/-! ## A101939.P10467650120632588106

`∩[A101937(n+1), A238368(n+1)]`
-/

namespace A101939.P10467650120632588106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101939.P10467650120632588106

/-! ## A101939.P10995596988076302840

`lt[A130946(A332815(n)), A353276(n+1)]+1`
-/

namespace A101939.P10995596988076302840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (A332815 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A101939.P10995596988076302840

/-!
# A101940: Numbers n with omega(n) < omega of 3 nearest larger and 3 nearest smaller neighbors.

The programs for A101940, there is no canonical definition to state claims against.
-/

/-! ## A101940.P6058565426782648792

`∩[A101938(n+1), A134932(n+1)]`
-/

namespace A101940.P6058565426782648792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101940.P6058565426782648792

/-! ## A101940.P1732080769735193535

`∩[A101938(n+1), A134933(n+1)]`
-/

namespace A101940.P1732080769735193535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101940.P1732080769735193535

/-!
# A101942: Write n in base 4 as n = b_0 + b_1*4 + b_2*4^2 + b_3*4^3 + ...; then a(n) = Product_{i >= 0} prime(i+1)^b_i.

The programs for A101942, there is no canonical definition to state claims against.
-/

/-! ## A101942.P17377626353223635476

`A178483(n+33)`
-/

namespace A101942.P17377626353223635476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178483 (n + 33)

end

end A101942.P17377626353223635476

/-! ## A101942.P7604508084887757961

`A054842(A007090(n))`
-/

namespace A101942.P7604508084887757961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A007090 n).toNat

end

end A101942.P7604508084887757961

/-! ## A101942.P12432640463168877721

`A054842(record[A064770(n)])`
-/

namespace A101942.P12432640463168877721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101942.P12432640463168877721

/-! ## A101942.P7466394657760039314

`A054842(eq[0, A102673(n)])`
-/

namespace A101942.P7466394657760039314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101942.P7466394657760039314

/-! ## A101942.P8189041522528472004

`A101943(A020654(n+1))`
-/

namespace A101942.P8189041522528472004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101943 (A020654 (n + 1)).toNat

end

end A101942.P8189041522528472004

/-!
# A101943: Write n in base 5 as n = b_0 + b_1*5 + b_2*5^2 + b_3*5^3 + ...; then a(n) = Product_{i >= 0} prime(i+1)^b_i.

The programs for A101943, there is no canonical definition to state claims against.
-/

/-! ## A101943.P480978504826163656

`A054842(A007091(n))`
-/

namespace A101943.P480978504826163656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A007091 n).toNat

end

end A101943.P480978504826163656

/-! ## A101943.P15647070855090245859

`A054842(record[A106747(n)])`
-/

namespace A101943.P15647070855090245859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101943.P15647070855090245859

/-! ## A101943.P10444702462621029921

`A054842(lt[A054055(n), 5])`
-/

namespace A101943.P10444702462621029921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A101943.P10444702462621029921

/-! ## A101943.P4918522862053400089

`A054842(lt[A086066(n), 28])`
-/

namespace A101943.P4918522862053400089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A101943.P4918522862053400089

/-! ## A101943.P18284640350750436730

`A054842(eq[n, A167831(n)])`
-/

namespace A101943.P18284640350750436730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101943.P18284640350750436730

/-!
# A101945: a(n) = 6*2^n - n - 5.

The programs for A101945, the canonical program `A101945.P3144833052109670483` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101945 has offset 0).

The definition of A101945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-n-5` (program `A101945.P3144833052109670483`, by `A101945.P3144833052109670483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101945.P3144833052109670483

`6*2^n-n-5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101945

/-- `6*2^n-n-5` -/
def P3144833052109670483.Spec : Prop :=
  ∀ n, P3144833052109670483.a n = A101945 n

theorem P3144833052109670483.correct : P3144833052109670483.Spec := by
  intro n
  simp only [A101945]

end A101945

/-! ## A101945.P15582173045464965737

`∑[ogf((1+2x-2x^2)/(1-3x+2x^2))]`
-/

namespace A101945.P15582173045464965737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P15582173045464965737

namespace A101945

/-- `∑[ogf((1+2x-2x^2)/(1-3x+2x^2))]` -/
def P15582173045464965737.Spec : Prop :=
  ∀ n, P15582173045464965737.a n = A101945 n

end A101945

/-! ## A101945.P8663749611264102778

`ogf((1+2x-2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A101945.P8663749611264102778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -4, 5, -2] n

end

end A101945.P8663749611264102778

namespace A101945

/-- `ogf((1+2x-2x^2)/(1-4x+5x^2-2x^3))` -/
def P8663749611264102778.Spec : Prop :=
  ∀ n, P8663749611264102778.a n = A101945 n

end A101945

/-! ## A101945.P2750628253496637153

`∑[or(1, lcm(3, 2^n))-2]`
-/

namespace A101945.P2750628253496637153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.lcm 3 (2 ^ n)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P2750628253496637153

namespace A101945

/-- `∑[or(1, lcm(3, 2^n))-2]` -/
def P2750628253496637153.Spec : Prop :=
  ∀ n, P2750628253496637153.a n = A101945 n

end A101945

/-! ## A101945.P8432790423551122220

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=5`
-/

namespace A101945.P8432790423551122220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P8432790423551122220

namespace A101945

/-- `∑[2*a(n-1)+1]` -/
def P8432790423551122220.Spec : Prop :=
  ∀ n, (P8432790423551122220.a n : ℤ) = A101945 n

end A101945

/-! ## A101945.P17515147602268957527

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A101945.P17515147602268957527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P17515147602268957527

namespace A101945

/-- `∑[∑[2*a(n-1)]]` -/
def P17515147602268957527.Spec : Prop :=
  ∀ n, (P17515147602268957527.a n : ℤ) = A101945 n

end A101945

/-! ## A101945.P7256619922280651846

`floor(2*a(n-1)+3+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101945.P7256619922280651846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 3 + n

end

end A101945.P7256619922280651846

namespace A101945

/-- `floor(2*a(n-1)+3+n)` -/
def P7256619922280651846.Spec : Prop :=
  ∀ n, (P7256619922280651846.a n : ℤ) = A101945 n

theorem P7256619922280651846.correct : P7256619922280651846.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101945, Nat.add_sub_cancel, A101945.P7256619922280651846.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101945, Nat.add_sub_cancel, A101945.P7256619922280651846.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101945

/-! ## A101945.P3175078147769531942

`record[2*a(n-1)+n]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A101945.P3175078147769531942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  2 * f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101945.P3175078147769531942

namespace A101945

/-- `record[2*a(n-1)+n]` -/
def P3175078147769531942.Spec : Prop :=
  ∀ n, (P3175078147769531942.a n : ℤ) = A101945 n

end A101945

/-! ## A101945.P3369911333934046883

`2*(a(n-1)+(n+3)/2)` with `a(0)=1`
-/

namespace A101945.P3369911333934046883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (n + 3 : ℚ) / 2)

end

end A101945.P3369911333934046883

namespace A101945

/-- `2*(a(n-1)+(n+3)/2)` -/
def P3369911333934046883.Spec : Prop :=
  ∀ n, P3369911333934046883.a n = (A101945 n : ℚ)

theorem P3369911333934046883.correct : P3369911333934046883.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101945, Nat.add_sub_cancel, A101945.P3369911333934046883.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101945, Nat.add_sub_cancel, A101945.P3369911333934046883.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101945

/-! ## A101945.P2823588111389348349

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=5`
-/

namespace A101945.P2823588111389348349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P2823588111389348349

namespace A101945

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P2823588111389348349.Spec : Prop :=
  ∀ n, (P2823588111389348349.a n : ℤ) = A101945 n

end A101945

/-! ## A101945.P7420252595959727538

`2*(2-((1-n)/2-a(n-1)))` with `a(0)=1`
-/

namespace A101945.P7420252595959727538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - ((1 - (n : ℤ) : ℚ) / 2 - a (n - 1)))

end

end A101945.P7420252595959727538

namespace A101945

/-- `2*(2-((1-n)/2-a(n-1)))` -/
def P7420252595959727538.Spec : Prop :=
  ∀ n, P7420252595959727538.a n = (A101945 n : ℚ)

theorem P7420252595959727538.correct : P7420252595959727538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101945, Nat.add_sub_cancel, A101945.P7420252595959727538.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101945, Nat.add_sub_cancel, A101945.P7420252595959727538.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101945

/-! ## A101945.P13905611581377637932

`floor(a(n-1)+3+a(n-1)+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101945.P13905611581377637932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 + (a (n - 1) + n)

end

end A101945.P13905611581377637932

namespace A101945

/-- `floor(a(n-1)+3+a(n-1)+n)` -/
def P13905611581377637932.Spec : Prop :=
  ∀ n, (P13905611581377637932.a n : ℤ) = A101945 n

theorem P13905611581377637932.correct : P13905611581377637932.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101945, Nat.add_sub_cancel, A101945.P13905611581377637932.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101945, Nat.add_sub_cancel, A101945.P13905611581377637932.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101945

/-! ## A101945.P1181414133100323724

`floor(n-∑[a(n-1)-(2-a(n-1))])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A101945.P1181414133100323724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P1181414133100323724

namespace A101945

/-- `floor(n-∑[a(n-1)-(2-a(n-1))])` -/
def P1181414133100323724.Spec : Prop :=
  ∀ n, P1181414133100323724.a n = A101945 n

end A101945

/-! ## A101945.P16993344912669875783

`floor(3*a(n-1)-(a(n-1)-3-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101945.P16993344912669875783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 3 - (n : ℤ))

end

end A101945.P16993344912669875783

namespace A101945

/-- `floor(3*a(n-1)-(a(n-1)-3-n))` -/
def P16993344912669875783.Spec : Prop :=
  ∀ n, P16993344912669875783.a n = A101945 n

theorem P16993344912669875783.correct : P16993344912669875783.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101945, Nat.add_sub_cancel, A101945.P16993344912669875783.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101945, Nat.add_sub_cancel, A101945.P16993344912669875783.a, A101945.P3144833052109670483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101945

/-! ## A101945.P10130339925424969662

`∑[A052940(n)]`
-/

namespace A101945.P10130339925424969662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P10130339925424969662

namespace A101945

/-- `∑[A052940(n)]` -/
def P10130339925424969662.Spec : Prop :=
  ∀ n, P10130339925424969662.a n = A101945 n

end A101945

/-! ## A101945.P8680586740496290297

`∑[∑[A058764(n)]-1]`
-/

namespace A101945.P8680586740496290297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P8680586740496290297

namespace A101945

/-- `∑[∑[A058764(n)]-1]` -/
def P8680586740496290297.Spec : Prop :=
  ∀ n, P8680586740496290297.a n = A101945 n

end A101945

/-! ## A101945.P13037520260718197767

`∑[Δ[A068156(n)]-1]`
-/

namespace A101945.P13037520260718197767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P13037520260718197767

namespace A101945

/-- `∑[Δ[A068156(n)]-1]` -/
def P13037520260718197767.Spec : Prop :=
  ∀ n, P13037520260718197767.a n = A101945 n

end A101945

/-! ## A101945.P11639684459137410305

`∑[A133095(n+1)+n]`
-/

namespace A101945.P11639684459137410305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133095 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101945.P11639684459137410305

namespace A101945

/-- `∑[A133095(n+1)+n]` -/
def P11639684459137410305.Spec : Prop :=
  ∀ n, P11639684459137410305.a n = A101945 n

end A101945

/-!
# A101946: a(n) = 6*2^n - 3*n - 5.

The programs for A101946, the canonical program `A101946.P16729993326730269397` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101946 has offset 0).

The definition of A101946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-3*n-5` (program `A101946.P16729993326730269397`, by `A101946.P16729993326730269397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101946.P16729993326730269397

`6*2^n-3*n-5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101946

/-- `6*2^n-3*n-5` -/
def P16729993326730269397.Spec : Prop :=
  ∀ n, P16729993326730269397.a n = A101946 n

theorem P16729993326730269397.correct : P16729993326730269397.Spec := by
  intro n
  simp only [A101946]

end A101946

/-! ## A101946.P15496809160871839590

`∑[ogf((1+2x^2)/(1-3x+2x^2))]`
-/

namespace A101946.P15496809160871839590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P15496809160871839590

namespace A101946

/-- `∑[ogf((1+2x^2)/(1-3x+2x^2))]` -/
def P15496809160871839590.Spec : Prop :=
  ∀ n, P15496809160871839590.a n = A101946 n

end A101946

/-! ## A101946.P3281176422178561448

`ogf((1+2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A101946.P3281176422178561448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -4, 5, -2] n

end

end A101946.P3281176422178561448

namespace A101946

/-- `ogf((1+2x^2)/(1-4x+5x^2-2x^3))` -/
def P3281176422178561448.Spec : Prop :=
  ∀ n, P3281176422178561448.a n = A101946 n

end A101946

/-! ## A101946.P2904572367728583383

`∑[or(1, 3*(2^n-1))]`
-/

namespace A101946.P2904572367728583383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((2 ^ n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P2904572367728583383

namespace A101946

/-- `∑[or(1, 3*(2^n-1))]` -/
def P2904572367728583383.Spec : Prop :=
  ∀ n, P2904572367728583383.a n = A101946 n

end A101946

/-! ## A101946.P14184109908280880117

`∑[2*a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A101946.P14184109908280880117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P14184109908280880117

namespace A101946

/-- `∑[2*a(n-1)+3]` -/
def P14184109908280880117.Spec : Prop :=
  ∀ n, (P14184109908280880117.a n : ℤ) = A101946 n

end A101946

/-! ## A101946.P3072268388283175109

`∑[lcm(2, a(n-1))+3]` with `a(0)=1, a(1)=3`
-/

namespace A101946.P3072268388283175109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P3072268388283175109

namespace A101946

/-- `∑[lcm(2, a(n-1))+3]` -/
def P3072268388283175109.Spec : Prop :=
  ∀ n, (P3072268388283175109.a n : ℤ) = A101946 n

end A101946

/-! ## A101946.P6672996832347198984

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A101946.P6672996832347198984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P6672996832347198984

namespace A101946

/-- `∑[∑[2*a(n-1)]]` -/
def P6672996832347198984.Spec : Prop :=
  ∀ n, (P6672996832347198984.a n : ℤ) = A101946 n

end A101946

/-! ## A101946.P343116999706533803

`floor(2*a(n-1)+3*n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101946.P343116999706533803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + ((3 * n : ℤ) - 1)

end

end A101946.P343116999706533803

namespace A101946

/-- `floor(2*a(n-1)+3*n-1)` -/
def P343116999706533803.Spec : Prop :=
  ∀ n, P343116999706533803.a n = A101946 n

theorem P343116999706533803.correct : P343116999706533803.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101946, Nat.add_sub_cancel, A101946.P343116999706533803.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101946, Nat.add_sub_cancel, A101946.P343116999706533803.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101946

/-! ## A101946.P5891561607987544867

`∑[a(n-1)+a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A101946.P5891561607987544867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P5891561607987544867

namespace A101946

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P5891561607987544867.Spec : Prop :=
  ∀ n, (P5891561607987544867.a n : ℤ) = A101946 n

end A101946

/-! ## A101946.P8585191000852655065

`2*((n-1)/2+a(n-1)+n)` with `a(0)=1`
-/

namespace A101946.P8585191000852655065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (((n : ℤ) - 1 : ℚ) / 2 + (a (n - 1) + (n : ℚ)))

end

end A101946.P8585191000852655065

namespace A101946

/-- `2*((n-1)/2+a(n-1)+n)` -/
def P8585191000852655065.Spec : Prop :=
  ∀ n, P8585191000852655065.a n = (A101946 n : ℚ)

theorem P8585191000852655065.correct : P8585191000852655065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101946, Nat.add_sub_cancel, A101946.P8585191000852655065.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101946, Nat.add_sub_cancel, A101946.P8585191000852655065.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101946

/-! ## A101946.P9232767692308763123

`2*(n-((1-n)/2-a(n-1)))` with `a(0)=1`
-/

namespace A101946.P9232767692308763123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℚ) - ((1 - (n : ℤ) : ℚ) / 2 - a (n - 1)))

end

end A101946.P9232767692308763123

namespace A101946

/-- `2*(n-((1-n)/2-a(n-1)))` -/
def P9232767692308763123.Spec : Prop :=
  ∀ n, P9232767692308763123.a n = (A101946 n : ℚ)

theorem P9232767692308763123.correct : P9232767692308763123.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101946, Nat.add_sub_cancel, A101946.P9232767692308763123.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101946, Nat.add_sub_cancel, A101946.P9232767692308763123.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101946

/-! ## A101946.P15510082741689230991

`floor(n-(2*(1-a(n-1)-n)-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101946.P15510082741689230991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (2 * (1 - a (n - 1) - (n : ℤ)) - 1)

end

end A101946.P15510082741689230991

namespace A101946

/-- `floor(n-(2*(1-a(n-1)-n)-1))` -/
def P15510082741689230991.Spec : Prop :=
  ∀ n, P15510082741689230991.a n = A101946 n

theorem P15510082741689230991.correct : P15510082741689230991.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101946, Nat.add_sub_cancel, A101946.P15510082741689230991.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101946, Nat.add_sub_cancel, A101946.P15510082741689230991.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101946

/-! ## A101946.P14896820618271382744

`floor(n-1+a(n-1)+a(n-1)+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101946.P14896820618271382744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 1) + (n : ℤ) + (n : ℤ)))

end

end A101946.P14896820618271382744

namespace A101946

/-- `floor(n-1+a(n-1)+a(n-1)+n+n)` -/
def P14896820618271382744.Spec : Prop :=
  ∀ n, P14896820618271382744.a n = A101946 n

theorem P14896820618271382744.correct : P14896820618271382744.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101946, Nat.add_sub_cancel, A101946.P14896820618271382744.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101946, Nat.add_sub_cancel, A101946.P14896820618271382744.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101946

/-! ## A101946.P12990353119479605520

`floor(n-(1-a(n-1)-a(n-1)-n-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A101946.P12990353119479605520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A101946.P12990353119479605520

namespace A101946

/-- `floor(n-(1-a(n-1)-a(n-1)-n-n))` -/
def P12990353119479605520.Spec : Prop :=
  ∀ n, P12990353119479605520.a n = A101946 n

theorem P12990353119479605520.correct : P12990353119479605520.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A101946, Nat.add_sub_cancel, A101946.P12990353119479605520.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A101946, Nat.add_sub_cancel, A101946.P12990353119479605520.a, A101946.P16729993326730269397.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101946

/-! ## A101946.P8156411957309431514

`∑[A068156(n)]`
-/

namespace A101946.P8156411957309431514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P8156411957309431514

namespace A101946

/-- `∑[A068156(n)]` -/
def P8156411957309431514.Spec : Prop :=
  ∀ n, P8156411957309431514.a n = A101946 n

end A101946

/-! ## A101946.P6924676635917945139

`∑[A077802(n)+n]`
-/

namespace A101946.P6924676635917945139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077802 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P6924676635917945139

namespace A101946

/-- `∑[A077802(n)+n]` -/
def P6924676635917945139.Spec : Prop :=
  ∀ n, P6924676635917945139.a n = A101946 n

end A101946

/-! ## A101946.P11185649742245892196

`∑[∑[A111286(n+1)]]`
-/

namespace A101946.P11185649742245892196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P11185649742245892196

namespace A101946

/-- `∑[∑[A111286(n+1)]]` -/
def P11185649742245892196.Spec : Prop :=
  ∀ n, P11185649742245892196.a n = A101946 n

end A101946

/-! ## A101946.P16051545005757748046

`∑[A369491(n+1)-1]`
-/

namespace A101946.P16051545005757748046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P16051545005757748046

namespace A101946

/-- `∑[A369491(n+1)-1]` -/
def P16051545005757748046.Spec : Prop :=
  ∀ n, P16051545005757748046.a n = A101946 n

end A101946

/-! ## A101946.P16249054838506476303

`∑[A290114(n+1)-2]`
-/

namespace A101946.P16249054838506476303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P16249054838506476303

namespace A101946

/-- `∑[A290114(n+1)-2]` -/
def P16249054838506476303.Spec : Prop :=
  ∀ n, P16249054838506476303.a n = A101946 n

end A101946

/-! ## A101946.P9132206807526648253

`∑[A058764(n+1)-3]`
-/

namespace A101946.P9132206807526648253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101946.P9132206807526648253

namespace A101946

/-- `∑[A058764(n+1)-3]` -/
def P9132206807526648253.Spec : Prop :=
  ∀ n, P9132206807526648253.a n = A101946 n

end A101946

/-!
# A101947: A101909 sorted and duplicates removed.

The programs for A101947, there is no canonical definition to state claims against.
-/

/-! ## A101947.P10723485559297921738

`A137735(n²)+∑[char[A296122(3*n+1)]]`
-/

namespace A101947.P10723485559297921738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296122 (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101947.P10723485559297921738

/-! ## A101947.P17023918548506624216

`∑{digits}[A338466(n), (#%2)!]+n`
-/

namespace A101947.P17023918548506624216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial (x % 2)).sum + n

end

end A101947.P17023918548506624216

/-! ## A101947.P12090801384478540961

`A055642(A329201(n))+n`
-/

namespace A101947.P12090801384478540961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A329201 n).toNat + (n : ℤ)

end

end A101947.P12090801384478540961

/-! ## A101947.P3384881217247365941

`A055642(A338466(n))+n`
-/

namespace A101947.P3384881217247365941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A338466 n).toNat + (n : ℤ)

end

end A101947.P3384881217247365941

/-! ## A101947.P8554992726301172060

`A055642(A342382(n))+n`
-/

namespace A101947.P8554992726301172060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A342382 n).toNat + (n : ℤ)

end

end A101947.P8554992726301172060

/-! ## A101947.P3962583934085562474

`A055642(A342383(n))+n`
-/

namespace A101947.P3962583934085562474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A342383 n).toNat + (n : ℤ)

end

end A101947.P3962583934085562474

/-! ## A101947.P13217355266329400212

`A002260(A138902(n)+A001105(n))`
-/

namespace A101947.P13217355266329400212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A138902 n + A001105 n).toNat

end

end A101947.P13217355266329400212

/-!
# A101949: Peak-trough transform of the prime-gap sequence (A001223).

The programs for A101949, there is no canonical definition to state claims against.
-/

/-! ## A101949.P7350391522773855856

`A011639(A003817(n+3)+n)`
-/

namespace A101949.P7350391522773855856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 (A003817 (n + 3) + (n : ℤ)).toNat

end

end A101949.P7350391522773855856

/-! ## A101949.P8831275157814279490

`A054354(∑[A110743(A008784(n+1))])`
-/

namespace A101949.P8831275157814279490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110743 (A008784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101949.P8831275157814279490

/-! ## A101949.P8252551774975407768

`A321765(A081706(n+4)-A142150(n))`
-/

namespace A101949.P8252551774975407768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (A081706 (n + 4) - A142150 n).toNat

end

end A101949.P8252551774975407768

/-! ## A101949.P16459864497874585683

`Δ[val(A318993(3*n+5)+1, 4)]`
-/

namespace A101949.P16459864497874585683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318993 (3 * n + 5) + 1).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A101949.P16459864497874585683

/-! ## A101949.P10548998422121948603

`Δ[A006928(A048736(n))]`
-/

namespace A101949.P10548998422121948603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A048736 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101949.P10548998422121948603

/-!
# A101950: Product of A049310 and A007318 as lower triangular matrices.

The programs for A101950, there is no canonical definition to state claims against.
-/

/-! ## A101950.P3745867693611847535

`A097807(n)*A104562(n)`
-/

namespace A101950.P3745867693611847535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A104562 n

end

end A101950.P3745867693611847535

/-! ## A101950.P15819334048241811766

`A009531(A099375(n))*A104562(n)`
-/

namespace A101950.P15819334048241811766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A104562 n

end

end A101950.P15819334048241811766

/-! ## A101950.P6998086173409957951

`A062157(A082233(n))*A104562(n)`
-/

namespace A101950.P6998086173409957951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A082233 n).toNat * A104562 n

end

end A101950.P6998086173409957951

/-! ## A101950.P17118524712501145300

`A062157(A004736(n+1))*A104562(n)`
-/

namespace A101950.P17118524712501145300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A104562 n

end

end A101950.P17118524712501145300

/-! ## A101950.P8760682082458789193

`A053122(n)/A078812(n)*A104562(n)`
-/

namespace A101950.P8760682082458789193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A104562 n : ℚ)

end

end A101950.P8760682082458789193

/-! ## A101950.P4083091391124811248

`A104562(n)/A125662(n)*A207815(n)`
-/

namespace A101950.P4083091391124811248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104562 n : ℚ) / (A125662 n : ℚ) * (A207815 n : ℚ)

end

end A101950.P4083091391124811248

/-! ## A101950.P16354692221794865185

`A104562(n)/A123967(n)*A207824(n)`
-/

namespace A101950.P16354692221794865185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104562 n : ℚ) / (A123967 n : ℚ) * (A207824 n : ℚ)

end

end A101950.P16354692221794865185

/-! ## A101950.P92851468996534735

`A104562(n)*A158388(A178112(n))`
-/

namespace A101950.P92851468996534735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 n * A158388 (A178112 n).toNat

end

end A101950.P92851468996534735

/-! ## A101950.P7488256637940750730

`A104562(n)*A165591(A130321(n))`
-/

namespace A101950.P7488256637940750730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 n * A165591 (A130321 n).toNat

end

end A101950.P7488256637940750730

/-! ## A101950.P12460853823295561796

`A020985(A130330(n))*A104562(n)`
-/

namespace A101950.P12460853823295561796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A104562 n

end

end A101950.P12460853823295561796

/-!
# A101951: Indices of primes in the sequence defined by A(0) = 23, A(n) = 10*A(n-1) - 27 for n > 0.

The programs for A101951, there is no canonical definition to state claims against.
-/

/-! ## A101951.P12945051181198453083

`A081677(n+2)-1`
-/

namespace A101951.P12945051181198453083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081677 (n + 2) - 1

end

end A101951.P12945051181198453083

/-! ## A101951.P9849001494550680950

`A260196(n+2)+A081677(n+2)`
-/

namespace A101951.P9849001494550680950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A081677 (n + 2)

end

end A101951.P9849001494550680950

/-! ## A101951.P14677084273735019990

`∑[Δ[A081677(n+1)]*A057427(n)]`
-/

namespace A101951.P14677084273735019990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101951.P14677084273735019990

/-! ## A101951.P1003024284715684614

`abs(A081677(n+2)+A033999(2*n+1))`
-/

namespace A101951.P1003024284715684614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081677 (n + 2) + A033999 (2 * n + 1)|

end

end A101951.P1003024284715684614

/-! ## A101951.P7408643683267601910

`A244895(A017317(n))+A081677(n+2)`
-/

namespace A101951.P7408643683267601910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A017317 n).toNat + A081677 (n + 2)

end

end A101951.P7408643683267601910

/-!
# A101952: Indices of primes in sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 81 for n > 0.

The programs for A101952, there is no canonical definition to state claims against.
-/

/-! ## A101952.P14916216846963754640

`A101392(n+2)-1`
-/

namespace A101952.P14916216846963754640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101392 (n + 2) - 1

end

end A101952.P14916216846963754640

/-! ## A101952.P17493137995723930534

`xor(1, A101392(A020725(n+1)))`
-/

namespace A101952.P17493137995723930534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101392 (A020725 (n + 1)).toNat)

end

end A101952.P17493137995723930534

/-! ## A101952.P12761338931266347648

`xor(1, A101392(A101373(n+2)))`
-/

namespace A101952.P12761338931266347648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101392 (A101373 (n + 2)).toNat)

end

end A101952.P12761338931266347648

/-! ## A101952.P14392425232271801854

`xor(A033999(n)², A101392(n+2))`
-/

namespace A101952.P14392425232271801854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A101392 (n + 2))

end

end A101952.P14392425232271801854

/-! ## A101952.P17703377392091509460

`xor(1, A101392(A026741(2*(n+2))))`
-/

namespace A101952.P17703377392091509460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101392 (A026741 (2 * (n + 2))).toNat)

end

end A101952.P17703377392091509460

/-!
# A101953: Indices of primes in sequence defined by A(0) = 23, A(n) = 10*A(n-1) - 17 for n > 0.

The programs for A101953, there is no canonical definition to state claims against.
-/

/-! ## A101953.P17616282213332731081

`A102948(n+1)-1`
-/

namespace A101953.P17616282213332731081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102948 (n + 1) - 1

end

end A101953.P17616282213332731081

/-! ## A101953.P9662562772458090710

`record[Δ[A102948(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A101953.P9662562772458090710
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102948 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101953.P9662562772458090710

/-! ## A101953.P9747809043904942257

`record[Δ[A102948(A152271(n))]]`
-/

namespace A101953.P9747809043904942257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102948 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101953.P9747809043904942257

/-! ## A101953.P5252797241177229769

`record[Δ[A102948(A158416(n))]]`
-/

namespace A101953.P5252797241177229769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102948 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101953.P5252797241177229769

/-! ## A101953.P13945915749880104988

`record[A102948(A152271(n))-A158416(n)]`
-/

namespace A101953.P13945915749880104988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102948 (A152271 n).toNat - A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101953.P13945915749880104988

/-!
# A101954: Indices of primes in the sequence defined by A(0) = 27, A(n) = 10*A(n-1) - 53 for n > 0.

The programs for A101954, there is no canonical definition to state claims against.
-/

/-! ## A101954.P3761156524405118777

`A102949(n+1)-1`
-/

namespace A101954.P3761156524405118777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102949 (n + 1) - 1

end

end A101954.P3761156524405118777

/-! ## A101954.P12547508043982931397

`A266964(A067032(n))+A102949(n+1)`
-/

namespace A101954.P12547508043982931397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266964 (A067032 n).toNat + A102949 (n + 1)

end

end A101954.P12547508043982931397

/-! ## A101954.P16696392144387466140

`A363552(A023202(n+1))+A102949(n+1)`
-/

namespace A101954.P16696392144387466140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363552 (A023202 (n + 1)).toNat + A102949 (n + 1)

end

end A101954.P16696392144387466140

/-! ## A101954.P7218652573572799410

`A363552(A235461(n+1))+A102949(n+1)`
-/

namespace A101954.P7218652573572799410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363552 (A235461 (n + 1)).toNat + A102949 (n + 1)

end

end A101954.P7218652573572799410

/-!
# A101955: Indices of primes in the sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A101955, there is no canonical definition to state claims against.
-/

/-! ## A101955.P18003219475403298209

`A102950(n+1)-1`
-/

namespace A101955.P18003219475403298209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102950 (n + 1) - 1

end

end A101955.P18003219475403298209

/-! ## A101955.P16299270469851485256

`record[Δ[A102950(A100727(n))]]`
-/

namespace A101955.P16299270469851485256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102950 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101955.P16299270469851485256

/-! ## A101955.P10821624987240595482

`record[Δ[A102950(A116188(n))]]`
-/

namespace A101955.P10821624987240595482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102950 (A116188 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101955.P10821624987240595482

/-! ## A101955.P9278491002429416968

`record[Δ[A102950(A152271(n))]]`
-/

namespace A101955.P9278491002429416968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102950 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101955.P9278491002429416968

/-! ## A101955.P11562343447797622425

`record[Δ[A102950(A158416(n))]]`
-/

namespace A101955.P11562343447797622425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102950 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101955.P11562343447797622425

/-!
# A101956: Indices of primes in sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 51 for n > 0.

The programs for A101956, there is no canonical definition to state claims against.
-/

/-! ## A101956.P8818701909783672836

`A102951(n+1)-1`
-/

namespace A101956.P8818701909783672836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102951 (n + 1) - 1

end

end A101956.P8818701909783672836

/-! ## A101956.P14773581949790448260

`record[Δ[A102951(A152271(n))]]`
-/

namespace A101956.P14773581949790448260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102951 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101956.P14773581949790448260

/-! ## A101956.P3720802968635895754

`record[Δ[A102951(A158416(n))]]`
-/

namespace A101956.P3720802968635895754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102951 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101956.P3720802968635895754

/-! ## A101956.P7936087293521596784

`record[A102951(A344180(n))-1]`
-/

namespace A101956.P7936087293521596784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102951 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101956.P7936087293521596784

/-! ## A101956.P17649839180047539620

`A165326(2*(n+1))+A102951(n+1)`
-/

namespace A101956.P17649839180047539620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A102951 (n + 1)

end

end A101956.P17649839180047539620

/-!
# A101957: Indices of primes in the sequence defined by A(0) = 21, A(n) = 10*A(n-1) + 31 for n > 0.

The programs for A101957, there is no canonical definition to state claims against.
-/

/-! ## A101957.P8591916758358165575

`A102952(n+1)-1`
-/

namespace A101957.P8591916758358165575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102952 (n + 1) - 1

end

end A101957.P8591916758358165575

/-! ## A101957.P4084446890127968156

`A134824(n+2)+A102952(n+1)`
-/

namespace A101957.P4084446890127968156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A102952 (n + 1)

end

end A101957.P4084446890127968156

/-! ## A101957.P16022756570043518084

`abs(A102952(n+1)+A057428(n+1))`
-/

namespace A101957.P16022756570043518084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102952 (n + 1) + A057428 (n + 1)|

end

end A101957.P16022756570043518084

/-! ## A101957.P7593520490991960734

`A280193(18*n+1)+A102952(n+1)`
-/

namespace A101957.P7593520490991960734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (18 * n + 1) + A102952 (n + 1)

end

end A101957.P7593520490991960734

/-! ## A101957.P8372811963977141087

`A339791(A007918(n))+A102952(n+1)`
-/

namespace A101957.P8372811963977141087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A007918 n).toNat + A102952 (n + 1)

end

end A101957.P8372811963977141087

/-!
# A101958: Indices of primes in sequence defined by A(0) = 23, A(n) = 10*A(n-1) + 13 for n > 0.

The programs for A101958, there is no canonical definition to state claims against.
-/

/-! ## A101958.P8922548362056852365

`A102953(n+1)-1`
-/

namespace A101958.P8922548362056852365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102953 (n + 1) - 1

end

end A101958.P8922548362056852365

/-! ## A101958.P6879228114257258529

`record[Δ[A102953(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A101958.P6879228114257258529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102953 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101958.P6879228114257258529

/-! ## A101958.P1389262510043977589

`record[Δ[A102953(A152271(n))]]`
-/

namespace A101958.P1389262510043977589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102953 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101958.P1389262510043977589

/-! ## A101958.P16763332625982285180

`A153881(n+2)+A102953(n+1)`
-/

namespace A101958.P16763332625982285180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A102953 (n + 1)

end

end A101958.P16763332625982285180

/-! ## A101958.P13905653626836202644

`A341028(A220122(n))+A102953(n+1)`
-/

namespace A101958.P13905653626836202644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341028 (A220122 n).toNat + A102953 (n + 1)

end

end A101958.P13905653626836202644

/-!
# A101959: Indices of primes in sequence defined by A(0) = 27, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A101959, there is no canonical definition to state claims against.
-/

/-! ## A101959.P10896017203906046781

`A102954(n+1)-1`
-/

namespace A101959.P10896017203906046781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102954 (n + 1) - 1

end

end A101959.P10896017203906046781

/-! ## A101959.P16303728793406619832

`A260196(n+2)+A102954(n+1)`
-/

namespace A101959.P16303728793406619832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102954 (n + 1)

end

end A101959.P16303728793406619832

/-! ## A101959.P16306740510262399583

`A280193(2*n+3)+A102954(n+1)`
-/

namespace A101959.P16306740510262399583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 3) + A102954 (n + 1)

end

end A101959.P16306740510262399583

/-! ## A101959.P12699592967140532706

`xor(-A102954(n+1), A057428(3*n+1))`
-/

namespace A101959.P12699592967140532706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A102954 (n + 1)) (A057428 (3 * n + 1))

end

end A101959.P12699592967140532706

/-! ## A101959.P11813293612520478568

`A305052(A000040(n+1))+A102954(n+1)`
-/

namespace A101959.P11813293612520478568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A000040 (n + 1)).toNat + A102954 (n + 1)

end

end A101959.P11813293612520478568

/-!
# A101960: Indices of primes in sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 41 for n > 0.

The programs for A101960, there is no canonical definition to state claims against.
-/

/-! ## A101960.P11081972271047735396

`A102955(n+1)-1`
-/

namespace A101960.P11081972271047735396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102955 (n + 1) - 1

end

end A101960.P11081972271047735396

/-! ## A101960.P9391149267796605729

`record[Δ[A102955(A051340(n))]]`
-/

namespace A101960.P9391149267796605729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102955 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101960.P9391149267796605729

/-! ## A101960.P768064800370559076

`record[A102955(A344180(n))-1]`
-/

namespace A101960.P768064800370559076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102955 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101960.P768064800370559076

/-! ## A101960.P7037841149606238797

`record[Δ[A102955(A050873(n+1))]]`
-/

namespace A101960.P7037841149606238797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102955 (A050873 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101960.P7037841149606238797

/-! ## A101960.P12877783525587045062

`record[A102955(A051340(n))-A007318(n)]`
-/

namespace A101960.P12877783525587045062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102955 (A051340 n).toNat - A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101960.P12877783525587045062

/-!
# A101961: Indices of primes in sequence defined by A(0) = 21, A(n) = 10*A(n-1) + 41 for n > 0.

The programs for A101961, there is no canonical definition to state claims against.
-/

/-! ## A101961.P1985384762329614824

`A098930(n+1)-1`
-/

namespace A101961.P1985384762329614824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098930 (n + 1) - 1

end

end A101961.P1985384762329614824

/-! ## A101961.P9212803620290436912

`abs(1-A098930(A077168(n)))`
-/

namespace A101961.P9212803620290436912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A098930 (A077168 n).toNat|

end

end A101961.P9212803620290436912

/-! ## A101961.P14058393182960493402

`A118830(2*n+1)+A098930(n+1)`
-/

namespace A101961.P14058393182960493402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A098930 (n + 1)

end

end A101961.P14058393182960493402

/-! ## A101961.P4273283120927810352

`A280193(2*n+1)+A098930(n+1)`
-/

namespace A101961.P4273283120927810352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A098930 (n + 1)

end

end A101961.P4273283120927810352

/-! ## A101961.P14458745251837966194

`A107045(A053501(n))+A098930(n+1)`
-/

namespace A101961.P14458745251837966194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107045 (A053501 n).toNat + A098930 (n + 1)

end

end A101961.P14458745251837966194

/-!
# A101962: Indices of primes in sequence defined by A(0) = 27, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A101962, there is no canonical definition to state claims against.
-/

/-! ## A101962.P6319599306198392847

`A099006(n+1)-1`
-/

namespace A101962.P6319599306198392847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099006 (n + 1) - 1

end

end A101962.P6319599306198392847

/-! ## A101962.P18246633180198514157

`A308778(n²)+A099006(n+1)`
-/

namespace A101962.P18246633180198514157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A099006 (n + 1)

end

end A101962.P18246633180198514157

/-! ## A101962.P3208032251402412779

`A260196(n+2)+A099006(n+1)`
-/

namespace A101962.P3208032251402412779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A099006 (n + 1)

end

end A101962.P3208032251402412779

/-! ## A101962.P13250510979048281658

`A153881(3*n+2)+A099006(n+1)`
-/

namespace A101962.P13250510979048281658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * n + 2) + A099006 (n + 1)

end

end A101962.P13250510979048281658

/-! ## A101962.P13691597634085142166

`abs(A099006(n+1)+A033999(2*n+3))`
-/

namespace A101962.P13691597634085142166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099006 (n + 1) + A033999 (2 * n + 3)|

end

end A101962.P13691597634085142166

/-!
# A101963: Indices of primes in the sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 31 for n > 0.

The programs for A101963, there is no canonical definition to state claims against.
-/

/-! ## A101963.P3267642845851409943

`A102956(n+1)-1`
-/

namespace A101963.P3267642845851409943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102956 (n + 1) - 1

end

end A101963.P3267642845851409943

/-! ## A101963.P16350134383848438066

`record[Δ[A102956(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A101963.P16350134383848438066
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102956 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101963.P16350134383848438066

/-! ## A101963.P2292292719800989728

`record[Δ[A102956(ceil(C(or(1, n), n)/2))]]`
-/

namespace A101963.P2292292719800989728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102956 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101963.P2292292719800989728

/-! ## A101963.P9422088326591722577

`record[Δ[A102956(A050603(n))]]`
-/

namespace A101963.P9422088326591722577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102956 (A050603 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101963.P9422088326591722577

/-!
# A101964: Indices of primes in sequence defined by A(0) = 23, A(n) = 10*A(n-1) + 33 for n > 0.

The programs for A101964, there is no canonical definition to state claims against.
-/

/-! ## A101964.P14608797126893714568

`A098959(n+1)-1`
-/

namespace A101964.P14608797126893714568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098959 (n + 1) - 1

end

end A101964.P14608797126893714568

/-! ## A101964.P17145573782327834320

`record[Δ[A098959(A152271(n))]]`
-/

namespace A101964.P17145573782327834320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098959 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101964.P17145573782327834320

/-! ## A101964.P2283097198292006300

`record[Δ[A098959(A158416(n))]]`
-/

namespace A101964.P2283097198292006300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098959 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101964.P2283097198292006300

/-! ## A101964.P15792352436037598167

`record[A098959(A154958(n))-1]`
-/

namespace A101964.P15792352436037598167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098959 (A154958 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101964.P15792352436037598167

/-! ## A101964.P7103041572336588478

`A260196(n+2)+A098959(n+1)`
-/

namespace A101964.P7103041572336588478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A098959 (n + 1)

end

end A101964.P7103041572336588478

/-!
# A101965: Indices of primes in the sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 21 for n > 0.

The programs for A101965, there is no canonical definition to state claims against.
-/

/-! ## A101965.P5069539191980398074

`A102957(n+2)-1`
-/

namespace A101965.P5069539191980398074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102957 (n + 2) - 1

end

end A101965.P5069539191980398074

/-! ## A101965.P15995743720472870600

`∑[Δ[A102957(n+1)]%(2^n)]`
-/

namespace A101965.P15995743720472870600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101965.P15995743720472870600

/-! ## A101965.P8879063567348549268

`A137454(A003640(n+1))+A102957(n+2)`
-/

namespace A101965.P8879063567348549268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137454 (A003640 (n + 1)).toNat + A102957 (n + 2)

end

end A101965.P8879063567348549268

/-! ## A101965.P10602470826514628784

`A316524(A006094(n+1))+A102957(n+2)`
-/

namespace A101965.P10602470826514628784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A006094 (n + 1)).toNat + A102957 (n + 2)

end

end A101965.P10602470826514628784

/-! ## A101965.P17413862037673833140

`A344617(A006881(n+1))+A102957(n+2)`
-/

namespace A101965.P17413862037673833140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (A006881 (n + 1)).toNat + A102957 (n + 2)

end

end A101965.P17413862037673833140

/-!
# A101966: Indices of primes in sequence defined by A(0) = 21, A(n) = 10*A(n-1) + 61 for n > 0.

The programs for A101966, there is no canonical definition to state claims against.
-/

/-! ## A101966.P11727356447153293015

`A098960(n+1)-1`
-/

namespace A101966.P11727356447153293015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098960 (n + 1) - 1

end

end A101966.P11727356447153293015

/-! ## A101966.P12556454499948804974

`A280193(2*n+1)+A098960(n+1)`
-/

namespace A101966.P12556454499948804974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A098960 (n + 1)

end

end A101966.P12556454499948804974

/-! ## A101966.P3211444910439858237

`A106510(3*n+2)+A098960(n+1)`
-/

namespace A101966.P3211444910439858237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (3 * n + 2) + A098960 (n + 1)

end

end A101966.P3211444910439858237

/-! ## A101966.P13127897988475997151

`A326185(4^round(log(4*(n+1))))+A098960(n+1)`
-/

namespace A101966.P13127897988475997151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326185 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log (4 * (n + 1) : ℝ)) : ℤ))).toNat + A098960 (n + 1)

end

end A101966.P13127897988475997151

/-! ## A101966.P12599376766858393778

`A106400(A051700(n))+A098960(n+1)`
-/

namespace A101966.P12599376766858393778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A051700 n).toNat + A098960 (n + 1)

end

end A101966.P12599376766858393778

/-!
# A101967: Indices of primes in sequence defined by A(0) = 23, A(n) = 10*A(n-1) + 43 for n > 0.

The programs for A101967, there is no canonical definition to state claims against.
-/

/-! ## A101967.P10908292569685486372

`A102958(n+2)-1`
-/

namespace A101967.P10908292569685486372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102958 (n + 2) - 1

end

end A101967.P10908292569685486372

/-! ## A101967.P1778849350600726440

`∑[A184985(Δ[A102958(n+1)])]`
-/

namespace A101967.P1778849350600726440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101967.P1778849350600726440

/-! ## A101967.P15903364694577363760

`A260196(n+2)+A102958(n+2)`
-/

namespace A101967.P15903364694577363760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102958 (n + 2)

end

end A101967.P15903364694577363760

/-! ## A101967.P9747160703584455416

`∑[Δ[A102958(n+1)]%A323416(n+1)]`
-/

namespace A101967.P9747160703584455416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A323416 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101967.P9747160703584455416

/-!
# A101968: Indices of primes in sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 11 for n > 0.

The programs for A101968, there is no canonical definition to state claims against.
-/

/-! ## A101968.P8297098748372526300

`A102959(n+1)-1`
-/

namespace A101968.P8297098748372526300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102959 (n + 1) - 1

end

end A101968.P8297098748372526300

/-! ## A101968.P10285577009980728340

`record[Δ[A102959(A158416(n))]]`
-/

namespace A101968.P10285577009980728340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102959 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101968.P10285577009980728340

/-! ## A101968.P7748952261204593712

`A260196(n+2)+A102959(n+1)`
-/

namespace A101968.P7748952261204593712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102959 (n + 1)

end

end A101968.P7748952261204593712

/-! ## A101968.P15518785502262872818

`A153881(2*n+3)+A102959(n+1)`
-/

namespace A101968.P15518785502262872818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * n + 3) + A102959 (n + 1)

end

end A101968.P15518785502262872818

/-! ## A101968.P13064328215685338178

`abs(A102959(n+1)+A057428(2*(n+1)))`
-/

namespace A101968.P13064328215685338178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102959 (n + 1) + A057428 (2 * (n + 1))|

end

end A101968.P13064328215685338178

/-!
# A101969: Indices of primes in sequence defined by A(0) = 21, A(n) = 10*A(n-1) + 71 for n > 0.

The programs for A101969, there is no canonical definition to state claims against.
-/

/-! ## A101969.P16429779901205594510

`A102960(n+1)-1`
-/

namespace A101969.P16429779901205594510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102960 (n + 1) - 1

end

end A101969.P16429779901205594510

/-! ## A101969.P5051394596334353524

`A134824(n+2)+A102960(n+1)`
-/

namespace A101969.P5051394596334353524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A102960 (n + 1)

end

end A101969.P5051394596334353524

/-! ## A101969.P10367428761918709313

`A260196(n+2)+A102960(n+1)`
-/

namespace A101969.P10367428761918709313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102960 (n + 1)

end

end A101969.P10367428761918709313

/-! ## A101969.P17110125294781222552

`A321800(C(2, n))+A102960(n+1)`
-/

namespace A101969.P17110125294781222552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (Nat.choose 2 n) + A102960 (n + 1)

end

end A101969.P17110125294781222552

/-! ## A101969.P11246029730408676571

`A105812(2*(n+1))+A102960(n+1)`
-/

namespace A101969.P11246029730408676571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 1)) + A102960 (n + 1)

end

end A101969.P11246029730408676571

/-!
# A101970: Indices of primes in sequence defined by A(0) = 23, A(n) = 10*A(n-1) + 53 for n > 0.

The programs for A101970, there is no canonical definition to state claims against.
-/

/-! ## A101970.P6374983056040997586

`A102961(n+1)-1`
-/

namespace A101970.P6374983056040997586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102961 (n + 1) - 1

end

end A101970.P6374983056040997586

/-! ## A101970.P2757035538491284267

`record[Δ[A102961(A116188(n))]]`
-/

namespace A101970.P2757035538491284267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102961 (A116188 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101970.P2757035538491284267

/-! ## A101970.P6223974964531242948

`record[Δ[A102961(A158416(n))]]`
-/

namespace A101970.P6223974964531242948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102961 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101970.P6223974964531242948

/-! ## A101970.P12078829978206458564

`record[A102961(A286622(n))-1]`
-/

namespace A101970.P12078829978206458564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102961 (A286622 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101970.P12078829978206458564

/-! ## A101970.P11827599762057873428

`record[A102961(A344180(n))-1]`
-/

namespace A101970.P11827599762057873428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102961 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101970.P11827599762057873428

/-!
# A101971: Indices of primes in sequence defined by A(0) = 27, A(n) = 10*A(n-1) + 17 for n > 0.

The programs for A101971, there is no canonical definition to state claims against.
-/

/-! ## A101971.P12499801710516459543

`A102962(n+1)-1`
-/

namespace A101971.P12499801710516459543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102962 (n + 1) - 1

end

end A101971.P12499801710516459543

/-! ## A101971.P7826214076700927862

`A066182(A102962(n+1))`
-/

namespace A101971.P7826214076700927862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A102962 (n + 1)).toNat

end

end A101971.P7826214076700927862

/-! ## A101971.P2637279452302828970

`A260196(n+2)+A102962(n+1)`
-/

namespace A101971.P2637279452302828970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102962 (n + 1)

end

end A101971.P2637279452302828970

/-! ## A101971.P7429286671772095026

`abs(A102962(n+1)+A057428(n+1))`
-/

namespace A101971.P7429286671772095026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102962 (n + 1) + A057428 (n + 1)|

end

end A101971.P7429286671772095026

/-! ## A101971.P7751675635206040452

`A295729(and(n, -(n+1)))+A102962(n+1)`
-/

namespace A101971.P7751675635206040452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat + A102962 (n + 1)

end

end A101971.P7751675635206040452

/-!
# A101972: Indices of primes in the sequence defined by A(0) = 29, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A101972, there is no canonical definition to state claims against.
-/

/-! ## A101972.P1954238329363769874

`A102963(n+2)-1`
-/

namespace A101972.P1954238329363769874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102963 (n + 2) - 1

end

end A101972.P1954238329363769874

/-! ## A101972.P11658689937270176080

`A278400(gcd(n, n+1))+A102963(n+2)`
-/

namespace A101972.P11658689937270176080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (Nat.gcd n (n + 1)) + A102963 (n + 2)

end

end A101972.P11658689937270176080

/-! ## A101972.P8185067827678001317

`A339791(∑{d}[2*n+1, (#%4)%3])+A102963(n+2)`
-/

namespace A101972.P8185067827678001317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (∑ d ∈ Nat.divisors (f1 n), d % 4 % 3) + A102963 (n + 2)

end

end A101972.P8185067827678001317

/-! ## A101972.P12139047179608310268

`record[A102963(A028310(n))+A057428(n)]`
-/

namespace A101972.P12139047179608310268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102963 (A028310 n).toNat + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101972.P12139047179608310268

/-! ## A101972.P17671137387176070888

`record[A102963(A028310(n))-A057427(n)]`
-/

namespace A101972.P17671137387176070888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102963 (A028310 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101972.P17671137387176070888

/-!
# A101973: Indices of primes in the sequence defined by A(0) = 23, A(n) = 10*A(n-1) + 63 for n > 0.

The programs for A101973, there is no canonical definition to state claims against.
-/

/-! ## A101973.P4979388654217978699

`A102964(n+1)-1`
-/

namespace A101973.P4979388654217978699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102964 (n + 1) - 1

end

end A101973.P4979388654217978699

/-! ## A101973.P6202255651696392969

`record[Δ[A102964(A152271(n))]]`
-/

namespace A101973.P6202255651696392969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102964 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101973.P6202255651696392969

/-! ## A101973.P1568210479050974715

`record[Δ[A102964(A158416(n))]]`
-/

namespace A101973.P1568210479050974715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102964 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101973.P1568210479050974715

/-! ## A101973.P18012601142657328146

`record[A102964(A291769(n))-1]`
-/

namespace A101973.P18012601142657328146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102964 (A291769 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101973.P18012601142657328146

/-! ## A101973.P10563385786569808190

`record[A102964(A331742(n))-1]`
-/

namespace A101973.P10563385786569808190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102964 (A331742 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101973.P10563385786569808190

/-!
# A101976: Number of products of factorials not exceeding n!.

The programs for A101976, there is no canonical definition to state claims against.
-/

/-! ## A101976.P2021893941356099310

`∑[A342525(A342492(n))]`
-/

namespace A101976.P2021893941356099310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (A342492 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101976.P2021893941356099310

/-! ## A101976.P16159245198433667882

`∑[∑[A171618(A279375(n+3))]]-n`
-/

namespace A101976.P16159245198433667882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171618 (A279375 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A101976.P16159245198433667882

/-! ## A101976.P13610153310027323375

`A188298(A003057(n*2^(n+1)+2)-A288217(n+1))`
-/

namespace A101976.P13610153310027323375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (A003057 (n * 2 ^ (n + 1) + 2) - A288217 (n + 1)).toNat

end

end A101976.P13610153310027323375

/-! ## A101976.P11916267419745051403

`A188298(A003056(2*n*2^n)+2-A288217(n+1))`
-/

namespace A101976.P11916267419745051403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (A003056 (2 * n * 2 ^ n) + 2 - A288217 (n + 1)).toNat

end

end A101976.P11916267419745051403

/-! ## A101976.P2742919948673341299

`∑[A071521(A001250(n))]`
-/

namespace A101976.P2742919948673341299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A001250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101976.P2742919948673341299

/-!
# A101977: Number of products of distinct factorials not exceeding n!.

The programs for A101977, there is no canonical definition to state claims against.
-/

/-! ## A101977.P18030019803107846252

`A097451(2*(n+1))-A324231(A056241(n+1))`
-/

namespace A101977.P18030019803107846252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097451 (2 * (n + 1)) - A324231 (A056241 (n + 1)).toNat

end

end A101977.P18030019803107846252

/-! ## A101977.P11822950315231441954

`A328085(n+1)+round(4*n/7)`
-/

namespace A101977.P11822950315231441954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328085 (n + 1) + SequenceMachineLib.roundAway (4 * ((n : ℚ) / 7))

end

end A101977.P11822950315231441954

/-! ## A101977.P9836973982672082921

`A097451(lt[floor(n/2)!, n/2*(-2)^n])`
-/

namespace A101977.P9836973982672082921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((-2) ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097451 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A101977.P9836973982672082921

/-! ## A101977.P2458615767431744561

`A097247(record[A097451(n)])`
-/

namespace A101977.P2458615767431744561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101977.P2458615767431744561

/-! ## A101977.P3873852270646222844

`A097448(record[A097451(n)])`
-/

namespace A101977.P3873852270646222844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101977.P3873852270646222844

/-!
# A101978: Number of powers of factorials not exceeding n!.

The programs for A101978, there is no canonical definition to state claims against.
-/

/-! ## A101978.P2706912939163055639

`A094500(A090937(n+1))`
-/

namespace A101978.P2706912939163055639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (A090937 (n + 1)).toNat

end

end A101978.P2706912939163055639

/-! ## A101978.P10076734821704711668

`A090620(A157221(n)+A141214(3*n+2))`
-/

namespace A101978.P10076734821704711668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A157221 n + A141214 (3 * n + 2)).toNat

end

end A101978.P10076734821704711668

/-! ## A101978.P13422743835587138774

`A294935(A180169(n))+A000196(A226450(n))`
-/

namespace A101978.P13422743835587138774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (A180169 n).toNat + A000196 (A226450 n).toNat

end

end A101978.P13422743835587138774

/-! ## A101978.P10656727349654415144

`A206767(A293407(n+1))`
-/

namespace A101978.P10656727349654415144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206767 (A293407 (n + 1)).toNat

end

end A101978.P10656727349654415144

/-! ## A101978.P5379813836086923661

`A206767(A397987(n+1))`
-/

namespace A101978.P5379813836086923661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206767 (A397987 (n + 1)).toNat

end

end A101978.P5379813836086923661

/-!
# A101979: Antidiagonal sums of A101309, which is the matrix logarithm of A047999 (Pascal's triangle mod 2).

The programs for A101979, the canonical program `A101979.P2317065442766079608` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101979 has offset 0).

The definition of A101979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101979.P2317065442766079608

`a(n-2)+Δ[xor(n, 2*n-1)]%2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101979

/-- `a(n-2)+Δ[xor(n, 2*n-1)]%2` -/
def P2317065442766079608.Spec : Prop :=
  ∀ n, P2317065442766079608.a n = A101979 n

theorem P2317065442766079608.correct : P2317065442766079608.Spec := by
  intro n
  simp only [A101979]

end A101979

/-! ## A101979.P14382997310125142651

`n-a(n-1)-2*∑[char[or(n, n+1)+2+n]]` with `a(0)=0`
-/

namespace A101979.P14382997310125142651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (n - 1) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A101979.P14382997310125142651

namespace A101979

/-- `n-a(n-1)-2*∑[char[or(n, n+1)+2+n]]` -/
def P14382997310125142651.Spec : Prop :=
  ∀ n, P14382997310125142651.a n = A101979 n

end A101979

/-! ## A101979.P12487425821693102250

`val(A260443(n+1), 3)`
-/

namespace A101979.P12487425821693102250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260443 (n + 1)).toNat 3

end

end A101979.P12487425821693102250

namespace A101979

/-- `val(A260443(n+1), 3)` -/
def P12487425821693102250.Spec : Prop :=
  ∀ n, (P12487425821693102250.a n : ℤ) = A101979 n

end A101979

/-! ## A101979.P3175313729150014708

`val(A284554(n+1), 3)`
-/

namespace A101979.P3175313729150014708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284554 (n + 1)).toNat 3

end

end A101979.P3175313729150014708

namespace A101979

/-- `val(A284554(n+1), 3)` -/
def P3175313729150014708.Spec : Prop :=
  ∀ n, (P3175313729150014708.a n : ℤ) = A101979 n

end A101979

/-! ## A101979.P15346293373091140600

`val(A277323(n+1), 5)`
-/

namespace A101979.P15346293373091140600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277323 (n + 1)).toNat 5

end

end A101979.P15346293373091140600

namespace A101979

/-- `val(A277323(n+1), 5)` -/
def P15346293373091140600.Spec : Prop :=
  ∀ n, (P15346293373091140600.a n : ℤ) = A101979 n

end A101979

/-! ## A101979.P16684475086835234390

`val(A284553(2*(n+1)), 5)`
-/

namespace A101979.P16684475086835234390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284553 (2 * (n + 1))).toNat 5

end

end A101979.P16684475086835234390

namespace A101979

/-- `val(A284553(2*(n+1)), 5)` -/
def P16684475086835234390.Spec : Prop :=
  ∀ n, (P16684475086835234390.a n : ℤ) = A101979 n

end A101979

/-! ## A101979.P9614604383213193148

`A005811(n)-a(n-1)` with `a(0)=0`
-/

namespace A101979.P9614604383213193148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005811 n - a (n - 1)

end

end A101979.P9614604383213193148

namespace A101979

/-- `A005811(n)-a(n-1)` -/
def P9614604383213193148.Spec : Prop :=
  ∀ n, P9614604383213193148.a n = A101979 n

end A101979

/-! ## A101979.P13307825653977247067

`A112347(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A101979.P13307825653977247067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A112347 n + a (n - 2)

end

end A101979.P13307825653977247067

namespace A101979

/-- `A112347(n)+a(n-2)` -/
def P13307825653977247067.Spec : Prop :=
  ∀ n, P13307825653977247067.a n = A101979 n

end A101979

/-! ## A101979.P9447642598499895075

`dr(A014550(n))-a(n-1)` with `a(0)=0`
-/

namespace A101979.P9447642598499895075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.digitalRoot (A014550 n) : ℤ) - a (n - 1)

end

end A101979.P9447642598499895075

namespace A101979

/-- `dr(A014550(n))-a(n-1)` -/
def P9447642598499895075.Spec : Prop :=
  ∀ n, P9447642598499895075.a n = A101979 n

end A101979

/-! ## A101979.P17628083817265146971

`A037834(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A101979.P17628083817265146971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037834 n + (1 - a (n - 1))

end

end A101979.P17628083817265146971

namespace A101979

/-- `A037834(n)+1-a(n-1)` -/
def P17628083817265146971.Spec : Prop :=
  ∀ n, P17628083817265146971.a n = A101979 n

end A101979

/-! ## A101979.P4526970389268072484

`n-(A236840(n)+a(n-1))` with `a(0)=0`
-/

namespace A101979.P4526970389268072484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (A236840 n + a (n - 1))

end

end A101979.P4526970389268072484

namespace A101979

/-- `n-(A236840(n)+a(n-1))` -/
def P4526970389268072484.Spec : Prop :=
  ∀ n, P4526970389268072484.a n = A101979 n

end A101979

/-! ## A101979.P1469877957960488495

`A005811(A003815(n))`
-/

namespace A101979.P1469877957960488495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A003815 n).toNat

end

end A101979.P1469877957960488495

namespace A101979

/-- `A005811(A003815(n))` -/
def P1469877957960488495.Spec : Prop :=
  ∀ n, P1469877957960488495.a n = A101979 n

end A101979

/-! ## A101979.P11019546502087024002

`A005811(A166514(n))`
-/

namespace A101979.P11019546502087024002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A166514 n).toNat

end

end A101979.P11019546502087024002

namespace A101979

/-- `A005811(A166514(n))` -/
def P11019546502087024002.Spec : Prop :=
  ∀ n, P11019546502087024002.a n = A101979 n

end A101979

/-! ## A101979.P15674203845923572190

`A382732(A086112(n+1))`
-/

namespace A101979.P15674203845923572190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 (A086112 (n + 1)).toNat

end

end A101979.P15674203845923572190

namespace A101979

/-- `A382732(A086112(n+1))` -/
def P15674203845923572190.Spec : Prop :=
  ∀ n, P15674203845923572190.a n = A101979 n

end A101979

/-! ## A101979.P7307203825876980001

`A382732(A199398(n+1))`
-/

namespace A101979.P7307203825876980001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 (A199398 (n + 1)).toNat

end

end A101979.P7307203825876980001

namespace A101979

/-- `A382732(A199398(n+1))` -/
def P7307203825876980001.Spec : Prop :=
  ∀ n, P7307203825876980001.a n = A101979 n

end A101979

/-! ## A101979.P844592321029587894

`A037834(A266616(n)+3)`
-/

namespace A101979.P844592321029587894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A266616 n + 3).toNat

end

end A101979.P844592321029587894

namespace A101979

/-- `A037834(A266616(n)+3)` -/
def P844592321029587894.Spec : Prop :=
  ∀ n, P844592321029587894.a n = A101979 n

end A101979

/-! ## A101979.P7077136772187263777

`abs(∑[A038608(A005811(n))])`
-/

namespace A101979.P7077136772187263777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A005811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A101979.P7077136772187263777

namespace A101979

/-- `abs(∑[A038608(A005811(n))])` -/
def P7077136772187263777.Spec : Prop :=
  ∀ n, P7077136772187263777.a n = A101979 n

end A101979

/-! ## A101979.P5629026316472483873

`A125184(∑[A277329(n)]+2)`
-/

namespace A101979.P5629026316472483873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A101979.P5629026316472483873

namespace A101979

/-- `A125184(∑[A277329(n)]+2)` -/
def P5629026316472483873.Spec : Prop :=
  ∀ n, P5629026316472483873.a n = A101979 n

end A101979

/-!
# A101980: Matrix logarithm of A008459 (squared entries of Pascal's triangle), read by rows.

The programs for A101980, there is no canonical definition to state claims against.
-/

/-! ## A101980.P13841406122235016585

`A008459(n)*A101981(A025581(n))`
-/

namespace A101980.P13841406122235016585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A101981 (A025581 n).toNat

end

end A101980.P13841406122235016585

/-! ## A101980.P3657290939905335699

`A007318(n)²*A101981(A025581(n))`
-/

namespace A101980.P3657290939905335699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A101981 (A025581 n).toNat

end

end A101980.P3657290939905335699

/-! ## A101980.P3891135267881113735

`A108086(n)²*A101981(A025581(n))`
-/

namespace A101980.P3891135267881113735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 * A101981 (A025581 n).toNat

end

end A101980.P3891135267881113735

/-! ## A101980.P15252254470572244110

`A130595(n)²*A101981(A025581(n))`
-/

namespace A101980.P15252254470572244110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A101981 (A025581 n).toNat

end

end A101980.P15252254470572244110

/-! ## A101980.P549274011634728085

`Δ[A102363(n)]²*A101981(A025581(n))`
-/

namespace A101980.P549274011634728085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A101981 (A025581 n).toNat

end

end A101980.P549274011634728085

/-! ## A101980.P10346472014927625016

`(A014473(n)+1)²*A101981(A025581(n))`
-/

namespace A101980.P10346472014927625016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) ^ 2 * A101981 (A025581 n).toNat

end

end A101980.P10346472014927625016

/-! ## A101980.P11538047863889197713

`(2-A173740(n))²*A101981(A025581(n))`
-/

namespace A101980.P11538047863889197713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A173740 n) ^ 2 * A101981 (A025581 n).toNat

end

end A101980.P11538047863889197713

/-! ## A101980.P3727496874759414871

`A007318(n)^A020639(2*(n+1))*A101981(A025581(n))`
-/

namespace A101980.P3727496874759414871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) * (A101981 (A025581 n).toNat : ℚ)

end

end A101980.P3727496874759414871

/-! ## A101980.P18188539560596151350

`A007318(n)^A000040((-1)^(2*n))*A101981(A025581(n))`
-/

namespace A101980.P18188539560596151350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ) * (A101981 (A025581 n).toNat : ℚ)

end

end A101980.P18188539560596151350

/-!
# A101981: Column 0 of triangle A101980, which is the matrix logarithm of A008459 (squared entries of Pascal's triangle).

The programs for A101981, there is no canonical definition to state claims against.
-/

/-! ## A101981.P8921694282945038829

`(-1)^(n+1)*A002190(n)`
-/

namespace A101981.P8921694282945038829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A002190 n

end

end A101981.P8921694282945038829

/-! ## A101981.P3379106518429888074

`-((-1)^n*A002190(n))`
-/

namespace A101981.P3379106518429888074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A002190 n)

end

end A101981.P3379106518429888074

/-! ## A101981.P6799863323178241972

`A002190(n)*A033999(n+1)`
-/

namespace A101981.P6799863323178241972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002190 n * A033999 (n + 1)

end

end A101981.P6799863323178241972

/-! ## A101981.P373840040518331120

`A002190(n)*A065357(A000040(n+1))`
-/

namespace A101981.P373840040518331120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002190 n * A065357 (A000040 (n + 1)).toNat

end

end A101981.P373840040518331120

/-! ## A101981.P13950126813048235103

`A002190(n)/A033999(A000290(n+3))`
-/

namespace A101981.P13950126813048235103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002190 n : ℚ) / (A033999 (A000290 (n + 3)).toNat : ℚ)

end

end A101981.P13950126813048235103

/-!
# A101985: Numbers that occur exactly once in A289493 (= number of primes between 2n and 3n).

The programs for A101985, there is no canonical definition to state claims against.
-/

/-! ## A101985.P4685686909041002595

`A242658(n)+A119310(A242630(n))`
-/

namespace A101985.P4685686909041002595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242658 n + A119310 (A242630 n).toNat

end

end A101985.P4685686909041002595

/-!
# A101986: Maximum sum of products of successive pairs in a permutation of order n+1.

The programs for A101986, the canonical program `A101986.P13109186862732274564` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101986 has offset 0).

The definition of A101986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101986.P15876724337024841460

`n*(2*n²+9*n+1)/6`
-/

namespace A101986.P15876724337024841460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n ^ 2 + 9 * n + 1) : ℚ) / 6

end

end A101986.P15876724337024841460

namespace A101986

/-- `n*(2*n²+9*n+1)/6` -/
def P15876724337024841460.Spec : Prop :=
  ∀ n, P15876724337024841460.a n = (A101986 n : ℚ)

theorem P15876724337024841460.correct : P15876724337024841460.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A101986, Nat.add_sub_cancel, A101986.P15876724337024841460.a, A101986.P13109186862732274564.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A101986, Nat.add_sub_cancel, A101986.P15876724337024841460.a, A101986.P13109186862732274564.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101986

/-! ## A101986.P13109186862732274564

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=23`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101986

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13109186862732274564.Spec : Prop :=
  ∀ n, P13109186862732274564.a n = A101986 n

theorem P13109186862732274564.correct : P13109186862732274564.Spec := by
  intro n
  simp only [A101986]

end A101986

/-! ## A101986.P1122129197442112489

`A160805(n)-4`
-/

namespace A101986.P1122129197442112489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160805 n - 4

end

end A101986.P1122129197442112489

namespace A101986

/-- `A160805(n)-4` -/
def P1122129197442112489.Spec : Prop :=
  ∀ n, P1122129197442112489.a n = A101986 n

end A101986

/-! ## A101986.P7884086249798844281

`A000290(n)+A000330(n)`
-/

namespace A101986.P7884086249798844281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000330 n

end

end A101986.P7884086249798844281

namespace A101986

/-- `A000290(n)+A000330(n)` -/
def P7884086249798844281.Spec : Prop :=
  ∀ n, P7884086249798844281.a n = A101986 n

end A101986

/-! ## A101986.P7053787570706133188

`A000330(n)+A005449(n)-A000217(n)`
-/

namespace A101986.P7053787570706133188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A005449 n - A000217 n

end

end A101986.P7053787570706133188

namespace A101986

/-- `A000330(n)+A005449(n)-A000217(n)` -/
def P7053787570706133188.Spec : Prop :=
  ∀ n, P7053787570706133188.a n = A101986 n

end A101986

/-! ## A101986.P17419518230249861778

`∑[∑[xor(1, round(2/acot(n)))]]`
-/

namespace A101986.P17419518230249861778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P17419518230249861778

namespace A101986

/-- `∑[∑[xor(1, round(2/acot(n)))]]` -/
def P17419518230249861778.Spec : Prop :=
  ∀ n, P17419518230249861778.a n = A101986 n

end A101986

/-! ## A101986.P648427233942807760

`∑[∑[floor(atan(n)+2*n)]]`
-/

namespace A101986.P648427233942807760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (2 * n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P648427233942807760

namespace A101986

/-- `∑[∑[floor(atan(n)+2*n)]]` -/
def P648427233942807760.Spec : Prop :=
  ∀ n, P648427233942807760.a n = A101986 n

end A101986

/-! ## A101986.P13728745546586396299

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A101986.P13728745546586396299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P13728745546586396299

namespace A101986

/-- `∑[∑[a(n-1)+2]]` -/
def P13728745546586396299.Spec : Prop :=
  ∀ n, (P13728745546586396299.a n : ℤ) = A101986 n

end A101986

/-! ## A101986.P4115634091461978608

`∑[∑[ogf((2x+x^2-x^3)/(1-2x+x^2))]]`
-/

namespace A101986.P4115634091461978608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P4115634091461978608

namespace A101986

/-- `∑[∑[ogf((2x+x^2-x^3)/(1-2x+x^2))]]` -/
def P4115634091461978608.Spec : Prop :=
  ∀ n, P4115634091461978608.a n = A101986 n

end A101986

/-! ## A101986.P6899414308007607423

`(n+1)²+a(n-1)-2` with `a(0)=0`
-/

namespace A101986.P6899414308007607423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (a (n - 1) - 2)

end

end A101986.P6899414308007607423

namespace A101986

/-- `(n+1)²+a(n-1)-2` -/
def P6899414308007607423.Spec : Prop :=
  ∀ n, P6899414308007607423.a n = A101986 n

end A101986

/-! ## A101986.P15073785364198417946

`∑[∑[2*n+1-C(n, n²)]]`
-/

namespace A101986.P15073785364198417946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (Nat.choose n (n ^ 2) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P15073785364198417946

namespace A101986

/-- `∑[∑[2*n+1-C(n, n²)]]` -/
def P15073785364198417946.Spec : Prop :=
  ∀ n, P15073785364198417946.a n = A101986 n

end A101986

/-! ## A101986.P7427228078393616810

`∑[∑[1-(C(n, n²)-2*n)]]`
-/

namespace A101986.P7427228078393616810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose n (n ^ 2) : ℤ) - (2 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P7427228078393616810

namespace A101986

/-- `∑[∑[1-(C(n, n²)-2*n)]]` -/
def P7427228078393616810.Spec : Prop :=
  ∀ n, P7427228078393616810.a n = A101986 n

end A101986

/-! ## A101986.P10745601608582664240

`∑[∑[2*n+1-C(n, ∑[n])]]`
-/

namespace A101986.P10745601608582664240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.choose n (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P10745601608582664240

namespace A101986

/-- `∑[∑[2*n+1-C(n, ∑[n])]]` -/
def P10745601608582664240.Spec : Prop :=
  ∀ n, P10745601608582664240.a n = A101986 n

end A101986

/-! ## A101986.P13418261644998161688

`∑[∑[4*n-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A101986.P13418261644998161688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n f2 =>
  (4 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P13418261644998161688

namespace A101986

/-- `∑[∑[4*n-a(n-1)]]` -/
def P13418261644998161688.Spec : Prop :=
  ∀ n, P13418261644998161688.a n = A101986 n

end A101986

/-! ## A101986.P16477318871922820512

`a(n-1)+n*(n+2)-1` with `a(0)=0`
-/

namespace A101986.P16477318871922820512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n * (n + 2) : ℤ) - 1)

end

end A101986.P16477318871922820512

namespace A101986

/-- `a(n-1)+n*(n+2)-1` -/
def P16477318871922820512.Spec : Prop :=
  ∀ n, P16477318871922820512.a n = A101986 n

end A101986

/-! ## A101986.P4551310877149586542

`∑[∑[2*n]+(2*n)%(n+1)]`
-/

namespace A101986.P4551310877149586542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P4551310877149586542

namespace A101986

/-- `∑[∑[2*n]+(2*n)%(n+1)]` -/
def P4551310877149586542.Spec : Prop :=
  ∀ n, (P4551310877149586542.a n : ℤ) = A101986 n

end A101986

/-! ## A101986.P10728129960055859606

`n*(2-((1-a(n-1))/n-n))` with `a(0)=0`
-/

namespace A101986.P10728129960055859606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (2 - ((1 - a (n - 1)) / (n : ℚ) - (n : ℚ)))

end

end A101986.P10728129960055859606

namespace A101986

/-- `n*(2-((1-a(n-1))/n-n))` -/
def P10728129960055859606.Spec : Prop :=
  ∀ n, P10728129960055859606.a n = (A101986 n : ℚ)

end A101986

/-! ## A101986.P15668344315521674684

`∑[floor((n+3)/(n+2)*lcm(n, n+1))]`
-/

namespace A101986.P15668344315521674684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (n + 2 : ℚ) * (Nat.lcm n (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101986.P15668344315521674684

namespace A101986

/-- `∑[floor((n+3)/(n+2)*lcm(n, n+1))]` -/
def P15668344315521674684.Spec : Prop :=
  ∀ n, P15668344315521674684.a n = A101986 n

end A101986

/-! ## A101986.P7356704172533701594

`(∑[∑[2*n+1]]-(2*n+1))*gcd(n, n+1)`
-/

namespace A101986.P7356704172533701594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)) * (Nat.gcd n (n + 1) : ℤ)

end

end A101986.P7356704172533701594

namespace A101986

/-- `(∑[∑[2*n+1]]-(2*n+1))*gcd(n, n+1)` -/
def P7356704172533701594.Spec : Prop :=
  ∀ n, P7356704172533701594.a n = A101986 n

end A101986

/-! ## A101986.P16317631576219684090

`(∑[∑[2*n+1]]-(2*n+1))*and(1, 2*n+1)`
-/

namespace A101986.P16317631576219684090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)) * (Nat.land 1 (2 * n + 1) : ℤ)

end

end A101986.P16317631576219684090

namespace A101986

/-- `(∑[∑[2*n+1]]-(2*n+1))*and(1, 2*n+1)` -/
def P16317631576219684090.Spec : Prop :=
  ∀ n, P16317631576219684090.a n = A101986 n

end A101986

/-!
# A101987: Product of nonzero digits of n-th prime.

The programs for A101987, the canonical program `A101987.P17223147805662488485` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101987 has offset 1).

The definition of A101987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101987.P9673908857247788422

`∏{digits}[A028905(n+1), #]`
-/

namespace A101987.P9673908857247788422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A101987.P9673908857247788422

namespace A101987

/-- `∏{digits}[A028905(n+1), #]` -/
def P9673908857247788422.Spec : Prop :=
  ∀ n, (P9673908857247788422.a n : ℤ) = A101987 (n + 1)

end A101987

/-! ## A101987.P17223147805662488485

`∏{digits}[A000040(n+1), gcd(#, #!²)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101987

/-- `∏{digits}[A000040(n+1), gcd(#, #!²)]` -/
def P17223147805662488485.Spec : Prop :=
  ∀ n, (P17223147805662488485.a n : ℤ) = A101987 (n + 1)

theorem P17223147805662488485.correct : P17223147805662488485.Spec := by
  intro n
  simp only [A101987, Nat.add_sub_cancel]

end A101987

/-! ## A101987.P2498222878119743500

`∏{digits}[A000040(n+1), A028310(#)]`
-/

namespace A101987.P2498222878119743500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A101987.P2498222878119743500

namespace A101987

/-- `∏{digits}[A000040(n+1), A028310(#)]` -/
def P2498222878119743500.Spec : Prop :=
  ∀ n, P2498222878119743500.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P9356429570925944840

`∏{digits}[A000040(n+1), A033930(#)]`
-/

namespace A101987.P9356429570925944840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033930 x).prod

end

end A101987.P9356429570925944840

namespace A101987

/-- `∏{digits}[A000040(n+1), A033930(#)]` -/
def P9356429570925944840.Spec : Prop :=
  ∀ n, P9356429570925944840.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P17500941437680768435

`∏{digits}[record[A006530(n+2)], A028310(#)]`
-/

namespace A101987.P17500941437680768435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A101987.P17500941437680768435

namespace A101987

/-- `∏{digits}[record[A006530(n+2)], A028310(#)]` -/
def P17500941437680768435.Spec : Prop :=
  ∀ n, P17500941437680768435.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P375252663572275429

`∏{digits}[record[A020639(n+2)], A028310(#)]`
-/

namespace A101987.P375252663572275429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A101987.P375252663572275429

namespace A101987

/-- `∏{digits}[record[A020639(n+2)], A028310(#)]` -/
def P375252663572275429.Spec : Prop :=
  ∀ n, P375252663572275429.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P4923695173392849997

`A051801(A171013(n+1))`
-/

namespace A101987.P4923695173392849997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A171013 (n + 1)).toNat

end

end A101987.P4923695173392849997

namespace A101987

/-- `A051801(A171013(n+1))` -/
def P4923695173392849997.Spec : Prop :=
  ∀ n, P4923695173392849997.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P8233112125037409162

`A007954(A028905(n+1))`
-/

namespace A101987.P8233112125037409162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A028905 (n + 1)).toNat

end

end A101987.P8233112125037409162

namespace A101987

/-- `A007954(A028905(n+1))` -/
def P8233112125037409162.Spec : Prop :=
  ∀ n, P8233112125037409162.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P8537839685456690554

`A051801(Δ[A007504(n)])`
-/

namespace A101987.P8537839685456690554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (n + 1) - f1 n).toNat

end

end A101987.P8537839685456690554

namespace A101987

/-- `A051801(Δ[A007504(n)])` -/
def P8537839685456690554.Spec : Prop :=
  ∀ n, P8537839685456690554.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P149553009595575764

`A051801(record[A162753(n)])`
-/

namespace A101987.P149553009595575764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101987.P149553009595575764

namespace A101987

/-- `A051801(record[A162753(n)])` -/
def P149553009595575764.Spec : Prop :=
  ∀ n, P149553009595575764.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P12534420075161266377

`A051801(A000040(n+1))`
-/

namespace A101987.P12534420075161266377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A000040 (n + 1)).toNat

end

end A101987.P12534420075161266377

namespace A101987

/-- `A051801(A000040(n+1))` -/
def P12534420075161266377.Spec : Prop :=
  ∀ n, P12534420075161266377.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P16421161700534174526

`A051801(A004087(n+1))`
-/

namespace A101987.P16421161700534174526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A004087 (n + 1)).toNat

end

end A101987.P16421161700534174526

namespace A101987

/-- `A051801(A004087(n+1))` -/
def P16421161700534174526.Spec : Prop :=
  ∀ n, P16421161700534174526.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P2340003316286259744

`A051801(A028906(n+1))`
-/

namespace A101987.P2340003316286259744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A028906 (n + 1)).toNat

end

end A101987.P2340003316286259744

namespace A101987

/-- `A051801(A028906(n+1))` -/
def P2340003316286259744.Spec : Prop :=
  ∀ n, P2340003316286259744.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P6718174699761578391

`A051801(A008578(n+2))`
-/

namespace A101987.P6718174699761578391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A008578 (n + 2)).toNat

end

end A101987.P6718174699761578391

namespace A101987

/-- `A051801(A008578(n+2))` -/
def P6718174699761578391.Spec : Prop :=
  ∀ n, P6718174699761578391.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P11732469026020088253

`A051801(A182986(n+2))`
-/

namespace A101987.P11732469026020088253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A182986 (n + 2)).toNat

end

end A101987.P11732469026020088253

namespace A101987

/-- `A051801(A182986(n+2))` -/
def P11732469026020088253.Spec : Prop :=
  ∀ n, P11732469026020088253.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P10981473546636572909

`A051801(eq[2, A225244(n)])`
-/

namespace A101987.P10981473546636572909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101987.P10981473546636572909

namespace A101987

/-- `A051801(eq[2, A225244(n)])` -/
def P10981473546636572909.Spec : Prop :=
  ∀ n, P10981473546636572909.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P11142870417049357357

`A051801(record[A006530(n+2)])`
-/

namespace A101987.P11142870417049357357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101987.P11142870417049357357

namespace A101987

/-- `A051801(record[A006530(n+2)])` -/
def P11142870417049357357.Spec : Prop :=
  ∀ n, P11142870417049357357.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P11267416534803931053

`A051801(record[A020639(n+2)])`
-/

namespace A101987.P11267416534803931053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101987.P11267416534803931053

namespace A101987

/-- `A051801(record[A020639(n+2)])` -/
def P11267416534803931053.Spec : Prop :=
  ∀ n, P11267416534803931053.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P8646765005477424383

`A051801(eq[1, A053989(n+1)])`
-/

namespace A101987.P8646765005477424383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101987.P8646765005477424383

namespace A101987

/-- `A051801(eq[1, A053989(n+1)])` -/
def P8646765005477424383.Spec : Prop :=
  ∀ n, P8646765005477424383.a n = A101987 (n + 1)

end A101987

/-! ## A101987.P295818537451564203

`∏{digits}[A004719(record[A020639(n+2)]), #]`
-/

namespace A101987.P295818537451564203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A101987.P295818537451564203

namespace A101987

/-- `∏{digits}[A004719(record[A020639(n+2)]), #]` -/
def P295818537451564203.Spec : Prop :=
  ∀ n, (P295818537451564203.a n : ℤ) = A101987 (n + 1)

end A101987

/-!
# A101988: Number of primes (with repetition) that can be formed from digits of the n-th prime.

The programs for A101988, there is no canonical definition to state claims against.
-/

/-! ## A101988.P7221039393753683617

`or(A039992(n+1), A316863(A151722(n)))`
-/

namespace A101988.P7221039393753683617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039992 (n + 1)) (A316863 (A151722 n).toNat)

end

end A101988.P7221039393753683617

/-! ## A101988.P18262930904504803995

`or(A039993(p?[xor(1, n)]), A316863(A151722(n)))`
-/

namespace A101988.P18262930904504803995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039993 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (A316863 (A151722 n).toNat)

end

end A101988.P18262930904504803995

/-! ## A101988.P3073631460116608042

`or(A039972(A078667(n+1)), A039992(n+1))`
-/

namespace A101988.P3073631460116608042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039972 (A078667 (n + 1)).toNat) (A039992 (n + 1))

end

end A101988.P3073631460116608042

/-! ## A101988.P2732283837273223225

`or(A039992(n+1), A164292(A158485(n+1)))`
-/

namespace A101988.P2732283837273223225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039992 (n + 1)) (A164292 (A158485 (n + 1)).toNat)

end

end A101988.P2732283837273223225

/-! ## A101988.P5097875990254319995

`or(A039993(A000040(n+1)), A316863(A151722(n)))`
-/

namespace A101988.P5097875990254319995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039993 (A000040 (n + 1)).toNat) (A316863 (A151722 n).toNat)

end

end A101988.P5097875990254319995

/-!
# A101989: Largest prime which can be formed from digits of n-th prime p(n).

The programs for A101989, there is no canonical definition to state claims against.
-/

/-! ## A101989.P5172907127060486431

`A101991(A000040(n+1))`
-/

namespace A101989.P5172907127060486431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 (A000040 (n + 1)).toNat

end

end A101989.P5172907127060486431

/-! ## A101989.P16306961239520441414

`A101991(A004087(n+1))`
-/

namespace A101989.P16306961239520441414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 (A004087 (n + 1)).toNat

end

end A101989.P16306961239520441414

/-! ## A101989.P10303179984001956266

`A101991(A028906(n+1))`
-/

namespace A101989.P10303179984001956266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 (A028906 (n + 1)).toNat

end

end A101989.P10303179984001956266

/-! ## A101989.P10979875110660708809

`A101991(A008578(n+2))`
-/

namespace A101989.P10979875110660708809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 (A008578 (n + 2)).toNat

end

end A101989.P10979875110660708809

/-! ## A101989.P8753450259205686014

`A101991(A182986(n+2))`
-/

namespace A101989.P8753450259205686014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 (A182986 (n + 2)).toNat

end

end A101989.P8753450259205686014

/-!
# A101990: a(1) = a(2) = 1, a(3) = 9; for n > 3, a(n) = 3*a(n-1) - 3*a(n-2) + 9*a(n-3).

The programs for A101990, the canonical program `A101990.P1981329996751615840` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101990 has offset 1).

The definition of A101990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+9*a(n-3)` (program `A101990.P1981329996751615840`, by `A101990.P1981329996751615840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101990.P1981329996751615840

`3*a(n-1)-3*a(n-2)+9*a(n-3)` with `a(0)=1, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101990

/-- `3*a(n-1)-3*a(n-2)+9*a(n-3)` -/
def P1981329996751615840.Spec : Prop :=
  ∀ n, P1981329996751615840.a n = A101990 (n + 1)

theorem P1981329996751615840.correct : P1981329996751615840.Spec := by
  intro n
  simp only [A101990, Nat.add_sub_cancel]

end A101990

/-! ## A101990.P4858992624399203919

`3^((n+1)/2-1)*(2*cos((n+1)*π/2)+3^((n+1)/2))`
-/

namespace A101990.P4858992624399203919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n + 1 : ℚ) / 2 - 1 : ℝ) * (2 * Real.cos ((n + 1 : ℝ) * Real.pi / 2) + (3 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ))

end

end A101990.P4858992624399203919

namespace A101990

/-- `3^((n+1)/2-1)*(2*cos((n+1)*π/2)+3^((n+1)/2))` -/
def P4858992624399203919.Spec : Prop :=
  ∀ n, P4858992624399203919.a n = (A101990 (n + 1) : ℝ)

end A101990

/-! ## A101990.P1729100347036698288

`a(n-1)+2*A318610(n)` with `a(0)=1`
-/

namespace A101990.P1729100347036698288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A318610 n

end

end A101990.P1729100347036698288

namespace A101990

/-- `a(n-1)+2*A318610(n)` -/
def P1729100347036698288.Spec : Prop :=
  ∀ n, P1729100347036698288.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P4647894356858759231

`ogf((1-2x+9x^2)/(1-3x+3x^2-9x^3))`
-/

namespace A101990.P4647894356858759231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 9] [1, -3, 3, -9] n

end

end A101990.P4647894356858759231

namespace A101990

/-- `ogf((1-2x+9x^2)/(1-3x+3x^2-9x^3))` -/
def P4647894356858759231.Spec : Prop :=
  ∀ n, P4647894356858759231.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P6045015024174416716

`A003946(n)-3*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A101990.P6045015024174416716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003946 n - 3 * a (n - 2)

end

end A101990.P6045015024174416716

namespace A101990

/-- `A003946(n)-3*a(n-2)` -/
def P6045015024174416716.Spec : Prop :=
  ∀ n, P6045015024174416716.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P1685822475058588548

`A318610(n+1)+(-3)^ceil(n/2)`
-/

namespace A101990.P1685822475058588548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318610 (n + 1) : ℚ) + (-3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A101990.P1685822475058588548

namespace A101990

/-- `A318610(n+1)+(-3)^ceil(n/2)` -/
def P1685822475058588548.Spec : Prop :=
  ∀ n, P1685822475058588548.a n = (A101990 (n + 1) : ℚ)

end A101990

/-! ## A101990.P9393116534192120347

`A073947(n+1)+Δ[A073948(n+1)]`
-/

namespace A101990.P9393116534192120347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1) + (f1 (n + 1) - f1 n)

end

end A101990.P9393116534192120347

namespace A101990

/-- `A073947(n+1)+Δ[A073948(n+1)]` -/
def P9393116534192120347.Spec : Prop :=
  ∀ n, P9393116534192120347.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P9751024926840017364

`A073952(n+1)+Δ[A073950(n+1)]`
-/

namespace A101990.P9751024926840017364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1) + (f1 (n + 1) - f1 n)

end

end A101990.P9751024926840017364

namespace A101990

/-- `A073952(n+1)+Δ[A073950(n+1)]` -/
def P9751024926840017364.Spec : Prop :=
  ∀ n, P9751024926840017364.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P15671036297140607203

`A073947(n+1)+2*A073952(n+1)`
-/

namespace A101990.P15671036297140607203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1) + 2 * A073952 (n + 1)

end

end A101990.P15671036297140607203

namespace A101990

/-- `A073947(n+1)+2*A073952(n+1)` -/
def P15671036297140607203.Spec : Prop :=
  ∀ n, P15671036297140607203.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P4039721760162870789

`Δ[∑[A287479(n+1)]*A287479(n+1)]`
-/

namespace A101990.P4039721760162870789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A287479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101990.P4039721760162870789

namespace A101990

/-- `Δ[∑[A287479(n+1)]*A287479(n+1)]` -/
def P4039721760162870789.Spec : Prop :=
  ∀ n, P4039721760162870789.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P8763540071611066514

`2*Δ[A073950(n+1)]-A073947(n+1)`
-/

namespace A101990.P8763540071611066514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A073947 (n + 1)

end

end A101990.P8763540071611066514

namespace A101990

/-- `2*Δ[A073950(n+1)]-A073947(n+1)` -/
def P8763540071611066514.Spec : Prop :=
  ∀ n, P8763540071611066514.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P16423205270983365769

`A073947(n+1)+A073948(n+2)-A073948(n+1)`
-/

namespace A101990.P16423205270983365769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1) + (A073948 (n + 2) - A073948 (n + 1))

end

end A101990.P16423205270983365769

namespace A101990

/-- `A073947(n+1)+A073948(n+2)-A073948(n+1)` -/
def P16423205270983365769.Spec : Prop :=
  ∀ n, P16423205270983365769.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P668225570341140502

`A073952(n+1)+A073950(n+2)-A073950(n+1)`
-/

namespace A101990.P668225570341140502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1) + (A073950 (n + 2) - A073950 (n + 1))

end

end A101990.P668225570341140502

namespace A101990

/-- `A073952(n+1)+A073950(n+2)-A073950(n+1)` -/
def P668225570341140502.Spec : Prop :=
  ∀ n, P668225570341140502.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P12283447674726926107

`A182522(2*n+1)+A056594(n+1)*A182522(n+1)`
-/

namespace A101990.P12283447674726926107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (2 * n + 1) + A056594 (n + 1) * A182522 (n + 1)

end

end A101990.P12283447674726926107

namespace A101990

/-- `A182522(2*n+1)+A056594(n+1)*A182522(n+1)` -/
def P12283447674726926107.Spec : Prop :=
  ∀ n, P12283447674726926107.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P11671317874408694879

`Δ[A318609(n+1)/2]`
-/

namespace A101990.P11671317874408694879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318609 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101990.P11671317874408694879

namespace A101990

/-- `Δ[A318609(n+1)/2]` -/
def P11671317874408694879.Spec : Prop :=
  ∀ n, P11671317874408694879.a n = (A101990 (n + 1) : ℚ)

end A101990

/-! ## A101990.P13409813784487730394

`(A318609(n+2)-A318609(n+1))/2`
-/

namespace A101990.P13409813784487730394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318609 (n + 2) - A318609 (n + 1) : ℚ) / 2

end

end A101990.P13409813784487730394

namespace A101990

/-- `(A318609(n+2)-A318609(n+1))/2` -/
def P13409813784487730394.Spec : Prop :=
  ∀ n, P13409813784487730394.a n = (A101990 (n + 1) : ℚ)

end A101990

/-! ## A101990.P16868246862159767348

`Δ[Δ[A073949(n+1)]]-A073947(n+1)`
-/

namespace A101990.P16868246862159767348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073947 (n + 1)

end

end A101990.P16868246862159767348

namespace A101990

/-- `Δ[Δ[A073949(n+1)]]-A073947(n+1)` -/
def P16868246862159767348.Spec : Prop :=
  ∀ n, P16868246862159767348.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P6252374306350540267

`Δ[Δ[A073951(n+1)]]-A073952(n+1)`
-/

namespace A101990.P6252374306350540267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073952 (n + 1)

end

end A101990.P6252374306350540267

namespace A101990

/-- `Δ[Δ[A073951(n+1)]]-A073952(n+1)` -/
def P6252374306350540267.Spec : Prop :=
  ∀ n, P6252374306350540267.a n = A101990 (n + 1)

end A101990

/-! ## A101990.P235060373099878606

`Δ[A292491(n+2)/8]`
-/

namespace A101990.P235060373099878606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292491 (n + 2) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101990.P235060373099878606

namespace A101990

/-- `Δ[A292491(n+2)/8]` -/
def P235060373099878606.Spec : Prop :=
  ∀ n, P235060373099878606.a n = (A101990 (n + 1) : ℚ)

end A101990

/-!
# A101991: Largest prime which can be formed from digits of n, or 0 if no such prime exists.

The programs for A101991, there is no canonical definition to state claims against.
-/

/-! ## A101991.P10237268804006955827

`A047814(A068637(n+1)%A047830(n))`
-/

namespace A101991.P10237268804006955827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (Int.tmod (A068637 (n + 1)) (A047830 n)).toNat

end

end A101991.P10237268804006955827

/-! ## A101991.P13131045125266965944

`A047814(A004086(n+1))%A206642(2*n+1)`
-/

namespace A101991.P13131045125266965944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 (A004086 (n + 1)).toNat) (A206642 (2 * n + 1))

end

end A101991.P13131045125266965944

/-! ## A101991.P9004690103089967634

`A047814(A004086(A187829(n+1)))`
-/

namespace A101991.P9004690103089967634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A004086 (A187829 (n + 1)).toNat).toNat

end

end A101991.P9004690103089967634

/-! ## A101991.P11300957749740982191

`A211396(A077741(n+1))`
-/

namespace A101991.P11300957749740982191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A077741 (n + 1)).toNat

end

end A101991.P11300957749740982191

/-! ## A101991.P244766931480899559

`A211396(A083960(n+1))`
-/

namespace A101991.P244766931480899559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A083960 (n + 1)).toNat

end

end A101991.P244766931480899559

/-!
# A101992: Numerator of Sum_{i=2..n} (-1)^i/(i*phi(i)).

The programs for A101992, there is no canonical definition to state claims against.
-/

/-! ## A101992.P729242878684654666

`A160552(or(A071562(n+1), A079752(n+3)))`
-/

namespace A101992.P729242878684654666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (Int.lor (A071562 (n + 1)) (A079752 (n + 3))).toNat

end

end A101992.P729242878684654666

/-!
# A101993: Indices k for which the numerator of Sum_{i=2..k} ( (-1)^i/(i * phi(i)) ) is a prime number.

The programs for A101993, there is no canonical definition to state claims against.
-/

/-! ## A101993.P17132835438167234071

`A253723(floor(sqrt(A183344(n+1))))+2`
-/

namespace A101993.P17132835438167234071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253723 (Int.sqrt (A183344 (n + 1))).toNat + 2

end

end A101993.P17132835438167234071

/-! ## A101993.P603119180597690346

`A276611(A048493(n))+A143490(n+1)`
-/

namespace A101993.P603119180597690346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A048493 n).toNat + A143490 (n + 1)

end

end A101993.P603119180597690346

/-! ## A101993.P7532102770921446597

`A036469(n)+A036444(A034082(n+2))`
-/

namespace A101993.P7532102770921446597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n + A036444 (A034082 (n + 2)).toNat

end

end A101993.P7532102770921446597

/-! ## A101993.P7949808690674024073

`A210841(A061645(2*n+1))+A000041(n)`
-/

namespace A101993.P7949808690674024073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210841 (A061645 (2 * n + 1)).toNat + A000041 n

end

end A101993.P7949808690674024073

/-!
# A101994: Numbers k such that 4*k-1, 8*k-1, 16*k-1, 32*k-1 and 64*k-1 are all primes.

The programs for A101994, there is no canonical definition to state claims against.
-/

/-! ## A101994.P13907175421000211837

`ceil(A101996(n+1)/8)`
-/

namespace A101994.P13907175421000211837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101996 (n + 1) : ℚ) / 8⌉

end

end A101994.P13907175421000211837

/-! ## A101994.P1258145063852195760

`(A101995(n+1)+1)/4`
-/

namespace A101994.P1258145063852195760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101995 (n + 1) + 1 : ℚ) / 4

end

end A101994.P1258145063852195760

/-! ## A101994.P9643782593673165306

`ceil(or(1, 2*A101996(A005408(n)-n))/16)`
-/

namespace A101994.P9643782593673165306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 (2 * A101996 (A005408 n - (n : ℤ)).toNat) : ℚ) / 16⌉

end

end A101994.P9643782593673165306

/-! ## A101994.P7735063416334074578

`∩[ceil(A101794(n+1)/2), A101794(n+1)]`
-/

namespace A101994.P7735063416334074578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101794 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101994.P7735063416334074578

/-! ## A101994.P3793459813508806712

`ceil(∩[A101797(n+1), A162019(n+1)]/16)`
-/

namespace A101994.P3793459813508806712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162019 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 16⌉

end

end A101994.P3793459813508806712

/-! ## A101994.P4825103262913715856

`ceil(∩[A023302(n+1), A101795(n+1)]/4)`
-/

namespace A101994.P4825103262913715856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101795 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 4⌉

end

end A101994.P4825103262913715856

/-!
# A101995: Primes of the form 4*k-1 such that 8*k-1, 16*k-1, 32*k-1 and 64*k-1 are also primes.

The programs for A101995, there is no canonical definition to state claims against.
-/

/-! ## A101995.P5098557117224340417

`4*A101994(n+1)-1`
-/

namespace A101995.P5098557117224340417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101994 (n + 1) - 1

end

end A101995.P5098557117224340417

/-! ## A101995.P4107665671632892580

`floor(A101996(n+1)/2)`
-/

namespace A101995.P4107665671632892580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101996 (n + 1) : ℚ) / 2⌋

end

end A101995.P4107665671632892580

/-! ## A101995.P6533546333504326922

`floor(A101997(n+1)/4)`
-/

namespace A101995.P6533546333504326922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101997 (n + 1) : ℚ) / 4⌋

end

end A101995.P6533546333504326922

/-! ## A101995.P2278779986515225047

`A101996(n+1)%(4*A101994(n+1))`
-/

namespace A101995.P2278779986515225047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101996 (n + 1)) (4 * A101994 (n + 1))

end

end A101995.P2278779986515225047

/-! ## A101995.P17773416776484932538

`∩[A023302(n+1), A101795(n+1)]`
-/

namespace A101995.P17773416776484932538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101995.P17773416776484932538

/-! ## A101995.P12113065346036604253

`∩[A023302(n+1), A101791(n+1)]`
-/

namespace A101995.P12113065346036604253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101995.P12113065346036604253

/-! ## A101995.P6407138804930434743

`(A101996(n+1)-A007318(∑[n]))/2`
-/

namespace A101995.P6407138804930434743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101996 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A101995.P6407138804930434743

/-!
# A101996: Primes of the form 8*k-1 such that 4*k-1, 16*k-1, 32*k-1 and 64*k-1 are also primes.

The programs for A101996, there is no canonical definition to state claims against.
-/

/-! ## A101996.P7450553782031931289

`2*A101995(n+1)+1`
-/

namespace A101996.P7450553782031931289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101995 (n + 1) + 1

end

end A101996.P7450553782031931289

/-! ## A101996.P18232809399813095465

`8*A101994(n+1)-1`
-/

namespace A101996.P18232809399813095465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A101994 (n + 1) - 1

end

end A101996.P18232809399813095465

/-! ## A101996.P18230385794882862279

`(A101997(n+1)-1)/2`
-/

namespace A101996.P18230385794882862279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101997 (n + 1) - 1 : ℚ) / 2

end

end A101996.P18230385794882862279

/-! ## A101996.P2876609818883616274

`(A101998(n+1)-3)/4`
-/

namespace A101996.P2876609818883616274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101998 (n + 1) - 3 : ℚ) / 4

end

end A101996.P2876609818883616274

/-! ## A101996.P4743650102561171979

`A008683(A007918(n))+8*A101994(n+1)`
-/

namespace A101996.P4743650102561171979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 8 * A101994 (n + 1)

end

end A101996.P4743650102561171979

/-! ## A101996.P15963275859036262931

`A008683(A023590(n+1))+8*A101994(n+1)`
-/

namespace A101996.P15963275859036262931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A023590 (n + 1)).toNat + 8 * A101994 (n + 1)

end

end A101996.P15963275859036262931

/-! ## A101996.P11305798741166184194

`A008683(A002476(n+1))+8*A101994(n+1)`
-/

namespace A101996.P11305798741166184194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002476 (n + 1)).toNat + 8 * A101994 (n + 1)

end

end A101996.P11305798741166184194

/-! ## A101996.P7866698877924705049

`∩[A101795(n+1), A101796(n+1)]`
-/

namespace A101996.P7866698877924705049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101996.P7866698877924705049

/-! ## A101996.P9843010641898482093

`A008683(A076163(n+1))+8*A101994(n+1)`
-/

namespace A101996.P9843010641898482093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A076163 (n + 1)).toNat + 8 * A101994 (n + 1)

end

end A101996.P9843010641898482093

/-! ## A101996.P654214453216028904

`2*∩[A023302(n+1), A101795(n+1)]+1`
-/

namespace A101996.P654214453216028904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A101996.P654214453216028904

/-! ## A101996.P16324170717285218292

`∩[A023272(n+1), A101796(n+1)]`
-/

namespace A101996.P16324170717285218292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101996.P16324170717285218292

/-! ## A101996.P17771026993167788627

`∩[A023272(n+1), A101792(n+1)]`
-/

namespace A101996.P17771026993167788627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101996.P17771026993167788627

/-! ## A101996.P211648403353792604

`∩[A101792(n+1), A101795(n+1)]`
-/

namespace A101996.P211648403353792604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101996.P211648403353792604

/-!
# A101997: Primes of the form 16*k-1 such that 4*k-1, 8*k-1, 32*k-1 and 64*k-1 are also primes.

The programs for A101997, there is no canonical definition to state claims against.
-/

/-! ## A101997.P5969639919845566528

`2*A101996(n+1)+1`
-/

namespace A101997.P5969639919845566528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101996 (n + 1) + 1

end

end A101997.P5969639919845566528

/-! ## A101997.P16073642200477251110

`4*A101995(n+1)+3`
-/

namespace A101997.P16073642200477251110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101995 (n + 1) + 3

end

end A101997.P16073642200477251110

/-! ## A101997.P17025697987156680383

`16*A101994(n+1)-1`
-/

namespace A101997.P17025697987156680383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A101994 (n + 1) - 1

end

end A101997.P17025697987156680383

/-! ## A101997.P397579512735540647

`(A101998(n+1)-1)/2`
-/

namespace A101997.P397579512735540647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101998 (n + 1) - 1 : ℚ) / 2

end

end A101997.P397579512735540647

/-! ## A101997.P7791730666564332900

`(A101999(n+1)-3)/4`
-/

namespace A101997.P7791730666564332900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101999 (n + 1) - 3 : ℚ) / 4

end

end A101997.P7791730666564332900

/-! ## A101997.P4240252019041747931

`or(1, 2*A101996(A005408(n)-n))`
-/

namespace A101997.P4240252019041747931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A101996 (A005408 n - (n : ℤ)).toNat)

end

end A101997.P4240252019041747931

/-! ## A101997.P7229995858054734530

`∩[A101796(n+1), A101797(n+1)]`
-/

namespace A101997.P7229995858054734530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101997.P7229995858054734530

/-! ## A101997.P9941988215377294771

`∩[A101797(n+1), A162019(n+1)]`
-/

namespace A101997.P9941988215377294771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101997.P9941988215377294771

/-! ## A101997.P9848260736921305070

`∩[A101793(n+1), A101796(n+1)]`
-/

namespace A101997.P9848260736921305070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101997.P9848260736921305070

/-! ## A101997.P8077892126344958425

`∩[A101793(n+1), A162019(n+1)]`
-/

namespace A101997.P8077892126344958425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101997.P8077892126344958425

/-!
# A101998: Primes of the form 32*k-1 such that 4*k-1, 8*k-1, 16*k-1 and 64*k-1 are also primes.

The programs for A101998, there is no canonical definition to state claims against.
-/

/-! ## A101998.P11959034588785696727

`2*A101997(n+1)+1`
-/

namespace A101998.P11959034588785696727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101997 (n + 1) + 1

end

end A101998.P11959034588785696727

/-! ## A101998.P1665907083758039931

`4*A101996(n+1)+3`
-/

namespace A101998.P1665907083758039931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101996 (n + 1) + 3

end

end A101998.P1665907083758039931

/-! ## A101998.P6175955250189435091

`8*A101995(n+1)+7`
-/

namespace A101998.P6175955250189435091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A101995 (n + 1) + 7

end

end A101998.P6175955250189435091

/-! ## A101998.P13764727028462865573

`32*A101994(n+1)-1`
-/

namespace A101998.P13764727028462865573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A101994 (n + 1) - 1

end

end A101998.P13764727028462865573

/-! ## A101998.P17038026299049449695

`(A101999(n+1)-1)/2`
-/

namespace A101998.P17038026299049449695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101999 (n + 1) - 1 : ℚ) / 2

end

end A101998.P17038026299049449695

/-! ## A101998.P17540694499874815902

`or(1, 2*A101997(A005408(n)-n))`
-/

namespace A101998.P17540694499874815902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A101997 (A005408 n - (n : ℤ)).toNat)

end

end A101998.P17540694499874815902

/-! ## A101998.P5327135916689460336

`∩[A101797(n+1), A101798(n+1)]`
-/

namespace A101998.P5327135916689460336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101998.P5327135916689460336

/-!
# A101999: Primes of the form 64*k-1 such that 4*k-1, 8*k-1, 16*k-1 and 32*k-1 are also primes.

The programs for A101999, there is no canonical definition to state claims against.
-/

/-! ## A101999.P364345997105238619

`2*A101998(n+1)+1`
-/

namespace A101999.P364345997105238619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101998 (n + 1) + 1

end

end A101999.P364345997105238619

/-! ## A101999.P8967484793710745311

`4*A101997(n+1)+3`
-/

namespace A101999.P8967484793710745311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101997 (n + 1) + 3

end

end A101999.P8967484793710745311

/-! ## A101999.P3911816416784510437

`8*A101996(n+1)+7`
-/

namespace A101999.P3911816416784510437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A101996 (n + 1) + 7

end

end A101999.P3911816416784510437

/-! ## A101999.P3134160722923528279

`16*A101995(n+1)+15`
-/

namespace A101999.P3134160722923528279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A101995 (n + 1) + 15

end

end A101999.P3134160722923528279

/-! ## A101999.P5435830923787673232

`64*A101994(n+1)-1`
-/

namespace A101999.P5435830923787673232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A101994 (n + 1) - 1

end

end A101999.P5435830923787673232

