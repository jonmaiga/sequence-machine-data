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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A330800: Evaluation of the Motzkin polynomials at -1/2 and normalized with (-2)^n.

The programs for A330800, there is no canonical definition to state claims against.
-/

/-! ## A330800.P9884546072105492333

`A008683(A151444(2*n))*A151479(n)`
-/

namespace A330800.P9884546072105492333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151444 (2 * n)).toNat * A151479 n

end

end A330800.P9884546072105492333

/-!
# A330801: a(n) = A080247(2*n, n), the central values of the Big-Schröder triangle.

The programs for A330801, there is no canonical definition to state claims against.
-/

/-! ## A330801.P7858758487923435952

`(n+1)*A027307(n)`
-/

namespace A330801.P7858758487923435952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027307 n

end

end A330801.P7858758487923435952

/-! ## A330801.P16586989686436656460

`(n+1)*A110682(∑[n])`
-/

namespace A330801.P16586989686436656460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110682 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330801.P16586989686436656460

/-! ## A330801.P13844636080222652855

`(n+1)*record[A110682(n)]`
-/

namespace A330801.P13844636080222652855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330801.P13844636080222652855

/-! ## A330801.P17361478055147489825

`(n+1)*A137842(2*n)`
-/

namespace A330801.P17361478055147489825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A137842 (2 * n)

end

end A330801.P17361478055147489825

/-! ## A330801.P2413349122696718228

`(n+1)*A084078(A004273(n))`
-/

namespace A330801.P2413349122696718228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084078 (A004273 n).toNat

end

end A330801.P2413349122696718228

/-! ## A330801.P17582928230392512497

`A110682(A000217(n))*(n+1)`
-/

namespace A330801.P17582928230392512497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (A000217 n).toNat * (n + 1 : ℤ)

end

end A330801.P17582928230392512497

/-! ## A330801.P17324100112574420763

`A080247(∑[4*n])`
-/

namespace A330801.P17324100112574420763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330801.P17324100112574420763

/-! ## A330801.P9416712566789732566

`A106579(2*(n+1)²)`
-/

namespace A330801.P9416712566789732566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (2 * (n + 1) ^ 2)

end

end A330801.P9416712566789732566

/-! ## A330801.P9307658256558577603

`A122538(2*(n+1)²)`
-/

namespace A330801.P9307658256558577603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (2 * (n + 1) ^ 2)

end

end A330801.P9307658256558577603

/-! ## A330801.P15833658378669925282

`A033877(∑[4*n]+1)`
-/

namespace A330801.P15833658378669925282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330801.P15833658378669925282

/-!
# A330802: Evaluation of the Big-Schröder polynomials at 1/2 and normalized with 2^n.

The programs for A330802, there is no canonical definition to state claims against.
-/

/-! ## A330802.P6869956648470258238

`A054726(n+2)-3*a(n-1)` with `a(0)=1`
-/

namespace A330802.P6869956648470258238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054726 (n + 2) - 3 * a (n - 1)

end

end A330802.P6869956648470258238

/-! ## A330802.P6189216318272152966

`(12*(2-n)*a(n-3)+(32*n-10)*a(n-2)+9*(n-1)*a(n-1))/(n+1)` with `a(0)=1, a(1)=5, a(2)=33`
-/

namespace A330802.P6189216318272152966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 33] fun n a =>
  ((12 * (2 - (n : ℤ)) : ℚ) * a (n - 3) + ((32 * n : ℤ) - 10 : ℚ) * a (n - 2) + (9 * ((n : ℤ) - 1) : ℚ) * a (n - 1)) / (n + 1 : ℚ)

end

end A330802.P6189216318272152966

/-!
# A330804: Number of chains in partitions of [n] ordered by refinement.

The programs for A330804, there is no canonical definition to state claims against.
-/

/-! ## A330804.P2051705285055442772

`2*A331957(n)-1`
-/

namespace A330804.P2051705285055442772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331957 n - 1

end

end A330804.P2051705285055442772

/-! ## A330804.P6318815955874380188

`A033999(2*n+1)+2*A331957(n)`
-/

namespace A330804.P6318815955874380188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + 2 * A331957 n

end

end A330804.P6318815955874380188

/-! ## A330804.P17554331096854750536

`A331957(n)+A331957(n)-A057427(n+1)`
-/

namespace A330804.P17554331096854750536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331957 n + (A331957 n - A057427 (n + 1))

end

end A330804.P17554331096854750536

/-! ## A330804.P3310527596446446329

`A331957(n)+A331957(n)-A001221(A000043(n+1))`
-/

namespace A330804.P3310527596446446329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331957 n + (A331957 n - A001221 (A000043 (n + 1)).toNat)

end

end A330804.P3310527596446446329

/-!
# A330805: Number of squares and rectangles in the interior of the square with vertices (n,0), (0,n), (-n,0) and (0,-n) in a square (x,y)-grid.

The programs for A330805, the canonical program `A330805.P7853712025834321155` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330805 has offset 0).

The definition of A330805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330805.P2113374303503899536

`n*(n+1)*(4*n²+12*n+11)/6`
-/

namespace A330805.P2113374303503899536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (4 * n ^ 2 + 12 * n + 11) : ℚ) / 6

end

end A330805.P2113374303503899536

namespace A330805

/-- `n*(n+1)*(4*n²+12*n+11)/6` -/
def P2113374303503899536.Spec : Prop :=
  ∀ n, P2113374303503899536.a n = (A330805 n : ℚ)

theorem P2113374303503899536.correct : P2113374303503899536.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A330805, Nat.add_sub_cancel, A330805.P2113374303503899536.a, A330805.P7853712025834321155.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A330805, Nat.add_sub_cancel, A330805.P2113374303503899536.a, A330805.P7853712025834321155.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A330805

/-! ## A330805.P7853712025834321155

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=9, a(2)=51, a(3)=166, a(4)=410`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330805

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7853712025834321155.Spec : Prop :=
  ∀ n, P7853712025834321155.a n = A330805 n

theorem P7853712025834321155.correct : P7853712025834321155.Spec := by
  intro n
  simp only [A330805]

end A330805

/-! ## A330805.P10268054404302194541

`4*A000332(n+3)+A212523(n+1)`
-/

namespace A330805.P10268054404302194541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000332 (n + 3) + A212523 (n + 1)

end

end A330805.P10268054404302194541

namespace A330805

/-- `4*A000332(n+3)+A212523(n+1)` -/
def P10268054404302194541.Spec : Prop :=
  ∀ n, P10268054404302194541.a n = A330805 n

end A330805

/-! ## A330805.P5590338567071822590

`9*A000332(n+3)+6*A000332(n+2)+A000332(n+1)`
-/

namespace A330805.P5590338567071822590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000332 (n + 3) + 6 * A000332 (n + 2) + A000332 (n + 1)

end

end A330805.P5590338567071822590

namespace A330805

/-- `9*A000332(n+3)+6*A000332(n+2)+A000332(n+1)` -/
def P5590338567071822590.Spec : Prop :=
  ∀ n, P5590338567071822590.a n = A330805 n

end A330805

/-! ## A330805.P12122443151762942843

`∑[∑[or(1, 8*n²)]]-1-n`
-/

namespace A330805.P12122443151762942843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (n : ℤ)

end

end A330805.P12122443151762942843

namespace A330805

/-- `∑[∑[or(1, 8*n²)]]-1-n` -/
def P12122443151762942843.Spec : Prop :=
  ∀ n, P12122443151762942843.a n = A330805 n

end A330805

/-! ## A330805.P7277017621834728222

`∑[∑[4*n]]+C(2*n+3, 4)`
-/

namespace A330805.P7277017621834728222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 3) 4

end

end A330805.P7277017621834728222

namespace A330805

/-- `∑[∑[4*n]]+C(2*n+3, 4)` -/
def P7277017621834728222.Spec : Prop :=
  ∀ n, (P7277017621834728222.a n : ℤ) = A330805 n

end A330805

/-! ## A330805.P8957060552318346140

`∑[A336288(n+1)-1]`
-/

namespace A330805.P8957060552318346140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330805.P8957060552318346140

namespace A330805

/-- `∑[A336288(n+1)-1]` -/
def P8957060552318346140.Spec : Prop :=
  ∀ n, P8957060552318346140.a n = A330805 n

end A330805

/-! ## A330805.P16979465140316073983

`A072819(n+1)+∑[n]`
-/

namespace A330805.P16979465140316073983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330805.P16979465140316073983

namespace A330805

/-- `A072819(n+1)+∑[n]` -/
def P16979465140316073983.Spec : Prop :=
  ∀ n, P16979465140316073983.a n = A330805 n

end A330805

/-! ## A330805.P6507289746066904120

`∑[A057813(n)-(n+1)]`
-/

namespace A330805.P6507289746066904120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330805.P6507289746066904120

namespace A330805

/-- `∑[A057813(n)-(n+1)]` -/
def P6507289746066904120.Spec : Prop :=
  ∀ n, P6507289746066904120.a n = A330805 n

end A330805

/-! ## A330805.P6614861486629828601

`A213840(n+1)-(n+1)`
-/

namespace A330805.P6614861486629828601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) - (n + 1 : ℤ)

end

end A330805.P6614861486629828601

namespace A330805

/-- `A213840(n+1)-(n+1)` -/
def P6614861486629828601.Spec : Prop :=
  ∀ n, P6614861486629828601.a n = A330805 n

end A330805

/-! ## A330805.P16891169021571974996

`A368046(n)+A033487(n)`
-/

namespace A330805.P16891169021571974996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n + A033487 n

end

end A330805.P16891169021571974996

namespace A330805

/-- `A368046(n)+A033487(n)` -/
def P16891169021571974996.Spec : Prop :=
  ∀ n, P16891169021571974996.a n = A330805 n

end A330805

/-! ## A330805.P5794055729436350491

`A180324(n)+A135036(n+1)`
-/

namespace A330805.P5794055729436350491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n + A135036 (n + 1)

end

end A330805.P5794055729436350491

namespace A330805

/-- `A180324(n)+A135036(n+1)` -/
def P5794055729436350491.Spec : Prop :=
  ∀ n, P5794055729436350491.a n = A330805 n

end A330805

/-! ## A330805.P5071015806316977277

`A213843(n+1)-A167875(n)`
-/

namespace A330805.P5071015806316977277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) - A167875 n

end

end A330805.P5071015806316977277

namespace A330805

/-- `A213843(n+1)-A167875(n)` -/
def P5071015806316977277.Spec : Prop :=
  ∀ n, P5071015806316977277.a n = A330805 n

end A330805

/-! ## A330805.P1799070745057476954

`A242604(n+1)-A330700(n)`
-/

namespace A330805.P1799070745057476954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242604 (n + 1) - A330700 n

end

end A330805.P1799070745057476954

namespace A330805

/-- `A242604(n+1)-A330700(n)` -/
def P1799070745057476954.Spec : Prop :=
  ∀ n, P1799070745057476954.a n = A330805 n

end A330805

/-! ## A330805.P1740201043992795387

`A098077(n+1)-A085786(n+1)`
-/

namespace A330805.P1740201043992795387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) - A085786 (n + 1)

end

end A330805.P1740201043992795387

namespace A330805

/-- `A098077(n+1)-A085786(n+1)` -/
def P1740201043992795387.Spec : Prop :=
  ∀ n, P1740201043992795387.a n = A330805 n

end A330805

/-! ## A330805.P15752102466529312316

`A000330(n+1)*A005843(n)-A000330(n)`
-/

namespace A330805.P15752102466529312316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A005843 n - A000330 n

end

end A330805.P15752102466529312316

namespace A330805

/-- `A000330(n+1)*A005843(n)-A000330(n)` -/
def P15752102466529312316.Spec : Prop :=
  ∀ n, P15752102466529312316.a n = A330805 n

end A330805

/-! ## A330805.P3472378654649129851

`A008911(n+1)+A083374(n+1)+A000217(n)`
-/

namespace A330805.P3472378654649129851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + (A083374 (n + 1) + A000217 n)

end

end A330805.P3472378654649129851

namespace A330805

/-- `A008911(n+1)+A083374(n+1)+A000217(n)` -/
def P3472378654649129851.Spec : Prop :=
  ∀ n, P3472378654649129851.a n = A330805 n

end A330805

/-! ## A330805.P1615967652982103748

`A071270(n+1)-∑[n+1]`
-/

namespace A330805.P1615967652982103748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330805.P1615967652982103748

namespace A330805

/-- `A071270(n+1)-∑[n+1]` -/
def P1615967652982103748.Spec : Prop :=
  ∀ n, P1615967652982103748.a n = A330805 n

end A330805

/-! ## A330805.P12360406466306498995

`A180324(n+1)-A172482(n)`
-/

namespace A330805.P12360406466306498995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 (n + 1) - A172482 n

end

end A330805.P12360406466306498995

namespace A330805

/-- `A180324(n+1)-A172482(n)` -/
def P12360406466306498995.Spec : Prop :=
  ∀ n, P12360406466306498995.a n = A330805 n

end A330805

/-!
# A330806: a(1) = 1; a(2) = 1; for n >= 3, a(n) = a(n-1) / gcd(a(n-1), n-1) + a(n-2) / gcd(a(n-2), n-2).

The programs for A330806, the canonical program `A330806.P2374566727071063638` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330806 has offset 1).

The definition of A330806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330806.P2374566727071063638

`a(n-1)/gcd(a(n-1), n)+a(n-2)/gcd(a(n-2), n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330806

/-- `a(n-1)/gcd(a(n-1), n)+a(n-2)/gcd(a(n-2), n-1)` -/
def P2374566727071063638.Spec : Prop :=
  ∀ n, P2374566727071063638.a n = (A330806 (n + 1) : ℚ)

end A330806

/-!
# A330807: a(1) = 2; a(n+1) = Sum_{k=1..n} {S(a(k)): S(a(k)) = S(a(n))}, where S is sopfr (A001414).

The programs for A330807, there is no canonical definition to state claims against.
-/

/-! ## A330807.P8352382926575987292

`A353125(lt[A353161(3*n+4), A353150(n)])`
-/

namespace A330807.P8352382926575987292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353161 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330807.P8352382926575987292

/-! ## A330807.P6361690725116312104

`A353125(lt[A353161(3*n+4), A353120(n+1)])`
-/

namespace A330807.P6361690725116312104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353161 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330807.P6361690725116312104

/-! ## A330807.P11153369021216649411

`A353125(lt[A353161(3*n+4), A353124(n+1)])`
-/

namespace A330807.P11153369021216649411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353161 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330807.P11153369021216649411

/-! ## A330807.P9852542703157550303

`A353125(lt[A353161(3*n+4), A353134(n+1)])`
-/

namespace A330807.P9852542703157550303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353161 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330807.P9852542703157550303

/-! ## A330807.P18023386546315649753

`A353125(lt[A353161(3*n+4), A353137(n+1)])`
-/

namespace A330807.P18023386546315649753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353161 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330807.P18023386546315649753

/-!
# A330808: Minimum number of unit fractions that must be added to 1/n to reach 1.

The programs for A330808, there is no canonical definition to state claims against.
-/

/-! ## A330808.P6940856578932039439

`A097849(n+1)-A000007(6*n²)`
-/

namespace A330808.P6940856578932039439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (n + 1) - A000007 (6 * n ^ 2)

end

end A330808.P6940856578932039439

/-! ## A330808.P17500826528671063332

`A097849(n+1)-A010815(A033579(n))`
-/

namespace A330808.P17500826528671063332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (n + 1) - A010815 (A033579 n).toNat

end

end A330808.P17500826528671063332

/-! ## A330808.P1676354602589055924

`A097849(n+1)-A039966(A005897(n))`
-/

namespace A330808.P1676354602589055924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (n + 1) - A039966 (A005897 n).toNat

end

end A330808.P1676354602589055924

/-! ## A330808.P10520692685489586280

`and(A003817(A033581(n)), A097849(n+1))`
-/

namespace A330808.P10520692685489586280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A033581 n).toNat) (A097849 (n + 1))

