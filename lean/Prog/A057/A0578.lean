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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A057800: Number of ways of getting 5 of a kind, a straight flush, 4 of a kind, full house, flush, straight, 2 pair, 3 of a kind, a pair in wild-card poker with 2 jokers.

The programs for A057800, there is no canonical definition to state claims against.
-/

/-! ## A057800.P7995583732967983403

`A057801(n+1)+A057798(n)-A057799(n+1)`
-/

namespace A057800.P7995583732967983403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057801 (n + 1) + (A057798 n - A057799 (n + 1))

end

end A057800.P7995583732967983403

/-!
# A057801: Number of ways of getting 5 of a kind, a straight flush, 4 of a kind, full house, flush, straight, 2 pair, 3 of a kind, a pair in wild-card poker with 1 joker.

The programs for A057801, there is no canonical definition to state claims against.
-/

/-! ## A057801.P2582982121530152008

`A057799(n+1)+A057800(n)-A057798(n)`
-/

namespace A057801.P2582982121530152008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057799 (n + 1) + (A057800 n - A057798 n)

end

end A057801.P2582982121530152008

/-!
# A057805: Number of ways of getting (at least) 5 of a kind, a straight flush, flush, 4 of a kind, full house, straight, 3 of a kind, 2 pair, a pair in wild-card poker with deuces wild.

The programs for A057805, there is no canonical definition to state claims against.
-/

/-! ## A057805.P14711009911371691138

`A057796(A196050(n+1)^(val(n+1, 3)+1))`
-/

namespace A057805.P14711009911371691138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057796 (A196050 (n + 1) ^ (SequenceMachineLib.valuation (n + 1) 3 + 1)).toNat

end

end A057805.P14711009911371691138

/-!
# A057807: Number of ways of getting (at least) 5 of a kind, a straight flush, 4 of a kind, flush, full house, straight, 3 of a kind, 2 pair, a pair in wild-card poker with 1 joker.

The programs for A057807, there is no canonical definition to state claims against.
-/

/-! ## A057807.P6021534286465149785

`A014404(A060119(n+1))`
-/

namespace A057807.P6021534286465149785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (A060119 (n + 1)).toNat

end

end A057807.P6021534286465149785

/-! ## A057807.P2753053539291734096

`A014404(A131717(n+1))`
-/

namespace A057807.P2753053539291734096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (A131717 (n + 1)).toNat

end

end A057807.P2753053539291734096

/-! ## A057807.P6186113226709303355

`A014404(A222234(n)+1)`
-/

namespace A057807.P6186113226709303355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (A222234 n + 1).toNat

end

end A057807.P6186113226709303355

/-! ## A057807.P3900989577228702278

`A014404(A072797(n+3)-2)`
-/

namespace A057807.P3900989577228702278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (A072797 (n + 3) - 2).toNat

end

end A057807.P3900989577228702278

/-! ## A057807.P14523818828973053240

`A014404(xor(n+1, A151667(n+2)))`
-/

namespace A057807.P14523818828973053240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014404 (Int.xor (n + 1 : ℤ) (A151667 (n + 2))).toNat

end

end A057807.P14523818828973053240

/-!
# A057809: Numbers k such that pi(k) divides k.

The programs for A057809, there is no canonical definition to state claims against.
-/

/-! ## A057809.P7135203246296923536

