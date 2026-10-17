import SequenceMachineLib
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B008.C001
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

/-!
# A129300: a(0)=1. a(n) = a(n-1) + (sum of the terms of the sequence which are <= n).

The programs for A129300, there is no canonical definition to state claims against.
-/

/-! ## A129300.P12645854203909281936

`∑[A187469(A130823(n+2)²)]`
-/

namespace A129300.P12645854203909281936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187469 (A130823 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129300.P12645854203909281936

/-! ## A129300.P3897359096657751706

`∑[A157685(p?[A157684(n+1)]²)]`
-/

namespace A129300.P3897359096657751706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129300.P3897359096657751706

/-! ## A129300.P3917870243461951331

`∑[A034699(A008611(2*(n+1))!)]`
-/

namespace A129300.P3917870243461951331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Nat.factorial (A008611 (2 * (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129300.P3917870243461951331

/-! ## A129300.P12846330059736488097

`∑[A180240(A101932(ceil((n+2)/3)))]`
-/

namespace A129300.P12846330059736488097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180240 (A101932 ⌈(n + 2 : ℚ) / 3⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129300.P12846330059736488097

/-! ## A129300.P1099645677579545357

`∑[A329198(Δ[A051885(3*(n+1))])]`
-/

namespace A129300.P1099645677579545357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329198 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129300.P1099645677579545357

/-!
# A129301: Records in A082467.

The programs for A129301, there is no canonical definition to state claims against.
-/

/-! ## A129301.P4256151352062550097

`record[sqrt(A143697(n+4))]`
-/

namespace A129301.P4256151352062550097
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143697 (n + 4) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129301.P4256151352062550097

/-! ## A129301.P14258320743494404372

`A078496(A129302(n+1))-A129302(n+1)`
-/

namespace A129301.P14258320743494404372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A129302 (n + 1)).toNat - A129302 (n + 1)

end

end A129301.P14258320743494404372

/-! ## A129301.P10572825772454065541

`A000027(A129302(n+1)-A078587(A129302(n+1)))`
-/

namespace A129301.P10572825772454065541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A129302 (n + 1) - A078587 (A129302 (n + 1)).toNat).toNat

end

end A129301.P10572825772454065541

/-! ## A129301.P4435480210179809284

`A078496(A129302(A000027(n+1)))%A129302(n+1)`
-/

namespace A129301.P4435480210179809284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078496 (A129302 (A000027 (n + 1)).toNat).toNat) (A129302 (n + 1))

end

end A129301.P4435480210179809284

/-! ## A129301.P16270912825512179538

`record[A082467(n+4)]`
-/

namespace A129301.P16270912825512179538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129301.P16270912825512179538

/-!
# A129302: Where records occur in A082467.

The programs for A129302, there is no canonical definition to state claims against.
-/

/-! ## A129302.P3721278524586091611

`A082468(A129301(n+1))`
-/

namespace A129302.P3721278524586091611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082468 (A129301 (n + 1)).toNat

end

end A129302.P3721278524586091611

/-!
# A129303: Expansion of eta(q^2)^3 * eta(q^5)^2 * eta(q^10) / eta(q)^2 in powers of q.

The programs for A129303, the canonical program `A129303.P18038319524124215169` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129303 has offset 1).

The definition of A129303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129303.P11256605662910200737

`abs(A138557(n+1))`
-/

namespace A129303.P11256605662910200737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138557 (n + 1)|

end

end A129303.P11256605662910200737

namespace A129303

/-- `abs(A138557(n+1))` -/
def P11256605662910200737.Spec : Prop :=
  ∀ n, P11256605662910200737.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P6280822655214920030

`A033999(n)*A138557(n+1)`
-/

namespace A129303.P6280822655214920030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138557 (n + 1)

end

end A129303.P6280822655214920030

namespace A129303

/-- `A033999(n)*A138557(n+1)` -/
def P6280822655214920030.Spec : Prop :=
  ∀ n, P6280822655214920030.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P8590747385922543354

`gcd(A000038(n), A138557(n+1))`
-/

namespace A129303.P8590747385922543354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138557 (n + 1))

end

end A129303.P8590747385922543354

namespace A129303

/-- `gcd(A000038(n), A138557(n+1))` -/
def P8590747385922543354.Spec : Prop :=
  ∀ n, (P8590747385922543354.a n : ℤ) = A129303 (n + 1)

end A129303

/-! ## A129303.P6205747539273305973

`lcm(A000034(n), A138557(n+1))`
-/

namespace A129303.P6205747539273305973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A138557 (n + 1))

end

end A129303.P6205747539273305973

namespace A129303

/-- `lcm(A000034(n), A138557(n+1))` -/
def P6205747539273305973.Spec : Prop :=
  ∀ n, (P6205747539273305973.a n : ℤ) = A129303 (n + 1)

end A129303

/-! ## A129303.P6410114347871812433

`(A004442(n)-n)*A138557(n+1)`
-/

namespace A129303.P6410114347871812433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A138557 (n + 1)

end

end A129303.P6410114347871812433

namespace A129303

/-- `(A004442(n)-n)*A138557(n+1)` -/
def P6410114347871812433.Spec : Prop :=
  ∀ n, P6410114347871812433.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P8866986970110178105

`∑{d}[n+1, A000010(#)*A035202((n+1)/#)]`
-/

namespace A129303.P8866986970110178105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129303.P8866986970110178105

namespace A129303

/-- `∑{d}[n+1, A000010(#)*A035202((n+1)/#)]` -/
def P8866986970110178105.Spec : Prop :=
  ∀ n, P8866986970110178105.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P18038319524124215169

`∑{d}[n+1, A035187(#)*A126246((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129303

/-- `∑{d}[n+1, A035187(#)*A126246((n+1)/#)]` -/
def P18038319524124215169.Spec : Prop :=
  ∀ n, P18038319524124215169.a n = A129303 (n + 1)

theorem P18038319524124215169.correct : P18038319524124215169.Spec := by
  intro n
  simp only [A129303, Nat.add_sub_cancel]

end A129303

/-! ## A129303.P1628307208148526372

`∑{d}[n+1, A121362(#)*A227128((n+1)/#)]`
-/

namespace A129303.P1628307208148526372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121362 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129303.P1628307208148526372

namespace A129303

/-- `∑{d}[n+1, A121362(#)*A227128((n+1)/#)]` -/
def P1628307208148526372.Spec : Prop :=
  ∀ n, P1628307208148526372.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P13743155267136653654

`∑{d}[n+1, A019590(#)*A053723((n+1)/#-1)]`
-/

namespace A129303.P13743155267136653654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A053723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A129303.P13743155267136653654

namespace A129303

/-- `∑{d}[n+1, A019590(#)*A053723((n+1)/#-1)]` -/
def P13743155267136653654.Spec : Prop :=
  ∀ n, P13743155267136653654.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P12891849169417765785

`A138557(n+1)/A113185(n)*A132069(n)`
-/

namespace A129303.P12891849169417765785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138557 (n + 1) : ℚ) / (A113185 n : ℚ) * (A132069 n : ℚ)

end

end A129303.P12891849169417765785

namespace A129303

/-- `A138557(n+1)/A113185(n)*A132069(n)` -/
def P12891849169417765785.Spec : Prop :=
  ∀ n, P12891849169417765785.a n = (A129303 (n + 1) : ℚ)

end A129303

/-! ## A129303.P7859708748868062340

`A138512(n+1)+A053723(n)-A138557(n+1)`
-/

namespace A129303.P7859708748868062340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138512 (n + 1) + (A053723 n - A138557 (n + 1))

end

end A129303.P7859708748868062340

namespace A129303

/-- `A138512(n+1)+A053723(n)-A138557(n+1)` -/
def P7859708748868062340.Spec : Prop :=
  ∀ n, P7859708748868062340.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P16089882984117395666

`A110712(n+1)+A138483(n+1)-A138557(n+1)`
-/

namespace A129303.P16089882984117395666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110712 (n + 1) + (A138483 (n + 1) - A138557 (n + 1))

end

end A129303.P16089882984117395666

namespace A129303

/-- `A110712(n+1)+A138483(n+1)-A138557(n+1)` -/
def P16089882984117395666.Spec : Prop :=
  ∀ n, P16089882984117395666.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P3792265872677392300

`A111580(n+1)*A138557(n+1)/A138558(n+1)`
-/

namespace A129303.P3792265872677392300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) * A138557 (n + 1) : ℚ) / (A138558 (n + 1) : ℚ)

end

end A129303.P3792265872677392300

namespace A129303

/-- `A111580(n+1)*A138557(n+1)/A138558(n+1)` -/
def P3792265872677392300.Spec : Prop :=
  ∀ n, P3792265872677392300.a n = (A129303 (n + 1) : ℚ)

end A129303

/-! ## A129303.P14590124674164004462

`lcm(A060904(n+1)*A111580(n+1), A060904(n+1))`
-/

namespace A129303.P14590124674164004462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060904 (n + 1) * A111580 (n + 1)) (A060904 (n + 1))

end

end A129303.P14590124674164004462

namespace A129303

/-- `lcm(A060904(n+1)*A111580(n+1), A060904(n+1))` -/
def P14590124674164004462.Spec : Prop :=
  ∀ n, (P14590124674164004462.a n : ℤ) = A129303 (n + 1)

end A129303

/-! ## A129303.P3613112283166640897

`lcm(2, A138557(2*(n+1)))/2`
-/

namespace A129303.P3613112283166640897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A138557 (2 * (n + 1))) : ℚ) / 2

end

end A129303.P3613112283166640897

namespace A129303

/-- `lcm(2, A138557(2*(n+1)))/2` -/
def P3613112283166640897.Spec : Prop :=
  ∀ n, P3613112283166640897.a n = (A129303 (n + 1) : ℚ)

end A129303

/-! ## A129303.P9915885105870932132

`A138557(2*n+2)/(A000038(n+1)-2)`
-/

namespace A129303.P9915885105870932132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138557 (2 * n + 2) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A129303.P9915885105870932132

namespace A129303

/-- `A138557(2*n+2)/(A000038(n+1)-2)` -/
def P9915885105870932132.Spec : Prop :=
  ∀ n, P9915885105870932132.a n = (A129303 (n + 1) : ℚ)

end A129303

/-! ## A129303.P6627485846728852851

`A138557(2*(n+1))/A000034(2*n+1)-A138557(2*(n+1))`
-/

namespace A129303.P6627485846728852851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138557 (2 * (n + 1)) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A138557 (2 * (n + 1)) : ℚ)

end

end A129303.P6627485846728852851

namespace A129303

/-- `A138557(2*(n+1))/A000034(2*n+1)-A138557(2*(n+1))` -/
def P6627485846728852851.Spec : Prop :=
  ∀ n, P6627485846728852851.a n = (A129303 (n + 1) : ℚ)

end A129303

/-! ## A129303.P2659431404130046258

`A008619(-(A138557(2*(n+1))+1))`
-/

namespace A129303.P2659431404130046258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (-(A138557 (2 * (n + 1)) + 1)).toNat

end

end A129303.P2659431404130046258

namespace A129303

/-- `A008619(-(A138557(2*(n+1))+1))` -/
def P2659431404130046258.Spec : Prop :=
  ∀ n, P2659431404130046258.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P14314106974090910130

`A110654(A053723(2*n+1)+A053723(n))`
-/

namespace A129303.P14314106974090910130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A053723 (2 * n + 1) + A053723 n).toNat

end

end A129303.P14314106974090910130

namespace A129303

/-- `A110654(A053723(2*n+1)+A053723(n))` -/
def P14314106974090910130.Spec : Prop :=
  ∀ n, P14314106974090910130.a n = A129303 (n + 1)

end A129303

/-! ## A129303.P11269849651534483168

`A138557(n+1)/A004409(n)*A319553(n)`
-/

namespace A129303.P11269849651534483168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138557 (n + 1) : ℚ) / (A004409 n : ℚ) * (A319553 n : ℚ)

end

end A129303.P11269849651534483168

namespace A129303

/-- `A138557(n+1)/A004409(n)*A319553(n)` -/
def P11269849651534483168.Spec : Prop :=
  ∀ n, P11269849651534483168.a n = (A129303 (n + 1) : ℚ)

end A129303

/-!
# A129304: Numbers whose Collatz trajectory does not have the same number of halving steps and the same number of tripling steps as that of any smaller number.

The programs for A129304, there is no canonical definition to state claims against.
-/

/-! ## A129304.P13374850468881446131

`A178334(A175179(n+9))+n`
-/

namespace A129304.P13374850468881446131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A175179 (n + 9)).toNat + (n : ℤ)

end

end A129304.P13374850468881446131

/-!
# A129306: Resort sequence A096443 by source partition as described by A053445 and A126442.

The programs for A129306, there is no canonical definition to state claims against.
-/

/-! ## A129306.P11779101304126668888

`A001055(A136101(n+1))`
-/

namespace A129306.P11779101304126668888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A136101 (n + 1)).toNat

end

end A129306.P11779101304126668888

/-!
# A129307: Intersection of A000217 and A005098.

The programs for A129307, the canonical program `A129307.P5188627455129156108` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129307 has offset 1).

The definition of A129307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027861, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129307.P5188627455129156108

`A000217(A027861(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129307

/-- `A000217(A027861(n+1))` -/
def P5188627455129156108.Spec : Prop :=
  ∀ n, P5188627455129156108.a n = A129307 (n + 1)

theorem P5188627455129156108.correct : P5188627455129156108.Spec := by
  intro n
  simp only [A129307, Nat.add_sub_cancel]

end A129307

/-! ## A129307.P14203887605594031315

`floor(A027862(n+1)/4)`
-/

namespace A129307.P14203887605594031315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027862 (n + 1) : ℚ) / 4⌋

end

end A129307.P14203887605594031315

namespace A129307

/-- `floor(A027862(n+1)/4)` -/
def P14203887605594031315.Spec : Prop :=
  ∀ n, P14203887605594031315.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P4010626297803322415

`A000217((A002731(n+1)-1)/2)`
-/

namespace A129307.P4010626297803322415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A002731 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A129307.P4010626297803322415

namespace A129307

/-- `A000217((A002731(n+1)-1)/2)` -/
def P4010626297803322415.Spec : Prop :=
  ∀ n, P4010626297803322415.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P15413619574007372974

`floor(record[A293958(n+1)]/4)`
-/

namespace A129307.P15413619574007372974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌋

end

end A129307.P15413619574007372974

namespace A129307

/-- `floor(record[A293958(n+1)]/4)` -/
def P15413619574007372974.Spec : Prop :=
  ∀ n, P15413619574007372974.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P14114236101128635392

`A000217(eq[2, A160651(n)])`
-/

namespace A129307.P14114236101128635392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129307.P14114236101128635392

namespace A129307

/-- `A000217(eq[2, A160651(n)])` -/
def P14114236101128635392.Spec : Prop :=
  ∀ n, P14114236101128635392.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P17423449308025578123

`A000217(eq[2, A278244(n)])`
-/

namespace A129307.P17423449308025578123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129307.P17423449308025578123

namespace A129307

/-- `A000217(eq[2, A278244(n)])` -/
def P17423449308025578123.Spec : Prop :=
  ∀ n, P17423449308025578123.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P9774140230547259374

`A133263(eq[2, A160651(n)])-2`
-/

namespace A129307.P9774140230547259374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A129307.P9774140230547259374

namespace A129307

/-- `A133263(eq[2, A160651(n)])-2` -/
def P9774140230547259374.Spec : Prop :=
  ∀ n, P9774140230547259374.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P12829678874182988313

`A161680(eq[2, A028949(n+1)-2])`
-/

namespace A129307.P12829678874182988313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129307.P12829678874182988313

namespace A129307

/-- `A161680(eq[2, A028949(n+1)-2])` -/
def P12829678874182988313.Spec : Prop :=
  ∀ n, P12829678874182988313.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P6783266232221480125

`A161680(eq[2, A028949(n+1)/2])`
-/

namespace A129307.P6783266232221480125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028949 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A129307.P6783266232221480125

namespace A129307

/-- `A161680(eq[2, A028949(n+1)/2])` -/
def P6783266232221480125.Spec : Prop :=
  ∀ n, P6783266232221480125.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P1457826513112024732

`A001971(A002731(n+1))`
-/

namespace A129307.P1457826513112024732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A002731 (n + 1)).toNat

end

end A129307.P1457826513112024732

namespace A129307

/-- `A001971(A002731(n+1))` -/
def P1457826513112024732.Spec : Prop :=
  ∀ n, P1457826513112024732.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P8202695502748751704

`A000217(eq[1, A147809(2*n+1)])`
-/

namespace A129307.P8202695502748751704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129307.P8202695502748751704

namespace A129307

/-- `A000217(eq[1, A147809(2*n+1)])` -/
def P8202695502748751704.Spec : Prop :=
  ∀ n, P8202695502748751704.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P11871293250329378490

`A000217(eq[1, A261609(2*n+1)])`
-/

namespace A129307.P11871293250329378490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129307.P11871293250329378490

namespace A129307

/-- `A000217(eq[1, A261609(2*n+1)])` -/
def P11871293250329378490.Spec : Prop :=
  ∀ n, P11871293250329378490.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P8750633476023450986

`A000217(eq[4, A193432(2*n+1)])`
-/

namespace A129307.P8750633476023450986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129307.P8750633476023450986

namespace A129307

/-- `A000217(eq[4, A193432(2*n+1)])` -/
def P8750633476023450986.Spec : Prop :=
  ∀ n, P8750633476023450986.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P3061895863440484094

`round(p?[4*C(n, 2)+1]/4)`
-/

namespace A129307.P3061895863440484094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4)

end

end A129307.P3061895863440484094

namespace A129307

/-- `round(p?[4*C(n, 2)+1]/4)` -/
def P3061895863440484094.Spec : Prop :=
  ∀ n, P3061895863440484094.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P549920129409600915

`round(p?[ceil((n+3)²/2)]/4)`
-/

namespace A129307.P549920129409600915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 3) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4)

end

end A129307.P549920129409600915

namespace A129307

/-- `round(p?[ceil((n+3)²/2)]/4)` -/
def P549920129409600915.Spec : Prop :=
  ∀ n, P549920129409600915.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P1339721269450047393

`floor(p?[(n+1)²+n²]/4)`
-/

namespace A129307.P1339721269450047393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4⌋

end

end A129307.P1339721269450047393

namespace A129307

/-- `floor(p?[(n+1)²+n²]/4)` -/
def P1339721269450047393.Spec : Prop :=
  ∀ n, P1339721269450047393.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P81317933091253030

`(p?[(n+1)²+n²]-1)/4`
-/

namespace A129307.P81317933091253030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 4

end

end A129307.P81317933091253030

namespace A129307

/-- `(p?[(n+1)²+n²]-1)/4` -/
def P81317933091253030.Spec : Prop :=
  ∀ n, P81317933091253030.a n = (A129307 (n + 1) : ℚ)

end A129307

/-! ## A129307.P2266294055821239784

`floor((p?[4*C(n, 2)+1]+1)/4)`
-/

namespace A129307.P2266294055821239784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 4⌋

end

end A129307.P2266294055821239784

namespace A129307

/-- `floor((p?[4*C(n, 2)+1]+1)/4)` -/
def P2266294055821239784.Spec : Prop :=
  ∀ n, P2266294055821239784.a n = A129307 (n + 1)

end A129307

/-! ## A129307.P15090793743265876326

`floor((p?[A046092(n)+1]-1)/4)`
-/

namespace A129307.P15090793743265876326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 4⌋

end

end A129307.P15090793743265876326

namespace A129307

/-- `floor((p?[A046092(n)+1]-1)/4)` -/
def P15090793743265876326.Spec : Prop :=
  ∀ n, P15090793743265876326.a n = A129307 (n + 1)

end A129307

/-!
# A129308: a(n) is the number of positive integers k such that k*(k+1) divides n.

The programs for A129308, the canonical program `A129308.P5209417196639971759` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129308 has offset 1).

The definition of A129308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129308.P10630388638069727003

`A195155(n+1)-1`
-/

namespace A129308.P10630388638069727003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (n + 1) - 1

end

end A129308.P10630388638069727003

namespace A129308

/-- `A195155(n+1)-1` -/
def P10630388638069727003.Spec : Prop :=
  ∀ n, P10630388638069727003.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P7142999338755331493

`A000005(n+1)-A137921(n+1)`
-/

namespace A129308.P7142999338755331493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A137921 (n + 1)

end

end A129308.P7142999338755331493

namespace A129308

/-- `A000005(n+1)-A137921(n+1)` -/
def P7142999338755331493.Spec : Prop :=
  ∀ n, P7142999338755331493.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P5209417196639971759

`∑{d}[n+1, val(#², n+1+#)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129308

/-- `∑{d}[n+1, val(#², n+1+#)]` -/
def P5209417196639971759.Spec : Prop :=
  ∀ n, (P5209417196639971759.a n : ℤ) = A129308 (n + 1)

theorem P5209417196639971759.correct : P5209417196639971759.Spec := by
  intro n
  simp only [A129308, Nat.add_sub_cancel]

end A129308

/-! ## A129308.P17478066813720494724

`∑{d}[n+1, A005369(#)]`
-/

namespace A129308.P17478066813720494724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005369 d

end

end A129308.P17478066813720494724

namespace A129308

/-- `∑{d}[n+1, A005369(#)]` -/
def P17478066813720494724.Spec : Prop :=
  ∀ n, P17478066813720494724.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P14098951743808854277

`n%2*A007862(∑[log2(gcd(2, n))])`
-/

namespace A129308.P14098951743808854277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A007862 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A129308.P14098951743808854277

namespace A129308

/-- `n%2*A007862(∑[log2(gcd(2, n))])` -/
def P14098951743808854277.Spec : Prop :=
  ∀ n, P14098951743808854277.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P17865510388136002971

`A004736(A337362(n+1))-1`
-/

namespace A129308.P17865510388136002971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A337362 (n + 1)).toNat - 1

end

end A129308.P17865510388136002971

namespace A129308

/-- `A004736(A337362(n+1))-1` -/
def P17865510388136002971.Spec : Prop :=
  ∀ n, P17865510388136002971.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P5951424647448148107

`A088722(n+1)+A000035(n)`
-/

namespace A129308.P5951424647448148107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1) + A000035 n

end

end A129308.P5951424647448148107

namespace A129308

/-- `A088722(n+1)+A000035(n)` -/
def P5951424647448148107.Spec : Prop :=
  ∀ n, P5951424647448148107.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P18240909214080073093

`A088722(n+1)+A000034(n)-1`
-/

namespace A129308.P18240909214080073093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1) + (A000034 n - 1)

end

end A129308.P18240909214080073093

namespace A129308

/-- `A088722(n+1)+A000034(n)-1` -/
def P18240909214080073093.Spec : Prop :=
  ∀ n, P18240909214080073093.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P4410445592280164482

`A239930(n+1)-A046951(n+1)`
-/

namespace A129308.P4410445592280164482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239930 (n + 1) - A046951 (n + 1)

end

end A129308.P4410445592280164482

namespace A129308

/-- `A239930(n+1)-A046951(n+1)` -/
def P4410445592280164482.Spec : Prop :=
  ∀ n, P4410445592280164482.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P12862088217570936987

`A066446(n+1)-A337363(n+1)`
-/

namespace A129308.P12862088217570936987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A337363 (n + 1)

end

end A129308.P12862088217570936987

namespace A129308

/-- `A066446(n+1)-A337363(n+1)` -/
def P12862088217570936987.Spec : Prop :=
  ∀ n, P12862088217570936987.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P17048711422552095395

`A184389(n+1)-A337362(n+1)`
-/

namespace A129308.P17048711422552095395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A337362 (n + 1)

end

end A129308.P17048711422552095395

namespace A129308

/-- `A184389(n+1)-A337362(n+1)` -/
def P17048711422552095395.Spec : Prop :=
  ∀ n, P17048711422552095395.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P5181640780659682448

`Δ[A006218(n)]-(A195150(n+1)+1)`
-/

namespace A129308.P5181640780659682448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A195150 (n + 1) + 1)

end

end A129308.P5181640780659682448

namespace A129308

/-- `Δ[A006218(n)]-(A195150(n+1)+1)` -/
def P5181640780659682448.Spec : Prop :=
  ∀ n, P5181640780659682448.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P14317005880379797649

`A000005(n+1)-(A195150(n+1)+1)`
-/

namespace A129308.P14317005880379797649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A195150 (n + 1) + 1)

end

end A129308.P14317005880379797649

namespace A129308

/-- `A000005(n+1)-(A195150(n+1)+1)` -/
def P14317005880379797649.Spec : Prop :=
  ∀ n, P14317005880379797649.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P16155742946042010178

`A239930(n+1)-(A071325(n+1)+1)`
-/

namespace A129308.P16155742946042010178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239930 (n + 1) - (A071325 (n + 1) + 1)

end

end A129308.P16155742946042010178

namespace A129308

/-- `A239930(n+1)-(A071325(n+1)+1)` -/
def P16155742946042010178.Spec : Prop :=
  ∀ n, P16155742946042010178.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P13786785203399330865

`A334954(n+1)-(A137921(n+1)+1)`
-/

namespace A129308.P13786785203399330865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A137921 (n + 1) + 1)

end

end A129308.P13786785203399330865

namespace A129308

/-- `A334954(n+1)-(A137921(n+1)+1)` -/
def P13786785203399330865.Spec : Prop :=
  ∀ n, P13786785203399330865.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P5726749760330907469

`n-(A195150(n+1)+A049820(n+1))`
-/

namespace A129308.P5726749760330907469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A195150 (n + 1) + A049820 (n + 1))

end

end A129308.P5726749760330907469

namespace A129308

/-- `n-(A195150(n+1)+A049820(n+1))` -/
def P5726749760330907469.Spec : Prop :=
  ∀ n, P5726749760330907469.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P939484996799157851

`∑{d}[n+1, A007862(#)*A063524((n+1)/#-1)]`
-/

namespace A129308.P939484996799157851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007862 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A129308.P939484996799157851

namespace A129308

/-- `∑{d}[n+1, A007862(#)*A063524((n+1)/#-1)]` -/
def P939484996799157851.Spec : Prop :=
  ∀ n, P939484996799157851.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P12586647246588921341

`∑{d}[n+1, A000035(#-1)*A023531((n+1)/#-1)]`
-/

namespace A129308.P12586647246588921341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (d - 1) * A023531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A129308.P12586647246588921341

namespace A129308

/-- `∑{d}[n+1, A000035(#-1)*A023531((n+1)/#-1)]` -/
def P12586647246588921341.Spec : Prop :=
  ∀ n, P12586647246588921341.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P2475879853256385024

`A124625(A124625(n))+A088722(n+1)`
-/

namespace A129308.P2475879853256385024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A124625 n).toNat + A088722 (n + 1)

end

end A129308.P2475879853256385024

namespace A129308

/-- `A124625(A124625(n))+A088722(n+1)` -/
def P2475879853256385024.Spec : Prop :=
  ∀ n, P2475879853256385024.a n = A129308 (n + 1)

end A129308

/-! ## A129308.P9982419359179113046

`A000217(A000005(n+1))-A337362(n+1)`
-/

namespace A129308.P9982419359179113046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1)).toNat - A337362 (n + 1)

end

end A129308.P9982419359179113046

namespace A129308

/-- `A000217(A000005(n+1))-A337362(n+1)` -/
def P9982419359179113046.Spec : Prop :=
  ∀ n, P9982419359179113046.a n = A129308 (n + 1)

end A129308

/-!
# A129309: a(n) = number of primes which are < c(n) and are coprime to c(n), where c(n) is the n-th composite.

The programs for A129309, the canonical program `A129309.P7253575535658476897` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129309 has offset 1).

The definition of A129309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129309.P7253575535658476897

