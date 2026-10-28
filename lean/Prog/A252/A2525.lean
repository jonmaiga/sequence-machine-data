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
import Seq.B000.C016
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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A252501: Triangle T read by rows: T(n,k) = binomial(2*n+1,k)*binomial(n,k), n>=0, 0<=k<=n.

The programs for A252501, the canonical program `A252501.P5104558938857050253` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252501 has offset 0).

The definition of A252501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n)+1, col(n))*C(row(n), col(n))` (program `A252501.P5104558938857050253`, by `A252501.P5104558938857050253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A252501.P5104558938857050253

`C(2*row(n)+1, col(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A252501

/-- `C(2*row(n)+1, col(n))*C(row(n), col(n))` -/
def P5104558938857050253.Spec : Prop :=
  ∀ n, (P5104558938857050253.a n : ℤ) = A252501 n

theorem P5104558938857050253.correct : P5104558938857050253.Spec := by
  intro n
  simp only [A252501]

end A252501

/-! ## A252501.P5084084635245530048

`C(∑[2*char[∑[n]]]-1, n-C(∑[char[∑[n]]], 2))*A007318(n)`
-/

namespace A252501.P5084084635245530048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) * A007318 n

end

end A252501.P5084084635245530048

namespace A252501

/-- `C(∑[2*char[∑[n]]]-1, n-C(∑[char[∑[n]]], 2))*A007318(n)` -/
def P5084084635245530048.Spec : Prop :=
  ∀ n, P5084084635245530048.a n = A252501 n

end A252501

/-! ## A252501.P335988119003676303

`A007318(n)*A122366(n)`
-/

namespace A252501.P335988119003676303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A122366 n

end

end A252501.P335988119003676303

namespace A252501

/-- `A007318(n)*A122366(n)` -/
def P335988119003676303.Spec : Prop :=
  ∀ n, P335988119003676303.a n = A252501 n

theorem P335988119003676303.correct : P335988119003676303.Spec := by
  intro n
  simp only [A252501, Nat.add_sub_cancel, A252501.P335988119003676303.a, A252501.P5104558938857050253.a, A007318, A007318.P11755526479805562006.a, A122366, A122366.P6222719842322241267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252501

/-! ## A252501.P10375815579973921323

`abs(A108086(n)*A122366(n))`
-/

namespace A252501.P10375815579973921323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A122366 n|

end

end A252501.P10375815579973921323

namespace A252501

/-- `abs(A108086(n)*A122366(n))` -/
def P10375815579973921323.Spec : Prop :=
  ∀ n, P10375815579973921323.a n = A252501 n

end A252501

/-! ## A252501.P13295365577256619857

`abs(A122366(n)*A130595(n))`
-/

namespace A252501.P13295365577256619857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122366 n * A130595 n|

end

end A252501.P13295365577256619857

namespace A252501

/-- `abs(A122366(n)*A130595(n))` -/
def P13295365577256619857.Spec : Prop :=
  ∀ n, P13295365577256619857.a n = A252501 n

end A252501

/-! ## A252501.P16366671721853052708

`sqrt(A008459(n))*A122366(n)`
-/

namespace A252501.P16366671721853052708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A122366 n : ℝ)

end

end A252501.P16366671721853052708

namespace A252501

/-- `sqrt(A008459(n))*A122366(n)` -/
def P16366671721853052708.Spec : Prop :=
  ∀ n, P16366671721853052708.a n = (A252501 n : ℝ)

end A252501

/-!
# A252502: Number of digits of Phi_n(10), or number of digits in base b of Phi_n(b), where Phi is the cyclotomic polynomial.

The programs for A252502, the canonical program `A252502.P779221779202947021` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252502 has offset 1).

The definition of A252502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252502.P3367041076545644916

`A268387(∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A252502.P3367041076545644916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268387 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A252502.P3367041076545644916

namespace A252502

/-- `A268387(∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P3367041076545644916.Spec : Prop :=
  ∀ n, P3367041076545644916.a n = (A252502 (n + 1) : ℚ)

end A252502

/-! ## A252502.P779221779202947021

`A092248(n+1)+Δ[A002088(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A252502

/-- `A092248(n+1)+Δ[A002088(n)]` -/
def P779221779202947021.Spec : Prop :=
  ∀ n, P779221779202947021.a n = A252502 (n + 1)

theorem P779221779202947021.correct : P779221779202947021.Spec := by
  intro n
  simp only [A252502, Nat.add_sub_cancel]

end A252502

/-! ## A252502.P16614952398601018823

`A092248(n+1)+A000010(n+1)`
-/

namespace A252502.P16614952398601018823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1) + A000010 (n + 1)

end

end A252502.P16614952398601018823

namespace A252502

/-- `A092248(n+1)+A000010(n+1)` -/
def P16614952398601018823.Spec : Prop :=
  ∀ n, P16614952398601018823.a n = A252502 (n + 1)

end A252502

/-! ## A252502.P9104291087302742597

`A000010(n+1)+A001221(n+1)%2`
-/

namespace A252502.P9104291087302742597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + Int.tmod (A001221 (n + 1)) 2

end

end A252502.P9104291087302742597

namespace A252502

/-- `A000010(n+1)+A001221(n+1)%2` -/
def P9104291087302742597.Spec : Prop :=
  ∀ n, P9104291087302742597.a n = A252502 (n + 1)

end A252502

/-! ## A252502.P17915507686385720251

`A066829(∏{p}[n+1, #])+A000010(n+1)`
-/

namespace A252502.P17915507686385720251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (∏ p ∈ Nat.primeFactors (f1 n), p) + A000010 (n + 1)

end

end A252502.P17915507686385720251

namespace A252502

/-- `A066829(∏{p}[n+1, #])+A000010(n+1)` -/
def P17915507686385720251.Spec : Prop :=
  ∀ n, P17915507686385720251.a n = A252502 (n + 1)

end A252502

/-! ## A252502.P11143045135838086666

`A039649(n+1)-A002324(A034444(n+1))`
-/

namespace A252502.P11143045135838086666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A002324 (A034444 (n + 1)).toNat

end

end A252502.P11143045135838086666

namespace A252502

/-- `A039649(n+1)-A002324(A034444(n+1))` -/
def P11143045135838086666.Spec : Prop :=
  ∀ n, P11143045135838086666.a n = A252502 (n + 1)

end A252502

/-! ## A252502.P12472823375553567754

`A092248(n+1)+A319340(n+1)-A023900(n+1)`
-/

namespace A252502.P12472823375553567754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1) + (A319340 (n + 1) - A023900 (n + 1))

end

end A252502.P12472823375553567754

namespace A252502

/-- `A092248(n+1)+A319340(n+1)-A023900(n+1)` -/
def P12472823375553567754.Spec : Prop :=
  ∀ n, P12472823375553567754.a n = A252502 (n + 1)

end A252502

/-! ## A252502.P8103013413977944935

`ceil(log2(A019320(n+1)+1))`
-/

namespace A252502.P8103013413977944935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A019320 (n + 1) + 1 : ℝ)⌉

end

end A252502.P8103013413977944935

namespace A252502

/-- `ceil(log2(A019320(n+1)+1))` -/
def P8103013413977944935.Spec : Prop :=
  ∀ n, P8103013413977944935.a n = A252502 (n + 1)

end A252502

/-!
# A252505: Number of biquadratefree (4th power free) divisors of n.

The programs for A252505, the canonical program `A252505.P33012695452401926` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252505 has offset 1).

The definition of A252505 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058035, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252505.P5642343366719817736

`∑{d}[n+1, A307430(#)]`
-/

namespace A252505.P5642343366719817736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307430 d

end

end A252505.P5642343366719817736

namespace A252505

/-- `∑{d}[n+1, A307430(#)]` -/
def P5642343366719817736.Spec : Prop :=
  ∀ n, P5642343366719817736.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P3847153777892875054

`∑{d}[n+1, A008683(gcd(#, (n+1)/#))²]`
-/

namespace A252505.P3847153777892875054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))) ^ 2

end

end A252505.P3847153777892875054

namespace A252505

/-- `∑{d}[n+1, A008683(gcd(#, (n+1)/#))²]` -/
def P3847153777892875054.Spec : Prop :=
  ∀ n, P3847153777892875054.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P33012695452401926

`A000005(A058035(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A252505

/-- `A000005(A058035(n+1))` -/
def P33012695452401926.Spec : Prop :=
  ∀ n, P33012695452401926.a n = A252505 (n + 1)

theorem P33012695452401926.correct : P33012695452401926.Spec := by
  intro n
  simp only [A252505, Nat.add_sub_cancel]

end A252505

/-! ## A252505.P1558253469928071243

`∑{d}[n+1, A034444(#)*A227291((n+1)/#)]`
-/

namespace A252505.P1558253469928071243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P1558253469928071243

namespace A252505

/-- `∑{d}[n+1, A034444(#)*A227291((n+1)/#)]` -/
def P1558253469928071243.Spec : Prop :=
  ∀ n, P1558253469928071243.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P8210014377856332564

`∑{d}[n+1, A007427(#)*A286779((n+1)/#)]`
-/

namespace A252505.P8210014377856332564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A286779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P8210014377856332564

namespace A252505

/-- `∑{d}[n+1, A007427(#)*A286779((n+1)/#)]` -/
def P8210014377856332564.Spec : Prop :=
  ∀ n, P8210014377856332564.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P15767484377226802985

`∑{d}[n+1, A008966(#)*A323308((n+1)/#)]`
-/

namespace A252505.P15767484377226802985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A323308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P15767484377226802985

namespace A252505

/-- `∑{d}[n+1, A008966(#)*A323308((n+1)/#)]` -/
def P15767484377226802985.Spec : Prop :=
  ∀ n, P15767484377226802985.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P12878002504341239308

`∑{d}[n+1, A048691(#)*A363552((n+1)/#)]`
-/

namespace A252505.P12878002504341239308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A363552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P12878002504341239308

namespace A252505

/-- `∑{d}[n+1, A048691(#)*A363552((n+1)/#)]` -/
def P12878002504341239308.Spec : Prop :=
  ∀ n, P12878002504341239308.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P1774762076000135408

`∑{d}[n+1, A271102(#)*A322327((n+1)/#)]`
-/

namespace A252505.P1774762076000135408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A322327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P1774762076000135408

namespace A252505

/-- `∑{d}[n+1, A271102(#)*A322327((n+1)/#)]` -/
def P1774762076000135408.Spec : Prop :=
  ∀ n, P1774762076000135408.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P2474669934162460861

`∑{d}[n+1, A307445(#)*A370296((n+1)/#)]`
-/

namespace A252505.P2474669934162460861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A370296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P2474669934162460861

namespace A252505

/-- `∑{d}[n+1, A307445(#)*A370296((n+1)/#)]` -/
def P2474669934162460861.Spec : Prop :=
  ∀ n, P2474669934162460861.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P4617748319562049534

`∏{e}[n+1, 4-C(2, #)]`
-/

namespace A252505.P4617748319562049534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 - (Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ))

end

end A252505.P4617748319562049534

namespace A252505

/-- `∏{e}[n+1, 4-C(2, #)]` -/
def P4617748319562049534.Spec : Prop :=
  ∀ n, P4617748319562049534.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P5736519483614213869

`∏{e}[n+1, 4-floor(2/#)]`
-/

namespace A252505.P5736519483614213869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 - ⌊2 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A252505.P5736519483614213869

namespace A252505

/-- `∏{e}[n+1, 4-floor(2/#)]` -/
def P5736519483614213869.Spec : Prop :=
  ∀ n, P5736519483614213869.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P4364085010415061837

`A000005((n+1)/A062379(n+1))`
-/

namespace A252505.P4364085010415061837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (n + 1) : ℚ))).toNat

end

end A252505.P4364085010415061837

namespace A252505

/-- `A000005((n+1)/A062379(n+1))` -/
def P4364085010415061837.Spec : Prop :=
  ∀ n, P4364085010415061837.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P15312509138295480897

`∑{d}[n+1, A018892(#)*A378214((n+1)/#)]`
-/

namespace A252505.P15312509138295480897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 d * A378214 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P15312509138295480897

namespace A252505

/-- `∑{d}[n+1, A018892(#)*A378214((n+1)/#)]` -/
def P15312509138295480897.Spec : Prop :=
  ∀ n, P15312509138295480897.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P13037495303741102819

`∑{d}[n+1, A023900(#)*A385134((n+1)/#)]`
-/

namespace A252505.P13037495303741102819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A385134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252505.P13037495303741102819

namespace A252505