`A087238(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A057809.P7135203246296923536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A087238 (n + 1) + a (n - 1)

end

end A057809.P7135203246296923536

/-! ## A057809.P14648240142848307410

`∑[A087238(A254667(n+1))]`
-/

namespace A057809.P14648240142848307410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087238 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057809.P14648240142848307410

/-! ## A057809.P14783195231375412447

`∑[A087238(A348776(n+1))]`
-/

namespace A057809.P14783195231375412447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087238 (A348776 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057809.P14783195231375412447

/-! ## A057809.P6825598182355489482

`∑[A087238(n+2)]+2-A087238(n+2)`
-/

namespace A057809.P6825598182355489482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A087238 (n + 2))

end

end A057809.P6825598182355489482

/-! ## A057809.P2143859942213801170

`∑[A087238(A233583(n+1)+1)]`
-/

namespace A057809.P2143859942213801170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087238 (A233583 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057809.P2143859942213801170

/-! ## A057809.P12001784612099904649

`∑[A087238(A233583(n+2))]`
-/

namespace A057809.P12001784612099904649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087238 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057809.P12001784612099904649

/-! ## A057809.P14560432605256731247

`A058011(n)+A000007(n)`
-/

namespace A057809.P14560432605256731247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058011 n + A000007 n

end

end A057809.P14560432605256731247

/-! ## A057809.P12387451066014109365

`A151878(n)+A058011(n)`
-/

namespace A057809.P12387451066014109365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A058011 n

end

end A057809.P12387451066014109365

/-! ## A057809.P16867325746983283401

`A054977(n)*A058011(n)`
-/

namespace A057809.P16867325746983283401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A058011 n

end

end A057809.P16867325746983283401

/-! ## A057809.P6828624317849699776

`A058011(n+1)-A087238(n+2)`
-/

namespace A057809.P6828624317849699776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058011 (n + 1) - A087238 (n + 2)

end

end A057809.P6828624317849699776

/-!
# A057810: Quotients n/pi(n) for n in A057809.

The programs for A057810, there is no canonical definition to state claims against.
-/

/-! ## A057810.P5467624682048470453

`∑[char[∑[A038627(n+1)]]]+1`
-/

namespace A057810.P5467624682048470453
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A057810.P5467624682048470453

/-! ## A057810.P3514097778243601236

`A057809(n+1)/A000720(A057809(n+1))`
-/

namespace A057810.P3514097778243601236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057809 (n + 1) : ℚ) / (A000720 (A057809 (n + 1)).toNat : ℚ)

end

end A057810.P3514097778243601236

/-! ## A057810.P2357786926393077499

`A219652(round(log(A213709(n+4))))`
-/

namespace A057810.P2357786926393077499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (SequenceMachineLib.roundAway (Real.log (A213709 (n + 4) : ℝ))).toNat

end

end A057810.P2357786926393077499

/-! ## A057810.P15692619281077252654

`A107609(A057809(n+1))`
-/

namespace A057810.P15692619281077252654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107609 (A057809 (n + 1)).toNat

end

end A057810.P15692619281077252654

/-! ## A057810.P16408228155815569390

`A076620(A058011(n)+6)`
-/

namespace A057810.P16408228155815569390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A058011 n + 6).toNat

end

end A057810.P16408228155815569390

/-!
# A057811: Numbers k such that pi(k) is even.

The programs for A057811, the canonical program `A057811.P15232790486680947768` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057811 has offset 1).

The definition of A057811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057811.P15140391145194207406

`lt[A000720(n+1)%2, 1]+1`
-/

namespace A057811.P15140391145194207406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057811.P15140391145194207406

namespace A057811

/-- `lt[A000720(n+1)%2, 1]+1` -/
def P15140391145194207406.Spec : Prop :=
  ∀ n, (P15140391145194207406.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P15232790486680947768

`a(n-1)+A096500(a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057811

/-- `a(n-1)+A096500(a(n-1))+1` -/
def P15232790486680947768.Spec : Prop :=
  ∀ n, P15232790486680947768.a n = A057811 (n + 1)

theorem P15232790486680947768.correct : P15232790486680947768.Spec := by
  intro n
  simp only [A057811, Nat.add_sub_cancel]

end A057811

/-! ## A057811.P18423248846246362804

`eq[1, A010685(A000720(n+1))]+1`
-/

namespace A057811.P18423248846246362804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057811.P18423248846246362804

namespace A057811

/-- `eq[1, A010685(A000720(n+1))]+1` -/
def P18423248846246362804.Spec : Prop :=
  ∀ n, (P18423248846246362804.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P3051073263075315400

`lt[A177499(A000720(abs(1-n)+1)), 5]`
-/

namespace A057811.P3051073263075315400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (A000720 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057811.P3051073263075315400

namespace A057811

/-- `lt[A177499(A000720(abs(1-n)+1)), 5]` -/
def P3051073263075315400.Spec : Prop :=
  ∀ n, (P3051073263075315400.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P8899761925692386239

`lt[0, A000035(A000720(n+1)+1)]+1`
-/

namespace A057811.P8899761925692386239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057811.P8899761925692386239

namespace A057811

/-- `lt[0, A000035(A000720(n+1)+1)]+1` -/
def P8899761925692386239.Spec : Prop :=
  ∀ n, (P8899761925692386239.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P305556395551472536

`eq[1, A118827(A000720(n+1)+1)]+1`
-/

namespace A057811.P305556395551472536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057811.P305556395551472536

namespace A057811

/-- `eq[1, A118827(A000720(n+1)+1)]+1` -/
def P305556395551472536.Spec : Prop :=
  ∀ n, (P305556395551472536.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P10944227826941704705

`lt[A060680(A000720(n+1)+2), 2]+1`
-/

namespace A057811.P10944227826941704705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (A000720 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057811.P10944227826941704705

namespace A057811

/-- `lt[A060680(A000720(n+1)+2), 2]+1` -/
def P10944227826941704705.Spec : Prop :=
  ∀ n, (P10944227826941704705.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P18113713467105212218

`lt[2, A102457(A000720(n+1)+2)]+1`
-/

namespace A057811.P18113713467105212218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (A000720 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057811.P18113713467105212218

namespace A057811

/-- `lt[2, A102457(A000720(n+1)+2)]+1` -/
def P18113713467105212218.Spec : Prop :=
  ∀ n, (P18113713467105212218.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P15877535996791717318

`∑[runs[A131807(n)]]`
-/

namespace A057811.P15877535996791717318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131807 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057811.P15877535996791717318

namespace A057811

/-- `∑[runs[A131807(n)]]` -/
def P15877535996791717318.Spec : Prop :=
  ∀ n, (P15877535996791717318.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P1042390274587563322

`lt[n*A131378(n), n]`
-/

namespace A057811.P1042390274587563322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131378 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057811.P1042390274587563322

namespace A057811

/-- `lt[n*A131378(n), n]` -/
def P1042390274587563322.Spec : Prop :=
  ∀ n, (P1042390274587563322.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P4468551086636137793

`∑[runs[n-A131808(n)]]`
-/

namespace A057811.P4468551086636137793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A131808 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057811.P4468551086636137793

namespace A057811

/-- `∑[runs[n-A131808(n)]]` -/
def P4468551086636137793.Spec : Prop :=
  ∀ n, (P4468551086636137793.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P691033071763125063

`lt[1, Δ[n*A278603(n)]]`
-/

namespace A057811.P691033071763125063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057811.P691033071763125063

namespace A057811

/-- `lt[1, Δ[n*A278603(n)]]` -/
def P691033071763125063.Spec : Prop :=
  ∀ n, (P691033071763125063.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P11470987335597467769

`eq[1, A065357(n+1)]+1`
-/

namespace A057811.P11470987335597467769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057811.P11470987335597467769

namespace A057811

/-- `eq[1, A065357(n+1)]+1` -/
def P11470987335597467769.Spec : Prop :=
  ∀ n, (P11470987335597467769.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P8450919729329698650

`lt[1, (n+1)*A065357(n)]`
-/

namespace A057811.P8450919729329698650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057811.P8450919729329698650

namespace A057811

/-- `lt[1, (n+1)*A065357(n)]` -/
def P8450919729329698650.Spec : Prop :=
  ∀ n, (P8450919729329698650.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P1109218987806888587

`eq[2, 2-∑[A010051(n+1)]%2]+1`
-/

namespace A057811.P1109218987806888587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057811.P1109218987806888587

namespace A057811

/-- `eq[2, 2-∑[A010051(n+1)]%2]+1` -/
def P1109218987806888587.Spec : Prop :=
  ∀ n, (P1109218987806888587.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P8540253876798281201

`eq[A054977(n), A065357(n)]`
-/

namespace A057811.P8540253876798281201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057811.P8540253876798281201

namespace A057811

/-- `eq[A054977(n), A065357(n)]` -/
def P8540253876798281201.Spec : Prop :=
  ∀ n, (P8540253876798281201.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P7171989958579298983

`eq[A057427(n), A065357(n)]`
-/

namespace A057811.P7171989958579298983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057811.P7171989958579298983

namespace A057811

/-- `eq[A057427(n), A065357(n)]` -/
def P7171989958579298983.Spec : Prop :=
  ∀ n, (P7171989958579298983.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P15272452378961030838

`eq[A000007(n), A131378(n)]`
-/

namespace A057811.P15272452378961030838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057811.P15272452378961030838

namespace A057811

/-- `eq[A000007(n), A131378(n)]` -/
def P15272452378961030838.Spec : Prop :=
  ∀ n, (P15272452378961030838.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P281944591674888839

`eq[A000038(n), A131378(n)]`
-/

namespace A057811.P281944591674888839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057811.P281944591674888839

namespace A057811

/-- `eq[A000038(n), A131378(n)]` -/
def P281944591674888839.Spec : Prop :=
  ∀ n, (P281944591674888839.a n : ℤ) = A057811 (n + 1)

end A057811

/-! ## A057811.P5245149714263164130

`eq[A054977(n), A131377(n)]`
-/

namespace A057811.P5245149714263164130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057811.P5245149714263164130

namespace A057811

/-- `eq[A054977(n), A131377(n)]` -/
def P5245149714263164130.Spec : Prop :=
  ∀ n, (P5245149714263164130.a n : ℤ) = A057811 (n + 1)

end A057811

/-!
# A057812: Numbers k such that pi(k) is odd.

The programs for A057812, the canonical program `A057812.P4262350410008531703` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057812 has offset 1).

The definition of A057812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057812.P570471056709867088

`eq[1, A000720(n+1)%2]+1`
-/

namespace A057812.P570471056709867088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057812.P570471056709867088

namespace A057812

/-- `eq[1, A000720(n+1)%2]+1` -/
def P570471056709867088.Spec : Prop :=
  ∀ n, (P570471056709867088.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P4262350410008531703

`a(n-1)+A096500(a(n-1))+1` with `a(0)=2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057812

/-- `a(n-1)+A096500(a(n-1))+1` -/
def P4262350410008531703.Spec : Prop :=
  ∀ n, P4262350410008531703.a n = A057812 (n + 1)

theorem P4262350410008531703.correct : P4262350410008531703.Spec := by
  intro n
  simp only [A057812, Nat.add_sub_cancel]

end A057812

/-! ## A057812.P11245600364793301405

`eq[0, (C(2, A000005(n))-a(n-1))²]` with `a(0)=1`
-/

namespace A057812.P11245600364793301405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ((Nat.choose 2 (A000005 n).toNat : ℤ) - f2 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057812.P11245600364793301405

namespace A057812

/-- `eq[0, (C(2, A000005(n))-a(n-1))²]` -/
def P11245600364793301405.Spec : Prop :=
  ∀ n, (P11245600364793301405.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P4961544355411802455

`lt[A353364(A151800(n)), 0]`
-/

namespace A057812.P4961544355411802455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353364 (A151800 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057812.P4961544355411802455

namespace A057812

/-- `lt[A353364(A151800(n)), 0]` -/
def P4961544355411802455.Spec : Prop :=
  ∀ n, (P4961544355411802455.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P17269948005627546938

`eq[1, A000035(A000720(n+1))]+1`
-/

namespace A057812.P17269948005627546938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057812.P17269948005627546938

namespace A057812

/-- `eq[1, A000035(A000720(n+1))]+1` -/
def P17269948005627546938.Spec : Prop :=
  ∀ n, (P17269948005627546938.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P3910192150960417192

`lt[1, A040451(A000720(n+1)+1)]+1`
-/

namespace A057812.P3910192150960417192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040451 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057812.P3910192150960417192

namespace A057812

/-- `lt[1, A040451(A000720(n+1)+1)]+1` -/
def P3910192150960417192.Spec : Prop :=
  ∀ n, (P3910192150960417192.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P512924536911161469

`eq[A215029(n+1), A215029(a(n-2))]` with `a(0)=3, a(1)=6`
-/

namespace A057812.P512924536911161469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n f2 =>
  A215029 (f2 (n - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057812.P512924536911161469

namespace A057812

/-- `eq[A215029(n+1), A215029(a(n-2))]` -/
def P512924536911161469.Spec : Prop :=
  ∀ n, (P512924536911161469.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P17444579690897333295

`lt[A065357(n), 0]`
-/

namespace A057812.P17444579690897333295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057812.P17444579690897333295

namespace A057812

/-- `lt[A065357(n), 0]` -/
def P17444579690897333295.Spec : Prop :=
  ∀ n, (P17444579690897333295.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P5429736495296866326

`eq[1, A071986(n+1)]+1`
-/

namespace A057812.P5429736495296866326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057812.P5429736495296866326

namespace A057812

/-- `eq[1, A071986(n+1)]+1` -/
def P5429736495296866326.Spec : Prop :=
  ∀ n, (P5429736495296866326.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P4960172027510535268

`lt[5/A176895(∑[A010051(n+1)]), 2]+1`
-/

namespace A057812.P4960172027510535268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (A176895 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n + 1

end

end A057812.P4960172027510535268

namespace A057812

/-- `lt[5/A176895(∑[A010051(n+1)]), 2]+1` -/
def P4960172027510535268.Spec : Prop :=
  ∀ n, (P4960172027510535268.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P9209786747778594663

`eq[0, A131377(n)]`
-/

namespace A057812.P9209786747778594663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057812.P9209786747778594663

namespace A057812

/-- `eq[0, A131377(n)]` -/
def P9209786747778594663.Spec : Prop :=
  ∀ n, (P9209786747778594663.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P13297345259632902481

`lt[0, A131378(n)]`
-/

namespace A057812.P13297345259632902481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057812.P13297345259632902481

namespace A057812

/-- `lt[0, A131378(n)]` -/
def P13297345259632902481.Spec : Prop :=
  ∀ n, (P13297345259632902481.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P3900215519799581140

`∑[runs[A131808(n)]]`
-/

namespace A057812.P3900215519799581140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057812.P3900215519799581140

namespace A057812

/-- `∑[runs[A131808(n)]]` -/
def P3900215519799581140.Spec : Prop :=
  ∀ n, (P3900215519799581140.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P2073440433414707948

`lt[Δ[A278603(n)], 0]`
-/

namespace A057812.P2073440433414707948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A057812.P2073440433414707948

namespace A057812

/-- `lt[Δ[A278603(n)], 0]` -/
def P2073440433414707948.Spec : Prop :=
  ∀ n, (P2073440433414707948.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P6011229762836388372

`eq[1, gcd(2, A230980(n))]`
-/

namespace A057812.P6011229762836388372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A230980 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057812.P6011229762836388372

namespace A057812

/-- `eq[1, gcd(2, A230980(n))]` -/
def P6011229762836388372.Spec : Prop :=
  ∀ n, (P6011229762836388372.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P3032597826381435802

`∑[runs[n-A131807(n)]]`
-/

namespace A057812.P3032597826381435802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A131807 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057812.P3032597826381435802

namespace A057812

/-- `∑[runs[n-A131807(n)]]` -/
def P3032597826381435802.Spec : Prop :=
  ∀ n, (P3032597826381435802.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P18136666635659549792

`∑[runs[A278603(n+1)-n]]`
-/

namespace A057812.P18136666635659549792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057812.P18136666635659549792

namespace A057812

/-- `∑[runs[A278603(n+1)-n]]` -/
def P18136666635659549792.Spec : Prop :=
  ∀ n, (P18136666635659549792.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P4111460109559522617

`eq[0, A056594(A230980(n))]`
-/

namespace A057812.P4111460109559522617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057812.P4111460109559522617

namespace A057812

/-- `eq[0, A056594(A230980(n))]` -/
def P4111460109559522617.Spec : Prop :=
  ∀ n, (P4111460109559522617.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P8018707171458410565

`eq[A057428(n), A065357(n)]`
-/

namespace A057812.P8018707171458410565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057812.P8018707171458410565

namespace A057812

/-- `eq[A057428(n), A065357(n)]` -/
def P8018707171458410565.Spec : Prop :=
  ∀ n, (P8018707171458410565.a n : ℤ) = A057812 (n + 1)

end A057812

/-! ## A057812.P15470254342292806369

`filter[A173517(n), A131378(#)]`
-/

namespace A057812.P15470254342292806369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A057812.P15470254342292806369

namespace A057812

/-- `filter[A173517(n), A131378(#)]` -/
def P15470254342292806369.Spec : Prop :=
  ∀ n, P15470254342292806369.a n = A057812 (n + 1)

end A057812

/-!
# A057813: a(n) = (2*n+1)*(4*n^2+4*n+3)/3.

The programs for A057813, the canonical program `A057813.P13879157937402332304` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057813 has offset 0).

The definition of A057813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057813.P4240310710225168794

`ogf((1+7x+7x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A057813.P4240310710225168794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 7, 1] [1, -4, 6, -4, 1] n

end

end A057813.P4240310710225168794

namespace A057813

/-- `ogf((1+7x+7x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P4240310710225168794.Spec : Prop :=
  ∀ n, P4240310710225168794.a n = A057813 n

end A057813

/-! ## A057813.P9464026615861704186

`(2*n+1)*(4*n²+4*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057813.P9464026615861704186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (4 * n ^ 2 + 4 * n + 3) : ℚ) / 3

end

end A057813.P9464026615861704186

namespace A057813

/-- `(2*n+1)*(4*n²+4*n+3)/3` -/
def P9464026615861704186.Spec : Prop :=
  ∀ n, P9464026615861704186.a n = (A057813 n : ℚ)

end A057813

/-! ## A057813.P13879157937402332304

`2*A050533(n)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057813

/-- `2*A050533(n)+1` -/
def P13879157937402332304.Spec : Prop :=
  ∀ n, P13879157937402332304.a n = A057813 n

theorem P13879157937402332304.correct : P13879157937402332304.Spec := by
  intro n
  simp only [A057813]

end A057813

/-! ## A057813.P12021523835134953217

`∑[ceil(2/acot(2*n)²)]`
-/

namespace A057813.P12021523835134953217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057813.P12021523835134953217

namespace A057813

/-- `∑[ceil(2/acot(2*n)²)]` -/
def P12021523835134953217.Spec : Prop :=
  ∀ n, P12021523835134953217.a n = A057813 n

end A057813

/-! ## A057813.P13680881276793281965

`2+a(n-1)+8*n²` with `a(0)=1`
-/

namespace A057813.P13680881276793281965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + a (n - 1) + 8 * n ^ 2

end

end A057813.P13680881276793281965

namespace A057813

/-- `2+a(n-1)+8*n²` -/
def P13680881276793281965.Spec : Prop :=
  ∀ n, (P13680881276793281965.a n : ℤ) = A057813 n

end A057813

/-! ## A057813.P5266416986958698279

`Δ[C(n²+1, 2)+C(n², 2)/3]`
-/

namespace A057813.P5266416986958698279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + 1) 2 : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057813.P5266416986958698279

namespace A057813

/-- `Δ[C(n²+1, 2)+C(n², 2)/3]` -/
def P5266416986958698279.Spec : Prop :=
  ∀ n, P5266416986958698279.a n = (A057813 n : ℚ)

end A057813

/-! ## A057813.P3921220608637101081

`lcm(2*n+1, (2*n+1)²+2)/3`
-/

namespace A057813.P3921220608637101081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) ((2 * n + 1) ^ 2 + 2) : ℚ) / 3

end

end A057813.P3921220608637101081

namespace A057813

/-- `lcm(2*n+1, (2*n+1)²+2)/3` -/
def P3921220608637101081.Spec : Prop :=
  ∀ n, P3921220608637101081.a n = (A057813 n : ℚ)

end A057813

/-! ## A057813.P12924491120994286421

`(2*n+1)*or(2, (2*n+1)²)/3`
-/

namespace A057813.P12924491120994286421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((Nat.lor 2 ((2 * n + 1) ^ 2) : ℚ) / 3)

end

end A057813.P12924491120994286421

namespace A057813

/-- `(2*n+1)*or(2, (2*n+1)²)/3` -/
def P12924491120994286421.Spec : Prop :=
  ∀ n, P12924491120994286421.a n = (A057813 n : ℚ)

end A057813

/-! ## A057813.P1251746844230019435

`(2*n+1)*xor(2, (2*n+1)²)/3`
-/

namespace A057813.P1251746844230019435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((Nat.xor 2 ((2 * n + 1) ^ 2) : ℚ) / 3)

end

end A057813.P1251746844230019435

namespace A057813

/-- `(2*n+1)*xor(2, (2*n+1)²)/3` -/
def P1251746844230019435.Spec : Prop :=
  ∀ n, P1251746844230019435.a n = (A057813 n : ℚ)

end A057813

/-! ## A057813.P8249421871356147100

`∑[A008527(n)]`
-/

namespace A057813.P8249421871356147100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057813.P8249421871356147100

namespace A057813

/-- `∑[A008527(n)]` -/
def P8249421871356147100.Spec : Prop :=
  ∀ n, P8249421871356147100.a n = A057813 n

end A057813

/-! ## A057813.P7521434111243495252

`∑[A108100(n)]-1`
-/

namespace A057813.P7521434111243495252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057813.P7521434111243495252

namespace A057813

/-- `∑[A108100(n)]-1` -/
def P7521434111243495252.Spec : Prop :=
  ∀ n, P7521434111243495252.a n = A057813 n

end A057813

/-! ## A057813.P9789469417705081877

`∑[A081585(n)]+n`
-/

namespace A057813.P9789469417705081877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057813.P9789469417705081877

namespace A057813

/-- `∑[A081585(n)]+n` -/
def P9789469417705081877.Spec : Prop :=
  ∀ n, P9789469417705081877.a n = A057813 n

end A057813

/-! ## A057813.P1699583655957899696

`A336288(n+1)+n`
-/

namespace A057813.P1699583655957899696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1) + (n : ℤ)

end

end A057813.P1699583655957899696

namespace A057813

/-- `A336288(n+1)+n` -/
def P1699583655957899696.Spec : Prop :=
  ∀ n, P1699583655957899696.a n = A057813 n

end A057813

/-! ## A057813.P1617924336312810918

`A096000(n)+n^3`
-/

namespace A057813.P1617924336312810918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n + (n ^ 3 : ℤ)

end

end A057813.P1617924336312810918

namespace A057813

/-- `A096000(n)+n^3` -/
def P1617924336312810918.Spec : Prop :=
  ∀ n, P1617924336312810918.a n = A057813 n

end A057813

/-! ## A057813.P9291796817368619150

`∑[A005919(n)+n²]`
-/

namespace A057813.P9291796817368619150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057813.P9291796817368619150

namespace A057813

/-- `∑[A005919(n)+n²]` -/
def P9291796817368619150.Spec : Prop :=
  ∀ n, P9291796817368619150.a n = A057813 n

end A057813

/-! ## A057813.P8130353073289276850

`∑[A010002(n)-n²]`
-/

namespace A057813.P8130353073289276850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057813.P8130353073289276850

namespace A057813

/-- `∑[A010002(n)-n²]` -/
def P8130353073289276850.Spec : Prop :=
  ∀ n, P8130353073289276850.a n = A057813 n

end A057813

/-! ## A057813.P604932615908059176

`Δ[A072819(n)+n²]`
-/

namespace A057813.P604932615908059176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057813.P604932615908059176

namespace A057813

/-- `Δ[A072819(n)+n²]` -/
def P604932615908059176.Spec : Prop :=
  ∀ n, P604932615908059176.a n = A057813 n

end A057813

/-! ## A057813.P3356738006653454772

`A001386(n)-a(n-1)` with `a(0)=1`
-/

namespace A057813.P3356738006653454772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001386 n - a (n - 1)

end

end A057813.P3356738006653454772

namespace A057813

/-- `A001386(n)-a(n-1)` -/
def P3356738006653454772.Spec : Prop :=
  ∀ n, P3356738006653454772.a n = A057813 n

end A057813

/-! ## A057813.P6259512760534515924

`A002492(n)+A001845(n)`
-/

namespace A057813.P6259512760534515924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + A001845 n

end

end A057813.P6259512760534515924

namespace A057813

/-- `A002492(n)+A001845(n)` -/
def P6259512760534515924.Spec : Prop :=
  ∀ n, P6259512760534515924.a n = A057813 n

end A057813

/-! ## A057813.P4568209386886516357

`A006331(n)+A005898(n)`
-/

namespace A057813.P4568209386886516357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A005898 n

end

end A057813.P4568209386886516357

namespace A057813

/-- `A006331(n)+A005898(n)` -/
def P4568209386886516357.Spec : Prop :=
  ∀ n, P4568209386886516357.a n = A057813 n

end A057813

/-!
# A057814: Number of partitions of an n-set into blocks of size > 4.

The programs for A057814, there is no canonical definition to state claims against.
-/

/-! ## A057814.P14725835299394178154

`A293024(2*n+∑[n+3]+7)`
-/

namespace A057814.P14725835299394178154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A057814.P14725835299394178154

/-! ## A057814.P8171418949997158448

`gcd(A000038(n), A293024(A000217(n+5)-5))`
-/

namespace A057814.P8171418949997158448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293024 (A000217 (n + 5) - 5).toNat)

end

end A057814.P8171418949997158448

/-! ## A057814.P15971000868900737931

`or(A000007(n), A293024(A000217(n+5)-5))`
-/

namespace A057814.P15971000868900737931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293024 (A000217 (n + 5) - 5).toNat)

end

end A057814.P15971000868900737931

/-! ## A057814.P5973385184684484149

`A293024(eq[4, A025581(n)])+A000038(n+1)`
-/

namespace A057814.P5973385184684484149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000038 (n + 1)

end

end A057814.P5973385184684484149

/-! ## A057814.P7397955235508650043

`A293024(A000217(n+5)-5)/A007318(∑[n])`
-/

namespace A057814.P7397955235508650043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293024 (A000217 (n + 5) - 5).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A057814.P7397955235508650043

/-! ## A057814.P11172989791663668068

`A007318((n%2)^n)*A293024(eq[4, A025581(n)])`
-/

namespace A057814.P11172989791663668068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n % 2) ^ n) * A293024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057814.P11172989791663668068

/-! ## A057814.P5754293353306023461

`A008683((-1)^n+2)²*A293024(A000217(n+5)-5)`
-/

namespace A057814.P5754293353306023461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((-1) ^ n + 2).toNat ^ 2 * A293024 (A000217 (n + 5) - 5).toNat

end

end A057814.P5754293353306023461

/-! ## A057814.P1945089513797975757

`A007318(A000217(n))*A293024(A000217(n+5)-5)`
-/

namespace A057814.P1945089513797975757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A293024 (A000217 (n + 5) - 5).toNat

end

end A057814.P1945089513797975757

/-!
# A057815: a(n) = gcd(n,binomial(n,floor(n/2))).

The programs for A057815, the canonical program `A057815.P10747128043441752705` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057815 has offset 1).

The definition of A057815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, C(n+1, floor((n+1)/2)))` (program `A057815.P10747128043441752705`, by `A057815.P10747128043441752705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057815.P10747128043441752705

`gcd(n+1, C(n+1, floor((n+1)/2)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A057815

/-- `gcd(n+1, C(n+1, floor((n+1)/2)))` -/
def P10747128043441752705.Spec : Prop :=
  ∀ n, (P10747128043441752705.a n : ℤ) = A057815 (n + 1)

theorem P10747128043441752705.correct : P10747128043441752705.Spec := by
  intro n
  simp only [A057815, Nat.add_sub_cancel]

end A057815

/-! ## A057815.P1062535614346161321

`(n+1)/A049077(n+1)`
-/

namespace A057815.P1062535614346161321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A049077 (n + 1) : ℚ)

end

end A057815.P1062535614346161321

namespace A057815

/-- `(n+1)/A049077(n+1)` -/
def P1062535614346161321.Spec : Prop :=
  ∀ n, P1062535614346161321.a n = (A057815 (n + 1) : ℚ)

end A057815

/-! ## A057815.P11075815325902076931

`gcd(1+n, A042970(n+1))`
-/

namespace A057815.P11075815325902076931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + n : ℤ) (A042970 (n + 1))

end

end A057815.P11075815325902076931

namespace A057815

/-- `gcd(1+n, A042970(n+1))` -/
def P11075815325902076931.Spec : Prop :=
  ∀ n, (P11075815325902076931.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P12026612759357386507

`(n+1)/A201059(A152271(n))`
-/

namespace A057815.P12026612759357386507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A201059 (A152271 n).toNat : ℚ)

end

end A057815.P12026612759357386507

namespace A057815

/-- `(n+1)/A201059(A152271(n))` -/
def P12026612759357386507.Spec : Prop :=
  ∀ n, P12026612759357386507.a n = (A057815 (n + 1) : ℚ)

end A057815

/-! ## A057815.P17493885689581931935

`gcd(A000027(n+1), A181861(A000027(n+1)))`
-/

namespace A057815.P17493885689581931935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A181861 (A000027 (n + 1)).toNat)

end

end A057815.P17493885689581931935

namespace A057815

/-- `gcd(A000027(n+1), A181861(A000027(n+1)))` -/
def P17493885689581931935.Spec : Prop :=
  ∀ n, (P17493885689581931935.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P8845376470572924622

`gcd(A004526(2*(n+1)), A104624(n+1))`
-/

namespace A057815.P8845376470572924622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (2 * (n + 1))) (A104624 (n + 1))

end

end A057815.P8845376470572924622

namespace A057815

/-- `gcd(A004526(2*(n+1)), A104624(n+1))` -/
def P8845376470572924622.Spec : Prop :=
  ∀ n, (P8845376470572924622.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P4460134950887285008

`gcd(∑[(2*n+1)*(1-4/2)^n], A126869(n+1))`
-/

namespace A057815.P4460134950887285008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A126869 (n + 1))

end

end A057815.P4460134950887285008

namespace A057815

/-- `gcd(∑[(2*n+1)*(1-4/2)^n], A126869(n+1))` -/
def P4460134950887285008.Spec : Prop :=
  ∀ n, (P4460134950887285008.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P10688826693294507

`gcd(n+1, A001405(n+1))`
-/

namespace A057815.P10688826693294507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001405 (n + 1))

end

end A057815.P10688826693294507

namespace A057815

/-- `gcd(n+1, A001405(n+1))` -/
def P10688826693294507.Spec : Prop :=
  ∀ n, (P10688826693294507.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P5062976145134113580

`gcd(2*n+1-n, A056040(n+1))`
-/

namespace A057815.P5062976145134113580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A056040 (n + 1))

end

end A057815.P5062976145134113580

namespace A057815

/-- `gcd(2*n+1-n, A056040(n+1))` -/
def P5062976145134113580.Spec : Prop :=
  ∀ n, (P5062976145134113580.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P3363936357510500943

`gcd(A028310(A028310(n+1)), A331552(n+1))`
-/

namespace A057815.P3363936357510500943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A028310 (n + 1)).toNat) (A331552 (n + 1))

end

end A057815.P3363936357510500943

namespace A057815

/-- `gcd(A028310(A028310(n+1)), A331552(n+1))` -/
def P3363936357510500943.Spec : Prop :=
  ∀ n, (P3363936357510500943.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P12259296957923778286

`gcd(A028242(2*n), A107231(n+1))`
-/

namespace A057815.P12259296957923778286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028242 (2 * n)) (A107231 (n + 1))

end

end A057815.P12259296957923778286

namespace A057815

/-- `gcd(A028242(2*n), A107231(n+1))` -/
def P12259296957923778286.Spec : Prop :=
  ∀ n, (P12259296957923778286.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P9434511669049972476

`(n+1)/A328902(A101881(n))`
-/

namespace A057815.P9434511669049972476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A328902 (A101881 n).toNat : ℚ)

end

end A057815.P9434511669049972476

namespace A057815

/-- `(n+1)/A328902(A101881(n))` -/
def P9434511669049972476.Spec : Prop :=
  ∀ n, P9434511669049972476.a n = (A057815 (n + 1) : ℚ)

end A057815

/-! ## A057815.P7597521909084962150

`gcd(n+1, record[A034869(n)])`
-/

namespace A057815.P7597521909084962150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A057815.P7597521909084962150

namespace A057815

/-- `gcd(n+1, record[A034869(n)])` -/
def P7597521909084962150.Spec : Prop :=
  ∀ n, (P7597521909084962150.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P15606367173311493175

`gcd(A189911(2*n)/A128057(2*n), A189911(n+1))`
-/

namespace A057815.P15606367173311493175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A189911 (2 * n) : ℚ) / (A128057 (2 * n) : ℚ))) (A189911 (n + 1))

end

end A057815.P15606367173311493175

namespace A057815

/-- `gcd(A189911(2*n)/A128057(2*n), A189911(n+1))` -/
def P15606367173311493175.Spec : Prop :=
  ∀ n, (P15606367173311493175.a n : ℤ) = A057815 (n + 1)

end A057815

/-! ## A057815.P17443901673953482589

`A080381(∑[n+1]+1)`
-/

namespace A057815.P17443901673953482589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A057815.P17443901673953482589

namespace A057815

/-- `A080381(∑[n+1]+1)` -/
def P17443901673953482589.Spec : Prop :=
  ∀ n, P17443901673953482589.a n = A057815 (n + 1)

end A057815

/-! ## A057815.P6184567830913093259

`(n+1)/A159335(A074148(n+1))`
-/

namespace A057815.P6184567830913093259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A159335 (A074148 (n + 1)).toNat : ℚ)

end

end A057815.P6184567830913093259

namespace A057815

/-- `(n+1)/A159335(A074148(n+1))` -/
def P6184567830913093259.Spec : Prop :=
  ∀ n, P6184567830913093259.a n = (A057815 (n + 1) : ℚ)

end A057815

/-!
# A057817: Moebius invariant of cographic hyperplane arrangement for complete graph K_n. Also value of Tutte dichromatic polynomial T_G(0,1) for G=K_n. Also alternating sum F_{n,1} - F_{n,2} + F_{n,3} - ..., where F_{n,k} is the number of labeled forests on n nodes with k connected components.

The programs for A057817, there is no canonical definition to state claims against.
-/

/-! ## A057817.P4977480458153929467

`A243098(∑[n]+2)`
-/

namespace A057817.P4977480458153929467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243098 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A057817.P4977480458153929467

/-! ## A057817.P14357419629320548008

`A243098(A133263(n))+A000007(n)`
-/

namespace A057817.P14357419629320548008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243098 (A133263 n).toNat + A000007 n

end

end A057817.P14357419629320548008

/-! ## A057817.P2536152690914002779

`or(A005369(n), A243098(A133263(n)))`
-/

namespace A057817.P2536152690914002779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A243098 (A133263 n).toNat)

end

end A057817.P2536152690914002779

/-! ## A057817.P6350802658554919403

`A267006(n²)+A243098(A133263(n))`
-/

namespace A057817.P6350802658554919403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (n ^ 2) + A243098 (A133263 n).toNat

end

end A057817.P6350802658554919403

/-! ## A057817.P15606041789993515420

`A028310(n)+A243098(A133263(n))-n`
-/

namespace A057817.P15606041789993515420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A243098 (A133263 n).toNat - (n : ℤ))

end

end A057817.P15606041789993515420

/-! ## A057817.P9981261498527987497

`xor(A243098(A133263(n)), A267006((2*n)²))`
-/

namespace A057817.P9981261498527987497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243098 (A133263 n).toNat) (A267006 ((2 * n) ^ 2))

end

end A057817.P9981261498527987497

/-!
# A057818: Number of factorable (see A057765 for definition) subsets of a 2 X n uniform grid.

The programs for A057818, there is no canonical definition to state claims against.
-/

/-! ## A057818.P16251116727890137652

`n*A359408(A215928(n))`
-/

namespace A057818.P16251116727890137652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A359408 (A215928 n).toNat

end

end A057818.P16251116727890137652

/-! ## A057818.P12888725724287786556

`n*A213511(A000078(n+4))`
-/

namespace A057818.P12888725724287786556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213511 (A000078 (n + 4)).toNat

end

end A057818.P12888725724287786556

/-!
# A057819: a(0)=4, a(1)=9, a(n) = 4a(n-1) - a(n-2).

The programs for A057819, the canonical program `A057819.P17947292563105303424` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057819 has offset 0).

The definition of A057819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A057819.P17947292563105303424`, by `A057819.P17947292563105303424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057819.P149483718738274676

`ogf((4-7x)/(1-4x+x^2))`
-/

namespace A057819.P149483718738274676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7] [1, -4, 1] n

end

end A057819.P149483718738274676

namespace A057819

/-- `ogf((4-7x)/(1-4x+x^2))` -/
def P149483718738274676.Spec : Prop :=
  ∀ n, P149483718738274676.a n = A057819 n

end A057819

/-! ## A057819.P17947292563105303424

`4*a(n-1)-a(n-2)` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A057819

/-- `4*a(n-1)-a(n-2)` -/
def P17947292563105303424.Spec : Prop :=
  ∀ n, P17947292563105303424.a n = A057819 n

theorem P17947292563105303424.correct : P17947292563105303424.Spec := by
  intro n
  simp only [A057819]

end A057819

/-! ## A057819.P375821149296598929

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=4, a(1)=9`
-/

namespace A057819.P375821149296598929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A057819.P375821149296598929

namespace A057819

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P375821149296598929.Spec : Prop :=
  ∀ n, P375821149296598929.a n = (A057819 n : ℚ)

end A057819

/-! ## A057819.P6191690896851636985

`A144721(n)+A003500(n)`
-/

namespace A057819.P6191690896851636985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 n + A003500 n

end

end A057819.P6191690896851636985

namespace A057819

/-- `A144721(n)+A003500(n)` -/
def P6191690896851636985.Spec : Prop :=
  ∀ n, P6191690896851636985.a n = A057819 n

end A057819

/-! ## A057819.P13466850545136391937

`A077236(n)-A052530(n)`
-/

namespace A057819.P13466850545136391937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 n - A052530 n

end

end A057819.P13466850545136391937

namespace A057819

/-- `A077236(n)-A052530(n)` -/
def P13466850545136391937.Spec : Prop :=
  ∀ n, P13466850545136391937.a n = A057819 n

end A057819

/-! ## A057819.P14780083245808821266

`A077236(n)-Δ[A001835(n)]`
-/

namespace A057819.P14780083245808821266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 n - (f1 (n + 1) - f1 n)

end

end A057819.P14780083245808821266

namespace A057819

/-- `A077236(n)-Δ[A001835(n)]` -/
def P14780083245808821266.Spec : Prop :=
  ∀ n, P14780083245808821266.a n = A057819 n

end A057819

/-! ## A057819.P9257368703546525060

`A001353(n)+2*A003500(n)`
-/

namespace A057819.P9257368703546525060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + 2 * A003500 n

end

end A057819.P9257368703546525060

namespace A057819

/-- `A001353(n)+2*A003500(n)` -/
def P9257368703546525060.Spec : Prop :=
  ∀ n, P9257368703546525060.a n = A057819 n

end A057819

/-! ## A057819.P12186520828180408485

`A321119(2*n)+A001353(n)`
-/

namespace A057819.P12186520828180408485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * n) + A001353 n

end

end A057819.P12186520828180408485

namespace A057819

/-- `A321119(2*n)+A001353(n)` -/
def P12186520828180408485.Spec : Prop :=
  ∀ n, P12186520828180408485.a n = A057819 n

end A057819

/-! ## A057819.P239725753095326109

`A054491(n)+3*A001835(n)`
-/

namespace A057819.P239725753095326109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n + 3 * A001835 n

end

end A057819.P239725753095326109

namespace A057819

/-- `A054491(n)+3*A001835(n)` -/
def P239725753095326109.Spec : Prop :=
  ∀ n, P239725753095326109.a n = A057819 n

end A057819

/-! ## A057819.P12677234171584285617

`A077236(n)-2*A001353(n)`
-/

namespace A057819.P12677234171584285617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 n - 2 * A001353 n

end

end A057819.P12677234171584285617

namespace A057819

/-- `A077236(n)-2*A001353(n)` -/
def P12677234171584285617.Spec : Prop :=
  ∀ n, P12677234171584285617.a n = A057819 n

end A057819

/-! ## A057819.P5919112552363165151

`2*A003500(n)-A106707(n)`
-/

namespace A057819.P5919112552363165151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003500 n - A106707 n

end

end A057819.P5919112552363165151

namespace A057819

/-- `2*A003500(n)-A106707(n)` -/
def P5919112552363165151.Spec : Prop :=
  ∀ n, P5919112552363165151.a n = A057819 n

end A057819

/-! ## A057819.P4784836444977145578

`A077238(2*n)-A052530(n)`
-/

namespace A057819.P4784836444977145578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077238 (2 * n) - A052530 n

end

end A057819.P4784836444977145578

namespace A057819

/-- `A077238(2*n)-A052530(n)` -/
def P4784836444977145578.Spec : Prop :=
  ∀ n, P4784836444977145578.a n = A057819 n

end A057819

/-! ## A057819.P5963799133612069390

`2*A144721(n)-A001353(n)`
-/

namespace A057819.P5963799133612069390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144721 n - A001353 n

end

end A057819.P5963799133612069390

namespace A057819

/-- `2*A144721(n)-A001353(n)` -/
def P5963799133612069390.Spec : Prop :=
  ∀ n, P5963799133612069390.a n = A057819 n

end A057819

/-! ## A057819.P13531262450891495647

`A321119(2*n)-A106707(n)`
-/

namespace A057819.P13531262450891495647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * n) - A106707 n

end

end A057819.P13531262450891495647

namespace A057819

/-- `A321119(2*n)-A106707(n)` -/
def P13531262450891495647.Spec : Prop :=
  ∀ n, P13531262450891495647.a n = A057819 n

end A057819

/-! ## A057819.P5516894343697800195

`A001353(n)+4*A001075(n)`
-/

namespace A057819.P5516894343697800195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + 4 * A001075 n

end

end A057819.P5516894343697800195

namespace A057819

/-- `A001353(n)+4*A001075(n)` -/
def P5516894343697800195.Spec : Prop :=
  ∀ n, P5516894343697800195.a n = A057819 n

end A057819

/-! ## A057819.P15700106462732644

`5*A001075(n)-A001835(n)`
-/

namespace A057819.P15700106462732644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001075 n - A001835 n

end

end A057819.P15700106462732644

namespace A057819

/-- `5*A001075(n)-A001835(n)` -/
def P15700106462732644.Spec : Prop :=
  ∀ n, P15700106462732644.a n = A057819 n

end A057819

/-! ## A057819.P17365339149238947592

`Δ[A001571(n)]+2*A001835(n)`
-/

namespace A057819.P17365339149238947592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A001835 n

end

end A057819.P17365339149238947592

namespace A057819

/-- `Δ[A001571(n)]+2*A001835(n)` -/
def P17365339149238947592.Spec : Prop :=
  ∀ n, P17365339149238947592.a n = A057819 n

end A057819

/-! ## A057819.P14823080952125901458

`Δ[A102871(n)]+2*A001835(n)`
-/

namespace A057819.P14823080952125901458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A001835 n

end

end A057819.P14823080952125901458

namespace A057819

/-- `Δ[A102871(n)]+2*A001835(n)` -/
def P14823080952125901458.Spec : Prop :=
  ∀ n, P14823080952125901458.a n = A057819 n

end A057819

/-! ## A057819.P14881542847169964486

`A151961(n+1)+A001835(n+1)`
-/

namespace A057819.P14881542847169964486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151961 (n + 1) + A001835 (n + 1)

end

end A057819.P14881542847169964486

namespace A057819

/-- `A151961(n+1)+A001835(n+1)` -/
def P14881542847169964486.Spec : Prop :=
  ∀ n, P14881542847169964486.a n = A057819 n

end A057819

/-! ## A057819.P16327817295009718298

`A151961(n+1)+A079935(n+1)`
-/

namespace A057819.P16327817295009718298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151961 (n + 1) + A079935 (n + 1)

end

end A057819.P16327817295009718298

namespace A057819

/-- `A151961(n+1)+A079935(n+1)` -/
def P16327817295009718298.Spec : Prop :=
  ∀ n, P16327817295009718298.a n = A057819 n

end A057819

/-!
# A057820: First differences of sequence of consecutive prime powers (A000961).

The programs for A057820, the canonical program `A057820.P915405789854175386` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057820 has offset 1).

The definition of A057820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057820.P915405789854175386

`A000961(n+2)-A000961(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A057820

/-- `A000961(n+2)-A000961(n+1)` -/
def P915405789854175386.Spec : Prop :=
  ∀ n, P915405789854175386.a n = A057820 (n + 1)

theorem P915405789854175386.correct : P915405789854175386.Spec := by
  intro n
  simp only [A057820, Nat.add_sub_cancel]

end A057820

/-! ## A057820.P7826823520481667238

`A376596(n)+a(n-1)` with `a(0)=1`
-/

namespace A057820.P7826823520481667238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376596 n + a (n - 1)

end

end A057820.P7826823520481667238

namespace A057820

/-- `A376596(n)+a(n-1)` -/
def P7826823520481667238.Spec : Prop :=
  ∀ n, P7826823520481667238.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P11990411834076428532

`A275120(C(2, n+2)+n+1)`
-/

namespace A057820.P11990411834076428532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (Nat.choose 2 (n + 2) + n + 1)

end

end A057820.P11990411834076428532

namespace A057820

/-- `A275120(C(2, n+2)+n+1)` -/
def P11990411834076428532.Spec : Prop :=
  ∀ n, P11990411834076428532.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P8665435524423968603

`Δ[A275120(n)+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A057820.P8665435524423968603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A275120 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057820.P8665435524423968603

namespace A057820

/-- `Δ[A275120(n)+a(n-1)]` -/
def P8665435524423968603.Spec : Prop :=
  ∀ n, P8665435524423968603.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P13316177588973621511

`A275120(n+1)%(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A057820.P13316177588973621511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A275120 (n + 1)) (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))

end

end A057820.P13316177588973621511

namespace A057820

/-- `A275120(n+1)%(a(floor(n/2))+n)` -/
def P13316177588973621511.Spec : Prop :=
  ∀ n, P13316177588973621511.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P9858535790070042340

`A275120(A028310(n)+1)`
-/

namespace A057820.P9858535790070042340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (A028310 n + 1).toNat

end

end A057820.P9858535790070042340

namespace A057820

/-- `A275120(A028310(n)+1)` -/
def P9858535790070042340.Spec : Prop :=
  ∀ n, P9858535790070042340.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P6270348185295803475

`A275120(A348776(n+1))`
-/

namespace A057820.P6270348185295803475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (A348776 (n + 1)).toNat

end

end A057820.P6270348185295803475

namespace A057820

/-- `A275120(A348776(n+1))` -/
def P6270348185295803475.Spec : Prop :=
  ∀ n, P6270348185295803475.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P13605851251948819151

`A275120(A054977(n)+n)`
-/

namespace A057820.P13605851251948819151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (A054977 n + (n : ℤ)).toNat

end

end A057820.P13605851251948819151

namespace A057820

/-- `A275120(A054977(n)+n)` -/
def P13605851251948819151.Spec : Prop :=
  ∀ n, P13605851251948819151.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P11908935383731819465

`A275120(A000007(n)+1+n)`
-/

namespace A057820.P11908935383731819465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (A000007 n + 1 + (n : ℤ)).toNat

end

end A057820.P11908935383731819465

namespace A057820

/-- `A275120(A000007(n)+1+n)` -/
def P11908935383731819465.Spec : Prop :=
  ∀ n, P11908935383731819465.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P4195323709253948379

`A246655(n+1)-A000961(n+1)`
-/

namespace A057820.P4195323709253948379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A000961 (n + 1)

end

end A057820.P4195323709253948379

namespace A057820

/-- `A246655(n+1)-A000961(n+1)` -/
def P4195323709253948379.Spec : Prop :=
  ∀ n, P4195323709253948379.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P16858479840623360858

`A377043(n+1)-A377044(n+1)`
-/

namespace A057820.P16858479840623360858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377043 (n + 1) - A377044 (n + 1)

end

end A057820.P16858479840623360858

namespace A057820

/-- `A377043(n+1)-A377044(n+1)` -/
def P16858479840623360858.Spec : Prop :=
  ∀ n, P16858479840623360858.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P8365837858231238830

`A309269(n+1)%A138929(n+1)`
-/

namespace A057820.P8365837858231238830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309269 (n + 1)) (A138929 (n + 1))

end

end A057820.P8365837858231238830

namespace A057820

/-- `A309269(n+1)%A138929(n+1)` -/
def P8365837858231238830.Spec : Prop :=
  ∀ n, P8365837858231238830.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P17641013249391112720

`A246655(n+1)-(A181062(n+1)+1)`
-/

namespace A057820.P17641013249391112720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - (A181062 (n + 1) + 1)

end

end A057820.P17641013249391112720

namespace A057820

/-- `A246655(n+1)-(A181062(n+1)+1)` -/
def P17641013249391112720.Spec : Prop :=
  ∀ n, P17641013249391112720.a n = A057820 (n + 1)

theorem P17641013249391112720.correct : P17641013249391112720.Spec := by
  intro n
  simp only [A057820, Nat.add_sub_cancel, A057820.P17641013249391112720.a, A057820.P915405789854175386.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057820

/-! ## A057820.P12428624535861586294

`A275120(n+1)-A010051(2*(n+1))`
-/

namespace A057820.P12428624535861586294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1) - A010051 (2 * (n + 1))

end

end A057820.P12428624535861586294

namespace A057820

/-- `A275120(n+1)-A010051(2*(n+1))` -/
def P12428624535861586294.Spec : Prop :=
  ∀ n, P12428624535861586294.a n = A057820 (n + 1)

end A057820

/-! ## A057820.P7585785115465852866

`A246655(n+1)+A246655(n+1)-A309269(n+1)`
-/

namespace A057820.P7585785115465852866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) + (A246655 (n + 1) - A309269 (n + 1))

end

end A057820.P7585785115465852866

namespace A057820

/-- `A246655(n+1)+A246655(n+1)-A309269(n+1)` -/
def P7585785115465852866.Spec : Prop :=
  ∀ n, P7585785115465852866.a n = A057820 (n + 1)

theorem P7585785115465852866.correct : P7585785115465852866.Spec := by
  intro n
  simp only [A057820, Nat.add_sub_cancel, A057820.P7585785115465852866.a, A057820.P915405789854175386.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A246655, A246655.P2302191067120461210.a, A309269, A309269.P6439327140874271105.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057820

/-! ## A057820.P11438808074872679095

`Δ[A000961(1+n)]`
-/

namespace A057820.P11438808074872679095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057820.P11438808074872679095

namespace A057820

/-- `Δ[A000961(1+n)]` -/
def P11438808074872679095.Spec : Prop :=
  ∀ n, P11438808074872679095.a n = A057820 (n + 1)

theorem P11438808074872679095.correct : P11438808074872679095.Spec := by
  intro n
  simp only [A057820, Nat.add_sub_cancel, A057820.P11438808074872679095.f1, A057820.P11438808074872679095.a, A057820.P915405789854175386.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057820

/-! ## A057820.P1711893913952617321

`Δ[A181062(n+1)]`
-/

namespace A057820.P1711893913952617321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057820.P1711893913952617321

namespace A057820

/-- `Δ[A181062(n+1)]` -/
def P1711893913952617321.Spec : Prop :=
  ∀ n, P1711893913952617321.a n = A057820 (n + 1)

theorem P1711893913952617321.correct : P1711893913952617321.Spec := by
  intro n
  simp only [A057820, Nat.add_sub_cancel, A057820.P1711893913952617321.f1, A057820.P1711893913952617321.a, A057820.P915405789854175386.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057820

/-! ## A057820.P4637992114292632304

`A237709(n+2)/2`
-/

namespace A057820.P4637992114292632304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237709 (n + 2) : ℚ) / 2

end

end A057820.P4637992114292632304

namespace A057820

/-- `A237709(n+2)/2` -/
def P4637992114292632304.Spec : Prop :=
  ∀ n, P4637992114292632304.a n = (A057820 (n + 1) : ℚ)

end A057820

/-! ## A057820.P14489960287746820358

`Δ[sqrt(A056798(n+1))]`
-/

namespace A057820.P14489960287746820358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057820.P14489960287746820358

namespace A057820

/-- `Δ[sqrt(A056798(n+1))]` -/
def P14489960287746820358.Spec : Prop :=
  ∀ n, P14489960287746820358.a n = (A057820 (n + 1) : ℝ)

end A057820

/-! ## A057820.P18101259717239492378

`Δ[A138929(n+1)/2]`
-/

namespace A057820.P18101259717239492378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057820.P18101259717239492378

namespace A057820

/-- `Δ[A138929(n+1)/2]` -/
def P18101259717239492378.Spec : Prop :=
  ∀ n, P18101259717239492378.a n = (A057820 (n + 1) : ℚ)

theorem P18101259717239492378.correct : P18101259717239492378.Spec := by
  intro n
  simp only [A057820, Nat.add_sub_cancel, A057820.P18101259717239492378.f1, A057820.P18101259717239492378.a, A057820.P915405789854175386.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A138929, A138929.P2871587686834618281.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057820

/-! ## A057820.P3272324439198259253

`runs[lcm(n+1, a(n-1))]` with `a(0)=1`
-/

namespace A057820.P3272324439198259253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (n + 1) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A057820.P3272324439198259253

namespace A057820

/-- `runs[lcm(n+1, a(n-1))]` -/
def P3272324439198259253.Spec : Prop :=
  ∀ n, (P3272324439198259253.a n : ℤ) = A057820 (n + 1)

end A057820

/-!
# A057821: a(n) is the least nonnegative integer k such that 2^n - k is a safe prime.

The programs for A057821, there is no canonical definition to state claims against.
-/

/-! ## A057821.P1894736937913655510

`2*A345014(n+2)-1`
-/

namespace A057821.P1894736937913655510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345014 (n + 2) - 1

end

end A057821.P1894736937913655510

/-! ## A057821.P16034429345744477987

`A057428(n+1)+2*A345014(n+2)`
-/

namespace A057821.P16034429345744477987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A345014 (n + 2)

end

end A057821.P16034429345744477987

/-! ## A057821.P18207877641153393060

`xor(2*A345014(n+2), A117367(2*(n+1)))`
-/

namespace A057821.P18207877641153393060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A345014 (n + 2)) (A117367 (2 * (n + 1)))

end

end A057821.P18207877641153393060

/-! ## A057821.P10263953055697003706

`A008683(A007918(n))+2*A345014(n+2)`
-/

namespace A057821.P10263953055697003706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A345014 (n + 2)

end

end A057821.P10263953055697003706

/-! ## A057821.P17252053065887598554

`A008683(A054723(n+1))+2*A345014(n+2)`
-/

namespace A057821.P17252053065887598554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054723 (n + 1)).toNat + 2 * A345014 (n + 2)

end

end A057821.P17252053065887598554

/-! ## A057821.P16176164146174278939

`xor(2*A345014(n+2), A083262(A117367(n+1)))`
-/

namespace A057821.P16176164146174278939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A345014 (n + 2)) (A083262 (A117367 (n + 1)).toNat)

end

end A057821.P16176164146174278939

/-! ## A057821.P8609557896307471844

`A188510(A004771(n))+2*A345014(n+2)`
-/

namespace A057821.P8609557896307471844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A004771 n).toNat + 2 * A345014 (n + 2)

end

end A057821.P8609557896307471844

/-! ## A057821.P12013145528026726415

`A004273(A345014(n+2))`
-/

namespace A057821.P12013145528026726415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A345014 (n + 2)).toNat

end

end A057821.P12013145528026726415

/-! ## A057821.P11990413604525716883

`A005843(A345014(n+2))-A008284(∑[n+1])`
-/

namespace A057821.P11990413604525716883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A345014 (n + 2)).toNat - A008284 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057821.P11990413604525716883

/-! ## A057821.P18042075557660761886

`A005843(A345014(n+2))-A010051(A007918(n))`
-/

namespace A057821.P18042075557660761886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A345014 (n + 2)).toNat - A010051 (A007918 n).toNat

end

end A057821.P18042075557660761886

/-! ## A057821.P6162982173504070276

`A005843(A345014(n+2))-A036987(A135481(n))`
-/

namespace A057821.P6162982173504070276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A345014 (n + 2)).toNat - A036987 (A135481 n).toNat

end

end A057821.P6162982173504070276

/-!
# A057822: Smaller of pair of twin primes whose average is lcm(1,...,m) for some m.

The programs for A057822, there is no canonical definition to state claims against.
-/

/-! ## A057822.P3896099932438195775

`A057824(record[A007318(n)])`
-/

namespace A057822.P3896099932438195775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057822.P3896099932438195775

/-!
# A057824: Primes p such that p+1 is LCM(1,...,m) for some (usually more than one) m.

The programs for A057824, there is no canonical definition to state claims against.
-/

/-! ## A057824.P7061327134532891858

`A060358(A385564(n+1))`
-/

namespace A057824.P7061327134532891858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060358 (A385564 (n + 1)).toNat

end

end A057824.P7061327134532891858

/-! ## A057824.P327129460393110254

`A058029(eq[1, -A058030(n)])`
-/

namespace A057824.P327129460393110254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A058030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057824.P327129460393110254

/-! ## A057824.P8937769306349684104

`A070198(A385564(n+1)-1)`
-/

namespace A057824.P8937769306349684104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (A385564 (n + 1) - 1).toNat

end

end A057824.P8937769306349684104

/-! ## A057824.P9152777558096506482

`A058029(eq[0, A058030(n)+1])`
-/

namespace A057824.P9152777558096506482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058030 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057824.P9152777558096506482

/-! ## A057824.P2546563621188692125

`A058021(eq[1, A058022(n+1)])`
-/

namespace A057824.P2546563621188692125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057824.P2546563621188692125

/-!
# A057825: Values of k for which A003418(k) - 1 is prime.

The programs for A057825, there is no canonical definition to state claims against.
-/

/-! ## A057825.P738879965031793803

`eq[1, A060360(n+3)]+3`
-/

namespace A057825.P738879965031793803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060360 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A057825.P738879965031793803

/-! ## A057825.P1029394155578732

`record[A020705(n)-A060360(n+3)]`
-/

namespace A057825.P1029394155578732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A060360 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057825.P1029394155578732

/-! ## A057825.P7602164267988716429

`lt[A060360(n+3), A105161(n)]+3`
-/

namespace A057825.P7602164267988716429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060360 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A057825.P7602164267988716429

/-! ## A057825.P11479339001328083853

`record[A009056(n+1)/A060360(n+3)]`
-/

namespace A057825.P11479339001328083853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009056 (n + 1) : ℚ) / (A060360 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057825.P11479339001328083853

/-! ## A057825.P2487692139163404738

`record[A000463(2*n+5)/A060360(n+3)]`
-/

namespace A057825.P2487692139163404738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000463 (2 * n + 5) : ℚ) / (A060360 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057825.P2487692139163404738

/-! ## A057825.P6358734571577336896

`lt[A060360(n+3), A049716(3*n+4)]+3`
-/

namespace A057825.P6358734571577336896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060360 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A057825.P6358734571577336896

/-!
# A057826: Greatest number with totient 2n (or zero when no such number exists).

The programs for A057826, there is no canonical definition to state claims against.
-/

/-! ## A057826.P15064670654577954121

`lcm(A319048(2*(n+1)), A323169(2*(n+1)))`
-/

namespace A057826.P15064670654577954121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A319048 (2 * (n + 1))) (A323169 (2 * (n + 1)))

end

end A057826.P15064670654577954121

/-! ## A057826.P6577282322425830205

`A057635(2*(n+1))`
-/

namespace A057826.P6577282322425830205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (2 * (n + 1))

end

end A057826.P6577282322425830205

/-! ## A057826.P10212785157504099798

`lcm(2, A057635(n+2+n))`
-/

namespace A057826.P10212785157504099798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A057635 (n + 2 + n))

end

end A057826.P10212785157504099798

/-! ## A057826.P14297645560758935318

`A066900(2*(n+1))*A264739(2*(n+1))`
-/

namespace A057826.P14297645560758935318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066900 (2 * (n + 1)) * A264739 (2 * (n + 1))

end

end A057826.P14297645560758935318

/-! ## A057826.P2895433653638913621

`A264739(2*(n+1))*A319048(2*(n+1))`
-/

namespace A057826.P2895433653638913621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (2 * (n + 1)) * A319048 (2 * (n + 1))

end

end A057826.P2895433653638913621

/-! ## A057826.P4846295578991627100

`lcm(A066900(2*(n+1)), A323169(2*(n+1)))`
-/

namespace A057826.P4846295578991627100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066900 (2 * (n + 1))) (A323169 (2 * (n + 1)))

end

end A057826.P4846295578991627100

/-! ## A057826.P17383238915965695319

`floor(atan(A014197(2*(n+1))))*A319048(2*(n+1))`
-/

namespace A057826.P17383238915965695319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A014197 (2 * (n + 1)) : ℝ)⌋ * A319048 (2 * (n + 1))

end

end A057826.P17383238915965695319

/-! ## A057826.P3996289998895242231

`A006511(A264810(2*(n+1)))*A264739(2*(n+1))`
-/

namespace A057826.P3996289998895242231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (A264810 (2 * (n + 1))).toNat * A264739 (2 * (n + 1))

end

end A057826.P3996289998895242231

/-! ## A057826.P11510523964774837751

`A028476(A061026(2*(n+1)))*A264739(2*(n+1))`
-/

namespace A057826.P11510523964774837751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A061026 (2 * (n + 1))).toNat * A264739 (2 * (n + 1))

end

end A057826.P11510523964774837751

/-! ## A057826.P455617423040373014

`A057635(n+2+n)%A258959(n+1)`
-/

namespace A057826.P455617423040373014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057635 (n + 2 + n)) (A258959 (n + 1))

end

end A057826.P455617423040373014

/-!
# A057827: a(0) = 1; a(n) = LCM(n, sum{k=0 to n-1}[a(k)]).

The programs for A057827, there is no canonical definition to state claims against.
-/

/-! ## A057827.P11002748220228387853

`lcm(A028310(n), A185048(A271216(n)))`
-/

namespace A057827.P11002748220228387853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A185048 (A271216 n).toNat)

end

end A057827.P11002748220228387853

/-! ## A057827.P9256400588119948625

`A014682(lcm(A233583(n+1), A271216(n)))`
-/

namespace A057827.P9256400588119948625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm (A233583 (n + 1)) (A271216 n))

end

end A057827.P9256400588119948625

/-! ## A057827.P1352078161887880160

`A004525(Δ[2^n*floor(n/2)!])`
-/

namespace A057827.P1352078161887880160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057827.P1352078161887880160

/-! ## A057827.P17837856368105284700

`A065033(Δ[2^n*floor(n/2)!])`
-/

namespace A057827.P17837856368105284700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057827.P17837856368105284700

/-! ## A057827.P10410650805804475898

`A097140(Δ[2^n*floor(n/2)!])`
-/

namespace A057827.P10410650805804475898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057827.P10410650805804475898

/-!
# A057828: Number of perfect squares, k^2, where k^2 <= n and gcd(k,n) = 1.

The programs for A057828, the canonical program `A057828.P16430178297889518031` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057828 has offset 1).

The definition of A057828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057828.P16430178297889518031

`∑{d}[n+1, A008683(#)*floor(sqrt(n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057828

/-- `∑{d}[n+1, A008683(#)*floor(sqrt(n+1)/#)]` -/
def P16430178297889518031.Spec : Prop :=
  ∀ n, P16430178297889518031.a n = A057828 (n + 1)

theorem P16430178297889518031.correct : P16430178297889518031.Spec := by
  intro n
  simp only [A057828, Nat.add_sub_cancel]

end A057828

/-! ## A057828.P11541463408408928150

`∑{#}[floor(sqrt(n+1))-1, A054521(C(n+1, 2)+#+1)]`
-/

namespace A057828.P11541463408408928150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A054521 (Nat.choose (n + 1) 2 + (k + 1))

end

end A057828.P11541463408408928150

namespace A057828

/-- `∑{#}[floor(sqrt(n+1))-1, A054521(C(n+1, 2)+#+1)]` -/
def P11541463408408928150.Spec : Prop :=
  ∀ n, P11541463408408928150.a n = A057828 (n + 1)

end A057828

/-! ## A057828.P12292490244127049589

`A003059(A048864(n+1)%A239013(n+3))`
-/

namespace A057828.P12292490244127049589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.tmod (A048864 (n + 1)) (A239013 (n + 3))).toNat

end

end A057828.P12292490244127049589

namespace A057828

/-- `A003059(A048864(n+1)%A239013(n+3))` -/
def P12292490244127049589.Spec : Prop :=
  ∀ n, P12292490244127049589.a n = A057828 (n + 1)

end A057828

/-! ## A057828.P17302416628961473644

`A070939(A186994(n+1))^A000108(A185284(n))`
-/

namespace A057828.P17302416628961473644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 (A186994 (n + 1)).toNat : ℚ) ^ (A000108 (A185284 n).toNat : ℤ)

end

end A057828.P17302416628961473644

namespace A057828

/-- `A070939(A186994(n+1))^A000108(A185284(n))` -/
def P17302416628961473644.Spec : Prop :=
  ∀ n, P17302416628961473644.a n = (A057828 (n + 1) : ℚ)

end A057828

/-! ## A057828.P5178308852194490659

`A001222(A114442(n))*A070939(A186994(n+1))`
-/

namespace A057828.P5178308852194490659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114442 n).toNat * A070939 (A186994 (n + 1)).toNat

end

end A057828.P5178308852194490659

namespace A057828

/-- `A001222(A114442(n))*A070939(A186994(n+1))` -/
def P5178308852194490659.Spec : Prop :=
  ∀ n, P5178308852194490659.a n = A057828 (n + 1)

end A057828

/-!
# A057829: Numbers n such that n | 5^n + 3^n +1.

The programs for A057829, there is no canonical definition to state claims against.
-/

/-! ## A057829.P6239428426349317335

`record[A109671(A288632(n+1))]`
-/

namespace A057829.P6239428426349317335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (A288632 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057829.P6239428426349317335

/-! ## A057829.P4971716562599629503

`record[gcd(A124550(n), A124572(n))]`
-/

namespace A057829.P4971716562599629503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124550 n) (A124572 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057829.P4971716562599629503

/-!
# A057831: Numbers n such that n | 9^n + 7^n + 5^n + 3^n +1.

The programs for A057831, there is no canonical definition to state claims against.
-/

/-! ## A057831.P3178581919799060747

`record[A072436(A056741(n+1))]`
-/

namespace A057831.P3178581919799060747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A056741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057831.P3178581919799060747

/-! ## A057831.P13000926856469302847

`record[A170818(A056741(n+2))]`
-/

namespace A057831.P13000926856469302847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A056741 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057831.P13000926856469302847

/-! ## A057831.P4801939891226391548

`filter[A056741(n+1), A286801(#)]`
-/

namespace A057831.P4801939891226391548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286801 (f1 j).toNat = 1) n)

end

end A057831.P4801939891226391548

/-!
# A057833: Numbers n such that n | 13^n + 11^n + 9^n + 7^n + 5^n + 3^n +1.

The programs for A057833, there is no canonical definition to state claims against.
-/

/-! ## A057833.P17879544484732456408

`∏{e}[A097177(n), A002281(#)]`
-/

namespace A057833.P17879544484732456408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002281 (Nat.factorization (f1 n).natAbs p)

end

end A057833.P17879544484732456408

/-! ## A057833.P1688428549894610202

`∏{e}[A377577(n), A110788(#)]`
-/

namespace A057833.P1688428549894610202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A110788 (Nat.factorization (f1 n).natAbs p)

end

end A057833.P1688428549894610202

/-!
# A057834: Integer nearest to 10^n / log(10^n).

The programs for A057834, the canonical program `A057834.P8400663502595694259` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057834 has offset 1).

The definition of A057834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057834.P8400663502595694259

`round(10^(n+1)/log(10^(n+1)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A057834

/-- `round(10^(n+1)/log(10^(n+1)))` -/
def P8400663502595694259.Spec : Prop :=
  ∀ n, P8400663502595694259.a n = A057834 (n + 1)

theorem P8400663502595694259.correct : P8400663502595694259.Spec := by
  intro n
  simp only [A057834, Nat.add_sub_cancel]

end A057834

/-! ## A057834.P1961716996553602014

`∑[A228065(n+1)]`
-/

namespace A057834.P1961716996553602014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057834.P1961716996553602014

namespace A057834

/-- `∑[A228065(n+1)]` -/
def P1961716996553602014.Spec : Prop :=
  ∀ n, P1961716996553602014.a n = A057834 (n + 1)

end A057834

/-! ## A057834.P2086825180741520732

`∑[record[A228065(A286558(n))]]`
-/

namespace A057834.P2086825180741520732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228065 (A286558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057834.P2086825180741520732

namespace A057834

/-- `∑[record[A228065(A286558(n))]]` -/
def P2086825180741520732.Spec : Prop :=
  ∀ n, P2086825180741520732.a n = A057834 (n + 1)

end A057834

/-! ## A057834.P12732622457550482485

`A006880(n+1)-A057835(n+1)`
-/

namespace A057834.P12732622457550482485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A057835 (n + 1)

end

end A057834.P12732622457550482485

namespace A057834

/-- `A006880(n+1)-A057835(n+1)` -/
def P12732622457550482485.Spec : Prop :=
  ∀ n, P12732622457550482485.a n = A057834 (n + 1)

theorem P12732622457550482485.correct : P12732622457550482485.Spec := by
  intro n
  simp only [A057834, Nat.add_sub_cancel, A057834.P12732622457550482485.a, A057834.P8400663502595694259.a, A006880, A006880.P1375622950831351857.a, A057835, A057835.P14657973214948545378.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057834

/-! ## A057834.P6654258257496357910

`∑[Δ[A006880(n)]-A228066(n+1)]`
-/

namespace A057834.P6654258257496357910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A228066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057834.P6654258257496357910

namespace A057834

/-- `∑[Δ[A006880(n)]-A228066(n+1)]` -/
def P6654258257496357910.Spec : Prop :=
  ∀ n, P6654258257496357910.a n = A057834 (n + 1)

end A057834

/-!
# A057835: Difference between pi(10^n) and the integer nearest to 10^n / log(10^n).

The programs for A057835, the canonical program `A057835.P14657973214948545378` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057835 has offset 1).

The definition of A057835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057835.P14657973214948545378

`A006880(n+1)-A057834(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057835

/-- `A006880(n+1)-A057834(n+1)` -/
def P14657973214948545378.Spec : Prop :=
  ∀ n, P14657973214948545378.a n = A057835 (n + 1)

theorem P14657973214948545378.correct : P14657973214948545378.Spec := by
  intro n
  simp only [A057835, Nat.add_sub_cancel]

end A057835

/-! ## A057835.P18348980144708797195

`∑[A228066(n+1)]`
-/

namespace A057835.P18348980144708797195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057835.P18348980144708797195

namespace A057835

/-- `∑[A228066(n+1)]` -/
def P18348980144708797195.Spec : Prop :=
  ∀ n, P18348980144708797195.a n = A057835 (n + 1)

end A057835

/-! ## A057835.P15553650776292573640

`A006880(n+1)-∑[A228065(n+1)]`
-/

namespace A057835.P15553650776292573640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057835.P15553650776292573640

namespace A057835

/-- `A006880(n+1)-∑[A228065(n+1)]` -/
def P15553650776292573640.Spec : Prop :=
  ∀ n, P15553650776292573640.a n = A057835 (n + 1)

end A057835

/-! ## A057835.P610461778518617120

`A006880(A000027(n+1))%A057834(n+1)`
-/

namespace A057835.P610461778518617120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006880 (A000027 (n + 1)).toNat) (A057834 (n + 1))

end

end A057835.P610461778518617120

namespace A057835

/-- `A006880(A000027(n+1))%A057834(n+1)` -/
def P610461778518617120.Spec : Prop :=
  ∀ n, P610461778518617120.a n = A057835 (n + 1)

end A057835

/-! ## A057835.P9828874900686088458

`A006880(A087156(n+1))%A057834(n+1)`
-/

namespace A057835.P9828874900686088458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006880 (A087156 (n + 1)).toNat) (A057834 (n + 1))

end

end A057835.P9828874900686088458

namespace A057835

/-- `A006880(A087156(n+1))%A057834(n+1)` -/
def P9828874900686088458.Spec : Prop :=
  ∀ n, P9828874900686088458.a n = A057835 (n + 1)

end A057835

/-!
# A057837: Number of partitions of a set of n elements where the partitions are of size > 3.

The programs for A057837, there is no canonical definition to state claims against.
-/

/-! ## A057837.P12634086848445443013

`A293024(∑[n+4]+2)`
-/

namespace A057837.P12634086848445443013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A057837.P12634086848445443013

/-! ## A057837.P15796841047163836208

`A293024(eq[3, A025581(n)])/A262616(n)%3`
-/

namespace A057837.P15796841047163836208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (Int.tmod (A262616 n) 3 : ℚ)

end

end A057837.P15796841047163836208

/-! ## A057837.P6931609637343560404

`A293024(eq[3, A025581(n)])/(A074621(n)+8^n)%2`
-/

namespace A057837.P6931609637343560404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (Int.tmod (A074621 n + (8 ^ n : ℤ)) 2 : ℚ)

end

end A057837.P6931609637343560404

/-! ## A057837.P17550410870735089048

`A293024(eq[3, A025581(n)])+A001221((n%(2^n)-n)/3+1)`
-/

namespace A057837.P17550410870735089048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A001221 (SequenceMachineLib.roundAway ((((n % 2 ^ n : ℕ) : ℤ) - (n : ℤ) : ℚ) / 3 + 1)).toNat

end

end A057837.P17550410870735089048

/-! ## A057837.P5208331703521293650

`A293024(eq[3, A025581(n)])%A076726(n)`
-/

namespace A057837.P5208331703521293650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A076726 n)

end

end A057837.P5208331703521293650

/-!
# A057838: Numbers k such that A055079(k) = 2^k.

The programs for A057838, there is no canonical definition to state claims against.
-/

/-! ## A057838.P7665552776019482927

`log2(A057841(n+1))`
-/

namespace A057838.P7665552776019482927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057841 (n + 1) : ℝ)

end

end A057838.P7665552776019482927

/-! ## A057838.P5116136256252368117

`A254524(record[6*a(n-1)-9*a(n-2)])` with `a(0)=10, a(1)=0, a(2)=1`
-/

namespace A057838.P5116136256252368117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 0, 1] fun n f1 =>
  6 * f1 (n - 1) - 9 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057838.P5116136256252368117

/-!
# A057840: Numbers k such that k | 8^k + 6^k + 4^k + 2^k + 1.

The programs for A057840, there is no canonical definition to state claims against.
-/

/-! ## A057840.P14653214984268284921

`A001223(A025599(n))+A000225(n)`
-/

namespace A057840.P14653214984268284921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A025599 n).toNat + A000225 n

end

end A057840.P14653214984268284921

/-!
# A057841: a(n) = 2^A057838(n) corresponding to extremal cases of A055079.

The programs for A057841, there is no canonical definition to state claims against.
-/

/-! ## A057841.P17165472541883582249

`2^A057838(n+1)`
-/

namespace A057841.P17165472541883582249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057838 (n + 1) : ℤ)

end

end A057841.P17165472541883582249

/-!
# A057843: a(n) = floor(n*tau^2) - 3, where tau = (1+sqrt(5))/2.

The programs for A057843, the canonical program `A057843.P1375060347392083398` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057843 has offset 1).

The definition of A057843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057843.P14773606089056851188

`comp[floor(ϕ*n)]-3`
-/

namespace A057843.P14773606089056851188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 3

end

end A057843.P14773606089056851188

namespace A057843

/-- `comp[floor(ϕ*n)]-3` -/
def P14773606089056851188.Spec : Prop :=
  ∀ n, P14773606089056851188.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P103974980834948961

`floor(n-2-ϕ*xor(n, -1))`
-/

namespace A057843.P103974980834948961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℝ) - Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌋

end

end A057843.P103974980834948961

namespace A057843

/-- `floor(n-2-ϕ*xor(n, -1))` -/
def P103974980834948961.Spec : Prop :=
  ∀ n, P103974980834948961.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P17717313502553028182

`ceil(n-3-ϕ*xor(n, -1))`
-/

namespace A057843.P17717313502553028182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 3 : ℝ) - Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉

end

end A057843.P17717313502553028182

namespace A057843

/-- `ceil(n-3-ϕ*xor(n, -1))` -/
def P17717313502553028182.Spec : Prop :=
  ∀ n, P17717313502553028182.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P14789034791641271349

`floor(ϕ*C(n+1, n)+n-2)`
-/

namespace A057843.P14789034791641271349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.choose (n + 1) n : ℝ) + ((n : ℤ) - 2 : ℝ)⌋

end

end A057843.P14789034791641271349

namespace A057843

/-- `floor(ϕ*C(n+1, n)+n-2)` -/
def P14789034791641271349.Spec : Prop :=
  ∀ n, P14789034791641271349.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P17745972099008426475

`(A075318(n+1)-5)/2`
-/

namespace A057843.P17745972099008426475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075318 (n + 1) - 5 : ℚ) / 2

end

end A057843.P17745972099008426475

namespace A057843

/-- `(A075318(n+1)-5)/2` -/
def P17745972099008426475.Spec : Prop :=
  ∀ n, P17745972099008426475.a n = (A057843 (n + 1) : ℚ)