`A073256(n+1)-A048984(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A129309

/-- `A073256(n+1)-A048984(n+1)` -/
def P7253575535658476897.Spec : Prop :=
  ∀ n, P7253575535658476897.a n = A129309 (n + 1)

theorem P7253575535658476897.correct : P7253575535658476897.Spec := by
  intro n
  simp only [A129309, Nat.add_sub_cancel]

end A129309

/-! ## A129309.P5864093834145889122

`A000010(A002808(n+1))-A048984(n+1)`
-/

namespace A129309.P5864093834145889122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002808 (n + 1)).toNat - A048984 (n + 1)

end

end A129309.P5864093834145889122

namespace A129309

/-- `A000010(A002808(n+1))-A048984(n+1)` -/
def P5864093834145889122.Spec : Prop :=
  ∀ n, P5864093834145889122.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P6642301924572869325

`A073425(n+1)-A001221(A002808(n+1))`
-/

namespace A129309.P6642301924572869325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (n + 1) - A001221 (A002808 (n + 1)).toNat

end

end A129309.P6642301924572869325

namespace A129309

/-- `A073425(n+1)-A001221(A002808(n+1))` -/
def P6642301924572869325.Spec : Prop :=
  ∀ n, P6642301924572869325.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P14897869849901808427

`A048865(A002808(n+1))`
-/

namespace A129309.P14897869849901808427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A002808 (n + 1)).toNat

end

end A129309.P14897869849901808427

namespace A129309

/-- `A048865(A002808(n+1))` -/
def P14897869849901808427.Spec : Prop :=
  ∀ n, P14897869849901808427.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P4562417208358870054

`A048865(A018252(n+2))`
-/

namespace A129309.P4562417208358870054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A018252 (n + 2)).toNat

end

end A129309.P4562417208358870054

namespace A129309

/-- `A048865(A018252(n+2))` -/
def P4562417208358870054.Spec : Prop :=
  ∀ n, P4562417208358870054.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P6322890097549194576

`A048865(A065090(n+3))`
-/

namespace A129309.P6322890097549194576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A065090 (n + 3)).toNat

end

end A129309.P6322890097549194576

namespace A129309

/-- `A048865(A065090(n+3))` -/
def P6322890097549194576.Spec : Prop :=
  ∀ n, P6322890097549194576.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P18438614404175133010

`A048865(lt[1, A032741(n)])`
-/

namespace A129309.P18438614404175133010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129309.P18438614404175133010

namespace A129309

/-- `A048865(lt[1, A032741(n)])` -/
def P18438614404175133010.Spec : Prop :=
  ∀ n, P18438614404175133010.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P9369599703690148841

`A048865(A072668(n+1)+1)`
-/

namespace A129309.P9369599703690148841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A072668 (n + 1) + 1).toNat

end

end A129309.P9369599703690148841

namespace A129309

/-- `A048865(A072668(n+1)+1)` -/
def P9369599703690148841.Spec : Prop :=
  ∀ n, P9369599703690148841.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P14926996367534530313

`A048865(A060462(n+2)+1)`
-/

namespace A129309.P14926996367534530313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A060462 (n + 2) + 1).toNat

end

end A129309.P14926996367534530313

namespace A129309

/-- `A048865(A060462(n+2)+1)` -/
def P14926996367534530313.Spec : Prop :=
  ∀ n, P14926996367534530313.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P3921531853150379969

`A048865(A161537(n+1)-(n+1))`
-/

namespace A129309.P3921531853150379969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A161537 (n + 1) - (n + 1 : ℤ)).toNat

end

end A129309.P3921531853150379969

namespace A129309

/-- `A048865(A161537(n+1)-(n+1))` -/
def P3921531853150379969.Spec : Prop :=
  ∀ n, P3921531853150379969.a n = A129309 (n + 1)

end A129309

/-! ## A129309.P8196394734929609868

`A048865(lt[A006530(n+1), n]+1)`
-/

namespace A129309.P8196394734929609868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A129309.P8196394734929609868

namespace A129309

/-- `A048865(lt[A006530(n+1), n]+1)` -/
def P8196394734929609868.Spec : Prop :=
  ∀ n, P8196394734929609868.a n = A129309 (n + 1)

end A129309

/-!
# A129312: A minimal 2 X 2 subdeterminant array.

The programs for A129312, the canonical program `A129312.P3995732629114073617` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129312 has offset 1).

The definition of A129312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129312.P4951253301669366818

`n+1-C(n², 2)%comp[∑[n]]`
-/

namespace A129312.P4951253301669366818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((Nat.choose (n ^ 2) 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℤ)

end

end A129312.P4951253301669366818

namespace A129312

/-- `n+1-C(n², 2)%comp[∑[n]]` -/
def P4951253301669366818.Spec : Prop :=
  ∀ n, P4951253301669366818.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P7738824766544552201

`∑[∑[char[∑[n]]]²]%(n+1)+1+n-∑[2*n-round(sqrt(2*n))²]`
-/

namespace A129312.P7738824766544552201
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 1 + n : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f5 j

end

end A129312.P7738824766544552201

namespace A129312

/-- `∑[∑[char[∑[n]]]²]%(n+1)+1+n-∑[2*n-round(sqrt(2*n))²]` -/
def P7738824766544552201.Spec : Prop :=
  ∀ n, P7738824766544552201.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P11489654614749337274

`A141387(n)+1`
-/

namespace A129312.P11489654614749337274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + 1

end

end A129312.P11489654614749337274

namespace A129312

/-- `A141387(n)+1` -/
def P11489654614749337274.Spec : Prop :=
  ∀ n, P11489654614749337274.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P3995732629114073617

`ceil(A098353(n+1)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129312

/-- `ceil(A098353(n+1)/2)` -/
def P3995732629114073617.Spec : Prop :=
  ∀ n, P3995732629114073617.a n = A129312 (n + 1)

theorem P3995732629114073617.correct : P3995732629114073617.Spec := by
  intro n
  simp only [A129312, Nat.add_sub_cancel]

end A129312

/-! ## A129312.P6629568304008526782

`∑[char[∑[n]]]+2*A004247(n)`
-/

namespace A129312.P6629568304008526782
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A004247 n

end

end A129312.P6629568304008526782

namespace A129312

/-- `∑[char[∑[n]]]+2*A004247(n)` -/
def P6629568304008526782.Spec : Prop :=
  ∀ n, P6629568304008526782.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P13647331110618422013

`A130154(n+1)+∑[char[∑[n+1]]]`
-/

namespace A129312.P13647331110618422013
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A129312.P13647331110618422013

namespace A129312

/-- `A130154(n+1)+∑[char[∑[n+1]]]` -/
def P13647331110618422013.Spec : Prop :=
  ∀ n, P13647331110618422013.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P10731290889469952605

`2*A003991(n+1)-∑[char[∑[n]]]`
-/

namespace A129312.P10731290889469952605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A129312.P10731290889469952605

namespace A129312

/-- `2*A003991(n+1)-∑[char[∑[n]]]` -/
def P10731290889469952605.Spec : Prop :=
  ∀ n, P10731290889469952605.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P12506702486447348914

`∑[char[∑[n]]]+2*(A077028(n)-1)`
-/

namespace A129312.P12506702486447348914
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * (A077028 n - 1)

end

end A129312.P12506702486447348914

namespace A129312

/-- `∑[char[∑[n]]]+2*(A077028(n)-1)` -/
def P12506702486447348914.Spec : Prop :=
  ∀ n, P12506702486447348914.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P16269781222967302325

`A077028(n)+A059036(n)`
-/

namespace A129312.P16269781222967302325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A059036 n

end

end A129312.P16269781222967302325

namespace A129312

/-- `A077028(n)+A059036(n)` -/
def P16269781222967302325.Spec : Prop :=
  ∀ n, P16269781222967302325.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P9049697859411150414

`A176270(n)+A083381(n)`
-/

namespace A129312.P9049697859411150414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n + A083381 n

end

end A129312.P9049697859411150414

namespace A129312

/-- `A176270(n)+A083381(n)` -/
def P9049697859411150414.Spec : Prop :=
  ∀ n, P9049697859411150414.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P4299289050903018857

`A101447(n)-A002262(n)`
-/

namespace A129312.P4299289050903018857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n - A002262 n

end

end A129312.P4299289050903018857

namespace A129312

/-- `A101447(n)-A002262(n)` -/
def P4299289050903018857.Spec : Prop :=
  ∀ n, P4299289050903018857.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P6485799334729948479

`A309557(n)-A099375(n)`
-/

namespace A129312.P6485799334729948479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n - A099375 n

end

end A129312.P6485799334729948479

namespace A129312

/-- `A309557(n)-A099375(n)` -/
def P6485799334729948479.Spec : Prop :=
  ∀ n, P6485799334729948479.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P4344052686508333614

`A038572(A098353(n+1)+1)`
-/

namespace A129312.P4344052686508333614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A098353 (n + 1) + 1).toNat

end

end A129312.P4344052686508333614

namespace A129312

/-- `A038572(A098353(n+1)+1)` -/
def P4344052686508333614.Spec : Prop :=
  ∀ n, P4344052686508333614.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P5060541737999519626

`A004247(n)+A003991(n+1)`
-/

namespace A129312.P5060541737999519626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A003991 (n + 1)

end

end A129312.P5060541737999519626

namespace A129312

/-- `A004247(n)+A003991(n+1)` -/
def P5060541737999519626.Spec : Prop :=
  ∀ n, P5060541737999519626.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P6443233896316960347

`A004247(n)+A059036(n)+1`
-/

namespace A129312.P6443233896316960347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A059036 n + 1)

end

end A129312.P6443233896316960347

namespace A129312

/-- `A004247(n)+A059036(n)+1` -/
def P6443233896316960347.Spec : Prop :=
  ∀ n, P6443233896316960347.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P568888104075969051

`A128139(n)+A094053(n+1)`
-/

namespace A129312.P568888104075969051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + A094053 (n + 1)

end

end A129312.P568888104075969051

namespace A129312

/-- `A128139(n)+A094053(n+1)` -/
def P568888104075969051.Spec : Prop :=
  ∀ n, P568888104075969051.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P4173413025024161601

`A061579(n)+1-A335262(n)`
-/

namespace A129312.P4173413025024161601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + (1 - A335262 n)

end

end A129312.P4173413025024161601

namespace A129312

/-- `A061579(n)+1-A335262(n)` -/
def P4173413025024161601.Spec : Prop :=
  ∀ n, P4173413025024161601.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P2154692931390453426

`A057944(n)+A101447(n)-n`
-/

namespace A129312.P2154692931390453426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + (A101447 n - (n : ℤ))

end

end A129312.P2154692931390453426

namespace A129312

/-- `A057944(n)+A101447(n)-n` -/
def P2154692931390453426.Spec : Prop :=
  ∀ n, P2154692931390453426.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P13916289287275720417

`A003991(n+1)+A077028(n)-1`
-/

namespace A129312.P13916289287275720417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A077028 n - 1)

end

end A129312.P13916289287275720417

namespace A129312

/-- `A003991(n+1)+A077028(n)-1` -/
def P13916289287275720417.Spec : Prop :=
  ∀ n, P13916289287275720417.a n = A129312 (n + 1)

end A129312

/-! ## A129312.P15400693964291925257

`A101447(n)+1-A002260(n+1)`
-/

namespace A129312.P15400693964291925257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + (1 - A002260 (n + 1))

end

end A129312.P15400693964291925257

namespace A129312

/-- `A101447(n)+1-A002260(n+1)` -/
def P15400693964291925257.Spec : Prop :=
  ∀ n, P15400693964291925257.a n = A129312 (n + 1)

end A129312

/-!
# A129314: Records in A127356.

The programs for A129314, there is no canonical definition to state claims against.
-/

/-! ## A129314.P2299416083697189444

`A085099(A309179(n+1))`
-/

namespace A129314.P2299416083697189444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A309179 (n + 1)).toNat

end

end A129314.P2299416083697189444

/-! ## A129314.P1028162493251914506

`record[A085099(A000040(n+1))]`
-/

namespace A129314.P1028162493251914506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129314.P1028162493251914506

/-! ## A129314.P5087470248160076759

`record[A085099(A006005(n+1))]`
-/

namespace A129314.P5087470248160076759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129314.P5087470248160076759

/-! ## A129314.P6430903774221524092

`record[A085099(A008578(n+1))]`
-/

namespace A129314.P6430903774221524092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129314.P6430903774221524092

/-! ## A129314.P7807404239383233722

`record[A085099(A049545(n+1))]`
-/

namespace A129314.P7807404239383233722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A049545 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129314.P7807404239383233722

/-!
# A129315: Where records occur in A127356.

The programs for A129315, there is no canonical definition to state claims against.
-/

/-! ## A129315.P8386814638273911862

`A000720(A309179(n+1))`
-/

namespace A129315.P8386814638273911862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A309179 (n + 1)).toNat

end

end A129315.P8386814638273911862

/-! ## A129315.P17454754493889158650

`A061395(p?[A309179(n+1)])`
-/

namespace A129315.P17454754493889158650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A129315.P17454754493889158650

/-! ## A129315.P3778982754259639101

`A302039(p?[A309179(n+1)])`
-/

namespace A129315.P3778982754259639101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A129315.P3778982754259639101

/-! ## A129315.P3193383151079251688

`A061395(2*A309179(n+1))`
-/

namespace A129315.P3193383151079251688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A309179 (n + 1)).toNat

end

end A129315.P3193383151079251688

/-! ## A129315.P5330653453157557635

`A061395(lcm(2, A309179(n+1)))`
-/

namespace A129315.P5330653453157557635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A309179 (n + 1)))

end

end A129315.P5330653453157557635

/-!
# A129316: Positive integers k such that sopfr(k) divides sopfr(k+1), where sopfr(k) is the sum of the prime factors of k, counting multiplicity.

The programs for A129316, there is no canonical definition to state claims against.
-/

/-! ## A129316.P725357942276230506

`A129317(n+1)-1`
-/

namespace A129316.P725357942276230506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129317 (n + 1) - 1

end

end A129316.P725357942276230506

/-! ## A129316.P15091355440001596579

`A001478(n+1)+A129317(n+1)+n`
-/

namespace A129316.P15091355440001596579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A129317 (n + 1) + (n : ℤ))

end

end A129316.P15091355440001596579

/-! ## A129316.P5736458485496077425

`A138520(gcd(n, n+1))+A129317(n+1)`
-/

namespace A129316.P5736458485496077425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138520 (Nat.gcd n (n + 1)) + A129317 (n + 1)

end

end A129316.P5736458485496077425

/-! ## A129316.P11698094879979827368

`A134824(A085058(n))+A129317(n+1)`
-/

namespace A129316.P11698094879979827368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A085058 n).toNat + A129317 (n + 1)

end

end A129316.P11698094879979827368

/-! ## A129316.P9377295091514940978

`A134824(n+2)+A129317(n+1)`
-/

namespace A129316.P9377295091514940978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A129317 (n + 1)

end

end A129316.P9377295091514940978

/-! ## A129316.P8193571313365492177

`A321804(A137564(n))+A129317(n+1)`
-/

namespace A129316.P8193571313365492177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A137564 n).toNat + A129317 (n + 1)

end

end A129316.P8193571313365492177

/-! ## A129316.P9574050107364658549

`A321804(A043096(n+1))+A129317(n+1)`
-/

namespace A129316.P9574050107364658549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A043096 (n + 1)).toNat + A129317 (n + 1)

end

end A129316.P9574050107364658549

/-! ## A129316.P12889220602383962556

`A023443(A129317(n+1))`
-/

namespace A129316.P12889220602383962556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A129317 (n + 1)).toNat

end

end A129316.P12889220602383962556

/-!
# A129317: The second of the pair of consecutive integers k and k+1 such that sopfr(k) divides sopfr(k+1), where sopfr(k) is the sum of the prime factors of k, counting multiplicity.

The programs for A129317, there is no canonical definition to state claims against.
-/

/-! ## A129317.P6385729126978546244

`A129316(n+1)+1`
-/

namespace A129317.P6385729126978546244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129316 (n + 1) + 1

end

end A129317.P6385729126978546244

/-! ## A129317.P3382682358849500803

`A020725(A129316(n+1))`
-/

namespace A129317.P3382682358849500803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A129316 (n + 1)).toNat

end

end A129317.P3382682358849500803

/-!
# A129318: a(n) = sopfr(A129316(n)), where sopfr(x) is the sum of the prime factors of x, counting multiplicity.

The programs for A129318, there is no canonical definition to state claims against.
-/

/-! ## A129318.P2417483500366724658

`A129319(n+1)/A129320(n+1)`
-/

namespace A129318.P2417483500366724658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129319 (n + 1) : ℚ) / (A129320 (n + 1) : ℚ)

end

end A129318.P2417483500366724658

/-! ## A129318.P15186284594503801192

`A001414(A129316(n+1))`
-/

namespace A129318.P15186284594503801192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A129316 (n + 1)).toNat

end

end A129318.P15186284594503801192

/-! ## A129318.P11934259286223845847

`A001414(A129317(n+1)-1)`
-/

namespace A129318.P11934259286223845847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A129317 (n + 1) - 1).toNat

end

end A129318.P11934259286223845847

/-! ## A129318.P8496007766705648819

`A001414(A134824(n+2)+A129317(n+1))`
-/

namespace A129318.P8496007766705648819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A134824 (n + 2) + A129317 (n + 1)).toNat

end

end A129318.P8496007766705648819

/-! ## A129318.P7417034252052685626

`A001414(A129317(n+1))/A129320(n+1)`
-/

namespace A129318.P7417034252052685626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A129317 (n + 1)).toNat : ℚ) / (A129320 (n + 1) : ℚ)

end

end A129318.P7417034252052685626

/-! ## A129318.P16459451314466125600

`A107463(A151878(n)+A129316(n+1))`
-/

namespace A129318.P16459451314466125600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A151878 n + A129316 (n + 1)).toNat

end

end A129318.P16459451314466125600

/-! ## A129318.P5208016326975699806

`A036288(A129317(n+1)-1)-1`
-/

namespace A129318.P5208016326975699806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A129317 (n + 1) - 1).toNat - 1

end

end A129318.P5208016326975699806

/-! ## A129318.P17843775461594727024

`A107463(2*A129316(n+1))-2`
-/

namespace A129318.P17843775461594727024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * A129316 (n + 1)).toNat - 2

end

end A129318.P17843775461594727024

/-!
# A129319: a(n) = sopfr(A129317(n)), where sopfr(x) is the sum of the prime factors of x, counting multiplicity.

The programs for A129319, there is no canonical definition to state claims against.
-/

/-! ## A129319.P17151584957161522897

`A129318(n+1)*A129320(n+1)`
-/

namespace A129319.P17151584957161522897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129318 (n + 1) * A129320 (n + 1)

end

end A129319.P17151584957161522897

/-! ## A129319.P15328688157933757333

`A001414(A129317(n+1))`
-/

namespace A129319.P15328688157933757333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A129317 (n + 1)).toNat

end

end A129319.P15328688157933757333

/-! ## A129319.P14093357808327850197

`A001414(A129316(n+1)+1)`
-/

namespace A129319.P14093357808327850197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A129316 (n + 1) + 1).toNat

end

end A129319.P14093357808327850197

/-! ## A129319.P10511473061694181280

`A107463(A129316(n+1)+1)`
-/

namespace A129319.P10511473061694181280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A129316 (n + 1) + 1).toNat

end

end A129319.P10511473061694181280

/-! ## A129319.P14655039513555821498

`A107463(root(A129317(n+1), 2)²)`
-/

namespace A129319.P14655039513555821498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.roundAway (((A129317 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A129319.P14655039513555821498

/-! ## A129319.P17147319244892078682

`A107463(A129317(n+1)-char[1])`
-/

namespace A129319.P17147319244892078682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A129317 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A129319.P17147319244892078682

/-! ## A129319.P14169938491340290220

`∑{d}[A107463(A129317(n+1)), A000010(#)]`
-/

namespace A129319.P14169938491340290220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A129317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129319.P14169938491340290220

/-! ## A129319.P17913654826727817525

`A107463(A129317(n+1)%A071700(n+1))`
-/

namespace A129319.P17913654826727817525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (Int.tmod (A129317 (n + 1)) (A071700 (n + 1))).toNat

end

end A129319.P17913654826727817525

/-! ## A129319.P5607577362169175311

`A107463(A129317(n+1))%A199990(n+1)`
-/

namespace A129319.P5607577362169175311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107463 (A129317 (n + 1)).toNat) (A199990 (n + 1))

end

end A129319.P5607577362169175311

/-! ## A129319.P4460810021942363344

`A014963(15*(n+1))*A107463(A129317(n+1))`
-/

namespace A129319.P4460810021942363344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A107463 (A129317 (n + 1)).toNat

end

end A129319.P4460810021942363344

/-!
# A129320: a(n) = A129319(n)/A129318(n).

The programs for A129320, there is no canonical definition to state claims against.
-/

/-! ## A129320.P16801677454607235030

`A129319(n+1)/A129318(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129320.P16801677454607235030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129319 (n + 1) : ℚ) / (A129318 (n + 1) : ℚ)

end

end A129320.P16801677454607235030

/-! ## A129320.P3828544733189647521

`A001414(A129317(n+1))/A129318(n+1)`
-/

namespace A129320.P3828544733189647521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A129317 (n + 1)).toNat : ℚ) / (A129318 (n + 1) : ℚ)

end

end A129320.P3828544733189647521

/-! ## A129320.P16156403640339710852

`A129319(n+1)/A001414(A129316(n+1))`
-/

namespace A129320.P16156403640339710852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129319 (n + 1) : ℚ) / (A001414 (A129316 (n + 1)).toNat : ℚ)

end

end A129320.P16156403640339710852

/-! ## A129320.P85691873038000504

`A001414(A129316(n+1)+1)/A129318(n+1)`
-/

namespace A129320.P85691873038000504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A129316 (n + 1) + 1).toNat : ℚ) / (A129318 (n + 1) : ℚ)

end

end A129320.P85691873038000504

/-! ## A129320.P4968199631828331247

`A001414(A129317(n+1))/A001414(A129316(n+1))`
-/

namespace A129320.P4968199631828331247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A129317 (n + 1)).toNat : ℚ) / (A001414 (A129316 (n + 1)).toNat : ℚ)

end

end A129320.P4968199631828331247

/-!
# A129322: Triangle where the n-th row lists the smallest n positive integers which are coprime to the n-th Fibonacci number.

The programs for A129322, there is no canonical definition to state claims against.
-/

/-! ## A129322.P7773323330102170800

`A082647(A025747(n)^A166124(n))`
-/

namespace A129322.P7773323330102170800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (SequenceMachineLib.roundAway ((A025747 n : ℚ) ^ (A166124 n : ℤ))).toNat

end

end A129322.P7773323330102170800

/-! ## A129322.P16199790774733601262

`A002262(n)+A000688(A042389(n))`
-/

namespace A129322.P16199790774733601262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000688 (A042389 n).toNat

end

end A129322.P16199790774733601262

/-! ## A129322.P17810077283594608178

`A333805(A333429(n+1)+A211367(n+1))`
-/

namespace A129322.P17810077283594608178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A333429 (n + 1) + A211367 (n + 1)).toNat

end

end A129322.P17810077283594608178

/-! ## A129322.P14625359765078774379

`A004709(A120945(2*n+1))%6`
-/

namespace A129322.P14625359765078774379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004709 (A120945 (2 * n + 1)).toNat) 6

end

end A129322.P14625359765078774379

/-! ## A129322.P8124646618277772126

`gcd(A001511(A322230(n)), A027480(n))`
-/

namespace A129322.P8124646618277772126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001511 (A322230 n).toNat) (A027480 n)

end

end A129322.P8124646618277772126

/-!
# A129323: Second column of PE^2.

The programs for A129323, there is no canonical definition to state claims against.
-/

/-! ## A129323.P13335918380938117588

`A001861(abs(1-n))*n`
-/

namespace A129323.P13335918380938117588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001861 |1 - (n : ℤ)|.toNat * (n : ℤ)

end

end A129323.P13335918380938117588

/-! ## A129323.P5918789405264445114

`n*A189233(∑[n+1]+2)`
-/

namespace A129323.P5918789405264445114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A129323.P5918789405264445114

/-! ## A129323.P17839816539786420724

`n*A292860(A027379(n))`
-/

namespace A129323.P17839816539786420724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292860 (A027379 n).toNat

end

end A129323.P17839816539786420724

/-! ## A129323.P16797862557795252709

`n*A292860(A055998(n))`
-/

namespace A129323.P16797862557795252709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292860 (A055998 n).toNat

end

end A129323.P16797862557795252709

/-! ## A129323.P12818829039012003931

`record[A123578(n)*A336345(n)]`
-/

namespace A129323.P12818829039012003931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n * A336345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129323.P12818829039012003931

/-!
# A129324: Third column of PE^2.

The programs for A129324, there is no canonical definition to state claims against.
-/

/-! ## A129324.P15041945580466418894

`C(n, 2)*A001861(floor(n-atan(n)))`
-/

namespace A129324.P15041945580466418894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A001861 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A129324.P15041945580466418894

/-! ## A129324.P14970009648529134809

`A161680(n)*A189233(∑[n]+2)`
-/

namespace A129324.P14970009648529134809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A189233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A129324.P14970009648529134809

/-! ## A129324.P4714110066205465194

`(∑[n]-n)*A189233(A133263(n))`
-/

namespace A129324.P4714110066205465194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * A189233 (A133263 n).toNat

end

end A129324.P4714110066205465194

/-! ## A129324.P4182065143604794473

`A001861(A289207(n))*A161680(n)`
-/

namespace A129324.P4182065143604794473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001861 (A289207 n).toNat * A161680 n

end

end A129324.P4182065143604794473

/-! ## A129324.P5106570682701741926

`A078937(A133263(n))%A000108(2*n)`
-/

namespace A129324.P5106570682701741926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078937 (A133263 n).toNat) (A000108 (2 * n))

end

end A129324.P5106570682701741926

/-!
# A129325: Fourth column of PE^2.

The programs for A129325, there is no canonical definition to state claims against.
-/

/-! ## A129325.P13346899806420807262

`n/3*A129324(abs(1-n))`
-/

namespace A129325.P13346899806420807262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A129324 |1 - (n : ℤ)|.toNat : ℚ)

end

end A129325.P13346899806420807262

/-! ## A129325.P11536321436592607178

`round(sqrt(∑[2*n])/e)!!!*A000313(n+1)`
-/

namespace A129325.P11536321436592607178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.exp 1)).toNat)) : ℤ) * A000313 (n + 1)

end

end A129325.P11536321436592607178

/-! ## A129325.P12472142237324095559

`A239516(A004687(n+1))`
-/

namespace A129325.P12472142237324095559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239516 (A004687 (n + 1)).toNat

end

end A129325.P12472142237324095559

/-!
# A129326: a(n) = (2*n+1)*(n-1)!.

The programs for A129326, there is no canonical definition to state claims against.
-/

/-! ## A129326.P11277629561409480259

`(2*n+3)*n!`
-/

namespace A129326.P11277629561409480259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * Nat.factorial n

end

end A129326.P11277629561409480259

/-! ## A129326.P10025782580268687725

`n!*Δ[record[(n-1)²]]`
-/

namespace A129326.P10025782580268687725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A129326.P10025782580268687725

/-! ## A129326.P1693511356211940242

`n!*record[abs(2*n-3)]`
-/

namespace A129326.P1693511356211940242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129326.P1693511356211940242

/-! ## A129326.P16430751202553695647

`(ratio[n+1]+1)*∏[n+1]`
-/

namespace A129326.P16430751202553695647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 1) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A129326.P16430751202553695647

/-! ## A129326.P12566915183015581121

`(n+1)!+(n+1)!+n!`
-/

namespace A129326.P12566915183015581121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + (Nat.factorial (n + 1) + Nat.factorial n)

end

end A129326.P12566915183015581121

/-! ## A129326.P14830422487527913124

`abs((2*n+3)*∏[floor(acot(n)-n)])`
-/

namespace A129326.P14830422487527913124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 3 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)|

end

end A129326.P14830422487527913124

/-! ## A129326.P7939080896305460264

`a(n-1)+(n²-1)*a(n-2)` with `a(0)=3, a(1)=5`
-/

namespace A129326.P7939080896305460264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 1) + ((n ^ 2 : ℤ) - 1) * a (n - 2)

end

end A129326.P7939080896305460264

/-! ## A129326.P7276021688136496806

`a(n-1)-(a(n-2)-n²*a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A129326.P7276021688136496806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 1) - (a (n - 2) - (n ^ 2 : ℤ) * a (n - 2))

end

end A129326.P7276021688136496806

/-! ## A129326.P8319827605904577864

`(n+1)*a(n-1)-a(n-1)/(2*n+1)` with `a(0)=3`
-/

namespace A129326.P8319827605904577864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1 : ℚ) * a (n - 1) - a (n - 1) / (2 * n + 1 : ℚ)

end

end A129326.P8319827605904577864

/-! ## A129326.P15657415883202506877

`A052849(n+1)+A000142(n)`
-/

namespace A129326.P15657415883202506877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 (n + 1) + A000142 n

end

end A129326.P15657415883202506877

/-!
# A129327: Second column of PE^3.

The programs for A129327, there is no canonical definition to state claims against.
-/

/-! ## A129327.P790095172818426469

`n/2*A068199(n)`
-/

namespace A129327.P790095172818426469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A068199 n : ℚ)