/-- `∑{d}[n+1, A023900(#)*A385134((n+1)/#)]` -/
def P13037495303741102819.Spec : Prop :=
  ∀ n, P13037495303741102819.a n = A252505 (n + 1)

end A252505

/-! ## A252505.P1430993022246415704

`A332712(A058035(n+1)²)`
-/

namespace A252505.P1430993022246415704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A058035 (n + 1) ^ 2).toNat

end

end A252505.P1430993022246415704

namespace A252505

/-- `A332712(A058035(n+1)²)` -/
def P1430993022246415704.Spec : Prop :=
  ∀ n, P1430993022246415704.a n = A252505 (n + 1)

end A252505

/-!
# A252506: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252506, there is no canonical definition to state claims against.
-/

/-! ## A252506.P4158055257085765268

`A252514(∑[4*n]+1)`
-/

namespace A252506.P4158055257085765268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252506.P4158055257085765268

/-! ## A252506.P7053498178411605661

`record[A003982(n)*A252514(n+1)]`
-/

namespace A252506.P7053498178411605661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252506.P7053498178411605661

/-! ## A252506.P4769354082013651376

`record[gcd(A003987(n), A252514(n+1))]`
-/

namespace A252506.P4769354082013651376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A252514 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252506.P4769354082013651376

/-! ## A252506.P3968908970243527861

`A007318(C(2, n))*A252514(A001844(n))`
-/

namespace A252506.P3968908970243527861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252514 (A001844 n).toNat

end

end A252506.P3968908970243527861

/-! ## A252506.P5889785609293315865

`A252514(A001844(n))+A008683(4*(n+1))`
-/

namespace A252506.P5889785609293315865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A252506.P5889785609293315865

/-!
# A252507: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252507, there is no canonical definition to state claims against.
-/

/-! ## A252507.P14737108701265940649

`A252514(∑[n]+1)`
-/

namespace A252507.P14737108701265940649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252507.P14737108701265940649

/-! ## A252507.P4456747226842555229

`record[root(A252514(n+1), A007318(n))]`
-/

namespace A252507.P4456747226842555229
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252514 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252507.P4456747226842555229

/-! ## A252507.P4270662595754976160

`record[gcd(A002262(n), A252514(n+1))]`
-/

namespace A252507.P4270662595754976160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252514 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252507.P4270662595754976160

/-! ## A252507.P3784563933581240793

`record[A252514(n+1)/A119727(n+1)]`
-/

namespace A252507.P3784563933581240793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252514 (n + 1) : ℚ) / (A119727 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252507.P3784563933581240793

/-! ## A252507.P6462773313128552455

`record[A252514(A008619(A129889(n)))]`
-/

namespace A252507.P6462773313128552455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A008619 (A129889 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252507.P6462773313128552455

/-!
# A252508: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252508, there is no canonical definition to state claims against.
-/

/-! ## A252508.P17899019116474106242

`A252514(∑[n+1]+2)`
-/

namespace A252508.P17899019116474106242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252508.P17899019116474106242

/-! ## A252508.P9606085498143017530

`record[gcd(A002262(n), A252514(n+2))]`
-/

namespace A252508.P9606085498143017530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252514 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252508.P9606085498143017530

/-! ## A252508.P13699097845432185040

`A252514(A000096(n)+3)+and(32, n)`
-/

namespace A252508.P13699097845432185040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A000096 n + 3).toNat + (Nat.land 32 n : ℤ)

end

end A252508.P13699097845432185040

/-! ## A252508.P371948802414294600

`record[A252514(A133263(A286534(n)))]`
-/

namespace A252508.P371948802414294600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A133263 (A286534 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252508.P371948802414294600

/-! ## A252508.P16433274107642932053

`A033999(n)²*A252514(A000096(n)+3)`
-/

namespace A252508.P16433274107642932053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A252514 (A000096 n + 3).toNat

end

end A252508.P16433274107642932053

/-!
# A252509: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252509, there is no canonical definition to state claims against.
-/

/-! ## A252509.P7876793765081887937

`A252514(∑[n+2]+4)`
-/

namespace A252509.P7876793765081887937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252509.P7876793765081887937

/-! ## A252509.P8814413133085900360

`A252514(A167614(n+1))*A304042(n)`
-/

namespace A252509.P8814413133085900360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A167614 (n + 1)).toNat * A304042 n

end

end A252509.P8814413133085900360

/-! ## A252509.P10805483002373314657

`or(A000007(n), A252514(A167614(n+1)))`
-/

namespace A252509.P10805483002373314657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252514 (A167614 (n + 1)).toNat)

end

end A252509.P10805483002373314657

/-! ## A252509.P8695765707957249203

`A252514(A167614(n+1))%A184227(n+1)`
-/

namespace A252509.P8695765707957249203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252514 (A167614 (n + 1)).toNat) (A184227 (n + 1))

end

end A252509.P8695765707957249203

/-! ## A252509.P17092409319381227515

`A252514(A167614(n+1))+A142150(2*n+1)`
-/

namespace A252509.P17092409319381227515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A167614 (n + 1)).toNat + A142150 (2 * n + 1)

end

end A252509.P17092409319381227515

/-!
# A252510: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252510, there is no canonical definition to state claims against.
-/

/-! ## A252510.P3286831644941608945

`A252514(A374004(n+1))`
-/

namespace A252510.P3286831644941608945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A374004 (n + 1)).toNat

end

end A252510.P3286831644941608945

/-! ## A252510.P14830875622829381906

`A252514(A052905(n)+9)`
-/

namespace A252510.P14830875622829381906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A052905 n + 9).toNat

end

end A252510.P14830875622829381906

/-! ## A252510.P16160122300923638614

`A252514(A055999(n)+10)`
-/

namespace A252510.P16160122300923638614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A055999 n + 10).toNat

end

end A252510.P16160122300923638614

/-! ## A252510.P2168659788649360527

`A252514(A167614(n+2)+1)`
-/

namespace A252510.P2168659788649360527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A167614 (n + 2) + 1).toNat

end

end A252510.P2168659788649360527

/-! ## A252510.P7909664476086401180

`A252514(A000124(n+3)+3)`
-/

namespace A252510.P7909664476086401180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A000124 (n + 3) + 3).toNat

end

end A252510.P7909664476086401180

/-!
# A252511: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252511, there is no canonical definition to state claims against.
-/

/-! ## A252511.P2048515028368969835

`A252514(A374005(n+1))`
-/

namespace A252511.P2048515028368969835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A374005 (n + 1)).toNat

end

end A252511.P2048515028368969835

/-! ## A252511.P16099877807798539995

`A252514(A167499(n+3))`
-/

namespace A252511.P16099877807798539995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A167499 (n + 3)).toNat

end

end A252511.P16099877807798539995

/-! ## A252511.P17922200365365860003

`A252514(A056000(n)+15)`
-/

namespace A252511.P17922200365365860003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A056000 n + 15).toNat

end

end A252511.P17922200365365860003

/-! ## A252511.P5558208095993839823

`A252514(A046691(n+3))`
-/

namespace A252511.P5558208095993839823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A046691 (n + 3)).toNat

end

end A252511.P5558208095993839823

/-! ## A252511.P3791079738401108723

`A252514(Δ[A023545(n+1)])`
-/

namespace A252511.P3791079738401108723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (f1 (n + 1) - f1 n).toNat

end

end A252511.P3791079738401108723

/-!
# A252512: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252512, there is no canonical definition to state claims against.
-/

/-! ## A252512.P6276273930391851496

`A252514(A374007(n+1))`
-/

namespace A252512.P6276273930391851496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A374007 (n + 1)).toNat

end

end A252512.P6276273930391851496

/-! ## A252512.P12930592008543649511

`A252514(A000217(n+5)+6)`
-/

namespace A252512.P12930592008543649511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A000217 (n + 5) + 6).toNat

end

end A252512.P12930592008543649511

/-! ## A252512.P11575371329549817496

`A252514(A055999(n+2)+12)`
-/

namespace A252512.P11575371329549817496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A055999 (n + 2) + 12).toNat

end

end A252512.P11575371329549817496

/-! ## A252512.P15790251333020730235

`A252514(A056000(n+1)+16)`
-/

namespace A252512.P15790251333020730235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A056000 (n + 1) + 16).toNat

end

end A252512.P15790251333020730235

/-! ## A252512.P11642421994464935497

`A252514(A000124(n+6)-(n+1))`
-/

namespace A252512.P11642421994464935497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A252512.P11642421994464935497

/-!
# A252513: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252513, there is no canonical definition to state claims against.
-/

/-! ## A252513.P17171589607995054307

`A252514(A374008(n+1))`
-/

namespace A252513.P17171589607995054307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A374008 (n + 1)).toNat

end

end A252513.P17171589607995054307

/-! ## A252513.P10240088587243649571

`A252514(A000217(n+6)+7)`
-/

namespace A252513.P10240088587243649571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A000217 (n + 6) + 7).toNat

end

end A252513.P10240088587243649571

/-! ## A252513.P16936353378896199037

`A252514(A141214(n+3)+10)`
-/

namespace A252513.P16936353378896199037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A141214 (n + 3) + 10).toNat

end

end A252513.P16936353378896199037

/-! ## A252513.P18222760697156279317

`A252514(A046691(n+4)+11)`
-/

namespace A252513.P18222760697156279317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A046691 (n + 4) + 11).toNat

end

end A252513.P18222760697156279317

/-! ## A252513.P2091776239334224685

`A252514(A052905(n+3)+12)`
-/

namespace A252513.P2091776239334224685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252514 (A052905 (n + 3) + 12).toNat

end

end A252513.P2091776239334224685

/-!
# A252515: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252515, there is no canonical definition to state claims against.
-/

/-! ## A252515.P3905126767964244837

`A252523((n+1)²+n²)`
-/

namespace A252515.P3905126767964244837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 ((n + 1) ^ 2 + n ^ 2)

end

end A252515.P3905126767964244837

/-! ## A252515.P484729251074267014

`A007318(∑[n])*A252523(A001844(n))`
-/

namespace A252515.P484729251074267014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252523 (A001844 n).toNat

end

end A252515.P484729251074267014

/-! ## A252515.P18040422109813668781

`A014963(6*(n+1))*A252523(A001844(n))`
-/

namespace A252515.P18040422109813668781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A252523 (A001844 n).toNat

end

end A252515.P18040422109813668781

/-! ## A252515.P18157617615816240756

`A252523(A001844(n))+A008683(8*n+4)`
-/

namespace A252515.P18157617615816240756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A001844 n).toNat + A008683 (8 * n + 4)

end

end A252515.P18157617615816240756

/-! ## A252515.P4618522015388258825

`A252523(A001844(n))+(n+1)%A020639(n+1)`
-/

namespace A252515.P4618522015388258825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A001844 n).toNat + Int.tmod (n + 1 : ℤ) (A020639 (n + 1))

end

end A252515.P4618522015388258825

/-!
# A252516: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252516, there is no canonical definition to state claims against.
-/

/-! ## A252516.P14615378881510324488

`A252523(∑[n]+1)`
-/

namespace A252516.P14615378881510324488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252516.P14615378881510324488

/-! ## A252516.P850909312772852322

`lcm(A020985(n), A252523(A000124(n)))`
-/

namespace A252516.P850909312772852322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252523 (A000124 n).toNat)

end

end A252516.P850909312772852322

/-! ## A252516.P86849871783775294

`A014963(A006881(n+1))*A252523(A000124(n))`
-/

namespace A252516.P86849871783775294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006881 (n + 1)).toNat * A252523 (A000124 n).toNat

end

end A252516.P86849871783775294

/-! ## A252516.P3276136506912495741

`A014963(A000096(n+13))*A252523(A000124(n))`
-/

namespace A252516.P3276136506912495741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000096 (n + 13)).toNat * A252523 (A000124 n).toNat

end

end A252516.P3276136506912495741

/-!
# A252517: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252517, there is no canonical definition to state claims against.
-/

/-! ## A252517.P15296300951038889955

`A252523(∑[n+1]+2)`
-/

namespace A252517.P15296300951038889955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252517.P15296300951038889955

/-! ## A252517.P12517637312668430051

`A252523(A133263(n+1))+char[37]`
-/

namespace A252517.P12517637312668430051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252517.P12517637312668430051

/-! ## A252517.P17568665249147961166

`lcm(A020985(n), A252523(A000096(n)+3))`
-/

namespace A252517.P17568665249147961166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252523 (A000096 n + 3).toNat)

end

end A252517.P17568665249147961166

/-! ## A252517.P16685439714425687553

`A252523(A000096(n)+3)%A252500(n+1)`
-/