end A057843

/-! ## A057843.P1079310329971163542

`(floor(ϕ*(n+1))+n-2)%A191065(n+1)`
-/

namespace A057843.P1079310329971163542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + ((n : ℤ) - 2)) (A191065 (n + 1))

end

end A057843.P1079310329971163542

namespace A057843

/-- `(floor(ϕ*(n+1))+n-2)%A191065(n+1)` -/
def P1079310329971163542.Spec : Prop :=
  ∀ n, P1079310329971163542.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P1375060347392083398

`(A001950(n+1)-3)%A017041(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057843

/-- `(A001950(n+1)-3)%A017041(n)` -/
def P1375060347392083398.Spec : Prop :=
  ∀ n, P1375060347392083398.a n = A057843 (n + 1)

theorem P1375060347392083398.correct : P1375060347392083398.Spec := by
  intro n
  simp only [A057843, Nat.add_sub_cancel]

end A057843

/-! ## A057843.P3164295605343459811

`(A003622(n+1)-2)%A001913(n+1)`
-/

namespace A057843.P3164295605343459811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (n + 1) - 2) (A001913 (n + 1))

end

end A057843.P3164295605343459811

namespace A057843

/-- `(A003622(n+1)-2)%A001913(n+1)` -/
def P3164295605343459811.Spec : Prop :=
  ∀ n, P3164295605343459811.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P16380021595275099066

`record[A054084(n+1)-3]`
-/

namespace A057843.P16380021595275099066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057843.P16380021595275099066

namespace A057843

/-- `record[A054084(n+1)-3]` -/
def P16380021595275099066.Spec : Prop :=
  ∀ n, P16380021595275099066.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P14536274953264063976

`record[n-A085358(n)]`
-/

namespace A057843.P14536274953264063976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A085358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057843.P14536274953264063976

namespace A057843

/-- `record[n-A085358(n)]` -/
def P14536274953264063976.Spec : Prop :=
  ∀ n, P14536274953264063976.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P6486758887391815530

`record[n-Δ[A014417(n)]]`
-/

namespace A057843.P6486758887391815530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057843.P6486758887391815530

namespace A057843

/-- `record[n-Δ[A014417(n)]]` -/
def P6486758887391815530.Spec : Prop :=
  ∀ n, P6486758887391815530.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P2761809236079390292

`record[A348853(n+1)-2]`
-/

namespace A057843.P2761809236079390292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348853 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057843.P2761809236079390292

namespace A057843

/-- `record[A348853(n+1)-2]` -/
def P2761809236079390292.Spec : Prop :=
  ∀ n, P2761809236079390292.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P16527868501887615187

`record[n-A035612(n+1)]`
-/

namespace A057843.P16527868501887615187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057843.P16527868501887615187

namespace A057843

/-- `record[n-A035612(n+1)]` -/
def P16527868501887615187.Spec : Prop :=
  ∀ n, P16527868501887615187.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P17198868490468367519

`record[n-A035614(n+1)]`
-/

namespace A057843.P17198868490468367519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057843.P17198868490468367519

namespace A057843

/-- `record[n-A035614(n+1)]` -/
def P17198868490468367519.Spec : Prop :=
  ∀ n, P17198868490468367519.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P967596604988671105

`record[n-A139764(n+1)]`
-/

namespace A057843.P967596604988671105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057843.P967596604988671105

namespace A057843

/-- `record[n-A139764(n+1)]` -/
def P967596604988671105.Spec : Prop :=
  ∀ n, P967596604988671105.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P1283924792499654364

`A023444(A003622(n+1))`
-/

namespace A057843.P1283924792499654364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A003622 (n + 1)).toNat

end

end A057843.P1283924792499654364

namespace A057843

/-- `A023444(A003622(n+1))` -/
def P1283924792499654364.Spec : Prop :=
  ∀ n, P1283924792499654364.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P8293956119119125647

`A023445(A001950(n+1))`
-/

namespace A057843.P8293956119119125647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A001950 (n + 1)).toNat

end

end A057843.P8293956119119125647

namespace A057843

/-- `A023445(A001950(n+1))` -/
def P8293956119119125647.Spec : Prop :=
  ∀ n, P8293956119119125647.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P13278971026798076984

`A023446(A004957(n+1))`
-/

namespace A057843.P13278971026798076984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A004957 (n + 1)).toNat

end

end A057843.P13278971026798076984

namespace A057843

/-- `A023446(A004957(n+1))` -/
def P13278971026798076984.Spec : Prop :=
  ∀ n, P13278971026798076984.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P18095885534191615805

`A023446(A026352(n+1))`
-/

namespace A057843.P18095885534191615805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A026352 (n + 1)).toNat

end

end A057843.P18095885534191615805

namespace A057843

/-- `A023446(A026352(n+1))` -/
def P18095885534191615805.Spec : Prop :=
  ∀ n, P18095885534191615805.a n = A057843 (n + 1)

end A057843

/-! ## A057843.P15509284464390638709

`A023448(A022413(n+1))`
-/

namespace A057843.P15509284464390638709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A022413 (n + 1)).toNat

end

end A057843.P15509284464390638709

namespace A057843

/-- `A023448(A022413(n+1))` -/
def P15509284464390638709.Spec : Prop :=
  ∀ n, P15509284464390638709.a n = A057843 (n + 1)

end A057843

/-!
# A057844: Numbers n such that n | 6^n + 4^n + 2^n.

The programs for A057844, there is no canonical definition to state claims against.
-/

/-! ## A057844.P9778880358821420463

`eq[A092502(n+1), A175506(n+1)]+1`
-/

namespace A057844.P9778880358821420463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057844.P9778880358821420463

/-!
# A057845: Numbers k such that k | 4^k + 2^k + 1.

The programs for A057845, there is no canonical definition to state claims against.
-/

/-! ## A057845.P9235657654462445024

`∩[A014855(n+1), A364722(n+1)]`
-/

namespace A057845.P9235657654462445024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057845.P9235657654462445024

/-! ## A057845.P12899597527135423077

`filter[A014949(n+1), A341347(#)]`
-/

namespace A057845.P12899597527135423077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341347 (f1 j).toNat = 1) n)

end

end A057845.P12899597527135423077

/-! ## A057845.P12197136891894017507

`A014949(lt[A128215(n+1), A320126(n)])`
-/

namespace A057845.P12197136891894017507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014949 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057845.P12197136891894017507

/-! ## A057845.P6553059877952181702

`A014949(A070118(n+1)%A123285(n+2))`
-/

namespace A057845.P6553059877952181702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014949 (Int.tmod (A070118 (n + 1)) (A123285 (n + 2 + 21))).toNat

end

end A057845.P6553059877952181702

/-!
# A057846: Sort the digits of n into alphabetical order (the "Obsessive Filer's Sequence").

The programs for A057846, there is no canonical definition to state claims against.
-/

/-! ## A057846.P14315040482720824142

`lt[0, A014908(A036026(n))]`
-/