end

end A129327.P790095172818426469

/-! ## A129327.P14566191105282909972

`n*A027710(abs(1-n))`
-/

namespace A129327.P14566191105282909972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027710 |1 - (n : ℤ)|.toNat

end

end A129327.P14566191105282909972

/-! ## A129327.P5149341300050022915

`n*A292860(A046691(n+1))`
-/

namespace A129327.P5149341300050022915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292860 (A046691 (n + 1)).toNat

end

end A129327.P5149341300050022915

/-! ## A129327.P10958098851240487521

`n*A292860(A052905(n)+1)`
-/

namespace A129327.P10958098851240487521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292860 (A052905 n + 1).toNat

end

end A129327.P10958098851240487521

/-! ## A129327.P15798494720759130049

`n*A189233(A167614(n+1))`
-/

namespace A129327.P15798494720759130049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189233 (A167614 (n + 1)).toNat

end

end A129327.P15798494720759130049

/-!
# A129328: Third column of PE^3.

The programs for A129328, there is no canonical definition to state claims against.
-/

/-! ## A129328.P9186089321725256581

`C(n, 2)*A027710(floor(n-atan(n)))`
-/

namespace A129328.P9186089321725256581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A027710 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A129328.P9186089321725256581

/-! ## A129328.P5781538600832885934

`C(n, 2)*A027710(A289207(n))`
-/

namespace A129328.P5781538600832885934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A027710 (A289207 n).toNat

end

end A129328.P5781538600832885934

/-! ## A129328.P8496271992759110131

`C(n, 2)*A292860(abs(A046691(n)))`
-/

namespace A129328.P8496271992759110131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A292860 |A046691 n|.toNat

end

end A129328.P8496271992759110131

/-! ## A129328.P14946322864052565748

`A078938(A133263(n))%A367923(n)`
-/

namespace A129328.P14946322864052565748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078938 (A133263 n).toNat) (A367923 n)

end

end A129328.P14946322864052565748

/-!
# A129329: Fourth column of PE^3.

The programs for A129329, there is no canonical definition to state claims against.
-/

/-! ## A129329.P7319118266980748468

`n/3*A129328(abs(1-n))`
-/

namespace A129329.P7319118266980748468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A129328 |1 - (n : ℤ)|.toNat : ℚ)

end

end A129329.P7319118266980748468

/-! ## A129329.P14571255322561905437

`A181169(A229472(n+2))`
-/

namespace A129329.P14571255322561905437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181169 (A229472 (n + 2)).toNat

end

end A129329.P14571255322561905437

/-! ## A129329.P6875155401488642492

`A025444(n*A120897(n))`
-/

namespace A129329.P6875155401488642492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 ((n : ℤ) * A120897 n).toNat

end

end A129329.P6875155401488642492

/-!
# A129330: Partial sums of A032598.

The programs for A129330, there is no canonical definition to state claims against.
-/

/-! ## A129330.P14333112198209126675

`∑[A032598(n+1)]`
-/

namespace A129330.P14333112198209126675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P14333112198209126675

/-! ## A129330.P15615026183554605422

`∑[A000959(n+1)²]`
-/

namespace A129330.P15615026183554605422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P15615026183554605422

/-! ## A129330.P12840210677609363680

`∑[(A139269(n+1)/2)²]`
-/

namespace A129330.P12840210677609363680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139269 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P12840210677609363680

/-! ## A129330.P9029184832639837238

`∑[(2*A049781(n+1)-1)²]`
-/

namespace A129330.P9029184832639837238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A049781 (n + 1) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P9029184832639837238

/-! ## A129330.P2369831815041326645

`∑[A000959(1-(n-2*n))^2]`
-/

namespace A129330.P2369831815041326645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P2369831815041326645

/-! ## A129330.P2349153055836483376

`∑[A032599(n+1)/A000959(n+1)]`
-/

namespace A129330.P2349153055836483376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℚ) / (A000959 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P2349153055836483376

/-! ## A129330.P10034081116971994941

`∑[(A032600(n+1)+A000040(n+1))²]`
-/

namespace A129330.P10034081116971994941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032600 (n + 1) + A000040 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P10034081116971994941

/-! ## A129330.P2118074410913025173

`∑[(A000040(n+1)-A032602(n+1))²]`
-/

namespace A129330.P2118074410913025173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A032602 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P2118074410913025173

/-! ## A129330.P9503280512853401362

`∑[(A032601(n+1)/A000040(n+1))²]`
-/

namespace A129330.P9503280512853401362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P9503280512853401362

/-! ## A129330.P5582208572399478637

`∑[record[n*A145649(n+1)+1]²]`
-/

namespace A129330.P5582208572399478637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P5582208572399478637

/-! ## A129330.P16145766192052321327

`∑[record[n*A145649(n+1)+1]*A000959(n+1)]`
-/

namespace A129330.P16145766192052321327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P16145766192052321327

/-! ## A129330.P17289466638819403294

`∑[A000265(A139269(n+1))²]`
-/

namespace A129330.P17289466638819403294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A139269 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P17289466638819403294

/-! ## A129330.P1324537516092608195

`∑[(A003309(n+1)-A256486(n+1))²]`
-/

namespace A129330.P1324537516092608195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 1) - A256486 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P1324537516092608195

/-! ## A129330.P9190477674734517731

`∑[record[(n+1)/A260429(n+1)]²]`
-/

namespace A129330.P9190477674734517731
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P9190477674734517731

/-! ## A129330.P11266513780215031199

`∑[(eq[1, A042968(A260429(n+1)+1)-1]+1)²]`
-/

namespace A129330.P11266513780215031199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A260429 (n + 1) + 1).toNat - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P11266513780215031199

/-! ## A129330.P4184543670940166502

`∑[record[(n+1)/A260429(n+1)]*A000959(n+1)]`
-/

namespace A129330.P4184543670940166502
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (A000959 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P4184543670940166502

/-! ## A129330.P3108409676478237377

`∑[lt[A264940(abs(1-n)+1), 1]²]`
-/

namespace A129330.P3108409676478237377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (|1 - (n : ℤ)| + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P3108409676478237377

/-! ## A129330.P1677380447214026355

`∑[(eq[1, A264940(n+1)+1]+1)²]`
-/

namespace A129330.P1677380447214026355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P1677380447214026355

/-! ## A129330.P8651254158408057870

`∑[(eq[1, A264940(n+1)+1]+1)*A000959(n+1)]`
-/

namespace A129330.P8651254158408057870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) * A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P8651254158408057870

/-! ## A129330.P8100555337462922433

`∑[A000720(A032605(n+1))²]`
-/

namespace A129330.P8100555337462922433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A032605 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129330.P8100555337462922433

/-!
# A129331: Second column of PE^4.

The programs for A129331, there is no canonical definition to state claims against.
-/

/-! ## A129331.P1917304650337972566

`n*A078944(abs(1-n))`
-/

namespace A129331.P1917304650337972566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A078944 |1 - (n : ℤ)|.toNat

end

end A129331.P1917304650337972566

/-! ## A129331.P11786054139711874487

`n*A292860(A052905(n+1))`
-/

namespace A129331.P11786054139711874487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292860 (A052905 (n + 1)).toNat

end

end A129331.P11786054139711874487

/-! ## A129331.P8985269157496053589

`n*A189233(A141214(n)+7)`
-/

namespace A129331.P8985269157496053589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189233 (A141214 n + 7).toNat

end

end A129331.P8985269157496053589

/-! ## A129331.P10411053663485419682

`n*A189233(A052905(n)+9)`
-/

namespace A129331.P10411053663485419682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189233 (A052905 n + 9).toNat

end

end A129331.P10411053663485419682

/-! ## A129331.P17322714765291818450

`n*A189233(A055999(n)+10)`
-/

namespace A129331.P17322714765291818450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189233 (A055999 n + 10).toNat

end

end A129331.P17322714765291818450

/-!
# A129332: Third column of PE^4.

The programs for A129332, there is no canonical definition to state claims against.
-/

/-! ## A129332.P8864671147652249594

`C(n, 2)*A078944(floor(n-atan(n)))`
-/

namespace A129332.P8864671147652249594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A078944 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A129332.P8864671147652249594

/-! ## A129332.P12265553080495095195

`(∑[n]-n)*A292860(A052905(n))`
-/

namespace A129332.P12265553080495095195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * A292860 (A052905 n).toNat

end

end A129332.P12265553080495095195

/-! ## A129332.P11090722522576861748

`(∑[n]-n)*A078944(A289207(n))`
-/

namespace A129332.P11090722522576861748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * A078944 (A289207 n).toNat

end

end A129332.P11090722522576861748

/-! ## A129332.P15710119731770024825

`C(n, 2)*A292860(A055999(n)+1)`
-/

namespace A129332.P15710119731770024825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A292860 (A055999 n + 1).toNat

end

end A129332.P15710119731770024825

/-! ## A129332.P17464885878331661318

`A078944(A289207(n))*A161680(n)`
-/

namespace A129332.P17464885878331661318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078944 (A289207 n).toNat * A161680 n

end

end A129332.P17464885878331661318

/-!
# A129333: Fourth column of PE^4.

The programs for A129333, there is no canonical definition to state claims against.
-/

/-! ## A129333.P6591188234470052051

`n/3*A129332(abs(1-n))`
-/

namespace A129333.P6591188234470052051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A129332 |1 - (n : ℤ)|.toNat : ℚ)

end

end A129333.P6591188234470052051

/-! ## A129333.P5710977346667102882

`A078939(A152950(n+1))%A025164(n)`
-/

namespace A129333.P5710977346667102882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078939 (A152950 (n + 1)).toNat) (A025164 n)

end

end A129333.P5710977346667102882

/-! ## A129333.P15515749270095465940

`A099377(A304185(n))-A283435(n)`
-/

namespace A129333.P15515749270095465940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A304185 n).toNat - A283435 n

end

end A129333.P15515749270095465940

/-!
# A129334: Triangle T(n,k) read by rows: inverse of the matrix PE = exp(P)/exp(1) given in A011971.

The programs for A129334, there is no canonical definition to state claims against.
-/

/-! ## A129334.P7237998121377202254

`A007318(n)*A000587(A025581(n))`
-/

namespace A129334.P7237998121377202254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000587 (A025581 n).toNat

end

end A129334.P7237998121377202254

/-! ## A129334.P2707573578217957323

`A007318(n)*A320835(A130321(n))`
-/

namespace A129334.P2707573578217957323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A320835 (A130321 n).toNat

end

end A129334.P2707573578217957323

/-! ## A129334.P16826674754451791031

`abs(A108086(n))*A000587(A025581(n))`
-/

namespace A129334.P16826674754451791031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A000587 (A025581 n).toNat

end

end A129334.P16826674754451791031

/-! ## A129334.P18283100353773369609

`abs(A130595(n))*A000587(A025581(n))`
-/

namespace A129334.P18283100353773369609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A000587 (A025581 n).toNat

end

end A129334.P18283100353773369609

/-! ## A129334.P1122743662423441926

`Δ[A102363(n)]*A000587(A025581(n))`
-/

namespace A129334.P1122743662423441926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000587 (A025581 n).toNat

end

end A129334.P1122743662423441926

/-! ## A129334.P2454443031920786496

`A000587(A025660(n+1))*A007318(n)`
-/

namespace A129334.P2454443031920786496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (A025660 (n + 1)).toNat * A007318 n

end

end A129334.P2454443031920786496

/-! ## A129334.P5286105310319134823

`abs(A130595(n))*A000587(A025660(n+1))`
-/

namespace A129334.P5286105310319134823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A000587 (A025660 (n + 1)).toNat

end

end A129334.P5286105310319134823

/-! ## A129334.P6801208246878352155

`sqrt(A008459(n))*A000587(A025660(n+1))`
-/

namespace A129334.P6801208246878352155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000587 (A025660 (n + 1)).toNat : ℝ)

end

end A129334.P6801208246878352155

/-! ## A129334.P13635950378023539079

`A000587(A004736(n+1)-1)*A007318(n)`
-/

namespace A129334.P13635950378023539079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (A004736 (n + 1) - 1).toNat * A007318 n

end

end A129334.P13635950378023539079

/-! ## A129334.P12426618569987921230

`A000587(A025581(n))*A123920(A131060(n))`
-/

namespace A129334.P12426618569987921230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (A025581 n).toNat * A123920 (A131060 n).toNat

end

end A129334.P12426618569987921230

/-!
# A129335: a(n) = phi(n!!) where phi is the Euler totient function. In other words, a(n) = A000010(A006882(n)).

The programs for A129335, there is no canonical definition to state claims against.
-/

/-! ## A129335.P3554373672468156543

`A000010(∏[(n+1)/a(n-1)])` with `a(0)=1`
-/

namespace A129335.P3554373672468156543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A129335.P3554373672468156543

/-! ## A129335.P14343053881208023340

`A000010(record[n*a(n-2)])` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A129335.P14343053881208023340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 3] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A129335.P14343053881208023340

/-! ## A129335.P4463030827976284882

`A000010(∪[2^n*n!, ∏[Δ[n²]]])`
-/

namespace A129335.P4463030827976284882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A129335.P4463030827976284882

/-! ## A129335.P1837301387639134624

`A062570(A081405(n))`
-/

namespace A129335.P1837301387639134624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A081405 n).toNat

end

end A129335.P1837301387639134624

/-! ## A129335.P14208364530661336963

`A000010(A248809(∑[n]))`
-/

namespace A129335.P14208364530661336963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A248809 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A129335.P14208364530661336963

/-!
# A129336: Digital clock semiprimes.

The programs for A129336, there is no canonical definition to state claims against.
-/

/-! ## A129336.P5216018025939069287

`filter[A055643(n+1), A064911(#)]`
-/

namespace A129336.P5216018025939069287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A129336.P5216018025939069287

/-! ## A129336.P15139868450960096993

`∩[A001358(n+1), A055643(n)]`
-/

namespace A129336.P15139868450960096993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129336.P15139868450960096993

/-! ## A129336.P1938734018286830481

`∩[A186621(n+1)+1, A055643(n)]`
-/

namespace A129336.P1938734018286830481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129336.P1938734018286830481

/-! ## A129336.P9659185630706154248

`∩[A088707(n+1)-1, A055643(n)]`
-/

namespace A129336.P9659185630706154248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129336.P9659185630706154248

/-! ## A129336.P9748795591463717190

`∩[A055643(n), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A129336.P9748795591463717190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129336.P9748795591463717190

/-! ## A129336.P8129472189435560937

`∩[A055643(n), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A129336.P8129472189435560937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129336.P8129472189435560937

/-! ## A129336.P5776099014873752846

`A055643(eq[2, A226378(A055643(n))])`
-/

namespace A129336.P5776099014873752846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A055643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129336.P5776099014873752846

/-! ## A129336.P966051907812881599

`A055643(eq[2, A166974(A055643(n))])`
-/

namespace A129336.P966051907812881599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 (A055643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129336.P966051907812881599

/-!
# A129338: Absolute primes, alternative definition: every permutation of digits is a prime and there are at least two different digits.

The programs for A129338, there is no canonical definition to state claims against.
-/

/-! ## A129338.P2526996905907647702

`A317688(n+5)`
-/

namespace A129338.P2526996905907647702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317688 (n + 5)

end

end A129338.P2526996905907647702

/-! ## A129338.P15002295702425302930

`A003459(n+6)`
-/

namespace A129338.P15002295702425302930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (n + 6)

end

end A129338.P15002295702425302930

/-! ## A129338.P1033068966975918161

`Δ[A172059(n+5)]`
-/

namespace A129338.P1033068966975918161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172059 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129338.P1033068966975918161

/-! ## A129338.P6419670291396493417

`p?[A272022(n+1)]`
-/

namespace A129338.P6419670291396493417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129338.P6419670291396493417

/-! ## A129338.P9973220987427344190

`p?[A354745(n+1)]`
-/

namespace A129338.P9973220987427344190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129338.P9973220987427344190

/-!
# A129339: Main diagonal of triangular array T: T(j,1) = 1 for ((j-1) mod 6) < 3, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

The programs for A129339, the canonical program `A129339.P11906987138046098328` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129339 has offset 1).

The definition of A129339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129339.P11906987138046098328

`5*a(n-1)-9*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129339

/-- `5*a(n-1)-9*a(n-2)+6*a(n-3)` -/
def P11906987138046098328.Spec : Prop :=
  ∀ n, P11906987138046098328.a n = A129339 (n + 1)

theorem P11906987138046098328.correct : P11906987138046098328.Spec := by
  intro n
  simp only [A129339, Nat.add_sub_cancel]

end A129339

/-! ## A129339.P2548709305854911819

`A131023(n)+a(n-1)` with `a(0)=1`
-/

namespace A129339.P2548709305854911819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131023 n + a (n - 1)

end

end A129339.P2548709305854911819

namespace A129339

/-- `A131023(n)+a(n-1)` -/
def P2548709305854911819.Spec : Prop :=
  ∀ n, P2548709305854911819.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P5704726281570997981

`a(n-1)+Δ[A103312(n)]+a(n-1)` with `a(0)=1`
-/

namespace A129339.P5704726281570997981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n + a (n - 1))

end

end A129339.P5704726281570997981

namespace A129339

/-- `a(n-1)+Δ[A103312(n)]+a(n-1)` -/
def P5704726281570997981.Spec : Prop :=
  ∀ n, P5704726281570997981.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P9867764535932472961

`∑[A131023(A028310(n))]`
-/

namespace A129339.P9867764535932472961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131023 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129339.P9867764535932472961

namespace A129339

/-- `∑[A131023(A028310(n))]` -/
def P9867764535932472961.Spec : Prop :=
  ∀ n, P9867764535932472961.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P14832450107706180901

`A057682(n)+A011782(n)`
-/

namespace A129339.P14832450107706180901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n + A011782 n

end

end A129339.P14832450107706180901

namespace A129339

/-- `A057682(n)+A011782(n)` -/
def P14832450107706180901.Spec : Prop :=
  ∀ n, P14832450107706180901.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P3876345870856368086

`A227430(n)+A119336(n)`
-/

namespace A129339.P3876345870856368086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 n + A119336 n

end

end A129339.P3876345870856368086

namespace A129339

/-- `A227430(n)+A119336(n)` -/
def P3876345870856368086.Spec : Prop :=
  ∀ n, P3876345870856368086.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P9871823220360693318

`A011782(n)-Δ[Δ[A057681(n)]]`
-/

namespace A129339.P9871823220360693318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (f1 (n + 1) - f1 n)

end

end A129339.P9871823220360693318

namespace A129339

/-- `A011782(n)-Δ[Δ[A057681(n)]]` -/
def P9871823220360693318.Spec : Prop :=
  ∀ n, P9871823220360693318.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P6986447178294080478

`A131023(n+1)-Δ[A057681(n)]`
-/

namespace A129339.P6986447178294080478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131023 (n + 1) - (f1 (n + 1) - f1 n)

end

end A129339.P6986447178294080478

namespace A129339

/-- `A131023(n+1)-Δ[A057681(n)]` -/
def P6986447178294080478.Spec : Prop :=
  ∀ n, P6986447178294080478.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P5517664466302604235

`A227430(n)+Δ[A227430(n+1)]`
-/

namespace A129339.P5517664466302604235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 n + (f1 (n + 1) - f1 n)

end

end A129339.P5517664466302604235

namespace A129339

/-- `A227430(n)+Δ[A227430(n+1)]` -/
def P5517664466302604235.Spec : Prop :=
  ∀ n, P5517664466302604235.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P9805897605602191123

`Δ[A057681(n)+floor(2^(n-1))-A057681(n+1)]`
-/

namespace A129339.P9805897605602191123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A057681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129339.P9805897605602191123

namespace A129339

/-- `Δ[A057681(n)+floor(2^(n-1))-A057681(n+1)]` -/
def P9805897605602191123.Spec : Prop :=
  ∀ n, P9805897605602191123.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P4157826346489260721

`A088911(n+1)+A131024(n+1)-A131023(n+1)`
-/

namespace A129339.P4157826346489260721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n + 1) + (A131024 (n + 1) - A131023 (n + 1))

end

end A129339.P4157826346489260721

namespace A129339

/-- `A088911(n+1)+A131024(n+1)-A131023(n+1)` -/
def P4157826346489260721.Spec : Prop :=
  ∀ n, P4157826346489260721.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P5668625335816644681

`A131022(∑[n+1])`
-/

namespace A129339.P5668625335816644681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131022 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129339.P5668625335816644681

namespace A129339

/-- `A131022(∑[n+1])` -/
def P5668625335816644681.Spec : Prop :=
  ∀ n, P5668625335816644681.a n = A129339 (n + 1)

end A129339

/-! ## A129339.P778213222523794008

`record[A131022(n+1)/A131032(n+1)]`
-/

namespace A129339.P778213222523794008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131022 (n + 1) : ℚ) / (A131032 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129339.P778213222523794008

namespace A129339

/-- `record[A131022(n+1)/A131032(n+1)]` -/
def P778213222523794008.Spec : Prop :=
  ∀ n, P778213222523794008.a n = (A129339 (n + 1) : ℚ)

end A129339

/-! ## A129339.P8168339037801555476

`record[A131022(n+1)/A131033(n+1)]`
-/

namespace A129339.P8168339037801555476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131022 (n + 1) : ℚ) / (A131033 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129339.P8168339037801555476

namespace A129339

/-- `record[A131022(n+1)/A131033(n+1)]` -/
def P8168339037801555476.Spec : Prop :=
  ∀ n, P8168339037801555476.a n = (A129339 (n + 1) : ℚ)

end A129339

/-!
# A129340: Triangular array read by rows: for n, k >= 1, a(n+1, 1) = 2*a(n, n); a(n+1, k+1) = a(n, k)+a(n+1, k).

The programs for A129340, there is no canonical definition to state claims against.
-/

/-! ## A129340.P8931942219714392541

`A000194(A046682(n+3)*A276586(n))`
-/

namespace A129340.P8931942219714392541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A046682 (n + 3) * A276586 n).toNat

end

end A129340.P8931942219714392541

/-! ## A129340.P3656097057349622777

`A275951(n+1)-A275964(A275936(2*(n+1)))`
-/

namespace A129340.P3656097057349622777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (n + 1) - A275964 (A275936 (2 * (n + 1))).toNat

end

end A129340.P3656097057349622777

/-! ## A129340.P8247948053814349371

`A055571(A259691(n)+A011972(n))`
-/

namespace A129340.P8247948053814349371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A259691 n + A011972 n).toNat

end

end A129340.P8247948053814349371

/-! ## A129340.P2648156716742916902

`A055571(A056857(n+1)+A011972(n))`
-/

namespace A129340.P2648156716742916902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A056857 (n + 1) + A011972 n).toNat

end

end A129340.P2648156716742916902

/-!
# A129341: Numbers k such that k-th and (k+1)-th triangular numbers have no common digit.

The programs for A129341, there is no canonical definition to state claims against.
-/

/-! ## A129341.P2124211670765439983

`eq[A196563(A002378(n)), A321144(2*(n+1))]`
-/

namespace A129341.P2124211670765439983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A002378 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321144 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129341.P2124211670765439983

/-!
# A129342: a(2n) = a(n) + 2^(2n), a(2n+1) = 2^(2n+1).

The programs for A129342, the canonical program `A129342.P16841337193408054692` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129342 has offset 0).

The definition of A129342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129342.P16841337193408054692

`a(∑[n]%n)+2^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129342

/-- `a(∑[n]%n)+2^n` -/
def P16841337193408054692.Spec : Prop :=
  ∀ n, (P16841337193408054692.a n : ℤ) = A129342 n

theorem P16841337193408054692.correct : P16841337193408054692.Spec := by
  intro n
  simp only [A129342]

end A129342

/-! ## A129342.P2931340773242678462

`a(n-gcd(n, ∑[n]))+2^n` with `a(0)=0`
-/

namespace A129342.P2931340773242678462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) + 2 ^ n

end

end A129342.P2931340773242678462

namespace A129342

/-- `a(n-gcd(n, ∑[n]))+2^n` -/
def P2931340773242678462.Spec : Prop :=
  ∀ n, (P2931340773242678462.a n : ℤ) = A129342 n

end A129342

/-! ## A129342.P18359080123537843975

`a(floor(C(or(1, n), n)/2))+2^n` with `a(0)=0`
-/

namespace A129342.P18359080123537843975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌋.toNat + 2 ^ n

end

end A129342.P18359080123537843975

namespace A129342

/-- `a(floor(C(or(1, n), n)/2))+2^n` -/
def P18359080123537843975.Spec : Prop :=
  ∀ n, (P18359080123537843975.a n : ℤ) = A129342 n

end A129342

/-! ## A129342.P8435816856239651948

`a((n+1)%2*n/2)+2^n` with `a(0)=0`
-/

namespace A129342.P8435816856239651948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((((n + 1) % 2 : ℕ) : ℚ) * ((n : ℚ) / 2))).toNat + 2 ^ n

end

end A129342.P8435816856239651948

namespace A129342

/-- `a((n+1)%2*n/2)+2^n` -/
def P8435816856239651948.Spec : Prop :=
  ∀ n, (P8435816856239651948.a n : ℤ) = A129342 n

end A129342

/-! ## A129342.P12841143812250988833

`∑{d}[n, A045663(#)]`
-/

namespace A129342.P12841143812250988833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045663 d

end

end A129342.P12841143812250988833

namespace A129342

/-- `∑{d}[n, A045663(#)]` -/
def P12841143812250988833.Spec : Prop :=
  ∀ n, P12841143812250988833.a n = A129342 n

end A129342

/-! ## A129342.P7648478354328653594

`or(1, A045654(n))-1`
-/

namespace A129342.P7648478354328653594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045654 n) - 1

end

end A129342.P7648478354328653594

namespace A129342

/-- `or(1, A045654(n))-1` -/
def P7648478354328653594.Spec : Prop :=
  ∀ n, P7648478354328653594.a n = A129342 n

end A129342

/-! ## A129342.P6019568081503565700

`A045654(n)-A000007(n)`
-/

namespace A129342.P6019568081503565700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A000007 n

end

end A129342.P6019568081503565700

namespace A129342

/-- `A045654(n)-A000007(n)` -/
def P6019568081503565700.Spec : Prop :=
  ∀ n, P6019568081503565700.a n = A129342 n

end A129342

/-! ## A129342.P11283397539514864498

`A045654(n)*A057427(n)`
-/

namespace A129342.P11283397539514864498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n * A057427 n

end

end A129342.P11283397539514864498

namespace A129342

/-- `A045654(n)*A057427(n)` -/
def P11283397539514864498.Spec : Prop :=
  ∀ n, P11283397539514864498.a n = A129342 n

end A129342

/-! ## A129342.P10814391319527584420

`and(A045654(n), A057428(n))`
-/

namespace A129342.P10814391319527584420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045654 n) (A057428 n)

end

end A129342.P10814391319527584420

namespace A129342

/-- `and(A045654(n), A057428(n))` -/
def P10814391319527584420.Spec : Prop :=
  ∀ n, P10814391319527584420.a n = A129342 n

end A129342

/-! ## A129342.P3477783167564080919

`A045654(n)-A356170(2*n+1)`
-/

namespace A129342.P3477783167564080919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A356170 (2 * n + 1)

end

end A129342.P3477783167564080919

namespace A129342

/-- `A045654(n)-A356170(2*n+1)` -/
def P3477783167564080919.Spec : Prop :=
  ∀ n, P3477783167564080919.a n = A129342 n

end A129342

/-! ## A129342.P7982422074497715812

`A045654(n)-A007814(A339819(n+1))`
-/

namespace A129342.P7982422074497715812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A007814 (A339819 (n + 1)).toNat

end

end A129342.P7982422074497715812

namespace A129342