end

end A330808.P10520692685489586280

/-! ## A330808.P13882740204800546137

`A097849(n+1)-A010051(A276086(2*n+1))`
-/

namespace A330808.P13882740204800546137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (n + 1) - A010051 (A276086 (2 * n + 1)).toNat

end

end A330808.P13882740204800546137

/-!
# A330809: Triangular numbers having exactly 8 divisors.

The programs for A330809, the canonical program `A330809.P313460960627115106` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330809 has offset 1).

The definition of A330809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330809.P313460960627115106

`A253145(eq[8, A063440(n+1)])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330809

/-- `A253145(eq[8, A063440(n+1)])` -/
def P313460960627115106.Spec : Prop :=
  ∀ n, P313460960627115106.a n = A330809 (n + 1)

theorem P313460960627115106.correct : P313460960627115106.Spec := by
  intro n
  simp only [A330809, Nat.add_sub_cancel]

end A330809

/-! ## A330809.P3719999485684908353

`A000096(eq[8, A063440(n+1)])+1`
-/

namespace A330809.P3719999485684908353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A330809.P3719999485684908353

namespace A330809

/-- `A000096(eq[8, A063440(n+1)])+1` -/
def P3719999485684908353.Spec : Prop :=
  ∀ n, P3719999485684908353.a n = A330809 (n + 1)

end A330809

/-! ## A330809.P16496391467803194273

`A000217(eq[8, A063440(n+1)]+1)`
-/

namespace A330809.P16496391467803194273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330809.P16496391467803194273

namespace A330809

/-- `A000217(eq[8, A063440(n+1)]+1)` -/
def P16496391467803194273.Spec : Prop :=
  ∀ n, P16496391467803194273.a n = A330809 (n + 1)

end A330809

/-! ## A330809.P3039544039689028359

`A167614(eq[8, A063440(n+1)])-3`
-/

namespace A330809.P3039544039689028359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 3

end

end A330809.P3039544039689028359

namespace A330809

/-- `A167614(eq[8, A063440(n+1)])-3` -/
def P3039544039689028359.Spec : Prop :=
  ∀ n, P3039544039689028359.a n = A330809 (n + 1)

end A330809

/-! ## A330809.P15928077573204626438

`A167499(eq[8, A063440(n+1)])-5`
-/

namespace A330809.P15928077573204626438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 5

end

end A330809.P15928077573204626438

namespace A330809

/-- `A167499(eq[8, A063440(n+1)])-5` -/
def P15928077573204626438.Spec : Prop :=
  ∀ n, P15928077573204626438.a n = A330809 (n + 1)

end A330809

/-! ## A330809.P12741002076963597921

`∩[A030626(n+1), A000217(n)]`
-/

namespace A330809.P12741002076963597921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330809.P12741002076963597921

namespace A330809

/-- `∩[A030626(n+1), A000217(n)]` -/
def P12741002076963597921.Spec : Prop :=
  ∀ n, (P12741002076963597921.a n : ℤ) = A330809 (n + 1)

end A330809

/-! ## A330809.P10092341367678534621

`∩[A030626(n+1), A253145(n)]`
-/

namespace A330809.P10092341367678534621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330809.P10092341367678534621

namespace A330809

/-- `∩[A030626(n+1), A253145(n)]` -/
def P10092341367678534621.Spec : Prop :=
  ∀ n, (P10092341367678534621.a n : ℤ) = A330809 (n + 1)

end A330809

/-! ## A330809.P12068886533446917344

`∩[A111398(n+1), A253145(n)]`
-/

namespace A330809.P12068886533446917344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330809.P12068886533446917344

namespace A330809

/-- `∩[A111398(n+1), A253145(n)]` -/
def P12068886533446917344.Spec : Prop :=
  ∀ n, (P12068886533446917344.a n : ℤ) = A330809 (n + 1)

end A330809

/-! ## A330809.P1937755262191868918

`∩[A005214(n+1), A030626(n+1)]`
-/

namespace A330809.P1937755262191868918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330809.P1937755262191868918

namespace A330809

/-- `∩[A005214(n+1), A030626(n+1)]` -/
def P1937755262191868918.Spec : Prop :=
  ∀ n, (P1937755262191868918.a n : ℤ) = A330809 (n + 1)

end A330809

/-! ## A330809.P3792071031986515903

`∩[A030626(n+1), A186783(n+1)]`
-/

namespace A330809.P3792071031986515903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330809.P3792071031986515903

namespace A330809

/-- `∩[A030626(n+1), A186783(n+1)]` -/
def P3792071031986515903.Spec : Prop :=
  ∀ n, (P3792071031986515903.a n : ℤ) = A330809 (n + 1)

end A330809

/-!
# A330810: a(n) is the largest number that can be expressed as the sum of three triangular numbers in exactly n ways.

The programs for A330810, there is no canonical definition to state claims against.
-/

/-! ## A330810.P16290411347730461136

`floor(A095811(n+1)/8)`
-/

namespace A330810.P16290411347730461136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095811 (n + 1) : ℚ) / 8⌋

end

end A330810.P16290411347730461136

/-! ## A330810.P3082882386276227386

`∑{d}[round(A095811(n+1)/8), A000010(#)]`
-/

namespace A330810.P3082882386276227386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095811 (n + 1) : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A330810.P3082882386276227386

/-! ## A330810.P7450598091748502705

`A007318(∑[n])*round(A095811(n+1)/8)`
-/

namespace A330810.P7450598091748502705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A095811 (n + 1) : ℚ) / 8)

end

end A330810.P7450598091748502705

/-! ## A330810.P13275539227969998999

`round(A095811(n+1)/8)/A007318(C(2, n))`
-/

namespace A330810.P13275539227969998999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A095811 (n + 1) : ℚ) / 8) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A330810.P13275539227969998999

/-! ## A330810.P11277465104285667459

`round(A095811(n+1)/8)/A007318(∑[n+1])`
-/

namespace A330810.P11277465104285667459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A095811 (n + 1) : ℚ) / 8) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A330810.P11277465104285667459

/-!
# A330813: Numbers k that are Niven numbers in a record number of bases 1 <= b <= k.

The programs for A330813, there is no canonical definition to state claims against.
-/

/-! ## A330813.P4592320662556325996

`record[A324655(A095413(n+1))]`
-/

namespace A330813.P4592320662556325996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324655 (A095413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330813.P4592320662556325996

/-! ## A330813.P12403520110144493049

`record[A000005(A008486(n)*A159481(n))]`
-/

namespace A330813.P12403520110144493049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008486 n * A159481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330813.P12403520110144493049

/-! ## A330813.P12308864582809053971

`A033833(n+1)/A020639(A055819(n))`
-/

namespace A330813.P12308864582809053971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033833 (n + 1) : ℚ) / (A020639 (A055819 n).toNat : ℚ)

end

end A330813.P12308864582809053971

/-! ## A330813.P10438970420543414452

`A033833(n+1)/A001221(A110287(n))`
-/

namespace A330813.P10438970420543414452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033833 (n + 1) : ℚ) / (A001221 (A110287 n).toNat : ℚ)

end

end A330813.P10438970420543414452

/-!
# A330815: Numbers with a record number of divisors whose binary expansion is palindromic.

The programs for A330815, there is no canonical definition to state claims against.
-/

/-! ## A330815.P6172455875456682040

`A355716(record[A175242(n+1)])`
-/

namespace A330815.P6172455875456682040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355716 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330815.P6172455875456682040

/-! ## A330815.P7640148542970946286

`A097246(record[A329902(n+1)²])`
-/

namespace A330815.P7640148542970946286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330815.P7640148542970946286

/-! ## A330815.P14682802177116944463

`A283980(A328521(n))/A328521(n)`
-/

namespace A330815.P14682802177116944463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283980 (A328521 n).toNat : ℚ) / (A328521 n : ℚ)

end

end A330815.P14682802177116944463

/-! ## A330815.P288161307512374121

`A003961(A330744(n+1)%A325886(n+2))`
-/

namespace A330815.P288161307512374121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A330744 (n + 1)) (A325886 (n + 2))).toNat

end

end A330815.P288161307512374121

/-! ## A330815.P6573905082239283131

`record[A283980(A004394(n+1))/A004394(n+1)]`
-/

namespace A330815.P6573905082239283131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283980 (A004394 (n + 1)).toNat : ℚ) / (A004394 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330815.P6573905082239283131

/-!
# A330816: Numbers that reach 1 under the iterations of the map k -> k/d(k) if d(k) | k, and k -> k otherwise, where d(k) is the number of divisors of k (A000005).

The programs for A330816, there is no canonical definition to state claims against.
-/

/-! ## A330816.P14541890193985433311

`lt[A090395(A090395(n+1)), 3]+1`
-/

namespace A330816.P14541890193985433311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A090395 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A330816.P14541890193985433311

/-! ## A330816.P11871900775222662456

`record[gcd(A090782(n+1), A092694(n+1))]`
-/

namespace A330816.P11871900775222662456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090782 (n + 1)) (A092694 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330816.P11871900775222662456

/-! ## A330816.P5203046793630301065

`A006093(n+1)*A345992(A060898(n))`
-/

namespace A330816.P5203046793630301065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A345992 (A060898 n).toNat

end

end A330816.P5203046793630301065

/-!
# A330817: Numbers of the form 2^(2*p+1)*M_p^2, where M_p is a Mersenne prime, A000668, with Mersenne exponent p, A000043.

The programs for A330817, there is no canonical definition to state claims against.
-/

/-! ## A330817.P17804080311207200177

`2*A330837(n+1)`
-/

namespace A330817.P17804080311207200177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330837 (n + 1)

end

end A330817.P17804080311207200177

/-! ## A330817.P8091953375633724892

`8*A133051(n+1)`
-/

namespace A330817.P8091953375633724892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A133051 (n + 1)

end

end A330817.P8091953375633724892

/-! ## A330817.P6593130450823494793

`2*A139256(n+1)²`
-/

namespace A330817.P6593130450823494793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139256 (n + 1) ^ 2

end

end A330817.P6593130450823494793

/-! ## A330817.P1763603155385530950

`8*A000396(n+1)²`
-/

namespace A330817.P1763603155385530950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000396 (n + 1) ^ 2

end

end A330817.P1763603155385530950

/-!
# A330818: Numbers of the form 2^(2*p+1), where p is a Mersenne exponent, A000043.

The programs for A330818, there is no canonical definition to state claims against.
-/

/-! ## A330818.P16589596118945451549

`2^(2*A000043(n+1)+1)`
-/

namespace A330818.P16589596118945451549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 * A000043 (n + 1) + 1 : ℤ)

end

end A330818.P16589596118945451549

/-! ## A330818.P17728771334125749066

`2*A330824(n+1)`
-/

namespace A330818.P17728771334125749066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330824 (n + 1)

end

end A330818.P17728771334125749066

/-! ## A330818.P16138744051660060337

`4*A139306(n+1)`
-/

namespace A330818.P16138744051660060337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A139306 (n + 1)

end

end A330818.P16138744051660060337

/-! ## A330818.P9169330868884577962

`8*A152921(n+1)`
-/

namespace A330818.P9169330868884577962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A152921 (n + 1)

end

end A330818.P9169330868884577962

/-! ## A330818.P1736593846875460599

`16*A152922(n+1)`
-/

namespace A330818.P1736593846875460599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A152922 (n + 1)

end

end A330818.P1736593846875460599

/-!
# A330819: Numbers of the form M_p^2(M^p+2)^2, where M_p is a Mersenne prime (A000668) and p is a Mersenne exponent (A000043). Also the first element of the spectral basis of A330817.

The programs for A330819, there is no canonical definition to state claims against.
-/

/-! ## A330819.P15029302526316283345

`A000668(n+1)²*(A000668(n+1)+2)²`
-/

namespace A330819.P15029302526316283345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) ^ 2 * (A000668 (n + 1) + 2) ^ 2

end

end A330819.P15029302526316283345

/-! ## A330819.P12108030613090936357

`(1-A330824(n+1))²`
-/

namespace A330819.P12108030613090936357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A330824 (n + 1)) ^ 2

end

end A330819.P12108030613090936357

/-! ## A330819.P17392160500487393809

`(8*A152922(n+1)-1)²`
-/

namespace A330819.P17392160500487393809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A152922 (n + 1) - 1) ^ 2

end

end A330819.P17392160500487393809

/-! ## A330819.P14747110358902848886

`A060867(A061645(n+1))`
-/

namespace A330819.P14747110358902848886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (A061645 (n + 1)).toNat

end

end A330819.P14747110358902848886

/-! ## A330819.P15965582792525065463

`A024036(A000043(n+1))²`
-/

namespace A330819.P15965582792525065463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (A000043 (n + 1)).toNat ^ 2

end

end A330819.P15965582792525065463

/-!
# A330820: Numbers of the form (M_p^2-1)^2, where M_p is a Mersenne prime, A000668. Also the second element of the power-spectral basis of A330817.

The programs for A330820, there is no canonical definition to state claims against.
-/

/-! ## A330820.P14318233474548545629

`(A000668(n+1)²-1)²`
-/

namespace A330820.P14318233474548545629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000668 (n + 1) ^ 2 - 1) ^ 2

end

end A330820.P14318233474548545629

/-! ## A330820.P4371576372747050723

`(1-A133049(n+1))²`
-/

namespace A330820.P4371576372747050723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A133049 (n + 1)) ^ 2

end

end A330820.P4371576372747050723

/-! ## A330820.P3365960789826598550