namespace A252517.P16685439714425687553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252523 (A000096 n + 3).toNat) (A252500 (n + 1))

end

end A252517.P16685439714425687553

/-! ## A252517.P7515430798736309733

`A252523(A000096(n+1))+A133754(n)%2`
-/

namespace A252517.P7515430798736309733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A000096 (n + 1)).toNat + Int.tmod (A133754 n) 2

end

end A252517.P7515430798736309733

/-!
# A252518: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252518, there is no canonical definition to state claims against.
-/

/-! ## A252518.P13816272990383482060

`A252523(∑[n+2]+4)`
-/

namespace A252518.P13816272990383482060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252518.P13816272990383482060

/-! ## A252518.P6361665379284943923

`or(A000038(n), A252523(A167614(n+1)))`
-/

namespace A252518.P6361665379284943923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252523 (A167614 (n + 1)).toNat)

end

end A252518.P6361665379284943923

/-! ## A252518.P14659202153904145477

`A252523(A167614(n+1))%A252508(n+1)`
-/

namespace A252518.P14659202153904145477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252523 (A167614 (n + 1)).toNat) (A252508 (n + 1))

end

end A252518.P14659202153904145477

/-! ## A252518.P15435770564117150783

`lcm(A008836(n+1), A252523(A167614(n+1)))`
-/

namespace A252518.P15435770564117150783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A252523 (A167614 (n + 1)).toNat)

end

end A252518.P15435770564117150783

/-! ## A252518.P15793852434021021692

`A166974(A045344(n+2))*A252523(A167614(n+1))`
-/

namespace A252518.P15793852434021021692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 (A045344 (n + 2)).toNat * A252523 (A167614 (n + 1)).toNat

end

end A252518.P15793852434021021692

/-!
# A252519: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252519, there is no canonical definition to state claims against.
-/

/-! ## A252519.P666570774308969826

`A252523(A374004(n+1))`
-/

namespace A252519.P666570774308969826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A374004 (n + 1)).toNat

end

end A252519.P666570774308969826

/-! ## A252519.P13868753412049343592

`A252523(A141214(n)+7)`
-/

namespace A252519.P13868753412049343592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A141214 n + 7).toNat

end

end A252519.P13868753412049343592

/-! ## A252519.P5044493069019266678

`A252523(A052905(n)+9)`
-/

namespace A252519.P5044493069019266678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A052905 n + 9).toNat

end

end A252519.P5044493069019266678

/-! ## A252519.P9802363132331267093

`A252523(A055999(n)+10)`
-/

namespace A252519.P9802363132331267093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A055999 n + 10).toNat

end

end A252519.P9802363132331267093

/-! ## A252519.P13353280575064009775

`A252523(A167614(n+2)+1)`
-/

namespace A252519.P13353280575064009775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A167614 (n + 2) + 1).toNat

end

end A252519.P13353280575064009775

/-!
# A252520: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252520, there is no canonical definition to state claims against.
-/

/-! ## A252520.P9417089545670929201

`A252523(A374005(n+1))`
-/

namespace A252520.P9417089545670929201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A374005 (n + 1)).toNat

end

end A252520.P9417089545670929201

/-! ## A252520.P16542952855820160537

`A252523(A167499(n+3))`
-/

namespace A252520.P16542952855820160537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A167499 (n + 3)).toNat

end

end A252520.P16542952855820160537

/-! ## A252520.P1003782261241283843

`A252523(A056000(n)+15)`
-/

namespace A252520.P1003782261241283843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A056000 n + 15).toNat

end

end A252520.P1003782261241283843

/-! ## A252520.P10168416731343909129

`A252523(A000217(n+4)+5)`
-/

namespace A252520.P10168416731343909129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A000217 (n + 4) + 5).toNat

end

end A252520.P10168416731343909129

/-! ## A252520.P18038080268440138486

`A252523(Δ[A264443(n)])`
-/

namespace A252520.P18038080268440138486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (f1 (n + 1) - f1 n).toNat

end

end A252520.P18038080268440138486

/-!
# A252521: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252521, there is no canonical definition to state claims against.
-/

/-! ## A252521.P7859703298846379204

`A252523(A374007(n+1))`
-/

namespace A252521.P7859703298846379204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A374007 (n + 1)).toNat

end

end A252521.P7859703298846379204

/-! ## A252521.P18225761455280782729

`A252523(Δ[A264443(n)]+10)`
-/

namespace A252521.P18225761455280782729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (f1 (n + 1) - f1 n + 10).toNat

end

end A252521.P18225761455280782729

/-! ## A252521.P528741528862712687

`A252523(A000217(n+5)+6)`
-/

namespace A252521.P528741528862712687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A000217 (n + 5) + 6).toNat

end

end A252521.P528741528862712687

/-! ## A252521.P15791224069067234144

`A252523(Δ[A023545(n+1)]+10)`
-/

namespace A252521.P15791224069067234144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (f1 (n + 1) - f1 n + 10).toNat

end

end A252521.P15791224069067234144

/-! ## A252521.P11889943491458624442

`A252523(A052905(n+3))`
-/

namespace A252521.P11889943491458624442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A052905 (n + 3)).toNat

end

end A252521.P11889943491458624442

/-!
# A252522: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 4 6 or 7.

The programs for A252522, there is no canonical definition to state claims against.
-/

/-! ## A252522.P16400238762007010293

`A252523(A374008(n+1))`
-/

namespace A252522.P16400238762007010293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A374008 (n + 1)).toNat

end

end A252522.P16400238762007010293

/-! ## A252522.P5785231772260924079

`A252523(A167499(n+5)+2)`
-/

namespace A252522.P5785231772260924079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A167499 (n + 5) + 2).toNat

end

end A252522.P5785231772260924079

/-! ## A252522.P3031734317688692629

`A252523(A167614(n+5)+4)`
-/

namespace A252522.P3031734317688692629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A167614 (n + 5) + 4).toNat

end

end A252522.P3031734317688692629

/-! ## A252522.P12960092618570487098

`A252523(A000124(n+6)+6)`
-/

namespace A252522.P12960092618570487098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A000124 (n + 6) + 6).toNat

end

end A252522.P12960092618570487098

/-! ## A252522.P6535035281562042880

`A252523(A000217(n+6)+7)`
-/

namespace A252522.P6535035281562042880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252523 (A000217 (n + 6) + 7).toNat

end

end A252522.P6535035281562042880

/-!
# A252524: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252524, there is no canonical definition to state claims against.
-/

/-! ## A252524.P15056501818773337945

`A252532(∑[4*n]+1)`
-/

namespace A252524.P15056501818773337945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252524.P15056501818773337945

/-! ## A252524.P7213990683224655222

`A252532(A001844(n))+char[17]`
-/

namespace A252524.P7213990683224655222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252524.P7213990683224655222

/-! ## A252524.P16809247257771325751

`A326544(n)+A252532(A001844(n))`
-/

namespace A252524.P16809247257771325751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A252532 (A001844 n).toNat

end

end A252524.P16809247257771325751

/-! ## A252524.P17016124643537773663

`or(A000038(n), A252532(A001844(n)))`
-/

namespace A252524.P17016124643537773663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252532 (A001844 n).toNat)

end

end A252524.P17016124643537773663

/-! ## A252524.P11466925991557232448

`or(A063524(n), A252532(A001844(n)))`
-/

namespace A252524.P11466925991557232448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A252532 (A001844 n).toNat)

end

end A252524.P11466925991557232448

/-!
# A252525: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252525, there is no canonical definition to state claims against.
-/

/-! ## A252525.P7827941301040923418

`A252532(∑[n+1])`
-/

namespace A252525.P7827941301040923418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252525.P7827941301040923418

/-! ## A252525.P6121233518769292130

`and(-1, A252532(A000217(n+1)))`
-/

namespace A252525.P6121233518769292130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252532 (A000217 (n + 1)).toNat)

end

end A252525.P6121233518769292130

/-! ## A252525.P12605757437661001573

`or(char[1], A252532(A000096(n)+1))`
-/

namespace A252525.P12605757437661001573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252532 (A000096 n + 1).toNat)

end

end A252525.P12605757437661001573

/-! ## A252525.P13144880072397454207

`A252532(A000217(n+1))%A190817(n+1)`
-/

namespace A252525.P13144880072397454207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252532 (A000217 (n + 1)).toNat) (A190817 (n + 1))

end

end A252525.P13144880072397454207

/-! ## A252525.P17751554697958880489

`A252532(A000217(n+1))+A069843(2*(n+1))`
-/

namespace A252525.P17751554697958880489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A000217 (n + 1)).toNat + A069843 (2 * (n + 1))

end

end A252525.P17751554697958880489

/-!
# A252526: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252526, there is no canonical definition to state claims against.
-/

/-! ## A252526.P134201184760005486

`A252532(∑[n+2])`
-/

namespace A252526.P134201184760005486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252526.P134201184760005486

/-! ## A252526.P5037087888445344341

`or(char[1], A252532(A000096(n+1)))`
-/

namespace A252526.P5037087888445344341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252532 (A000096 (n + 1)).toNat)

end

end A252526.P5037087888445344341

/-! ## A252526.P11825411359254874673

`and(-A007318(n), A252532(A000096(n+1)))`
-/

namespace A252526.P11825411359254874673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A252532 (A000096 (n + 1)).toNat)

end

end A252526.P11825411359254874673

/-! ## A252526.P5362589543520917488

`A252532(A000096(n+1))*A330098(n+1)`
-/

namespace A252526.P5362589543520917488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A000096 (n + 1)).toNat * A330098 (n + 1)

end

end A252526.P5362589543520917488

/-!
# A252527: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252527, there is no canonical definition to state claims against.
-/

/-! ## A252527.P2413760519098052213

`A252532(∑[n+3]+1)`
-/

namespace A252527.P2413760519098052213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252527.P2413760519098052213

/-! ## A252527.P3816312309585749413

`or(char[1], A252532(A034856(n+2)))`
-/

namespace A252527.P3816312309585749413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252532 (A034856 (n + 2)).toNat)

end

end A252527.P3816312309585749413

/-! ## A252527.P12811500173309253485

`and(-A007318(n), A252532(A034856(n+2)))`
-/

namespace A252527.P12811500173309253485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A252532 (A034856 (n + 2)).toNat)

end

end A252527.P12811500173309253485

/-! ## A252527.P15776943970626186000

`A007318(C(2, n))*A252532(A034856(n+2))`
-/

namespace A252527.P15776943970626186000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252532 (A034856 (n + 2)).toNat

end

end A252527.P15776943970626186000

/-! ## A252527.P9036496167470534078

`A252532(A034856(n+2))/A000108(C(n, 47)²)`
-/

namespace A252527.P9036496167470534078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252532 (A034856 (n + 2)).toNat : ℚ) / (A000108 (Nat.choose n 47 ^ 2) : ℚ)

end

end A252527.P9036496167470534078

/-!
# A252528: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252528, there is no canonical definition to state claims against.
-/

/-! ## A252528.P8591423032182741467

`A252532(∑[n+4]+3)`
-/

namespace A252528.P8591423032182741467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252528.P8591423032182741467

/-! ## A252528.P8957863473406577198

`A252532(A055998(n+2))+char[32]`
-/

namespace A252528.P8957863473406577198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252528.P8957863473406577198

/-! ## A252528.P17944579214285871699

`xor(1, xor(1, A252532(A027379(n+2))))`
-/

namespace A252528.P17944579214285871699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A252532 (A027379 (n + 2)).toNat))

end

end A252528.P17944579214285871699

/-! ## A252528.P10583299564121678689

`A057427(n+1)*A252532(A141214(n+1))`
-/

namespace A252528.P10583299564121678689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A252532 (A141214 (n + 1)).toNat

end

end A252528.P10583299564121678689

/-! ## A252528.P15881451368085309511

`A007318(C(2, n))*A252532(A055998(n+2))`
-/

namespace A252528.P15881451368085309511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252532 (A055998 (n + 2)).toNat

end

end A252528.P15881451368085309511

/-!
# A252529: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252529, there is no canonical definition to state claims against.
-/

/-! ## A252529.P11545622325487006635

`A252532(Δ[n²]+∑[n+3]+7)`
-/

namespace A252529.P11545622325487006635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 7 : ℕ) : ℤ)).toNat

end

end A252529.P11545622325487006635

/-! ## A252529.P318828906985076606

`lcm(2, A252532(A000217(n+5)-4))`
-/

namespace A252529.P318828906985076606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252532 (A000217 (n + 5) - 4).toNat)

end

end A252529.P318828906985076606

/-! ## A252529.P17744016389669075028

`A252532(Δ[A264443(n)])%A252530(n+1)`
-/