/-- `A045654(n)-A007814(A339819(n+1))` -/
def P7982422074497715812.Spec : Prop :=
  ∀ n, P7982422074497715812.a n = A129342 n

end A129342

/-! ## A129342.P3883217704749487056

`A045654(n)-A318655(n+2)*A378998(n+1)`
-/

namespace A129342.P3883217704749487056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A318655 (n + 2) * A378998 (n + 1)

end

end A129342.P3883217704749487056

namespace A129342

/-- `A045654(n)-A318655(n+2)*A378998(n+1)` -/
def P3883217704749487056.Spec : Prop :=
  ∀ n, P3883217704749487056.a n = A129342 n

end A129342

/-! ## A129342.P10776460734209347471

`Δ[a(∑[and(1, n)])-(2-2^n)]` with `a(0)=0, a(1)=0`
-/

namespace A129342.P10776460734209347471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j) - (2 - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129342.P10776460734209347471

namespace A129342

/-- `Δ[a(∑[and(1, n)])-(2-2^n)]` -/
def P10776460734209347471.Spec : Prop :=
  ∀ n, P10776460734209347471.a n = A129342 n

end A129342

/-! ## A129342.P16820715101705634173

`and(A045654(n), A281500(n))`
-/

namespace A129342.P16820715101705634173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045654 n) (A281500 n)

end

end A129342.P16820715101705634173

namespace A129342

/-- `and(A045654(n), A281500(n))` -/
def P16820715101705634173.Spec : Prop :=
  ∀ n, P16820715101705634173.a n = A129342 n

end A129342

/-! ## A129342.P1921059584648794521

`A045654(n)%A001792(n)`
-/

namespace A129342.P1921059584648794521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045654 n) (A001792 n)

end

end A129342.P1921059584648794521

namespace A129342

/-- `A045654(n)%A001792(n)` -/
def P1921059584648794521.Spec : Prop :=
  ∀ n, P1921059584648794521.a n = A129342 n

end A129342

/-! ## A129342.P17892494711479420557

`and(A024036(n), A045654(n))`
-/

namespace A129342.P17892494711479420557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A045654 n)

end

end A129342.P17892494711479420557

namespace A129342

/-- `and(A024036(n), A045654(n))` -/
def P17892494711479420557.Spec : Prop :=
  ∀ n, P17892494711479420557.a n = A129342 n

end A129342

/-! ## A129342.P17128498639215724067

`and(A045654(n), A130567(n+1))`
-/

namespace A129342.P17128498639215724067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045654 n) (A130567 (n + 1))

end

end A129342.P17128498639215724067

namespace A129342

/-- `and(A045654(n), A130567(n+1))` -/
def P17128498639215724067.Spec : Prop :=
  ∀ n, P17128498639215724067.a n = A129342 n

end A129342

/-! ## A129342.P15831711327958267497

`and(A045654(n), A389172(n+1))`
-/

namespace A129342.P15831711327958267497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045654 n) (A389172 (n + 1))

end

end A129342.P15831711327958267497

namespace A129342

/-- `and(A045654(n), A389172(n+1))` -/
def P15831711327958267497.Spec : Prop :=
  ∀ n, P15831711327958267497.a n = A129342 n

end A129342

/-! ## A129342.P16134584324418097246

`A045654(2*n)-A127804(2*n)`
-/

namespace A129342.P16134584324418097246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 (2 * n) - A127804 (2 * n)

end

end A129342.P16134584324418097246

namespace A129342

/-- `A045654(2*n)-A127804(2*n)` -/
def P16134584324418097246.Spec : Prop :=
  ∀ n, P16134584324418097246.a n = A129342 n

end A129342

/-! ## A129342.P4678987814044087968

`A045654(2*n)-A011782(2*n+1)`
-/

namespace A129342.P4678987814044087968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 (2 * n) - A011782 (2 * n + 1)

end

end A129342.P4678987814044087968

namespace A129342

/-- `A045654(2*n)-A011782(2*n+1)` -/
def P4678987814044087968.Spec : Prop :=
  ∀ n, P4678987814044087968.a n = A129342 n

end A129342

/-!
# A129343: a(2n) = a(n), a(2n+1) = 4n+1.

The programs for A129343, the canonical program `A129343.P245754362676956204` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129343 has offset 0).

The definition of A129343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129343.P245754362676956204

`∑[a(∑[n]%n)-a(n-1)]-4` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129343

/-- `∑[a(∑[n]%n)-a(n-1)]-4` -/
def P245754362676956204.Spec : Prop :=
  ∀ n, P245754362676956204.a n = A129343 n

theorem P245754362676956204.correct : P245754362676956204.Spec := by
  intro n
  simp only [A129343]

end A129343

/-! ## A129343.P81575380115105640

`floor(atan(n+1))+4*A025480(abs(1-n))`
-/

namespace A129343.P81575380115105640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ + 4 * A025480 |1 - (n : ℤ)|.toNat

end

end A129343.P81575380115105640

namespace A129343

/-- `floor(atan(n+1))+4*A025480(abs(1-n))` -/
def P81575380115105640.Spec : Prop :=
  ∀ n, P81575380115105640.a n = A129343 n

end A129343

/-! ## A129343.P2462797770057472750

`A004273(sqrt(A191871(n)))`
-/

namespace A129343.P2462797770057472750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (Real.sqrt (A191871 n : ℝ))).toNat

end

end A129343.P2462797770057472750

namespace A129343

/-- `A004273(sqrt(A191871(n)))` -/
def P2462797770057472750.Spec : Prop :=
  ∀ n, P2462797770057472750.a n = A129343 n

end A129343

/-! ## A129343.P1551596282947690915

`A259445(A004277(n))-1`
-/

namespace A129343.P1551596282947690915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (A004277 n).toNat - 1

end

end A129343.P1551596282947690915

namespace A129343

/-- `A259445(A004277(n))-1` -/
def P1551596282947690915.Spec : Prop :=
  ∀ n, P1551596282947690915.a n = A129343 n

end A129343

/-! ## A129343.P12386383971272130576

`A259445(A185048(2*n+1))-1`
-/

namespace A129343.P12386383971272130576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (A185048 (2 * n + 1)).toNat - 1

end

end A129343.P12386383971272130576

namespace A129343

/-- `A259445(A185048(2*n+1))-1` -/
def P12386383971272130576.Spec : Prop :=
  ∀ n, P12386383971272130576.a n = A129343 n

end A129343

/-! ## A129343.P14300864402994001609

`A004273(n/A214546(A004273(n)))`
-/

namespace A129343.P14300864402994001609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((n : ℚ) / (A214546 (A004273 n).toNat : ℚ))).toNat

end

end A129343.P14300864402994001609

namespace A129343

/-- `A004273(n/A214546(A004273(n)))` -/
def P14300864402994001609.Spec : Prop :=
  ∀ n, P14300864402994001609.a n = A129343 n

end A129343

/-! ## A129343.P15751914374887531706

`A030101(A030101(A241816(2*n)))`
-/

namespace A129343.P15751914374887531706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (A241816 (2 * n)).toNat).toNat

end

end A129343.P15751914374887531706

namespace A129343

/-- `A030101(A030101(A241816(2*n)))` -/
def P15751914374887531706.Spec : Prop :=
  ∀ n, P15751914374887531706.a n = A129343 n

end A129343

/-! ## A129343.P17555336155255832972

`A030101(A030101(A243109(2*n)))`
-/

namespace A129343.P17555336155255832972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (A243109 (2 * n)).toNat).toNat

end

end A129343.P17555336155255832972

namespace A129343

/-- `A030101(A030101(A243109(2*n)))` -/
def P17555336155255832972.Spec : Prop :=
  ∀ n, P17555336155255832972.a n = A129343 n

end A129343

/-! ## A129343.P5375543201869016

`A030101(A057889(n)+A053644(n))`
-/

namespace A129343.P5375543201869016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A057889 n + A053644 n).toNat

end

end A129343.P5375543201869016

namespace A129343

/-- `A030101(A057889(n)+A053644(n))` -/
def P5375543201869016.Spec : Prop :=
  ∀ n, P5375543201869016.a n = A129343 n

end A129343

/-! ## A129343.P12512514163112190578

`A055086(A191871(n))`
-/

namespace A129343.P12512514163112190578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A191871 n).toNat

end

end A129343.P12512514163112190578

namespace A129343

/-- `A055086(A191871(n))` -/
def P12512514163112190578.Spec : Prop :=
  ∀ n, P12512514163112190578.a n = A129343 n

end A129343

/-!
# A129344: a(n) is the number of powers of 2 that have n decimal digits.

The programs for A129344, the canonical program `A129344.P9502388145102924446` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129344 has offset 1).

The definition of A129344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129344.P9502388145102924446

`Δ[ceil(n*log2(10))]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129344

/-- `Δ[ceil(n*log2(10))]` -/
def P9502388145102924446.Spec : Prop :=
  ∀ n, P9502388145102924446.a n = A129344 (n + 1)

theorem P9502388145102924446.correct : P9502388145102924446.Spec := by
  intro n
  simp only [A129344, Nat.add_sub_cancel]

end A129344

/-! ## A129344.P15561942072457763364

`A054977(n)+A022922(n)`
-/

namespace A129344.P15561942072457763364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A022922 n

end

end A129344.P15561942072457763364

namespace A129344

/-- `A054977(n)+A022922(n)` -/
def P15561942072457763364.Spec : Prop :=
  ∀ n, P15561942072457763364.a n = A129344 (n + 1)

end A129344

/-! ## A129344.P16615569660721540965

`A077025(Δ[record[n-A008952(n)]])`
-/

namespace A129344.P16615569660721540965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008952 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077025 (f1 (n + 1) - f1 n).toNat

end

end A129344.P16615569660721540965

namespace A129344

/-- `A077025(Δ[record[n-A008952(n)]])` -/
def P16615569660721540965.Spec : Prop :=
  ∀ n, P16615569660721540965.a n = A129344 (n + 1)

end A129344

/-! ## A129344.P16000250289176663700

`A101544(Δ[record[n-A008952(n)]])`
-/

namespace A129344.P16000250289176663700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008952 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (f1 (n + 1) - f1 n).toNat

end

end A129344.P16000250289176663700

namespace A129344

/-- `A101544(Δ[record[n-A008952(n)]])` -/
def P16000250289176663700.Spec : Prop :=
  ∀ n, P16000250289176663700.a n = A129344 (n + 1)

end A129344

/-! ## A129344.P11010022633041902308

`A066343(n+1)+1-A067497(n)`
-/

namespace A129344.P11010022633041902308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) + (1 - A067497 n)

end

end A129344.P11010022633041902308

namespace A129344

/-- `A066343(n+1)+1-A067497(n)` -/
def P11010022633041902308.Spec : Prop :=
  ∀ n, P11010022633041902308.a n = A129344 (n + 1)

end A129344

/-! ## A129344.P15544458351819123497

`A000032(A066343(n+1)-A067497(n))`
-/

namespace A129344.P15544458351819123497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A066343 (n + 1) - A067497 n).toNat

end

end A129344.P15544458351819123497

namespace A129344

/-- `A000032(A066343(n+1)-A067497(n))` -/
def P15544458351819123497.Spec : Prop :=
  ∀ n, P15544458351819123497.a n = A129344 (n + 1)

end A129344

/-! ## A129344.P8826039611924570246

`A067497(n+1)-A067497(n)`
-/

namespace A129344.P8826039611924570246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 (n + 1) - A067497 n

end

end A129344.P8826039611924570246

namespace A129344

/-- `A067497(n+1)-A067497(n)` -/
def P8826039611924570246.Spec : Prop :=
  ∀ n, P8826039611924570246.a n = A129344 (n + 1)

end A129344

/-! ## A129344.P15723690362893387091

`Δ[A123384(n)-A028310(n)]+1`
-/

namespace A129344.P15723690362893387091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A129344.P15723690362893387091

namespace A129344

/-- `Δ[A123384(n)-A028310(n)]+1` -/
def P15723690362893387091.Spec : Prop :=
  ∀ n, P15723690362893387091.a n = A129344 (n + 1)

end A129344

/-! ## A129344.P16029730756992939679

`∩[A067497(n), A123384(n)]-A067497(n)`
-/

namespace A129344.P16029730756992939679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A067497 n

end

end A129344.P16029730756992939679

namespace A129344

/-- `∩[A067497(n), A123384(n)]-A067497(n)` -/
def P16029730756992939679.Spec : Prop :=
  ∀ n, P16029730756992939679.a n = A129344 (n + 1)

end A129344

/-!
# A129345: a(2n) = A001542(n+1), a(2n+1) = A038761(n+1); a Pellian-related sequence.

The programs for A129345, the canonical program `A129345.P4968512233334033574` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129345 has offset 0).

The definition of A129345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129345.P4968512233334033574

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=9, a(2)=12, a(3)=53`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129345

/-- `6*a(n-2)-a(n-4)` -/
def P4968512233334033574.Spec : Prop :=
  ∀ n, P4968512233334033574.a n = A129345 n

theorem P4968512233334033574.correct : P4968512233334033574.Spec := by
  intro n
  simp only [A129345]

end A129345

/-! ## A129345.P15697676555210306885

`∑[A001333(xor(1, n+1))]+1`
-/

namespace A129345.P15697676555210306885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129345.P15697676555210306885

namespace A129345

/-- `∑[A001333(xor(1, n+1))]+1` -/
def P15697676555210306885.Spec : Prop :=
  ∀ n, P15697676555210306885.a n = A129345 n

end A129345

/-! ## A129345.P2814511038425153828

`A078057(n+1)-A077985(n)`
-/

namespace A129345.P2814511038425153828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - A077985 n

end

end A129345.P2814511038425153828

namespace A129345

/-- `A078057(n+1)-A077985(n)` -/
def P2814511038425153828.Spec : Prop :=
  ∀ n, P2814511038425153828.a n = A129345 n

end A129345

/-! ## A129345.P9908122742606588907

`A001333(n+2)-A077985(n)`
-/

namespace A129345.P9908122742606588907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - A077985 n

end

end A129345.P9908122742606588907

namespace A129345

/-- `A001333(n+2)-A077985(n)` -/
def P9908122742606588907.Spec : Prop :=
  ∀ n, P9908122742606588907.a n = A129345 n

end A129345

/-! ## A129345.P12202534964458037974

`∑[A001333(A004442(n+1))]+1`
-/

namespace A129345.P12202534964458037974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A004442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129345.P12202534964458037974

namespace A129345

/-- `∑[A001333(A004442(n+1))]+1` -/
def P12202534964458037974.Spec : Prop :=
  ∀ n, P12202534964458037974.a n = A129345 n

end A129345

/-! ## A129345.P2722691865047540092

`∑[A001333(A014681(n)+1)]+1`
-/

namespace A129345.P2722691865047540092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129345.P2722691865047540092

namespace A129345

/-- `∑[A001333(A014681(n)+1)]+1` -/
def P2722691865047540092.Spec : Prop :=
  ∀ n, P2722691865047540092.a n = A129345 n

end A129345

/-! ## A129345.P5622976777727484746

`A001333(A065190(n+1))+a(n-1)` with `a(0)=2`
-/

namespace A129345.P5622976777727484746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001333 (A065190 (n + 1)).toNat + a (n - 1)

end

end A129345.P5622976777727484746

namespace A129345

/-- `A001333(A065190(n+1))+a(n-1)` -/
def P5622976777727484746.Spec : Prop :=
  ∀ n, P5622976777727484746.a n = A129345 n

end A129345

/-! ## A129345.P7536914397751068637

`A001333(A109613(n+1))+A000129(n+1)`
-/

namespace A129345.P7536914397751068637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A109613 (n + 1)).toNat + A000129 (n + 1)

end

end A129345.P7536914397751068637

namespace A129345

/-- `A001333(A109613(n+1))+A000129(n+1)` -/
def P7536914397751068637.Spec : Prop :=
  ∀ n, P7536914397751068637.a n = A129345 n

end A129345

/-! ## A129345.P3524601051594465663

`A089499(n+1)+A089499(n+1)+A000129(n)`
-/

namespace A129345.P3524601051594465663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (n + 1) + (A089499 (n + 1) + A000129 n)

end

end A129345.P3524601051594465663

namespace A129345

/-- `A089499(n+1)+A089499(n+1)+A000129(n)` -/
def P3524601051594465663.Spec : Prop :=
  ∀ n, P3524601051594465663.a n = A129345 n

end A129345

/-! ## A129345.P13793638271422625695

`A104683(n+1)+A104683(n+1)-A000129(n)`
-/

namespace A129345.P13793638271422625695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104683 (n + 1) + (A104683 (n + 1) - A000129 n)

end

end A129345.P13793638271422625695

namespace A129345

/-- `A104683(n+1)+A104683(n+1)-A000129(n)` -/
def P13793638271422625695.Spec : Prop :=
  ∀ n, P13793638271422625695.a n = A129345 n

end A129345

/-! ## A129345.P14572416313911278380

`A000129(n+1)+A143609(n+2)-A143609(n+1)`
-/

namespace A129345.P14572416313911278380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A143609 (n + 2) - A143609 (n + 1))

end

end A129345.P14572416313911278380

namespace A129345

/-- `A000129(n+1)+A143609(n+2)-A143609(n+1)` -/
def P14572416313911278380.Spec : Prop :=
  ∀ n, P14572416313911278380.a n = A129345 n

end A129345

/-! ## A129345.P2422327721024340293

`A143608(n+1)+A084068(n+2)-A084068(n+1)`
-/

namespace A129345.P2422327721024340293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (n + 1) + (A084068 (n + 2) - A084068 (n + 1))

end

end A129345.P2422327721024340293

namespace A129345

/-- `A143608(n+1)+A084068(n+2)-A084068(n+1)` -/
def P2422327721024340293.Spec : Prop :=
  ∀ n, P2422327721024340293.a n = A129345 n

end A129345

/-! ## A129345.P10968111735520200884

`Δ[A006451(n+1)-Δ[A216162(2*n)]]`
-/

namespace A129345.P10968111735520200884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129345.P10968111735520200884

namespace A129345

/-- `Δ[A006451(n+1)-Δ[A216162(2*n)]]` -/
def P10968111735520200884.Spec : Prop :=
  ∀ n, P10968111735520200884.a n = A129345 n

end A129345

/-! ## A129345.P6636653231262263377

`abs(Δ[A249577(3*n+2)])-A249577(3*n+2)`
-/

namespace A129345.P6636653231262263377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249577 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A249577 (3 * n + 2)

end

end A129345.P6636653231262263377

namespace A129345

/-- `abs(Δ[A249577(3*n+2)])-A249577(3*n+2)` -/
def P6636653231262263377.Spec : Prop :=
  ∀ n, P6636653231262263377.a n = A129345 n

end A129345

/-! ## A129345.P10168337736568556284

`A077446(n+3)-A048654(n+2)`
-/

namespace A129345.P10168337736568556284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 3) - A048654 (n + 2)

end

end A129345.P10168337736568556284

namespace A129345

/-- `A077446(n+3)-A048654(n+2)` -/
def P10168337736568556284.Spec : Prop :=
  ∀ n, P10168337736568556284.a n = A129345 n

end A129345

/-!
# A129346: a(2n) = A100525(n), a(2n+1) = A001653(n+1); a Pellian-related sequence.

The programs for A129346, the canonical program `A129346.P9727153052305462557` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129346 has offset 0).

The definition of A129346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129346.P9727153052305462557

`6*a(n-2)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=22, a(3)=29`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129346

/-- `6*a(n-2)-a(n-4)` -/
def P9727153052305462557.Spec : Prop :=
  ∀ n, P9727153052305462557.a n = A129346 n

theorem P9727153052305462557.correct : P9727153052305462557.Spec := by
  intro n
  simp only [A129346]

end A129346

/-! ## A129346.P3296742994497450999

`∑[A078057(xor(1, n))]+1`
-/

namespace A129346.P3296742994497450999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129346.P3296742994497450999

namespace A129346

/-- `∑[A078057(xor(1, n))]+1` -/
def P3296742994497450999.Spec : Prop :=
  ∀ n, P3296742994497450999.a n = A129346 n

end A129346

/-! ## A129346.P3518457712869698958

`∑[A001333(xor(1, n)+1)]+1`
-/

namespace A129346.P3518457712869698958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129346.P3518457712869698958

namespace A129346

/-- `∑[A001333(xor(1, n)+1)]+1` -/
def P3518457712869698958.Spec : Prop :=
  ∀ n, P3518457712869698958.a n = A129346 n

end A129346

/-! ## A129346.P68355736188760656

`A078057(n+1)+A077985(n)`
-/

namespace A129346.P68355736188760656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) + A077985 n

end

end A129346.P68355736188760656

namespace A129346

/-- `A078057(n+1)+A077985(n)` -/
def P68355736188760656.Spec : Prop :=
  ∀ n, P68355736188760656.a n = A129346 n

end A129346

/-! ## A129346.P15273775492386329353

`A077985(n)+A001333(n+2)`
-/

namespace A129346.P15273775492386329353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n + A001333 (n + 2)

end

end A129346.P15273775492386329353

namespace A129346

/-- `A077985(n)+A001333(n+2)` -/
def P15273775492386329353.Spec : Prop :=
  ∀ n, P15273775492386329353.a n = A129346 n

end A129346

/-! ## A129346.P13402812183831179269

`A002203(n+2)-A129345(n)`
-/

namespace A129346.P13402812183831179269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 2) - A129345 n

end

end A129346.P13402812183831179269

namespace A129346

/-- `A002203(n+2)-A129345(n)` -/
def P13402812183831179269.Spec : Prop :=
  ∀ n, P13402812183831179269.a n = A129346 n

end A129346

/-! ## A129346.P3894234238353949037

`∑[A001333(A004442(n)+1)]+1`
-/

namespace A129346.P3894234238353949037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129346.P3894234238353949037

namespace A129346

/-- `∑[A001333(A004442(n)+1)]+1` -/
def P3894234238353949037.Spec : Prop :=
  ∀ n, P3894234238353949037.a n = A129346 n

end A129346

/-! ## A129346.P6486714884831135132

`∑[A001333(A014681(n+1))]+1`
-/

namespace A129346.P6486714884831135132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129346.P6486714884831135132

namespace A129346

/-- `∑[A001333(A014681(n+1))]+1` -/
def P6486714884831135132.Spec : Prop :=
  ∀ n, P6486714884831135132.a n = A129346 n

end A129346

/-! ## A129346.P18304764126670781747

`A249577(3*n+2)+abs(Δ[A249577(3*n+2)])`
-/

namespace A129346.P18304764126670781747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249577 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249577 (3 * n + 2) + |f1 (n + 1) - f1 n|

end

end A129346.P18304764126670781747

namespace A129346

/-- `A249577(3*n+2)+abs(Δ[A249577(3*n+2)])` -/
def P18304764126670781747.Spec : Prop :=
  ∀ n, P18304764126670781747.a n = A129346 n

end A129346

/-! ## A129346.P5699722705153947111

`A000129(n)+A000129(n+1)*A010694(n+1)`
-/

namespace A129346.P5699722705153947111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + A000129 (n + 1) * A010694 (n + 1)

end

end A129346.P5699722705153947111

namespace A129346

/-- `A000129(n)+A000129(n+1)*A010694(n+1)` -/
def P5699722705153947111.Spec : Prop :=
  ∀ n, P5699722705153947111.a n = A129346 n

end A129346

/-!
# A129347: 

The programs for A129347, there is no canonical definition to state claims against.
-/

/-! ## A129347.P14550795423450474534

`A325013(eq[4, A002262(n)]+1)`
-/

namespace A129347.P14550795423450474534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129347.P14550795423450474534

/-!
# A129348: Number of (directed) Hamiltonian circuits in the cocktail party graph of order n.

The programs for A129348, there is no canonical definition to state claims against.
-/

/-! ## A129348.P3410224090809533343

`2*A307923(n+1)`
-/

namespace A129348.P3410224090809533343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307923 (n + 1)

end

end A129348.P3410224090809533343

/-! ## A129348.P4244874867302931874

`A000165(n)*A003436(n+1)`
-/

namespace A129348.P4244874867302931874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A003436 (n + 1)

end

end A129348.P4244874867302931874

/-! ## A129348.P13523358344857902094

`∏[A004277(n)]*A003436(n+1)`
-/

namespace A129348.P13523358344857902094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A003436 (n + 1)

end

end A129348.P13523358344857902094

/-! ## A129348.P7447090259796891531

`A003436(n+1)*A006882(2*n)`
-/

namespace A129348.P7447090259796891531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 (n + 1) * A006882 (2 * n)

end

end A129348.P7447090259796891531

/-! ## A129348.P12693122356379609908

`A307923(A000027(n+1))+A307923(n+1)`
-/

namespace A129348.P12693122356379609908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307923 (A000027 (n + 1)).toNat + A307923 (n + 1)

end

end A129348.P12693122356379609908

/-!
# A129349: Number of directed Hamiltonian circuits in the n-triangular graph.

The programs for A129349, there is no canonical definition to state claims against.
-/

/-! ## A129349.P6379893734993130728

`2*A307930(n+2)`
-/

namespace A129349.P6379893734993130728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307930 (n + 2)

end

end A129349.P6379893734993130728

/-!
# A129350: The smallest number in a group of four consecutive mutually coprime integers such that the sum of three of them plus the square of the fourth is prime.

The programs for A129350, there is no canonical definition to state claims against.
-/

/-! ## A129350.P17732669185051599360

`lt[A228351(2*(n+2)), A211100(A067692(n+1))]`
-/

namespace A129350.P17732669185051599360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A067692 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129350.P17732669185051599360

/-! ## A129350.P327635665621815670

`lt[A264676(A292504(3*n+2)), A264676(2*n+1)]`
-/

namespace A129350.P327635665621815670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A292504 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129350.P327635665621815670

/-! ## A129350.P1765489113878047229

`∑[A263845(A054068(n+1)*A346127(n+5))]`
-/

namespace A129350.P1765489113878047229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 (A054068 (n + 1) * A346127 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129350.P1765489113878047229

/-! ## A129350.P15782028805115504743

`lt[A138758(n+1), A007899(A360672(2*(n+1)))]`
-/

namespace A129350.P15782028805115504743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 (A360672 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129350.P15782028805115504743

/-!
# A129353: Triangle read by rows: A051731 * A115361 as infinite lower triangular matrices.

The programs for A129353, the canonical program `A129353.P12434210787401024625` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129353 has offset 1).

The definition of A129353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129353.P17397660935674708326

`A089309(A143315(n+1))`
-/

namespace A129353.P17397660935674708326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A143315 (n + 1)).toNat

end

end A129353.P17397660935674708326

namespace A129353

/-- `A089309(A143315(n+1))` -/
def P17397660935674708326.Spec : Prop :=
  ∀ n, P17397660935674708326.a n = A129353 (n + 1)

end A129353

/-! ## A129353.P12434210787401024625

`val(A004277(A126988(n+1)), 2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129353

/-- `val(A004277(A126988(n+1)), 2)` -/
def P12434210787401024625.Spec : Prop :=
  ∀ n, (P12434210787401024625.a n : ℤ) = A129353 (n + 1)

theorem P12434210787401024625.correct : P12434210787401024625.Spec := by
  intro n
  simp only [A129353, Nat.add_sub_cancel]

end A129353

/-! ## A129353.P2647374831383447504

`A285099(2*A126988(n+1)+1)`
-/

namespace A129353.P2647374831383447504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (2 * A126988 (n + 1) + 1).toNat

end

end A129353.P2647374831383447504

namespace A129353

/-- `A285099(2*A126988(n+1)+1)` -/
def P2647374831383447504.Spec : Prop :=
  ∀ n, P2647374831383447504.a n = A129353 (n + 1)

end A129353

/-! ## A129353.P5971830920166793929

`∑{d}[A126988(n+1), A010055(2*#)]`
-/

namespace A129353.P5971830920166793929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010055 (2 * d)

end

end A129353.P5971830920166793929

namespace A129353

/-- `∑{d}[A126988(n+1), A010055(2*#)]` -/
def P5971830920166793929.Spec : Prop :=
  ∀ n, P5971830920166793929.a n = A129353 (n + 1)

end A129353

/-! ## A129353.P15719639528839507472

`A001511(A010766(n+1))*A051731(n+1)`
-/

namespace A129353.P15719639528839507472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A129353.P15719639528839507472

namespace A129353

/-- `A001511(A010766(n+1))*A051731(n+1)` -/
def P15719639528839507472.Spec : Prop :=
  ∀ n, P15719639528839507472.a n = A129353 (n + 1)

end A129353

/-! ## A129353.P13032639090235000854

`A285099(A126988(n+1)+A126988(n+1)+1)`
-/

namespace A129353.P13032639090235000854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A126988 (n + 1) + (A126988 (n + 1) + 1)).toNat

end

end A129353.P13032639090235000854

namespace A129353

/-- `A285099(A126988(n+1)+A126988(n+1)+1)` -/
def P13032639090235000854.Spec : Prop :=
  ∀ n, P13032639090235000854.a n = A129353 (n + 1)

end A129353

/-! ## A129353.P16218301825122172612

`val(A006863(A126988(n+1)*A126988(n+1)), 4)`
-/

namespace A129353.P16218301825122172612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006863 (A126988 (n + 1) * A126988 (n + 1)).toNat).toNat 4