`(2*A139096(n+1))²`
-/

namespace A330820.P3365960789826598550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A139096 (n + 1)) ^ 2

end

end A330820.P3365960789826598550

/-! ## A330820.P9239250406902939446

`(4*A257665(n+1))²`
-/

namespace A330820.P9239250406902939446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A257665 (n + 1)) ^ 2

end

end A330820.P9239250406902939446

/-!
# A330821: a(1) = 1, a(2) = 2. Thereafter a(n+1) is the smallest number k such that A001414(k) = a(n) + a(n-1).

The programs for A330821, there is no canonical definition to state claims against.
-/

/-! ## A330821.P16724138948160588804

`A056240(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A330821.P16724138948160588804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056240 (a (n - 1) + a (n - 2)).toNat

end

end A330821.P16724138948160588804

/-! ## A330821.P11100428972559514737

`A056240(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A330821.P11100428972559514737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056240 (a (n - 1) - (-a (n - 2))).toNat

end

end A330821.P11100428972559514737

/-! ## A330821.P7699598123188298050

`A056240(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A330821.P7699598123188298050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056240 (a (n - 1) - (-a (n - 2))).toNat

end

end A330821.P7699598123188298050

/-! ## A330821.P3038666875775914868

`A056240(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A330821.P3038666875775914868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056240 (a (n - 1) - (-a (n - 2))).toNat

end

end A330821.P3038666875775914868

/-! ## A330821.P8010343161539759818

`A056240(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A330821.P8010343161539759818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056240 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A330821.P8010343161539759818

/-!
# A330822: a(n) = digsum(2^a(n-1)) with a(0) = 0.

The programs for A330822, there is no canonical definition to state claims against.
-/

/-! ## A330822.P10236599917090050144

`A001370(a(n-1))` with `a(0)=0`
-/

namespace A330822.P10236599917090050144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001370 (a (n - 1)).toNat

end

end A330822.P10236599917090050144

/-! ## A330822.P1120018226641970956

`A001370(floor(a(A023443(n))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A330822.P1120018226641970956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001370 (a (A023443 n).toNat).toNat

end

end A330822.P1120018226641970956

/-! ## A330822.P12951102209554413676

`A001370(ceil(a(A023443(n))))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A330822.P12951102209554413676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001370 (a (A023443 n).toNat).toNat

end

end A330822.P12951102209554413676

/-! ## A330822.P12401460252569198869

`record[A001370(a(A004648(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A330822.P12401460252569198869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A001370 (f1 (A004648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330822.P12401460252569198869

/-!
# A330824: Numbers of the form 2^(2*p), where p is a Mersenne exponent, A000043.

The programs for A330824, there is no canonical definition to state claims against.
-/

/-! ## A330824.P15495420691940881422

`4^A000043(n+1)`
-/

namespace A330824.P15495420691940881422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000043 (n + 1) : ℤ)

end

end A330824.P15495420691940881422

/-! ## A330824.P7959535717860506505

`2*A139306(n+1)`
-/

namespace A330824.P7959535717860506505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139306 (n + 1)

end

end A330824.P7959535717860506505

/-! ## A330824.P15944064685295916702

`A330818(n+1)/2`
-/

namespace A330824.P15944064685295916702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330818 (n + 1) : ℚ) / 2

end

end A330824.P15944064685295916702

/-! ## A330824.P3364671505497025194

`4*A152921(n+1)`
-/

namespace A330824.P3364671505497025194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A152921 (n + 1)

end

end A330824.P3364671505497025194

/-! ## A330824.P7072917203857097787

`2^A061645(n+1)`
-/

namespace A330824.P7072917203857097787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A061645 (n + 1) : ℤ)

end

end A330824.P7072917203857097787

/-!
# A330825: Numbers of the form 2^(2^k)*F_k, where F_k is a Fermat prime, A019434.

The programs for A330825, there is no canonical definition to state claims against.
-/

/-! ## A330825.P14913912465281926799

`A001146(n)*A019434(n+1)`
-/

namespace A330825.P14913912465281926799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n * A019434 (n + 1)

end

end A330825.P14913912465281926799

/-!
# A330826: Numbers of the form 2^((2^n)+1)*F_n, where F_n is a Fermat prime, A019434.

The programs for A330826, there is no canonical definition to state claims against.
-/

/-! ## A330826.P3719594601300184232

`2^A000051(n)*A019434(n+1)`
-/

namespace A330826.P3719594601300184232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000051 n : ℤ) * (A019434 (n + 1) : ℚ)

end

end A330826.P3719594601300184232

/-!
# A330827: a(n) is the numbers of ways to write 2*n = u + v where the ternary representations of u and of v have the same number of digits d for d = 0..2.

The programs for A330827, there is no canonical definition to state claims against.
-/

/-! ## A330827.P12605425829730379390

`A294788(xor(A008619(n)+2, A132046(2*n+1)))`
-/

namespace A330827.P12605425829730379390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294788 (Int.xor (A008619 n + 2) (A132046 (2 * n + 1))).toNat

end

end A330827.P12605425829730379390

/-!
# A330828: The squares of the Fermat primes, A019434(n)^2.

The programs for A330828, there is no canonical definition to state claims against.
-/

/-! ## A330828.P11057021588506767379

`A019434(n+1)²`
-/

namespace A330828.P11057021588506767379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019434 (n + 1) ^ 2

end

end A330828.P11057021588506767379

/-!
# A330829: 

The programs for A330829, there is no canonical definition to state claims against.
-/

/-! ## A330829.P1221575725371688178

`2^(2*2^n+1)*(2^2^n+1)²`
-/

namespace A330829.P1221575725371688178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * 2 ^ n + 1) * (2 ^ 2 ^ n + 1) ^ 2

end

end A330829.P1221575725371688178

/-!
# A330830: 

The programs for A330830, there is no canonical definition to state claims against.
-/

/-! ## A330830.P9033759389523002081

`(1-4^2^n)²`
-/

namespace A330830.P9033759389523002081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (4 ^ 2 ^ n : ℤ)) ^ 2

end

end A330830.P9033759389523002081

/-!
# A330831: 

The programs for A330831, there is no canonical definition to state claims against.
-/

/-! ## A330831.P4930256175869887262

`(1-(2^2^n+1)²)²`
-/

namespace A330831.P4930256175869887262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 ^ 2 ^ n + 1) ^ 2 : ℤ)) ^ 2

end

end A330831.P4930256175869887262

/-!
# A330832: Numbers of the form p*q, where p is prime and q=(p^k-1)/(p-1) is also prime for some integer k>1.

The programs for A330832, there is no canonical definition to state claims against.
-/

/-! ## A330832.P2241579300186368740

`A330833(n+1)*A330835(n+1)`
-/

namespace A330832.P2241579300186368740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330833 (n + 1) * A330835 (n + 1)

end

end A330832.P2241579300186368740

/-! ## A330832.P1801451730757769734

`lcm(A330833(n+1), A330835(C(n+1, n)))`
-/

namespace A330832.P1801451730757769734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A330833 (n + 1)) (A330835 (Nat.choose (n + 1) n))

end

end A330832.P1801451730757769734

/-! ## A330832.P18353283777601071251

`lcm(A330833(A000027(n+1)), A330835(n+1))`
-/

namespace A330832.P18353283777601071251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A330833 (A000027 (n + 1)).toNat) (A330835 (n + 1))

end

end A330832.P18353283777601071251

/-! ## A330832.P2908797311464626673

`record[∏{p}[A381750(n+1), #]]`
-/

namespace A330832.P2908797311464626673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330832.P2908797311464626673

/-! ## A330832.P17628629606849020761

`record[A007913(A381750(n+1))]`
-/

namespace A330832.P17628629606849020761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A381750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330832.P17628629606849020761

/-!
# A330833: a(n) = first prime factor p of the term A330832(n) = p*q.

The programs for A330833, there is no canonical definition to state claims against.
-/

/-! ## A330833.P11328238816944565968

`A330832(n+1)/A330835(n+1)`
-/

namespace A330833.P11328238816944565968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330832 (n + 1) : ℚ) / (A330835 (n + 1) : ℚ)

end

end A330833.P11328238816944565968

/-! ## A330833.P12889198537428769123

`floor(root(A330832(n+1), A330834(n+1)))`
-/

namespace A330833.P12889198537428769123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330832 (n + 1) : ℝ) ^ (1 / (A330834 (n + 1) : ℝ))⌋

end

end A330833.P12889198537428769123

/-! ## A330833.P9610281864592508377

`A020639(A330832(n+1))`
-/

namespace A330833.P9610281864592508377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A330832 (n + 1)).toNat

end

end A330833.P9610281864592508377

/-! ## A330833.P1966176935015307301

`A020639(A382438(n+3))`
-/

namespace A330833.P1966176935015307301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A382438 (n + 3)).toNat

end

end A330833.P1966176935015307301

/-! ## A330833.P18266641497106834932

`A020639(record[∏{p}[A381750(n+1), #]])`
-/

namespace A330833.P18266641497106834932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A330833.P18266641497106834932

/-!
# A330835: Primes q appearing in A330832: that is, if A330832(n)=p*q, where p is prime and q=(p^k-1)/(p-1) is prime, then a(n)=q.

The programs for A330835, there is no canonical definition to state claims against.
-/

/-! ## A330835.P1475243729995331793

`A330832(n+1)/A330833(n+1)`
-/

namespace A330835.P1475243729995331793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330832 (n + 1) : ℚ) / (A330833 (n + 1) : ℚ)

end

end A330835.P1475243729995331793

/-! ## A330835.P15000659897727076188

`p?[A000203(A053211(n+1))%A053198(n+1)]`
-/

namespace A330835.P15000659897727076188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A053211 (n + 1)).toNat) (A053198 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330835.P15000659897727076188

/-! ## A330835.P3739365876536455894

`A006530(A330832(n+1))`
-/

namespace A330835.P3739365876536455894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A330832 (n + 1)).toNat

end

end A330835.P3739365876536455894

/-! ## A330835.P16392103768281125098

`p?[A000203(A000961(n+1))-A000961(n+1)]`
-/

namespace A330835.P16392103768281125098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000961 (n + 1)).toNat - A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330835.P16392103768281125098

/-! ## A330835.P2173104028056482921

`p?[A001065(A025475(n+1))]`
-/

namespace A330835.P2173104028056482921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A025475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330835.P2173104028056482921

/-!
# A330836: 

The programs for A330836, there is no canonical definition to state claims against.
-/

/-! ## A330836.P11094102860659939360

`6*A133051(n+2)`
-/

namespace A330836.P11094102860659939360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A133051 (n + 2)

end

end A330836.P11094102860659939360

/-! ## A330836.P18065332735261624488

`A110075(n+1)²/6`
-/

namespace A330836.P18065332735261624488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110075 (n + 1) ^ 2 : ℚ) / 6

end

end A330836.P18065332735261624488

/-!
# A330837: a(n) = M(n)^2*(M(n)+1)^2, where M(n) = A000668(n) is the n-th Mersenne prime.

The programs for A330837, there is no canonical definition to state claims against.
-/

/-! ## A330837.P5990081599036353535

`(2*A000396(n+1))²`
-/

namespace A330837.P5990081599036353535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000396 (n + 1)) ^ 2

end

end A330837.P5990081599036353535

/-! ## A330837.P1098963634663624132

`A139256(n+1)²`
-/

namespace A330837.P1098963634663624132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139256 (n + 1) ^ 2

end

end A330837.P1098963634663624132

/-! ## A330837.P7539092106167777389

`A065125(n+2)²`
-/

namespace A330837.P7539092106167777389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065125 (n + 2) ^ 2

end

end A330837.P7539092106167777389

/-! ## A330837.P10207862458067642909

`A330817(n+1)/2`
-/

namespace A330837.P10207862458067642909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330817 (n + 1) : ℚ) / 2

end

end A330837.P10207862458067642909

/-! ## A330837.P16298758191993761644

`4*A133051(n+1)`
-/

namespace A330837.P16298758191993761644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A133051 (n + 1)

end

end A330837.P16298758191993761644

/-!
# A330838: 

The programs for A330838, there is no canonical definition to state claims against.
-/

/-! ## A330838.P17129191836222658464

`3*A330837(n+2)`
-/

namespace A330838.P17129191836222658464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A330837 (n + 2)

end

end A330838.P17129191836222658464

/-! ## A330838.P4098920541866156982

`12*A133051(n+2)`
-/

namespace A330838.P4098920541866156982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A133051 (n + 2)

end

end A330838.P4098920541866156982

/-!
# A330839: 

The programs for A330839, there is no canonical definition to state claims against.
-/

/-! ## A330839.P2252001349501971133

`3*A330817(n+2)`
-/

namespace A330839.P2252001349501971133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A330817 (n + 2)

end

end A330839.P2252001349501971133

/-! ## A330839.P17961486346239633849

`6*A330837(n+2)`
-/

namespace A330839.P17961486346239633849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A330837 (n + 2)

end

end A330839.P17961486346239633849

/-!
# A330840: 

The programs for A330840, there is no canonical definition to state claims against.
-/

/-! ## A330840.P10842511753730968204

`2*A330817(n+1)`
-/

namespace A330840.P10842511753730968204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330817 (n + 1)

end

end A330840.P10842511753730968204

/-! ## A330840.P14128628459861153274

`4*A330837(n+1)`
-/

namespace A330840.P14128628459861153274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A330837 (n + 1)

end

end A330840.P14128628459861153274

/-! ## A330840.P6251573697230706738

`(2*A139256(n+1))²`
-/

namespace A330840.P6251573697230706738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A139256 (n + 1)) ^ 2

end

end A330840.P6251573697230706738

/-! ## A330840.P14089522803914758284

`(4*A000396(n+1))²`
-/

namespace A330840.P14089522803914758284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A000396 (n + 1)) ^ 2

end

end A330840.P14089522803914758284

/-!
# A330842: Prime numbers p such that A332300(p) != p.

The programs for A330842, there is no canonical definition to state claims against.
-/

/-! ## A330842.P10133760994711102381

`A226078(A082705(n+1)-6)`
-/

namespace A330842.P10133760994711102381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226078 (A082705 (n + 1) - 6).toNat

end

end A330842.P10133760994711102381

/-!
# A330844: Start with a Koch snowflake tile, and repeatedly append along the tiles of the previous step tiles scaled by a factor of sqrt(1/3) and rotated by 90 degrees that do not overlap with any prior tile and of which one third of the perimeter matches one sixth of the perimeter of adjacent prior tiles; a(n) gives the number of tiles appended at n-th step.

The programs for A330844, there is no canonical definition to state claims against.
-/

/-! ## A330844.P10797195076229115327

`xor(A259825(A000302(n)), A353881(n))`
-/

namespace A330844.P10797195076229115327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A259825 (A000302 n).toNat) (A353881 n)