namespace A252529.P17744016389669075028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252532 (f1 (n + 1) - f1 n).toNat) (A252530 (n + 1))

end

end A252529.P17744016389669075028

/-! ## A252529.P3530693723566747496

`A007318(∑[n])*A252532(A000217(n+5)-4)`
-/

namespace A252529.P3530693723566747496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252532 (A000217 (n + 5) - 4).toNat

end

end A252529.P3530693723566747496

/-! ## A252529.P15922903553941394364

`A252532(A000217(n+5)-4)/A007318(C(2, n))`
-/

namespace A252529.P15922903553941394364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252532 (A000217 (n + 5) - 4).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A252529.P15922903553941394364

/-!
# A252530: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252530, there is no canonical definition to state claims against.
-/

/-! ## A252530.P10599042432752640156

`A252532(∑[n+6]+10)`
-/

namespace A252530.P10599042432752640156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A252530.P10599042432752640156

/-! ## A252530.P10326814657607344555

`lcm(2, A252532(A000217(n+6)-5))`
-/

namespace A252530.P10326814657607344555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252532 (A000217 (n + 6) - 5).toNat)

end

end A252530.P10326814657607344555

/-!
# A252531: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252531, there is no canonical definition to state claims against.
-/

/-! ## A252531.P8681863582578745714

`A252532(A055999(n+4))`
-/

namespace A252531.P8681863582578745714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A055999 (n + 4)).toNat

end

end A252531.P8681863582578745714

/-! ## A252531.P12905171490156365694

`A252532(A056121(n)+22)`
-/

namespace A252531.P12905171490156365694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A056121 n + 22).toNat

end

end A252531.P12905171490156365694

/-! ## A252531.P5483279534862680112

`A252532(eq[4, A219347(n)])`
-/

namespace A252531.P5483279534862680112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252531.P5483279534862680112

/-! ## A252531.P2387708858174251592

`A252532(eq[6, A193592(n)])`
-/

namespace A252531.P2387708858174251592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252531.P2387708858174251592

/-! ## A252531.P432368998487471887

`A252532(Δ[A023551(n+2)])`
-/

namespace A252531.P432368998487471887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (f1 (n + 1) - f1 n).toNat

end

end A252531.P432368998487471887

/-!
# A252533: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252533, there is no canonical definition to state claims against.
-/

/-! ## A252533.P4183595108770278380

`A252532(∑[n]+1)`
-/

namespace A252533.P4183595108770278380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252533.P4183595108770278380

/-! ## A252533.P7689626951590580524

`and(-1, A252532(A000124(n)))`
-/

namespace A252533.P7689626951590580524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252532 (A000124 n).toNat)

end

end A252533.P7689626951590580524

/-! ## A252533.P3707250178256903946

`A252532(A000124(n))+A025469(n)`
-/

namespace A252533.P3707250178256903946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A000124 n).toNat + A025469 n

end

end A252533.P3707250178256903946

/-! ## A252533.P17263533207667717837

`A007318(∑[n])*A252532(A000124(n))`
-/

namespace A252533.P17263533207667717837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252532 (A000124 n).toNat

end

end A252533.P17263533207667717837

/-! ## A252533.P3702285554438163772

`A252532(A000124(n))+A000007(n+1)`
-/

namespace A252533.P3702285554438163772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A000124 n).toNat + A000007 (n + 1)

end

end A252533.P3702285554438163772

/-!
# A252534: Number of (2+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252534, there is no canonical definition to state claims against.
-/

/-! ## A252534.P228636117925913560

`A252532(∑[n+1]+2)`
-/

namespace A252534.P228636117925913560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252534.P228636117925913560

/-! ## A252534.P11712078715546496676

`or(char[1], A252532(A167499(n)-3))`
-/

namespace A252534.P11712078715546496676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252532 (A167499 n - 3).toNat)

end

end A252534.P11712078715546496676

/-! ## A252534.P4079560709110277939

`and(1, n)!*A252532(A133263(n+1))`
-/

namespace A252534.P4079560709110277939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A252532 (A133263 (n + 1)).toNat

end

end A252534.P4079560709110277939

/-! ## A252534.P12391016032505597913

`A007318(C(2, n))*A252532(A133263(n+1))`
-/

namespace A252534.P12391016032505597913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252532 (A133263 (n + 1)).toNat

end

end A252534.P12391016032505597913

/-! ## A252534.P3694879704229247224

`A007318(C(2, n))*A252532(A167499(n)-3)`
-/

namespace A252534.P3694879704229247224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252532 (A167499 n - 3).toNat

end

end A252534.P3694879704229247224

/-!
# A252535: Number of (3+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252535, there is no canonical definition to state claims against.
-/

/-! ## A252535.P14832583116189265030

`A252532(∑[n+2]+4)`
-/

namespace A252535.P14832583116189265030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252535.P14832583116189265030

/-! ## A252535.P8786254824723948783

`lcm(2, A252532(A167614(n+1)))`
-/

namespace A252535.P8786254824723948783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252532 (A167614 (n + 1)).toNat)

end

end A252535.P8786254824723948783

/-! ## A252535.P8091761410408025966

`A252532(A046691(n)+7)+char[35]`
-/

namespace A252535.P8091761410408025966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252535.P8091761410408025966

/-! ## A252535.P11008049840844771009

`A252532(A167614(n+1))+A025469(n)`
-/

namespace A252535.P11008049840844771009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167614 (n + 1)).toNat + A025469 n

end

end A252535.P11008049840844771009

/-! ## A252535.P5458750673312476808

`A252532(A167614(n+1))%A017057(n)`
-/

namespace A252535.P5458750673312476808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252532 (A167614 (n + 1)).toNat) (A017057 n)

end

end A252535.P5458750673312476808

/-!
# A252536: Number of (4+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252536, there is no canonical definition to state claims against.
-/

/-! ## A252536.P12357042264159906070

`A252532(∑[n+3]+7)`
-/

namespace A252536.P12357042264159906070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252536.P12357042264159906070

/-! ## A252536.P17842378274862825834

`and(-1, A252532(A052905(n)+9))`
-/

namespace A252536.P17842378274862825834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252532 (A052905 n + 9).toNat)

end

end A252536.P17842378274862825834

/-! ## A252536.P7240508087955002758

`A252532(A167614(n+2)+1)+char[48]`
-/

namespace A252536.P7240508087955002758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252536.P7240508087955002758

/-! ## A252536.P2666246277550080459

`A007318(C(n, 2))*A252532(A052905(n)+9)`
-/

namespace A252536.P2666246277550080459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252532 (A052905 n + 9).toNat

end

end A252536.P2666246277550080459

/-! ## A252536.P14104833102864774419

`A252532(A052905(n)+9)/A007318(C(2, n)!)`
-/

namespace A252536.P14104833102864774419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252532 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A252536.P14104833102864774419

/-!
# A252537: Number of (5+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252537, there is no canonical definition to state claims against.
-/

/-! ## A252537.P17190587353513569244

`A252532(∑[n+4]+11)`
-/

namespace A252537.P17190587353513569244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A252537.P17190587353513569244

/-! ## A252537.P4113068067500475013

`lcm(2, A252532(A167614(n+3)+2))`
-/

namespace A252537.P4113068067500475013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252532 (A167614 (n + 3) + 2).toNat)

end

end A252537.P4113068067500475013

/-! ## A252537.P15499517246091511401

`A252532(A167614(n+3)+2)+char[A000032(n+11)]`
-/

namespace A252537.P15499517246091511401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 11)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167614 (n + 3) + 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252537.P15499517246091511401

/-! ## A252537.P8029355015133832595

`A000108(gcd(n, n+1))*A252532(A167614(n+3)+2)`
-/

namespace A252537.P8029355015133832595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A252532 (A167614 (n + 3) + 2).toNat

end

end A252537.P8029355015133832595

/-! ## A252537.P15502757299976381271

`A252532(A167614(n+3)+2)+val(A000040(n+1)², 6)`
-/

namespace A252537.P15502757299976381271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167614 (n + 3) + 2).toNat + (SequenceMachineLib.valuation (A000040 (n + 1) ^ 2).toNat 6 : ℤ)

end

end A252537.P15502757299976381271

/-!
# A252538: Number of (6+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252538, there is no canonical definition to state claims against.
-/

/-! ## A252538.P11826268845548567083

`A252532(A166136(n+4))`
-/

namespace A252538.P11826268845548567083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A166136 (n + 4)).toNat

end

end A252538.P11826268845548567083

/-! ## A252538.P4778319627948256596

`A252532(A056115(n)+21)`
-/

namespace A252538.P4778319627948256596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A056115 n + 21).toNat

end

end A252538.P4778319627948256596

/-! ## A252538.P14433116467458205811

`A252532(A167499(n+4)+1)`
-/

namespace A252538.P14433116467458205811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167499 (n + 4) + 1).toNat

end

end A252538.P14433116467458205811

/-! ## A252538.P120632419127053229

`A252532(A167487(n+4)-1)`
-/

namespace A252538.P120632419127053229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167487 (n + 4) - 1).toNat

end

end A252538.P120632419127053229

/-! ## A252538.P2835544180741669775

`A252532(A167614(n+4)+3)`
-/

namespace A252538.P2835544180741669775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167614 (n + 4) + 3).toNat

end

end A252538.P2835544180741669775

/-!
# A252539: Number of (7+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252539, there is no canonical definition to state claims against.
-/

/-! ## A252539.P16176814401608910255

`A252532(A167487(n+5))`
-/

namespace A252539.P16176814401608910255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167487 (n + 5)).toNat

end

end A252539.P16176814401608910255

/-! ## A252539.P13518142194460557550

`A252532(A056119(n)+28)`
-/

namespace A252539.P13518142194460557550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A056119 n + 28).toNat

end

end A252539.P13518142194460557550

/-! ## A252539.P13780177586610687076

`A252532(A167499(n+5)+2)`
-/

namespace A252539.P13780177586610687076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167499 (n + 5) + 2).toNat

end

end A252539.P13780177586610687076

/-! ## A252539.P15669307234327189411

`A252532(A167614(n+5)+4)`
-/

namespace A252539.P15669307234327189411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A167614 (n + 5) + 4).toNat

end

end A252539.P15669307234327189411

/-! ## A252539.P16944024133740889630

`A252532(A000124(n+6)+6)`
-/

namespace A252539.P16944024133740889630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252532 (A000124 (n + 6) + 6).toNat

end

end A252539.P16944024133740889630

/-!
# A252540: Numbers k such that A000593(A146076(k)) = k. (A000593(n) is the sum of the odd divisors of n; A146076(n) is the sum of the even divisors of n.)

The programs for A252540, there is no canonical definition to state claims against.
-/

/-! ## A252540.P3046943272290811543

`A034785(n+1)%A235098(A130223(n))`
-/

namespace A252540.P3046943272290811543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034785 (n + 1)) (A235098 (A130223 n).toNat)

end

end A252540.P3046943272290811543

/-! ## A252540.P17270971898399698866

`A318876(A252541(n+1))`
-/

namespace A252540.P17270971898399698866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (A252541 (n + 1)).toNat

end

end A252540.P17270971898399698866

/-!
# A252541: Numbers k such that A146076(A000593(k)) = k.

The programs for A252541, there is no canonical definition to state claims against.
-/

/-! ## A252541.P17883259667138885846

`A146076(A252540(n+1))`
-/

namespace A252541.P17883259667138885846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A252540 (n + 1)).toNat

end

end A252541.P17883259667138885846

/-! ## A252541.P4199163218295660405

`A074400(A252540(n+1)/2)`
-/

namespace A252541.P4199163218295660405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (SequenceMachineLib.roundAway ((A252540 (n + 1) : ℚ) / 2)).toNat

end

end A252541.P4199163218295660405

/-!
# A252542: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252542, there is no canonical definition to state claims against.
-/

/-! ## A252542.P14115894344073413226

`A252544((n+1)²+n²)`
-/

namespace A252542.P14115894344073413226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 ((n + 1) ^ 2 + n ^ 2)

end

end A252542.P14115894344073413226

/-! ## A252542.P16126073989197383730

`record[A003982(n)*A252544(n+1)]`
-/

namespace A252542.P16126073989197383730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252542.P16126073989197383730

/-! ## A252542.P16822169971759391842

`record[root(A252544(n+1), A143182(n))]`
-/

namespace A252542.P16822169971759391842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252544 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252542.P16822169971759391842

/-! ## A252542.P14329610181783560587

`record[gcd(A049581(n), A252544(n+1))]`
-/

namespace A252542.P14329610181783560587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252542.P14329610181783560587