end

end A129353.P16218301825122172612

namespace A129353

/-- `val(A006863(A126988(n+1)*A126988(n+1)), 4)` -/
def P16218301825122172612.Spec : Prop :=
  ∀ n, (P16218301825122172612.a n : ℤ) = A129353 (n + 1)

end A129353

/-!
# A129357: G.f.: A(x) = Product_{n>=1} [ (1-x)^4*(1 + 4x + 10x^2 +...+ n(n+1)(n+2)/3!*x^(n-1)) ].

The programs for A129357, there is no canonical definition to state claims against.
-/

/-! ## A129357.P8509950214238626575

`A247343(A189661(n+1)+A002294(n))`
-/

namespace A129357.P8509950214238626575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A189661 (n + 1) + A002294 n).toNat

end

end A129357.P8509950214238626575

/-! ## A129357.P12705618976112304553

`A247343(A003514(n)*A068397(n+1))`
-/

namespace A129357.P12705618976112304553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A003514 n * A068397 (n + 1)).toNat

end

end A129357.P12705618976112304553

/-!
# A129358: G.f.: A(x) = Product_{n>=1} [ (1-x)^5*(1 + 5x + 15x^2 +...+ n(n+1)(n+2)(n+3)/4!*x^(n-1)) ].

The programs for A129358, there is no canonical definition to state claims against.
-/

/-! ## A129358.P5345320841035466595

`A000728(A000045(n)*A336114(n))`
-/

namespace A129358.P5345320841035466595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000728 (A000045 n * A336114 n).toNat

end

end A129358.P5345320841035466595

/-!
# A129359: Numbers k such that A129357(8*k) == 2 (mod 4).

The programs for A129359, there is no canonical definition to state claims against.
-/

/-! ## A129359.P8488341343588813744

`eq[2, abs(A002107(n))]`
-/

namespace A129359.P8488341343588813744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002107 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129359.P8488341343588813744

/-! ## A129359.P6444564168422148729

`eq[2, abs(A208845(n))]`
-/

namespace A129359.P6444564168422148729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208845 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129359.P6444564168422148729

/-! ## A129359.P669308791901817763

`eq[2, A002175(n)%4]`
-/

namespace A129359.P669308791901817763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002175 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129359.P669308791901817763

/-! ## A129359.P17225298080208134

`eq[1, val(A022567(n), 2)]`
-/

namespace A129359.P17225298080208134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022567 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129359.P17225298080208134

/-! ## A129359.P16376573155006646174

`eq[2, A123884(n)%4]`
-/

namespace A129359.P16376573155006646174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123884 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129359.P16376573155006646174

/-! ## A129359.P1348284835862285899

`eq[1, val(A000005(12*n+1), 2)]`
-/

namespace A129359.P1348284835862285899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (12 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129359.P1348284835862285899

/-! ## A129359.P4152286341013138531

`eq[1, val(A000203(12*n+1), 2)]`
-/

namespace A129359.P4152286341013138531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (12 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129359.P4152286341013138531

/-! ## A129359.P16240263216892529552

`eq[2, gcd(4, A000203(or(1, 12*n)))]`
-/

namespace A129359.P16240263216892529552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A000203 (Nat.lor 1 (12 * n)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129359.P16240263216892529552

/-! ## A129359.P8092363132631456217

`eq[2, and(3, A000005(6*2*n+1))]`
-/

namespace A129359.P8092363132631456217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000005 (6 * (2 * n) + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129359.P8092363132631456217

/-! ## A129359.P16421212468465088076

`lt[2, A176346(A002107(n)²)]`
-/

namespace A129359.P16421212468465088076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 (A002107 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129359.P16421212468465088076

/-!
# A129360: Triangle read by rows: A054525 * A115361 as infinite lower triangular matrices.

The programs for A129360, the canonical program `A129360.P6323221230572987550` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129360 has offset 1).

The definition of A129360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129360.P6323221230572987550

`A127139(n+1)%2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A129360

/-- `A127139(n+1)%2` -/
def P6323221230572987550.Spec : Prop :=
  ∀ n, P6323221230572987550.a n = A129360 (n + 1)

theorem P6323221230572987550.correct : P6323221230572987550.Spec := by
  intro n
  simp only [A129360, Nat.add_sub_cancel]

end A129360

/-! ## A129360.P17806070888714045395

`A054525(n+1)*A129372(n+1)`
-/

namespace A129360.P17806070888714045395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A129372 (n + 1)

end

end A129360.P17806070888714045395

namespace A129360

/-- `A054525(n+1)*A129372(n+1)` -/
def P17806070888714045395.Spec : Prop :=
  ∀ n, P17806070888714045395.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P12625644268808065749

`A103994(n+1)*A129372(n+1)`
-/

namespace A129360.P12625644268808065749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103994 (n + 1) * A129372 (n + 1)

end

end A129360.P12625644268808065749

namespace A129360

/-- `A103994(n+1)*A129372(n+1)` -/
def P12625644268808065749.Spec : Prop :=
  ∀ n, P12625644268808065749.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P17001629313930661963

`A129372(n+1)*A129501(n+1)`
-/

namespace A129360.P17001629313930661963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1) * A129501 (n + 1)

end

end A129360.P17001629313930661963

namespace A129360

/-- `A129372(n+1)*A129501(n+1)` -/
def P17001629313930661963.Spec : Prop :=
  ∀ n, P17001629313930661963.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P15631498166190696033

`A054525(n+1)*A319102(n+1)`
-/

namespace A129360.P15631498166190696033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A319102 (n + 1)

end

end A129360.P15631498166190696033

namespace A129360

/-- `A054525(n+1)*A319102(n+1)` -/
def P15631498166190696033.Spec : Prop :=
  ∀ n, P15631498166190696033.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P1770604402645509881

`A103994(n+1)*A319102(n+1)`
-/

namespace A129360.P1770604402645509881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103994 (n + 1) * A319102 (n + 1)

end

end A129360.P1770604402645509881

namespace A129360

/-- `A103994(n+1)*A319102(n+1)` -/
def P1770604402645509881.Spec : Prop :=
  ∀ n, P1770604402645509881.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P6675386163352021347

`A129501(n+1)*A319102(n+1)`
-/

namespace A129360.P6675386163352021347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129501 (n + 1) * A319102 (n + 1)

end

end A129360.P6675386163352021347

namespace A129360

/-- `A129501(n+1)*A319102(n+1)` -/
def P6675386163352021347.Spec : Prop :=
  ∀ n, P6675386163352021347.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P541990990526487869

`∑{d}[A126988(n+1), A046692(#)]%2`
-/

namespace A129360.P541990990526487869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A046692 d) 2

end

end A129360.P541990990526487869

namespace A129360

/-- `∑{d}[A126988(n+1), A046692(#)]%2` -/
def P541990990526487869.Spec : Prop :=
  ∀ n, P541990990526487869.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P12501489450986190686

`A010766(n+1)%2*A054525(n+1)`
-/

namespace A129360.P12501489450986190686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010766 (n + 1)) 2 * A054525 (n + 1)

end

end A129360.P12501489450986190686

namespace A129360

/-- `A010766(n+1)%2*A054525(n+1)` -/
def P12501489450986190686.Spec : Prop :=
  ∀ n, P12501489450986190686.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P1745866739858758020

`and(1, A126988(n+1))*A054525(n+1)`
-/

namespace A129360.P1745866739858758020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A126988 (n + 1)) * A054525 (n + 1)

end

end A129360.P1745866739858758020

namespace A129360

/-- `and(1, A126988(n+1))*A054525(n+1)` -/
def P1745866739858758020.Spec : Prop :=
  ∀ n, P1745866739858758020.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P10515011691508844769

`A094497(A129501(n+1)²)*A129501(n+1)`
-/

namespace A129360.P10515011691508844769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A129501 (n + 1) ^ 2).toNat * A129501 (n + 1)

end

end A129360.P10515011691508844769

namespace A129360

/-- `A094497(A129501(n+1)²)*A129501(n+1)` -/
def P10515011691508844769.Spec : Prop :=
  ∀ n, P10515011691508844769.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P1037677970820321749

`∏{p}[A129501(n+1), A000122(#)]*A129501(n+1)`
-/

namespace A129360.P1037677970820321749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000122 p) * A129501 (n + 1)

end

end A129360.P1037677970820321749

namespace A129360

/-- `∏{p}[A129501(n+1), A000122(#)]*A129501(n+1)` -/
def P1037677970820321749.Spec : Prop :=
  ∀ n, P1037677970820321749.a n = A129360 (n + 1)

end A129360

/-! ## A129360.P13321855456802268317

`(A054524(A286158(n+1))*A126988(n+1))%2`
-/

namespace A129360.P13321855456802268317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054524 (A286158 (n + 1)).toNat * A126988 (n + 1)) 2

end

end A129360.P13321855456802268317

namespace A129360

/-- `(A054524(A286158(n+1))*A126988(n+1))%2` -/
def P13321855456802268317.Spec : Prop :=
  ∀ n, P13321855456802268317.a n = A129360 (n + 1)

end A129360

/-!
# A129361: a(n) = Sum_{k=floor((n+1)/2)..n} Fibonacci(k+1).

The programs for A129361, the canonical program `A129361.P14000498497627899100` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129361 has offset 0).

The definition of A129361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129361.P14000498497627899100

`A000045(n+3)-A103609(n+5)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129361

/-- `A000045(n+3)-A103609(n+5)` -/
def P14000498497627899100.Spec : Prop :=
  ∀ n, P14000498497627899100.a n = A129361 n

theorem P14000498497627899100.correct : P14000498497627899100.Spec := by
  intro n
  simp only [A129361]

end A129361

/-! ## A129361.P1194849079486783132

`a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=10, a(5)=16`
-/

namespace A129361.P1194849079486783132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5, 10, 16] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 5) - a (n - 6)

end

end A129361.P1194849079486783132

namespace A129361

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` -/
def P1194849079486783132.Spec : Prop :=
  ∀ n, P1194849079486783132.a n = A129361 n

end A129361

/-! ## A129361.P13432165462976668417

`A024367(n+1)+A024318(n+1)`
-/

namespace A129361.P13432165462976668417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024367 (n + 1) + A024318 (n + 1)

end

end A129361.P13432165462976668417

namespace A129361

/-- `A024367(n+1)+A024318(n+1)` -/
def P13432165462976668417.Spec : Prop :=
  ∀ n, P13432165462976668417.a n = A129361 n

end A129361

/-! ## A129361.P4302028810906394390

`A000071(n+3)-A131524(n+2)`
-/

namespace A129361.P4302028810906394390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A131524 (n + 2)

end

end A129361.P4302028810906394390

namespace A129361

/-- `A000071(n+3)-A131524(n+2)` -/
def P4302028810906394390.Spec : Prop :=
  ∀ n, P4302028810906394390.a n = A129361 n

end A129361

/-! ## A129361.P839453461762375081

`A226538(2*n)-A131524(n+2)`
-/

namespace A129361.P839453461762375081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n) - A131524 (n + 2)

end

end A129361.P839453461762375081

namespace A129361

/-- `A226538(2*n)-A131524(n+2)` -/
def P839453461762375081.Spec : Prop :=
  ∀ n, P839453461762375081.a n = A129361 n

end A129361

/-! ## A129361.P6306856579829672270

`A094707(2*n)+1-A131524(n+2)`
-/

namespace A129361.P6306856579829672270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (2 * n) + (1 - A131524 (n + 2))

end

end A129361.P6306856579829672270

namespace A129361

/-- `A094707(2*n)+1-A131524(n+2)` -/
def P6306856579829672270.Spec : Prop :=
  ∀ n, P6306856579829672270.a n = A129361 n

end A129361

/-! ## A129361.P3304567735056349729

`A163227(2*(n+1))-A131524(n+2)`
-/

namespace A129361.P3304567735056349729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (2 * (n + 1)) - A131524 (n + 2)

end

end A129361.P3304567735056349729

namespace A129361

/-- `A163227(2*(n+1))-A131524(n+2)` -/
def P3304567735056349729.Spec : Prop :=
  ∀ n, P3304567735056349729.a n = A129361 n

end A129361

/-! ## A129361.P15328416731206802320

`A131524(2*(n+2))-A131524(n+2)`
-/

namespace A129361.P15328416731206802320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (2 * (n + 2)) - A131524 (n + 2)

end

end A129361.P15328416731206802320

namespace A129361

/-- `A131524(2*(n+2))-A131524(n+2)` -/
def P15328416731206802320.Spec : Prop :=
  ∀ n, P15328416731206802320.a n = A129361 n

end A129361

/-! ## A129361.P5356226375017475268

`A000071(n+3)-A000071(A008619(n+3))`
-/

namespace A129361.P5356226375017475268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A000071 (A008619 (n + 3)).toNat

end

end A129361.P5356226375017475268

namespace A129361

/-- `A000071(n+3)-A000071(A008619(n+3))` -/
def P5356226375017475268.Spec : Prop :=
  ∀ n, P5356226375017475268.a n = A129361 n

end A129361

/-! ## A129361.P9224557688231677763

`∑[A000045(n+1)-A000045(A142150(n+1))]`
-/

namespace A129361.P9224557688231677763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A000045 (A142150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129361.P9224557688231677763

namespace A129361

/-- `∑[A000045(n+1)-A000045(A142150(n+1))]` -/
def P9224557688231677763.Spec : Prop :=
  ∀ n, P9224557688231677763.a n = A129361 n

end A129361

/-! ## A129361.P10357615150598993751

`A097575(A014601(2*n+1))-A097575(2*n+1)`
-/

namespace A129361.P10357615150598993751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A014601 (2 * n + 1)).toNat - A097575 (2 * n + 1)

end

end A129361.P10357615150598993751

namespace A129361

/-- `A097575(A014601(2*n+1))-A097575(2*n+1)` -/
def P10357615150598993751.Spec : Prop :=
  ∀ n, P10357615150598993751.a n = A129361 n

end A129361

/-! ## A129361.P15070206832259927101

`A226538(2*n)+A163227(n+2)-A226538(n+1)`
-/

namespace A129361.P15070206832259927101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n) + (A163227 (n + 2) - A226538 (n + 1))

end

end A129361.P15070206832259927101

namespace A129361

/-- `A226538(2*n)+A163227(n+2)-A226538(n+1)` -/
def P15070206832259927101.Spec : Prop :=
  ∀ n, P15070206832259927101.a n = A129361 n

end A129361

/-! ## A129361.P16134576378112011334

`A097575(4*(n+2))-A097575(2*n+1)`
-/

namespace A129361.P16134576378112011334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (4 * (n + 2)) - A097575 (2 * n + 1)

end

end A129361.P16134576378112011334

namespace A129361

/-- `A097575(4*(n+2))-A097575(2*n+1)` -/
def P16134576378112011334.Spec : Prop :=
  ∀ n, P16134576378112011334.a n = A129361 n

end A129361

/-! ## A129361.P14529943273089299736

`A006327(n+5)-(A131524(n+2)+A001911(n+1))`
-/

namespace A129361.P14529943273089299736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 5) - (A131524 (n + 2) + A001911 (n + 1))

end

end A129361.P14529943273089299736

namespace A129361

/-- `A006327(n+5)-(A131524(n+2)+A001911(n+1))` -/
def P14529943273089299736.Spec : Prop :=
  ∀ n, P14529943273089299736.a n = A129361 n

end A129361

/-! ## A129361.P11239571369874357438

`A024309(n+1)-A023860(n+1)`
-/

namespace A129361.P11239571369874357438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 1) - A023860 (n + 1)

end

end A129361.P11239571369874357438

namespace A129361

/-- `A024309(n+1)-A023860(n+1)` -/
def P11239571369874357438.Spec : Prop :=
  ∀ n, P11239571369874357438.a n = A129361 n

end A129361

/-! ## A129361.P15712667526312313762

`A024313(n+1)-A024309(n+1)`
-/

namespace A129361.P15712667526312313762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024313 (n + 1) - A024309 (n + 1)

end

end A129361.P15712667526312313762

namespace A129361

/-- `A024313(n+1)-A024309(n+1)` -/
def P15712667526312313762.Spec : Prop :=
  ∀ n, P15712667526312313762.a n = A129361 n

end A129361

/-! ## A129361.P7229428368427356990

`A094585(A007590(n)+1)`
-/

namespace A129361.P7229428368427356990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (A007590 n + 1).toNat

end

end A129361.P7229428368427356990

namespace A129361

/-- `A094585(A007590(n)+1)` -/
def P7229428368427356990.Spec : Prop :=
  ∀ n, P7229428368427356990.a n = A129361 n

end A129361

/-! ## A129361.P9477376803082866082

`A094585(A099392(n+1))`
-/

namespace A129361.P9477376803082866082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (A099392 (n + 1)).toNat

end

end A129361.P9477376803082866082

namespace A129361

/-- `A094585(A099392(n+1))` -/
def P9477376803082866082.Spec : Prop :=
  ∀ n, P9477376803082866082.a n = A129361 n

end A129361

/-! ## A129361.P12193675550848352990

`A171729(A080476(n+2))`
-/

namespace A129361.P12193675550848352990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (A080476 (n + 2)).toNat

end

end A129361.P12193675550848352990

namespace A129361

/-- `A171729(A080476(n+2))` -/
def P12193675550848352990.Spec : Prop :=
  ∀ n, P12193675550848352990.a n = A129361 n

end A129361

/-! ## A129361.P4032635461326017216

`A143061(∑[or(1, n)])`
-/

namespace A129361.P4032635461326017216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129361.P4032635461326017216

namespace A129361

/-- `A143061(∑[or(1, n)])` -/
def P4032635461326017216.Spec : Prop :=
  ∀ n, P4032635461326017216.a n = A129361 n

end A129361

/-!
# A129362: a(n) = Sum_{k=floor((n+1)/2)..n} J(k+1), J(k) = A001045(k).

The programs for A129362, the canonical program `A129362.P12477659874690500748` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129362 has offset 0).

The definition of A129362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129362.P12477659874690500748

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=8, a(4)=19, a(5)=37`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129362

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P12477659874690500748.Spec : Prop :=
  ∀ n, P12477659874690500748.a n = A129362 n

theorem P12477659874690500748.correct : P12477659874690500748.Spec := by
  intro n
  simp only [A129362]

end A129362

/-! ## A129362.P4719838538352486478

`A289764(n)-A000975(n)`
-/

namespace A129362.P4719838538352486478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289764 n - A000975 n

end

end A129362.P4719838538352486478

namespace A129362

/-- `A289764(n)-A000975(n)` -/
def P4719838538352486478.Spec : Prop :=
  ∀ n, P4719838538352486478.a n = A129362 n

end A129362

/-! ## A129362.P2606546906734450733

`A289764(n)-∑[A001045(n)]`
-/

namespace A129362.P2606546906734450733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289764 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129362.P2606546906734450733

namespace A129362

/-- `A289764(n)-∑[A001045(n)]` -/
def P2606546906734450733.Spec : Prop :=
  ∀ n, P2606546906734450733.a n = A129362 n

end A129362

/-! ## A129362.P13266239654360053006

`∑[A000079(n)-A336398(n+2)]`
-/

namespace A129362.P13266239654360053006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A336398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129362.P13266239654360053006

namespace A129362

/-- `∑[A000079(n)-A336398(n+2)]` -/
def P13266239654360053006.Spec : Prop :=
  ∀ n, P13266239654360053006.a n = A129362 n

end A129362

/-! ## A129362.P18242965879028423

`A126646(n)-∑[A336398(n+2)]`
-/

namespace A129362.P18242965879028423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129362.P18242965879028423

namespace A129362

/-- `A126646(n)-∑[A336398(n+2)]` -/
def P18242965879028423.Spec : Prop :=
  ∀ n, P18242965879028423.a n = A129362 n

end A129362

/-! ## A129362.P13315425550016631571

`A000975(n+1)-A000975(ceil(n/2))`
-/

namespace A129362.P13315425550016631571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) - A000975 ⌈(n : ℚ) / 2⌉.toNat

end

end A129362.P13315425550016631571

namespace A129362

/-- `A000975(n+1)-A000975(ceil(n/2))` -/
def P13315425550016631571.Spec : Prop :=
  ∀ n, P13315425550016631571.a n = A129362 n

end A129362

/-! ## A129362.P11558175934664032667

`A086445(n+1)-A340849(A008619(n+1))`
-/

namespace A129362.P11558175934664032667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 (n + 1) - A340849 (A008619 (n + 1)).toNat

end

end A129362.P11558175934664032667

namespace A129362

/-- `A086445(n+1)-A340849(A008619(n+1))` -/
def P11558175934664032667.Spec : Prop :=
  ∀ n, P11558175934664032667.a n = A129362 n

end A129362

/-! ## A129362.P5979629877667110711

`A005578(n+2)-A005578(A008619(n+1))`
-/

namespace A129362.P5979629877667110711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 2) - A005578 (A008619 (n + 1)).toNat

end

end A129362.P5979629877667110711

namespace A129362

/-- `A005578(n+2)-A005578(A008619(n+1))` -/
def P5979629877667110711.Spec : Prop :=
  ∀ n, P5979629877667110711.a n = A129362 n

end A129362

/-! ## A129362.P160294438798245278

`A086445(n+1)-A340849(A004526(n+3))`
-/

namespace A129362.P160294438798245278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 (n + 1) - A340849 (A004526 (n + 3)).toNat

end

end A129362.P160294438798245278

namespace A129362

/-- `A086445(n+1)-A340849(A004526(n+3))` -/
def P160294438798245278.Spec : Prop :=
  ∀ n, P160294438798245278.a n = A129362 n

end A129362

/-! ## A129362.P12417384839814323264

`A005578(n+2)-A005578(A004526(n+3))`
-/

namespace A129362.P12417384839814323264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 2) - A005578 (A004526 (n + 3)).toNat

end

end A129362.P12417384839814323264

namespace A129362

/-- `A005578(n+2)-A005578(A004526(n+3))` -/
def P12417384839814323264.Spec : Prop :=
  ∀ n, P12417384839814323264.a n = A129362 n

end A129362

/-! ## A129362.P8572219578377624322

`round(A233411(n+2)/3)`
-/

namespace A129362.P8572219578377624322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A233411 (n + 2) : ℚ) / 3)

end

end A129362.P8572219578377624322

namespace A129362

/-- `round(A233411(n+2)/3)` -/
def P8572219578377624322.Spec : Prop :=
  ∀ n, P8572219578377624322.a n = A129362 n

end A129362

/-!
# A129363: Number of partitions of 2n into the sum of two twin primes.

The programs for A129363, there is no canonical definition to state claims against.
-/

/-! ## A129363.P6830306400506824952

`A164292(n-A129950(n+2)+1)+A159700(n+1)`
-/

namespace A129363.P6830306400506824952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 ((n : ℤ) - A129950 (n + 2) + 1).toNat + A159700 (n + 1)

end

end A129363.P6830306400506824952

/-! ## A129363.P3814095506917172194

`A164292(n-A164292(n+2)+1)+A159700(n+1)`
-/

namespace A129363.P3814095506917172194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 ((n : ℤ) - A164292 (n + 2) + 1).toNat + A159700 (n + 1)

end

end A129363.P3814095506917172194

/-! ## A129363.P5510980982586416068

`A130654(A002378(A069928(n+1)²))`
-/

namespace A129363.P5510980982586416068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A002378 (A069928 (n + 1) ^ 2).toNat).toNat

end

end A129363.P5510980982586416068

/-! ## A129363.P15875869054814036184

`A001221(xor(A006054(n), A302291(n)))`
-/

namespace A129363.P15875869054814036184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A006054 n) (A302291 n)).toNat

end

end A129363.P15875869054814036184

/-! ## A129363.P17638641431084602183

`A002375(n+1)-A102683(A055112(n))`
-/

namespace A129363.P17638641431084602183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A102683 (A055112 n).toNat

end

end A129363.P17638641431084602183

/-!
# A129364: a(n) = Product_{k = 1..n} A066841(k).

The programs for A129364, there is no canonical definition to state claims against.
-/

/-! ## A129364.P1760590607727229143

`∏[∏{d}[n+1, ((n+1)/#)^#]]`
-/

namespace A129364.P1760590607727229143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129364.P1760590607727229143

/-! ## A129364.P112479867248359868

`∏[A066841(n+1)]`
-/

namespace A129364.P112479867248359868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129364.P112479867248359868

/-! ## A129364.P5130783166378673375

`A092287(n+1)/A129365(n+1)`
-/

namespace A129364.P5130783166378673375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092287 (n + 1) : ℚ) / (A129365 (n + 1) : ℚ)

end

end A129364.P5130783166378673375

/-! ## A129364.P9427225257422598140

`a(n-1)*∑[A140554(A065033(2*n))]` with `a(0)=1`
-/

namespace A129364.P9427225257422598140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140554 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129364.P9427225257422598140

/-! ## A129364.P13319833636408142696

`a(n-1)*∑[A140554(A008486(n)-2*n)]` with `a(0)=1`
-/

namespace A129364.P13319833636408142696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140554 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129364.P13319833636408142696

/-!
# A129365: a(n) = A092287(n)/A129364(n).

The programs for A129365, there is no canonical definition to state claims against.
-/

/-! ## A129365.P9816717855326484318

`A092287(n+1)/A129364(n+1)`
-/

namespace A129365.P9816717855326484318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092287 (n + 1) : ℚ) / (A129364 (n + 1) : ℚ)

end

end A129365.P9816717855326484318

/-! ## A129365.P1476822059969139878

`A034836(∑[A054923(n)]!)`
-/

namespace A129365.P1476822059969139878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A129365.P1476822059969139878

/-! ## A129365.P10546258292202743493

`A163491(∑[A054923(n)]!)`
-/

namespace A129365.P10546258292202743493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A129365.P10546258292202743493

/-! ## A129365.P10102376692797928171

`A003963(∑[A325189(n)]!)`
-/

namespace A129365.P10102376692797928171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A129365.P10102376692797928171

/-! ## A129365.P8558722296102458554

`A002182(∏[A328312(n+1)!])`
-/

namespace A129365.P8558722296102458554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A328312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A129365.P8558722296102458554

/-!
# A129366: a(n) = Sum_{k=0..floor(n/2)} A000108(n-k).

The programs for A129366, the canonical program `A129366.P3653991172376187017` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129366 has offset 0).

The definition of A129366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129366.P3653991172376187017