end

end A330844.P10797195076229115327

/-! ## A330844.P15014195275366529863

`xor(A068293(n+1), A217657(A342074(n)))`
-/

namespace A330844.P15014195275366529863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A068293 (n + 1)) (A217657 (A342074 n).toNat)

end

end A330844.P15014195275366529863

/-! ## A330844.P7815764622601537873

`A008458(record[A003817(n)-A034574(n+1)])`
-/

namespace A330844.P7815764622601537873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A034574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330844.P7815764622601537873

/-!
# A330845: The number of edges inside a hexagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A330845, there is no canonical definition to state claims against.
-/

/-! ## A330845.P3045721470040578883

`A330846(n+1)+A331931(n+1)-1`
-/

namespace A330845.P3045721470040578883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330846 (n + 1) + (A331931 (n + 1) - 1)

end

end A330845.P3045721470040578883

/-! ## A330845.P7233676880832616722

`A367324(A166136(n+2))`
-/

namespace A330845.P7233676880832616722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367324 (A166136 (n + 2)).toNat

end

end A330845.P7233676880832616722

/-!
# A330846: The number of vertices inside a hexagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A330846, there is no canonical definition to state claims against.
-/

/-! ## A330846.P425823204217698883

`A330845(n+1)+1-A331931(n+1)`
-/

namespace A330846.P425823204217698883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330845 (n + 1) + (1 - A331931 (n + 1))

end

end A330846.P425823204217698883

/-! ## A330846.P11411331963799265563

`A367322(A166136(n+2))`
-/

namespace A330846.P11411331963799265563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367322 (A166136 (n + 2)).toNat

end

end A330846.P11411331963799265563

/-!
# A330847: The number of vertices inside a pentagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A330847, there is no canonical definition to state claims against.
-/

/-! ## A330847.P15732565853536732262

`A329710(n+1)+1-A331929(n+1)`
-/

namespace A330847.P15732565853536732262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329710 (n + 1) + (1 - A331929 (n + 1))

end

end A330847.P15732565853536732262

/-! ## A330847.P17326641190285224020

`A367322(A167499(n+1))`
-/

namespace A330847.P17326641190285224020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367322 (A167499 (n + 1)).toNat

end

end A330847.P17326641190285224020

/-! ## A330847.P16408975009677902666

`A367322(A055998(n)+8)`
-/

namespace A330847.P16408975009677902666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367322 (A055998 n + 8).toNat

end

end A330847.P16408975009677902666

/-!
# A330850: The number of vertices inside a cross with width 3 and height n (see Comments in A331455 for definition) formed by the straight line segments mutually connecting all vertices and all points.

The programs for A330850, there is no canonical definition to state claims against.
-/

/-! ## A330850.P4993096474189219588

`A330851(n+2)+1-A331455(n+2)`
-/

namespace A330850.P4993096474189219588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330851 (n + 2) + (1 - A331455 (n + 2))

end

end A330850.P4993096474189219588

/-! ## A330850.P12951686135448958763

`A330851(n+2)-A066182(A331455(n+2))`
-/

namespace A330850.P12951686135448958763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330851 (n + 2) - A066182 (A331455 (n + 2)).toNat

end

end A330850.P12951686135448958763

/-! ## A330850.P16326867176266164302

`A141310(A330851(n+2)-A331455(n+2))`
-/

namespace A330850.P16326867176266164302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A330851 (n + 2) - A331455 (n + 2)).toNat

end

end A330850.P16326867176266164302

/-! ## A330850.P7377464145424467862

`A141310(A330851(n+2)%A331455(n+2))`
-/

namespace A330850.P7377464145424467862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (Int.tmod (A330851 (n + 2)) (A331455 (n + 2))).toNat

end

end A330850.P7377464145424467862

/-! ## A330850.P10925227259704135139

`A004442(A330851(n+2)-A331455(n+2))`
-/

namespace A330850.P10925227259704135139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A330851 (n + 2) - A331455 (n + 2)).toNat

end

end A330850.P10925227259704135139

/-!
# A330851: The number of edges inside a cross with width 3 and height n (see Comments in A331455 for definition) formed by the straight line segments mutually connecting all vertices and all points.

The programs for A330851, there is no canonical definition to state claims against.
-/

/-! ## A330851.P496805955928768208

`A330850(n+2)+A331455(n+2)-1`
-/

namespace A330851.P496805955928768208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330850 (n + 2) + (A331455 (n + 2) - 1)

end

end A330851.P496805955928768208

/-! ## A330851.P8099729103480747865

`A331455(n+2)+A066182(A330850(n+2))`
-/

namespace A330851.P8099729103480747865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331455 (n + 2) + A066182 (A330850 (n + 2)).toNat

end

end A330851.P8099729103480747865

/-! ## A330851.P3079108131744615625

`A185048(A331455(n+2)+A330850(n+2))`
-/

namespace A330851.P3079108131744615625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A331455 (n + 2) + A330850 (n + 2)).toNat

end

end A330851.P3079108131744615625

/-! ## A330851.P11218891866050541717

`A004442(A331455(n+2)+A330850(n+2))`
-/

namespace A330851.P11218891866050541717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A331455 (n + 2) + A330850 (n + 2)).toNat

end

end A330851.P11218891866050541717

/-! ## A330851.P16626165640353037866

`A023443(A331455(n+2)+A330850(n+2))`
-/

namespace A330851.P16626165640353037866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331455 (n + 2) + A330850 (n + 2)).toNat

end

end A330851.P16626165640353037866

/-!
# A330852: Numerator of the rational number A(n) that appears in the formula for the n-th cumulant k(n) = (-1)^n*2^n*(A(n) - (n - 1)!*zeta(n)) of the limiting distribution of the number of comparisons in quicksort, for n >= 2, with A(0) = 1 and A(1) = 0.

The programs for A330852, there is no canonical definition to state claims against.
-/

/-! ## A330852.P12935992014547592887

`abs(A330875(n))`
-/

namespace A330852.P12935992014547592887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330875 n|

end

end A330852.P12935992014547592887

/-! ## A330852.P7563208709148522226

`A033999(n)*A330875(n)`
-/

namespace A330852.P7563208709148522226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A330875 n

end

end A330852.P7563208709148522226

/-! ## A330852.P6186000890257369078

`gcd(A111332(n), A330875(n))`
-/

namespace A330852.P6186000890257369078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A330875 n)

end

end A330852.P6186000890257369078

/-! ## A330852.P12472791452066587722

`Δ[A323878(3*n+5)]*A330875(n)`
-/

namespace A330852.P12472791452066587722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323878 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A330875 n

end

end A330852.P12472791452066587722

/-! ## A330852.P3649870783875173164

`lcm(A007318(A000096(n)), A330875(n))`
-/

namespace A330852.P3649870783875173164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A000096 n).toNat) (A330875 n)

end

end A330852.P3649870783875173164

/-!
# A330853: First occurrences of gaps between primes 6k+1: gap sizes.

The programs for A330853, there is no canonical definition to state claims against.
-/

/-! ## A330853.P7999933481707885067

`A330855(n+1)-A330854(n+1)`
-/

namespace A330853.P7999933481707885067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330855 (n + 1) - A330854 (n + 1)

end

end A330853.P7999933481707885067

/-! ## A330853.P4006559567648698855

`A330855(C(n+1, n))%A330854(n+1)`
-/

namespace A330853.P4006559567648698855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330855 (Nat.choose (n + 1) n)) (A330854 (n + 1))

end

end A330853.P4006559567648698855

/-! ## A330853.P2772590997211954599

`A330855(-xor(n, -1))%A330854(n+1)`
-/

namespace A330853.P2772590997211954599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330855 (-Int.xor (n : ℤ) (-1)).toNat) (A330854 (n + 1))

end

end A330853.P2772590997211954599

/-! ## A330853.P11834616569996540700

`A330855(ceil(Δ[n²]/2))%A330854(n+1)`
-/

namespace A330853.P11834616569996540700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330855 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌉.toNat) (A330854 (n + 1))

end

end A330853.P11834616569996540700

/-! ## A330853.P9965751092766201691

`A000027(A330855(n+1)%A330854(n+1))`
-/

namespace A330853.P9965751092766201691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A330855 (n + 1)) (A330854 (n + 1))).toNat

end

end A330853.P9965751092766201691

/-!
# A330854: Primes of the form 6k + 1 preceding the first-occurrence gaps in A330853.

The programs for A330854, there is no canonical definition to state claims against.
-/

/-! ## A330854.P405681996901974906

`A330855(n+1)-A330853(n+1)`
-/

namespace A330854.P405681996901974906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330855 (n + 1) - A330853 (n + 1)

end

end A330854.P405681996901974906

/-! ## A330854.P1153820615481676224

`A330855(C(n+1, n))+A001489(A330853(n+1))`
-/

namespace A330854.P1153820615481676224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330855 (Nat.choose (n + 1) n) + A001489 (A330853 (n + 1)).toNat

end

end A330854.P1153820615481676224

/-! ## A330854.P9567329674713490182

`A330855(A000027(n+1))+A001489(A330853(n+1))`
-/

namespace A330854.P9567329674713490182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330855 (A000027 (n + 1)).toNat + A001489 (A330853 (n + 1)).toNat

end

end A330854.P9567329674713490182

/-! ## A330854.P15213615906384347856

`A130507(n²)+A330855(n+1)+A001489(A330853(n+1))`
-/

namespace A330854.P15213615906384347856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (n ^ 2) + (A330855 (n + 1) + A001489 (A330853 (n + 1)).toNat)

end

end A330854.P15213615906384347856

/-!
# A330855: Primes 6k + 1 at the end of first-occurrence gaps in A330853.

The programs for A330855, there is no canonical definition to state claims against.
-/

/-! ## A330855.P2630705437548342994

`A330853(n+1)+A330854(n+1)`
-/

namespace A330855.P2630705437548342994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330853 (n + 1) + A330854 (n + 1)

end

end A330855.P2630705437548342994

/-!
# A330856: Total sum of divisors of all the parts in the partitions of n into 2 parts.

The programs for A330856, the canonical program `A330856.P9754665859077177606` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330856 has offset 1).

The definition of A330856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330856.P9754665859077177606

`∑[∑{d}[n+1, #]]-∑{d}[n+1, A026741(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A330856

/-- `∑[∑{d}[n+1, #]]-∑{d}[n+1, A026741(#)]` -/
def P9754665859077177606.Spec : Prop :=
  ∀ n, P9754665859077177606.a n = A330856 (n + 1)

theorem P9754665859077177606.correct : P9754665859077177606.Spec := by
  intro n
  simp only [A330856, Nat.add_sub_cancel]

end A330856

/-! ## A330856.P10688437917516189470

`∑[A000203(n+1)]-∑{d}[n+1, lcm(2, #)/2]`
-/

namespace A330856.P10688437917516189470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - ∑ d ∈ Nat.divisors (f2 n), (Nat.lcm 2 d : ℚ) / 2

end

end A330856.P10688437917516189470

namespace A330856

/-- `∑[A000203(n+1)]-∑{d}[n+1, lcm(2, #)/2]` -/
def P10688437917516189470.Spec : Prop :=
  ∀ n, P10688437917516189470.a n = (A330856 (n + 1) : ℚ)

end A330856

/-! ## A330856.P8726913986427884204

`A330857(n+1)+A146076(n+1)`
-/

namespace A330856.P8726913986427884204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330857 (n + 1) + A146076 (n + 1)

end

end A330856.P8726913986427884204

namespace A330856

/-- `A330857(n+1)+A146076(n+1)` -/
def P8726913986427884204.Spec : Prop :=
  ∀ n, P8726913986427884204.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P17134265237417732741

`A024916(n+1)-A002131(n+1)`
-/

namespace A330856.P17134265237417732741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A002131 (n + 1)

end

end A330856.P17134265237417732741

namespace A330856

/-- `A024916(n+1)-A002131(n+1)` -/
def P17134265237417732741.Spec : Prop :=
  ∀ n, P17134265237417732741.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P4213161832980909410

`∑[A000203(n+1)]-A002131(n+1)`
-/

namespace A330856.P4213161832980909410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P4213161832980909410

namespace A330856

/-- `∑[A000203(n+1)]-A002131(n+1)` -/
def P4213161832980909410.Spec : Prop :=
  ∀ n, P4213161832980909410.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P15720669246802294422

`∑[abs(A143348(n+1))]-A002131(n+1)`
-/

namespace A330856.P15720669246802294422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P15720669246802294422

namespace A330856

/-- `∑[abs(A143348(n+1))]-A002131(n+1)` -/
def P15720669246802294422.Spec : Prop :=
  ∀ n, P15720669246802294422.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P9415396119633278564

`∑[sqrt(A072861(n+1))]-A002131(n+1)`
-/

namespace A330856.P9415396119633278564
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002131 (n + 1) : ℝ)

end

end A330856.P9415396119633278564

namespace A330856

/-- `∑[sqrt(A072861(n+1))]-A002131(n+1)` -/
def P9415396119633278564.Spec : Prop :=
  ∀ n, P9415396119633278564.a n = (A330856 (n + 1) : ℝ)

end A330856

/-! ## A330856.P6106120781832700844

`∑[∑[A340793(n+1)]]-A002131(n+1)`
-/

namespace A330856.P6106120781832700844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P6106120781832700844

namespace A330856

/-- `∑[∑[A340793(n+1)]]-A002131(n+1)` -/
def P6106120781832700844.Spec : Prop :=
  ∀ n, P6106120781832700844.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P12995069626923445914

`∑[A039653(n+1)+1]-A002131(n+1)`
-/

namespace A330856.P12995069626923445914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P12995069626923445914

namespace A330856

/-- `∑[A039653(n+1)+1]-A002131(n+1)` -/
def P12995069626923445914.Spec : Prop :=
  ∀ n, P12995069626923445914.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P11936630756920501158

`∑[A088580(n+1)-1]-A002131(n+1)`
-/

namespace A330856.P11936630756920501158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P11936630756920501158

namespace A330856

/-- `∑[A088580(n+1)-1]-A002131(n+1)` -/
def P11936630756920501158.Spec : Prop :=
  ∀ n, P11936630756920501158.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P16196185025037054728

`∑[A074400(n+1)/2]-A002131(n+1)`
-/

namespace A330856.P16196185025037054728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002131 (n + 1) : ℚ)

end

end A330856.P16196185025037054728

namespace A330856

/-- `∑[A074400(n+1)/2]-A002131(n+1)` -/
def P16196185025037054728.Spec : Prop :=
  ∀ n, P16196185025037054728.a n = (A330856 (n + 1) : ℚ)

end A330856

/-! ## A330856.P11266241019522777381

`∑[A001065(n+1)+1+n]-A002131(n+1)`
-/