/-! ## A252542.P16197154380629579014

`record[A203994(n+1)*A252544(n+1)]`
-/

namespace A252542.P16197154380629579014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A252544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252542.P16197154380629579014

/-!
# A252543: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 1 3 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252543, there is no canonical definition to state claims against.
-/

/-! ## A252543.P16316767964997921326

`A252544(∑[n+1])`
-/

namespace A252543.P16316767964997921326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252543.P16316767964997921326

/-! ## A252543.P5332655675066802853

`record[root(A252544(n+1), A004736(n+1))]`
-/

namespace A252543.P5332655675066802853
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252544 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252543.P5332655675066802853

/-! ## A252543.P5108002828397218116

`record[root(A252544(n+1), A039692(n+1))]`
-/

namespace A252543.P5108002828397218116
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252544 (n + 1) : ℝ) ^ (1 / (A039692 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252543.P5108002828397218116

/-! ## A252543.P7538254759501634488

`record[gcd(A123125(n+1), A252544(n+1))]`
-/

namespace A252543.P7538254759501634488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123125 (n + 1)) (A252544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252543.P7538254759501634488

/-! ## A252543.P9919695640130428153

`record[root(A252544(n+1), A180383(n+1))]`
-/

namespace A252543.P9919695640130428153
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252544 (n + 1) : ℝ) ^ (1 / (A180383 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252543.P9919695640130428153

/-!
# A252545: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252545, there is no canonical definition to state claims against.
-/

/-! ## A252545.P1671339837025604404

`A252544(∑[n]+1)`
-/

namespace A252545.P1671339837025604404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252545.P1671339837025604404

/-! ## A252545.P6817537119437969503

`lcm(2, A252544(A000124(n)))`
-/

namespace A252545.P6817537119437969503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252544 (A000124 n).toNat)

end

end A252545.P6817537119437969503

/-! ## A252545.P2511226932935833239

`record[A010054(n)*A252544(n+1)]`
-/

namespace A252545.P2511226932935833239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252545.P2511226932935833239

/-! ## A252545.P7284896927395044776

`record[root(A252544(n+1), A059268(n))]`
-/

namespace A252545.P7284896927395044776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252544 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252545.P7284896927395044776

/-! ## A252545.P9107287134702348156

`record[gcd(n*A123125(n), A252544(n+1))]`
-/

namespace A252545.P9107287134702348156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A123125 n) (A252544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252545.P9107287134702348156

/-!
# A252546: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252546, there is no canonical definition to state claims against.
-/

/-! ## A252546.P6549886266906142770

`A252544(∑[n+1]+2)`
-/

namespace A252546.P6549886266906142770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252546.P6549886266906142770

/-! ## A252546.P2542900568519153526

`record[A252544(n+3)/A147295(n+3)]`
-/

namespace A252546.P2542900568519153526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252544 (n + 3) : ℚ) / (A147295 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252546.P2542900568519153526

/-!
# A252547: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252547, there is no canonical definition to state claims against.
-/

/-! ## A252547.P360325366710966606

`A252544(∑[n+2]+4)`
-/

namespace A252547.P360325366710966606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252547.P360325366710966606

/-! ## A252547.P1772379496957089174

`lcm(2, A252544(A167614(n+1)))`
-/

namespace A252547.P1772379496957089174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252544 (A167614 (n + 1)).toNat)

end

end A252547.P1772379496957089174

/-! ## A252547.P13199264358978418978

`A252544(A167614(n+1))+A178798(n)`
-/

namespace A252547.P13199264358978418978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A167614 (n + 1)).toNat + A178798 n

end

end A252547.P13199264358978418978

/-! ## A252547.P14098566388833587777

`or(A000038(n), A252544(A167614(n+1)))`
-/

namespace A252547.P14098566388833587777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252544 (A167614 (n + 1)).toNat)

end

end A252547.P14098566388833587777

/-! ## A252547.P8511664140298259411

`A252544(A167614(n+1))+A034432(n+1)`
-/

namespace A252547.P8511664140298259411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A167614 (n + 1)).toNat + A034432 (n + 1)

end

end A252547.P8511664140298259411

/-!
# A252548: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252548, there is no canonical definition to state claims against.
-/

/-! ## A252548.P5088002025620586898

`A252544(A374005(n+1))`
-/

namespace A252548.P5088002025620586898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A374005 (n + 1)).toNat

end

end A252548.P5088002025620586898

/-! ## A252548.P744958668821224787

`A252544(A167499(n+3))`
-/

namespace A252548.P744958668821224787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A167499 (n + 3)).toNat

end

end A252548.P744958668821224787

/-! ## A252548.P5818176725653106551

`A252544(A155212(n)+13)`
-/

namespace A252548.P5818176725653106551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A155212 n + 13).toNat

end

end A252548.P5818176725653106551

/-! ## A252548.P7761079699781693601

`A252544(A167614(n+3)+2)`
-/

namespace A252548.P7761079699781693601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A167614 (n + 3) + 2).toNat

end

end A252548.P7761079699781693601

/-! ## A252548.P1007250301664329547

`A252544(A052905(n+1)+10)`
-/

namespace A252548.P1007250301664329547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A052905 (n + 1) + 10).toNat

end

end A252548.P1007250301664329547

/-!
# A252549: Number of (6+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 1 3 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252549, there is no canonical definition to state claims against.
-/

/-! ## A252549.P8291906027889307262

`A252544(A167499(n+4)+1)`
-/

namespace A252549.P8291906027889307262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A167499 (n + 4) + 1).toNat

end

end A252549.P8291906027889307262

/-! ## A252549.P11511268743819560760

`A252544(A167614(n+4)+3)`
-/

namespace A252549.P11511268743819560760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A167614 (n + 4) + 3).toNat

end

end A252549.P11511268743819560760

/-! ## A252549.P17359570075484681165

`A252544(A000124(n+5)+5)`
-/

namespace A252549.P17359570075484681165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (A000124 (n + 5) + 5).toNat

end

end A252549.P17359570075484681165

/-! ## A252549.P16979158003991124542

`A252544(eq[5, A002262(n)]+1)`
-/

namespace A252549.P16979158003991124542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A252549.P16979158003991124542

/-! ## A252549.P10690358265168852529

`A252544(eq[7, A131818(n+1)])`
-/

namespace A252549.P10690358265168852529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252549.P10690358265168852529

/-!
# A252550: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252550, there is no canonical definition to state claims against.
-/

/-! ## A252550.P16175242101207564334

`A252558(∑[4*n]+1)`
-/

namespace A252550.P16175242101207564334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252550.P16175242101207564334

/-! ## A252550.P11758190263760068983

`record[gcd(A049581(n), A252558(n+1))]`
-/

namespace A252550.P11758190263760068983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252558 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252550.P11758190263760068983

/-! ## A252550.P13214950995835411914

`record[root(A252558(n+1), A286157(n+1))]`
-/

namespace A252550.P13214950995835411914
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252558 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252550.P13214950995835411914

/-! ## A252550.P8290463848745869867

`A326544(n)+A252558(A001844(n))`
-/

namespace A252550.P8290463848745869867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A252558 (A001844 n).toNat

end

end A252550.P8290463848745869867

/-! ## A252550.P17591610262984643241

`or(A000007(n), A252558(A001844(n)))`
-/

namespace A252550.P17591610262984643241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252558 (A001844 n).toNat)

end

end A252550.P17591610262984643241

/-!
# A252551: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252551, there is no canonical definition to state claims against.
-/

/-! ## A252551.P13539325603085954994

`A252558(∑[n+1])`
-/

namespace A252551.P13539325603085954994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252551.P13539325603085954994

/-! ## A252551.P9464095934851696899

`A015838(n)*A252558(A000217(n+1))`
-/

namespace A252551.P9464095934851696899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 n * A252558 (A000217 (n + 1)).toNat

end

end A252551.P9464095934851696899

/-! ## A252551.P11195320248377479419

`A252558(A000217(n+1))%A252552(n+1)`
-/

namespace A252551.P11195320248377479419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252558 (A000217 (n + 1)).toNat) (A252552 (n + 1))

end

end A252551.P11195320248377479419

/-! ## A252551.P13124536548488247507

`A252558(A000217(n+1))+and(32, A000010(n+1))`
-/

namespace A252551.P13124536548488247507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000217 (n + 1)).toNat + Int.land 32 (A000010 (n + 1))

end

end A252551.P13124536548488247507

/-! ## A252551.P11444913202345380734

`A020639(gcd(n, n+1))*A252558(A000217(n+1))`
-/

namespace A252551.P11444913202345380734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A252558 (A000217 (n + 1)).toNat

end

end A252551.P11444913202345380734

/-!
# A252552: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252552, there is no canonical definition to state claims against.
-/

/-! ## A252552.P7089041407616102138

`A252558(∑[n+2])`
-/

namespace A252552.P7089041407616102138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252552.P7089041407616102138

/-! ## A252552.P3433595397476298859

`or(A000038(n), A252558(A000096(n+1)))`
-/

namespace A252552.P3433595397476298859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252558 (A000096 (n + 1)).toNat)

end

end A252552.P3433595397476298859

/-! ## A252552.P15244426854001387823

`A252558(A000096(n+1))%A017105(n)²`
-/

namespace A252552.P15244426854001387823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252558 (A000096 (n + 1)).toNat) (A017105 n ^ 2)

end

end A252552.P15244426854001387823

/-! ## A252552.P13795112949568142620

`A007318(A000217(n))*A252558(A000096(n+1))`
-/

namespace A252552.P13795112949568142620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A252558 (A000096 (n + 1)).toNat

end

end A252552.P13795112949568142620

/-!
# A252553: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252553, there is no canonical definition to state claims against.
-/

/-! ## A252553.P2061360598187802607

`A252558(∑[n+3]+1)`
-/

namespace A252553.P2061360598187802607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252553.P2061360598187802607

/-! ## A252553.P14245474134779646212

`record[A252558(A198464(n+1))]`
-/

namespace A252553.P14245474134779646212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252553.P14245474134779646212

/-! ## A252553.P2363462262646488554

`A252558(A034856(n+2))+A000038(3*n+2)`
-/

namespace A252553.P2363462262646488554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A034856 (n + 2)).toNat + A000038 (3 * n + 2)

end

end A252553.P2363462262646488554

/-!
# A252554: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252554, there is no canonical definition to state claims against.
-/

/-! ## A252554.P11925504578184025336

`A252558(A141214(n+1))`
-/

namespace A252554.P11925504578184025336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A141214 (n + 1)).toNat

end

end A252554.P11925504578184025336

/-! ## A252554.P15826253856549433953

`A252558(A027379(n+2))`
-/

namespace A252554.P15826253856549433953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A027379 (n + 2)).toNat

end

end A252554.P15826253856549433953

/-! ## A252554.P4859661194199115976

`A252558(A055998(n+2))`
-/

namespace A252554.P4859661194199115976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A055998 (n + 2)).toNat

end

end A252554.P4859661194199115976

/-! ## A252554.P13082610487308818091

`A252558(A052905(n+1)+2)`
-/

namespace A252554.P13082610487308818091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A052905 (n + 1) + 2).toNat

end

end A252554.P13082610487308818091

/-! ## A252554.P11665990184077175208

`A252558(A000124(n+4)-4)`
-/

namespace A252554.P11665990184077175208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000124 (n + 4) - 4).toNat

end

end A252554.P11665990184077175208

/-!
# A252555: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252555, there is no canonical definition to state claims against.
-/

/-! ## A252555.P2589680540282738698

`A252558(A046691(n+3))`
-/

namespace A252555.P2589680540282738698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A046691 (n + 3)).toNat

end

end A252555.P2589680540282738698

/-! ## A252555.P4734623794358179205

`A252558(Δ[A023545(n+1)])`
-/

namespace A252555.P4734623794358179205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (f1 (n + 1) - f1 n).toNat

end

end A252555.P4734623794358179205

/-! ## A252555.P14478432980936550466

`A252558(A000217(n+5)-4)`
-/

namespace A252555.P14478432980936550466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000217 (n + 5) - 4).toNat

end

end A252555.P14478432980936550466

/-! ## A252555.P4235126156820565539

`A252558(A000124(n+5)-5)`
-/

namespace A252555.P4235126156820565539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000124 (n + 5) - 5).toNat

end

end A252555.P4235126156820565539

/-! ## A252555.P9989549598618144066

`A252558(A000096(n+3)+n+2)`
-/

namespace A252555.P9989549598618144066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A252555.P9989549598618144066

/-!
# A252556: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252556, there is no canonical definition to state claims against.
-/