`∑[A000912(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129366

/-- `∑[A000912(n)]` -/
def P3653991172376187017.Spec : Prop :=
  ∀ n, P3653991172376187017.a n = A129366 n

theorem P3653991172376187017.correct : P3653991172376187017.Spec := by
  intro n
  simp only [A129366]

end A129366

/-! ## A129366.P17024447906817920372

`∑[2*A000150(n)]+1`
-/

namespace A129366.P17024447906817920372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129366.P17024447906817920372

namespace A129366

/-- `∑[2*A000150(n)]+1` -/
def P17024447906817920372.Spec : Prop :=
  ∀ n, P17024447906817920372.a n = A129366 n

end A129366

/-! ## A129366.P45725362969194342

`∑[(4-6/(n+1))*a(n-1)]-A166588(n)` with `a(0)=2, a(1)=1`
-/

namespace A129366.P45725362969194342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A166588 n : ℚ)

end

end A129366.P45725362969194342

namespace A129366

/-- `∑[(4-6/(n+1))*a(n-1)]-A166588(n)` -/
def P45725362969194342.Spec : Prop :=
  ∀ n, P45725362969194342.a n = (A129366 n : ℚ)

end A129366

/-! ## A129366.P15244469519635708013

`A155587(n+1)-A166588(n)`
-/

namespace A129366.P15244469519635708013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 1) - A166588 n

end

end A129366.P15244469519635708013

namespace A129366

/-- `A155587(n+1)-A166588(n)` -/
def P15244469519635708013.Spec : Prop :=
  ∀ n, P15244469519635708013.a n = A129366 n

end A129366

/-! ## A129366.P9923297396890881845

`A166588(Δ[n²])-A166588(n)`
-/

namespace A129366.P9923297396890881845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A166588 n

end

end A129366.P9923297396890881845

namespace A129366

/-- `A166588(Δ[n²])-A166588(n)` -/
def P9923297396890881845.Spec : Prop :=
  ∀ n, P9923297396890881845.a n = A129366 n

end A129366

/-! ## A129366.P8236594534983771685

`∑[A000108(n)-A097331(n)]+1`
-/

namespace A129366.P8236594534983771685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129366.P8236594534983771685

namespace A129366

/-- `∑[A000108(n)-A097331(n)]+1` -/
def P8236594534983771685.Spec : Prop :=
  ∀ n, P8236594534983771685.a n = A129366 n

end A129366

/-! ## A129366.P17673817869541918263

`∑[A210628(n)+A000108(n)]-1`
-/

namespace A129366.P17673817869541918263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A129366.P17673817869541918263

namespace A129366

/-- `∑[A210628(n)+A000108(n)]-1` -/
def P17673817869541918263.Spec : Prop :=
  ∀ n, P17673817869541918263.a n = A129366 n

end A129366

/-! ## A129366.P1295369773035992982

`a(n-1)+A000108(2*n-n)-A097331(n)` with `a(0)=1`
-/

namespace A129366.P1295369773035992982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000108 (2 * n - n) - A097331 n

end

end A129366.P1295369773035992982

namespace A129366

/-- `a(n-1)+A000108(2*n-n)-A097331(n)` -/
def P1295369773035992982.Spec : Prop :=
  ∀ n, P1295369773035992982.a n = A129366 n

end A129366

/-! ## A129366.P16565976080018950132

`A000108(n)-(A166588(n)-A155587(n))`
-/

namespace A129366.P16565976080018950132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (A166588 n - A155587 n)

end

end A129366.P16565976080018950132

namespace A129366

/-- `A000108(n)-(A166588(n)-A155587(n))` -/
def P16565976080018950132.Spec : Prop :=
  ∀ n, P16565976080018950132.a n = A129366 n

end A129366

/-! ## A129366.P3143278682945438486

`A129384(2*n)-A129383(2*n+1)`
-/

namespace A129366.P3143278682945438486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129384 (2 * n) - A129383 (2 * n + 1)

end

end A129366.P3143278682945438486

namespace A129366

/-- `A129384(2*n)-A129383(2*n+1)` -/
def P3143278682945438486.Spec : Prop :=
  ∀ n, P3143278682945438486.a n = A129366 n

end A129366

/-! ## A129366.P6065612894226452586

`2*A129384(2*n)-A129384(2*n+1)`
-/

namespace A129366.P6065612894226452586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129384 (2 * n) - A129384 (2 * n + 1)

end

end A129366.P6065612894226452586

namespace A129366

/-- `2*A129384(2*n)-A129384(2*n+1)` -/
def P6065612894226452586.Spec : Prop :=
  ∀ n, P6065612894226452586.a n = A129366 n

end A129366

/-! ## A129366.P18254287239925138157

`A210658(∑[n]+ceil(n/2))`
-/

namespace A129366.P18254287239925138157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210658 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉).toNat

end

end A129366.P18254287239925138157

namespace A129366

/-- `A210658(∑[n]+ceil(n/2))` -/
def P18254287239925138157.Spec : Prop :=
  ∀ n, P18254287239925138157.a n = A129366 n

end A129366

/-!
# A129367: Triangle T(n, k) = A002415(n-k+3)*A002415(k+3), read by rows.

The programs for A129367, there is no canonical definition to state claims against.
-/

/-! ## A129367.P11460089449813209966

`A254836(C(A162349(n+1), A004525(n)))`
-/

namespace A129367.P11460089449813209966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254836 (Nat.choose (A162349 (n + 1)).toNat (A004525 n).toNat)

end

end A129367.P11460089449813209966

/-!
# A129368: a(n) = Sum_{k=floor((n+1)/2)..n} binomial(2*k,k).

The programs for A129368, the canonical program `A129368.P2039354540942189590` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129368 has offset 0).

The definition of A129368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129368.P14957610471486716374

`∑[A129369(n)]`
-/

namespace A129368.P14957610471486716374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129368.P14957610471486716374

namespace A129368

/-- `∑[A129369(n)]` -/
def P14957610471486716374.Spec : Prop :=
  ∀ n, P14957610471486716374.a n = A129368 n

end A129368

/-! ## A129368.P14687949836580634022

`A006134(n)-A100066(n)`
-/

namespace A129368.P14687949836580634022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A100066 n

end

end A129368.P14687949836580634022

namespace A129368

/-- `A006134(n)-A100066(n)` -/
def P14687949836580634022.Spec : Prop :=
  ∀ n, P14687949836580634022.a n = A129368 n

end A129368

/-! ## A129368.P2039354540942189590

`record[Δ[A100066(A026741(n))]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129368

/-- `record[Δ[A100066(A026741(n))]]` -/
def P2039354540942189590.Spec : Prop :=
  ∀ n, P2039354540942189590.a n = A129368 n

theorem P2039354540942189590.correct : P2039354540942189590.Spec := by
  intro n
  simp only [A129368]

end A129368

/-! ## A129368.P17031234592463410194

`∑[A000984(n)]-A100066(n)`
-/

namespace A129368.P17031234592463410194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100066 n

end

end A129368.P17031234592463410194

namespace A129368

/-- `∑[A000984(n)]-A100066(n)` -/
def P17031234592463410194.Spec : Prop :=
  ∀ n, P17031234592463410194.a n = A129368 n

end A129368

/-! ## A129368.P18115217762652300324

`A100066(Δ[n²])-A100066(n)`
-/

namespace A129368.P18115217762652300324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A100066 n

end

end A129368.P18115217762652300324

namespace A129368

/-- `A100066(Δ[n²])-A100066(n)` -/
def P18115217762652300324.Spec : Prop :=
  ∀ n, P18115217762652300324.a n = A129368 n

end A129368

/-! ## A129368.P1570875504387425948

`∑[record[A081668(n)]]-A100066(n)`
-/

namespace A129368.P1570875504387425948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100066 n

end

end A129368.P1570875504387425948

namespace A129368

/-- `∑[record[A081668(n)]]-A100066(n)` -/
def P1570875504387425948.Spec : Prop :=
  ∀ n, P1570875504387425948.a n = A129368 n

end A129368

/-! ## A129368.P276571451388324579

`∑[record[A126869(n)]]-A100066(n)`
-/

namespace A129368.P276571451388324579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100066 n

end

end A129368.P276571451388324579

namespace A129368

/-- `∑[record[A126869(n)]]-A100066(n)` -/
def P276571451388324579.Spec : Prop :=
  ∀ n, P276571451388324579.a n = A129368 n

end A129368

/-! ## A129368.P2848049870139737160

`∑[A081668(2*n)]-A100066(n)`
-/

namespace A129368.P2848049870139737160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100066 n

end

end A129368.P2848049870139737160

namespace A129368

/-- `∑[A081668(2*n)]-A100066(n)` -/
def P2848049870139737160.Spec : Prop :=
  ∀ n, P2848049870139737160.a n = A129368 n

end A129368

/-! ## A129368.P7278694996279090833

`∑[A126869(2*n)]-A100066(n)`
-/

namespace A129368.P7278694996279090833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100066 n

end

end A129368.P7278694996279090833

namespace A129368

/-- `∑[A126869(2*n)]-A100066(n)` -/
def P7278694996279090833.Spec : Prop :=
  ∀ n, P7278694996279090833.a n = A129368 n

end A129368

/-! ## A129368.P16768912915795348121

`A124642(2*n+1)-A100066(n)`
-/

namespace A129368.P16768912915795348121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (2 * n + 1) - A100066 n

end

end A129368.P16768912915795348121

namespace A129368

/-- `A124642(2*n+1)-A100066(n)` -/
def P16768912915795348121.Spec : Prop :=
  ∀ n, P16768912915795348121.a n = A129368 n

end A129368

/-! ## A129368.P5198690823494020444

`∑[(n+1)*A000108(n)]-A100066(n)`
-/

namespace A129368.P5198690823494020444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100066 n

end

end A129368.P5198690823494020444

namespace A129368

/-- `∑[(n+1)*A000108(n)]-A100066(n)` -/
def P5198690823494020444.Spec : Prop :=
  ∀ n, P5198690823494020444.a n = A129368 n

end A129368

/-! ## A129368.P2409547674827134567

`∑[A000984(n)-A126869(A165754(n))]`
-/

namespace A129368.P2409547674827134567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A126869 (A165754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129368.P2409547674827134567

namespace A129368

/-- `∑[A000984(n)-A126869(A165754(n))]` -/
def P2409547674827134567.Spec : Prop :=
  ∀ n, P2409547674827134567.a n = A129368 n

end A129368

/-! ## A129368.P10244192800196246545

`record[A100066(A093178(n))]-A100066(n)`
-/

namespace A129368.P10244192800196246545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A100066 n

end

end A129368.P10244192800196246545

namespace A129368

/-- `record[A100066(A093178(n))]-A100066(n)` -/
def P10244192800196246545.Spec : Prop :=
  ∀ n, P10244192800196246545.a n = A129368 n

end A129368

/-! ## A129368.P14580587668227180005

`record[A100066(A124625(n))]-A100066(n)`
-/

namespace A129368.P14580587668227180005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A100066 n

end

end A129368.P14580587668227180005

namespace A129368

/-- `record[A100066(A124625(n))]-A100066(n)` -/
def P14580587668227180005.Spec : Prop :=
  ∀ n, P14580587668227180005.a n = A129368 n

end A129368

/-! ## A129368.P3512883251926681910

`A126869(n)+∑[A000984(n)-A126869(n)]`
-/

namespace A129368.P3512883251926681910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129368.P3512883251926681910

namespace A129368

/-- `A126869(n)+∑[A000984(n)-A126869(n)]` -/
def P3512883251926681910.Spec : Prop :=
  ∀ n, P3512883251926681910.a n = A129368 n

end A129368

/-! ## A129368.P12888905920536759745

`record[A100066(A099375(n))]-A100066(n)`
-/

namespace A129368.P12888905920536759745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A100066 n

end

end A129368.P12888905920536759745

namespace A129368

/-- `record[A100066(A099375(n))]-A100066(n)` -/
def P12888905920536759745.Spec : Prop :=
  ∀ n, P12888905920536759745.a n = A129368 n

end A129368

/-!
# A129369: Expansion of 1/sqrt(1-4*x) - x/sqrt(1-4*x^2).

The programs for A129369, the canonical program `A129369.P6100866944885135129` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129369 has offset 0).

The definition of A129369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129369.P6100866944885135129

`A000984(n)-A126869(xor(1, n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A129369

/-- `A000984(n)-A126869(xor(1, n))` -/
def P6100866944885135129.Spec : Prop :=
  ∀ n, P6100866944885135129.a n = A129369 n

theorem P6100866944885135129.correct : P6100866944885135129.Spec := by
  intro n
  simp only [A129369]

end A129369

/-! ## A129369.P15924213691473526515

`A000984(n)-A126869(abs(1-n))`
-/

namespace A129369.P15924213691473526515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A126869 |1 - (n : ℤ)|.toNat

end

end A129369.P15924213691473526515

namespace A129369

/-- `A000984(n)-A126869(abs(1-n))` -/
def P15924213691473526515.Spec : Prop :=
  ∀ n, P15924213691473526515.a n = A129369 n

end A129369

/-! ## A129369.P12801995175732844044

`record[A126869(n)]-A126869(xor(1, n))`
-/

namespace A129369.P12801995175732844044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A126869 (Nat.xor 1 n)

end

end A129369.P12801995175732844044

namespace A129369

/-- `record[A126869(n)]-A126869(xor(1, n))` -/
def P12801995175732844044.Spec : Prop :=
  ∀ n, P12801995175732844044.a n = A129369 n

end A129369

/-! ## A129369.P3294039036185273917

`A001405(2*n)-A126869(xor(1, n))`
-/

namespace A129369.P3294039036185273917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A126869 (Nat.xor 1 n)

end

end A129369.P3294039036185273917

namespace A129369

/-- `A001405(2*n)-A126869(xor(1, n))` -/
def P3294039036185273917.Spec : Prop :=
  ∀ n, P3294039036185273917.a n = A129369 n

end A129369

/-! ## A129369.P9916920871356820073

`(n+1)*A000108(n)-A126869(abs(1-n))`
-/

namespace A129369.P9916920871356820073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n - A126869 |1 - (n : ℤ)|.toNat

end

end A129369.P9916920871356820073

namespace A129369

/-- `(n+1)*A000108(n)-A126869(abs(1-n))` -/
def P9916920871356820073.Spec : Prop :=
  ∀ n, P9916920871356820073.a n = A129369 n

end A129369

/-! ## A129369.P2553209723806349276

`∑{d}[n+1, A066768(#)*A092673((n+1)/#)]`
-/

namespace A129369.P2553209723806349276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066768 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129369.P2553209723806349276

namespace A129369

/-- `∑{d}[n+1, A066768(#)*A092673((n+1)/#)]` -/
def P2553209723806349276.Spec : Prop :=
  ∀ n, P2553209723806349276.a n = A129369 n

end A129369

/-! ## A129369.P14115925759810533774

`∑{d}[n+1, A059841(#-1)*A134764((n+1)/#)]`
-/

namespace A129369.P14115925759810533774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A134764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129369.P14115925759810533774

namespace A129369

/-- `∑{d}[n+1, A059841(#-1)*A134764((n+1)/#)]` -/
def P14115925759810533774.Spec : Prop :=
  ∀ n, P14115925759810533774.a n = A129369 n

end A129369

/-! ## A129369.P11925646012427726244

`record[A126869(n)]-A126869(A004442(n))`
-/

namespace A129369.P11925646012427726244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A126869 (A004442 n).toNat

end

end A129369.P11925646012427726244

namespace A129369

/-- `record[A126869(n)]-A126869(A004442(n))` -/
def P11925646012427726244.Spec : Prop :=
  ∀ n, P11925646012427726244.a n = A129369 n

end A129369

/-! ## A129369.P10948858972184521723

`record[A126869(n)]-A126869(A165754(n))`
-/

namespace A129369.P10948858972184521723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A126869 (A165754 n).toNat

end

end A129369.P10948858972184521723

namespace A129369

/-- `record[A126869(n)]-A126869(A165754(n))` -/
def P10948858972184521723.Spec : Prop :=
  ∀ n, P10948858972184521723.a n = A129369 n

end A129369

/-! ## A129369.P9184646063606372480

`A126869(2*n)-A126869(A004442(n))`
-/

namespace A129369.P9184646063606372480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A126869 (A004442 n).toNat

end

end A129369.P9184646063606372480

namespace A129369

/-- `A126869(2*n)-A126869(A004442(n))` -/
def P9184646063606372480.Spec : Prop :=
  ∀ n, P9184646063606372480.a n = A129369 n

end A129369

/-! ## A129369.P530342184515124931

`A129383(2*n)-A129383(A124625(n))`
-/

namespace A129369.P530342184515124931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n) - A129383 (A124625 n).toNat

end

end A129369.P530342184515124931

namespace A129369

/-- `A129383(2*n)-A129383(A124625(n))` -/
def P530342184515124931.Spec : Prop :=
  ∀ n, P530342184515124931.a n = A129369 n

end A129369

/-! ## A129369.P6877489123727567904

`A126869(2*n)-A126869(A165754(n))`
-/

namespace A129369.P6877489123727567904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A126869 (A165754 n).toNat

end

end A129369.P6877489123727567904

namespace A129369

/-- `A126869(2*n)-A126869(A165754(n))` -/
def P6877489123727567904.Spec : Prop :=
  ∀ n, P6877489123727567904.a n = A129369 n

end A129369

/-!
# A129370: a(n) = n^2 - (n-1)^2*(1 - (-1)^n)/8.

The programs for A129370, the canonical program `A129370.P4316956295126515733` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129370 has offset 0).

The definition of A129370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129370.P4316956295126515733

`n²-Δ[C(floor(n/2), 2)]²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129370

/-- `n²-Δ[C(floor(n/2), 2)]²` -/
def P4316956295126515733.Spec : Prop :=
  ∀ n, P4316956295126515733.a n = A129370 n

theorem P4316956295126515733.correct : P4316956295126515733.Spec := by
  intro n
  simp only [A129370]

end A129370

/-! ## A129370.P13183293325229022908

`∑[n]²%xor(1, 3-(n+1)²)`
-/

namespace A129370.P13183293325229022908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (Int.xor 1 (3 - ((n + 1) ^ 2 : ℤ)))

end

end A129370.P13183293325229022908

namespace A129370

/-- `∑[n]²%xor(1, 3-(n+1)²)` -/
def P13183293325229022908.Spec : Prop :=
  ∀ n, P13183293325229022908.a n = A129370 n

end A129370

/-! ## A129370.P12738409130062945707

`n²-(n%2/2)²*a(n-1)` with `a(0)=0`
-/

namespace A129370.P12738409130062945707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℚ) - (((n % 2 : ℕ) : ℚ) / 2) ^ 2 * a (n - 1)

end

end A129370.P12738409130062945707

namespace A129370

/-- `n²-(n%2/2)²*a(n-1)` -/
def P12738409130062945707.Spec : Prop :=
  ∀ n, P12738409130062945707.a n = (A129370 n : ℚ)

end A129370

/-! ## A129370.P12056605367197380495

`(gcd(n+1, ∑[n])+n-1)*∑[and(1, n)]`
-/

namespace A129370.P12056605367197380495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + ((n : ℤ) - 1)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A129370.P12056605367197380495

namespace A129370

/-- `(gcd(n+1, ∑[n])+n-1)*∑[and(1, n)]` -/
def P12056605367197380495.Spec : Prop :=
  ∀ n, P12056605367197380495.a n = A129370 n

end A129370

/-! ## A129370.P14534335294014233685

`∑[2*n]-A346004(n)`
-/

namespace A129370.P14534335294014233685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A346004 n

end

end A129370.P14534335294014233685

namespace A129370

/-- `∑[2*n]-A346004(n)` -/
def P14534335294014233685.Spec : Prop :=
  ∀ n, P14534335294014233685.a n = A129370 n

end A129370

/-! ## A129370.P10134993415202091982

`n²-(1-A152271(n))²`
-/

namespace A129370.P10134993415202091982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (1 - A152271 n) ^ 2

end

end A129370.P10134993415202091982

namespace A129370

/-- `n²-(1-A152271(n))²` -/
def P10134993415202091982.Spec : Prop :=
  ∀ n, P10134993415202091982.a n = A129370 n

end A129370

/-! ## A129370.P73514780440651896

`or(1, n²)-A057979(n)²`
-/

namespace A129370.P73514780440651896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n ^ 2) : ℤ) - A057979 n ^ 2

end

end A129370.P73514780440651896

namespace A129370

/-- `or(1, n²)-A057979(n)²` -/
def P73514780440651896.Spec : Prop :=
  ∀ n, P73514780440651896.a n = A129370 n

end A129370

/-! ## A129370.P3387640357300006003

`A245288(n)+A210977(n)`
-/

namespace A129370.P3387640357300006003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 n + A210977 n

end

end A129370.P3387640357300006003

namespace A129370

/-- `A245288(n)+A210977(n)` -/
def P3387640357300006003.Spec : Prop :=
  ∀ n, P3387640357300006003.a n = A129370 n

end A129370

/-! ## A129370.P12309850092422861367

`A035608(n)-A129889(n)`
-/

namespace A129370.P12309850092422861367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n - A129889 n

end

end A129370.P12309850092422861367

namespace A129370

/-- `A035608(n)-A129889(n)` -/
def P12309850092422861367.Spec : Prop :=
  ∀ n, P12309850092422861367.a n = A129370 n

end A129370

/-! ## A129370.P10456905771250430788

`A213041(n)-A079097(n)`
-/

namespace A129370.P10456905771250430788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n - A079097 n

end

end A129370.P10456905771250430788

namespace A129370

/-- `A213041(n)-A079097(n)` -/
def P10456905771250430788.Spec : Prop :=
  ∀ n, P10456905771250430788.a n = A129370 n

end A129370

/-! ## A129370.P11896220411319558635

`n²-A008794(A093178(n))`
-/

namespace A129370.P11896220411319558635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008794 (A093178 n).toNat

end

end A129370.P11896220411319558635

namespace A129370

/-- `n²-A008794(A093178(n))` -/
def P11896220411319558635.Spec : Prop :=
  ∀ n, P11896220411319558635.a n = A129370 n

end A129370

/-! ## A129370.P14927304367726858504

`n²-A004526(A124625(n))²`
-/

namespace A129370.P14927304367726858504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A004526 (A124625 n).toNat ^ 2

end

end A129370.P14927304367726858504

namespace A129370

/-- `n²-A004526(A124625(n))²` -/
def P14927304367726858504.Spec : Prop :=
  ∀ n, P14927304367726858504.a n = A129370 n

end A129370

/-! ## A129370.P14439054992460095030

`n²-A142150(A004442(n))²`
-/

namespace A129370.P14439054992460095030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A142150 (A004442 n).toNat ^ 2

end

end A129370.P14439054992460095030

namespace A129370

/-- `n²-A142150(A004442(n))²` -/
def P14439054992460095030.Spec : Prop :=
  ∀ n, P14439054992460095030.a n = A129370 n

end A129370

/-! ## A129370.P14050968141780654361

`n²-A008794(Δ[A008794(n)])`
-/

namespace A129370.P14050968141780654361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008794 (f1 (n + 1) - f1 n).toNat

end

end A129370.P14050968141780654361

namespace A129370

/-- `n²-A008794(Δ[A008794(n)])` -/
def P14050968141780654361.Spec : Prop :=
  ∀ n, P14050968141780654361.a n = A129370 n

end A129370

/-! ## A129370.P14188272300310452773

`n²+A354280(n)-A110660(n)`
-/

namespace A129370.P14188272300310452773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A354280 n - A110660 n)

end

end A129370.P14188272300310452773

namespace A129370

/-- `n²+A354280(n)-A110660(n)` -/
def P14188272300310452773.Spec : Prop :=
  ∀ n, P14188272300310452773.a n = A129370 n

end A129370

/-! ## A129370.P7565278707044532948

`n²-A124093(n*A000035(n))`
-/

namespace A129370.P7565278707044532948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A124093 ((n : ℤ) * A000035 n).toNat

end

end A129370.P7565278707044532948

namespace A129370

/-- `n²-A124093(n*A000035(n))` -/
def P7565278707044532948.Spec : Prop :=
  ∀ n, P7565278707044532948.a n = A129370 n

end A129370

/-! ## A129370.P5640145086599934149

`n²-A008794(n*A266070(n))`
-/

namespace A129370.P5640145086599934149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008794 ((n : ℤ) * A266070 n).toNat

end

end A129370.P5640145086599934149

namespace A129370

/-- `n²-A008794(n*A266070(n))` -/
def P5640145086599934149.Spec : Prop :=
  ∀ n, P5640145086599934149.a n = A129370 n

end A129370

/-! ## A129370.P2312264867426623145

`∑[A004442(n)+n]-A079097(n)`
-/

namespace A129370.P2312264867426623145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079097 n

end

end A129370.P2312264867426623145

namespace A129370

/-- `∑[A004442(n)+n]-A079097(n)` -/
def P2312264867426623145.Spec : Prop :=
  ∀ n, P2312264867426623145.a n = A129370 n

end A129370

/-! ## A129370.P16395515752182570995

`A085046(n+1)-(A079097(n)+n)`
-/

namespace A129370.P16395515752182570995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1) - (A079097 n + (n : ℤ))

end

end A129370.P16395515752182570995

namespace A129370

/-- `A085046(n+1)-(A079097(n)+n)` -/
def P16395515752182570995.Spec : Prop :=
  ∀ n, P16395515752182570995.a n = A129370 n

end A129370

/-! ## A129370.P8533369902629635047

`(A065423(n+1)+n)*A065033(n)`
-/

namespace A129370.P8533369902629635047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065423 (n + 1) + (n : ℤ)) * A065033 n

end

end A129370.P8533369902629635047

namespace A129370

/-- `(A065423(n+1)+n)*A065033(n)` -/
def P8533369902629635047.Spec : Prop :=
  ∀ n, P8533369902629635047.a n = A129370 n

end A129370

/-!
# A129371: a(n) = Sum_{k=0..floor(n/2)} (n-k)^2.

The programs for A129371, the canonical program `A129371.P1750780381066755700` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129371 has offset 0).

The definition of A129371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129371.P1750780381066755700

`∑[∑[n]²%xor(1, 3-(n+1)²)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129371

/-- `∑[∑[n]²%xor(1, 3-(n+1)²)]` -/
def P1750780381066755700.Spec : Prop :=
  ∀ n, P1750780381066755700.a n = A129371 n

theorem P1750780381066755700.correct : P1750780381066755700.Spec := by
  intro n
  simp only [A129371]

end A129371

/-! ## A129371.P10521934996622744950

`∑[A129370(n)]`
-/

namespace A129371.P10521934996622744950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129371.P10521934996622744950

namespace A129371

/-- `∑[A129370(n)]` -/
def P10521934996622744950.Spec : Prop :=
  ∀ n, P10521934996622744950.a n = A129371 n

end A129371

/-! ## A129371.P762008674581759300

`n²+A212691(n)/2`
-/

namespace A129371.P762008674581759300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A212691 n : ℚ) / 2

end

end A129371.P762008674581759300

namespace A129371

/-- `n²+A212691(n)/2` -/
def P762008674581759300.Spec : Prop :=
  ∀ n, P762008674581759300.a n = (A129371 n : ℚ)

end A129371

/-! ## A129371.P14551489394756801170

`∑[n²+n-A346004(n)]`
-/

namespace A129371.P14551489394756801170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A346004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129371.P14551489394756801170

namespace A129371

/-- `∑[n²+n-A346004(n)]` -/
def P14551489394756801170.Spec : Prop :=
  ∀ n, P14551489394756801170.a n = A129371 n

end A129371

/-! ## A129371.P2846461650047441717

`∑[n²-(1-A152271(n))²]`
-/

namespace A129371.P2846461650047441717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (1 - A152271 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129371.P2846461650047441717

namespace A129371

/-- `∑[n²-(1-A152271(n))²]` -/
def P2846461650047441717.Spec : Prop :=
  ∀ n, P2846461650047441717.a n = A129371 n

end A129371

/-! ## A129371.P3445351329053775752

`∪[A050409(n), A050410(n)]`
-/

namespace A129371.P3445351329053775752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050410 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129371.P3445351329053775752

namespace A129371

/-- `∪[A050409(n), A050410(n)]` -/
def P3445351329053775752.Spec : Prop :=
  ∀ n, (P3445351329053775752.a n : ℤ) = A129371 n

end A129371

/-! ## A129371.P4161599717730790756

`∑[A035608(n)-A129889(n)]`
-/

namespace A129371.P4161599717730790756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n - A129889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129371.P4161599717730790756

namespace A129371

/-- `∑[A035608(n)-A129889(n)]` -/
def P4161599717730790756.Spec : Prop :=
  ∀ n, P4161599717730790756.a n = A129371 n

end A129371

/-! ## A129371.P2659535410642302475

`∑[(A065423(n+1)+n)*A065033(n)]`
-/

namespace A129371.P2659535410642302475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065423 (n + 1) + (n : ℤ)) * A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129371.P2659535410642302475

namespace A129371

/-- `∑[(A065423(n+1)+n)*A065033(n)]` -/
def P2659535410642302475.Spec : Prop :=
  ∀ n, P2659535410642302475.a n = A129371 n

end A129371

/-! ## A129371.P10066479065850543729

`A000330(n)-A000330(A140106(n+1))`
-/

namespace A129371.P10066479065850543729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A000330 (A140106 (n + 1)).toNat

end

end A129371.P10066479065850543729

namespace A129371

/-- `A000330(n)-A000330(A140106(n+1))` -/
def P10066479065850543729.Spec : Prop :=
  ∀ n, P10066479065850543729.a n = A129371 n

end A129371

/-! ## A129371.P12849977662270325978

`A000330(n)-A000330(A065033(n)-1)`
-/

namespace A129371.P12849977662270325978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A000330 (A065033 n - 1).toNat

end

end A129371.P12849977662270325978

namespace A129371

/-- `A000330(n)-A000330(A065033(n)-1)` -/
def P12849977662270325978.Spec : Prop :=
  ∀ n, P12849977662270325978.a n = A129371 n

end A129371

/-! ## A129371.P12365327082108366075

`∑[n²-A130507(2*n+1)²]`
-/

namespace A129371.P12365327082108366075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A130507 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129371.P12365327082108366075

namespace A129371

/-- `∑[n²-A130507(2*n+1)²]` -/
def P12365327082108366075.Spec : Prop :=
  ∀ n, P12365327082108366075.a n = A129371 n

end A129371

/-!
# A129372: Triangle read by rows: T(n,k) = 1 if k divides n and n/k is odd, T(n,k) = 0 otherwise.

The programs for A129372, the canonical program `A129372.P9469683564325573279` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129372 has offset 1).