namespace A330856.P11266241019522777381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P11266241019522777381

namespace A330856

/-- `∑[A001065(n+1)+1+n]-A002131(n+1)` -/
def P11266241019522777381.Spec : Prop :=
  ∀ n, P11266241019522777381.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P6056405564354398783

`∑[A237588(n+1)+Δ[n²]]-A002131(n+1)`
-/

namespace A330856.P6056405564354398783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P6056405564354398783

namespace A330856

/-- `∑[A237588(n+1)+Δ[n²]]-A002131(n+1)` -/
def P6056405564354398783.Spec : Prop :=
  ∀ n, P6056405564354398783.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P10654521148575015002

`A024916(n+1)-A000593(n+1)*A006519(n+1)`
-/

namespace A330856.P10654521148575015002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A000593 (n + 1) * A006519 (n + 1)

end

end A330856.P10654521148575015002

namespace A330856

/-- `A024916(n+1)-A000593(n+1)*A006519(n+1)` -/
def P10654521148575015002.Spec : Prop :=
  ∀ n, P10654521148575015002.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P2698939752734050692

`∑[A051612(n+1)+A000010(n+1)]-A002131(n+1)`
-/

namespace A330856.P2698939752734050692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P2698939752734050692

namespace A330856

/-- `∑[A051612(n+1)+A000010(n+1)]-A002131(n+1)` -/
def P2698939752734050692.Spec : Prop :=
  ∀ n, P2698939752734050692.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P16560352561069269872

`∑[A065387(n+1)-A000010(n+1)]-A002131(n+1)`
-/

namespace A330856.P16560352561069269872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P16560352561069269872

namespace A330856

/-- `∑[A065387(n+1)-A000010(n+1)]-A002131(n+1)` -/
def P16560352561069269872.Spec : Prop :=
  ∀ n, P16560352561069269872.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P4541334356027631250

`∑[A262610(Δ[n²])]-A002131(n+1)`
-/

namespace A330856.P4541334356027631250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002131 (n + 1)

end

end A330856.P4541334356027631250

namespace A330856

/-- `∑[A262610(Δ[n²])]-A002131(n+1)` -/
def P4541334356027631250.Spec : Prop :=
  ∀ n, P4541334356027631250.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P7005816960394259461

`∑[A146076(2*(n+1))/2]-A002131(n+1)`
-/

namespace A330856.P7005816960394259461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002131 (n + 1) : ℚ)

end

end A330856.P7005816960394259461

namespace A330856

/-- `∑[A146076(2*(n+1))/2]-A002131(n+1)` -/
def P7005816960394259461.Spec : Prop :=
  ∀ n, P7005816960394259461.a n = (A330856 (n + 1) : ℚ)

end A330856

/-! ## A330856.P9175757906888037451

`A008619(A146076(n+1))+A160664(n)-2`
-/

namespace A330856.P9175757906888037451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A146076 (n + 1)).toNat + (A160664 n - 2)

end

end A330856.P9175757906888037451

namespace A330856

/-- `A008619(A146076(n+1))+A160664(n)-2` -/
def P9175757906888037451.Spec : Prop :=
  ∀ n, P9175757906888037451.a n = A330856 (n + 1)

end A330856

/-! ## A330856.P2666468201159215705

`A001057(A054785(n+1))+∑[∑{d}[n+1, #]]`
-/

namespace A330856.P2666468201159215705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A054785 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330856.P2666468201159215705

namespace A330856

/-- `A001057(A054785(n+1))+∑[∑{d}[n+1, #]]` -/
def P2666468201159215705.Spec : Prop :=
  ∀ n, P2666468201159215705.a n = A330856 (n + 1)

end A330856

/-!
# A330857: Total sum of divisors of all the parts in the partitions of n into 2 distinct parts.

The programs for A330857, the canonical program `A330857.P8267642898900047615` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330857 has offset 1).

The definition of A330857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330857.P8267642898900047615

`A330856(n+1)-∑{d}[n+1, #%or(1, #)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330857

/-- `A330856(n+1)-∑{d}[n+1, #%or(1, #)]` -/
def P8267642898900047615.Spec : Prop :=
  ∀ n, P8267642898900047615.a n = A330857 (n + 1)

theorem P8267642898900047615.correct : P8267642898900047615.Spec := by
  intro n
  simp only [A330857, Nat.add_sub_cancel]

end A330857

/-! ## A330857.P10898259355040624273

`A330856(n+1)-A146076(n+1)`
-/

namespace A330857.P10898259355040624273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330856 (n + 1) - A146076 (n + 1)

end

end A330857.P10898259355040624273

namespace A330857

/-- `A330856(n+1)-A146076(n+1)` -/
def P10898259355040624273.Spec : Prop :=
  ∀ n, P10898259355040624273.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P12277272022254428684

`∑[A000203(n+1)]-(A146076(n+1)+A002131(n+1))`
-/

namespace A330857.P12277272022254428684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A146076 (n + 1) + A002131 (n + 1))

end

end A330857.P12277272022254428684

namespace A330857

/-- `∑[A000203(n+1)]-(A146076(n+1)+A002131(n+1))` -/
def P12277272022254428684.Spec : Prop :=
  ∀ n, P12277272022254428684.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P18359221911037205290

`A271342(Δ[n²])-A330856(n+1)`
-/

namespace A330857.P18359221911037205290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271342 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A330856 (n + 1)

end

end A330857.P18359221911037205290

namespace A330857

/-- `A271342(Δ[n²])-A330856(n+1)` -/
def P18359221911037205290.Spec : Prop :=
  ∀ n, P18359221911037205290.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P15622179539649854920

`A160664(n)-A008619(∑{d}[n+1, #%or(1, #)])`
-/

namespace A330857.P15622179539649854920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A008619 (∑ d ∈ Nat.divisors (f1 n), d % Nat.lor 1 d)

end

end A330857.P15622179539649854920

namespace A330857

/-- `A160664(n)-A008619(∑{d}[n+1, #%or(1, #)])` -/
def P15622179539649854920.Spec : Prop :=
  ∀ n, P15622179539649854920.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P274073211279353837

`A160664(n)-A008619(A146076(n+1))`
-/

namespace A330857.P274073211279353837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A008619 (A146076 (n + 1)).toNat

end

end A330857.P274073211279353837

namespace A330857

/-- `A160664(n)-A008619(A146076(n+1))` -/
def P274073211279353837.Spec : Prop :=
  ∀ n, P274073211279353837.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P12868654564009882689

`A004525(A271342(2*n+1)-A146076(n+1))`
-/

namespace A330857.P12868654564009882689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A271342 (2 * n + 1) - A146076 (n + 1)).toNat

end

end A330857.P12868654564009882689

namespace A330857

/-- `A004525(A271342(2*n+1)-A146076(n+1))` -/
def P12868654564009882689.Spec : Prop :=
  ∀ n, P12868654564009882689.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P8859108033358203800

`A025480(A271342(2*n+1)-A146076(n+1))`
-/

namespace A330857.P8859108033358203800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A271342 (2 * n + 1) - A146076 (n + 1)).toNat

end

end A330857.P8859108033358203800

namespace A330857

/-- `A025480(A271342(2*n+1)-A146076(n+1))` -/
def P8859108033358203800.Spec : Prop :=
  ∀ n, P8859108033358203800.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P6224921734276099923

`A026741(A271342(2*n+1)-A146076(n+1))`
-/

namespace A330857.P6224921734276099923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A271342 (2 * n + 1) - A146076 (n + 1)).toNat

end

end A330857.P6224921734276099923

namespace A330857

/-- `A026741(A271342(2*n+1)-A146076(n+1))` -/
def P6224921734276099923.Spec : Prop :=
  ∀ n, P6224921734276099923.a n = A330857 (n + 1)

end A330857

/-! ## A330857.P13407610539870159866

`A110654(A271342(2*n+1)-A146076(n+1))`
-/

namespace A330857.P13407610539870159866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A271342 (2 * n + 1) - A146076 (n + 1)).toNat

end

end A330857.P13407610539870159866

namespace A330857

/-- `A110654(A271342(2*n+1)-A146076(n+1))` -/
def P13407610539870159866.Spec : Prop :=
  ∀ n, P13407610539870159866.a n = A330857 (n + 1)

end A330857

/-!
# A330858: Triangle read by rows: T(n,k) is the number of permutations in S_n for which all cycles have length <= k.

The programs for A330858, there is no canonical definition to state claims against.
-/

/-! ## A330858.P2030022672318996942

`A220661(∑[A126074(n+1)])`
-/

namespace A330858.P2030022672318996942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220661 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330858.P2030022672318996942

/-!
# A330859: The additive version of the 'Decade transform' : to obtain a(n) write n as a sum of its power-of-ten parts and then continue to calculate the sum of the adjacent parts until a single number remains.

The programs for A330859, there is no canonical definition to state claims against.
-/

/-! ## A330859.P5102221397106539937

`2*(n+50)-n%10`
-/

namespace A330859.P5102221397106539937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 50) : ℤ) - ((n % 10 : ℕ) : ℤ)

end

end A330859.P5102221397106539937

/-! ## A330859.P8952798290710869513

`10*(floor(n/10)+10)+n`
-/

namespace A330859.P8952798290710869513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (⌊(n : ℚ) / 10⌋ + 10) + (n : ℤ)

end

end A330859.P8952798290710869513

/-! ## A330859.P9179342912717776437

`A032960(n+55)`
-/

namespace A330859.P9179342912717776437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032960 (n + 55)

end

end A330859.P9179342912717776437

/-! ## A330859.P3582106974308141578

`lt[1, A342845(or(1, n))]`
-/

namespace A330859.P3582106974308141578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330859.P3582106974308141578

/-! ## A330859.P15598936373860210767

`eq[24, and(24, A065031(n))]`
-/

namespace A330859.P15598936373860210767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 24 (A065031 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330859.P15598936373860210767

/-! ## A330859.P5282054447072259653

`lt[1, A124745(floor(n/10))]`
-/

namespace A330859.P5282054447072259653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330859.P5282054447072259653

/-! ## A330859.P9608588287748115629

`lt[3, A104581(floor(n/10))]`
-/

namespace A330859.P9608588287748115629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330859.P9608588287748115629

/-! ## A330859.P7543323602996771867

`lt[4, A078898(floor(n/10))]`
-/

namespace A330859.P7543323602996771867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330859.P7543323602996771867

/-! ## A330859.P12473206924310704493

`lt[4, A142150(floor(n/10))]`
-/

namespace A330859.P12473206924310704493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330859.P12473206924310704493

/-! ## A330859.P8264095035440251602

`lt[4, A273943(floor(n/10))]`
-/

namespace A330859.P8264095035440251602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330859.P8264095035440251602

/-!
# A330860: Denominator of the rational number A(n) that appears in the formula for the n-th cumulant k(n) = (-1)^n*2^n*(A(n) - (n - 1)!*zeta(n)) of the limiting distribution of the number of comparisons in quicksort, for n >= 2, with A(0) = 1 and A(1) = 0.

The programs for A330860, there is no canonical definition to state claims against.
-/

/-! ## A330860.P9970365170898046260

`A028275(A028275(n))*A335991(n)`
-/

namespace A330860.P9970365170898046260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (A028275 n).toNat * A335991 n

end

end A330860.P9970365170898046260

/-! ## A330860.P12401490213037859042

`lcm(A013516(A002372(n+1)), A335991(n))`
-/

namespace A330860.P12401490213037859042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013516 (A002372 (n + 1)).toNat) (A335991 n)

end

end A330860.P12401490213037859042

/-! ## A330860.P11912239170751711207

`gcd(A329001(n), A335991(n))*A335991(n)`
-/

namespace A330860.P11912239170751711207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A329001 n) (A335991 n) : ℤ) * A335991 n

end

end A330860.P11912239170751711207

/-! ## A330860.P1875657394488193924

`A064549(A011782(n))*A330876(n)`
-/

namespace A330860.P1875657394488193924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A011782 n).toNat * A330876 n

end

end A330860.P1875657394488193924

/-! ## A330860.P559433673657706462

`lcm(A064549(A011782(n)), A335991(n))`
-/

namespace A330860.P559433673657706462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064549 (A011782 n).toNat) (A335991 n)

end

end A330860.P559433673657706462

/-!
# A330861: Number of ways to represent n as a sum of 2 triangular numbers and a perfect square.

The programs for A330861, there is no canonical definition to state claims against.
-/

/-! ## A330861.P5299318701924090934

`A002102(4*n+1)/3`
-/

namespace A330861.P5299318701924090934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002102 (4 * n + 1) : ℚ) / 3

end

end A330861.P5299318701924090934

/-! ## A330861.P1827406413422861706

`floor(A002102(A016813(n))/3)`
-/

namespace A330861.P1827406413422861706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002102 (A016813 n).toNat : ℚ) / 3⌋

end

end A330861.P1827406413422861706

/-! ## A330861.P11931018897670600153

`floor(A002102(sqrt(A016814(n)))/3)`
-/

namespace A330861.P11931018897670600153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002102 (SequenceMachineLib.roundAway (Real.sqrt (A016814 n : ℝ))).toNat : ℚ) / 3⌋

end

end A330861.P11931018897670600153

/-! ## A330861.P10422205356086266984

`floor(A002102(record[A058281(n)])/3)`
-/

namespace A330861.P10422205356086266984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002102 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 3⌋

end

end A330861.P10422205356086266984

/-! ## A330861.P2559368732524564379

`A008615(2*A002102(4*n+1))`
-/

namespace A330861.P2559368732524564379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A002102 (4 * n + 1)).toNat

end

end A330861.P2559368732524564379

/-! ## A330861.P12506433957960708607

`A002264(A002102(A016813(n)))`
-/

namespace A330861.P12506433957960708607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002102 (A016813 n).toNat).toNat

end

end A330861.P12506433957960708607

/-! ## A330861.P5018775791129560021

`A002264(A002102(sqrt(A016814(n))))`
-/

namespace A330861.P5018775791129560021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002102 (SequenceMachineLib.roundAway (Real.sqrt (A016814 n : ℝ))).toNat).toNat

end

end A330861.P5018775791129560021

/-! ## A330861.P3725441183544869869

`A002264(A002102(record[A058281(n)]))`
-/

namespace A330861.P3725441183544869869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002102 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A330861.P3725441183544869869

/-! ## A330861.P3774971606762416945

`(A002102(A016813(n))/3)%A000041(n+2)`
-/

namespace A330861.P3774971606762416945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002102 (A016813 n).toNat : ℚ) / 3)) (A000041 (n + 2))

end

end A330861.P3774971606762416945

/-!
# A330866: a(n) = Sum_{d|n, d

The programs for A330866, the canonical program `A330866.P8751946144507611148` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330866 has offset 1).