/-! ## A252556.P12334683183188247106

`A252558(A052905(n+3))`
-/

namespace A252556.P12334683183188247106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A052905 (n + 3)).toNat

end

end A252556.P12334683183188247106

/-! ## A252556.P18222119149807855783

`A252558(A046691(n+4)-1)`
-/

namespace A252556.P18222119149807855783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A046691 (n + 4) - 1).toNat

end

end A252556.P18222119149807855783

/-! ## A252556.P15124557440850831804

`A252558(Δ[Δ[A006504(n+1)]])`
-/

namespace A252556.P15124557440850831804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (f1 (n + 1) - f1 n).toNat

end

end A252556.P15124557440850831804

/-! ## A252556.P11328741553178810690

`A252558(Δ[A023551(n+1)]+1)`
-/

namespace A252556.P11328741553178810690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (f1 (n + 1) - f1 n + 1).toNat

end

end A252556.P11328741553178810690

/-! ## A252556.P17659735527306828508

`A252558(Δ[A023545(n+2)]-1)`
-/

namespace A252556.P17659735527306828508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (f1 (n + 1) - f1 n - 1).toNat

end

end A252556.P17659735527306828508

/-!
# A252557: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252557, there is no canonical definition to state claims against.
-/

/-! ## A252557.P9654431144468988761

`A252558(A055999(n+4))`
-/

namespace A252557.P9654431144468988761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A055999 (n + 4)).toNat

end

end A252557.P9654431144468988761

/-! ## A252557.P6817608241091007101

`A252558(Δ[A023551(n+2)])`
-/

namespace A252557.P6817608241091007101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (f1 (n + 1) - f1 n).toNat

end

end A252557.P6817608241091007101

/-! ## A252557.P6834452080901790889

`A252558(A056000(n+3)+4)`
-/

namespace A252557.P6834452080901790889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A056000 (n + 3) + 4).toNat

end

end A252557.P6834452080901790889

/-! ## A252557.P2037876502988199427

`A252558(A167614(n+4)+A005843(n+2))`
-/

namespace A252557.P2037876502988199427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A252557.P2037876502988199427

/-! ## A252557.P2326065903207480741

`A252558(A027379(n+3)+A005843(n+5))`
-/

namespace A252557.P2326065903207480741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A027379 (n + 3) + A005843 (n + 5)).toNat

end

end A252557.P2326065903207480741

/-!
# A252559: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252559, there is no canonical definition to state claims against.
-/

/-! ## A252559.P10361262044936761601

`A252558(∑[n]+1)`
-/

namespace A252559.P10361262044936761601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252559.P10361262044936761601

/-! ## A252559.P1397738131388482496

`record[A010054(n)*A252558(n+1)]`
-/

namespace A252559.P1397738131388482496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252559.P1397738131388482496

/-! ## A252559.P12589243955734171113

`record[A103451(n)*A252558(n+1)]`
-/

namespace A252559.P12589243955734171113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A252558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252559.P12589243955734171113

/-! ## A252559.P15532548167566233853

`record[A252558(n+1)/A022167(n)]`
-/

namespace A252559.P15532548167566233853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252558 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252559.P15532548167566233853

/-! ## A252559.P18288181102684693656

`record[root(A252558(n+1), A047150(n))]`
-/

namespace A252559.P18288181102684693656
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252558 (n + 1) : ℝ) ^ (1 / (A047150 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252559.P18288181102684693656

/-!
# A252560: Number of (2+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 1, 2, 4, 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 1, 2, 4, 6 or 7.

The programs for A252560, there is no canonical definition to state claims against.
-/

/-! ## A252560.P10504049904226238239

`A252558(∑[n+1]+2)`
-/

namespace A252560.P10504049904226238239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252560.P10504049904226238239

/-! ## A252560.P7993604195309564253

`or(A000007(n), A252558(A167499(n)-3))`
-/

namespace A252560.P7993604195309564253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252558 (A167499 n - 3).toNat)

end

end A252560.P7993604195309564253

/-! ## A252560.P14443660379488556714

`A007318(A000217(n))*A252558(A167499(n)-3)`
-/

namespace A252560.P14443660379488556714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A252558 (A167499 n - 3).toNat

end

end A252560.P14443660379488556714

/-! ## A252560.P6155989643200015695

`A007318(A000384(n))*A252558(A167499(n)-3)`
-/

namespace A252560.P6155989643200015695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000384 n).toNat * A252558 (A167499 n - 3).toNat

end

end A252560.P6155989643200015695

/-! ## A252560.P8019384973181487913

`A000010(A014963(2*(n+1)))*A252558(A167499(n)-3)`
-/

namespace A252560.P8019384973181487913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A252558 (A167499 n - 3).toNat

end

end A252560.P8019384973181487913

/-!
# A252561: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252561, there is no canonical definition to state claims against.
-/

/-! ## A252561.P7332847877765330543

`A252558(∑[n+2]+4)`
-/

namespace A252561.P7332847877765330543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252561.P7332847877765330543

/-! ## A252561.P610992318166398457

`or(char[1], A252558(A167614(n+1)))`
-/

namespace A252561.P610992318166398457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252558 (A167614 (n + 1)).toNat)

end

end A252561.P610992318166398457

/-! ## A252561.P9883086048485904226

`lcm(A057077(n), A252558(A167614(n+1)))`
-/

namespace A252561.P9883086048485904226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A252558 (A167614 (n + 1)).toNat)

end

end A252561.P9883086048485904226

/-! ## A252561.P3464736956813390745

`A252558(A167614(n+1))%A252555(n+1)`
-/

namespace A252561.P3464736956813390745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252558 (A167614 (n + 1)).toNat) (A252555 (n + 1))

end

end A252561.P3464736956813390745

/-! ## A252561.P12437975874930904870

`A252558(A167614(n+1))+A000038(3*n+2)`
-/

namespace A252561.P12437975874930904870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A167614 (n + 1)).toNat + A000038 (3 * n + 2)

end

end A252561.P12437975874930904870

/-!
# A252562: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252562, there is no canonical definition to state claims against.
-/

/-! ## A252562.P16260120688384605509

`A252558(A141214(n)+7)`
-/

namespace A252562.P16260120688384605509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A141214 n + 7).toNat

end

end A252562.P16260120688384605509

/-! ## A252562.P6581268977070080805

`A252558(A052905(n)+9)`
-/

namespace A252562.P6581268977070080805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A052905 n + 9).toNat

end

end A252562.P6581268977070080805

/-! ## A252562.P11852157312081100804

`A252558(A055999(n)+10)`
-/

namespace A252562.P11852157312081100804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A055999 n + 10).toNat

end

end A252562.P11852157312081100804

/-! ## A252562.P7400477133097073864

`A252558(A167614(n+2)+1)`
-/

namespace A252562.P7400477133097073864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A167614 (n + 2) + 1).toNat

end

end A252562.P7400477133097073864

/-! ## A252562.P5440988589133030410

`A252558(A166136(n+2)-2)`
-/

namespace A252562.P5440988589133030410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A166136 (n + 2) - 2).toNat

end

end A252562.P5440988589133030410

/-!
# A252563: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252563, there is no canonical definition to state claims against.
-/

/-! ## A252563.P14099316559081758415

`A252558(A167499(n+3))`
-/

namespace A252563.P14099316559081758415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A167499 (n + 3)).toNat

end

end A252563.P14099316559081758415

/-! ## A252563.P1985031867911955683

`A252558(A000124(n+4)+4)`
-/

namespace A252563.P1985031867911955683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000124 (n + 4) + 4).toNat

end

end A252563.P1985031867911955683

/-! ## A252563.P15937487647777228928

`A252558(A052905(n+1)+10)`
-/

namespace A252563.P15937487647777228928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A052905 (n + 1) + 10).toNat

end

end A252563.P15937487647777228928

/-! ## A252563.P3294872831620426009

`A252558(A020710(A000217(n+4)))`
-/

namespace A252563.P3294872831620426009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A020710 (A000217 (n + 4)).toNat).toNat

end

end A252563.P3294872831620426009

/-! ## A252563.P9037070485291747540

`A252558(A000217(A020710(n))-n)`
-/

namespace A252563.P9037070485291747540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000217 (A020710 n).toNat - (n : ℤ)).toNat

end

end A252563.P9037070485291747540

/-!
# A252564: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252564, there is no canonical definition to state claims against.
-/

/-! ## A252564.P16948537194513241433

`A252558(A166136(n+4))`
-/

namespace A252564.P16948537194513241433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A166136 (n + 4)).toNat

end

end A252564.P16948537194513241433

/-! ## A252564.P12326814833518569249

`A252558(A167499(n+4)+1)`
-/

namespace A252564.P12326814833518569249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A167499 (n + 4) + 1).toNat

end

end A252564.P12326814833518569249

/-! ## A252564.P15204309070678788245

`A252558(A167614(n+4)+3)`
-/

namespace A252564.P15204309070678788245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A167614 (n + 4) + 3).toNat

end

end A252564.P15204309070678788245

/-! ## A252564.P14083276612916185665

`A252558(A000217(n+5)+6)`
-/

namespace A252564.P14083276612916185665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000217 (n + 5) + 6).toNat

end

end A252564.P14083276612916185665

/-! ## A252564.P16077544646222669271

`A252558(A133263(n+3)+A062545(n+5))`
-/

namespace A252564.P16077544646222669271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A133263 (n + 3) + A062545 (n + 5)).toNat

end

end A252564.P16077544646222669271

/-!
# A252565: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 4 6 or 7.

The programs for A252565, there is no canonical definition to state claims against.
-/

/-! ## A252565.P10031364175787966366

`A252558(A000217(n+6)+7)`
-/

namespace A252565.P10031364175787966366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A000217 (n + 6) + 7).toNat

end

end A252565.P10031364175787966366

/-! ## A252565.P11909451203503411973

`A252558(A167614(n+6)-(n+3))`
-/

namespace A252565.P11909451203503411973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A252565.P11909451203503411973

/-! ## A252565.P10944262046179830862

`A252558(n+10+A167614(n+4))`
-/

namespace A252565.P10944262046179830862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 ((n + 10 : ℤ) + A167614 (n + 4)).toNat

end

end A252565.P10944262046179830862

/-! ## A252565.P11027805499910654323

`A252558(A345478(Δ[A023551(n+1)]))`
-/

namespace A252565.P11027805499910654323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A345478 (f1 (n + 1) - f1 n).toNat).toNat

end

end A252565.P11027805499910654323

/-! ## A252565.P4222562051309621824

`A252558(A005843(n+9)+A007318(A027379(n+4)))`
-/

namespace A252565.P4222562051309621824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252558 (A005843 (n + 9) + A007318 (A027379 (n + 4)).toNat).toNat

end

end A252565.P4222562051309621824

/-!
# A252566: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252566, there is no canonical definition to state claims against.
-/

/-! ## A252566.P9876245822917548081

`A252574(∑[4*n]+1)`
-/

namespace A252566.P9876245822917548081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252566.P9876245822917548081

/-! ## A252566.P11662604926297857838

`record[A003982(n)*A252574(n+1)]`
-/

namespace A252566.P11662604926297857838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252566.P11662604926297857838

/-! ## A252566.P4623804607038109853

`record[gcd(A114327(n), A252574(n+1))]`
-/

namespace A252566.P4623804607038109853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252566.P4623804607038109853

/-! ## A252566.P12742221452003496771

`lcm(A057077(n), A252574(A001844(n)))`
-/

namespace A252566.P12742221452003496771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A252574 (A001844 n).toNat)

end

end A252566.P12742221452003496771

/-! ## A252566.P2808080672480989214

`or(A000038(n), A252574(A001844(n)))`
-/

namespace A252566.P2808080672480989214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252574 (A001844 n).toNat)

end

end A252566.P2808080672480989214

/-!
# A252567: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252567, there is no canonical definition to state claims against.
-/

/-! ## A252567.P10085002143749431908

`A252574(∑[n+1])`
-/

namespace A252567.P10085002143749431908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252567.P10085002143749431908

/-! ## A252567.P8365411791662612306

`record[A252574(A257506(n+1))]`
-/

namespace A252567.P8365411791662612306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252567.P8365411791662612306

/-! ## A252567.P865079551551221771

`record[A252574(n+1)/A225468(n)]`
-/