The definition of A129372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129372.P9469683564325573279

`A085383(n+1)%2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129372

/-- `A085383(n+1)%2` -/
def P9469683564325573279.Spec : Prop :=
  ∀ n, P9469683564325573279.a n = A129372 (n + 1)

theorem P9469683564325573279.correct : P9469683564325573279.Spec := by
  intro n
  simp only [A129372, Nat.add_sub_cancel]

end A129372

/-! ## A129372.P6938555435266174934

`A126988(n+1)%2`
-/

namespace A129372.P6938555435266174934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126988 (n + 1)) 2

end

end A129372.P6938555435266174934

namespace A129372

/-- `A126988(n+1)%2` -/
def P6938555435266174934.Spec : Prop :=
  ∀ n, P6938555435266174934.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P16656805001623039871

`A152072(n+1)%2`
-/

namespace A129372.P16656805001623039871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152072 (n + 1)) 2

end

end A129372.P16656805001623039871

namespace A129372

/-- `A152072(n+1)%2` -/
def P16656805001623039871.Spec : Prop :=
  ∀ n, P16656805001623039871.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P15275786988949427949

`char[eq[1, A129353(n+1)]]`
-/

namespace A129372.P15275786988949427949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129353 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A129372.P15275786988949427949

namespace A129372

/-- `char[eq[1, A129353(n+1)]]` -/
def P15275786988949427949.Spec : Prop :=
  ∀ n, (P15275786988949427949.a n : ℤ) = A129372 (n + 1)

end A129372

/-! ## A129372.P4428368964028101884

`A000035(A126988(n+1))`
-/

namespace A129372.P4428368964028101884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A126988 (n + 1)).toNat

end

end A129372.P4428368964028101884

namespace A129372

/-- `A000035(A126988(n+1))` -/
def P4428368964028101884.Spec : Prop :=
  ∀ n, P4428368964028101884.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P15731353797372184103

`A003815(A143315(n+1))`
-/

namespace A129372.P15731353797372184103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A143315 (n + 1)).toNat

end

end A129372.P15731353797372184103

namespace A129372

/-- `A003815(A143315(n+1))` -/
def P15731353797372184103.Spec : Prop :=
  ∀ n, P15731353797372184103.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P16506436232952231558

`A059841(A126988(n+1)+1)`
-/

namespace A129372.P16506436232952231558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A126988 (n + 1) + 1).toNat

end

end A129372.P16506436232952231558

namespace A129372

/-- `A059841(A126988(n+1)+1)` -/
def P16506436232952231558.Spec : Prop :=
  ∀ n, P16506436232952231558.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P2664407203565238639

`A128174(n+1)*A129572(n+1)`
-/

namespace A129372.P2664407203565238639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A129572 (n + 1)

end

end A129372.P2664407203565238639

namespace A129372

/-- `A128174(n+1)*A129572(n+1)` -/
def P2664407203565238639.Spec : Prop :=
  ∀ n, P2664407203565238639.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P10926236704168818094

`A128174(n+1)*A129573(n+1)`
-/

namespace A129372.P10926236704168818094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A129573 (n + 1)

end

end A129372.P10926236704168818094

namespace A129372

/-- `A128174(n+1)*A129573(n+1)` -/
def P10926236704168818094.Spec : Prop :=
  ∀ n, P10926236704168818094.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P15460465247933477791

`A051731(n+1)*A319102(n+1)`
-/

namespace A129372.P15460465247933477791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A319102 (n + 1)

end

end A129372.P15460465247933477791

namespace A129372

/-- `A051731(n+1)*A319102(n+1)` -/
def P15460465247933477791.Spec : Prop :=
  ∀ n, P15460465247933477791.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P6228599831095402615

`A129353(n+1)*A319102(n+1)`
-/

namespace A129372.P6228599831095402615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129353 (n + 1) * A319102 (n + 1)

end

end A129372.P6228599831095402615

namespace A129372

/-- `A129353(n+1)*A319102(n+1)` -/
def P6228599831095402615.Spec : Prop :=
  ∀ n, P6228599831095402615.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P10412302464879814507

`A129572(n+1)*A249866(n+2)`
-/

namespace A129372.P10412302464879814507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129572 (n + 1) * A249866 (n + 2)

end

end A129372.P10412302464879814507

namespace A129372

/-- `A129572(n+1)*A249866(n+2)` -/
def P10412302464879814507.Spec : Prop :=
  ∀ n, P10412302464879814507.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P3082558590947217920

`A129573(n+1)*A249866(n+2)`
-/

namespace A129372.P3082558590947217920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129573 (n + 1) * A249866 (n + 2)

end

end A129372.P3082558590947217920

namespace A129372

/-- `A129573(n+1)*A249866(n+2)` -/
def P3082558590947217920.Spec : Prop :=
  ∀ n, P3082558590947217920.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P10200824046415263359

`and(A010766(n+1), A051731(n+1))`
-/

namespace A129372.P10200824046415263359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010766 (n + 1)) (A051731 (n + 1))

end

end A129372.P10200824046415263359

namespace A129372

/-- `and(A010766(n+1), A051731(n+1))` -/
def P10200824046415263359.Spec : Prop :=
  ∀ n, P10200824046415263359.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P16423385892656543079

`and(A049834(n+1), A051731(n+1))`
-/

namespace A129372.P16423385892656543079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049834 (n + 1)) (A051731 (n + 1))

end

end A129372.P16423385892656543079

namespace A129372

/-- `and(A049834(n+1), A051731(n+1))` -/
def P16423385892656543079.Spec : Prop :=
  ∀ n, P16423385892656543079.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P8771420301729868802

`and(A051537(n+1), A051731(n+1))`
-/

namespace A129372.P8771420301729868802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051537 (n + 1)) (A051731 (n + 1))

end

end A129372.P8771420301729868802

namespace A129372

/-- `and(A051537(n+1), A051731(n+1))` -/
def P8771420301729868802.Spec : Prop :=
  ∀ n, P8771420301729868802.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P8605174634289863693

`and(A051731(n+1), A054531(n+1))`
-/

namespace A129372.P8605174634289863693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A054531 (n + 1))

end

end A129372.P8605174634289863693

namespace A129372

/-- `and(A051731(n+1), A054531(n+1))` -/
def P8605174634289863693.Spec : Prop :=
  ∀ n, P8605174634289863693.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P1373391312665656212

`and(A003989(n+1), A126988(n+1))`
-/

namespace A129372.P1373391312665656212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003989 (n + 1)) (A126988 (n + 1))

end

end A129372.P1373391312665656212

namespace A129372

/-- `and(A003989(n+1), A126988(n+1))` -/
def P1373391312665656212.Spec : Prop :=
  ∀ n, P1373391312665656212.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P15514175158987289926

`and(A004736(n+1), A129573(n+1))`
-/

namespace A129372.P15514175158987289926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (n + 1)) (A129573 (n + 1))

end

end A129372.P15514175158987289926

namespace A129372

/-- `and(A004736(n+1), A129573(n+1))` -/
def P15514175158987289926.Spec : Prop :=
  ∀ n, P15514175158987289926.a n = A129372 (n + 1)

end A129372

/-! ## A129372.P16505344024477616489

`and(A051731(n+1), A126988(n+1))`
-/

namespace A129372.P16505344024477616489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A126988 (n + 1))

end

end A129372.P16505344024477616489

namespace A129372

/-- `and(A051731(n+1), A126988(n+1))` -/
def P16505344024477616489.Spec : Prop :=
  ∀ n, P16505344024477616489.a n = A129372 (n + 1)

end A129372

/-!
# A129373: G.f. satisfies: A(x) = (1+x) * A(x^2)*A(x^3)*A(x^4)*...*A(x^n)*...

The programs for A129373, there is no canonical definition to state claims against.
-/

/-! ## A129373.P3927184846358848614

`A123580(A161921(n)+1)`
-/

namespace A129373.P3927184846358848614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A161921 n + 1).toNat

end

end A129373.P3927184846358848614

/-!
# A129374: G.f. satisfies: A(x) = 1/(1-x) * A(x^2)*A(x^3)*A(x^4)*...*A(x^n)*...

The programs for A129374, there is no canonical definition to state claims against.
-/

/-! ## A129374.P8573042189596252539

`A319758(n)+A184946(A064924(n+2))`
-/

namespace A129374.P8573042189596252539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319758 n + A184946 (A064924 (n + 2)).toNat

end

end A129374.P8573042189596252539

/-! ## A129374.P227915221635242297

`A319758(n)+A055641(A020394(n+1))`
-/

namespace A129374.P227915221635242297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319758 n + A055641 (A020394 (n + 1)).toNat

end

end A129374.P227915221635242297

/-! ## A129374.P6850178516929834476

`A319758(n)+A055641(A061978(n+1))`
-/

namespace A129374.P6850178516929834476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319758 n + A055641 (A061978 (n + 1)).toNat

end

end A129374.P6850178516929834476

/-! ## A129374.P14171114991158258795

`or(A276791(A293536(n+4)), A319758(n))`
-/

namespace A129374.P14171114991158258795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276791 (A293536 (n + 4)).toNat) (A319758 n)

end

end A129374.P14171114991158258795

/-! ## A129374.P9370871453949700494

`A319758(n)+A141737(A209885(3*(n+1)))`
-/

namespace A129374.P9370871453949700494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319758 n + A141737 (A209885 (3 * (n + 1))).toNat

end

end A129374.P9370871453949700494

/-!
# A129375: E.g.f. satisfies: A(x) = exp(x) * A(x^2)*A(x^3)*A(x^4)*...*A(x^n)*...

The programs for A129375, there is no canonical definition to state claims against.
-/

/-! ## A129375.P12351801328369196933

`A014681(A293528(n))-A293507(n)`
-/

namespace A129375.P12351801328369196933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A293528 n).toNat - A293507 n

end

end A129375.P12351801328369196933

/-! ## A129375.P1539041986885301516

`A109785((2^n+6^n)/2)-2^n`
-/

namespace A129375.P1539041986885301516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109785 (SequenceMachineLib.roundAway ((2 ^ n + 6 ^ n : ℚ) / 2)).toNat - (2 ^ n : ℤ)

end

end A129375.P1539041986885301516

/-!
# A129376: Larger cube root in set of successive minima of A^(1/3) + B^(1/3) - C (A,B,C positive integers; A,B not cubes).

The programs for A129376, there is no canonical definition to state claims against.
-/

/-! ## A129376.P15196984289829295252

`∑[A127971(A096611(2*n+1))]`
-/

namespace A129376.P15196984289829295252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (A096611 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129376.P15196984289829295252

/-! ## A129376.P8874846557316725891

`p?[A046430(n+1)]-A125098(n)`
-/

namespace A129376.P8874846557316725891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A125098 n

end

end A129376.P8874846557316725891

/-!
# A129378: Row sums of coefficients of Bernoulli twin number polynomials.

The programs for A129378, there is no canonical definition to state claims against.
-/

/-! ## A129378.P6655055362989818301

`A097536(A085139(n))`
-/

namespace A129378.P6655055362989818301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097536 (A085139 n).toNat

end

end A129378.P6655055362989818301

/-! ## A129378.P7538024428334622438

`A282611(∏[A073348(2^n)])`
-/

namespace A129378.P7538024428334622438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073348 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282611 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129378.P7538024428334622438

/-!
# A129379: a(n) = sum of sums of all sets of three distinct preceding terms otherwise a(n) = n for n <= 3.

The programs for A129379, there is no canonical definition to state claims against.
-/

/-! ## A129379.P3738258230606513423

`A275446(xor(1, 2^n))`
-/

namespace A129379.P3738258230606513423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275446 (Nat.xor 1 (2 ^ n))

end

end A129379.P3738258230606513423

/-! ## A129379.P14235901065496123465

`record[gcd(∏{e}[n+1, 3*2^#], A210883(n+1))]`
-/

namespace A129379.P14235901065496123465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f2 n), 3 * 2 ^ Nat.factorization (f2 n) p : ℕ) : ℤ) (A210883 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129379.P14235901065496123465

/-!
# A129380: Partial sums of A129379.

The programs for A129380, there is no canonical definition to state claims against.
-/

/-! ## A129380.P11249388145455303254

`∏[a(n-1)+n-2]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A129380.P11249388145455303254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  f1 (n - 1) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129380.P11249388145455303254

/-! ## A129380.P8143866189659805613

`∑[A129379(n+1)]`
-/

namespace A129380.P8143866189659805613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129380.P8143866189659805613

/-! ## A129380.P3297164393864898182

`∑[record[A129379(A193739(n))]]`
-/

namespace A129380.P3297164393864898182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129379 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129380.P3297164393864898182

/-! ## A129380.P14680469993231777696

`∑[record[A129379(A328577(n))]]`
-/

namespace A129380.P14680469993231777696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129379 (A328577 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129380.P14680469993231777696

/-! ## A129380.P9423205765600604675

`∏[A038722(∑[A171950(n+1)])]`
-/

namespace A129380.P9423205765600604675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129380.P9423205765600604675

/-!
# A129383: Expansion of g(x) - x*g(x^2), where g(x) is the g.f. of A001405.

The programs for A129383, the canonical program `A129383.P9614778073819376212` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129383 has offset 0).

The definition of A129383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129383.P9614778073819376212

`∑{d}[n+1, A001405(#-1)*A154955((n+1)/#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129383

/-- `∑{d}[n+1, A001405(#-1)*A154955((n+1)/#)]` -/
def P9614778073819376212.Spec : Prop :=
  ∀ n, P9614778073819376212.a n = A129383 n

theorem P9614778073819376212.correct : P9614778073819376212.Spec := by
  intro n
  simp only [A129383]

end A129383

/-! ## A129383.P917754525274972516

`A001405(n)-A097805(A001972(n))`
-/

namespace A129383.P917754525274972516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A097805 (A001972 n).toNat

end

end A129383.P917754525274972516

namespace A129383

/-- `A001405(n)-A097805(A001972(n))` -/
def P917754525274972516.Spec : Prop :=
  ∀ n, P917754525274972516.a n = A129383 n

end A129383

/-! ## A129383.P5980783690608894595

`abs(A126930(n)+A097805(A001972(n)))`
-/

namespace A129383.P5980783690608894595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n + A097805 (A001972 n).toNat|

end

end A129383.P5980783690608894595

namespace A129383

/-- `abs(A126930(n)+A097805(A001972(n)))` -/
def P5980783690608894595.Spec : Prop :=
  ∀ n, P5980783690608894595.a n = A129383 n

end A129383

/-! ## A129383.P12365691781051072604

`A014495(n)+1-A097805(A001972(n))`
-/

namespace A129383.P12365691781051072604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + (1 - A097805 (A001972 n).toNat)

end

end A129383.P12365691781051072604

namespace A129383

/-- `A014495(n)+1-A097805(A001972(n))` -/
def P12365691781051072604.Spec : Prop :=
  ∀ n, P12365691781051072604.a n = A129383 n

end A129383

/-! ## A129383.P17049025464552402138

`A051920(n)-(A097805(A001972(n))+1)`
-/

namespace A129383.P17049025464552402138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - (A097805 (A001972 n).toNat + 1)

end

end A129383.P17049025464552402138

namespace A129383

/-- `A051920(n)-(A097805(A001972(n))+1)` -/
def P17049025464552402138.Spec : Prop :=
  ∀ n, P17049025464552402138.a n = A129383 n

end A129383

/-! ## A129383.P2399077457509496728

`A210736(n+1)-A097805(A001972(n))`
-/

namespace A129383.P2399077457509496728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A097805 (A001972 n).toNat

end

end A129383.P2399077457509496728

namespace A129383

/-- `A210736(n+1)-A097805(A001972(n))` -/
def P2399077457509496728.Spec : Prop :=
  ∀ n, P2399077457509496728.a n = A129383 n

end A129383

/-! ## A129383.P1363246500180860233

`∏[A063210(n+1)/(n+1)]-A097805(A001972(n))`
-/

namespace A129383.P1363246500180860233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063210 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A097805 (A001972 n).toNat : ℚ)

end

end A129383.P1363246500180860233

namespace A129383

/-- `∏[A063210(n+1)/(n+1)]-A097805(A001972(n))` -/
def P1363246500180860233.Spec : Prop :=
  ∀ n, P1363246500180860233.a n = (A129383 n : ℚ)

end A129383

/-! ## A129383.P10882863710033035713

`A026008(n)+A037956(n)-A097805(A001972(n))`
-/

namespace A129383.P10882863710033035713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 n + (A037956 n - A097805 (A001972 n).toNat)

end

end A129383.P10882863710033035713

namespace A129383

/-- `A026008(n)+A037956(n)-A097805(A001972(n))` -/
def P10882863710033035713.Spec : Prop :=
  ∀ n, P10882863710033035713.a n = A129383 n

end A129383

/-! ## A129383.P12262630567526205845

`A026021(n)+A037957(n)-A097805(A001972(n))`
-/

namespace A129383.P12262630567526205845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 n + (A037957 n - A097805 (A001972 n).toNat)

end

end A129383.P12262630567526205845

namespace A129383

/-- `A026021(n)+A037957(n)-A097805(A001972(n))` -/
def P12262630567526205845.Spec : Prop :=
  ∀ n, P12262630567526205845.a n = A129383 n

end A129383

/-! ## A129383.P16099577490543980642

`A026034(n)+A037958(n)-A097805(A001972(n))`
-/

namespace A129383.P16099577490543980642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 n + (A037958 n - A097805 (A001972 n).toNat)

end

end A129383.P16099577490543980642

namespace A129383

/-- `A026034(n)+A037958(n)-A097805(A001972(n))` -/
def P16099577490543980642.Spec : Prop :=
  ∀ n, P16099577490543980642.a n = A129383 n

end A129383

/-!
# A129384: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, floor((n-k)/2)).

The programs for A129384, the canonical program `A129384.P14685954410445170800` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129384 has offset 0).

The definition of A129384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129384.P14685954410445170800

`∑[A129383(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129384

/-- `∑[A129383(n)]` -/
def P14685954410445170800.Spec : Prop :=
  ∀ n, P14685954410445170800.a n = A129384 n

theorem P14685954410445170800.correct : P14685954410445170800.Spec := by
  intro n
  simp only [A129384]

end A129384

/-! ## A129384.P2040756688049902701

`A129383(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A129384.P2040756688049902701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129383 n + a (A004273 n - (n : ℤ)).toNat

end

end A129384.P2040756688049902701

namespace A129384

/-- `A129383(n)+a(A004273(n)-n)` -/
def P2040756688049902701.Spec : Prop :=
  ∀ n, P2040756688049902701.a n = A129384 n

end A129384

/-! ## A129384.P16236958517497426838

`∑[A001405(n)-A097805(A001972(n))]`
-/

namespace A129384.P16236958517497426838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A097805 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129384.P16236958517497426838

namespace A129384

/-- `∑[A001405(n)-A097805(A001972(n))]` -/
def P16236958517497426838.Spec : Prop :=
  ∀ n, P16236958517497426838.a n = A129384 n

end A129384

/-! ## A129384.P9240653956127759552

`A036256(n)-∑[A097805(A001972(n))]`
-/

namespace A129384.P9240653956127759552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129384.P9240653956127759552

namespace A129384

/-- `A036256(n)-∑[A097805(A001972(n))]` -/
def P9240653956127759552.Spec : Prop :=
  ∀ n, P9240653956127759552.a n = A129384 n

end A129384

/-! ## A129384.P6025041523214385630

`∑[A051920(n)-1-A097805(A001972(n))]`
-/

namespace A129384.P6025041523214385630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - 1 - A097805 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129384.P6025041523214385630

namespace A129384

/-- `∑[A051920(n)-1-A097805(A001972(n))]` -/
def P6025041523214385630.Spec : Prop :=
  ∀ n, P6025041523214385630.a n = A129384 n

end A129384

/-!
# A129388: Primes that are equal to the mean of 5 consecutive squares.

The programs for A129388, there is no canonical definition to state claims against.
-/

/-! ## A129388.P10078420577367480437

`A056899(n+3)`
-/

namespace A129388.P10078420577367480437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 3)

end

end A129388.P10078420577367480437

/-! ## A129388.P2785880741482986896

`A392249(n+3)+1`
-/

namespace A129388.P2785880741482986896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392249 (n + 3) + 1

end

end A129388.P2785880741482986896

/-! ## A129388.P16681003186927243068

`A067201(n+3)²+2`
-/

namespace A129388.P16681003186927243068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 3) ^ 2 + 2

end

end A129388.P16681003186927243068

/-! ## A129388.P3402202763043634841

`A010002(A232011(n+1))`
-/

namespace A129388.P3402202763043634841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 (A232011 (n + 1)).toNat

end

end A129388.P3402202763043634841

/-! ## A129388.P15297433618141035944

`∩[A099227(n+1), A010002(n)]`
-/

namespace A129388.P15297433618141035944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P15297433618141035944

/-! ## A129388.P9944073611233898431

`∩[A125557(n+1), A010002(n)]`
-/

namespace A129388.P9944073611233898431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P9944073611233898431

/-! ## A129388.P3062314971592585388

`∩[A344990(n+1), A010002(n)]`
-/

namespace A129388.P3062314971592585388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P3062314971592585388

/-! ## A129388.P3729308458059371087

`∩[A111693(n+1), A010002(n)]`
-/

namespace A129388.P3729308458059371087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P3729308458059371087

/-! ## A129388.P13120207172296109227

`∩[A099227(n+1), A164897(n)]`
-/

namespace A129388.P13120207172296109227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P13120207172296109227

/-! ## A129388.P4608623605695615260

`∩[A344990(n+1), A164897(n)]`
-/

namespace A129388.P4608623605695615260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P4608623605695615260

/-! ## A129388.P1918484449599732483

`∩[A099227(n+1), A245388(n+1)]`
-/

namespace A129388.P1918484449599732483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P1918484449599732483

/-! ## A129388.P6920628136280412817

`A007491(A067201(n+3))`
-/

namespace A129388.P6920628136280412817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A067201 (n + 3)).toNat

end

end A129388.P6920628136280412817

/-! ## A129388.P13292003474047267309

`A102305(A129389(n+1)+1)`
-/

namespace A129388.P13292003474047267309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (A129389 (n + 1) + 1).toNat

end

end A129388.P13292003474047267309

/-! ## A129388.P11538724397556871228

`A007491(A129389(n+1)+2)`
-/

namespace A129388.P11538724397556871228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A129389 (n + 1) + 2).toNat

end

end A129388.P11538724397556871228

/-! ## A129388.P4531606765521606587

`A010000(A129389(n+1)+2)`
-/

namespace A129388.P4531606765521606587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (A129389 (n + 1) + 2).toNat

end

end A129388.P4531606765521606587

/-! ## A129388.P12473083663255531594

`A059100(A129389(n+1)+2)`
-/

namespace A129388.P12473083663255531594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (A129389 (n + 1) + 2).toNat

end

end A129388.P12473083663255531594

/-! ## A129388.P90446106456777169

`A197985(A129389(n+1)+2)`
-/

namespace A129388.P90446106456777169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197985 (A129389 (n + 1) + 2).toNat

end

end A129388.P90446106456777169

/-! ## A129388.P946071572384870581

`A102305(A067201(n+3)-1)`
-/

namespace A129388.P946071572384870581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (A067201 (n + 3) - 1).toNat

end

end A129388.P946071572384870581

/-! ## A129388.P9125583507709968504

`∩[A007491(n+1), A010000(n)]`
-/

namespace A129388.P9125583507709968504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P9125583507709968504

/-! ## A129388.P11153618403878156761

`∩[A007491(n+1), A010002(n)]`
-/

namespace A129388.P11153618403878156761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129388.P11153618403878156761

/-!
# A129389: Numbers k such that the mean of 5 consecutive squares starting with k^2 is prime.

The programs for A129389, the canonical program `A129389.P10422043623490851629` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129389 has offset 1).

The definition of A129389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129389.P13649414623149183218

`A067201(n+3)-2`
-/

namespace A129389.P13649414623149183218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 3) - 2

end

end A129389.P13649414623149183218

namespace A129389

/-- `A067201(n+3)-2` -/
def P13649414623149183218.Spec : Prop :=
  ∀ n, P13649414623149183218.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P10422043623490851629

`eq[1, A355449(n+2)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129389

/-- `eq[1, A355449(n+2)]` -/
def P10422043623490851629.Spec : Prop :=
  ∀ n, (P10422043623490851629.a n : ℤ) = A129389 (n + 1)

theorem P10422043623490851629.correct : P10422043623490851629.Spec := by
  intro n
  simp only [A129389, Nat.add_sub_cancel]

end A129389

/-! ## A129389.P8170121082535605800

`∑[A260930(n+2)]-1`
-/

namespace A129389.P8170121082535605800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A129389.P8170121082535605800

namespace A129389

/-- `∑[A260930(n+2)]-1` -/
def P8170121082535605800.Spec : Prop :=
  ∀ n, P8170121082535605800.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P15460282234173188511

`3*A232011(n+1)-2`
-/

namespace A129389.P15460282234173188511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A232011 (n + 1) - 2

end

end A129389.P15460282234173188511

namespace A129389

/-- `3*A232011(n+1)-2` -/
def P15460282234173188511.Spec : Prop :=
  ∀ n, P15460282234173188511.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P10073361563975599416

`3*(2*A056900(n)+1)-2`
-/

namespace A129389.P10073361563975599416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A056900 n + 1) - 2

end

end A129389.P10073361563975599416

namespace A129389

/-- `3*(2*A056900(n)+1)-2` -/
def P10073361563975599416.Spec : Prop :=
  ∀ n, P10073361563975599416.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P1725496256449378891

`A016921(A056900(n))`
-/

namespace A129389.P1725496256449378891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A056900 n).toNat

end

end A129389.P1725496256449378891

namespace A129389

/-- `A016921(A056900(n))` -/
def P1725496256449378891.Spec : Prop :=
  ∀ n, P1725496256449378891.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P1986880634786238609

`A007310(A232011(n+1))`
-/

namespace A129389.P1986880634786238609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A232011 (n + 1)).toNat

end

end A129389.P1986880634786238609

namespace A129389

/-- `A007310(A232011(n+1))` -/
def P1986880634786238609.Spec : Prop :=
  ∀ n, P1986880634786238609.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P6206632544201560029

`3*A004273(A091199(n+1))-2`
-/

namespace A129389.P6206632544201560029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004273 (A091199 (n + 1)).toNat - 2

end

end A129389.P6206632544201560029

namespace A129389

/-- `3*A004273(A091199(n+1))-2` -/
def P6206632544201560029.Spec : Prop :=
  ∀ n, P6206632544201560029.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P13550422828123122428

`lt[A355449(2*n), A355449(n+1)]-1`
-/

namespace A129389.P13550422828123122428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A129389.P13550422828123122428

namespace A129389

/-- `lt[A355449(2*n), A355449(n+1)]-1` -/
def P13550422828123122428.Spec : Prop :=
  ∀ n, P13550422828123122428.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P2179087234334241662

`A005408(A056900(n)+2*A056900(n))`
-/

namespace A129389.P2179087234334241662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A056900 n + 2 * A056900 n).toNat

end

end A129389.P2179087234334241662

namespace A129389

/-- `A005408(A056900(n)+2*A056900(n))` -/
def P2179087234334241662.Spec : Prop :=
  ∀ n, P2179087234334241662.a n = A129389 (n + 1)

end A129389

/-! ## A129389.P3751570304540738081

`eq[2, A053000(n+2)]`
-/

namespace A129389.P3751570304540738081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129389.P3751570304540738081

namespace A129389

/-- `eq[2, A053000(n+2)]` -/
def P3751570304540738081.Spec : Prop :=
  ∀ n, (P3751570304540738081.a n : ℤ) = A129389 (n + 1)

end A129389

/-! ## A129389.P15823778503901234436

`eq[2, A300817(n+2)]`
-/

namespace A129389.P15823778503901234436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129389.P15823778503901234436

namespace A129389

/-- `eq[2, A300817(n+2)]` -/
def P15823778503901234436.Spec : Prop :=
  ∀ n, (P15823778503901234436.a n : ℤ) = A129389 (n + 1)

end A129389

/-!
# A129390: Expansion of phi(x) * phi(-x^5) / (chi(-x^2) * chi(-x^10)) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A129390, the canonical program `A129390.P539859092666591305` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129390 has offset 0).

The definition of A129390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129391, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129390.P539859092666591305

`(-1)^n*A129391(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129390

/-- `(-1)^n*A129391(n)` -/
def P539859092666591305.Spec : Prop :=
  ∀ n, P539859092666591305.a n = A129390 n

theorem P539859092666591305.correct : P539859092666591305.Spec := by
  intro n
  simp only [A129390]

end A129390

/-! ## A129390.P7247840329005788414

`abs(A129391(n))`
-/

namespace A129390.P7247840329005788414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129391 n|

end

end A129390.P7247840329005788414

namespace A129390

/-- `abs(A129391(n))` -/
def P7247840329005788414.Spec : Prop :=
  ∀ n, P7247840329005788414.a n = A129390 n

end A129390

/-! ## A129390.P7217303278574974521

`gcd(A000038(n), A129391(n))`
-/

namespace A129390.P7217303278574974521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A129391 n)