The definition of A330866 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330866.P8751946144507611148

`(n+1)*A065608(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330866

/-- `(n+1)*A065608(n+1)` -/
def P8751946144507611148.Spec : Prop :=
  ∀ n, P8751946144507611148.a n = A330866 (n + 1)

theorem P8751946144507611148.correct : P8751946144507611148.Spec := by
  intro n
  simp only [A330866, Nat.add_sub_cancel]

end A330866

/-! ## A330866.P17530754833374492930

`∑{d}[n+1, (n+1)*(#-1)]`
-/

namespace A330866.P17530754833374492930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * ((d : ℤ) - 1)

end

end A330866.P17530754833374492930

namespace A330866

/-- `∑{d}[n+1, (n+1)*(#-1)]` -/
def P17530754833374492930.Spec : Prop :=
  ∀ n, P17530754833374492930.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P1892206787407210309

`(n+1)*∑{d}[n+1, n%#]`
-/

namespace A330866.P1892206787407210309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), n % d)

end

end A330866.P1892206787407210309

namespace A330866

/-- `(n+1)*∑{d}[n+1, n%#]` -/
def P1892206787407210309.Spec : Prop :=
  ∀ n, (P1892206787407210309.a n : ℤ) = A330866 (n + 1)

end A330866

/-! ## A330866.P9716837502154100288

`(n+1)*∑{d}[n+1, floor(n/#)]`
-/

namespace A330866.P9716837502154100288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), ⌊(n : ℚ) / (d : ℚ)⌋)

end

end A330866.P9716837502154100288

namespace A330866

/-- `(n+1)*∑{d}[n+1, floor(n/#)]` -/
def P9716837502154100288.Spec : Prop :=
  ∀ n, P9716837502154100288.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P12827651631534719938

`∑{d}[n+1, #-1]/(n+1)^-1`
-/

namespace A330866.P12827651631534719938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A330866.P12827651631534719938

namespace A330866

/-- `∑{d}[n+1, #-1]/(n+1)^-1` -/
def P12827651631534719938.Spec : Prop :=
  ∀ n, P12827651631534719938.a n = (A330866 (n + 1) : ℚ)

end A330866

/-! ## A330866.P10916539098981733666

`lcm(2, ∑{d}[n+1, lcm(n+1, n+1-#)])`
-/

namespace A330866.P10916539098981733666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ d ∈ Nat.divisors (f1 n), Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) - (d : ℤ)))

end

end A330866.P10916539098981733666

namespace A330866

/-- `lcm(2, ∑{d}[n+1, lcm(n+1, n+1-#)])` -/
def P10916539098981733666.Spec : Prop :=
  ∀ n, (P10916539098981733666.a n : ℤ) = A330866 (n + 1)

end A330866

/-! ## A330866.P17547215350676229115

`(n+1)*(A158901(n+1)-1)`
-/

namespace A330866.P17547215350676229115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158901 (n + 1) - 1)

end

end A330866.P17547215350676229115

namespace A330866

/-- `(n+1)*(A158901(n+1)-1)` -/
def P17547215350676229115.Spec : Prop :=
  ∀ n, P17547215350676229115.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P426187602742553236

`(n+1)*(A152770(n+1)+n)`
-/

namespace A330866.P426187602742553236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A152770 (n + 1) + (n : ℤ))

end

end A330866.P426187602742553236

namespace A330866

/-- `(n+1)*(A152770(n+1)+n)` -/
def P426187602742553236.Spec : Prop :=
  ∀ n, P426187602742553236.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P1081843362432257417

`(n+1)*(A137319(n+1)-(n+1))`
-/

namespace A330866.P1081843362432257417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A137319 (n + 1) - (n + 1 : ℤ))

end

end A330866.P1081843362432257417

namespace A330866

/-- `(n+1)*(A137319(n+1)-(n+1))` -/
def P1081843362432257417.Spec : Prop :=
  ∀ n, P1081843362432257417.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P1488793796775437343

`A303384(n+1)+A189835(n+1)`
-/

namespace A330866.P1488793796775437343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) + A189835 (n + 1)

end

end A330866.P1488793796775437343

namespace A330866

/-- `A303384(n+1)+A189835(n+1)` -/
def P1488793796775437343.Spec : Prop :=
  ∀ n, P1488793796775437343.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P12448527913891931606

`A064987(n+1)-A038040(n+1)`
-/

namespace A330866.P12448527913891931606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A038040 (n + 1)

end

end A330866.P12448527913891931606

namespace A330866

/-- `A064987(n+1)-A038040(n+1)` -/
def P12448527913891931606.Spec : Prop :=
  ∀ n, P12448527913891931606.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P13540134554593384146

`A334136(n+1)-A094471(n+1)`
-/

namespace A330866.P13540134554593384146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334136 (n + 1) - A094471 (n + 1)

end

end A330866.P13540134554593384146

namespace A330866

/-- `A334136(n+1)-A094471(n+1)` -/
def P13540134554593384146.Spec : Prop :=
  ∀ n, P13540134554593384146.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P14921955224934129086

`2*(A309731(n+1)-A038040(n+1))`
-/

namespace A330866.P14921955224934129086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A309731 (n + 1) - A038040 (n + 1))

end

end A330866.P14921955224934129086

namespace A330866

/-- `2*(A309731(n+1)-A038040(n+1))` -/
def P14921955224934129086.Spec : Prop :=
  ∀ n, P14921955224934129086.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P11829495733332437730

`2*(A064987(n+1)-A309731(n+1))`
-/

namespace A330866.P11829495733332437730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A064987 (n + 1) - A309731 (n + 1))

end

end A330866.P11829495733332437730

namespace A330866

/-- `2*(A064987(n+1)-A309731(n+1))` -/
def P11829495733332437730.Spec : Prop :=
  ∀ n, P11829495733332437730.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P16428246751984513137

`n*A000203(n+1)-A094471(n+1)`
-/

namespace A330866.P16428246751984513137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000203 (n + 1) - A094471 (n + 1)

end

end A330866.P16428246751984513137

namespace A330866

/-- `n*A000203(n+1)-A094471(n+1)` -/
def P16428246751984513137.Spec : Prop :=
  ∀ n, P16428246751984513137.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P1800854059554233026

`(n+1)*(A000203(n+1)-A000005(n+1))`
-/

namespace A330866.P1800854059554233026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000203 (n + 1) - A000005 (n + 1))

end

end A330866.P1800854059554233026

namespace A330866

/-- `(n+1)*(A000203(n+1)-A000005(n+1))` -/
def P1800854059554233026.Spec : Prop :=
  ∀ n, P1800854059554233026.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P14521222364443593840

`(n+1)*A000203(n+1)-A038040(n+1)`
-/

namespace A330866.P14521222364443593840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (n + 1) - A038040 (n + 1)

end

end A330866.P14521222364443593840

namespace A330866

/-- `(n+1)*A000203(n+1)-A038040(n+1)` -/
def P14521222364443593840.Spec : Prop :=
  ∀ n, P14521222364443593840.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P13846927080119315361

`A064987(n+1)+A189835(n+1)-A001157(n+1)`
-/

namespace A330866.P13846927080119315361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) + (A189835 (n + 1) - A001157 (n + 1))

end

end A330866.P13846927080119315361

namespace A330866

/-- `A064987(n+1)+A189835(n+1)-A001157(n+1)` -/
def P13846927080119315361.Spec : Prop :=
  ∀ n, P13846927080119315361.a n = A330866 (n + 1)

end A330866

/-! ## A330866.P15131796466896969185

`A064987(n+1)-A394346(n+1)/A007956(n+1)`
-/

namespace A330866.P15131796466896969185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) - (A394346 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A330866.P15131796466896969185

namespace A330866

/-- `A064987(n+1)-A394346(n+1)/A007956(n+1)` -/
def P15131796466896969185.Spec : Prop :=
  ∀ n, P15131796466896969185.a n = (A330866 (n + 1) : ℚ)

end A330866

/-!
# A330868: Number of proper divisors d of n such that n-d is squarefree.

The programs for A330868, there is no canonical definition to state claims against.
-/

/-! ## A330868.P942595924656307461

`∑{d}[n+1, A074206(n+1-#)%2]`
-/

namespace A330868.P942595924656307461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A074206 (n + 1 - d)) 2

end

end A330868.P942595924656307461

/-! ## A330868.P10728900897647169727

`A013928(n+1)-A368677(n+1)`
-/

namespace A330868.P10728900897647169727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A368677 (n + 1)

end

end A330868.P10728900897647169727

/-! ## A330868.P4297396805776158269

`∑{d}[n+1, A000035(A325144(n+1-#))]`
-/

namespace A330868.P4297396805776158269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A325144 (n + 1 - d)).toNat

end

end A330868.P4297396805776158269

/-! ## A330868.P15544689087634238131

`A262869(2*n+1)-A368677(n+1)`
-/

namespace A330868.P15544689087634238131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A368677 (n + 1)

end

end A330868.P15544689087634238131

/-! ## A330868.P2227000308259829954

`∑{d}[n+1, A179762(2^#)]`
-/

namespace A330868.P2227000308259829954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A179762 (2 ^ d)

end

end A330868.P2227000308259829954

/-!
# A330869: Perimeters of Heronian triangles with squarefree side lengths.

The programs for A330869, there is no canonical definition to state claims against.
-/

/-! ## A330869.P14531013188351320735

`A334538(n+1)-A205295(A028781(n+1))`
-/

namespace A330869.P14531013188351320735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334538 (n + 1) - A205295 (A028781 (n + 1)).toNat

end

end A330869.P14531013188351320735

/-! ## A330869.P9885659376930142972

`A334538(n+1)-A205295(A110654(3*(n+1)))`
-/

namespace A330869.P9885659376930142972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334538 (n + 1) - A205295 (A110654 (3 * (n + 1))).toNat

end

end A330869.P9885659376930142972

/-! ## A330869.P8188192797301933244

`A334538(A381225(n))`
-/

namespace A330869.P8188192797301933244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334538 (A381225 n).toNat

end

end A330869.P8188192797301933244

/-! ## A330869.P11619400153880537794

`A334538(A001104(n+1))`
-/

namespace A330869.P11619400153880537794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334538 (A001104 (n + 1)).toNat

end

end A330869.P11619400153880537794

/-!
# A330870: Practical numbers with a record gap to the next practical number.

The programs for A330870, there is no canonical definition to state claims against.
-/

/-! ## A330870.P14975683080980459355

`lcm(A053285(n), A320034(A011900(n)))`
-/

namespace A330870.P14975683080980459355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053285 n) (A320034 (A011900 n).toNat)

end

end A330870.P14975683080980459355

/-! ## A330870.P8276312996416785947

`A001223(A245265(n))*A167500(n+1)`
-/

namespace A330870.P8276312996416785947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A245265 n).toNat * A167500 (n + 1)

end

end A330870.P8276312996416785947

/-!
# A330871: Numbers k such that k and k+1 are both phi-practical numbers (A260653).

The programs for A330871, there is no canonical definition to state claims against.
-/

/-! ## A330871.P7129367066938733323

`∩[A260653(n+1)-1, A260653(n+1)]`
-/

namespace A330871.P7129367066938733323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330871.P7129367066938733323

/-! ## A330871.P15796702951614437560

`∩[A260653(n+1), A023443(A260653(n+1))]`
-/

namespace A330871.P15796702951614437560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A260653 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330871.P15796702951614437560

/-!
# A330872: Numbers k such that k and k+1 are both primitive abundant numbers (A071395).

The programs for A330872, there is no canonical definition to state claims against.
-/

/-! ## A330872.P6863880091458352647

`record[A361934(A066099(2*n+3))]`
-/

namespace A330872.P6863880091458352647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361934 (A066099 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330872.P6863880091458352647

/-! ## A330872.P3023695307040213008

`A361934(lcm(2-A000007(n)+n, A222635(n+1)))`
-/

namespace A330872.P3023695307040213008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361934 (Int.lcm (2 - A000007 n + (n : ℤ)) (A222635 (n + 1)))

end

end A330872.P3023695307040213008

/-!
# A330874: Sum of the smallest side lengths of all primitive Heronian triangles with perimeter A096468(n).

The programs for A330874, there is no canonical definition to state claims against.
-/

/-! ## A330874.P3799920465688958929

`A334120(n+1)+A334970(n+1)-A334018(n+1)`
-/

namespace A330874.P3799920465688958929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334120 (n + 1) + (A334970 (n + 1) - A334018 (n + 1))

end

end A330874.P3799920465688958929

/-!
# A330875: Numerator of the fraction fr(n) that appears in the n-th cumulant k(p) = fr(n) - (-2)^n*(n-1)!*zeta(n) of the limiting distribution of the number of comparisons in quicksort, for n >= 2, starting with fr(0) = 1 and fr(1) = 0.

The programs for A330875, there is no canonical definition to state claims against.
-/

/-! ## A330875.P11583928762733587499

`(-1)^n*A330852(n)`
-/

namespace A330875.P11583928762733587499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A330852 n

end

end A330875.P11583928762733587499

/-! ## A330875.P6188145109226487804

`A330852(n)/A033999(n²)`
-/

namespace A330875.P6188145109226487804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330852 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A330875.P6188145109226487804

/-! ## A330875.P9926609490488866686

`A330852(n)/A094267(n²)`
-/

namespace A330875.P9926609490488866686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330852 n : ℚ) / (A094267 (n ^ 2) : ℚ)

end

end A330875.P9926609490488866686

/-! ## A330875.P18403664639635554189

`xor(A033999(n), A330852(n))+1`
-/

namespace A330875.P18403664639635554189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A330852 n) + 1

end

end A330875.P18403664639635554189

/-! ## A330875.P17857299502741741622

`A330852(n)/A121373(Δ[or(1, n)])`
-/

namespace A330875.P17857299502741741622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330852 n : ℚ) / (A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A330875.P17857299502741741622

/-!
# A330876: Denominator of the fraction fr(n) that appears in the n-th cumulant k(n) = fr(n) - (-2)^n*(n-1)!*zeta(n) of the limiting distribution of the number of comparisons in quicksort, for n >= 2, starting with fr(0) = 1 and fr(1) = 0.

The programs for A330876, there is no canonical definition to state claims against.
-/

/-! ## A330876.P11694877795798595279

`ceil(A330860(n)/2^n)`
-/

namespace A330876.P11694877795798595279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330860 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A330876.P11694877795798595279

/-! ## A330876.P4293946436349553135

`round(A330860(n)/A016116(2*n))`
-/

namespace A330876.P4293946436349553135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330860 n : ℚ) / (A016116 (2 * n) : ℚ))

end

end A330876.P4293946436349553135

/-! ## A330876.P13006419828831174779

`A330860(n)/gcd(A000079(n), A330860(n))`
-/