namespace A252567.P865079551551221771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252574 (n + 1) : ℚ) / (A225468 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252567.P865079551551221771

/-! ## A252567.P5739440060220863897

`record[A252574(n+1)/A286781(n)]`
-/

namespace A252567.P5739440060220863897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252574 (n + 1) : ℚ) / (A286781 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252567.P5739440060220863897

/-! ## A252567.P2860681146848506831

`record[root(A252574(n+1), A093565(n))]`
-/

namespace A252567.P2860681146848506831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252574 (n + 1) : ℝ) ^ (1 / (A093565 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252567.P2860681146848506831

/-!
# A252568: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252568, there is no canonical definition to state claims against.
-/

/-! ## A252568.P17388732870282916990

`A252574(∑[n+2])`
-/

namespace A252568.P17388732870282916990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252568.P17388732870282916990

/-! ## A252568.P9839929880786575348

`record[A252574(A000096(A065648(n)))]`
-/

namespace A252568.P9839929880786575348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252568.P9839929880786575348

/-! ## A252568.P75053099373888350

`record[A252574(A000096(A117910(n)))]`
-/

namespace A252568.P75053099373888350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000096 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252568.P75053099373888350

/-! ## A252568.P16261316251909808823

`record[A252574(A000096(A286602(n)))]`
-/

namespace A252568.P16261316251909808823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000096 (A286602 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252568.P16261316251909808823

/-! ## A252568.P436891901722175593

`record[A252574(A000096(A329048(n)))]`
-/

namespace A252568.P436891901722175593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000096 (A329048 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252568.P436891901722175593

/-!
# A252569: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252569, there is no canonical definition to state claims against.
-/

/-! ## A252569.P7412462615608998676

`A252574(∑[n+3]+1)`
-/

namespace A252569.P7412462615608998676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252569.P7412462615608998676

/-!
# A252570: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252570, there is no canonical definition to state claims against.
-/

/-! ## A252570.P11078283954384063932

`A252574(A141214(n+1))`
-/

namespace A252570.P11078283954384063932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A141214 (n + 1)).toNat

end

end A252570.P11078283954384063932

/-! ## A252570.P2002693218536740474

`A252574(A027379(n+2))`
-/

namespace A252570.P2002693218536740474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A027379 (n + 2)).toNat

end

end A252570.P2002693218536740474

/-! ## A252570.P12092105670074050778

`A252574(A055998(n+2))`
-/

namespace A252570.P12092105670074050778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A055998 (n + 2)).toNat

end

end A252570.P12092105670074050778

/-! ## A252570.P3964981670517642889

`A252574(A155212(n)+5)`
-/

namespace A252570.P3964981670517642889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A155212 n + 5).toNat

end

end A252570.P3964981670517642889

/-! ## A252570.P9711075625783522137

`A252574(A052905(n+1)+2)`
-/

namespace A252570.P9711075625783522137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A052905 (n + 1) + 2).toNat

end

end A252570.P9711075625783522137

/-!
# A252571: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252571, there is no canonical definition to state claims against.
-/

/-! ## A252571.P10438149286836337395

`A252574(A046691(n+3))`
-/

namespace A252571.P10438149286836337395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A046691 (n + 3)).toNat

end

end A252571.P10438149286836337395

/-! ## A252571.P173155923898977424

`A252574(Δ[A023545(n+1)])`
-/

namespace A252571.P173155923898977424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (f1 (n + 1) - f1 n).toNat

end

end A252571.P173155923898977424

/-! ## A252571.P14284134976161366098

`A252574(A000217(n+5)-4)`
-/

namespace A252571.P14284134976161366098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000217 (n + 5) - 4).toNat

end

end A252571.P14284134976161366098

/-! ## A252571.P9607194179356187234

`A252574(A000124(n+5)-5)`
-/

namespace A252571.P9607194179356187234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000124 (n + 5) - 5).toNat

end

end A252571.P9607194179356187234

/-! ## A252571.P2903055774335819459

`A252574(A005408(n)+A055999(n)+10)`
-/

namespace A252571.P2903055774335819459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A005408 n + (A055999 n + 10)).toNat

end

end A252571.P2903055774335819459

/-!
# A252572: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252572, there is no canonical definition to state claims against.
-/

/-! ## A252572.P9145537678431518857

`A252574(A056119(n)+16)`
-/

namespace A252572.P9145537678431518857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A056119 n + 16).toNat

end

end A252572.P9145537678431518857

/-! ## A252572.P6238659274479942083

`A252574(A000096(n+5)-4)`
-/

namespace A252572.P6238659274479942083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000096 (n + 5) - 4).toNat

end

end A252572.P6238659274479942083

/-! ## A252572.P3832056945872696956

`A252574(A000124(n+6)-6)`
-/

namespace A252572.P3832056945872696956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000124 (n + 6) - 6).toNat

end

end A252572.P3832056945872696956

/-! ## A252572.P9420668775957641320

`A252574(Δ[A023545(n+2)]-1)`
-/

namespace A252572.P9420668775957641320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (f1 (n + 1) - f1 n - 1).toNat

end

end A252572.P9420668775957641320

/-! ## A252572.P12314299064254909946

`A252574(A000217(n+5)+n+1)`
-/

namespace A252572.P12314299064254909946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A252572.P12314299064254909946

/-!
# A252573: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252573, there is no canonical definition to state claims against.
-/

/-! ## A252573.P2979396649002391932

`A252574(A055999(n+4))`
-/

namespace A252573.P2979396649002391932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A055999 (n + 4)).toNat

end

end A252573.P2979396649002391932

/-! ## A252573.P12972671996680280735

`A252574(A052905(n+4)-1)`
-/

namespace A252573.P12972671996680280735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A052905 (n + 4) - 1).toNat

end

end A252573.P12972671996680280735

/-! ## A252573.P6483712309325385516

`A252574(A000124(n+7)-7)`
-/

namespace A252573.P6483712309325385516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000124 (n + 7) - 7).toNat

end

end A252573.P6483712309325385516

/-! ## A252573.P6907747879350531585

`A252574(A000096(n+5)+n+2)`
-/

namespace A252573.P6907747879350531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A252573.P6907747879350531585

/-! ## A252573.P11396010907308158019

`A252574(A000217(n+6)+n+1)`
-/

namespace A252573.P11396010907308158019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A252573.P11396010907308158019

/-!
# A252575: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252575, there is no canonical definition to state claims against.
-/

/-! ## A252575.P15831447953579076543

`A252574(∑[n]+1)`
-/

namespace A252575.P15831447953579076543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252575.P15831447953579076543

/-! ## A252575.P3068115978732137473

`record[A010054(n)*A252574(n+1)]`
-/

namespace A252575.P3068115978732137473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252575.P3068115978732137473

/-! ## A252575.P11695388392594930811

`record[root(A252574(n+1), A124927(n))]`
-/

namespace A252575.P11695388392594930811
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252574 (n + 1) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252575.P11695388392594930811

/-! ## A252575.P2213425180328341962

`record[gcd(A002262(n), A252574(n+1))]`
-/

namespace A252575.P2213425180328341962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252575.P2213425180328341962

/-! ## A252575.P2481039527888513993

`record[lcm(A106459(n), A252574(n+1))]`
-/

namespace A252575.P2481039527888513993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106459 n) (A252574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252575.P2481039527888513993

/-!
# A252576: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252576, there is no canonical definition to state claims against.
-/

/-! ## A252576.P9909275864184297367

`A252574(∑[n+1]+2)`
-/

namespace A252576.P9909275864184297367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252576.P9909275864184297367

/-! ## A252576.P11646603068643316228

`A252574(A000217(n+1)+2)+char[33]`
-/

namespace A252576.P11646603068643316228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000217 (n + 1) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252576.P11646603068643316228

/-! ## A252576.P13160537531946244153

`A014963(A000132(n))*A252574(A000217(n+1)+2)`
-/

namespace A252576.P13160537531946244153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000132 n).toNat * A252574 (A000217 (n + 1) + 2).toNat

end

end A252576.P13160537531946244153

/-! ## A252576.P4677637406569550204

`A014963(A000217(n+9))*A252574(A000217(n+1)+2)`
-/

namespace A252576.P4677637406569550204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 9)).toNat * A252574 (A000217 (n + 1) + 2).toNat

end

end A252576.P4677637406569550204

/-! ## A252576.P9644654759372874956

`A007318(A020639(2*(n+1)))*A252574(A000217(n+1)+2)`
-/

namespace A252576.P9644654759372874956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A252574 (A000217 (n + 1) + 2).toNat

end

end A252576.P9644654759372874956

/-!
# A252577: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252577, there is no canonical definition to state claims against.
-/

/-! ## A252577.P16437835314438179612

`A252574(∑[n+2]+4)`
-/

namespace A252577.P16437835314438179612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252577.P16437835314438179612

/-! ## A252577.P11141226016056951602

`lcm((-1)^n, A252574(A167614(n+1)))`
-/

namespace A252577.P11141226016056951602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A252574 (A167614 (n + 1)).toNat)

end

end A252577.P11141226016056951602

/-! ## A252577.P2755310956646792378

`A252574(A167614(n+1))+A025466(n)`
-/

namespace A252577.P2755310956646792378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A167614 (n + 1)).toNat + A025466 n

end

end A252577.P2755310956646792378

/-! ## A252577.P7318493228879303811

`A252574(A167614(n+1))+A185284(n)`
-/

namespace A252577.P7318493228879303811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A167614 (n + 1)).toNat + A185284 n

end

end A252577.P7318493228879303811

/-! ## A252577.P5906170147364099946

`A252574(A167614(n+1))%A016963(n)`
-/

namespace A252577.P5906170147364099946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252574 (A167614 (n + 1)).toNat) (A016963 n)

end

end A252577.P5906170147364099946

/-!
# A252578: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252578, there is no canonical definition to state claims against.
-/

/-! ## A252578.P6631214536047284947

`A252574(A141214(n)+7)`
-/

namespace A252578.P6631214536047284947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A141214 n + 7).toNat

end

end A252578.P6631214536047284947

/-! ## A252578.P15906425306460689899

`A252574(A052905(n)+9)`
-/

namespace A252578.P15906425306460689899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A052905 n + 9).toNat

end

end A252578.P15906425306460689899

/-! ## A252578.P12644444278622571271

`A252574(A055999(n)+10)`
-/

namespace A252578.P12644444278622571271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A055999 n + 10).toNat

end

end A252578.P12644444278622571271

/-! ## A252578.P1033304228445936736

`A252574(A167614(n+2)+1)`
-/

namespace A252578.P1033304228445936736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A167614 (n + 2) + 1).toNat

end

end A252578.P1033304228445936736

/-! ## A252578.P9698402102868445539

`A252574(A166136(n+2)-2)`
-/

namespace A252578.P9698402102868445539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A166136 (n + 2) - 2).toNat

end

end A252578.P9698402102868445539

/-!
# A252579: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252579, there is no canonical definition to state claims against.
-/

/-! ## A252579.P7004331877361402253

`A252574(A155212(n)+13)`
-/

namespace A252579.P7004331877361402253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A155212 n + 13).toNat

end

end A252579.P7004331877361402253

/-! ## A252579.P8005842765685389835

`A252574(A000124(n+4)+4)`
-/

namespace A252579.P8005842765685389835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000124 (n + 4) + 4).toNat

end

end A252579.P8005842765685389835

/-! ## A252579.P6252212550141420105

`A252574(A000217(n+4)+5)`
-/

namespace A252579.P6252212550141420105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000217 (n + 4) + 5).toNat

end

end A252579.P6252212550141420105

/-! ## A252579.P2235540686546407266

`A252574(A046691(n+2)+9)`
-/

namespace A252579.P2235540686546407266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A046691 (n + 2) + 9).toNat

end

end A252579.P2235540686546407266

/-! ## A252579.P7252705570432543641

`A252574(A052905(n+1)+10)`
-/

namespace A252579.P7252705570432543641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A052905 (n + 1) + 10).toNat

end

end A252579.P7252705570432543641

/-!
# A252580: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252580, there is no canonical definition to state claims against.
-/

/-! ## A252580.P4800060062970070772

`A252574(A056115(n)+21)`
-/

namespace A252580.P4800060062970070772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A056115 n + 21).toNat

end

end A252580.P4800060062970070772

/-! ## A252580.P5255976238153234105

`A252574(A167499(n+4)+1)`
-/

namespace A252580.P5255976238153234105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A167499 (n + 4) + 1).toNat

end

end A252580.P5255976238153234105

/-! ## A252580.P4973181497604018904

`A252574(A134869(n+5)+5)`
-/

namespace A252580.P4973181497604018904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A134869 (n + 5) + 5).toNat

end

end A252580.P4973181497604018904

/-! ## A252580.P15486917984313789606

`A252574(A000217(n+7)-7-2*n)`
-/

namespace A252580.P15486917984313789606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A000217 (n + 7) - 7 - (2 * n : ℤ)).toNat