end

end A129390.P7217303278574974521

namespace A129390

/-- `gcd(A000038(n), A129391(n))` -/
def P7217303278574974521.Spec : Prop :=
  ∀ n, (P7217303278574974521.a n : ℤ) = A129390 n

end A129390

/-! ## A129390.P14056143441217325149

`lcm(A000034(n), A129391(n))`
-/

namespace A129390.P14056143441217325149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A129391 n)

end

end A129390.P14056143441217325149

namespace A129390

/-- `lcm(A000034(n), A129391(n))` -/
def P14056143441217325149.Spec : Prop :=
  ∀ n, (P14056143441217325149.a n : ℤ) = A129390 n

end A129390

/-! ## A129390.P2372073393334628425

`∑{d}[A129391(n), A000010(#)]`
-/

namespace A129390.P2372073393334628425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129390.P2372073393334628425

namespace A129390

/-- `∑{d}[A129391(n), A000010(#)]` -/
def P2372073393334628425.Spec : Prop :=
  ∀ n, P2372073393334628425.a n = A129390 n

end A129390

/-! ## A129390.P9091412627719349817

`A035170(Δ[n²])`
-/

namespace A129390.P9091412627719349817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129390.P9091412627719349817

namespace A129390

/-- `A035170(Δ[n²])` -/
def P9091412627719349817.Spec : Prop :=
  ∀ n, P9091412627719349817.a n = A129390 n

end A129390

/-! ## A129390.P3169859334182323123

`A035183(Δ[n²])`
-/

namespace A129390.P3169859334182323123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129390.P3169859334182323123

namespace A129390

/-- `A035183(Δ[n²])` -/
def P3169859334182323123.Spec : Prop :=
  ∀ n, P3169859334182323123.a n = A129390 n

end A129390

/-! ## A129390.P5625376417885701602

`A124233(Δ[n²])`
-/

namespace A129390.P5625376417885701602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129390.P5625376417885701602

namespace A129390

/-- `A124233(Δ[n²])` -/
def P5625376417885701602.Spec : Prop :=
  ∀ n, P5625376417885701602.a n = A129390 n

end A129390

/-! ## A129390.P7204480400149877821

`abs(A111949(Δ[n²]))`
-/

namespace A129390.P7204480400149877821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111949 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A129390.P7204480400149877821

namespace A129390

/-- `abs(A111949(Δ[n²]))` -/
def P7204480400149877821.Spec : Prop :=
  ∀ n, P7204480400149877821.a n = A129390 n

end A129390

/-! ## A129390.P17442399304116394271

`abs(A143323(2*n+1))`
-/

namespace A129390.P17442399304116394271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143323 (2 * n + 1)|

end

end A129390.P17442399304116394271

namespace A129390

/-- `abs(A143323(2*n+1))` -/
def P17442399304116394271.Spec : Prop :=
  ∀ n, P17442399304116394271.a n = A129390 n

end A129390

/-! ## A129390.P4887107626296316415

`∑{d}[2*n+1, A226162(#)]`
-/

namespace A129390.P4887107626296316415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A226162 d

end

end A129390.P4887107626296316415

namespace A129390

/-- `∑{d}[2*n+1, A226162(#)]` -/
def P4887107626296316415.Spec : Prop :=
  ∀ n, P4887107626296316415.a n = A129390 n

end A129390

/-! ## A129390.P11359440919805338699

`∑{d}[2*n+1, A289741(#)]`
-/

namespace A129390.P11359440919805338699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A289741 d

end

end A129390.P11359440919805338699

namespace A129390

/-- `∑{d}[2*n+1, A289741(#)]` -/
def P11359440919805338699.Spec : Prop :=
  ∀ n, P11359440919805338699.a n = A129390 n

end A129390

/-! ## A129390.P17247401135633773265

`A129391(n)+A028586(2*n+1)`
-/

namespace A129390.P17247401135633773265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129391 n + A028586 (2 * n + 1)

end

end A129390.P17247401135633773265

namespace A129390

/-- `A129391(n)+A028586(2*n+1)` -/
def P17247401135633773265.Spec : Prop :=
  ∀ n, P17247401135633773265.a n = A129390 n

end A129390

/-! ## A129390.P14622231007478889151

`A033718(2*n+1)-A129391(n)`
-/

namespace A129390.P14622231007478889151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n + 1) - A129391 n

end

end A129390.P14622231007478889151

namespace A129390

/-- `A033718(2*n+1)-A129391(n)` -/
def P14622231007478889151.Spec : Prop :=
  ∀ n, P14622231007478889151.a n = A129390 n

end A129390

/-! ## A129390.P3680803910221697172

`A033999(n)*A111949(2*n+1)`
-/

namespace A129390.P3680803910221697172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A111949 (2 * n + 1)

end

end A129390.P3680803910221697172

namespace A129390

/-- `A033999(n)*A111949(2*n+1)` -/
def P3680803910221697172.Spec : Prop :=
  ∀ n, P3680803910221697172.a n = A129390 n

end A129390

/-! ## A129390.P11152530084758014754

`A033999(n)*A143323(2*n+1)`
-/

namespace A129390.P11152530084758014754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A143323 (2 * n + 1)

end

end A129390.P11152530084758014754

namespace A129390

/-- `A033999(n)*A143323(2*n+1)` -/
def P11152530084758014754.Spec : Prop :=
  ∀ n, P11152530084758014754.a n = A129390 n

end A129390

/-! ## A129390.P9409807539152975455

`lcm(A020985(n), A143323(2*n+1))`
-/

namespace A129390.P9409807539152975455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A143323 (2 * n + 1))

end

end A129390.P9409807539152975455

namespace A129390

/-- `lcm(A020985(n), A143323(2*n+1))` -/
def P9409807539152975455.Spec : Prop :=
  ∀ n, (P9409807539152975455.a n : ℤ) = A129390 n

end A129390

/-! ## A129390.P12308356245279830132

`filter[A035170(2*n+1), A102609(#)]`
-/

namespace A129390.P12308356245279830132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A129390.P12308356245279830132

namespace A129390

/-- `filter[A035170(2*n+1), A102609(#)]` -/
def P12308356245279830132.Spec : Prop :=
  ∀ n, P12308356245279830132.a n = A129390 n

end A129390

/-! ## A129390.P8772028712328503660

`filter[A035183(2*n+1), A102609(#)]`
-/

namespace A129390.P8772028712328503660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A129390.P8772028712328503660

namespace A129390

/-- `filter[A035183(2*n+1), A102609(#)]` -/
def P8772028712328503660.Spec : Prop :=
  ∀ n, P8772028712328503660.a n = A129390 n

end A129390

/-! ## A129390.P7272750928083715170

`A185276(2*n)+A035170(2*n+1)`
-/

namespace A129390.P7272750928083715170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185276 (2 * n) + A035170 (2 * n + 1)

end

end A129390.P7272750928083715170

namespace A129390

/-- `A185276(2*n)+A035170(2*n+1)` -/
def P7272750928083715170.Spec : Prop :=
  ∀ n, P7272750928083715170.a n = A129390 n

end A129390

/-!
# A129391: Expansion of phi(-x) * phi(x^5) / (chi(-x^2) * chi(-x^10)) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A129391, the canonical program `A129391.P2458449094293201536` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129391 has offset 0).

The definition of A129391 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129391.P4834818481377183096

`(-1)^n*A129390(n)`
-/

namespace A129391.P4834818481377183096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129390 n

end

end A129391.P4834818481377183096

namespace A129391

/-- `(-1)^n*A129390(n)` -/
def P4834818481377183096.Spec : Prop :=
  ∀ n, P4834818481377183096.a n = A129391 n

end A129391

/-! ## A129391.P2458449094293201536

`A111949(2*n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A129391

/-- `A111949(2*n+1)` -/
def P2458449094293201536.Spec : Prop :=
  ∀ n, P2458449094293201536.a n = A129391 n

theorem P2458449094293201536.correct : P2458449094293201536.Spec := by
  intro n
  simp only [A129391]

end A129391

/-! ## A129391.P8954320071633383656

`A143323(2*n+1)`
-/

namespace A129391.P8954320071633383656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (2 * n + 1)

end

end A129391.P8954320071633383656

namespace A129391

/-- `A143323(2*n+1)` -/
def P8954320071633383656.Spec : Prop :=
  ∀ n, P8954320071633383656.a n = A129391 n

end A129391

/-! ## A129391.P4671724734329035966

`A129390(n)/A033999(n)`
-/

namespace A129391.P4671724734329035966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129390 n : ℚ) / (A033999 n : ℚ)

end

end A129391.P4671724734329035966

namespace A129391

/-- `A129390(n)/A033999(n)` -/
def P4671724734329035966.Spec : Prop :=
  ∀ n, P4671724734329035966.a n = (A129391 n : ℚ)

end A129391

/-! ## A129391.P10178155128776176830

`A129390(n)-A028586(2*n+1)`
-/

namespace A129391.P10178155128776176830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129390 n - A028586 (2 * n + 1)

end

end A129391.P10178155128776176830

namespace A129391

/-- `A129390(n)-A028586(2*n+1)` -/
def P10178155128776176830.Spec : Prop :=
  ∀ n, P10178155128776176830.a n = A129391 n

end A129391

/-! ## A129391.P9076446525118255182

`A033718(2*n+1)-A129390(n)`
-/

namespace A129391.P9076446525118255182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n + 1) - A129390 n

end

end A129391.P9076446525118255182

namespace A129391

/-- `A033718(2*n+1)-A129390(n)` -/
def P9076446525118255182.Spec : Prop :=
  ∀ n, P9076446525118255182.a n = A129391 n

end A129391

/-! ## A129391.P17495274713243821035

`A035170(2*n+1)*A057077(2*n)`
-/

namespace A129391.P17495274713243821035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (2 * n + 1) * A057077 (2 * n)

end

end A129391.P17495274713243821035

namespace A129391

/-- `A035170(2*n+1)*A057077(2*n)` -/
def P17495274713243821035.Spec : Prop :=
  ∀ n, P17495274713243821035.a n = A129391 n

end A129391

/-! ## A129391.P10872015085662552768

`A035170(2*n+1)-A028586(2*n+1)`
-/

namespace A129391.P10872015085662552768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (2 * n + 1) - A028586 (2 * n + 1)

end

end A129391.P10872015085662552768

namespace A129391

/-- `A035170(2*n+1)-A028586(2*n+1)` -/
def P10872015085662552768.Spec : Prop :=
  ∀ n, P10872015085662552768.a n = A129391 n

end A129391

/-! ## A129391.P11794417804487502138

`A033718(2*n+1)-A035170(2*n+1)`
-/

namespace A129391.P11794417804487502138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n + 1) - A035170 (2 * n + 1)

end

end A129391.P11794417804487502138

namespace A129391

/-- `A033718(2*n+1)-A035170(2*n+1)` -/
def P11794417804487502138.Spec : Prop :=
  ∀ n, P11794417804487502138.a n = A129391 n

end A129391

/-! ## A129391.P7860736359609046776

`A124233(2*n+1)-A028586(2*n+1)`
-/

namespace A129391.P7860736359609046776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 (2 * n + 1) - A028586 (2 * n + 1)

end

end A129391.P7860736359609046776

namespace A129391

/-- `A124233(2*n+1)-A028586(2*n+1)` -/
def P7860736359609046776.Spec : Prop :=
  ∀ n, P7860736359609046776.a n = A129391 n

end A129391

/-! ## A129391.P15278617936525937501

`A033718(2*n+1)-A124233(2*n+1)`
-/

namespace A129391.P15278617936525937501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n + 1) - A124233 (2 * n + 1)

end

end A129391.P15278617936525937501

namespace A129391

/-- `A033718(2*n+1)-A124233(2*n+1)` -/
def P15278617936525937501.Spec : Prop :=
  ∀ n, P15278617936525937501.a n = A129391 n

end A129391

/-! ## A129391.P8803280038292167330

`A034947(2*n+1)*A035183(2*n+1)`
-/

namespace A129391.P8803280038292167330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A035183 (2 * n + 1)

end

end A129391.P8803280038292167330

namespace A129391

/-- `A034947(2*n+1)*A035183(2*n+1)` -/
def P8803280038292167330.Spec : Prop :=
  ∀ n, P8803280038292167330.a n = A129391 n

end A129391

/-! ## A129391.P1098371264047929261

`A035170(2*n+1)*A101455(2*n+1)`
-/

namespace A129391.P1098371264047929261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (2 * n + 1) * A101455 (2 * n + 1)

end

end A129391.P1098371264047929261

namespace A129391

/-- `A035170(2*n+1)*A101455(2*n+1)` -/
def P1098371264047929261.Spec : Prop :=
  ∀ n, P1098371264047929261.a n = A129391 n

end A129391

/-! ## A129391.P15138227911655045192

`A035170(2*n+1)*A209615(2*n+1)`
-/

namespace A129391.P15138227911655045192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (2 * n + 1) * A209615 (2 * n + 1)

end

end A129391.P15138227911655045192

namespace A129391

/-- `A035170(2*n+1)*A209615(2*n+1)` -/
def P15138227911655045192.Spec : Prop :=
  ∀ n, P15138227911655045192.a n = A129391 n

end A129391

/-! ## A129391.P6971211237979482433

`A035183(2*n+1)*A209615(2*n+1)`
-/

namespace A129391.P6971211237979482433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (2 * n + 1) * A209615 (2 * n + 1)

end

end A129391.P6971211237979482433

namespace A129391

/-- `A035183(2*n+1)*A209615(2*n+1)` -/
def P6971211237979482433.Spec : Prop :=
  ∀ n, P6971211237979482433.a n = A129391 n

end A129391

/-!
# A129392: Triangle read by rows: T(r,c)=T(r,c-1)+T(r,c+1)+T(r-1,c-1).

The programs for A129392, there is no canonical definition to state claims against.
-/

/-! ## A129392.P2323997887497424028

`A129396(n)-A129394(n)`
-/

namespace A129392.P2323997887497424028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 n - A129394 n

end

end A129392.P2323997887497424028

/-! ## A129392.P5534215889228559813

`A129396(n)+-A129394(n)%A001845(n)`
-/

namespace A129392.P5534215889228559813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 n + Int.tmod (-A129394 n) (A001845 n)

end

end A129392.P5534215889228559813

/-! ## A129392.P17675418963559546234

`A129396(n)+or(-A129394(n), A000038(n+1))`
-/

namespace A129392.P17675418963559546234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 n + Int.lor (-A129394 n) (A000038 (n + 1))

end

end A129392.P17675418963559546234

/-! ## A129392.P1656587487828535869

`A129396(n)+xor(-A129394(n), A000007(n+2))`
-/

namespace A129392.P1656587487828535869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 n + Int.xor (-A129394 n) (A000007 (n + 2))

end

end A129392.P1656587487828535869

/-! ## A129392.P13918602640632652941

`A129396(n)+(-A129394(n))^A087810(2*n+3)`
-/

namespace A129392.P13918602640632652941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129396 n : ℚ) + (-A129394 n : ℚ) ^ (A087810 (2 * n + 3) : ℤ)

end

end A129392.P13918602640632652941

/-! ## A129392.P13174927973892905008

`A129396(n)+(-A129394(n))^A001222(A163588(n+1))`
-/

namespace A129392.P13174927973892905008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129396 n : ℚ) + (-A129394 n : ℚ) ^ (A001222 (A163588 (n + 1)).toNat : ℤ)

end

end A129392.P13174927973892905008

/-!
# A129393: Row sums of A129392.

The programs for A129393, the canonical program `A129393.P4807073077834322711` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129393 has offset 0).

The definition of A129393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129393.P4807073077834322711

`4*(1-a(n-2))-3*a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129393

/-- `4*(1-a(n-2))-3*a(n-1)` -/
def P4807073077834322711.Spec : Prop :=
  ∀ n, P4807073077834322711.a n = A129393 n

theorem P4807073077834322711.correct : P4807073077834322711.Spec := by
  intro n
  simp only [A129393]

end A129393

/-! ## A129393.P15427434284706487799

`A105225(2*n+3)`
-/

namespace A129393.P15427434284706487799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 (2 * n + 3)

end

end A129393.P15427434284706487799

namespace A129393

/-- `A105225(2*n+3)` -/
def P15427434284706487799.Spec : Prop :=
  ∀ n, P15427434284706487799.a n = A129393 n

end A129393

/-! ## A129393.P9096987311222854332

`(A128415(n+2)+1)/2`
-/

namespace A129393.P9096987311222854332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128415 (n + 2) + 1 : ℚ) / 2

end

end A129393.P9096987311222854332

namespace A129393

/-- `(A128415(n+2)+1)/2` -/
def P9096987311222854332.Spec : Prop :=
  ∀ n, P9096987311222854332.a n = (A129393 n : ℚ)

end A129393

/-! ## A129393.P17834938394978310733

`A174565(n)+Δ[A078033(2*n+1)]`
-/

namespace A129393.P17834938394978310733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078033 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174565 n + (f1 (n + 1) - f1 n)

end

end A129393.P17834938394978310733

namespace A129393

/-- `A174565(n)+Δ[A078033(2*n+1)]` -/
def P17834938394978310733.Spec : Prop :=
  ∀ n, P17834938394978310733.a n = A129393 n

end A129393

/-! ## A129393.P16882431189809603412

`A077876(2*n)-2*A078020(2*n+1)`
-/

namespace A129393.P16882431189809603412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (2 * n) - 2 * A078020 (2 * n + 1)

end

end A129393.P16882431189809603412

namespace A129393

/-- `A077876(2*n)-2*A078020(2*n+1)` -/
def P16882431189809603412.Spec : Prop :=
  ∀ n, P16882431189809603412.a n = A129393 n

end A129393

/-! ## A129393.P3495622756693805277

`2*A110512(2*n+1)-A078033(2*n+1)`
-/

namespace A129393.P3495622756693805277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110512 (2 * n + 1) - A078033 (2 * n + 1)

end

end A129393.P3495622756693805277

namespace A129393

/-- `2*A110512(2*n+1)-A078033(2*n+1)` -/
def P3495622756693805277.Spec : Prop :=
  ∀ n, P3495622756693805277.a n = A129393 n

end A129393

/-! ## A129393.P4673092548664868546

`2-A105579(2*n+3)`
-/

namespace A129393.P4673092548664868546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A105579 (2 * n + 3)

end

end A129393.P4673092548664868546

namespace A129393

/-- `2-A105579(2*n+3)` -/
def P4673092548664868546.Spec : Prop :=
  ∀ n, P4673092548664868546.a n = A129393 n

end A129393

/-! ## A129393.P4654332911946831453

`A174565(n)-Δ[A174565(n)]`
-/

namespace A129393.P4654332911946831453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174565 n - (f1 (n + 1) - f1 n)

end

end A129393.P4654332911946831453

namespace A129393

/-- `A174565(n)-Δ[A174565(n)]` -/
def P4654332911946831453.Spec : Prop :=
  ∀ n, P4654332911946831453.a n = A129393 n

end A129393

/-! ## A129393.P7404026046338172375

`A077876(2*n)-Δ[A077876(2*n)]`
-/

namespace A129393.P7404026046338172375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (2 * n) - (f1 (n + 1) - f1 n)

end

end A129393.P7404026046338172375

namespace A129393

/-- `A077876(2*n)-Δ[A077876(2*n)]` -/
def P7404026046338172375.Spec : Prop :=
  ∀ n, P7404026046338172375.a n = A129393 n

end A129393

/-! ## A129393.P12896412535639490840

`A105577(2*n+1)-A105576(2*n+1)`
-/

namespace A129393.P12896412535639490840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105577 (2 * n + 1) - A105576 (2 * n + 1)

end

end A129393.P12896412535639490840

namespace A129393

/-- `A105577(2*n+1)-A105576(2*n+1)` -/
def P12896412535639490840.Spec : Prop :=
  ∀ n, P12896412535639490840.a n = A129393 n

end A129393

/-! ## A129393.P15602626919796528745

`A174565(n)+A174565(n)-A174565(n+1)`
-/

namespace A129393.P15602626919796528745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174565 n + (A174565 n - A174565 (n + 1))

end

end A129393.P15602626919796528745

namespace A129393

/-- `A174565(n)+A174565(n)-A174565(n+1)` -/
def P15602626919796528745.Spec : Prop :=
  ∀ n, P15602626919796528745.a n = A129393 n

end A129393

/-! ## A129393.P14101421889580994241

`A105576(2*n)-(A105578(2*n)+A002249(2*n+1))`
-/

namespace A129393.P14101421889580994241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105576 (2 * n) - (A105578 (2 * n) + A002249 (2 * n + 1))

end

end A129393.P14101421889580994241

namespace A129393

/-- `A105576(2*n)-(A105578(2*n)+A002249(2*n+1))` -/
def P14101421889580994241.Spec : Prop :=
  ∀ n, P14101421889580994241.a n = A129393 n

end A129393

/-! ## A129393.P9209157687855391860

`A129397(n)-A129395(n)`
-/

namespace A129393.P9209157687855391860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129397 n - A129395 n

end

end A129393.P9209157687855391860

namespace A129393

/-- `A129397(n)-A129395(n)` -/
def P9209157687855391860.Spec : Prop :=
  ∀ n, P9209157687855391860.a n = A129393 n

end A129393

/-! ## A129393.P11512018539643937000

`A002248(2*(n+1))-A215458(2*n+3)`
-/

namespace A129393.P11512018539643937000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002248 (2 * (n + 1)) - A215458 (2 * n + 3)

end

end A129393.P11512018539643937000

namespace A129393

/-- `A002248(2*(n+1))-A215458(2*n+3)` -/
def P11512018539643937000.Spec : Prop :=
  ∀ n, P11512018539643937000.a n = A129393 n

end A129393

/-!
# A129394: Triangle read by rows: T(r,c)=T(r,c-1)+T(r,c+1)+T(r-1,c-1).

The programs for A129394, there is no canonical definition to state claims against.
-/

/-! ## A129394.P17265130768493310964

`A129396(n)-A129392(n)`
-/

namespace A129394.P17265130768493310964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 n - A129392 n

end

end A129394.P17265130768493310964

/-! ## A129394.P13725511061125430777

`A129396(n)+-A129392(n)%A017317(n)`
-/

namespace A129394.P13725511061125430777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 n + Int.tmod (-A129392 n) (A017317 n)

end

end A129394.P13725511061125430777

/-! ## A129394.P14544318664132093531

`A129396(n)+or(-A129392(n), A320841(n))`
-/

namespace A129394.P14544318664132093531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 n + Int.lor (-A129392 n) (A320841 n)

end

end A129394.P14544318664132093531

/-!
# A129395: Row sums of A129394.

The programs for A129395, there is no canonical definition to state claims against.
-/

/-! ## A129395.P8523975556371799013

`A129397(n)-A129393(n)`
-/

namespace A129395.P8523975556371799013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129397 n - A129393 n

end

end A129395.P8523975556371799013

/-! ## A129395.P15823962710794357310

`A129397(n)-A105225(2*n+3)`
-/

namespace A129395.P15823962710794357310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129397 n - A105225 (2 * n + 3)

end

end A129395.P15823962710794357310

/-! ## A129395.P2232807851979521015

`A129397(n)-(A128415(n+2)+1)/2`
-/

namespace A129395.P2232807851979521015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129397 n : ℚ) - (A128415 (n + 2) + 1 : ℚ) / 2

end

end A129395.P2232807851979521015

/-! ## A129395.P2927793291918840825

`A129397(n)-(2-A105579(2*n+3))`
-/

namespace A129395.P2927793291918840825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129397 n - (2 - A105579 (2 * n + 3))

end

end A129395.P2927793291918840825

/-! ## A129395.P8102946051816765665

`A129397(n)+Δ[A174565(n)]-A174565(n)`
-/

namespace A129395.P8102946051816765665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129397 n + (f1 (n + 1) - f1 n - A174565 n)

end

end A129395.P8102946051816765665

/-!
# A129396: Triangle read by rows: T(r,c)=T(r,c-1)+T(r,c+1)+T(r-1,c-1).

The programs for A129396, there is no canonical definition to state claims against.
-/

/-! ## A129396.P9080867534097434104

`A129394(n)+A129392(n)`
-/

namespace A129396.P9080867534097434104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129394 n + A129392 n

end

end A129396.P9080867534097434104

/-! ## A129396.P7535243401971630185

`A129392(n)--A129394(n)%A008861(n)`
-/

namespace A129396.P7535243401971630185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129392 n - Int.tmod (-A129394 n) (A008861 n)

end

end A129396.P7535243401971630185

/-! ## A129396.P3076179538186519684

`A129394(n)--A129392(n)%A017317(n)`
-/

namespace A129396.P3076179538186519684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129394 n - Int.tmod (-A129392 n) (A017317 n)

end

end A129396.P3076179538186519684

/-!
# A129397: Row sums of A129396.

The programs for A129397, there is no canonical definition to state claims against.
-/

/-! ## A129397.P714455776510328039

`A129395(n)+A129393(n)`
-/

namespace A129397.P714455776510328039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129395 n + A129393 n

end

end A129397.P714455776510328039

/-! ## A129397.P5812431422535111451

`A129395(n)+A105225(2*n+3)`
-/

namespace A129397.P5812431422535111451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129395 n + A105225 (2 * n + 3)

end

end A129397.P5812431422535111451

/-! ## A129397.P279954754485217142

`A129395(n)+(A128415(n+2)+1)/2`
-/

namespace A129397.P279954754485217142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129395 n : ℚ) + (A128415 (n + 2) + 1 : ℚ) / 2

end

end A129397.P279954754485217142

/-! ## A129397.P2128763523438486449

`A129395(n)+2-A105579(2*n+3)`
-/

namespace A129397.P2128763523438486449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129395 n + (2 - A105579 (2 * n + 3))

end

end A129397.P2128763523438486449

/-! ## A129397.P7974015141718610904

`A129395(n)+ceil(A002249(2*(n+2))/2)`
-/

namespace A129397.P7974015141718610904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129395 n + ⌈(A002249 (2 * (n + 2)) : ℚ) / 2⌉

end

end A129397.P7974015141718610904