namespace A057846.P14315040482720824142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 (A036026 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057846.P14315040482720824142

/-! ## A057846.P123147339868696775

`lt[A211890(n+4), A211773(n)]`
-/

namespace A057846.P123147339868696775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211890 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057846.P123147339868696775

/-! ## A057846.P17235886215618597598

`lt[A137408(n+1), A137517(n+2)]`
-/

namespace A057846.P17235886215618597598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137517 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057846.P17235886215618597598

/-! ## A057846.P9929307793082633266

`lt[A340828(n+1)%A324851(n+1), 10]`
-/

namespace A057846.P9929307793082633266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340828 (n + 1)) (A324851 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057846.P9929307793082633266

/-! ## A057846.P1927811482975232336

`lt[A357185(n+1), A341992(A004070(n))]`
-/

namespace A057846.P1927811482975232336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341992 (A004070 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057846.P1927811482975232336

/-!
# A057847: Primes p whose order of primeness A078442(p) is at least 10.

The programs for A057847, the canonical program `A057847.P14928123273098948202` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057847 has offset 1).

The definition of A057847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057847.P4331198180973352048

`A057851(p?[comp[n²]])`
-/

namespace A057847.P4331198180973352048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057847.P4331198180973352048

namespace A057847

/-- `A057851(p?[comp[n²]])` -/
def P4331198180973352048.Spec : Prop :=
  ∀ n, P4331198180973352048.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P7623599165598671808

`A057851(Δ[A007504(n)])`
-/

namespace A057847.P7623599165598671808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (f1 (n + 1) - f1 n).toNat

end

end A057847.P7623599165598671808

namespace A057847

/-- `A057851(Δ[A007504(n)])` -/
def P7623599165598671808.Spec : Prop :=
  ∀ n, P7623599165598671808.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P14928123273098948202

`A057851(A000040(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057847

/-- `A057851(A000040(n+1))` -/
def P14928123273098948202.Spec : Prop :=
  ∀ n, P14928123273098948202.a n = A057847 (n + 1)

theorem P14928123273098948202.correct : P14928123273098948202.Spec := by
  intro n
  simp only [A057847, Nat.add_sub_cancel]

end A057847

/-! ## A057847.P4179022943363521053

`A057851(A008578(n+2))`
-/

namespace A057847.P4179022943363521053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A008578 (n + 2)).toNat

end

end A057847.P4179022943363521053

namespace A057847

/-- `A057851(A008578(n+2))` -/
def P4179022943363521053.Spec : Prop :=
  ∀ n, P4179022943363521053.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P4029664444160728915

`A057851(A182986(n+2))`
-/

namespace A057847.P4029664444160728915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A182986 (n + 2)).toNat

end

end A057847.P4029664444160728915

namespace A057847

/-- `A057851(A182986(n+2))` -/
def P4029664444160728915.Spec : Prop :=
  ∀ n, P4029664444160728915.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P892701769099060286

`A057851(eq[1, A003415(n)])`
-/

namespace A057847.P892701769099060286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057847.P892701769099060286

namespace A057847

/-- `A057851(eq[1, A003415(n)])` -/
def P892701769099060286.Spec : Prop :=
  ∀ n, P892701769099060286.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P547478237233597391

`A057851(record[A006530(n+2)])`
-/

namespace A057847.P547478237233597391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057847.P547478237233597391

namespace A057847

/-- `A057851(record[A006530(n+2)])` -/
def P547478237233597391.Spec : Prop :=
  ∀ n, P547478237233597391.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P9585147484593445900

`A057851(record[A014963(n+2)])`
-/

namespace A057847.P9585147484593445900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057847.P9585147484593445900

namespace A057847

/-- `A057851(record[A014963(n+2)])` -/
def P9585147484593445900.Spec : Prop :=
  ∀ n, P9585147484593445900.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P12886381592850581869

`A057851(record[A020639(n+2)])`
-/

namespace A057847.P12886381592850581869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057847.P12886381592850581869

namespace A057847

/-- `A057851(record[A020639(n+2)])` -/
def P12886381592850581869.Spec : Prop :=
  ∀ n, P12886381592850581869.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P16025126127427333041

`A057851(A040976(n+1)+2)`
-/

namespace A057847.P16025126127427333041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A040976 (n + 1) + 2).toNat

end

end A057847.P16025126127427333041

namespace A057847

/-- `A057851(A040976(n+1)+2)` -/
def P16025126127427333041.Spec : Prop :=
  ∀ n, P16025126127427333041.a n = A057847 (n + 1)

theorem P16025126127427333041.correct : P16025126127427333041.Spec := by
  intro n
  simp only [A057847, Nat.add_sub_cancel, A057847.P16025126127427333041.a, A057847.P14928123273098948202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A057851, A057851.P5593958897623650929.a, A057850, A057850.P11135145847204226969.a, A049090, A049090.P1203215937391654981.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057847

/-! ## A057847.P11746549131775692611

`A057851(comp[A018252(n+1)-1]+1)`
-/

namespace A057847.P11746549131775692611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A057847.P11746549131775692611

namespace A057847

/-- `A057851(comp[A018252(n+1)-1]+1)` -/
def P11746549131775692611.Spec : Prop :=
  ∀ n, P11746549131775692611.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P8670245471139837603

`A057851(record[2*(n+1)/A000005(n+1)])`
-/

namespace A057847.P8670245471139837603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A057847.P8670245471139837603

namespace A057847

/-- `A057851(record[2*(n+1)/A000005(n+1)])` -/
def P8670245471139837603.Spec : Prop :=
  ∀ n, P8670245471139837603.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P3195276050323470630

`A057851(A000720(A073123(n+1)))`
-/

namespace A057847.P3195276050323470630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A000720 (A073123 (n + 1)).toNat).toNat

end

end A057847.P3195276050323470630

namespace A057847

/-- `A057851(A000720(A073123(n+1)))` -/
def P3195276050323470630.Spec : Prop :=
  ∀ n, P3195276050323470630.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P5788061267644617490

`A057850(A006450(n+1))`
-/

namespace A057847.P5788061267644617490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A006450 (n + 1)).toNat

end

end A057847.P5788061267644617490

namespace A057847

/-- `A057850(A006450(n+1))` -/
def P5788061267644617490.Spec : Prop :=
  ∀ n, P5788061267644617490.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P14305729395831348971

`A057850(A175247(n+2))`
-/

namespace A057847.P14305729395831348971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A175247 (n + 2)).toNat

end

end A057847.P14305729395831348971

namespace A057847

/-- `A057850(A175247(n+2))` -/
def P14305729395831348971.Spec : Prop :=
  ∀ n, P14305729395831348971.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P15382135021743118033

`A057850(∑{p}[A000040(n+1), A000040(#)])`
-/

namespace A057847.P15382135021743118033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A057847.P15382135021743118033

namespace A057847

/-- `A057850(∑{p}[A000040(n+1), A000040(#)])` -/
def P15382135021743118033.Spec : Prop :=
  ∀ n, P15382135021743118033.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P2032243695898701406

`A057850(A038580(n+1)-A378027(n+1))`
-/

namespace A057847.P2032243695898701406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A038580 (n + 1) - A378027 (n + 1)).toNat

end

end A057847.P2032243695898701406

namespace A057847

/-- `A057850(A038580(n+1)-A378027(n+1))` -/
def P2032243695898701406.Spec : Prop :=
  ∀ n, P2032243695898701406.a n = A057847 (n + 1)

end A057847

/-! ## A057847.P1146543610735613068

`A057851(A137588(A006450(n+1))+n+1)`
-/

namespace A057847.P1146543610735613068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A137588 (A006450 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A057847.P1146543610735613068

namespace A057847

/-- `A057851(A137588(A006450(n+1))+n+1)` -/
def P1146543610735613068.Spec : Prop :=
  ∀ n, P1146543610735613068.a n = A057847 (n + 1)

end A057847

/-!
# A057849: Primes p whose order of primeness A078442(p) is at least 7.

The programs for A057849, the canonical program `A057849.P15598929921567403895` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057849 has offset 1).

The definition of A057849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057849.P10962632622783119704

`A049202(p?[comp[n²]])`
-/

namespace A057849.P10962632622783119704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057849.P10962632622783119704

namespace A057849

/-- `A049202(p?[comp[n²]])` -/
def P10962632622783119704.Spec : Prop :=
  ∀ n, P10962632622783119704.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P15598929921567403895

`A049202(A000040(1+n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057849

/-- `A049202(A000040(1+n))` -/
def P15598929921567403895.Spec : Prop :=
  ∀ n, P15598929921567403895.a n = A057849 (n + 1)

theorem P15598929921567403895.correct : P15598929921567403895.Spec := by
  intro n
  simp only [A057849, Nat.add_sub_cancel]

end A057849

/-! ## A057849.P7373638791945164921

`A049202(A008578(n+2))`
-/

namespace A057849.P7373638791945164921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A008578 (n + 2)).toNat

end

end A057849.P7373638791945164921

namespace A057849

/-- `A049202(A008578(n+2))` -/
def P7373638791945164921.Spec : Prop :=
  ∀ n, P7373638791945164921.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P10202558259106909105

`A049202(A182986(n+2))`
-/

namespace A057849.P10202558259106909105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A182986 (n + 2)).toNat

end

end A057849.P10202558259106909105

namespace A057849

/-- `A049202(A182986(n+2))` -/
def P10202558259106909105.Spec : Prop :=
  ∀ n, P10202558259106909105.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P6095355442202400176

`A049202(sqrt(A001248(n+1)))`
-/

namespace A057849.P6095355442202400176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A057849.P6095355442202400176

namespace A057849

/-- `A049202(sqrt(A001248(n+1)))` -/
def P6095355442202400176.Spec : Prop :=
  ∀ n, P6095355442202400176.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P14627670153933538370

`A049202(record[A006530(n+2)])`
-/

namespace A057849.P14627670153933538370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057849.P14627670153933538370

namespace A057849

/-- `A049202(record[A006530(n+2)])` -/
def P14627670153933538370.Spec : Prop :=
  ∀ n, P14627670153933538370.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P13030001578343785823

`A049202(record[A014963(n+2)])`
-/

namespace A057849.P13030001578343785823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057849.P13030001578343785823

namespace A057849

/-- `A049202(record[A014963(n+2)])` -/
def P13030001578343785823.Spec : Prop :=
  ∀ n, P13030001578343785823.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P15864154201188323077

`A049202(record[A020639(n+2)])`
-/

namespace A057849.P15864154201188323077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057849.P15864154201188323077

namespace A057849

/-- `A049202(record[A020639(n+2)])` -/
def P15864154201188323077.Spec : Prop :=
  ∀ n, P15864154201188323077.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P851039561069340588

`A049202(A040976(n+1)+2)`
-/

namespace A057849.P851039561069340588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A040976 (n + 1) + 2).toNat

end

end A057849.P851039561069340588

namespace A057849

/-- `A049202(A040976(n+1)+2)` -/
def P851039561069340588.Spec : Prop :=
  ∀ n, P851039561069340588.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P14231983891622513566

`A049202(A100484(n+1)/2)`
-/

namespace A057849.P14231983891622513566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A057849.P14231983891622513566

namespace A057849

/-- `A049202(A100484(n+1)/2)` -/
def P14231983891622513566.Spec : Prop :=
  ∀ n, P14231983891622513566.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P3474026665156167287

`A049202(comp[A018252(n+1)-1]+1)`
-/

namespace A057849.P3474026665156167287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A057849.P3474026665156167287

namespace A057849

/-- `A049202(comp[A018252(n+1)-1]+1)` -/
def P3474026665156167287.Spec : Prop :=
  ∀ n, P3474026665156167287.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P14461725745534086144

`A049202(record[2*(n+1)/A000005(n+1)])`
-/

namespace A057849.P14461725745534086144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A057849.P14461725745534086144

namespace A057849

/-- `A049202(record[2*(n+1)/A000005(n+1)])` -/
def P14461725745534086144.Spec : Prop :=
  ∀ n, P14461725745534086144.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P6121889985886217745

`A049203(A006450(n+1))`
-/

namespace A057849.P6121889985886217745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A006450 (n + 1)).toNat

end

end A057849.P6121889985886217745

namespace A057849

/-- `A049203(A006450(n+1))` -/
def P6121889985886217745.Spec : Prop :=
  ∀ n, P6121889985886217745.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P4045507063583250842

`A049203(A175247(n+2))`
-/

namespace A057849.P4045507063583250842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A175247 (n + 2)).toNat

end

end A057849.P4045507063583250842

namespace A057849

/-- `A049203(A175247(n+2))` -/
def P4045507063583250842.Spec : Prop :=
  ∀ n, P4045507063583250842.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P13382768504508455963

`A049203(∏{p}[A000040(n+1), A000040(#)])`
-/

namespace A057849.P13382768504508455963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A057849.P13382768504508455963

namespace A057849

/-- `A049203(∏{p}[A000040(n+1), A000040(#)])` -/
def P13382768504508455963.Spec : Prop :=
  ∀ n, P13382768504508455963.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P2783298028648297491

`A049203(A008578(A000720(A072677(n+1))))`
-/

namespace A057849.P2783298028648297491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A008578 (A000720 (A072677 (n + 1)).toNat).toNat).toNat

end

end A057849.P2783298028648297491

namespace A057849

/-- `A049203(A008578(A000720(A072677(n+1))))` -/
def P2783298028648297491.Spec : Prop :=
  ∀ n, P2783298028648297491.a n = A057849 (n + 1)

end A057849

/-! ## A057849.P895882981026981363

`A049203(A000720(A073123(A000720(A073123(n+1)))))`
-/

namespace A057849.P895882981026981363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A000720 (A073123 (A000720 (A073123 (n + 1)).toNat).toNat).toNat).toNat

end

end A057849.P895882981026981363

namespace A057849

/-- `A049203(A000720(A073123(A000720(A073123(n+1)))))` -/
def P895882981026981363.Spec : Prop :=
  ∀ n, P895882981026981363.a n = A057849 (n + 1)

end A057849

/-!
# A057850: Primes p whose order of primeness A078442(p) is at least 8.

The programs for A057850, the canonical program `A057850.P11135145847204226969` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057850 has offset 1).

The definition of A057850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057850.P11135145847204226969

`A049090(A049090(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057850

/-- `A049090(A049090(n+1))` -/
def P11135145847204226969.Spec : Prop :=
  ∀ n, P11135145847204226969.a n = A057850 (n + 1)

theorem P11135145847204226969.correct : P11135145847204226969.Spec := by
  intro n
  simp only [A057850, Nat.add_sub_cancel]

end A057850

/-! ## A057850.P642893347809839265

`A057849(p?[comp[n²]])`
-/

namespace A057850.P642893347809839265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057850.P642893347809839265

namespace A057850

/-- `A057849(p?[comp[n²]])` -/
def P642893347809839265.Spec : Prop :=
  ∀ n, P642893347809839265.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P3691876022673764771

`A057849(Δ[A007504(n)])`
-/

namespace A057850.P3691876022673764771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (f1 (n + 1) - f1 n).toNat

end

end A057850.P3691876022673764771

namespace A057850

/-- `A057849(Δ[A007504(n)])` -/
def P3691876022673764771.Spec : Prop :=
  ∀ n, P3691876022673764771.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P13052996214594743530

`A057849(A000040(1+n))`
-/

namespace A057850.P13052996214594743530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A000040 (1 + n)).toNat

end

end A057850.P13052996214594743530

namespace A057850

/-- `A057849(A000040(1+n))` -/
def P13052996214594743530.Spec : Prop :=
  ∀ n, P13052996214594743530.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P3180322256338148176

`A057849(A008578(n+2))`
-/

namespace A057850.P3180322256338148176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A008578 (n + 2)).toNat

end

end A057850.P3180322256338148176

namespace A057850

/-- `A057849(A008578(n+2))` -/
def P3180322256338148176.Spec : Prop :=
  ∀ n, P3180322256338148176.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P16504615464059652452

`A057849(A182986(n+2))`
-/

namespace A057850.P16504615464059652452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A182986 (n + 2)).toNat

end

end A057850.P16504615464059652452

namespace A057850

/-- `A057849(A182986(n+2))` -/
def P16504615464059652452.Spec : Prop :=
  ∀ n, P16504615464059652452.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P9100645567137638216

`A057849(record[A006530(n+2)])`
-/

namespace A057850.P9100645567137638216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057850.P9100645567137638216

namespace A057850

/-- `A057849(record[A006530(n+2)])` -/
def P9100645567137638216.Spec : Prop :=
  ∀ n, P9100645567137638216.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P1274189652070206309

`A057849(record[A014963(n+2)])`
-/

namespace A057850.P1274189652070206309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057850.P1274189652070206309

namespace A057850

/-- `A057849(record[A014963(n+2)])` -/
def P1274189652070206309.Spec : Prop :=
  ∀ n, P1274189652070206309.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P2223726754779856895

`A057849(record[A020639(n+2)])`
-/

namespace A057850.P2223726754779856895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057850.P2223726754779856895

namespace A057850

/-- `A057849(record[A020639(n+2)])` -/
def P2223726754779856895.Spec : Prop :=
  ∀ n, P2223726754779856895.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P9800695611411470398

`A057849(A040976(n+1)+2)`
-/

namespace A057850.P9800695611411470398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A040976 (n + 1) + 2).toNat

end

end A057850.P9800695611411470398

namespace A057850

/-- `A057849(A040976(n+1)+2)` -/
def P9800695611411470398.Spec : Prop :=
  ∀ n, P9800695611411470398.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P3275091596229643288

`A057849(A207790(2*(n+1)))`
-/

namespace A057850.P3275091596229643288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A207790 (2 * (n + 1))).toNat

end

end A057850.P3275091596229643288

namespace A057850

/-- `A057849(A207790(2*(n+1)))` -/
def P3275091596229643288.Spec : Prop :=
  ∀ n, P3275091596229643288.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P2345471916705317729

`A057849(eq[2, A000005(n+1)]+1)`
-/

namespace A057850.P2345471916705317729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057850.P2345471916705317729

namespace A057850

/-- `A057849(eq[2, A000005(n+1)]+1)` -/
def P2345471916705317729.Spec : Prop :=
  ∀ n, P2345471916705317729.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P1887629845513848583

`A057849(comp[A018252(n+1)-1]+1)`
-/

namespace A057850.P1887629845513848583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A057850.P1887629845513848583

namespace A057850

/-- `A057849(comp[A018252(n+1)-1]+1)` -/
def P1887629845513848583.Spec : Prop :=
  ∀ n, P1887629845513848583.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P4862345497601667815

`A057849(record[2*(n+1)/A000005(n+1)])`
-/

namespace A057850.P4862345497601667815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A057850.P4862345497601667815

namespace A057850

/-- `A057849(record[2*(n+1)/A000005(n+1)])` -/
def P4862345497601667815.Spec : Prop :=
  ∀ n, P4862345497601667815.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P1705499013236232730

`A057849(A006450(n+1)-A168152(n+1))`
-/

namespace A057850.P1705499013236232730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A006450 (n + 1) - A168152 (n + 1)).toNat

end

end A057850.P1705499013236232730

namespace A057850

/-- `A057849(A006450(n+1)-A168152(n+1))` -/
def P1705499013236232730.Spec : Prop :=
  ∀ n, P1705499013236232730.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P8996971788975966132

`A057849(A000720(A073123(n+1)))`
-/

namespace A057850.P8996971788975966132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A000720 (A073123 (n + 1)).toNat).toNat

end

end A057850.P8996971788975966132

namespace A057850

/-- `A057849(A000720(A073123(n+1)))` -/
def P8996971788975966132.Spec : Prop :=
  ∀ n, P8996971788975966132.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P6766489877776845457

`A049202(A006450(n+1))`
-/

namespace A057850.P6766489877776845457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A006450 (n + 1)).toNat

end

end A057850.P6766489877776845457

namespace A057850

/-- `A049202(A006450(n+1))` -/
def P6766489877776845457.Spec : Prop :=
  ∀ n, P6766489877776845457.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P13384325295229472457

`A049202(A175247(n+2))`
-/

namespace A057850.P13384325295229472457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A175247 (n + 2)).toNat

end

end A057850.P13384325295229472457

namespace A057850

/-- `A049202(A175247(n+2))` -/
def P13384325295229472457.Spec : Prop :=
  ∀ n, P13384325295229472457.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P12951356069559956016

`A049202(∑{p}[A000040(n+1), A000040(#)])`
-/

namespace A057850.P12951356069559956016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A057850.P12951356069559956016

namespace A057850

/-- `A049202(∑{p}[A000040(n+1), A000040(#)])` -/
def P12951356069559956016.Spec : Prop :=
  ∀ n, P12951356069559956016.a n = A057850 (n + 1)

end A057850

/-! ## A057850.P6929609458093056440

`A057849(A137588(A006450(n+1))+n+1)`
-/

namespace A057850.P6929609458093056440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A137588 (A006450 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A057850.P6929609458093056440

namespace A057850

/-- `A057849(A137588(A006450(n+1))+n+1)` -/
def P6929609458093056440.Spec : Prop :=
  ∀ n, P6929609458093056440.a n = A057850 (n + 1)

end A057850

/-!
# A057851: Primes p whose order of primeness A078442(p) is at least 9.

The programs for A057851, the canonical program `A057851.P5593958897623650929` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057851 has offset 1).

The definition of A057851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057851.P5593958897623650929

`A057850(A000040(1+n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057851

/-- `A057850(A000040(1+n))` -/
def P5593958897623650929.Spec : Prop :=
  ∀ n, P5593958897623650929.a n = A057851 (n + 1)

theorem P5593958897623650929.correct : P5593958897623650929.Spec := by
  intro n
  simp only [A057851, Nat.add_sub_cancel]

end A057851

/-! ## A057851.P912636998022901969

`A057850(A008578(n+2))`
-/

namespace A057851.P912636998022901969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A008578 (n + 2)).toNat

end

end A057851.P912636998022901969

namespace A057851

/-- `A057850(A008578(n+2))` -/
def P912636998022901969.Spec : Prop :=
  ∀ n, P912636998022901969.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P5568956349805384220

`A057850(A182986(n+2))`
-/

namespace A057851.P5568956349805384220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A182986 (n + 2)).toNat

end

end A057851.P5568956349805384220

namespace A057851

/-- `A057850(A182986(n+2))` -/
def P5568956349805384220.Spec : Prop :=
  ∀ n, P5568956349805384220.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P14936986940744014746

`A057850(record[A006530(n+2)])`
-/

namespace A057851.P14936986940744014746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057851.P14936986940744014746

namespace A057851

/-- `A057850(record[A006530(n+2)])` -/
def P14936986940744014746.Spec : Prop :=
  ∀ n, P14936986940744014746.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P13197282902744658115

`A057850(record[A020639(n+2)])`
-/

namespace A057851.P13197282902744658115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057851.P13197282902744658115

namespace A057851

/-- `A057850(record[A020639(n+2)])` -/
def P13197282902744658115.Spec : Prop :=
  ∀ n, P13197282902744658115.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P1398561333854640590

`A057850(record[A000010(n+1)+1])`
-/

namespace A057851.P1398561333854640590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057851.P1398561333854640590

namespace A057851

/-- `A057850(record[A000010(n+1)+1])` -/
def P1398561333854640590.Spec : Prop :=
  ∀ n, P1398561333854640590.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P16805532100905886444

`A057850(eq[2, A000005(n+1)]+1)`
-/

namespace A057851.P16805532100905886444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057851.P16805532100905886444

namespace A057851

/-- `A057850(eq[2, A000005(n+1)]+1)` -/
def P16805532100905886444.Spec : Prop :=
  ∀ n, P16805532100905886444.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P10927995838756029126

`A057850(record[A014963(n+2)])`
-/

namespace A057851.P10927995838756029126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057851.P10927995838756029126

namespace A057851

/-- `A057850(record[A014963(n+2)])` -/
def P10927995838756029126.Spec : Prop :=
  ∀ n, P10927995838756029126.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P3714913129403557293

`A057850(A000720(A073123(n+1)))`
-/

namespace A057851.P3714913129403557293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A000720 (A073123 (n + 1)).toNat).toNat

end

end A057851.P3714913129403557293

namespace A057851

/-- `A057850(A000720(A073123(n+1)))` -/
def P3714913129403557293.Spec : Prop :=
  ∀ n, P3714913129403557293.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P15958117948438603058

`A057849(A006450(n+1))`
-/

namespace A057851.P15958117948438603058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A006450 (n + 1)).toNat

end

end A057851.P15958117948438603058

namespace A057851

/-- `A057849(A006450(n+1))` -/
def P15958117948438603058.Spec : Prop :=
  ∀ n, P15958117948438603058.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P15258636303827871376

`A057849(A175247(n+2))`
-/

namespace A057851.P15258636303827871376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A175247 (n + 2)).toNat

end

end A057851.P15258636303827871376

namespace A057851

/-- `A057849(A175247(n+2))` -/
def P15258636303827871376.Spec : Prop :=
  ∀ n, P15258636303827871376.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P15110281134909708759

`A057849(∑{p}[A000040(n+1), A000040(#)])`
-/

namespace A057851.P15110281134909708759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A057851.P15110281134909708759

namespace A057851

/-- `A057849(∑{p}[A000040(n+1), A000040(#)])` -/
def P15110281134909708759.Spec : Prop :=
  ∀ n, P15110281134909708759.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P18254537949711057713

`A057850(A137588(A006450(n+1))+n+1)`
-/

namespace A057851.P18254537949711057713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A137588 (A006450 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A057851.P18254537949711057713

namespace A057851

/-- `A057850(A137588(A006450(n+1))+n+1)` -/
def P18254537949711057713.Spec : Prop :=
  ∀ n, P18254537949711057713.a n = A057851 (n + 1)

end A057851

/-! ## A057851.P12909230624298318406

`A057849(A168152(n+1)+A000040(n+1))`
-/

namespace A057851.P12909230624298318406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A168152 (n + 1) + A000040 (n + 1)).toNat

end

end A057851.P12909230624298318406

namespace A057851

/-- `A057849(A168152(n+1)+A000040(n+1))` -/
def P12909230624298318406.Spec : Prop :=
  ∀ n, P12909230624298318406.a n = A057851 (n + 1)

end A057851

/-!
# A057854: Non-Lucas numbers: the complement of A000032.

The programs for A057854, the canonical program `A057854.P3516327272515158544` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057854 has offset 1).

The definition of A057854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057854.P3516327272515158544

`A090946(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057854

/-- `A090946(n+3)` -/
def P3516327272515158544.Spec : Prop :=
  ∀ n, P3516327272515158544.a n = A057854 (n + 1)

theorem P3516327272515158544.correct : P3516327272515158544.Spec := by
  intro n
  simp only [A057854, Nat.add_sub_cancel]

end A057854

/-! ## A057854.P13605924012472923769

`comp[T(n-2,k)+T(n-1,k)]` with `a(0)=2, a(1)=1`
-/

namespace A057854.P13605924012472923769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  SequenceMachineLib.triUp2 f1 n + SequenceMachineLib.triUp f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A057854.P13605924012472923769

namespace A057854

/-- `comp[T(n-2,k)+T(n-1,k)]` -/
def P13605924012472923769.Spec : Prop :=
  ∀ n, (P13605924012472923769.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P7507459420567781744

`comp[round(ϕ^(n-2))]`
-/

namespace A057854.P7507459420567781744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n : ℤ) - 2 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057854.P7507459420567781744

namespace A057854

/-- `comp[round(ϕ^(n-2))]` -/
def P7507459420567781744.Spec : Prop :=
  ∀ n, (P7507459420567781744.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P14020465980512349747

`comp[record[a(n-1)+a(n-2)]-1]+1` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A057854.P14020465980512349747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P14020465980512349747

namespace A057854

/-- `comp[record[a(n-1)+a(n-2)]-1]+1` -/
def P14020465980512349747.Spec : Prop :=
  ∀ n, (P14020465980512349747.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P17804881129640890253

`comp[n-∑[a(n-1)-(1-a(n-2))]-1]+1` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A057854.P17804881129640890253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P17804881129640890253

namespace A057854

/-- `comp[n-∑[a(n-1)-(1-a(n-2))]-1]+1` -/
def P17804881129640890253.Spec : Prop :=
  ∀ n, (P17804881129640890253.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P13338817288748731442

`comp[A324015(n)]+1`
-/

namespace A057854.P13338817288748731442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P13338817288748731442

namespace A057854

/-- `comp[A324015(n)]+1` -/
def P13338817288748731442.Spec : Prop :=
  ∀ n, (P13338817288748731442.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P13595603116442316265

`comp[A000032(n)-1]+1`
-/

namespace A057854.P13595603116442316265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P13595603116442316265

namespace A057854

/-- `comp[A000032(n)-1]+1` -/
def P13595603116442316265.Spec : Prop :=
  ∀ n, (P13595603116442316265.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P6959818379489224549

`comp[A090244(n)-1]+1`
-/

namespace A057854.P6959818379489224549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P6959818379489224549

namespace A057854

/-- `comp[A090244(n)-1]+1` -/
def P6959818379489224549.Spec : Prop :=
  ∀ n, (P6959818379489224549.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P11591906853627137455

`comp[A169985(n)-1]+1`
-/

namespace A057854.P11591906853627137455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P11591906853627137455

namespace A057854

/-- `comp[A169985(n)-1]+1` -/
def P11591906853627137455.Spec : Prop :=
  ∀ n, (P11591906853627137455.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P4921713390278423315

`comp[A254729(n)-1]+1`
-/

namespace A057854.P4921713390278423315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P4921713390278423315

namespace A057854

/-- `comp[A254729(n)-1]+1` -/
def P4921713390278423315.Spec : Prop :=
  ∀ n, (P4921713390278423315.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P1944992393363051944

`comp[A001612(n)-2]+1`
-/

namespace A057854.P1944992393363051944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P1944992393363051944

namespace A057854

/-- `comp[A001612(n)-2]+1` -/
def P1944992393363051944.Spec : Prop :=
  ∀ n, (P1944992393363051944.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P18368611832394358211

`lt[1, A280695(n+1)]+1`
-/

namespace A057854.P18368611832394358211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057854.P18368611832394358211

namespace A057854

/-- `lt[1, A280695(n+1)]+1` -/
def P18368611832394358211.Spec : Prop :=
  ∀ n, (P18368611832394358211.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P16203916487001232500

`comp[A280699(n+1)-1]+1`
-/

namespace A057854.P16203916487001232500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280699 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P16203916487001232500

namespace A057854

/-- `comp[A280699(n+1)-1]+1` -/
def P16203916487001232500.Spec : Prop :=
  ∀ n, (P16203916487001232500.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P11878559348728318964

`comp[A050123(n+2)-1]+1`
-/

namespace A057854.P11878559348728318964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050123 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057854.P11878559348728318964

namespace A057854

/-- `comp[A050123(n+2)-1]+1` -/
def P11878559348728318964.Spec : Prop :=
  ∀ n, (P11878559348728318964.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P5428351823253609804

`∑[A006530(Δ[comp[A000032(n)]])]`
-/

namespace A057854.P5428351823253609804
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057854.P5428351823253609804

namespace A057854

/-- `∑[A006530(Δ[comp[A000032(n)]])]` -/
def P5428351823253609804.Spec : Prop :=
  ∀ n, P5428351823253609804.a n = A057854 (n + 1)

end A057854

/-! ## A057854.P7387853237811151355

`∑[A014963(Δ[comp[A000032(n)]])]`
-/

namespace A057854.P7387853237811151355
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057854.P7387853237811151355

namespace A057854

/-- `∑[A014963(Δ[comp[A000032(n)]])]` -/
def P7387853237811151355.Spec : Prop :=
  ∀ n, P7387853237811151355.a n = A057854 (n + 1)

end A057854

/-! ## A057854.P9653392079077324345

`∑[A020639(Δ[comp[A000032(n)]])]`
-/

namespace A057854.P9653392079077324345
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057854.P9653392079077324345

namespace A057854

/-- `∑[A020639(Δ[comp[A000032(n)]])]` -/
def P9653392079077324345.Spec : Prop :=
  ∀ n, P9653392079077324345.a n = A057854 (n + 1)

end A057854

/-! ## A057854.P10068981483551803053

`∪[A020712(n), A104523(n+1)]`
-/

namespace A057854.P10068981483551803053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057854.P10068981483551803053

namespace A057854

/-- `∪[A020712(n), A104523(n+1)]` -/
def P10068981483551803053.Spec : Prop :=
  ∀ n, (P10068981483551803053.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P12517850564711838581

`∪[A064362(n+1), A104523(n+1)]`
-/

namespace A057854.P12517850564711838581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057854.P12517850564711838581

namespace A057854

/-- `∪[A064362(n+1), A104523(n+1)]` -/
def P12517850564711838581.Spec : Prop :=
  ∀ n, (P12517850564711838581.a n : ℤ) = A057854 (n + 1)

end A057854

/-! ## A057854.P2617840652759136321

`∪[A104523(n+1), A214976(n+1)]`
-/

namespace A057854.P2617840652759136321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057854.P2617840652759136321

namespace A057854

/-- `∪[A104523(n+1), A214976(n+1)]` -/
def P2617840652759136321.Spec : Prop :=
  ∀ n, (P2617840652759136321.a n : ℤ) = A057854 (n + 1)

end A057854

/-!
# A057855: Greatest k such that (k-th prime) <= (n times n-th prime).

The programs for A057855, the canonical program `A057855.P14395477532132651473` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057855 has offset 1).

The definition of A057855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057855.P14395477532132651473

`A000720((n+1)*A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057855

/-- `A000720((n+1)*A000040(n+1))` -/
def P14395477532132651473.Spec : Prop :=
  ∀ n, P14395477532132651473.a n = A057855 (n + 1)

theorem P14395477532132651473.correct : P14395477532132651473.Spec := by
  intro n
  simp only [A057855, Nat.add_sub_cancel]

end A057855

/-! ## A057855.P6807097319986352801

`A065313(p?[comp[n²]])`
-/

namespace A057855.P6807097319986352801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057855.P6807097319986352801

namespace A057855

/-- `A065313(p?[comp[n²]])` -/
def P6807097319986352801.Spec : Prop :=
  ∀ n, P6807097319986352801.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P16360149407306017502

`A065313(Δ[A007504(n)])`
-/

namespace A057855.P16360149407306017502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f1 (n + 1) - f1 n).toNat

end

end A057855.P16360149407306017502

namespace A057855

/-- `A065313(Δ[A007504(n)])` -/
def P16360149407306017502.Spec : Prop :=
  ∀ n, P16360149407306017502.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P11960605726768880659

`A065313(record[A051698(n)])`
-/

namespace A057855.P11960605726768880659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057855.P11960605726768880659

namespace A057855

/-- `A065313(record[A051698(n)])` -/
def P11960605726768880659.Spec : Prop :=
  ∀ n, P11960605726768880659.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P7669606676416420834

`A065313(A000040(n+1))`
-/

namespace A057855.P7669606676416420834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A000040 (n + 1)).toNat

end

end A057855.P7669606676416420834

namespace A057855

/-- `A065313(A000040(n+1))` -/
def P7669606676416420834.Spec : Prop :=
  ∀ n, P7669606676416420834.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P1730495834333582653

`A065313(A008578(n+2))`
-/

namespace A057855.P1730495834333582653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A008578 (n + 2)).toNat

end

end A057855.P1730495834333582653

namespace A057855

/-- `A065313(A008578(n+2))` -/
def P1730495834333582653.Spec : Prop :=
  ∀ n, P1730495834333582653.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P3878749370269586337

`A065313(A182986(n+2))`
-/

namespace A057855.P3878749370269586337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A182986 (n + 2)).toNat

end

end A057855.P3878749370269586337

namespace A057855

/-- `A065313(A182986(n+2))` -/
def P3878749370269586337.Spec : Prop :=
  ∀ n, P3878749370269586337.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P18316616995813168991

`A065313(eq[1, A032741(n)])`
-/

namespace A057855.P18316616995813168991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057855.P18316616995813168991

namespace A057855

/-- `A065313(eq[1, A032741(n)])` -/
def P18316616995813168991.Spec : Prop :=
  ∀ n, P18316616995813168991.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P13129112093475092199

`A065313(record[A006530(n+2)])`
-/

namespace A057855.P13129112093475092199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057855.P13129112093475092199

namespace A057855

/-- `A065313(record[A006530(n+2)])` -/
def P13129112093475092199.Spec : Prop :=
  ∀ n, P13129112093475092199.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P9992090732706340726

`A065313(record[A014963(n+2)])`
-/

namespace A057855.P9992090732706340726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057855.P9992090732706340726

namespace A057855

/-- `A065313(record[A014963(n+2)])` -/
def P9992090732706340726.Spec : Prop :=
  ∀ n, P9992090732706340726.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P5208984200487225689

`A065313(record[A020639(n+2)])`
-/

namespace A057855.P5208984200487225689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057855.P5208984200487225689

namespace A057855

/-- `A065313(record[A020639(n+2)])` -/
def P5208984200487225689.Spec : Prop :=
  ∀ n, P5208984200487225689.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P3770184520540931170

`A065313(A006093(n+1)+1)`
-/

namespace A057855.P3770184520540931170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A006093 (n + 1) + 1).toNat

end

end A057855.P3770184520540931170

namespace A057855

/-- `A065313(A006093(n+1)+1)` -/
def P3770184520540931170.Spec : Prop :=
  ∀ n, P3770184520540931170.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P16660910399409945302

`A065313(A008864(n+1)-1)`
-/

namespace A057855.P16660910399409945302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A008864 (n + 1) - 1).toNat

end

end A057855.P16660910399409945302

namespace A057855

/-- `A065313(A008864(n+1)-1)` -/
def P16660910399409945302.Spec : Prop :=
  ∀ n, P16660910399409945302.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P484304010427013866

`A065313(A014688(n+1)-(n+1))`
-/

namespace A057855.P484304010427013866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A057855.P484304010427013866

namespace A057855

/-- `A065313(A014688(n+1)-(n+1))` -/
def P484304010427013866.Spec : Prop :=
  ∀ n, P484304010427013866.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P2138584269531656934

`A065313(eq[n, A000010(n+1)]+1)`
-/

namespace A057855.P2138584269531656934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057855.P2138584269531656934

namespace A057855

/-- `A065313(eq[n, A000010(n+1)]+1)` -/
def P2138584269531656934.Spec : Prop :=
  ∀ n, P2138584269531656934.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P16155582759957765726

`A065313(A091265(A038722(n+1)))`
-/

namespace A057855.P16155582759957765726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A091265 (A038722 (n + 1)).toNat).toNat

end

end A057855.P16155582759957765726

namespace A057855

/-- `A065313(A091265(A038722(n+1)))` -/
def P16155582759957765726.Spec : Prop :=
  ∀ n, P16155582759957765726.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P8080645279641481740

`A065313(A008347(n+1)+A008347(n))`
-/

namespace A057855.P8080645279641481740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A008347 (n + 1) + A008347 n).toNat

end

end A057855.P8080645279641481740

namespace A057855

/-- `A065313(A008347(n+1)+A008347(n))` -/
def P8080645279641481740.Spec : Prop :=
  ∀ n, P8080645279641481740.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P17425153002663573264

`A065313(A007504(n+1)-A007504(n))`
-/

namespace A057855.P17425153002663573264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A007504 (n + 1) - A007504 n).toNat

end

end A057855.P17425153002663573264

namespace A057855

/-- `A065313(A007504(n+1)-A007504(n))` -/
def P17425153002663573264.Spec : Prop :=
  ∀ n, P17425153002663573264.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P8193445725632149870

`A065313(A104193(n+1)+A002322(n+1))`
-/

namespace A057855.P8193445725632149870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A104193 (n + 1) + A002322 (n + 1)).toNat

end

end A057855.P8193445725632149870

namespace A057855

/-- `A065313(A104193(n+1)+A002322(n+1))` -/
def P8193445725632149870.Spec : Prop :=
  ∀ n, P8193445725632149870.a n = A057855 (n + 1)

end A057855

/-! ## A057855.P15730466742028832106

`A065313(A065309(n+1)+A065308(n+1))`
-/

namespace A057855.P15730466742028832106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A065309 (n + 1) + A065308 (n + 1)).toNat

end

end A057855.P15730466742028832106

namespace A057855

/-- `A065313(A065309(n+1)+A065308(n+1))` -/
def P15730466742028832106.Spec : Prop :=
  ∀ n, P15730466742028832106.a n = A057855 (n + 1)

end A057855

/-!
# A057856: Least k such that (n+1)^k + n^k is a prime.

The programs for A057856, there is no canonical definition to state claims against.
-/

/-! ## A057856.P7607899475471624700

`2^A058064(n+1)`
-/

namespace A057856.P7607899475471624700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A058064 (n + 1) : ℤ)

end

end A057856.P7607899475471624700

/-! ## A057856.P791210195590158513

`A059268(A058064(n+1)+∑[n])`
-/

namespace A057856.P791210195590158513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A058064 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A057856.P791210195590158513

/-! ## A057856.P16965697409298913342

`A145111(A058064(n+1)+∑[n])`
-/

namespace A057856.P16965697409298913342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A058064 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A057856.P16965697409298913342

/-! ## A057856.P16838213183888228291

`A289322(A058064(n+1)+C(n, 64)+1)`
-/

namespace A057856.P16838213183888228291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289322 (A058064 (n + 1) + (Nat.choose n 64 + 1 : ℤ)).toNat

end

end A057856.P16838213183888228291

/-! ## A057856.P2787858679954053962

`A011782(A178334(n)+A058064(n+1))`
-/

namespace A057856.P2787858679954053962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A178334 n + A058064 (n + 1)).toNat

end

end A057856.P2787858679954053962

/-!
# A057857: Number of residue classes modulo n-th primorial number which contain a prime.

The programs for A057857, the canonical program `A057857.P7925582756686219733` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057857 has offset 0).

The definition of A057857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057857.P7925582756686219733

`A005867(n)+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057857

/-- `A005867(n)+n` -/
def P7925582756686219733.Spec : Prop :=
  ∀ n, P7925582756686219733.a n = A057857 n

theorem P7925582756686219733.correct : P7925582756686219733.Spec := by
  intro n
  simp only [A057857]

end A057857

/-! ## A057857.P17127377265839424517

`A002110(n)-A057858(n)`
-/

namespace A057857.P17127377265839424517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A057858 n

end

end A057857.P17127377265839424517

namespace A057857

/-- `A002110(n)-A057858(n)` -/
def P17127377265839424517.Spec : Prop :=
  ∀ n, P17127377265839424517.a n = A057857 n

theorem P17127377265839424517.correct : P17127377265839424517.Spec := by
  intro n
  simp only [A057857, Nat.add_sub_cancel, A057857.P17127377265839424517.a, A057857.P7925582756686219733.a, A002110, A002110.P13704446489392701398.a, A005867, A005867.P647413364839099534.a, A057858, A057858.P5036399590073208024.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057857

/-! ## A057857.P3249151346274658434

`n+A005867(n)`
-/

namespace A057857.P3249151346274658434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A005867 n

end

end A057857.P3249151346274658434

namespace A057857

/-- `n+A005867(n)` -/
def P3249151346274658434.Spec : Prop :=
  ∀ n, P3249151346274658434.a n = A057857 n

theorem P3249151346274658434.correct : P3249151346274658434.Spec := by
  intro n
  simp only [A057857, Nat.add_sub_cancel, A057857.P3249151346274658434.a, A057857.P7925582756686219733.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057857

/-! ## A057857.P16948056615848104139

`∏[A162753(2*n+1)-1]+n`
-/

namespace A057857.P16948056615848104139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057857.P16948056615848104139

namespace A057857

/-- `∏[A162753(2*n+1)-1]+n` -/
def P16948056615848104139.Spec : Prop :=
  ∀ n, P16948056615848104139.a n = A057857 n

end A057857

/-! ## A057857.P15077260550783057841

`∏[abs(1-comp[A018252(n+1)])]+n`
-/

namespace A057857.P15077260550783057841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057857.P15077260550783057841

namespace A057857

/-- `∏[abs(1-comp[A018252(n+1)])]+n` -/
def P15077260550783057841.Spec : Prop :=
  ∀ n, P15077260550783057841.a n = A057857 n

end A057857

/-! ## A057857.P16421738715958647648

`∏[A000040(round(sqrt(n²+1)))-1]+n`
-/

namespace A057857.P16421738715958647648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057857.P16421738715958647648

namespace A057857

/-- `∏[A000040(round(sqrt(n²+1)))-1]+n` -/
def P16421738715958647648.Spec : Prop :=
  ∀ n, P16421738715958647648.a n = A057857 n

end A057857

/-! ## A057857.P1681723372509214455

`∏[A000010(A008578(n+1))]+n`
-/

namespace A057857.P1681723372509214455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057857.P1681723372509214455

namespace A057857

/-- `∏[A000010(A008578(n+1))]+n` -/
def P1681723372509214455.Spec : Prop :=
  ∀ n, P1681723372509214455.a n = A057857 n

end A057857

/-! ## A057857.P10886508978367555238

`∏[A000010(A015919(n+1))]+n`
-/

namespace A057857.P10886508978367555238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A015919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057857.P10886508978367555238

namespace A057857

/-- `∏[A000010(A015919(n+1))]+n` -/
def P10886508978367555238.Spec : Prop :=
  ∀ n, P10886508978367555238.a n = A057857 n

end A057857

/-! ## A057857.P15292089081173814374

`∏[A000010(A064555(n+1))]+n`
-/

namespace A057857.P15292089081173814374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A064555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057857.P15292089081173814374

namespace A057857

/-- `∏[A000010(A064555(n+1))]+n` -/
def P15292089081173814374.Spec : Prop :=
  ∀ n, P15292089081173814374.a n = A057857 n

end A057857

/-! ## A057857.P3115200650167070639

`∏[A000010(A075643(n+1))]+n`
-/

namespace A057857.P3115200650167070639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A075643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A057857.P3115200650167070639

namespace A057857

/-- `∏[A000010(A075643(n+1))]+n` -/
def P3115200650167070639.Spec : Prop :=
  ∀ n, P3115200650167070639.a n = A057857 n

end A057857

/-!
# A057858: Number of residue classes modulo n-th primorial number which contain only composite numbers.

The programs for A057858, the canonical program `A057858.P5036399590073208024` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057858 has offset 0).

The definition of A057858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057858.P5036399590073208024

`A002110(n)-A057857(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057858

/-- `A002110(n)-A057857(n)` -/
def P5036399590073208024.Spec : Prop :=
  ∀ n, P5036399590073208024.a n = A057858 n

theorem P5036399590073208024.correct : P5036399590073208024.Spec := by
  intro n
  simp only [A057858]

end A057858

/-! ## A057858.P9419887803599772855

`∏[eq[n, ∏{d}[n, #]]]-A057857(n)`
-/

namespace A057858.P9419887803599772855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057857 n

end

end A057858.P9419887803599772855

namespace A057858

/-- `∏[eq[n, ∏{d}[n, #]]]-A057857(n)` -/
def P9419887803599772855.Spec : Prop :=
  ∀ n, P9419887803599772855.a n = A057858 n

end A057858

/-! ## A057858.P11015436158090209304

`A096334(∑[n])-A057857(n)`
-/

namespace A057858.P11015436158090209304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f1 j) - A057857 n