end

end A252580.P15486917984313789606

/-! ## A252580.P10412878099089412800

`A252574(A005843(n+7)+A000124(n+3))`
-/

namespace A252580.P10412878099089412800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A252580.P10412878099089412800

/-!
# A252581: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 1 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 1 2 5 6 or 7.

The programs for A252581, there is no canonical definition to state claims against.
-/

/-! ## A252581.P11810582988853761943

`A252574(A167487(n+5))`
-/

namespace A252581.P11810582988853761943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A167487 (n + 5)).toNat

end

end A252581.P11810582988853761943

/-! ## A252581.P12852332590104313074

`A252574(A167499(n+5)+2)`
-/

namespace A252581.P12852332590104313074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A167499 (n + 5) + 2).toNat

end

end A252581.P12852332590104313074

/-! ## A252581.P6879009517526538635

`A252574(A167614(n+5)+4)`
-/

namespace A252581.P6879009517526538635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A167614 (n + 5) + 4).toNat

end

end A252581.P6879009517526538635

/-! ## A252581.P16937640662117125848

`A252574(A133263(n+6)+5)`
-/

namespace A252581.P16937640662117125848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A133263 (n + 6) + 5).toNat

end

end A252581.P16937640662117125848

/-! ## A252581.P8529320131070322561

`A252574(A008486(n+7)+A000124(n+3))`
-/

namespace A252581.P8529320131070322561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252574 (A008486 (n + 7) + A000124 (n + 3)).toNat

end

end A252581.P8529320131070322561

/-!
# A252583: a(n) = a(n-1)^3 + a(n-2)^6, a(0) = 0, a(1) = 1.

The programs for A252583, the canonical program `A252583.P203768269246270493` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252583 has offset 0).

The definition of A252583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3+a(n-2)^6` (program `A252583.P203768269246270493`, by `A252583.P203768269246270493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A252583.P203768269246270493

`a(n-1)^3+a(n-2)^6` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A252583

/-- `a(n-1)^3+a(n-2)^6` -/
def P203768269246270493.Spec : Prop :=
  ∀ n, (P203768269246270493.a n : ℤ) = A252583 n

theorem P203768269246270493.correct : P203768269246270493.Spec := by
  intro n
  simp only [A252583]

end A252583

/-! ## A252583.P6504490240963570872

`A003052(a(n-1)²+1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A252583.P6504490240963570872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  A003052 (a (n - 1) ^ 2 + 1).toNat

end

end A252583.P6504490240963570872

namespace A252583

/-- `A003052(a(n-1)²+1)` -/
def P6504490240963570872.Spec : Prop :=
  ∀ n, P6504490240963570872.a n = A252583 n

end A252583

/-!
# A252584: a(n) = a(n-1)^3 + a(n-2)^9, a(0) = 0, a(1) = 1.

The programs for A252584, the canonical program `A252584.P9355758870910634848` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252584 has offset 0).

The definition of A252584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3+a(n-2)^9` (program `A252584.P9355758870910634848`, by `A252584.P9355758870910634848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A252584.P9355758870910634848

`a(n-1)^3+a(n-2)^9` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A252584

/-- `a(n-1)^3+a(n-2)^9` -/
def P9355758870910634848.Spec : Prop :=
  ∀ n, (P9355758870910634848.a n : ℤ) = A252584 n

theorem P9355758870910634848.correct : P9355758870910634848.Spec := by
  intro n
  simp only [A252584]

end A252584

/-! ## A252584.P3379144140984470790

`A217097(a(n-1)+a(n-3)+1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A252584.P3379144140984470790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  A217097 (a (n - 1) + a (n - 3) + 1).toNat

end

end A252584.P3379144140984470790

namespace A252584

/-- `A217097(a(n-1)+a(n-3)+1)` -/
def P3379144140984470790.Spec : Prop :=
  ∀ n, P3379144140984470790.a n = A252584 n

end A252584

/-!
# A252587: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 1 2 7 8 or 9.

The programs for A252587, there is no canonical definition to state claims against.
-/

/-! ## A252587.P14522145698197459078

`A252590(∑[n]+1)`
-/

namespace A252587.P14522145698197459078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252590 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252587.P14522145698197459078

/-! ## A252587.P2037160116903488937

`lcm(2, A252590(A000124(n)))`
-/

namespace A252587.P2037160116903488937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252590 (A000124 n).toNat)

end

end A252587.P2037160116903488937

/-! ## A252587.P12744543645977108819

`record[A252590(A226387(n+1))]`
-/

namespace A252587.P12744543645977108819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252590 (A226387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252587.P12744543645977108819

/-! ## A252587.P296705174629318354

`record[A010054(n)*A252590(n+1)]`
-/

namespace A252587.P296705174629318354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252587.P296705174629318354

/-!
# A252588: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 1 2 7 8 or 9.

The programs for A252588, there is no canonical definition to state claims against.
-/

/-! ## A252588.P7682085082892574965

`A252590(∑[n+1]+2)`
-/

namespace A252588.P7682085082892574965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252590 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252588.P7682085082892574965

/-! ## A252588.P17882208095201939329

`record[A252590(A049777(n+1)+2)]`
-/

namespace A252588.P17882208095201939329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252590 (A049777 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252588.P17882208095201939329

/-! ## A252588.P2981928209241951033

`A214081(n)*A252590(A252460(2*(n+2)))`
-/

namespace A252588.P2981928209241951033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214081 n * A252590 (A252460 (2 * (n + 2))).toNat

end

end A252588.P2981928209241951033

/-!
# A252589: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 1 2 7 8 or 9.

The programs for A252589, there is no canonical definition to state claims against.
-/

/-! ## A252589.P18243187205229579254

`A252590(∑[n+2]+4)`
-/

namespace A252589.P18243187205229579254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252590 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252589.P18243187205229579254

/-!
# A252591: Number of distinct proper angles that can be formed by a vertex and two leg endpoints on grid points in an n X n square grid.

The programs for A252591, there is no canonical definition to state claims against.
-/

/-! ## A252591.P14590941180532673278

`∑[A252592(n+2)]`
-/

namespace A252591.P14590941180532673278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252591.P14590941180532673278

/-! ## A252591.P3568424382543222807

`∑[A069352(A115422(10*n²+n+2)+2)]`
-/

namespace A252591.P3568424382543222807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (A115422 (10 * n ^ 2 + (n + 2)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252591.P3568424382543222807

/-!
# A252592: a(n) = number of new distinct proper angles with vertex and legs on grid points in an n X n square grid that were not found in an (n-1) X (n-1) square grid.

The programs for A252592, there is no canonical definition to state claims against.
-/

/-! ## A252592.P11248724394640009528

`A069352(A115422(10*n²+n+2)+2)`
-/

namespace A252592.P11248724394640009528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (A115422 (10 * n ^ 2 + (n + 2)) + 2).toNat

end

end A252592.P11248724394640009528

/-!
# A252596: Let a(n-1)=p and k=pi(p); then a(n)=prime(k+mod(p,3)).

The programs for A252596, the canonical program `A252596.P10033558872996091197` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252596 has offset 1).

The definition of A252596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252596.P10033558872996091197

`A008578(A000720(a(n-1)+1)+a(n-1)%3+1)` with `a(0)=5`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A252596

/-- `A008578(A000720(a(n-1)+1)+a(n-1)%3+1)` -/
def P10033558872996091197.Spec : Prop :=
  ∀ n, P10033558872996091197.a n = A252596 (n + 1)

theorem P10033558872996091197.correct : P10033558872996091197.Spec := by
  intro n
  simp only [A252596, Nat.add_sub_cancel]

end A252596

/-! ## A252596.P6646508785051458251

`A000040(∑[A321271(A075818(n+1))])`
-/

namespace A252596.P6646508785051458251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (A075818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A252596.P6646508785051458251

namespace A252596

/-- `A000040(∑[A321271(A075818(n+1))])` -/
def P6646508785051458251.Spec : Prop :=
  ∀ n, P6646508785051458251.a n = A252596 (n + 1)

end A252596

/-! ## A252596.P8822473290189784470

`∩[A354994(2*(n+2)), A000040(A344881(n+1))]`
-/

namespace A252596.P8822473290189784470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354994 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A344881 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252596.P8822473290189784470

namespace A252596

/-- `∩[A354994(2*(n+2)), A000040(A344881(n+1))]` -/
def P8822473290189784470.Spec : Prop :=
  ∀ n, (P8822473290189784470.a n : ℤ) = A252596 (n + 1)

end A252596

/-! ## A252596.P15894232921948181489

`A000040(lt[A356014(3*n+2), A000010(2*(n+1))])`
-/

namespace A252596.P15894232921948181489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356014 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A252596.P15894232921948181489

namespace A252596

/-- `A000040(lt[A356014(3*n+2), A000010(2*(n+1))])` -/
def P15894232921948181489.Spec : Prop :=
  ∀ n, P15894232921948181489.a n = A252596 (n + 1)

end A252596

/-! ## A252596.P6085825873818580375

`A322184(A072427(n+2))`
-/

namespace A252596.P6085825873818580375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322184 (A072427 (n + 2)).toNat

end

end A252596.P6085825873818580375

namespace A252596

/-- `A322184(A072427(n+2))` -/
def P6085825873818580375.Spec : Prop :=
  ∀ n, P6085825873818580375.a n = A252596 (n + 1)

end A252596

/-!
# A252597: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252597, there is no canonical definition to state claims against.
-/

/-! ## A252597.P18047593903736935897

`A252605(∑[4*n]+1)`
-/

namespace A252597.P18047593903736935897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252597.P18047593903736935897

/-! ## A252597.P11341784765748835715

`or(1, A252605(A001844(n)))`
-/

namespace A252597.P11341784765748835715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252605 (A001844 n).toNat)

end

end A252597.P11341784765748835715

/-! ## A252597.P2969574824226465617

`record[A252605(A330613(n+1))]`
-/

namespace A252597.P2969574824226465617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252597.P2969574824226465617

/-! ## A252597.P3815605930685032715

`record[A003982(n)*A252605(n+1)]`
-/

namespace A252597.P3815605930685032715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252597.P3815605930685032715

/-! ## A252597.P12343540341871197134

`record[A214505(n)*A252605(n+1)]`
-/

namespace A252597.P12343540341871197134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A252605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252597.P12343540341871197134

/-!
# A252598: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252598, there is no canonical definition to state claims against.
-/

/-! ## A252598.P13152024474572826440

`A252605(∑[n]+1)`
-/

namespace A252598.P13152024474572826440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252598.P13152024474572826440

/-! ## A252598.P18008315858121987363

`record[A252605(n+1)/A008459(n)]`
-/

namespace A252598.P18008315858121987363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252605 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252598.P18008315858121987363

/-! ## A252598.P15167475190684264242

`record[A252605(n+1)/A056939(n)]`
-/

namespace A252598.P15167475190684264242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252605 (n + 1) : ℚ) / (A056939 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252598.P15167475190684264242

/-! ## A252598.P8966049237124874216

`record[A252605(n+1)/A008277(n+1)]`
-/

namespace A252598.P8966049237124874216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252605 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252598.P8966049237124874216

/-! ## A252598.P15294286661038735389

`record[A252605(n+1)/A093905(n+1)]`
-/

namespace A252598.P15294286661038735389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252605 (n + 1) : ℚ) / (A093905 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252598.P15294286661038735389

/-!
# A252599: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252599, there is no canonical definition to state claims against.
-/

/-! ## A252599.P12325079917137197926

`A252605(∑[n+1]+2)`
-/

namespace A252599.P12325079917137197926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252599.P12325079917137197926

/-! ## A252599.P7341903555726957866

`record[A252605(n+2)/A093905(n+1)]`
-/

namespace A252599.P7341903555726957866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252605 (n + 2) : ℚ) / (A093905 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252599.P7341903555726957866

/-! ## A252599.P16127649310965458474

`A252605(A025747(n)+2)+A000007(n+1)`
-/

namespace A252599.P16127649310965458474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A025747 n + 2).toNat + A000007 (n + 1)

end

end A252599.P16127649310965458474

/-! ## A252599.P10867068547863907438

`A252605(A133263(n+1))+A000122(n²+2)`
-/

namespace A252599.P10867068547863907438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A133263 (n + 1)).toNat + A000122 (n ^ 2 + 2)

end

end A252599.P10867068547863907438

/-! ## A252599.P3257095271771826557

`A007318((n²+n)/2)*A252605(A025747(n)+2)`
-/

namespace A252599.P3257095271771826557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat * A252605 (A025747 n + 2).toNat

end

end A252599.P3257095271771826557