namespace A330876.P13006419828831174779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330860 n : ℚ) / (Int.gcd (A000079 n) (A330860 n) : ℚ)

end

end A330876.P13006419828831174779

/-! ## A330876.P6668024035967264184

`(A330860(n)/A000079(n))^A001221(A016116(n))`
-/

namespace A330876.P6668024035967264184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A330860 n : ℚ) / (A000079 n : ℚ)) ^ (A001221 (A016116 n).toNat : ℤ)

end

end A330876.P6668024035967264184

/-! ## A330876.P15640484277755884184

`A014963(A095121(n))/A000079(n)*A330860(n)`
-/

namespace A330876.P15640484277755884184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A095121 n).toNat : ℚ) / (A000079 n : ℚ) * (A330860 n : ℚ)

end

end A330876.P15640484277755884184

/-!
# A330878: Number of solutions of length n to the word equation X_1^2 ... X_n^2 = (X_1 ... X_n)^2 in the language of optimal squareful words.

The programs for A330878, there is no canonical definition to state claims against.
-/

/-! ## A330878.P18132657314696358512

`A304328(lcm(1-(4/2+n), ∏{p}[n+1, #²]))+ceil(n/2)`
-/

namespace A330878.P18132657314696358512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (Int.lcm (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ)) + ⌈(n : ℚ) / 2⌉

end

end A330878.P18132657314696358512

/-! ## A330878.P2331274842975090078

`A091887(A208879(n))+∑[and(1, n)]`
-/

namespace A330878.P2331274842975090078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (A208879 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330878.P2331274842975090078

/-! ## A330878.P5463102914514700563

`A008621(A274450(n+1)+2*n)`
-/

namespace A330878.P5463102914514700563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A274450 (n + 1) + (2 * n : ℤ)).toNat

end

end A330878.P5463102914514700563

/-! ## A330878.P17928119998415214019

`A080513(n)+C(A274450(n+1), 6)`
-/

namespace A330878.P17928119998415214019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + (Nat.choose (A274450 (n + 1)).toNat 6 : ℤ)

end

end A330878.P17928119998415214019

/-! ## A330878.P6936036584266586434

`A257839(2*n+3)%A301706(n+3)`
-/

namespace A330878.P6936036584266586434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257839 (2 * n + 3)) (A301706 (n + 3))

end

end A330878.P6936036584266586434

/-!
# A330879: Numbers with a divisor pair (d,n/d) such that the smallest prime greater than d and n/d is the same.

The programs for A330879, there is no canonical definition to state claims against.
-/

/-! ## A330879.P5955967348774417578

`∩[A048098(n+1), A143145(n+1)]`
-/

namespace A330879.P5955967348774417578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330879.P5955967348774417578

/-! ## A330879.P6725450313776308008

`lt[A118429(n), A196218(A196238(n+1))]`
-/

namespace A330879.P6725450313776308008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (A196238 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330879.P6725450313776308008

/-! ## A330879.P5955218043026417448

`∪[(n+1)², (n+2)*A006530((n+2)!)]`
-/

namespace A330879.P5955218043026417448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A006530 (Nat.factorial (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A330879.P5955218043026417448

/-! ## A330879.P10795537156719697249

`A232091(∑[dr(A348619(n))])`
-/

namespace A330879.P10795537156719697249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330879.P10795537156719697249

/-!
# A330880: Numbers m such that m*p is divisible by m-p, where m > p > 0 and p = A007954(m) = the product of digits of m.

The programs for A330880, there is no canonical definition to state claims against.
-/

/-! ## A330880.P17892305177389508408

`A102308(A055686(n+1))`
-/

namespace A330880.P17892305177389508408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102308 (A055686 (n + 1)).toNat

end

end A330880.P17892305177389508408

/-!
# A330881: Length of longest LB factorization over all binary strings of length n.

The programs for A330881, the canonical program `A330881.P6935646588122331946` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330881 has offset 0).

The definition of A330881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330881.P16524231496749344616

`n-∑[char[or(6, n)]]`
-/

namespace A330881.P16524231496749344616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330881.P16524231496749344616

namespace A330881

/-- `n-∑[char[or(6, n)]]` -/
def P16524231496749344616.Spec : Prop :=
  ∀ n, P16524231496749344616.a n = A330881 n

end A330881

/-! ## A330881.P6935646588122331946

`∑[a(∑[n+1]%4)²]` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330881

/-- `∑[a(∑[n+1]%4)²]` -/
def P6935646588122331946.Spec : Prop :=
  ∀ n, (P6935646588122331946.a n : ℤ) = A330881 n

theorem P6935646588122331946.correct : P6935646588122331946.Spec := by
  intro n
  simp only [A330881]

end A330881

/-! ## A330881.P6949865462743393865

`∑[(∑[n+1]²%8)%3]-1`
-/

namespace A330881.P6949865462743393865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % 8 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A330881.P6949865462743393865

namespace A330881

/-- `∑[(∑[n+1]²%8)%3]-1` -/
def P6949865462743393865.Spec : Prop :=
  ∀ n, P6949865462743393865.a n = A330881 n

end A330881

/-! ## A330881.P2466658569413130889

`∑[char[lt[7/(n+1)+n, or(6, n)]]]`
-/

namespace A330881.P2466658569413130889
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 / (n + 1 : ℚ) + (n : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℚ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330881.P2466658569413130889

namespace A330881

/-- `∑[char[lt[7/(n+1)+n, or(6, n)]]]` -/
def P2466658569413130889.Spec : Prop :=
  ∀ n, (P2466658569413130889.a n : ℤ) = A330881 n

end A330881

/-! ## A330881.P8969509262135685986

`∑[char[2*ceil((n+2)/6)+n-1]]`
-/

namespace A330881.P8969509262135685986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n + 2 : ℚ) / 6⌉ + ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330881.P8969509262135685986

namespace A330881

/-- `∑[char[2*ceil((n+2)/6)+n-1]]` -/
def P8969509262135685986.Spec : Prop :=
  ∀ n, (P8969509262135685986.a n : ℤ) = A330881 n

end A330881

/-! ## A330881.P5752158235824251058

`∑[char[A047602(n+1)]]-1`
-/

namespace A330881.P5752158235824251058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047602 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A330881.P5752158235824251058

namespace A330881

/-- `∑[char[A047602(n+1)]]-1` -/
def P5752158235824251058.Spec : Prop :=
  ∀ n, P5752158235824251058.a n = A330881 n

end A330881

/-! ## A330881.P6676522755947822575

`comp[or(1, A047349(n+1))-2]-n`
-/

namespace A330881.P6676522755947822575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047349 (n + 1)) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A330881.P6676522755947822575

namespace A330881

/-- `comp[or(1, A047349(n+1))-2]-n` -/
def P6676522755947822575.Spec : Prop :=
  ∀ n, P6676522755947822575.a n = A330881 n

end A330881

/-! ## A330881.P6422080101090409135

`∑[∑[∑[A223718(n+1)]]%2]-1`
-/

namespace A330881.P6422080101090409135
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A330881.P6422080101090409135

namespace A330881

/-- `∑[∑[∑[A223718(n+1)]]%2]-1` -/
def P6422080101090409135.Spec : Prop :=
  ∀ n, P6422080101090409135.a n = A330881 n

end A330881

/-! ## A330881.P9590725796205043223

`∑[A006003(∑[char[2*n]])%2]-1`
-/

namespace A330881.P9590725796205043223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006003 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A330881.P9590725796205043223

namespace A330881

/-- `∑[A006003(∑[char[2*n]])%2]-1` -/
def P9590725796205043223.Spec : Prop :=
  ∀ n, P9590725796205043223.a n = A330881 n

end A330881

/-! ## A330881.P1420536918344895279

`A001068(n)-A140427(n)`
-/

namespace A330881.P1420536918344895279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n - A140427 n

end

end A330881.P1420536918344895279

namespace A330881

/-- `A001068(n)-A140427(n)` -/
def P1420536918344895279.Spec : Prop :=
  ∀ n, P1420536918344895279.a n = A330881 n

end A330881

/-! ## A330881.P2225860486450731740

`n-∑[A121262(A008619(n))]`
-/

namespace A330881.P2225860486450731740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330881.P2225860486450731740

namespace A330881

/-- `n-∑[A121262(A008619(n))]` -/
def P2225860486450731740.Spec : Prop :=
  ∀ n, P2225860486450731740.a n = A330881 n

end A330881

/-! ## A330881.P18068683813350582287

`n-∑[A000035(A173711(n))]`
-/

namespace A330881.P18068683813350582287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A173711 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330881.P18068683813350582287

namespace A330881

/-- `n-∑[A000035(A173711(n))]` -/
def P18068683813350582287.Spec : Prop :=
  ∀ n, P18068683813350582287.a n = A330881 n

end A330881

/-! ## A330881.P6541580974797084763

`n-A004524(A201629(n)/2)`
-/

namespace A330881.P6541580974797084763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A330881.P6541580974797084763

namespace A330881

/-- `n-A004524(A201629(n)/2)` -/
def P6541580974797084763.Spec : Prop :=
  ∀ n, P6541580974797084763.a n = A330881 n

end A330881

/-! ## A330881.P5100287581606069012

`n-A004524(n-A004525(n))`
-/

namespace A330881.P5100287581606069012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 ((n : ℤ) - A004525 n).toNat

end

end A330881.P5100287581606069012

namespace A330881

/-- `n-A004524(n-A004525(n))` -/
def P5100287581606069012.Spec : Prop :=
  ∀ n, P5100287581606069012.a n = A330881 n

end A330881

/-! ## A330881.P620887972025745032

`n-A004524(A047273(n+1)-n)`
-/

namespace A330881.P620887972025745032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 (A047273 (n + 1) - (n : ℤ)).toNat

end

end A330881.P620887972025745032

namespace A330881

/-- `n-A004524(A047273(n+1)-n)` -/
def P620887972025745032.Spec : Prop :=
  ∀ n, P620887972025745032.a n = A330881 n

end A330881

/-! ## A330881.P2212854041293939940

`n-A004524(A004525(A201629(n)))`
-/

namespace A330881.P2212854041293939940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 (A004525 (A201629 n).toNat).toNat

end

end A330881.P2212854041293939940

namespace A330881

/-- `n-A004524(A004525(A201629(n)))` -/
def P2212854041293939940.Spec : Prop :=
  ∀ n, P2212854041293939940.a n = A330881 n

end A330881

/-! ## A330881.P11825211841603201522

`n-A004524(A021913(n)+A004524(n))`
-/

namespace A330881.P11825211841603201522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 (A021913 n + A004524 n).toNat

end

end A330881.P11825211841603201522

namespace A330881

/-- `n-A004524(A021913(n)+A004524(n))` -/
def P11825211841603201522.Spec : Prop :=
  ∀ n, P11825211841603201522.a n = A330881 n

end A330881

/-! ## A330881.P104900866982172006

`n-A004526(A046980(n)+A004526(n))`
-/

namespace A330881.P104900866982172006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A046980 n + A004526 n).toNat

end

end A330881.P104900866982172006

namespace A330881

/-- `n-A004526(A046980(n)+A004526(n))` -/
def P104900866982172006.Spec : Prop :=
  ∀ n, P104900866982172006.a n = A330881 n

end A330881

/-! ## A330881.P1180435955703155249

`n-A004524(A004524(n+1))`
-/

namespace A330881.P1180435955703155249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 (A004524 (n + 1)).toNat

end

end A330881.P1180435955703155249

namespace A330881

/-- `n-A004524(A004524(n+1))` -/
def P1180435955703155249.Spec : Prop :=
  ∀ n, P1180435955703155249.a n = A330881 n

end A330881

/-! ## A330881.P18034370136886432439

`n+1-A004525(A004525(n+2))`
-/

namespace A330881.P18034370136886432439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004525 (A004525 (n + 2)).toNat

end

end A330881.P18034370136886432439

namespace A330881

/-- `n+1-A004525(A004525(n+2))` -/
def P18034370136886432439.Spec : Prop :=
  ∀ n, P18034370136886432439.a n = A330881 n

end A330881

/-!
# A330884: Sum of the lengths of LB factorizations over all binary strings of length n.

The programs for A330884, there is no canonical definition to state claims against.
-/

/-! ## A330884.P12659958229695777633

`A160812(A150464(n+1))`
-/

namespace A330884.P12659958229695777633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160812 (A150464 (n + 1)).toNat

end

end A330884.P12659958229695777633

/-! ## A330884.P13142762515389788075

`A056493(2*(n+1))-A272351(A209428(n))`
-/

namespace A330884.P13142762515389788075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056493 (2 * (n + 1)) - A272351 (A209428 n).toNat

end

end A330884.P13142762515389788075

/-!
# A330885: Square array T(n,k) read by antidiagonals upwards: T(n,0)=1; T(n,1) = n+1; T(n,2) = 2n+1, T(n,k>2) = T(n,k-1) - T(n,k-2) - T(n,k-3).

The programs for A330885, there is no canonical definition to state claims against.
-/

/-! ## A330885.P15771909031912434304

`A132892(n+1)-A091064(A035040(n))`
-/

namespace A330885.P15771909031912434304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (n + 1) - A091064 (A035040 n).toNat

end

end A330885.P15771909031912434304

/-!
# A330886: Sum of lengths of SB (shortest border) factorizations over all binary strings of length n.

The programs for A330886, there is no canonical definition to state claims against.
-/

/-! ## A330886.P8585480169913291649

`A340763(4*A084851(n))`
-/

namespace A330886.P8585480169913291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (4 * A084851 n).toNat

end

end A330886.P8585480169913291649

/-! ## A330886.P11418460390664627883

`A344420(22*A189391(n))`
-/

namespace A330886.P11418460390664627883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (22 * A189391 n).toNat

end

end A330886.P11418460390664627883

/-! ## A330886.P16555004502097014561

`A189391(n)*A356229(5^n)`
-/

namespace A330886.P16555004502097014561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n * A356229 (5 ^ n)

end

end A330886.P16555004502097014561

/-!
# A330887: Irregular triangle read by rows: T(n,k) is the number of partitions of n into k consecutive parts that differ by 3, n >= 1, k >= 1, and the first element of column k is in the row that is the k-th pentagonal number (A000326).

The programs for A330887, there is no canonical definition to state claims against.
-/

/-! ## A330887.P13792653162959641289

`round(atan(A330888(n+1)))`
-/

namespace A330887.P13792653162959641289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A330888 (n + 1) : ℝ))

end

end A330887.P13792653162959641289

/-! ## A330887.P16810812223752305212

`ceil(A330888(n+1)/A000009(n))`
-/

namespace A330887.P16810812223752305212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A000009 n : ℚ)⌉

end

end A330887.P16810812223752305212

/-! ## A330887.P12520278724965659193