end

end A057858.P11015436158090209304

namespace A057858

/-- `A096334(∑[n])-A057857(n)` -/
def P11015436158090209304.Spec : Prop :=
  ∀ n, P11015436158090209304.a n = A057858 n

end A057858

/-! ## A057858.P5322798860601599863

`A121281(∑[n])-A057857(n)`
-/

namespace A057858.P5322798860601599863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) - A057857 n

end

end A057858.P5322798860601599863

namespace A057858

/-- `A121281(∑[n])-A057857(n)` -/
def P5322798860601599863.Spec : Prop :=
  ∀ n, P5322798860601599863.a n = A057858 n

end A057858

/-! ## A057858.P8776444031524409820

`A246868(∑[n])-A057857(n)`
-/

namespace A057858.P8776444031524409820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (∑ j ∈ Finset.range (n + 1), f1 j) - A057857 n

end

end A057858.P8776444031524409820

namespace A057858

/-- `A246868(∑[n])-A057857(n)` -/
def P8776444031524409820.Spec : Prop :=
  ∀ n, P8776444031524409820.a n = A057858 n

end A057858

/-! ## A057858.P15376248532195544041

`record[A096334(n)]-A057857(n)`
-/

namespace A057858.P15376248532195544041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A057857 n

end

end A057858.P15376248532195544041

namespace A057858

/-- `record[A096334(n)]-A057857(n)` -/
def P15376248532195544041.Spec : Prop :=
  ∀ n, P15376248532195544041.a n = A057858 n

end A057858

/-! ## A057858.P11889245872393084745

`A002110(n)-(A005867(n)+n)`
-/

namespace A057858.P11889245872393084745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - (A005867 n + (n : ℤ))

end

end A057858.P11889245872393084745

namespace A057858

/-- `A002110(n)-(A005867(n)+n)` -/
def P11889245872393084745.Spec : Prop :=
  ∀ n, P11889245872393084745.a n = A057858 n

end A057858

/-! ## A057858.P4916250480695902331

`∏[A008578(n+1)]-A057857(n)`
-/

namespace A057858.P4916250480695902331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A057857 n

end

end A057858.P4916250480695902331

namespace A057858

/-- `∏[A008578(n+1)]-A057857(n)` -/
def P4916250480695902331.Spec : Prop :=
  ∀ n, P4916250480695902331.a n = A057858 n

end A057858

/-! ## A057858.P4963675171539783201

`∏[A015919(n+1)]-A057857(n)`
-/

namespace A057858.P4963675171539783201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A057857 n

end

end A057858.P4963675171539783201

namespace A057858

/-- `∏[A015919(n+1)]-A057857(n)` -/
def P4963675171539783201.Spec : Prop :=
  ∀ n, P4963675171539783201.a n = A057858 n

end A057858

/-! ## A057858.P17480442656991104515

`∏[A008578(n+1)]-(A005867(n)+n)`
-/

namespace A057858.P17480442656991104515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A005867 n + (n : ℤ))

end

end A057858.P17480442656991104515

namespace A057858

/-- `∏[A008578(n+1)]-(A005867(n)+n)` -/
def P17480442656991104515.Spec : Prop :=
  ∀ n, P17480442656991104515.a n = A057858 n

end A057858

/-!
# A057859: Number of residue classes modulo n which contain a prime.

The programs for A057859, the canonical program `A057859.P5441024818850006693` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057859 has offset 1).

The definition of A057859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057859.P9406913299077086113

`n+1-A057860(n+1)`
-/

namespace A057859.P9406913299077086113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057860 (n + 1)

end

end A057859.P9406913299077086113

namespace A057859

/-- `n+1-A057860(n+1)` -/
def P9406913299077086113.Spec : Prop :=
  ∀ n, P9406913299077086113.a n = A057859 (n + 1)

theorem P9406913299077086113.correct : P9406913299077086113.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P9406913299077086113.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A057860, A057860.P15781516878484293447.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P5441024818850006693

`A000010(n+1)+A001221(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057859

/-- `A000010(n+1)+A001221(n+1)` -/
def P5441024818850006693.Spec : Prop :=
  ∀ n, P5441024818850006693.a n = A057859 (n + 1)

theorem P5441024818850006693.correct : P5441024818850006693.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel]

end A057859

/-! ## A057859.P10001459844020704861

`∑{e}[n+1, ceil(1/#)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A057859.P10001459844020704861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A057859.P10001459844020704861

namespace A057859

/-- `∑{e}[n+1, ceil(1/#)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P10001459844020704861.Spec : Prop :=
  ∀ n, P10001459844020704861.a n = (A057859 (n + 1) : ℚ)

end A057859

/-! ## A057859.P9412905093127375207

`∑{p}[n+1, gcd(n, #)]+Δ[A002088(n)]`
-/

namespace A057859.P9412905093127375207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A057859.P9412905093127375207

namespace A057859

/-- `∑{p}[n+1, gcd(n, #)]+Δ[A002088(n)]` -/
def P9412905093127375207.Spec : Prop :=
  ∀ n, P9412905093127375207.a n = A057859 (n + 1)

end A057859

/-! ## A057859.P2005485406829179448

`A000010(n+1)+∑{e}[∏{p}[n+1, #], #]`
-/

namespace A057859.P2005485406829179448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A057859.P2005485406829179448

namespace A057859

/-- `A000010(n+1)+∑{e}[∏{p}[n+1, #], #]` -/
def P2005485406829179448.Spec : Prop :=
  ∀ n, P2005485406829179448.a n = A057859 (n + 1)

end A057859

/-! ## A057859.P10333011898618996031

`A349137(Δ[n²])+∑{e}[∏{p}[n+1, #], #]`
-/

namespace A057859.P10333011898618996031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A057859.P10333011898618996031

namespace A057859

/-- `A349137(Δ[n²])+∑{e}[∏{p}[n+1, #], #]` -/
def P10333011898618996031.Spec : Prop :=
  ∀ n, P10333011898618996031.a n = A057859 (n + 1)

end A057859

/-! ## A057859.P14442952065251758061

`∑{d}[n+1, A007431(#)]+dr(∑{e}[n+1, 10^#])`
-/

namespace A057859.P14442952065251758061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d + (SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f2 n), 10 ^ Nat.factorization (f2 n) p : ℕ) : ℤ) : ℤ)

end

end A057859.P14442952065251758061

namespace A057859

/-- `∑{d}[n+1, A007431(#)]+dr(∑{e}[n+1, 10^#])` -/
def P14442952065251758061.Spec : Prop :=
  ∀ n, P14442952065251758061.a n = A057859 (n + 1)

end A057859

/-! ## A057859.P5282099986003233303

`∑{e}[∏{p}[n+1, #], #]+A121048(n+1)-(n+1)`
-/

namespace A057859.P5282099986003233303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (A121048 (n + 1) - (n + 1 : ℤ))

end

end A057859.P5282099986003233303

namespace A057859

/-- `∑{e}[∏{p}[n+1, #], #]+A121048(n+1)-(n+1)` -/
def P5282099986003233303.Spec : Prop :=
  ∀ n, P5282099986003233303.a n = A057859 (n + 1)

end A057859

/-! ## A057859.P13893994768271169199

`floor(∑{p}[n+1, root(2, #)])+A319998(2*(n+1))/2`
-/

namespace A057859.P13893994768271169199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊∑ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ (1 / (p : ℝ))⌋ : ℚ) + (A319998 (2 * (n + 1)) : ℚ) / 2

end

end A057859.P13893994768271169199

namespace A057859

/-- `floor(∑{p}[n+1, root(2, #)])+A319998(2*(n+1))/2` -/
def P13893994768271169199.Spec : Prop :=
  ∀ n, P13893994768271169199.a n = (A057859 (n + 1) : ℚ)

end A057859

/-! ## A057859.P16211608212391649073

`A001221(n+1)+Δ[A002088(n)]`
-/

namespace A057859.P16211608212391649073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A057859.P16211608212391649073

namespace A057859

/-- `A001221(n+1)+Δ[A002088(n)]` -/
def P16211608212391649073.Spec : Prop :=
  ∀ n, P16211608212391649073.a n = A057859 (n + 1)

end A057859

/-! ## A057859.P2680715045011326714

`A001221(n+1)+Δ[A005728(n)]`
-/

namespace A057859.P2680715045011326714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A057859.P2680715045011326714

namespace A057859

/-- `A001221(n+1)+Δ[A005728(n)]` -/
def P2680715045011326714.Spec : Prop :=
  ∀ n, P2680715045011326714.a n = A057859 (n + 1)

end A057859

/-! ## A057859.P2557068461388060689

`A048864(n+1)+A000720(n+1)`
-/

namespace A057859.P2557068461388060689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + A000720 (n + 1)

end

end A057859.P2557068461388060689

namespace A057859

/-- `A048864(n+1)+A000720(n+1)` -/
def P2557068461388060689.Spec : Prop :=
  ∀ n, P2557068461388060689.a n = A057859 (n + 1)

theorem P2557068461388060689.correct : P2557068461388060689.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P2557068461388060689.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A003557, A003557.P6364735403900941810.a, A036997, A036997.P9898190539809888575.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A037228, A037228.P4220557198165153324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P16655494710134773948

`A036997(n+1)+A036234(n+1)`
-/

namespace A057859.P16655494710134773948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1) + A036234 (n + 1)

end

end A057859.P16655494710134773948

namespace A057859

/-- `A036997(n+1)+A036234(n+1)` -/
def P16655494710134773948.Spec : Prop :=
  ∀ n, P16655494710134773948.a n = A057859 (n + 1)

theorem P16655494710134773948.correct : P16655494710134773948.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P16655494710134773948.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036234, A036234.P2906282677021386800.a, A036997, A036997.P9898190539809888575.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P8713098036061816087

`A109606(n+1)+A083399(n+1)`
-/

namespace A057859.P8713098036061816087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A083399 (n + 1)

end

end A057859.P8713098036061816087

namespace A057859

/-- `A109606(n+1)+A083399(n+1)` -/
def P8713098036061816087.Spec : Prop :=
  ∀ n, P8713098036061816087.a n = A057859 (n + 1)

theorem P8713098036061816087.correct : P8713098036061816087.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P8713098036061816087.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A083399, A083399.P16148020281325742632.a, A109606, A109606.P2415810041766612210.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A055212, A055212.P14412881054625885538.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A033273, A033273.P18420659424697249895.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P1798231815936545150

`A163523(n+1)+A063070(n+1)`
-/

namespace A057859.P1798231815936545150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) + A063070 (n + 1)

end

end A057859.P1798231815936545150

namespace A057859

/-- `A163523(n+1)+A063070(n+1)` -/
def P1798231815936545150.Spec : Prop :=
  ∀ n, P1798231815936545150.a n = A057859 (n + 1)

theorem P1798231815936545150.correct : P1798231815936545150.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P1798231815936545150.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A063070, A063070.P5416196495209204381.a, A163523, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P4112250441800523754

`A249767(n+1)+A053139(n+1)`
-/

namespace A057859.P4112250441800523754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249767 (n + 1) + A053139 (n + 1)

end

end A057859.P4112250441800523754

namespace A057859

/-- `A249767(n+1)+A053139(n+1)` -/
def P4112250441800523754.Spec : Prop :=
  ∀ n, P4112250441800523754.a n = A057859 (n + 1)

theorem P4112250441800523754.correct : P4112250441800523754.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P4112250441800523754.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A053139, A053139.P14434493847918876096.a, A249767, A249767.P12062249745912461612.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P157624441100542221

`A364933(n+1)+A074372(n+1)`
-/

namespace A057859.P157624441100542221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364933 (n + 1) + A074372 (n + 1)

end

end A057859.P157624441100542221

namespace A057859

/-- `A364933(n+1)+A074372(n+1)` -/
def P157624441100542221.Spec : Prop :=
  ∀ n, P157624441100542221.a n = A057859 (n + 1)

theorem P157624441100542221.correct : P157624441100542221.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P157624441100542221.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A074372, A074372.P4137528993984796168.a, A364933, A364933.P7847543960833524069.a, A003557, A003557.P6364735403900941810.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055631, A055631.P8885936990558110793.a, A109606, A109606.P2415810041766612210.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P15984274046743904417

`A061468(n+1)-A033273(n+1)`
-/

namespace A057859.P15984274046743904417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A033273 (n + 1)

end

end A057859.P15984274046743904417

namespace A057859

/-- `A061468(n+1)-A033273(n+1)` -/
def P15984274046743904417.Spec : Prop :=
  ∀ n, P15984274046743904417.a n = A057859 (n + 1)

theorem P15984274046743904417.correct : P15984274046743904417.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P15984274046743904417.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033273, A033273.P18420659424697249895.a, A061468, A061468.P5735709615131522244.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P10709505784345526828

`A073757(n+1)-A055212(n+1)`
-/

namespace A057859.P10709505784345526828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A055212 (n + 1)

end

end A057859.P10709505784345526828

namespace A057859

/-- `A073757(n+1)-A055212(n+1)` -/
def P10709505784345526828.Spec : Prop :=
  ∀ n, P10709505784345526828.a n = A057859 (n + 1)

theorem P10709505784345526828.correct : P10709505784345526828.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P10709505784345526828.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A055212, A055212.P14412881054625885538.a, A073757, A073757.P6861480467973211752.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A033273, A033273.P18420659424697249895.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057859

/-! ## A057859.P13321443720181681939

`A082515(n+1)-A048865(n+1)`
-/

namespace A057859.P13321443720181681939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1) - A048865 (n + 1)

end

end A057859.P13321443720181681939

namespace A057859

/-- `A082515(n+1)-A048865(n+1)` -/
def P13321443720181681939.Spec : Prop :=
  ∀ n, P13321443720181681939.a n = A057859 (n + 1)

theorem P13321443720181681939.correct : P13321443720181681939.Spec := by
  intro n
  simp only [A057859, Nat.add_sub_cancel, A057859.P13321443720181681939.a, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048865, A048865.P11145010694177444749.a, A082515, A082515.P15614925756413171437.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057859

/-!
# A057860: Number of residue classes modulo n which contain only composite numbers.

The programs for A057860, the canonical program `A057860.P15781516878484293447` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057860 has offset 1).

The definition of A057860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057860.P2491106154237076663

`n+1-A057859(n+1)`
-/

namespace A057860.P2491106154237076663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057859 (n + 1)

end

end A057860.P2491106154237076663

namespace A057860

/-- `n+1-A057859(n+1)` -/
def P2491106154237076663.Spec : Prop :=
  ∀ n, P2491106154237076663.a n = A057860 (n + 1)

theorem P2491106154237076663.correct : P2491106154237076663.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P2491106154237076663.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A057859, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P15781516878484293447

`A051953(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057860

/-- `A051953(n+1)-A001221(n+1)` -/
def P15781516878484293447.Spec : Prop :=
  ∀ n, P15781516878484293447.a n = A057860 (n + 1)

theorem P15781516878484293447.correct : P15781516878484293447.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel]

end A057860

/-! ## A057860.P3719480116238479219

`n+1-A000010(n+1)-A001221(n+1)`
-/

namespace A057860.P3719480116238479219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) - A001221 (n + 1)

end

end A057860.P3719480116238479219

namespace A057860

/-- `n+1-A000010(n+1)-A001221(n+1)` -/
def P3719480116238479219.Spec : Prop :=
  ∀ n, P3719480116238479219.a n = A057860 (n + 1)

end A057860

/-! ## A057860.P3626600566947298968

`1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A057860.P3626600566947298968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ) - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℚ)

end

end A057860.P3626600566947298968

namespace A057860

/-- `1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-∑{e}[∏{p}[n+1, #], #]` -/
def P3626600566947298968.Spec : Prop :=
  ∀ n, P3626600566947298968.a n = (A057860 (n + 1) : ℚ)

end A057860

/-! ## A057860.P17477227291556557587

`1-A057859(n+1)+n`
-/

namespace A057860.P17477227291556557587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057859 (n + 1) + (n : ℤ)

end

end A057860.P17477227291556557587

namespace A057860

/-- `1-A057859(n+1)+n` -/
def P17477227291556557587.Spec : Prop :=
  ∀ n, P17477227291556557587.a n = A057860 (n + 1)

theorem P17477227291556557587.correct : P17477227291556557587.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P17477227291556557587.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A057859, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P9173087911739268085

`1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-log2(A034444(n+1))`
-/

namespace A057860.P9173087911739268085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ) : ℝ) - Real.logb 2 (A034444 (n + 1) : ℝ)

end

end A057860.P9173087911739268085

namespace A057860

/-- `1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-log2(A034444(n+1))` -/
def P9173087911739268085.Spec : Prop :=
  ∀ n, P9173087911739268085.a n = (A057860 (n + 1) : ℝ)

end A057860

/-! ## A057860.P7672687716673968912

`A055212(n+1)+A045763(n+1)`
-/

namespace A057860.P7672687716673968912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + A045763 (n + 1)

end

end A057860.P7672687716673968912

namespace A057860

/-- `A055212(n+1)+A045763(n+1)` -/
def P7672687716673968912.Spec : Prop :=
  ∀ n, P7672687716673968912.a n = A057860 (n + 1)

theorem P7672687716673968912.correct : P7672687716673968912.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P7672687716673968912.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A045763, A045763.P9156243808986750239.a, A051953, A051953.P11179276897610979764.a, A055212, A055212.P14412881054625885538.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A033273, A033273.P18420659424697249895.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P16869610290100385703

`A065855(n+1)-A036997(n+1)`
-/

namespace A057860.P16869610290100385703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A036997 (n + 1)

end

end A057860.P16869610290100385703

namespace A057860

/-- `A065855(n+1)-A036997(n+1)` -/
def P16869610290100385703.Spec : Prop :=
  ∀ n, P16869610290100385703.a n = A057860 (n + 1)

theorem P16869610290100385703.correct : P16869610290100385703.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P16869610290100385703.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036997, A036997.P9898190539809888575.a, A051953, A051953.P11179276897610979764.a, A065855, A065855.P16805213270251966039.a, A000010, A000010.P4673923239450215316.a, A037228, A037228.P4220557198165153324.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P9958671637981282057

`A062298(n+1)-A048864(n+1)`
-/

namespace A057860.P9958671637981282057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A048864 (n + 1)

end

end A057860.P9958671637981282057

namespace A057860

/-- `A062298(n+1)-A048864(n+1)` -/
def P9958671637981282057.Spec : Prop :=
  ∀ n, P9958671637981282057.a n = A057860 (n + 1)

theorem P9958671637981282057.correct : P9958671637981282057.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P9958671637981282057.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A051953, A051953.P11179276897610979764.a, A062298, A062298.P8226643735375377344.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036997, A036997.P9898190539809888575.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P14940808303941259422

`A179179(n+1)-A083254(n+1)`
-/

namespace A057860.P14940808303941259422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) - A083254 (n + 1)

end

end A057860.P14940808303941259422

namespace A057860

/-- `A179179(n+1)-A083254(n+1)` -/
def P14940808303941259422.Spec : Prop :=
  ∀ n, P14940808303941259422.a n = A057860 (n + 1)

theorem P14940808303941259422.correct : P14940808303941259422.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P14940808303941259422.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A179179, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P15134164783069694237

`A053158(n+1)-A229109(n+1)`
-/

namespace A057860.P15134164783069694237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A229109 (n + 1)

end

end A057860.P15134164783069694237

namespace A057860

/-- `A053158(n+1)-A229109(n+1)` -/
def P15134164783069694237.Spec : Prop :=
  ∀ n, P15134164783069694237.a n = A057860 (n + 1)

theorem P15134164783069694237.correct : P15134164783069694237.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P15134164783069694237.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A053158, A053158.P11533641159092355549.a, A229109, A229109.P7396241872602068631.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P3599057978113817088

`A016035(n+1)-A297155(n+1)`
-/

namespace A057860.P3599057978113817088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) - A297155 (n + 1)

end

end A057860.P3599057978113817088

namespace A057860

/-- `A016035(n+1)-A297155(n+1)` -/
def P3599057978113817088.Spec : Prop :=
  ∀ n, P3599057978113817088.a n = A057860 (n + 1)

end A057860

/-! ## A057860.P3475696739100792241

`A348203(n+1)-A306369(n+1)`
-/

namespace A057860.P3475696739100792241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348203 (n + 1) - A306369 (n + 1)

end

end A057860.P3475696739100792241

namespace A057860

/-- `A348203(n+1)-A306369(n+1)` -/
def P3475696739100792241.Spec : Prop :=
  ∀ n, P3475696739100792241.a n = A057860 (n + 1)

theorem P3475696739100792241.correct : P3475696739100792241.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P3475696739100792241.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A306369, A306369.P8843425213670804087.a, A348203, A348203.P13239406140819049741.a, A000010, A000010.P4673923239450215316.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P859476094952589489

`n-(A109606(n+1)+A001221(n+1))`
-/

namespace A057860.P859476094952589489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A109606 (n + 1) + A001221 (n + 1))

end

end A057860.P859476094952589489

namespace A057860

/-- `n-(A109606(n+1)+A001221(n+1))` -/
def P859476094952589489.Spec : Prop :=
  ∀ n, P859476094952589489.a n = A057860 (n + 1)

theorem P859476094952589489.correct : P859476094952589489.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P859476094952589489.a, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P3785642511360150292

`A051953(n+1)-A001222(∏{p}[n+1, #])`
-/

namespace A057860.P3785642511360150292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A057860.P3785642511360150292

namespace A057860

/-- `A051953(n+1)-A001222(∏{p}[n+1, #])` -/
def P3785642511360150292.Spec : Prop :=
  ∀ n, P3785642511360150292.a n = A057860 (n + 1)

end A057860

/-! ## A057860.P6381541763927062529

`∑[1-A010051(n+1)]-A048864(n+1)`
-/

namespace A057860.P6381541763927062529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048864 (n + 1)

end

end A057860.P6381541763927062529

namespace A057860

/-- `∑[1-A010051(n+1)]-A048864(n+1)` -/
def P6381541763927062529.Spec : Prop :=
  ∀ n, P6381541763927062529.a n = A057860 (n + 1)

end A057860

/-! ## A057860.P6817101530997775081

`n+1-(A048864(n+1)+A000720(n+1))`
-/

namespace A057860.P6817101530997775081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A048864 (n + 1) + A000720 (n + 1))

end

end A057860.P6817101530997775081

namespace A057860

/-- `n+1-(A048864(n+1)+A000720(n+1))` -/
def P6817101530997775081.Spec : Prop :=
  ∀ n, P6817101530997775081.a n = A057860 (n + 1)

theorem P6817101530997775081.correct : P6817101530997775081.Spec := by
  intro n
  simp only [A057860, Nat.add_sub_cancel, A057860.P6817101530997775081.a, A057860.P15781516878484293447.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A036997, A036997.P9898190539809888575.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057860

/-! ## A057860.P11594544985596491774

`n+1-A001222(∏{p}[n+1, #])-A000010(n+1)`
-/

namespace A057860.P11594544985596491774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A000010 (n + 1)

end

end A057860.P11594544985596491774

namespace A057860

/-- `n+1-A001222(∏{p}[n+1, #])-A000010(n+1)` -/
def P11594544985596491774.Spec : Prop :=
  ∀ n, P11594544985596491774.a n = A057860 (n + 1)

end A057860

/-! ## A057860.P14084684805331659163

`n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A001222(A181819(n+1))`
-/

namespace A057860.P14084684805331659163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A001222 (A181819 (n + 1)).toNat : ℚ)

end

end A057860.P14084684805331659163

namespace A057860

/-- `n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A001222(A181819(n+1))` -/
def P14084684805331659163.Spec : Prop :=
  ∀ n, P14084684805331659163.a n = (A057860 (n + 1) : ℚ)

end A057860

/-! ## A057860.P11545923879016583225

`A051953(n+1)-A001222(A007947(n+1))`
-/

namespace A057860.P11545923879016583225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A001222 (A007947 (n + 1)).toNat

end

end A057860.P11545923879016583225

namespace A057860

/-- `A051953(n+1)-A001222(A007947(n+1))` -/
def P11545923879016583225.Spec : Prop :=
  ∀ n, P11545923879016583225.a n = A057860 (n + 1)

end A057860

/-!
# A057861: floor[2^n/Fibonacci(n)].

The programs for A057861, the canonical program `A057861.P10512255895866748937` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057861 has offset 1).

The definition of A057861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)/A000045(n+1))` (program `A057861.P10512255895866748937`, by `A057861.P10512255895866748937.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057861.P10512255895866748937

`floor(2^(n+1)/A000045(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057861

/-- `floor(2^(n+1)/A000045(n+1))` -/
def P10512255895866748937.Spec : Prop :=
  ∀ n, P10512255895866748937.a n = A057861 (n + 1)

theorem P10512255895866748937.correct : P10512255895866748937.Spec := by
  intro n
  simp only [A057861, Nat.add_sub_cancel]

end A057861

/-! ## A057861.P1502683985443710094

`(A000079(n+1)-A057862(n+1))/A000045(n+1)`
-/

namespace A057861.P1502683985443710094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A057862 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A057861.P1502683985443710094

namespace A057861

/-- `(A000079(n+1)-A057862(n+1))/A000045(n+1)` -/
def P1502683985443710094.Spec : Prop :=
  ∀ n, P1502683985443710094.a n = (A057861 (n + 1) : ℚ)

end A057861

/-! ## A057861.P865201320953803533

`floor(2^n/Δ[∑[A000045(n)]/2])`
-/

namespace A057861.P865201320953803533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / (f1 (n + 1) - f1 n)⌋

end

end A057861.P865201320953803533

namespace A057861

/-- `floor(2^n/Δ[∑[A000045(n)]/2])` -/
def P865201320953803533.Spec : Prop :=
  ∀ n, P865201320953803533.a n = A057861 (n + 1)

end A057861

/-! ## A057861.P12114340964722300858

`floor(2^(n+1)/∑[A212804(n)])`
-/

namespace A057861.P12114340964722300858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A057861.P12114340964722300858

namespace A057861

/-- `floor(2^(n+1)/∑[A212804(n)])` -/
def P12114340964722300858.Spec : Prop :=
  ∀ n, P12114340964722300858.a n = A057861 (n + 1)

end A057861

/-! ## A057861.P5150067037123967534

`floor(2^(n+1)/A079977(2*n))`
-/

namespace A057861.P5150067037123967534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / (A079977 (2 * n) : ℚ)⌋

end

end A057861.P5150067037123967534

namespace A057861

/-- `floor(2^(n+1)/A079977(2*n))` -/
def P5150067037123967534.Spec : Prop :=
  ∀ n, P5150067037123967534.a n = A057861 (n + 1)

end A057861

/-! ## A057861.P5866036469940448964

`floor(A011782(n+2)/A103609(2*(n+1)))`
-/

namespace A057861.P5866036469940448964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011782 (n + 2) : ℚ) / (A103609 (2 * (n + 1)) : ℚ)⌋

end

end A057861.P5866036469940448964

namespace A057861

/-- `floor(A011782(n+2)/A103609(2*(n+1)))` -/
def P5866036469940448964.Spec : Prop :=
  ∀ n, P5866036469940448964.a n = A057861 (n + 1)

end A057861

/-! ## A057861.P15420970998949252030

`floor(2^(n+1)/A058071(∑[n]))`
-/

namespace A057861.P15420970998949252030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / (A058071 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A057861.P15420970998949252030

namespace A057861

/-- `floor(2^(n+1)/A058071(∑[n]))` -/
def P15420970998949252030.Spec : Prop :=
  ∀ n, P15420970998949252030.a n = A057861 (n + 1)

end A057861

/-!
# A057862: a(n) = 2^n mod Fibonacci(n).

The programs for A057862, the canonical program `A057862.P11332314005707958811` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057862 has offset 1).

The definition of A057862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1))%A000045(n+1)` (program `A057862.P11332314005707958811`, by `A057862.P11332314005707958811.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057862.P11332314005707958811

`(2^(n+1))%A000045(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057862

/-- `(2^(n+1))%A000045(n+1)` -/
def P11332314005707958811.Spec : Prop :=
  ∀ n, P11332314005707958811.a n = A057862 (n + 1)

theorem P11332314005707958811.correct : P11332314005707958811.Spec := by
  intro n
  simp only [A057862, Nat.add_sub_cancel]

end A057862

/-! ## A057862.P100314445211783313

`A000079(n+1)-A057861(n+1)*A000045(n+1)`
-/

namespace A057862.P100314445211783313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A057861 (n + 1) * A000045 (n + 1)

end

end A057862.P100314445211783313

namespace A057862

/-- `A000079(n+1)-A057861(n+1)*A000045(n+1)` -/
def P100314445211783313.Spec : Prop :=
  ∀ n, P100314445211783313.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P28209353736874265

`A198633(n)%-A000045(n+1)`
-/

namespace A057862.P28209353736874265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198633 n) (-A000045 (n + 1))

end

end A057862.P28209353736874265

namespace A057862

/-- `A198633(n)%-A000045(n+1)` -/
def P28209353736874265.Spec : Prop :=
  ∀ n, P28209353736874265.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P15511720218487956122

`A000079(n+1)%Δ[A119282(n)]`
-/

namespace A057862.P15511720218487956122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (f1 (n + 1) - f1 n)

end

end A057862.P15511720218487956122

namespace A057862

/-- `A000079(n+1)%Δ[A119282(n)]` -/
def P15511720218487956122.Spec : Prop :=
  ∀ n, P15511720218487956122.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P12124459131331256692

`record[A135530(n)]%A212804(n+2)`
-/

namespace A057862.P12124459131331256692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A212804 (n + 2))

end

end A057862.P12124459131331256692

namespace A057862

/-- `record[A135530(n)]%A212804(n+2)` -/
def P12124459131331256692.Spec : Prop :=
  ∀ n, P12124459131331256692.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P16176047449737993744

`(2*A000079(n))%A212804(n+2)`
-/

namespace A057862.P16176047449737993744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000079 n) (A212804 (n + 2))

end

end A057862.P16176047449737993744

namespace A057862

/-- `(2*A000079(n))%A212804(n+2)` -/
def P16176047449737993744.Spec : Prop :=
  ∀ n, P16176047449737993744.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P5461366245669490843

`A186949(n+1)%Δ[A000045(n+2)]`
-/

namespace A057862.P5461366245669490843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 (n + 1)) (f1 (n + 1) - f1 n)

end

end A057862.P5461366245669490843

namespace A057862

/-- `A186949(n+1)%Δ[A000045(n+2)]` -/
def P5461366245669490843.Spec : Prop :=
  ∀ n, P5461366245669490843.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P4098363411046630102

`A011782(n+2)%Δ[A000045(n+2)]`
-/

namespace A057862.P4098363411046630102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 2)) (f1 (n + 1) - f1 n)

end

end A057862.P4098363411046630102

namespace A057862

/-- `A011782(n+2)%Δ[A000045(n+2)]` -/
def P4098363411046630102.Spec : Prop :=
  ∀ n, P4098363411046630102.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P2388420388861203279

`A151821(n+1)%∑[A000045(abs(1-n))]`
-/

namespace A057862.P2388420388861203279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151821 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057862.P2388420388861203279

namespace A057862

/-- `A151821(n+1)%∑[A000045(abs(1-n))]` -/
def P2388420388861203279.Spec : Prop :=
  ∀ n, P2388420388861203279.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P8846702728410632618

`A135530(A004277(n))%A212804(n+2)`
-/

namespace A057862.P8846702728410632618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135530 (A004277 n).toNat) (A212804 (n + 2))

end

end A057862.P8846702728410632618

namespace A057862

/-- `A135530(A004277(n))%A212804(n+2)` -/
def P8846702728410632618.Spec : Prop :=
  ∀ n, P8846702728410632618.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P8251060352852106422

`A000079(n+1)-A000045(n+1)*A057861(n+1)`
-/

namespace A057862.P8251060352852106422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000045 (n + 1) * A057861 (n + 1)

end

end A057862.P8251060352852106422

namespace A057862

/-- `A000079(n+1)-A000045(n+1)*A057861(n+1)` -/
def P8251060352852106422.Spec : Prop :=
  ∀ n, P8251060352852106422.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P1701930219768903225

`Δ[A126646(n)]%Δ[A000045(n+2)]`
-/

namespace A057862.P1701930219768903225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A057862.P1701930219768903225

namespace A057862

/-- `Δ[A126646(n)]%Δ[A000045(n+2)]` -/
def P1701930219768903225.Spec : Prop :=
  ∀ n, P1701930219768903225.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P9796392235968484981

`A131577(n+2)%A037027(A000217(n))`
-/

namespace A057862.P9796392235968484981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (n + 2)) (A037027 (A000217 n).toNat)

end

end A057862.P9796392235968484981

namespace A057862

/-- `A131577(n+2)%A037027(A000217(n))` -/
def P9796392235968484981.Spec : Prop :=
  ∀ n, P9796392235968484981.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P9563064880613130537

`record[A060548(n+1)]%A036355(∑[n])`
-/

namespace A057862.P9563064880613130537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A036355 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A057862.P9563064880613130537

namespace A057862

/-- `record[A060548(n+1)]%A036355(∑[n])` -/
def P9563064880613130537.Spec : Prop :=
  ∀ n, P9563064880613130537.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P11654881275831958176

`A060548(6*(n+1))%A036355(∑[n])`
-/

namespace A057862.P11654881275831958176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060548 (6 * (n + 1))) (A036355 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A057862.P11654881275831958176

namespace A057862

/-- `A060548(6*(n+1))%A036355(∑[n])` -/
def P11654881275831958176.Spec : Prop :=
  ∀ n, P11654881275831958176.a n = A057862 (n + 1)

end A057862

/-! ## A057862.P4076994942915605956

`A101508(C(n+2, 2))%(A081659(n)-n)`
-/

namespace A057862.P4076994942915605956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101508 (Nat.choose (n + 2) 2)) (A081659 n - (n : ℤ))

end

end A057862.P4076994942915605956

namespace A057862

/-- `A101508(C(n+2, 2))%(A081659(n)-n)` -/
def P4076994942915605956.Spec : Prop :=
  ∀ n, P4076994942915605956.a n = A057862 (n + 1)

end A057862

/-!
# A057863: a(n) = Product_{k=1..n} (2k-1)!!.

The programs for A057863, there is no canonical definition to state claims against.
-/

/-! ## A057863.P11827055326989291227

`1/2^(n*(n-1)/2)*A086205(n)`
-/

namespace A057863.P11827055326989291227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (2 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) * (A086205 n : ℝ)

end

end A057863.P11827055326989291227

/-! ## A057863.P3661723130699382839

`∏[∏[runs[ceil(sqrt(n))]]]`
-/

namespace A057863.P3661723130699382839
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057863.P3661723130699382839

/-! ## A057863.P7901672654224157745

`∏[∏[abs(1-2*n)]]`
-/

namespace A057863.P7901672654224157745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057863.P7901672654224157745

/-! ## A057863.P4155689169510050266

`or(1, ∏[-∏[2*n-1]])`
-/

namespace A057863.P4155689169510050266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A057863.P4155689169510050266

/-! ## A057863.P922196488005067726

`abs(∏[∏[a(n-1)-2]])` with `a(0)=1`
-/

namespace A057863.P922196488005067726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A057863.P922196488005067726

/-!
# A057864: Number of simple traceable graphs on n nodes.

The programs for A057864, there is no canonical definition to state claims against.
-/

/-! ## A057864.P17222840911831377641

`Δ[A006897(n)]-A283420(n+1)`
-/

namespace A057864.P17222840911831377641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A283420 (n + 1)

end

end A057864.P17222840911831377641

/-! ## A057864.P15809113653375600827

`A000088(n+1)-A283420(n+1)`
-/

namespace A057864.P15809113653375600827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A283420 (n + 1)

end

end A057864.P15809113653375600827

/-! ## A057864.P4607965468009655823

`A001349(n+1)-A283421(n+1)`
-/

namespace A057864.P4607965468009655823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A283421 (n + 1)

end

end A057864.P4607965468009655823

/-! ## A057864.P12015342926595347890

`A201922(A000124(n))-A283421(n+1)`
-/

namespace A057864.P12015342926595347890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A283421 (n + 1)

end

end A057864.P12015342926595347890

/-! ## A057864.P11857252589547454188

`Δ[A006897(n)]-(A283421(n+1)+A000719(n+1))`
-/

namespace A057864.P11857252589547454188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A283421 (n + 1) + A000719 (n + 1))

end

end A057864.P11857252589547454188

/-!
# A057865: Number of simple Hamilton-connected graphs on n nodes.

The programs for A057865, there is no canonical definition to state claims against.
-/

/-! ## A057865.P18354096256536111082

`floor(sqrt(A349054(floor(2^(n-1)))))`
-/

namespace A057865.P18354096256536111082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A349054 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)

end

end A057865.P18354096256536111082

/-! ## A057865.P7004855781498079712

`A178199(2*floor(6*C(n, 4)/5))`
-/

namespace A057865.P7004855781498079712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178199 (2 * ⌊(6 * Nat.choose n 4 : ℚ) / 5⌋).toNat

end

end A057865.P7004855781498079712

/-! ## A057865.P13174440740166934386

`A355668(A000988(n))`
-/

namespace A057865.P13174440740166934386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355668 (A000988 n).toNat

end

end A057865.P13174440740166934386

/-!
# A057866: Sum_{k>=1} 1/(tanh(k*Pi) * k^(4n-1)) = Pi^(4n-1)*a(n)/A057867(n).

The programs for A057866, there is no canonical definition to state claims against.
-/

/-! ## A057866.P14041821663091837385

`A394976(2*n+1)`
-/

namespace A057866.P14041821663091837385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394976 (2 * n + 1)

end

end A057866.P14041821663091837385

/-! ## A057866.P16403592616104866313

`A395663(2*n+1)`
-/

namespace A057866.P16403592616104866313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395663 (2 * n + 1)

end

end A057866.P16403592616104866313

/-! ## A057866.P8901862567639874422

`A119546(2*n+3)`
-/

namespace A057866.P8901862567639874422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119546 (2 * n + 3)

end

end A057866.P8901862567639874422

/-! ## A057866.P11561630692168933203

`record[A119546(n+3)/A033999(n)]`
-/

namespace A057866.P11561630692168933203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119546 (n + 3) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057866.P11561630692168933203

/-! ## A057866.P10016297774553716766

`record[root(A119546(n+3), A001511(n+1))]`
-/

namespace A057866.P10016297774553716766
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A119546 (n + 3) : ℝ) ^ (1 / (A001511 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057866.P10016297774553716766

/-!
# A057868: Denominator of "modified Bernoulli number" b(2n) = Bernoulli(2*n)/(4*n*(2*n)!).

The programs for A057868, there is no canonical definition to state claims against.
-/

/-! ## A057868.P16078487921190037417

`2*(n+1)*A276595(n+1)`
-/

namespace A057868.P16078487921190037417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A276595 (n + 1))

end

end A057868.P16078487921190037417

/-! ## A057868.P16826060213593150232

`4*(n+1)*A060055(n+2)`
-/

namespace A057868.P16826060213593150232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A060055 (n + 2))

end

end A057868.P16826060213593150232

/-! ## A057868.P10312804302410533282

`Δ[A002378(n)]*A276595(n+1)`
-/

namespace A057868.P10312804302410533282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A276595 (n + 1)

end

end A057868.P10312804302410533282

/-! ## A057868.P15431569084670890956

`Δ[A001844(n)]*A060055(n+2)`
-/

namespace A057868.P15431569084670890956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060055 (n + 2)

end

end A057868.P15431569084670890956

/-! ## A057868.P7516969813370980808

`record[A133265(n)]*A276595(n+1)`
-/

namespace A057868.P7516969813370980808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A276595 (n + 1)

end

end A057868.P7516969813370980808

/-!
# A057869: Triangle of coefficients of x^2 in the Neumann polynomials.

The programs for A057869, there is no canonical definition to state claims against.
-/

/-! ## A057869.P9894808217630213721

`A072994(lcm(3, A196890(n)))`
-/

namespace A057869.P9894808217630213721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (Int.lcm 3 (A196890 n))

end

end A057869.P9894808217630213721

/-! ## A057869.P17081296306874609891

`gcd(A335526(n+1), A335540(2^n))`
-/

namespace A057869.P17081296306874609891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335526 (n + 1)) (A335540 (2 ^ n))

end

end A057869.P17081296306874609891

/-! ## A057869.P6609774584683830839

`A003557((n+2)*n!)-A260073(n+1)`
-/

namespace A057869.P6609774584683830839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 2) * Nat.factorial n) - A260073 (n + 1)

end

end A057869.P6609774584683830839

/-!
# A057870: Number of singular points on n-th order Chmutov surface.

The programs for A057870, the canonical program `A057870.P13563506094886617081` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057870 has offset 1).

The definition of A057870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057870.P13563506094886617081

`ogf((x+3x^2+12x^3+21x^4+27x^5+28x^6+31x^7+25x^8+18x^9+11x^10+3x^11)/(1-2x^2-x^3+x^4+2x^5-x^6-x^7+2x^8+x^9-x^10-2x^11+x^13))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A057870

/-- `ogf((x+3x^2+12x^3+21x^4+27x^5+28x^6+31x^7+25x^8+18x^9+11x^10+3x^11)/(1-2x^2-x^3+x^4+2x^5-x^6-x^7+2x^8+x^9-x^10-2x^11+x^13))` -/
def P13563506094886617081.Spec : Prop :=
  ∀ n, P13563506094886617081.a n = A057870 (n + 1)

theorem P13563506094886617081.correct : P13563506094886617081.Spec := by
  intro n
  simp only [A057870, Nat.add_sub_cancel]

end A057870

/-!
# A057872: A version of the Chebyshev function theta(n): a(n) = round(Sum_{primes p <= n } log(p)).

The programs for A057872, the canonical program `A057872.P8502585632871789703` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057872 has offset 0).

The definition of A057872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057872.P8502585632871789703

`A215260(A230980(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057872

/-- `A215260(A230980(n))` -/
def P8502585632871789703.Spec : Prop :=
  ∀ n, P8502585632871789703.a n = A057872 n

theorem P8502585632871789703.correct : P8502585632871789703.Spec := by
  intro n
  simp only [A057872]

end A057872

/-! ## A057872.P4480327394501337842

`A215260(∑[char[A000040(n+1)]])`
-/

namespace A057872.P4480327394501337842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057872.P4480327394501337842

namespace A057872

/-- `A215260(∑[char[A000040(n+1)]])` -/
def P4480327394501337842.Spec : Prop :=
  ∀ n, P4480327394501337842.a n = A057872 n

end A057872

/-! ## A057872.P13146763502762690180

`round(log(A034386(n)))`
-/

namespace A057872.P13146763502762690180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A034386 n : ℝ))

end

end A057872.P13146763502762690180

namespace A057872

/-- `round(log(A034386(n)))` -/
def P13146763502762690180.Spec : Prop :=
  ∀ n, P13146763502762690180.a n = A057872 n

end A057872

/-! ## A057872.P16731213164050351015

`round(log(A300951(2*n)))`
-/

namespace A057872.P16731213164050351015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A300951 (2 * n) : ℝ))

end

end A057872.P16731213164050351015

namespace A057872

/-- `round(log(A300951(2*n)))` -/
def P16731213164050351015.Spec : Prop :=
  ∀ n, P16731213164050351015.a n = A057872 n

end A057872

/-! ## A057872.P3452984955972076285

`round(log(A163641(n)*A163644(n)))`
-/

namespace A057872.P3452984955972076285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A163641 n * A163644 n : ℝ))

end

end A057872.P3452984955972076285

namespace A057872

/-- `round(log(A163641(n)*A163644(n)))` -/
def P3452984955972076285.Spec : Prop :=
  ∀ n, P3452984955972076285.a n = A057872 n

end A057872

/-! ## A057872.P2068753040843167482

`round(log(A201146(C(n, 2)+1)))`
-/

namespace A057872.P2068753040843167482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A201146 (Nat.choose n 2 + 1) : ℝ))

end

end A057872.P2068753040843167482

namespace A057872

/-- `round(log(A201146(C(n, 2)+1)))` -/
def P2068753040843167482.Spec : Prop :=
  ∀ n, P2068753040843167482.a n = A057872 n

end A057872

/-!
# A057873: a(1) = 1; a(n+1) = sum of terms in continued fraction for sum{k=1 to n}[a(n+1-k)/a(k)].

The programs for A057873, there is no canonical definition to state claims against.
-/

/-! ## A057873.P3277975613342225383

`A066657(A139479(n+1))`
-/

namespace A057873.P3277975613342225383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A139479 (n + 1)).toNat

end

end A057873.P3277975613342225383

/-! ## A057873.P13948115960574032918

`A078729(A263678(n+1))`
-/

namespace A057873.P13948115960574032918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078729 (A263678 (n + 1)).toNat

end

end A057873.P13948115960574032918

/-! ## A057873.P11060326986162231498

`A175944(col(A138392(n)+1))`
-/

namespace A057873.P11060326986162231498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (SequenceMachineLib.triCol (A138392 n + 1).toNat)

end

end A057873.P11060326986162231498

/-!
# A057876: Primes p with the following property: let d_1, d_2, ... be the distinct digits occurring in the decimal expansion of p. Then for each d_i, dropping all the digits d_i from p produces a prime number. Leading 0's are not allowed.

The programs for A057876, there is no canonical definition to state claims against.
-/

/-! ## A057876.P5938703819647974878

`A006530(∪[A057878(n+1), A057879(n+1)]²)`
-/

namespace A057876.P5938703819647974878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057879 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A057876.P5938703819647974878

/-! ## A057876.P9289828302195950852

`A020639(∪[A057878(n+1), A057879(n+1)]²)`
-/

namespace A057876.P9289828302195950852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057879 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A057876.P9289828302195950852

/-! ## A057876.P7040833942555030389

`A051362(n+1)-A342292(A052415(n+1))`
-/

namespace A057876.P7040833942555030389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (n + 1) - A342292 (A052415 (n + 1)).toNat

end

end A057876.P7040833942555030389

/-!
# A057878: Primes with 2 distinct digits that remain prime (no leading zeros allowed) after deleting all occurrences of its digits d.

The programs for A057878, there is no canonical definition to state claims against.
-/

/-! ## A057878.P4404531538172107686

`∩[A030291(n+1), A057876(n+1)]`
-/

namespace A057878.P4404531538172107686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057878.P4404531538172107686

/-! ## A057878.P2542640820720806203

`∩[A031955(n+1), A057876(n+1)]`
-/

namespace A057878.P2542640820720806203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057878.P2542640820720806203

/-! ## A057878.P6109958601737333058

`∩[A057876(n+1), A083984(n+1)]`
-/

namespace A057878.P6109958601737333058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057878.P6109958601737333058

/-! ## A057878.P3034028108454320440

`∩[A057876(n+1), A101594(n+1)]`
-/

namespace A057878.P3034028108454320440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057878.P3034028108454320440

/-! ## A057878.P12682220249946967819

`∩[A057876(n+1), A132077(n+1)]`
-/

namespace A057878.P12682220249946967819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057878.P12682220249946967819

/-!
# A057879: Primes with 3 distinct digits that remain prime (no leading zeros allowed) after deleting all occurrences of any one of its distinct digits.

The programs for A057879, there is no canonical definition to state claims against.
-/

/-! ## A057879.P6940626985711923296

`∩[A057876(n+1), A235155(n+1)]`
-/

namespace A057879.P6940626985711923296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057879.P6940626985711923296

/-! ## A057879.P16517200038678742560

`∩[A031962(n+1), A057876(n+1)]`
-/

namespace A057879.P16517200038678742560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057879.P16517200038678742560

/-!
# A057886: Number of integer 4-tuples that give the lengths of the sides of a nondegenerate quadrilateral with perimeter n.

The programs for A057886, the canonical program `A057886.P11070818238068354727` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057886 has offset 1).

The definition of A057886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057886.P11070818238068354727