`ceil(A330888(n+1)/A000041(n))`
-/

namespace A330887.P12520278724965659193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A000041 n : ℚ)⌉

end

end A330887.P12520278724965659193

/-! ## A330887.P9759149081528622968

`ceil(A330888(n+1)/A000118(n))`
-/

namespace A330887.P9759149081528622968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A000118 n : ℚ)⌉

end

end A330887.P9759149081528622968

/-! ## A330887.P5007645792437379255

`ceil(A330888(n+1)/A000123(n))`
-/

namespace A330887.P5007645792437379255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A000123 n : ℚ)⌉

end

end A330887.P5007645792437379255

/-! ## A330887.P14888098571673105334

`ceil(A330888(n+1)/A000124(n))`
-/

namespace A330887.P14888098571673105334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A000124 n : ℚ)⌉

end

end A330887.P14888098571673105334

/-! ## A330887.P7007496404541068211

`ceil(A330888(n+1)/A002061(n))`
-/

namespace A330887.P7007496404541068211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A002061 n : ℚ)⌉

end

end A330887.P7007496404541068211

/-! ## A330887.P17892944869348690123

`ceil(A330888(n+1)/A004024(n))`
-/

namespace A330887.P17892944869348690123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A004024 n : ℚ)⌉

end

end A330887.P17892944869348690123

/-! ## A330887.P8589369674582872504

`ceil(A330888(n+1)/A005914(n))`
-/

namespace A330887.P8589369674582872504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A005914 n : ℚ)⌉

end

end A330887.P8589369674582872504

/-! ## A330887.P17500955581822433505

`ceil(A330888(n+1)/A006330(n))`
-/

namespace A330887.P17500955581822433505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A006330 n : ℚ)⌉

end

end A330887.P17500955581822433505

/-! ## A330887.P16285222401249989585

`ceil(A330888(n+1)/A008672(n))`
-/

namespace A330887.P16285222401249989585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A008672 n : ℚ)⌉

end

end A330887.P16285222401249989585

/-! ## A330887.P17951422474521845914

`ceil(A330888(n+1)/A008804(n))`
-/

namespace A330887.P17951422474521845914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A008804 n : ℚ)⌉

end

end A330887.P17951422474521845914

/-! ## A330887.P18364960504004447176

`ceil(A330888(n+1)/A016777(n))`
-/

namespace A330887.P18364960504004447176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A016777 n : ℚ)⌉

end

end A330887.P18364960504004447176

/-! ## A330887.P1759653056244982605

`ceil(A330888(n+1)/A028310(n))`
-/

namespace A330887.P1759653056244982605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A028310 n : ℚ)⌉

end

end A330887.P1759653056244982605

/-! ## A330887.P1749351708291440259

`ceil(A330888(n+1)/A037237(n))`
-/

namespace A330887.P1749351708291440259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A037237 n : ℚ)⌉

end

end A330887.P1749351708291440259

/-! ## A330887.P11960014422760568968

`ceil(A330888(n+1)/A053270(n))`
-/

namespace A330887.P11960014422760568968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A053270 n : ℚ)⌉

end

end A330887.P11960014422760568968

/-! ## A330887.P7967657159874304364

`ceil(A330888(n+1)/A084265(n))`
-/

namespace A330887.P7967657159874304364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A084265 n : ℚ)⌉

end

end A330887.P7967657159874304364

/-! ## A330887.P7973232698846894997

`ceil(A330888(n+1)/A215495(n))`
-/

namespace A330887.P7973232698846894997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A215495 n : ℚ)⌉

end

end A330887.P7973232698846894997

/-! ## A330887.P780299785577121782

`ceil(A330888(n+1)/A256132(n))`
-/

namespace A330887.P780299785577121782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A256132 n : ℚ)⌉

end

end A330887.P780299785577121782

/-! ## A330887.P3289303303876726611

`ceil(A330888(n+1)/A290943(n))`
-/

namespace A330887.P3289303303876726611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330888 (n + 1) : ℚ) / (A290943 n : ℚ)⌉

end

end A330887.P3289303303876726611

/-!
# A330888: Irregular triangle read by rows: T(n,k) is the number of parts in the partition of n into k consecutive parts that differ by 3, n >= 1, k >= 1, and the first element of column k is in the row that is the k-th pentagonal number (A000326).

The programs for A330888, there is no canonical definition to state claims against.
-/

/-! ## A330888.P5856969701761203732

`A334540(A138100(n+1))`
-/

namespace A330888.P5856969701761203732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334540 (A138100 (n + 1)).toNat

end

end A330888.P5856969701761203732

/-! ## A330888.P2984168970868998576

`A334540(A137937(n)+2)`
-/

namespace A330888.P2984168970868998576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334540 (A137937 n + 2).toNat

end

end A330888.P2984168970868998576

/-! ## A330888.P12459233658205021410

`A334540(A137913(n))`
-/

namespace A330888.P12459233658205021410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334540 (A137913 n).toNat

end

end A330888.P12459233658205021410

/-! ## A330888.P5335842607346439577

`A334462(record[A008619(A222210(n))])`
-/

namespace A330888.P5335842607346439577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A222210 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330888.P5335842607346439577

/-! ## A330888.P15593535589566406425

`A334540(record[A028242(A222220(n))])`
-/

namespace A330888.P15593535589566406425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A222220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334540 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330888.P15593535589566406425

/-!
# A330889: a(n) is the total number of parts in all partitions of n into consecutive parts that differ by 3.

The programs for A330889, there is no canonical definition to state claims against.
-/

/-! ## A330889.P980046276998109826

`A334732(lt[A140720(n+1), A222210(n)])`
-/

namespace A330889.P980046276998109826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334732 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330889.P980046276998109826

/-! ## A330889.P2381386170335005988

`A334732(lt[A334700(n+1), A334756(n+1)])`
-/

namespace A330889.P2381386170335005988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334732 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330889.P2381386170335005988

/-! ## A330889.P17343983359825799109

`A334464(lt[A334473(3*n+1), A334169(n)])`
-/

namespace A330889.P17343983359825799109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334473 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334464 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330889.P17343983359825799109

/-! ## A330889.P1703093045932486909

`A069292(A290828(n))`
-/

namespace A330889.P1703093045932486909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069292 (A290828 n).toNat

end

end A330889.P1703093045932486909

/-!
# A330891: Triangle read by rows: cumulative sums of the rows of A049430.

The programs for A330891, there is no canonical definition to state claims against.
-/

/-! ## A330891.P3499884289388601374

`A100632(n+1)-A195738(n+2)`
-/

namespace A330891.P3499884289388601374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100632 (n + 1) - A195738 (n + 2)

end

end A330891.P3499884289388601374

/-! ## A330891.P9902705752809083568

`A034463(A323128(n)+1)`
-/

namespace A330891.P9902705752809083568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A323128 n + 1).toNat

end

end A330891.P9902705752809083568

/-! ## A330891.P2736154545859743369

`A336914(A245111(n)+1)`
-/

namespace A330891.P2736154545859743369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336914 (A245111 n + 1).toNat

end

end A330891.P2736154545859743369

/-! ## A330891.P3198311119802068100

`A340205(A256549(n)+2)`
-/

namespace A330891.P3198311119802068100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A256549 n + 2).toNat

end

end A330891.P3198311119802068100

/-! ## A330891.P16822331454424639329

`A068063(A304334(n))`
-/

namespace A330891.P16822331454424639329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A304334 n).toNat

end

end A330891.P16822331454424639329

/-!
# A330892: Square array of polygonal numbers read by descending antidiagonals (the transpose of A317302).

The programs for A330892, there is no canonical definition to state claims against.
-/

/-! ## A330892.P6909161890000723079

`A317302(∑[2*n]%comp[∑[n]])`
-/

namespace A330892.P6909161890000723079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317302 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A330892.P6909161890000723079

/-! ## A330892.P5186879092927376814

`A317302(∑[char[∑[n]]]²-(n+1))`
-/

namespace A330892.P5186879092927376814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317302 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A330892.P5186879092927376814

/-! ## A330892.P17412473298311044787

`or(char[1], A317302(A061579(n)))`
-/

namespace A330892.P17412473298311044787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317302 (A061579 n).toNat)

end

end A330892.P17412473298311044787

/-! ## A330892.P7767369344560029458

`A057427(n)*A317302(A061579(n))`
-/

namespace A330892.P7767369344560029458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317302 (A061579 n).toNat

end

end A330892.P7767369344560029458

/-! ## A330892.P3606313851340309574

`A267871(n)*A317302(A061579(n))`
-/

namespace A330892.P3606313851340309574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n * A317302 (A061579 n).toNat

end

end A330892.P3606313851340309574

/-! ## A330892.P16238635448414607595

`A317302(A061579(n))%A000124(n)`
-/

namespace A330892.P16238635448414607595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317302 (A061579 n).toNat) (A000124 n)

end

end A330892.P16238635448414607595

/-! ## A330892.P7508637904192566297

`A000010(C(2, n)!)*A317302(A061579(n))`
-/

namespace A330892.P7508637904192566297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A317302 (A061579 n).toNat

end

end A330892.P7508637904192566297

/-! ## A330892.P10744020624359122340

`A134394(n+1)-A162609(A038722(n+1))`
-/

namespace A330892.P10744020624359122340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) - A162609 (A038722 (n + 1)).toNat

end

end A330892.P10744020624359122340

/-!
# A330893: Numbers whose set of divisors contains a Pythagorean quadruple.

The programs for A330893, there is no canonical definition to state claims against.
-/

/-! ## A330893.P256954485190689072

`A037465(∩[A374253(n+1), A017377(n)]+1)`
-/

namespace A330893.P256954485190689072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A330893.P256954485190689072

/-!
# A330894: Numbers of Pythagorean quadruples contained in the divisors of A330893(n).

The programs for A330894, there is no canonical definition to state claims against.
-/

/-! ## A330894.P7385202799327020969

`A001221(A212729(n+1)+A122922(n))`
-/

namespace A330894.P7385202799327020969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A212729 (n + 1) + A122922 n).toNat

end

end A330894.P7385202799327020969

/-! ## A330894.P14376611597392038114

`A055642(A051006(n)*A276945(n+1))`
-/

namespace A330894.P14376611597392038114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A051006 n * A276945 (n + 1)).toNat

end

end A330894.P14376611597392038114

/-! ## A330894.P3475762210363621343

`gcd(A037968(A003269(2*(n+1))), A046523(3*n+2))`
-/

namespace A330894.P3475762210363621343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037968 (A003269 (2 * (n + 1))).toNat) (A046523 (3 * n + 2))

end

end A330894.P3475762210363621343

/-! ## A330894.P16492684894623757246

`A160381(p?[A294428(n+1)]²)`
-/

namespace A330894.P16492684894623757246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A330894.P16492684894623757246

/-! ## A330894.P14392477513918824082

`A001221(A157156(n)+A080039(n))`
-/

namespace A330894.P14392477513918824082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A157156 n + A080039 n).toNat

end

end A330894.P14392477513918824082

/-!
# A330896: Lexicographically earliest sequence of positive integers such that for any m > 0, gaps between consecutive m's are all distinct.

The programs for A330896, there is no canonical definition to state claims against.
-/

/-! ## A330896.P2388753319949697642

`A304118(A277006(n+1))+A115862(n+1)`
-/

namespace A330896.P2388753319949697642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A277006 (n + 1)).toNat + A115862 (n + 1)

end

end A330896.P2388753319949697642

/-! ## A330896.P8804435851457072011

`A376109(A157385(n+1))`
-/

namespace A330896.P8804435851457072011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A157385 (n + 1)).toNat

end

end A330896.P8804435851457072011

/-! ## A330896.P6952681714318023002

`A139767(A157394(n+1))`
-/

namespace A330896.P6952681714318023002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139767 (A157394 (n + 1)).toNat

end

end A330896.P6952681714318023002

/-! ## A330896.P18322434381224273320

`A001221(A344142(n+1)+A059365(n))`
-/

namespace A330896.P18322434381224273320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A344142 (n + 1) + A059365 n).toNat

end

end A330896.P18322434381224273320

/-! ## A330896.P12381576324955190863

`A001221(A276727(n)+A132447(n+1))`
-/

namespace A330896.P12381576324955190863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276727 n + A132447 (n + 1)).toNat

end

end A330896.P12381576324955190863

/-!
# A330898: Positive numbers k of the form x*y where k, x and y have the same set of decimal digits.

The programs for A330898, there is no canonical definition to state claims against.
-/

/-! ## A330898.P5960678836477874146

`A099820(n)+A010054(A204093(n))`
-/

namespace A330898.P5960678836477874146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n + A010054 (A204093 n).toNat

end

end A330898.P5960678836477874146

/-! ## A330898.P11201673981291874295

`A099820(n)+A087255(A032579(n+1))`
-/

namespace A330898.P11201673981291874295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n + A087255 (A032579 (n + 1)).toNat

end

end A330898.P11201673981291874295

/-! ## A330898.P703304173987007555

`A010054(A161412(n))+A007088(2*n)`
-/

namespace A330898.P703304173987007555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A161412 n).toNat + A007088 (2 * n)

end

end A330898.P703304173987007555

/-! ## A330898.P15372994210043933895

`A087255(A032579(n+1))+A007088(2*n)`
-/

namespace A330898.P15372994210043933895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A032579 (n + 1)).toNat + A007088 (2 * n)

end

end A330898.P15372994210043933895

/-! ## A330898.P2622352893154017432

`A007088(2*n+1)-A235046(A007088(n))`
-/

namespace A330898.P2622352893154017432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n + 1) - A235046 (A007088 n).toNat

end

end A330898.P2622352893154017432

/-!
# A330899: Numbers m such that (1/m) * Sum_{k=1..m} sigma(k)/k sets a record value, where sigma(k) is the sum of divisors of k.

The programs for A330899, there is no canonical definition to state claims against.
-/

/-! ## A330899.P16026000006515232065

`lt[A300706(n), A318847(A000010(n+1))]`
-/

namespace A330899.P16026000006515232065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330899.P16026000006515232065

/-! ## A330899.P16189344886798232488

`eq[1, A286574(A297164(n+1))]`
-/

namespace A330899.P16189344886798232488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A297164 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330899.P16189344886798232488

/-! ## A330899.P2292136534556298372

`eq[A010894(n), A069023(n+1)]`
-/

namespace A330899.P2292136534556298372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330899.P2292136534556298372

/-! ## A330899.P11037301658046810550

`eq[A010894(n), A084114(n+1)]`
-/

namespace A330899.P11037301658046810550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330899.P11037301658046810550

/-! ## A330899.P12185180893798406490

`eq[A010894(n), A229964(n+1)]`
-/

namespace A330899.P12185180893798406490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330899.P12185180893798406490