`ogf((x^3-x^5+x^6)/(1-x-2x^2+2x^3+2x^6-2x^7-x^8+x^9))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A057886

/-- `ogf((x^3-x^5+x^6)/(1-x-2x^2+2x^3+2x^6-2x^7-x^8+x^9))` -/
def P11070818238068354727.Spec : Prop :=
  ∀ n, P11070818238068354727.a n = A057886 (n + 1)

theorem P11070818238068354727.correct : P11070818238068354727.Spec := by
  intro n
  simp only [A057886, Nat.add_sub_cancel]

end A057886

/-! ## A057886.P11283701897714111260

`∑{d}[n+1, A057887(#)]`
-/

namespace A057886.P11283701897714111260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057887 d

end

end A057886.P11283701897714111260

namespace A057886

/-- `∑{d}[n+1, A057887(#)]` -/
def P11283701897714111260.Spec : Prop :=
  ∀ n, P11283701897714111260.a n = A057886 (n + 1)

end A057886

/-! ## A057886.P3695486575608434283

`∑[A034852(∑[A057979(n)]+1)]`
-/

namespace A057886.P3695486575608434283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057886.P3695486575608434283

namespace A057886

/-- `∑[A034852(∑[A057979(n)]+1)]` -/
def P3695486575608434283.Spec : Prop :=
  ∀ n, P3695486575608434283.a n = A057886 (n + 1)

end A057886

/-! ## A057886.P14530302298090017142

`A116676(n)-A010060(A183016(n+1))`
-/

namespace A057886.P14530302298090017142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 n - A010060 (A183016 (n + 1)).toNat

end

end A057886.P14530302298090017142

namespace A057886

/-- `A116676(n)-A010060(A183016(n+1))` -/
def P14530302298090017142.Spec : Prop :=
  ∀ n, P14530302298090017142.a n = A057886 (n + 1)

end A057886

/-!
# A057887: Number of 4-tuples of integers with GCD=1 and giving the lengths of sides of a nondegenerate quadrilateral with perimeter n.

The programs for A057887, the canonical program `A057887.P13055653042282914323` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057887 has offset 1).

The definition of A057887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057887.P13055653042282914323

`∑{d}[n+1, A008683(#)*A057886((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057887

/-- `∑{d}[n+1, A008683(#)*A057886((n+1)/#)]` -/
def P13055653042282914323.Spec : Prop :=
  ∀ n, P13055653042282914323.a n = A057887 (n + 1)

theorem P13055653042282914323.correct : P13055653042282914323.Spec := by
  intro n
  simp only [A057887, Nat.add_sub_cancel]

end A057887

/-!
# A057889: Bijective bit-reverse of n: keep the trailing zeros in the binary expansion of n fixed, but reverse all the digits up to that point.

The programs for A057889, the canonical program `A057889.P1698969628910927929` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057889 has offset 0).

The definition of A057889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057889.P3304688321695811327

`xor(n, A280508(n))`
-/

namespace A057889.P3304688321695811327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A280508 n)

end

end A057889.P3304688321695811327

namespace A057889

/-- `xor(n, A280508(n))` -/
def P3304688321695811327.Spec : Prop :=
  ∀ n, P3304688321695811327.a n = A057889 n

end A057889

/-! ## A057889.P13571859633565449425

`A302027(a(n-1)+1)` with `a(0)=0`
-/

namespace A057889.P13571859633565449425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A302027 (a (n - 1) + 1).toNat

end

end A057889.P13571859633565449425

namespace A057889

/-- `A302027(a(n-1)+1)` -/
def P13571859633565449425.Spec : Prop :=
  ∀ n, P13571859633565449425.a n = A057889 n

end A057889

/-! ## A057889.P9758492602272477155

`A379472(A193231(n))`
-/

namespace A057889.P9758492602272477155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379472 (A193231 n).toNat

end

end A057889.P9758492602272477155

namespace A057889

/-- `A379472(A193231(n))` -/
def P9758492602272477155.Spec : Prop :=
  ∀ n, P9758492602272477155.a n = A057889 n

end A057889

/-! ## A057889.P1698969628910927929

`A006519(A028310(n))*A030101(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057889

/-- `A006519(A028310(n))*A030101(n)` -/
def P1698969628910927929.Spec : Prop :=
  ∀ n, P1698969628910927929.a n = A057889 n

theorem P1698969628910927929.correct : P1698969628910927929.Spec := by
  intro n
  simp only [A057889]

end A057889

/-! ## A057889.P8729309956384817395

`(A062383(n)-A340632(n))*A030101(n)`
-/

namespace A057889.P8729309956384817395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062383 n - A340632 n) * A030101 n

end

end A057889.P8729309956384817395

namespace A057889

/-- `(A062383(n)-A340632(n))*A030101(n)` -/
def P8729309956384817395.Spec : Prop :=
  ∀ n, P8729309956384817395.a n = A057889 n

end A057889

/-! ## A057889.P11155541374071531385

`A266642(A263272(n))`
-/

namespace A057889.P11155541374071531385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266642 (A263272 n).toNat

end

end A057889.P11155541374071531385

namespace A057889

/-- `A266642(A263272(n))` -/
def P11155541374071531385.Spec : Prop :=
  ∀ n, P11155541374071531385.a n = A057889 n

end A057889

/-! ## A057889.P8182886957042455975

`A266642(A264984(n)/2)`
-/

namespace A057889.P8182886957042455975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266642 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A057889.P8182886957042455975

namespace A057889

/-- `A266642(A264984(n)/2)` -/
def P8182886957042455975.Spec : Prop :=
  ∀ n, P8182886957042455975.a n = A057889 n

end A057889

/-! ## A057889.P9641397020463711128

`A263272(A266641(n))`
-/

namespace A057889.P9641397020463711128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266641 n).toNat

end

end A057889.P9641397020463711128

namespace A057889

/-- `A263272(A266641(n))` -/
def P9641397020463711128.Spec : Prop :=
  ∀ n, P9641397020463711128.a n = A057889 n

end A057889

/-! ## A057889.P9944438899713808219

`A266641(A265369(2*n)/2)`
-/

namespace A057889.P9944438899713808219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (SequenceMachineLib.roundAway ((A265369 (2 * n) : ℚ) / 2)).toNat

end

end A057889.P9944438899713808219

namespace A057889

/-- `A266641(A265369(2*n)/2)` -/
def P9944438899713808219.Spec : Prop :=
  ∀ n, P9944438899713808219.a n = A057889 n

end A057889

/-! ## A057889.P9755149514105851539

`A246200(A266644(A264965(n)))`
-/

namespace A057889.P9755149514105851539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266644 (A264965 n).toNat).toNat

end

end A057889.P9755149514105851539

namespace A057889

/-- `A246200(A266644(A264965(n)))` -/
def P9755149514105851539.Spec : Prop :=
  ∀ n, P9755149514105851539.a n = A057889 n

end A057889

/-! ## A057889.P8285214806800017818

`A193231(A379471(n))`
-/

namespace A057889.P8285214806800017818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A379471 n).toNat

end

end A057889.P8285214806800017818

namespace A057889

/-- `A193231(A379471(n))` -/
def P8285214806800017818.Spec : Prop :=
  ∀ n, P8285214806800017818.a n = A057889 n

end A057889

/-! ## A057889.P7049980203207884631

`A265369(A264966(n))`
-/

namespace A057889.P7049980203207884631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265369 (A264966 n).toNat

end

end A057889.P7049980203207884631

namespace A057889

/-- `A265369(A264966(n))` -/
def P7049980203207884631.Spec : Prop :=
  ∀ n, P7049980203207884631.a n = A057889 n

end A057889

/-! ## A057889.P1195700578365541466

`A264966(A263273(n))`
-/

namespace A057889.P1195700578365541466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A263273 n).toNat

end

end A057889.P1195700578365541466

namespace A057889

/-- `A264966(A263273(n))` -/
def P1195700578365541466.Spec : Prop :=
  ∀ n, P1195700578365541466.a n = A057889 n

end A057889

/-! ## A057889.P9679388465067252532

`A264966(A266643(A246200(n)))`
-/

namespace A057889.P9679388465067252532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A266643 (A246200 n).toNat).toNat

end

end A057889.P9679388465067252532

namespace A057889

/-- `A264966(A266643(A246200(n)))` -/
def P9679388465067252532.Spec : Prop :=
  ∀ n, P9679388465067252532.a n = A057889 n

end A057889

/-! ## A057889.P2214235179058828851

`A264966(A246200(A266644(n)))`
-/

namespace A057889.P2214235179058828851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A246200 (A266644 n).toNat).toNat

end

end A057889.P2214235179058828851

namespace A057889

/-- `A264966(A246200(A266644(n)))` -/
def P2214235179058828851.Spec : Prop :=
  ∀ n, P2214235179058828851.a n = A057889 n

end A057889

/-! ## A057889.P13661097105722834580

`A264966(A266643(A263272(A264967(n))))`
-/

namespace A057889.P13661097105722834580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A266643 (A263272 (A264967 n).toNat).toNat).toNat

end

end A057889.P13661097105722834580

namespace A057889

/-- `A264966(A266643(A263272(A264967(n))))` -/
def P13661097105722834580.Spec : Prop :=
  ∀ n, P13661097105722834580.a n = A057889 n

end A057889

/-! ## A057889.P1586500440075184998

`A263272(A264965(2*n)/2)`
-/

namespace A057889.P1586500440075184998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A264965 (2 * n) : ℚ) / 2)).toNat

end

end A057889.P1586500440075184998

namespace A057889

/-- `A263272(A264965(2*n)/2)` -/
def P1586500440075184998.Spec : Prop :=
  ∀ n, P1586500440075184998.a n = A057889 n

end A057889

/-! ## A057889.P3768191249346810035

`A266642(A263273(2*n)/2)`
-/

namespace A057889.P3768191249346810035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266642 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A057889.P3768191249346810035

namespace A057889

/-- `A266642(A263273(2*n)/2)` -/
def P3768191249346810035.Spec : Prop :=
  ∀ n, P3768191249346810035.a n = A057889 n

end A057889

/-! ## A057889.P9786466503028445314

`A263273(A264965(n))`
-/

namespace A057889.P9786466503028445314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264965 n).toNat

end

end A057889.P9786466503028445314

namespace A057889

/-- `A263273(A264965(n))` -/
def P9786466503028445314.Spec : Prop :=
  ∀ n, P9786466503028445314.a n = A057889 n

end A057889

/-! ## A057889.P18203901336236265957

`A264965(A265369(n))`
-/

namespace A057889.P18203901336236265957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A265369 n).toNat

end

end A057889.P18203901336236265957

namespace A057889

/-- `A264965(A265369(n))` -/
def P18203901336236265957.Spec : Prop :=
  ∀ n, P18203901336236265957.a n = A057889 n

end A057889

/-!
# A057890: In base 2, either a palindrome or becomes a palindrome if trailing 0's are omitted.

The programs for A057890, there is no canonical definition to state claims against.
-/

/-! ## A057890.P17497421462141597452

`∪[A000225(n), A161604(n+1)]`
-/

namespace A057890.P17497421462141597452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057890.P17497421462141597452

/-! ## A057890.P7119088669151129333

`∪[A000975(n), A161604(n+1)]`
-/

namespace A057890.P7119088669151129333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057890.P7119088669151129333

/-! ## A057890.P14104783262774469296

`eq[n, A057889(n)]`
-/

namespace A057890.P14104783262774469296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057890.P14104783262774469296

/-! ## A057890.P3154138419625212664

`A057889(record[and(n, A057889(n))])`
-/

namespace A057890.P3154138419625212664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057889 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057890.P3154138419625212664

/-! ## A057890.P474830824569825506

`record[A057889(n)%A000027(n+1)]`
-/

namespace A057890.P474830824569825506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057889 n) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057890.P474830824569825506

/-! ## A057890.P8795478554088252037

`A057889(record[n/(1-A057889(n)+n)])`
-/

namespace A057890.P8795478554088252037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A057889 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A057890.P8795478554088252037

/-! ## A057890.P4076841639588150959

`lt[A175919(A264619(n)%(2*n+1)), 1]`
-/

namespace A057890.P4076841639588150959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (Int.tmod (A264619 n) (2 * n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057890.P4076841639588150959

/-! ## A057890.P5655423190580288716

`eq[n-A055945(n), A175298(n-A055945(n))]`
-/

namespace A057890.P5655423190580288716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 ((n : ℤ) - A055945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057890.P5655423190580288716

/-! ## A057890.P3242410062302594896

`eq[n, A366389(n)]`
-/

namespace A057890.P3242410062302594896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057890.P3242410062302594896

/-! ## A057890.P14234447076192745476

`eq[0, A175919(xor(n, A175919(n)))]`
-/

namespace A057890.P14234447076192745476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (Int.xor (n : ℤ) (A175919 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057890.P14234447076192745476

/-! ## A057890.P6106228907369972895

`comp[A057891(n+1)]`
-/

namespace A057890.P6106228907369972895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057890.P6106228907369972895

/-! ## A057890.P12676317306832110811

`eq[0, A280508(n)]`
-/

namespace A057890.P12676317306832110811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057890.P12676317306832110811

/-! ## A057890.P17673016553168399529

`eq[n, A326302(n)]`
-/

namespace A057890.P17673016553168399529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057890.P17673016553168399529

/-! ## A057890.P11208816296559607985

`eq[0, A175919(A030101(n))]`
-/

namespace A057890.P11208816296559607985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057890.P11208816296559607985

/-! ## A057890.P14935593279353347737

`eq[A000120(n), A274036(n)]`
-/

namespace A057890.P14935593279353347737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057890.P14935593279353347737

/-! ## A057890.P4778058081220104908

`eq[A263273(n), A264965(n)]`
-/

namespace A057890.P4778058081220104908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057890.P4778058081220104908

/-! ## A057890.P883110402345619563

`eq[A163511(n), A366275(n)]`
-/

namespace A057890.P883110402345619563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057890.P883110402345619563

/-! ## A057890.P16575845298318849761

`eq[A263272(n), A266641(n)]`
-/

namespace A057890.P16575845298318849761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057890.P16575845298318849761

/-! ## A057890.P6352976878620172452

`eq[A264966(n), A265369(n)]`
-/

namespace A057890.P6352976878620172452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265369 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057890.P6352976878620172452

/-! ## A057890.P8792536090101876704

`lt[A326302(n)-1, A022998(n)]`
-/

namespace A057890.P8792536090101876704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057890.P8792536090101876704

/-!
# A057891: In base 2, neither a palindrome nor becomes a palindrome if trailing 0's are omitted.

The programs for A057891, the canonical program `A057891.P12237480807863623377` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057891 has offset 1).

The definition of A057891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057891.P3594380363047042030

`comp[A057890(1+n)]`
-/

namespace A057891.P3594380363047042030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057891.P3594380363047042030

namespace A057891

/-- `comp[A057890(1+n)]` -/
def P3594380363047042030.Spec : Prop :=
  ∀ n, (P3594380363047042030.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P10487559699730573015

`comp[A161604(n+1)-1]+1`
-/

namespace A057891.P10487559699730573015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057891.P10487559699730573015

namespace A057891

/-- `comp[A161604(n+1)-1]+1` -/
def P10487559699730573015.Spec : Prop :=
  ∀ n, (P10487559699730573015.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P12237480807863623377

`lt[0, A175919(xor(n, A175919(n)))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057891

/-- `lt[0, A175919(xor(n, A175919(n)))]` -/
def P12237480807863623377.Spec : Prop :=
  ∀ n, (P12237480807863623377.a n : ℤ) = A057891 (n + 1)

theorem P12237480807863623377.correct : P12237480807863623377.Spec := by
  intro n
  simp only [A057891, Nat.add_sub_cancel]

end A057891

/-! ## A057891.P18334234331368967034

`lt[A055945(n), (n-A057889(n))²]`
-/

namespace A057891.P18334234331368967034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057889 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057891.P18334234331368967034

namespace A057891

/-- `lt[A055945(n), (n-A057889(n))²]` -/
def P18334234331368967034.Spec : Prop :=
  ∀ n, (P18334234331368967034.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P10680318958543140682

`lt[n, lcm(n, A030101(n))]`
-/

namespace A057891.P10680318958543140682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A030101 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057891.P10680318958543140682

namespace A057891

/-- `lt[n, lcm(n, A030101(n))]` -/
def P10680318958543140682.Spec : Prop :=
  ∀ n, (P10680318958543140682.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P7617092730461775816

`lt[0, A175919(A030101(n))]`
-/

namespace A057891.P7617092730461775816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057891.P7617092730461775816

namespace A057891

/-- `lt[0, A175919(A030101(n))]` -/
def P7617092730461775816.Spec : Prop :=
  ∀ n, (P7617092730461775816.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P5012234506225871811

`eq[1, A178226(A055944(n)-n)]`
-/

namespace A057891.P5012234506225871811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A055944 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057891.P5012234506225871811

namespace A057891

/-- `eq[1, A178226(A055944(n)-n)]` -/
def P5012234506225871811.Spec : Prop :=
  ∀ n, (P5012234506225871811.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P10507501121476957119

`lt[1, A175919(A055944(n)-n)]`
-/

namespace A057891.P10507501121476957119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A055944 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057891.P10507501121476957119

namespace A057891

/-- `lt[1, A175919(A055944(n)-n)]` -/
def P10507501121476957119.Spec : Prop :=
  ∀ n, (P10507501121476957119.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P15203979526948946559

`lt[0, A280508(n)]`
-/

namespace A057891.P15203979526948946559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057891.P15203979526948946559

namespace A057891

/-- `lt[0, A280508(n)]` -/
def P15203979526948946559.Spec : Prop :=
  ∀ n, (P15203979526948946559.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P12761149257944436425

`lt[n, A326302(n)]`
-/

namespace A057891.P12761149257944436425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057891.P12761149257944436425

namespace A057891

/-- `lt[n, A326302(n)]` -/
def P12761149257944436425.Spec : Prop :=
  ∀ n, (P12761149257944436425.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P14682112860597725151

`eq[2, A020639(∏{p}[n-A057889(n), #])]`
-/

namespace A057891.P14682112860597725151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057891.P14682112860597725151

namespace A057891

/-- `eq[2, A020639(∏{p}[n-A057889(n), #])]` -/
def P14682112860597725151.Spec : Prop :=
  ∀ n, (P14682112860597725151.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P3618384615621438511

`eq[A000038(n)², A000038(A280508(n))]`
-/

namespace A057891.P3618384615621438511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A280508 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057891.P3618384615621438511

namespace A057891

/-- `eq[A000038(n)², A000038(A280508(n))]` -/
def P3618384615621438511.Spec : Prop :=
  ∀ n, (P3618384615621438511.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P2471365011822860406

`eq[2*A000007(n), A000007(A280508(n))]`
-/

namespace A057891.P2471365011822860406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A280508 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057891.P2471365011822860406

namespace A057891

/-- `eq[2*A000007(n), A000007(A280508(n))]` -/
def P2471365011822860406.Spec : Prop :=
  ∀ n, (P2471365011822860406.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P8013884372775497222

`eq[2*A178225(n), A178225(A280508(n))]`
-/

namespace A057891.P8013884372775497222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A280508 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057891.P8013884372775497222

namespace A057891

/-- `eq[2*A178225(n), A178225(A280508(n))]` -/
def P8013884372775497222.Spec : Prop :=
  ∀ n, (P8013884372775497222.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P618759814265186012

`comp[and(n, A057889(n))]`
-/

namespace A057891.P618759814265186012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057889 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057891.P618759814265186012

namespace A057891

/-- `comp[and(n, A057889(n))]` -/
def P618759814265186012.Spec : Prop :=
  ∀ n, (P618759814265186012.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P17070672577863866114

`lt[1, A280506(n+1)]+1`
-/

namespace A057891.P17070672577863866114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057891.P17070672577863866114

namespace A057891

/-- `lt[1, A280506(n+1)]+1` -/
def P17070672577863866114.Spec : Prop :=
  ∀ n, (P17070672577863866114.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P14039413435782667944

`lt[A330717(n)+n, A055944(n)]`
-/

namespace A057891.P14039413435782667944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057891.P14039413435782667944

namespace A057891

/-- `lt[A330717(n)+n, A055944(n)]` -/
def P14039413435782667944.Spec : Prop :=
  ∀ n, (P14039413435782667944.a n : ℤ) = A057891 (n + 1)

end A057891

/-! ## A057891.P12308379478050113854

`eq[A000038(A280508(2*n)), A000038(n+1)]`
-/

namespace A057891.P12308379478050113854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A280508 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057891.P12308379478050113854

namespace A057891

/-- `eq[A000038(A280508(2*n)), A000038(n+1)]` -/
def P12308379478050113854.Spec : Prop :=
  ∀ n, (P12308379478050113854.a n : ℤ) = A057891 (n + 1)

end A057891

/-!
# A057893: Negabinary numbral multiplication table.

The programs for A057893, there is no canonical definition to state claims against.
-/

/-! ## A057893.P625149861369068007

`gcd(A001206(A061858(n)), A048720(n))`
-/

namespace A057893.P625149861369068007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001206 (A061858 n).toNat) (A048720 n)

end

end A057893.P625149861369068007

/-! ## A057893.P15541667428454968672

`A048720(n)/A255238(A061858(n)²)`
-/

namespace A057893.P15541667428454968672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048720 n : ℚ) / (A255238 (A061858 n ^ 2).toNat : ℚ)

end

end A057893.P15541667428454968672

/-! ## A057893.P17523067795655371005

`gcd(A001221(A061858(n)!), A004247(n))`
-/

namespace A057893.P17523067795655371005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (Nat.factorial (A061858 n).toNat)) (A004247 n)

end

end A057893.P17523067795655371005

/-! ## A057893.P11578245856432768533

`xor(A004018(7*A298444(n+1)), A048720(n))`
-/

namespace A057893.P11578245856432768533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004018 (7 * A298444 (n + 1)).toNat) (A048720 n)

end

end A057893.P11578245856432768533

/-! ## A057893.P3318899024348505280

`floor(A048720(n)/(A001221(A061858(n)!)+1))`
-/

namespace A057893.P3318899024348505280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048720 n : ℚ) / (A001221 (Nat.factorial (A061858 n).toNat) + 1 : ℚ)⌋

end

end A057893.P3318899024348505280

/-! ## A057893.P13441639627362267287

`gcd(A077028(n)-1, A004018(7*A298444(n+1)))`
-/

namespace A057893.P13441639627362267287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077028 n - 1) (A004018 (7 * A298444 (n + 1)).toNat)

end

end A057893.P13441639627362267287

/-! ## A057893.P14065523226681801112

`A319657(A004247(n))%A234867(n+5)`
-/

namespace A057893.P14065523226681801112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319657 (A004247 n).toNat) (A234867 (n + 5))

end

end A057893.P14065523226681801112

/-!
# A057894: Negabinary numbral "primes".

The programs for A057894, the canonical program `A057894.P10049549361745002982` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057894 has offset 0).

The definition of A057894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057894.P10049549361745002982

`eq[1, ∑{e}[n-A004514(n), #]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057894

/-- `eq[1, ∑{e}[n-A004514(n), #]]` -/
def P10049549361745002982.Spec : Prop :=
  ∀ n, (P10049549361745002982.a n : ℤ) = A057894 n

theorem P10049549361745002982.correct : P10049549361745002982.Spec := by
  intro n
  simp only [A057894]

end A057894

/-! ## A057894.P8760863249795598774

`eq[1, ∑{d}[A053985(n), A300251(#)]]`
-/

namespace A057894.P8760863249795598774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, A300251 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057894.P8760863249795598774

namespace A057894

/-- `eq[1, ∑{d}[A053985(n), A300251(#)]]` -/
def P8760863249795598774.Spec : Prop :=
  ∀ n, (P8760863249795598774.a n : ℤ) = A057894 n

end A057894

/-! ## A057894.P6180730323215773932

`lt[A347662(∑{e}[n-A004514(n), #]+4), 2]`
-/

namespace A057894.P6180730323215773932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347662 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A057894.P6180730323215773932

namespace A057894

/-- `lt[A347662(∑{e}[n-A004514(n), #]+4), 2]` -/
def P6180730323215773932.Spec : Prop :=
  ∀ n, (P6180730323215773932.a n : ℤ) = A057894 n

end A057894

/-! ## A057894.P3520242847829958580

`eq[2, A074206(A053985(n)²)]`
-/

namespace A057894.P3520242847829958580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A053985 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057894.P3520242847829958580

namespace A057894

/-- `eq[2, A074206(A053985(n)²)]` -/
def P3520242847829958580.Spec : Prop :=
  ∀ n, (P3520242847829958580.a n : ℤ) = A057894 n

end A057894

/-! ## A057894.P1813757845197997076

`eq[2, A284289(A053985(n)²)]`
-/

namespace A057894.P1813757845197997076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A053985 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057894.P1813757845197997076

namespace A057894

/-- `eq[2, A284289(A053985(n)²)]` -/
def P1813757845197997076.Spec : Prop :=
  ∀ n, (P1813757845197997076.a n : ℤ) = A057894 n

end A057894

/-!
# A057895: Nonnegative numbers which can be written as m^k-m [with m and k nonnegative and 0^0 taken as 1].

The programs for A057895, there is no canonical definition to state claims against.
-/

/-! ## A057895.P2477176012838830865

`eq[A000196(n), A089000(A026741(n))]`
-/

namespace A057895.P2477176012838830865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057895.P2477176012838830865

/-! ## A057895.P8596371506451946361

`A069049(n+1)-A020639(A058262(n))`
-/

namespace A057895.P8596371506451946361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069049 (n + 1) - A020639 (A058262 n).toNat

end

end A057895.P8596371506451946361

/-! ## A057895.P15789448748102944455

`A069049(n+1)-A020639(A091217(n))`
-/

namespace A057895.P15789448748102944455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069049 (n + 1) - A020639 (A091217 n).toNat

end

end A057895.P15789448748102944455

/-! ## A057895.P3639773956136916409

`A069049(n+1)-A020639(A094433(n))`
-/

namespace A057895.P3639773956136916409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069049 (n + 1) - A020639 (A094433 n).toNat

end

end A057895.P3639773956136916409

/-! ## A057895.P17480994815573917807

`lt[A048263(n+1), A061767(A352898(n+2))]`
-/

namespace A057895.P17480994815573917807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (A352898 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057895.P17480994815573917807

/-!
# A057896: Nonnegative numbers that can be written as m^k - m (with m and k nonnegative) in more than one way.

The programs for A057896, there is no canonical definition to state claims against.
-/

/-! ## A057896.P8504309563613729743

`record[floor(n/16)*A284012(3*n+2)]`
-/

namespace A057896.P8504309563613729743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 16⌋ * A284012 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057896.P8504309563613729743

/-!
# A057897: Numbers which can be written as m^k-k, with m, k > 1.

The programs for A057897, there is no canonical definition to state claims against.
-/

/-! ## A057897.P13935825818637157176

`lt[1, A057898(n+1)]+1`
-/

namespace A057897.P13935825818637157176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057897.P13935825818637157176

/-! ## A057897.P4899641892818115311

`lt[1, A057898(A028310(n))]`
-/

namespace A057897.P4899641892818115311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057897.P4899641892818115311

/-! ## A057897.P11800494527560530702

`A020725(lt[1, A057898(n+1)])`
-/

namespace A057897.P11800494527560530702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A057897.P11800494527560530702

/-! ## A057897.P12439716915415100192

`record[A054977(n)+n*A323022(A057898(n+1))]`
-/

namespace A057897.P12439716915415100192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (n : ℤ) * A323022 (A057898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057897.P12439716915415100192

/-! ## A057897.P10770723874635629634

`A247336(n+2)+1`
-/

namespace A057897.P10770723874635629634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247336 (n + 2) + 1

end

end A057897.P10770723874635629634

/-! ## A057897.P18172803474024720538

`A020725(A247336(n+2))`
-/

namespace A057897.P18172803474024720538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A247336 (n + 2)).toNat

end

end A057897.P18172803474024720538

/-!
# A057898: Largest number such that n = m^a(n) - a(n) with m a positive integer; i.e., where (n + a(n))^(1/a(n)) is a positive integer.

The programs for A057898, there is no canonical definition to state claims against.
-/

/-! ## A057898.P11761868237340972705

`A050361(A246892(n+1)+A242179(n+1))`
-/

namespace A057898.P11761868237340972705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A246892 (n + 1) + A242179 (n + 1)).toNat

end

end A057898.P11761868237340972705

/-! ## A057898.P14731367283985150965

`gcd(A001511(A350814(n+1)), A254105(n+1))`
-/

namespace A057898.P14731367283985150965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001511 (A350814 (n + 1)).toNat) (A254105 (n + 1))

end

end A057898.P14731367283985150965

/-! ## A057898.P706592887401114102

`A000005(gcd(A080540(n), A273824(n+1)))`
-/

namespace A057898.P706592887401114102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A080540 n) (A273824 (n + 1)))

end

end A057898.P706592887401114102

/-! ## A057898.P16291436091401171310

`A179806(gcd(A179812(n+1), A179832(n+1)))`
-/

namespace A057898.P16291436091401171310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179806 (Int.gcd (A179812 (n + 1)) (A179832 (n + 1)))

end

end A057898.P16291436091401171310

/-!
# A057899: Smallest positive integer such that n=a(n)^k-k with k a positive integer.

The programs for A057899, there is no canonical definition to state claims against.
-/

/-! ## A057899.P7223760669472223453

`(n+1+A057898(n+1))^(1/A057898(n+1))`
-/

namespace A057899.P7223760669472223453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A057898 (n + 1) : ℝ) ^ (1 / (A057898 (n + 1) : ℚ) : ℝ)

end

end A057899.P7223760669472223453

/-! ## A057899.P14252836631881457385

`ceil(root(n+2, A057898(n+1)))`
-/

namespace A057899.P14252836631881457385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) ^ (1 / (A057898 (n + 1) : ℝ))⌉

end

end A057899.P14252836631881457385

/-! ## A057899.P9487638156983580157

`round(root(A020725(n+1), A057898(n+1)))`
-/

namespace A057899.P9487638156983580157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020725 (n + 1) : ℝ) ^ (1 / (A057898 (n + 1) : ℝ)))

end

end A057899.P9487638156983580157

/-! ## A057899.P5062341664481289449

`floor(root(A008619(2*n), A057898(n+1)))+1`
-/

namespace A057899.P5062341664481289449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 (2 * n) : ℝ) ^ (1 / (A057898 (n + 1) : ℝ))⌋ + 1

end

end A057899.P5062341664481289449

/-! ## A057899.P4889984842765741241

`round(root(A008619(2*n+3), A057898(n+1)))`
-/

namespace A057899.P4889984842765741241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008619 (2 * n + 3) : ℝ) ^ (1 / (A057898 (n + 1) : ℝ)))

end

end A057899.P4889984842765741241

/-! ## A057899.P1992636109645117711

`round(root(A289437(3*(n+2)), A057898(n+1)))`
-/

namespace A057899.P1992636109645117711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A289437 (3 * (n + 2)) : ℝ) ^ (1 / (A057898 (n + 1) : ℝ)))

end

end A057899.P1992636109645117711

