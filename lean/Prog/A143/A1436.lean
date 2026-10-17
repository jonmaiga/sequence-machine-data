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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.B012.C000
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
# A143600: E.g.f. satisfies: A(x) = exp(x*A(x)/A(-x)).

The programs for A143600, there is no canonical definition to state claims against.
-/

/-! ## A143600.P221766408019337907

`A005408(A064657(n)*A226506(n))`
-/

namespace A143600.P221766408019337907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A064657 n * A226506 n).toNat

end

end A143600.P221766408019337907

/-! ## A143600.P10416959382447289875

`A103832(A064657(n)*A226506(n))`
-/

namespace A143600.P10416959382447289875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 (A064657 n * A226506 n).toNat

end

end A143600.P10416959382447289875

/-!
# A143601: Number of labeled odd-degree trees with 2n+1 nodes.

The programs for A143601, there is no canonical definition to state claims against.
-/

/-! ## A143601.P7514933070237894095

`A058014(2*n)`
-/

namespace A143601.P7514933070237894095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058014 (2 * n)

end

end A143601.P7514933070237894095

/-! ## A143601.P11064642568685608708

`A036778(n)/Δ[n²]`
-/

namespace A143601.P11064642568685608708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036778 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A143601.P11064642568685608708

/-! ## A143601.P15713373689172321504

`or(1, A058014(A004277(n)))`
-/

namespace A143601.P15713373689172321504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A058014 (A004277 n).toNat)

end

end A143601.P15713373689172321504

/-! ## A143601.P15133560158731808176

`or(1, A058014(A005843(n)))`
-/

namespace A143601.P15133560158731808176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A058014 (A005843 n).toNat)

end

end A143601.P15133560158731808176

/-! ## A143601.P17146487696135130204

`lcm(A309204(n+1), A309206(n))`
-/

namespace A143601.P17146487696135130204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A309204 (n + 1)) (A309206 n)

end

end A143601.P17146487696135130204

/-!
# A143603: Triangle, read by rows, such that the g.f. of column k = G(x)^(2k+1) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764 (ternary trees).

The programs for A143603, there is no canonical definition to state claims against.
-/

/-! ## A143603.P16117651889630575398

`A092276(n+1)-A092276(n+2)%A092276(n+1)`
-/

namespace A143603.P16117651889630575398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (n + 1) - Int.tmod (A092276 (n + 2)) (A092276 (n + 1))

end

end A143603.P16117651889630575398

/-! ## A143603.P3125483802801219567

`A124305(A185869(n+1))`
-/

namespace A143603.P3125483802801219567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124305 (A185869 (n + 1)).toNat

end

end A143603.P3125483802801219567

/-! ## A143603.P697677411323690817

`gcd(Δ[A092276(n+1)], A112295(n))`
-/

namespace A143603.P697677411323690817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A112295 n)

end

end A143603.P697677411323690817

/-! ## A143603.P16257506277969389692

`A101401(n+1)/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A143603.P16257506277969389692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101401 (n + 1) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A143603.P16257506277969389692

/-! ## A143603.P2778372628549454749

`A101401(n+1)/A002260(n+1)`
-/

namespace A143603.P2778372628549454749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101401 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A143603.P2778372628549454749

/-! ## A143603.P14743706169290213767

`A101401(n+1)/(A002262(n)+1)`
-/

namespace A143603.P14743706169290213767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101401 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A143603.P14743706169290213767

/-! ## A143603.P11224301787034835914

`A101401(n+1)/A097285(A005408(n))`
-/

namespace A143603.P11224301787034835914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101401 (n + 1) : ℚ) / (A097285 (A005408 n).toNat : ℚ)

end

end A143603.P11224301787034835914

/-! ## A143603.P1267634775302282022

`A101401(n+1)/A000720(A037126(n+1))`
-/

namespace A143603.P1267634775302282022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101401 (n + 1) : ℚ) / (A000720 (A037126 (n + 1)).toNat : ℚ)

end

end A143603.P1267634775302282022

/-! ## A143603.P7188984878947313608

`A101401(n+1)/A004736(A038722(n+1))`
-/

namespace A143603.P7188984878947313608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101401 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A143603.P7188984878947313608

/-! ## A143603.P15262805900526023382

`A101401(n+1)/A000005(A059268(n))`
-/

namespace A143603.P15262805900526023382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101401 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A143603.P15262805900526023382

/-!
# A143607: Numerators of principal and intermediate convergents to 2^(1/2).

The programs for A143607, the canonical program `A143607.P7330589250483350144` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143607 has offset 1).

The definition of A143607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143607.P7330589250483350144

`2*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143607

/-- `2*a(n-2)+a(n-4)` -/
def P7330589250483350144.Spec : Prop :=
  ∀ n, (P7330589250483350144.a n : ℤ) = A143607 (n + 1)

theorem P7330589250483350144.correct : P7330589250483350144.Spec := by
  intro n
  simp only [A143607, Nat.add_sub_cancel]

end A143607

/-! ## A143607.P4211698647616181453

`record[A097564(n+4)]`
-/

namespace A143607.P4211698647616181453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143607.P4211698647616181453

namespace A143607

/-- `record[A097564(n+4)]` -/
def P4211698647616181453.Spec : Prop :=
  ∀ n, P4211698647616181453.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P6790743640610753840

`A152113(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A143607.P6790743640610753840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A152113 n + a (n - 1)

end

end A143607.P6790743640610753840

namespace A143607

/-- `A152113(n)+a(n-1)` -/
def P6790743640610753840.Spec : Prop :=
  ∀ n, P6790743640610753840.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P13231110974072819952

`∑[A002965(or(1, n+1))+char[1]]`
-/

namespace A143607.P13231110974072819952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (Nat.lor 1 (n + 1)) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143607.P13231110974072819952

namespace A143607

/-- `∑[A002965(or(1, n+1))+char[1]]` -/
def P13231110974072819952.Spec : Prop :=
  ∀ n, P13231110974072819952.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P18085915395600481277

`a(n-2-char[A004275(n)])+a(n-1)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A143607.P18085915395600481277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a ((n : ℤ) - 2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat + a (n - 1)

end

end A143607.P18085915395600481277

namespace A143607

/-- `a(n-2-char[A004275(n)])+a(n-1)` -/
def P18085915395600481277.Spec : Prop :=
  ∀ n, (P18085915395600481277.a n : ℤ) = A143607 (n + 1)

end A143607

/-! ## A143607.P11164285429592313205

`A097564(A049636(n))`
-/

namespace A143607.P11164285429592313205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A049636 n).toNat

end

end A143607.P11164285429592313205

namespace A143607

/-- `A097564(A049636(n))` -/
def P11164285429592313205.Spec : Prop :=
  ∀ n, P11164285429592313205.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P6408019891386092263

`A082766(A171463(n+1))`
-/

namespace A143607.P6408019891386092263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A171463 (n + 1)).toNat

end

end A143607.P6408019891386092263

namespace A143607

/-- `A082766(A171463(n+1))` -/
def P6408019891386092263.Spec : Prop :=
  ∀ n, P6408019891386092263.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P5247784254901436539

`A119016(A087156(n+1)+2)`
-/

namespace A143607.P5247784254901436539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A087156 (n + 1) + 2).toNat

end

end A143607.P5247784254901436539

namespace A143607

/-- `A119016(A087156(n+1)+2)` -/
def P5247784254901436539.Spec : Prop :=
  ∀ n, P5247784254901436539.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P2035238235241066618

`A119016(A199969(n+2)+2)`
-/

namespace A143607.P2035238235241066618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A199969 (n + 2) + 2).toNat

end

end A143607.P2035238235241066618

namespace A143607

/-- `A119016(A199969(n+2)+2)` -/
def P2035238235241066618.Spec : Prop :=
  ∀ n, P2035238235241066618.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P14173427681657309604

`A082766(A103517(n)+1-n)`
-/

namespace A143607.P14173427681657309604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A103517 n + (1 - (n : ℤ))).toNat

end

end A143607.P14173427681657309604

namespace A143607

/-- `A082766(A103517(n)+1-n)` -/
def P14173427681657309604.Spec : Prop :=
  ∀ n, P14173427681657309604.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P556981688167049676

`A082766(1-(n-A103517(n)))`
-/

namespace A143607.P556981688167049676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (1 - ((n : ℤ) - A103517 n)).toNat

end

end A143607.P556981688167049676

namespace A143607

/-- `A082766(1-(n-A103517(n)))` -/
def P556981688167049676.Spec : Prop :=
  ∀ n, P556981688167049676.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P1946081239620527536

`A249576(lt[A347633(2*n+1), n])`
-/

namespace A143607.P1946081239620527536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A143607.P1946081239620527536

namespace A143607

/-- `A249576(lt[A347633(2*n+1), n])` -/
def P1946081239620527536.Spec : Prop :=
  ∀ n, P1946081239620527536.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P7657007795802771286

`A082766(A027379(n+1)-A027379(n))`
-/

namespace A143607.P7657007795802771286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A027379 (n + 1) - A027379 n).toNat

end

end A143607.P7657007795802771286

namespace A143607

/-- `A082766(A027379(n+1)-A027379(n))` -/
def P7657007795802771286.Spec : Prop :=
  ∀ n, P7657007795802771286.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P11130150101441540620

`A119016(A008486(n+1)+n-A008486(n))`
-/

namespace A143607.P11130150101441540620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A008486 (n + 1) + ((n : ℤ) - A008486 n)).toNat

end

end A143607.P11130150101441540620

namespace A143607

/-- `A119016(A008486(n+1)+n-A008486(n))` -/
def P11130150101441540620.Spec : Prop :=
  ∀ n, P11130150101441540620.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P16722795833889409896

`A152113(n+1)+A152113(n+2)-A082766(n+1)`
-/

namespace A143607.P16722795833889409896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (n + 1) + (A152113 (n + 2) - A082766 (n + 1))

end

end A143607.P16722795833889409896

namespace A143607

/-- `A152113(n+1)+A152113(n+2)-A082766(n+1)` -/
def P16722795833889409896.Spec : Prop :=
  ∀ n, P16722795833889409896.a n = A143607 (n + 1)

end A143607

/-! ## A143607.P1557672131169885751

`A135246(n+1)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A143607.P1557672131169885751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A135246 (n + 1) - a (n - 1)

end

end A143607.P1557672131169885751

namespace A143607

/-- `A135246(n+1)-a(n-1)` -/
def P1557672131169885751.Spec : Prop :=
  ∀ n, P1557672131169885751.a n = A143607 (n + 1)

end A143607

/-!
# A143608: A005319 and A002315 interleaved.

The programs for A143608, the canonical program `A143608.P14849968275609373896` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143608 has offset 0).

The definition of A143608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143608.P14849968275609373896

`6*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143608

/-- `6*a(n-2)-a(n-4)` -/
def P14849968275609373896.Spec : Prop :=
  ∀ n, P14849968275609373896.a n = A143608 n

theorem P14849968275609373896.correct : P14849968275609373896.Spec := by
  intro n
  simp only [A143608]

end A143608

/-! ## A143608.P11336132175183698139

`A084068(n+1)-A079496(n)`
-/

namespace A143608.P11336132175183698139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) - A079496 n

end

end A143608.P11336132175183698139

namespace A143608

/-- `A084068(n+1)-A079496(n)` -/
def P11336132175183698139.Spec : Prop :=
  ∀ n, P11336132175183698139.a n = A143608 n

end A143608

/-! ## A143608.P14167525225786128807

`A227972(3*n+2)`
-/

namespace A143608.P14167525225786128807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (3 * n + 2)

end

end A143608.P14167525225786128807

namespace A143608

/-- `A227972(3*n+2)` -/
def P14167525225786128807.Spec : Prop :=
  ∀ n, P14167525225786128807.a n = A143608 n

end A143608

/-! ## A143608.P2390158670577478593

`A119016(or(1, n)+n)`
-/

namespace A143608.P2390158670577478593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (Nat.lor 1 n + n)

end

end A143608.P2390158670577478593

namespace A143608

/-- `A119016(or(1, n)+n)` -/
def P2390158670577478593.Spec : Prop :=
  ∀ n, P2390158670577478593.a n = A143608 n

end A143608

/-! ## A143608.P5365911837669492205

`A249576(2*comp[3*n])`
-/

namespace A143608.P5365911837669492205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143608.P5365911837669492205

namespace A143608

/-- `A249576(2*comp[3*n])` -/
def P5365911837669492205.Spec : Prop :=
  ∀ n, P5365911837669492205.a n = A143608 n

end A143608

/-! ## A143608.P6910102615816930930

`A097564(A047233(n+1))`
-/

namespace A143608.P6910102615816930930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047233 (n + 1)).toNat

end

end A143608.P6910102615816930930

namespace A143608

/-- `A097564(A047233(n+1))` -/
def P6910102615816930930.Spec : Prop :=
  ∀ n, P6910102615816930930.a n = A143608 n

end A143608

/-! ## A143608.P12631888779735773510

`A097564(A047238(n+1))`
-/

namespace A143608.P12631888779735773510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047238 (n + 1)).toNat

end

end A143608.P12631888779735773510

namespace A143608

/-- `A097564(A047238(n+1))` -/
def P12631888779735773510.Spec : Prop :=
  ∀ n, P12631888779735773510.a n = A143608 n

end A143608

/-! ## A143608.P61221351963308548

`A119016(A042963(n+1))`
-/

namespace A143608.P61221351963308548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A042963 (n + 1)).toNat

end

end A143608.P61221351963308548

namespace A143608

/-- `A119016(A042963(n+1))` -/
def P61221351963308548.Spec : Prop :=
  ∀ n, P61221351963308548.a n = A143608 n

end A143608

/-! ## A143608.P4415748208374285456

`A097564(A157932(n+1))`
-/

namespace A143608.P4415748208374285456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A157932 (n + 1)).toNat

end

end A143608.P4415748208374285456

namespace A143608

/-- `A097564(A157932(n+1))` -/
def P4415748208374285456.Spec : Prop :=
  ∀ n, P4415748208374285456.a n = A143608 n

end A143608

/-! ## A143608.P12826308722404117534

`A097564(A007310(n+1)-1)`
-/

namespace A143608.P12826308722404117534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A007310 (n + 1) - 1).toNat

end

end A143608.P12826308722404117534

namespace A143608

/-- `A097564(A007310(n+1)-1)` -/
def P12826308722404117534.Spec : Prop :=
  ∀ n, P12826308722404117534.a n = A143608 n

end A143608

/-! ## A143608.P6312706015583441473

`A097564(A047241(n+1)-1)`
-/

namespace A143608.P6312706015583441473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047241 (n + 1) - 1).toNat

end

end A143608.P6312706015583441473

namespace A143608

/-- `A097564(A047241(n+1)-1)` -/
def P6312706015583441473.Spec : Prop :=
  ∀ n, P6312706015583441473.a n = A143608 n

end A143608

/-! ## A143608.P9874808306614565786

`A119016(A053438(n+1)-1)`
-/

namespace A143608.P9874808306614565786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A053438 (n + 1) - 1).toNat

end

end A143608.P9874808306614565786

namespace A143608

/-- `A119016(A053438(n+1)-1)` -/
def P9874808306614565786.Spec : Prop :=
  ∀ n, P9874808306614565786.a n = A143608 n

end A143608

/-! ## A143608.P15419167199182300401

`A119016(A014601(n+1)-2)`
-/

namespace A143608.P15419167199182300401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A014601 (n + 1) - 2).toNat

end

end A143608.P15419167199182300401

namespace A143608

/-- `A119016(A014601(n+1)-2)` -/
def P15419167199182300401.Spec : Prop :=
  ∀ n, P15419167199182300401.a n = A143608 n

end A143608

/-! ## A143608.P15311657952233193600

`A097564(A047235(n+1)-2)`
-/

namespace A143608.P15311657952233193600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047235 (n + 1) - 2).toNat

end

end A143608.P15311657952233193600

namespace A143608

/-- `A097564(A047235(n+1)-2)` -/
def P15311657952233193600.Spec : Prop :=
  ∀ n, P15311657952233193600.a n = A143608 n

end A143608

/-! ## A143608.P6116342280636472290

`A097564(A047246(2*n+1))`
-/

namespace A143608.P6116342280636472290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047246 (2 * n + 1)).toNat

end

end A143608.P6116342280636472290

namespace A143608

/-- `A097564(A047246(2*n+1))` -/
def P6116342280636472290.Spec : Prop :=
  ∀ n, P6116342280636472290.a n = A143608 n

end A143608

/-! ## A143608.P15337903870195098804

`A097564(2*(A001651(n+1)-1))`
-/

namespace A143608.P15337903870195098804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (2 * (A001651 (n + 1) - 1)).toNat

end

end A143608.P15337903870195098804

namespace A143608

/-- `A097564(2*(A001651(n+1)-1))` -/
def P15337903870195098804.Spec : Prop :=
  ∀ n, P15337903870195098804.a n = A143608 n

end A143608

/-! ## A143608.P8541139453876938508

`A097564(A047227(2*n+1)-1)`
-/

namespace A143608.P8541139453876938508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047227 (2 * n + 1) - 1).toNat

end

end A143608.P8541139453876938508

namespace A143608

/-- `A097564(A047227(2*n+1)-1)` -/
def P8541139453876938508.Spec : Prop :=
  ∀ n, P8541139453876938508.a n = A143608 n

end A143608

/-! ## A143608.P13501234228650627243

`A143609(n+1)-2*A079496(n)`
-/

namespace A143608.P13501234228650627243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1) - 2 * A079496 n

end

end A143608.P13501234228650627243

namespace A143608

/-- `A143609(n+1)-2*A079496(n)` -/
def P13501234228650627243.Spec : Prop :=
  ∀ n, P13501234228650627243.a n = A143608 n

end A143608

/-! ## A143608.P1806490662130788327

`A097564(6*n+5-A047270(n+2))`
-/

namespace A143608.P1806490662130788327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 ((6 * n + 5 : ℤ) - A047270 (n + 2)).toNat

end

end A143608.P1806490662130788327

namespace A143608

/-- `A097564(6*n+5-A047270(n+2))` -/
def P1806490662130788327.Spec : Prop :=
  ∀ n, P1806490662130788327.a n = A143608 n

end A143608

/-!
# A143609: Numerators of the upper principal and intermediate convergents to 2^(1/2).

The programs for A143609, the canonical program `A143609.P8190246402705195611` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143609 has offset 1).

The definition of A143609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143609.P8190246402705195611

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=10, a(3)=17`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143609

/-- `6*a(n-2)-a(n-4)` -/
def P8190246402705195611.Spec : Prop :=
  ∀ n, P8190246402705195611.a n = A143609 (n + 1)

theorem P8190246402705195611.correct : P8190246402705195611.Spec := by
  intro n
  simp only [A143609, Nat.add_sub_cancel]

end A143609

/-! ## A143609.P12111122653760701981

`gcd(2, n)*A079496(n+1)`
-/

namespace A143609.P12111122653760701981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A079496 (n + 1)

end

end A143609.P12111122653760701981

namespace A143609

/-- `gcd(2, n)*A079496(n+1)` -/
def P12111122653760701981.Spec : Prop :=
  ∀ n, P12111122653760701981.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P9532984123860045189

`A082766(A014601(n+1))`
-/

namespace A143609.P9532984123860045189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A014601 (n + 1)).toNat

end

end A143609.P9532984123860045189

namespace A143609

/-- `A082766(A014601(n+1))` -/
def P9532984123860045189.Spec : Prop :=
  ∀ n, P9532984123860045189.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P4495375329301840381

`A097564(A047270(n+1))`
-/

namespace A143609.P4495375329301840381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047270 (n + 1)).toNat

end

end A143609.P4495375329301840381

namespace A143609

/-- `A097564(A047270(n+1))` -/
def P4495375329301840381.Spec : Prop :=
  ∀ n, P4495375329301840381.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P12919344739488212170

`A082766(A154708(n+1))`
-/

namespace A143609.P12919344739488212170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A154708 (n + 1)).toNat

end

end A143609.P12919344739488212170

namespace A143609

/-- `A082766(A154708(n+1))` -/
def P12919344739488212170.Spec : Prop :=
  ∀ n, P12919344739488212170.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P8689242095043992218

`A249576(A007310(n+2))`
-/

namespace A143609.P8689242095043992218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A007310 (n + 2)).toNat

end

end A143609.P8689242095043992218

namespace A143609

/-- `A249576(A007310(n+2))` -/
def P8689242095043992218.Spec : Prop :=
  ∀ n, P8689242095043992218.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P18088214813345126642

`A077241(n)+A006452(n)`
-/

namespace A143609.P18088214813345126642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 n + A006452 n

end

end A143609.P18088214813345126642

namespace A143609

/-- `A077241(n)+A006452(n)` -/
def P18088214813345126642.Spec : Prop :=
  ∀ n, P18088214813345126642.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P12476163136607754433

`A117719(n)+A041011(n)`
-/

namespace A143609.P12476163136607754433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117719 n + A041011 n

end

end A143609.P12476163136607754433

namespace A143609

/-- `A117719(n)+A041011(n)` -/
def P12476163136607754433.Spec : Prop :=
  ∀ n, P12476163136607754433.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P405459254991096500

`∑[A001333(A109613(n))]+1`
-/

namespace A143609.P405459254991096500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143609.P405459254991096500

namespace A143609

/-- `∑[A001333(A109613(n))]+1` -/
def P405459254991096500.Spec : Prop :=
  ∀ n, P405459254991096500.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P16474279345734590990

`A119016(∑[A033999(n)+2])`
-/

namespace A143609.P16474279345734590990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143609.P16474279345734590990

namespace A143609

/-- `A119016(∑[A033999(n)+2])` -/
def P16474279345734590990.Spec : Prop :=
  ∀ n, P16474279345734590990.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P8921105041968666607

`A082766(A053438(n+1)+1)`
-/

namespace A143609.P8921105041968666607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A053438 (n + 1) + 1).toNat

end

end A143609.P8921105041968666607

namespace A143609

/-- `A082766(A053438(n+1)+1)` -/
def P8921105041968666607.Spec : Prop :=
  ∀ n, P8921105041968666607.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P2030220014062077454

`A097564(A047235(n+1)+1)`
-/

namespace A143609.P2030220014062077454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047235 (n + 1) + 1).toNat

end

end A143609.P2030220014062077454

namespace A143609

/-- `A097564(A047235(n+1)+1)` -/
def P2030220014062077454.Spec : Prop :=
  ∀ n, P2030220014062077454.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P608311616686408857

`A119016(A053438(n+1)+1)`
-/

namespace A143609.P608311616686408857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A053438 (n + 1) + 1).toNat

end

end A143609.P608311616686408857

namespace A143609

/-- `A119016(A053438(n+1)+1)` -/
def P608311616686408857.Spec : Prop :=
  ∀ n, P608311616686408857.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P7761268718444351095

`A097564(A047241(n+1)+2)`
-/

namespace A143609.P7761268718444351095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047241 (n + 1) + 2).toNat

end

end A143609.P7761268718444351095

namespace A143609

/-- `A097564(A047241(n+1)+2)` -/
def P7761268718444351095.Spec : Prop :=
  ∀ n, P7761268718444351095.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P7327796133120199013

`A119016(A042963(n+1)+2)`
-/

namespace A143609.P7327796133120199013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A042963 (n + 1) + 2).toNat

end

end A143609.P7327796133120199013

namespace A143609

/-- `A119016(A042963(n+1)+2)` -/
def P7327796133120199013.Spec : Prop :=
  ∀ n, P7327796133120199013.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P4673907416306408437

`A249576(A047233(n+2)+1)`
-/

namespace A143609.P4673907416306408437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A047233 (n + 2) + 1).toNat

end

end A143609.P4673907416306408437

namespace A143609

/-- `A249576(A047233(n+2)+1)` -/
def P4673907416306408437.Spec : Prop :=
  ∀ n, P4673907416306408437.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P17186274471214318697

`A097564(A047233(n+2)-1)`
-/

namespace A143609.P17186274471214318697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047233 (n + 2) - 1).toNat

end

end A143609.P17186274471214318697

namespace A143609

/-- `A097564(A047233(n+2)-1)` -/
def P17186274471214318697.Spec : Prop :=
  ∀ n, P17186274471214318697.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P18297983256587885937

`A084068(n+1)+A079496(n)`
-/

namespace A143609.P18297983256587885937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) + A079496 n

end

end A143609.P18297983256587885937

namespace A143609

/-- `A084068(n+1)+A079496(n)` -/
def P18297983256587885937.Spec : Prop :=
  ∀ n, P18297983256587885937.a n = A143609 (n + 1)

end A143609

/-! ## A143609.P16013238621638091481

`A143608(n)+2*A079496(n)`
-/

namespace A143609.P16013238621638091481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n + 2 * A079496 n

end

end A143609.P16013238621638091481

namespace A143609

/-- `A143608(n)+2*A079496(n)` -/
def P16013238621638091481.Spec : Prop :=
  ∀ n, P16013238621638091481.a n = A143609 (n + 1)

end A143609

/-!
# A143610: Numbers of the form p^2 * q^3, where p,q are distinct primes.

The programs for A143610, there is no canonical definition to state claims against.
-/

/-! ## A143610.P12155409433814010741

`∩[A216417(n+1), A272191(n+1)]`
-/

namespace A143610.P12155409433814010741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P12155409433814010741

/-! ## A143610.P2768302541593961524

`∩[A272191(n+1), A375073(n+1)]`
-/

namespace A143610.P2768302541593961524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P2768302541593961524

/-! ## A143610.P10202323577407200173

`∩[A272191(n+1), A375143(n+1)]`
-/

namespace A143610.P10202323577407200173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P10202323577407200173

/-! ## A143610.P10858444153212699947

`∩[A216417(n+1), A355462(n+1)]`
-/

namespace A143610.P10858444153212699947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P10858444153212699947

/-! ## A143610.P12928897877413724165

`∩[A272191(n+1), A355462(n+1)]`
-/

namespace A143610.P12928897877413724165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P12928897877413724165

/-! ## A143610.P3974318784458606084

`∩[A355462(n+1), A375073(n+1)]`
-/

namespace A143610.P3974318784458606084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P3974318784458606084

/-! ## A143610.P348522976031104475

`∩[A272191(n+1), A370786(n+1)]`
-/

namespace A143610.P348522976031104475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P348522976031104475

/-! ## A143610.P9301321799531544182

`∩[A272191(n+1), A376171(n+1)]`
-/

namespace A143610.P9301321799531544182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P9301321799531544182

/-! ## A143610.P12692727017779323733

`∩[A390539(n+1), A272191(n+1)]`
-/

namespace A143610.P12692727017779323733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P12692727017779323733

/-! ## A143610.P1698911313204255863

`∩[A052486(n+1), A216417(n+1)]`
-/

namespace A143610.P1698911313204255863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P1698911313204255863

/-! ## A143610.P5785555508873049263

`∩[A052486(n+1), A272191(n+1)]`
-/

namespace A143610.P5785555508873049263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P5785555508873049263

/-! ## A143610.P4523764827401105164

`∩[A102834(n+1), A272191(n+1)]`
-/

namespace A143610.P4523764827401105164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P4523764827401105164

/-! ## A143610.P13869634075676556511

`∩[A216417(n+1), A338325(n+1)]`
-/

namespace A143610.P13869634075676556511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P13869634075676556511

/-! ## A143610.P9935987333775274271

`∩[A272191(n+1), A338325(n+1)]`
-/

namespace A143610.P9935987333775274271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P9935987333775274271

/-! ## A143610.P3528672447608341690

`∩[A216417(n+1), A216426(n+1)]`
-/

namespace A143610.P3528672447608341690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P3528672447608341690

/-! ## A143610.P8885686955464665509

`∩[A056166(n+1), A272191(n+1)]`
-/

namespace A143610.P8885686955464665509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P8885686955464665509

/-! ## A143610.P13285738417904261079

`∩[A216417(n+1), A359280(n+1)]`
-/

namespace A143610.P13285738417904261079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P13285738417904261079

/-! ## A143610.P10286988369165550319

`∩[A272191(n+1), A359280(n+1)]`
-/

namespace A143610.P10286988369165550319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P10286988369165550319

/-! ## A143610.P10919372380780042695

`∩[A216417(n+1), A372404(n+1)]`
-/

namespace A143610.P10919372380780042695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143610.P10919372380780042695

/-!
# A143611: Expansion of x/((1-x)^2(1+x-x^3-x^4-x^5-x^6-x^7+x^9+x^10)).

The programs for A143611, there is no canonical definition to state claims against.
-/

/-! ## A143611.P16023667259481309949

`∑[∑[A029826(n)]]`
-/

namespace A143611.P16023667259481309949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029826 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143611.P16023667259481309949

/-! ## A143611.P15283390351035497942

`∑[A125950(n+10)-1]`
-/

namespace A143611.P15283390351035497942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125950 (n + 10) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143611.P15283390351035497942

/-! ## A143611.P16588551936610265807

`a(n-1)+A125950(n+10)+A057428(A190334(n+1))` with `a(0)=1`
-/

namespace A143611.P16588551936610265807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A125950 (n + 10) + A057428 (A190334 (n + 1)).toNat)

end

end A143611.P16588551936610265807

/-! ## A143611.P15937848342895635294

`∑[A163805(A070179(n+1))+A125950(n+10)]`
-/

namespace A143611.P15937848342895635294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A070179 (n + 1)).toNat + A125950 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143611.P15937848342895635294

/-! ## A143611.P2780890515978968392

`∑[A023443(A125950(n+10))]`
-/

namespace A143611.P2780890515978968392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A125950 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143611.P2780890515978968392

/-!
# A143613: Triangle read by rows: A051731 * A127368.

The programs for A143613, there is no canonical definition to state claims against.
-/

/-! ## A143613.P7264568591834876165

`A127371(n+1)*A128227(n)`
-/

namespace A143613.P7264568591834876165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127371 (n + 1) * A128227 n

end

end A143613.P7264568591834876165

/-! ## A143613.P9469920607499405451

`A127371(n+1)*A193738(n)`
-/

namespace A143613.P9469920607499405451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127371 (n + 1) * A193738 n

end

end A143613.P9469920607499405451

/-! ## A143613.P9900382568113542282

`A002260(n+1)*A127371(n+1)`
-/

namespace A143613.P9900382568113542282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127371 (n + 1)

end

end A143613.P9900382568113542282

/-! ## A143613.P17530745741014286210

`A080511(n+1)*A127371(n+1)`
-/

namespace A143613.P17530745741014286210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A127371 (n + 1)

end

end A143613.P17530745741014286210

/-! ## A143613.P3253296056569461857

`A080818(n+1)*A127371(n+1)`
-/

namespace A143613.P3253296056569461857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) * A127371 (n + 1)

end

end A143613.P3253296056569461857

/-! ## A143613.P12479998026017156157

`A127371(n+1)*A128077(n+1)`
-/

namespace A143613.P12479998026017156157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127371 (n + 1) * A128077 (n + 1)

end

end A143613.P12479998026017156157

/-! ## A143613.P15562267384014447518

`A002260(n+1)/A002024(n+1)*A127447(n+1)`
-/

namespace A143613.P15562267384014447518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A127447 (n + 1) : ℚ)

end

end A143613.P15562267384014447518

/-! ## A143613.P14507050323981991714

`A081517(n+1)*A127371(n+1)`
-/

namespace A143613.P14507050323981991714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) * A127371 (n + 1)

end

end A143613.P14507050323981991714

/-! ## A143613.P171958065781868500

`A080508(n+1)*A127371(n+1)`
-/

namespace A143613.P171958065781868500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (n + 1) * A127371 (n + 1)

end

end A143613.P171958065781868500

/-! ## A143613.P15672939647714484683

`ceil(A127372(n+1)/e)*A002260(n+1)`
-/

namespace A143613.P15672939647714484683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127372 (n + 1) : ℝ) / Real.exp 1⌉ * A002260 (n + 1)

end

end A143613.P15672939647714484683

/-!
# A143614: Triangle read by rows: A054521 * A051731 as infinite lower triangular matrices.

The programs for A143614, there is no canonical definition to state claims against.
-/

/-! ## A143614.P7845525555248123466

`A127476(n+1)/A054526(n+1)`
-/

namespace A143614.P7845525555248123466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A143614.P7845525555248123466

/-! ## A143614.P14356237620503562448

`A127476(n+1)/A181538(n+1)`
-/

namespace A143614.P14356237620503562448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A181538 (n + 1) : ℚ)

end

end A143614.P14356237620503562448

/-! ## A143614.P8720835388032651262

`A127476(n+1)/A000010(A193738(n))`
-/

namespace A143614.P8720835388032651262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A000010 (A193738 n).toNat : ℚ)

end

end A143614.P8720835388032651262

/-! ## A143614.P5197485808011909522

`A127476(n+1)/A000010(A002260(n+1))`
-/

namespace A143614.P5197485808011909522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A000010 (A002260 (n + 1)).toNat : ℚ)

end

end A143614.P5197485808011909522

/-! ## A143614.P5916894174132937886

`A127476(n+1)/A000010(A080511(n+1))`
-/

namespace A143614.P5916894174132937886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A000010 (A080511 (n + 1)).toNat : ℚ)

end

end A143614.P5916894174132937886

/-! ## A143614.P7367015382493724860

`A127476(n+1)/A000010(A134868(n+1))`
-/

namespace A143614.P7367015382493724860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A000010 (A134868 (n + 1)).toNat : ℚ)

end

end A143614.P7367015382493724860

/-! ## A143614.P13881299621026545130

`A127476(n+1)/A000010(A164306(n+1))`
-/

namespace A143614.P13881299621026545130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A000010 (A164306 (n + 1)).toNat : ℚ)

end

end A143614.P13881299621026545130

/-! ## A143614.P11592351307530137075

`A127476(n+1)/A000010(A226314(n+1))`
-/

namespace A143614.P11592351307530137075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A000010 (A226314 (n + 1)).toNat : ℚ)

end

end A143614.P11592351307530137075

/-!
# A143615: Triangle A054521 * A000005 as a vector.

The programs for A143615, there is no canonical definition to state claims against.
-/

/-! ## A143615.P6921789521083615155

`∑[∏{e}[n+1, #+1]]-A211932(n+1)`
-/

namespace A143615.P6921789521083615155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A211932 (n + 1)

end

end A143615.P6921789521083615155

/-! ## A143615.P3482381275943988900

`A006218(n+1)-A211932(n+1)`
-/

namespace A143615.P3482381275943988900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A211932 (n + 1)

end

end A143615.P3482381275943988900

/-! ## A143615.P8430554418002667043

`∑[A000005(n+1)]-A211932(n+1)`
-/

namespace A143615.P8430554418002667043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211932 (n + 1)

end

end A143615.P8430554418002667043

/-! ## A143615.P10619415090458140895

`∑[A179941(n+1)]-A211932(n+1)`
-/

namespace A143615.P10619415090458140895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211932 (n + 1)

end

end A143615.P10619415090458140895

/-! ## A143615.P18261586818196783803

`∑[sqrt(A035116(n+1))]-A211932(n+1)`
-/

namespace A143615.P18261586818196783803
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A211932 (n + 1) : ℝ)

end

end A143615.P18261586818196783803

/-! ## A143615.P6492866327252997555

`∑[A320111(2*(n+1))]-A211932(n+1)`
-/

namespace A143615.P6492866327252997555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211932 (n + 1)

end

end A143615.P6492866327252997555

/-! ## A143615.P14848463734725313552

`∑[∑{d}[n+1, A020639(2*#)]/2]-A211932(n+1)`
-/

namespace A143615.P14848463734725313552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), A020639 (2 * d) : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A211932 (n + 1) : ℚ)

end

end A143615.P14848463734725313552

/-! ## A143615.P17181699549605462630

`∑[∑{d}[n+1, 1-A000010(#)]+n+1]-A211932(n+1)`
-/

namespace A143615.P17181699549605462630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - A000010 d) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211932 (n + 1)

end

end A143615.P17181699549605462630

/-! ## A143615.P14718752402501643640

`∑[∑{d}[n+1, 1-#]+A000203(n+1)]-A211932(n+1)`
-/

namespace A143615.P14718752402501643640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ)) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211932 (n + 1)

end

end A143615.P14718752402501643640

/-!
# A143616: Record values in A010371.

The programs for A143616, the canonical program `A143616.P17403186498679637852` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143616 has offset 1).

The definition of A143616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143616.P17403186498679637852

`char[4]+a(n-1)+1` with `a(0)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143616

/-- `char[4]+a(n-1)+1` -/
def P17403186498679637852.Spec : Prop :=
  ∀ n, (P17403186498679637852.a n : ℤ) = A143616 (n + 1)

theorem P17403186498679637852.correct : P17403186498679637852.Spec := by
  intro n
  simp only [A143616, Nat.add_sub_cancel]

end A143616

/-!
# A143617: Where record values occur in A010371.

The programs for A143617, there is no canonical definition to state claims against.
-/

/-! ## A143617.P9235608591193073475

`A216261(A143616(n+1))`
-/

namespace A143617.P9235608591193073475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216261 (A143616 (n + 1)).toNat

end

end A143617.P9235608591193073475

/-! ## A143617.P9916954483649898739

`A038619(n+3)*A057427(n)`
-/

namespace A143617.P9916954483649898739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038619 (n + 3) * A057427 n

end

end A143617.P9916954483649898739

/-! ## A143617.P2562993662370249332

`lcm(A038619(n+3), A062157(n))`
-/

namespace A143617.P2562993662370249332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038619 (n + 3)) (A062157 n)

end

end A143617.P2562993662370249332

/-! ## A143617.P1781537508221387108

`and(A038619(n+3), A057428(n))`
-/

namespace A143617.P1781537508221387108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038619 (n + 3)) (A057428 n)

end

end A143617.P1781537508221387108

/-! ## A143617.P17380432508641103558

`char[A114327(n)+1+n]*A038619(n+3)`
-/

namespace A143617.P17380432508641103558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038619 (n + 3)

end

end A143617.P17380432508641103558

/-! ## A143617.P16505938743574289186

`and(A038619(n+3), A086831(A000040(n+1)))`
-/

namespace A143617.P16505938743574289186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038619 (n + 3)) (A086831 (A000040 (n + 1)).toNat)

end

end A143617.P16505938743574289186

/-! ## A143617.P2549155575104057232

`A038619(n+3)%A033876(n)`
-/

namespace A143617.P2549155575104057232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038619 (n + 3)) (A033876 n)

end

end A143617.P2549155575104057232

/-!
# A143618: Decimal expansion of 127/216.

The programs for A143618, the canonical program `A143618.P2559159887696931591` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143618 has offset 0).

The definition of A143618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143618.P2559159887696931591

`a(n-3)` with `a(0)=5, a(1)=8, a(2)=7, a(3)=9, a(4)=6, a(5)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143618

/-- `a(n-3)` -/
def P2559159887696931591.Spec : Prop :=
  ∀ n, (P2559159887696931591.a n : ℤ) = A143618 n

theorem P2559159887696931591.correct : P2559159887696931591.Spec := by
  intro n
  simp only [A143618]

end A143618

/-!
# A143619: Expansion of 1/(1 - x^2 - x^7 - x^12 + x^14) (a Salem polynomial).

The programs for A143619, there is no canonical definition to state claims against.
-/

/-! ## A143619.P10110613936217220555

`A029826(A184004(n+1))%A194695(n+1)`
-/

namespace A143619.P10110613936217220555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029826 (A184004 (n + 1)).toNat) (A194695 (n + 1))

end

end A143619.P10110613936217220555

/-! ## A143619.P11067089267833184459

`A029826(A184004(n+1))*A033999(A050579(n+1))`
-/

namespace A143619.P11067089267833184459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029826 (A184004 (n + 1)).toNat * A033999 (A050579 (n + 1)).toNat

end

end A143619.P11067089267833184459

/-! ## A143619.P396923463345987454

`abs(A029826(A184004(n+1)))%A050594(n+1)`
-/

namespace A143619.P396923463345987454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A029826 (A184004 (n + 1)).toNat| (A050594 (n + 1))

end

end A143619.P396923463345987454

/-! ## A143619.P16248014374670848072

`A029826(comp[Δ[A161710(n)]])`
-/

namespace A143619.P16248014374670848072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029826 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A143619.P16248014374670848072

/-! ## A143619.P7996090979916708667

`A206738(n)*A359781(A128413(2*n))`
-/

namespace A143619.P7996090979916708667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206738 n * A359781 (A128413 (2 * n)).toNat

end

end A143619.P7996090979916708667

/-!
# A143620: Triangle read by rows, square of A054521, 1<=k<=n.

The programs for A143620, there is no canonical definition to state claims against.
-/

/-! ## A143620.P13526771242936679714

`ceil(A238707(n)/A333685(n))`
-/

namespace A143620.P13526771242936679714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238707 n : ℚ) / (A333685 n : ℚ)⌉

end

end A143620.P13526771242936679714

/-! ## A143620.P342731126628332764

`ceil(A238707(n)/A103574(n+1))`
-/

namespace A143620.P342731126628332764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238707 n : ℚ) / (A103574 (n + 1) : ℚ)⌉

end

end A143620.P342731126628332764

/-! ## A143620.P14842143193647697320

`ceil(A238707(n)/A297540(A074625(n+1)))`
-/

namespace A143620.P14842143193647697320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238707 n : ℚ) / (A297540 (A074625 (n + 1)).toNat : ℚ)⌉

end

end A143620.P14842143193647697320

/-! ## A143620.P6028416365062519524

`A238707(n*A322281(A322280(n)))`
-/

namespace A143620.P6028416365062519524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 ((n : ℤ) * A322281 (A322280 n).toNat).toNat

end

end A143620.P6028416365062519524

/-! ## A143620.P15617698381821218539

`A238707(n)^A322281(A322280(n))`
-/

namespace A143620.P15617698381821218539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238707 n : ℚ) ^ (A322281 (A322280 n).toNat : ℤ)

end

end A143620.P15617698381821218539

/-!
# A143621: a(n) = (-1)^binomial(n,4): Periodic sequence 1,1,1,1,-1,-1,-1,-1,... .

The programs for A143621, the canonical program `A143621.P12119797298665009394` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143621 has offset 0).

The definition of A143621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^C(n, 4)` (program `A143621.P12119797298665009394`, by `A143621.P12119797298665009394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143621.P12119797298665009394

`(-1)^C(n, 4)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143621

/-- `(-1)^C(n, 4)` -/
def P12119797298665009394.Spec : Prop :=
  ∀ n, P12119797298665009394.a n = A143621 n

theorem P12119797298665009394.correct : P12119797298665009394.Spec := by
  intro n
  simp only [A143621]

end A143621

/-!
# A143622: a(n) = (-1)^binomial(n,8): Periodic sequence 1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,... .

The programs for A143622, the canonical program `A143622.P11102468292862419588` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143622 has offset 0).

The definition of A143622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143622.P11102468292862419588

`(-1)^floor(n/8)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143622

/-- `(-1)^floor(n/8)` -/
def P11102468292862419588.Spec : Prop :=
  ∀ n, P11102468292862419588.a n = (A143622 n : ℚ)

end A143622

/-!
# A143628: Define E(n) = Sum_{k >= 0} (-1)^floor(k/3)*k^n/k! for n = 0,1,2,... . Then E(n) is an integral linear combination of E(0), E(1) and E(2). This sequence lists the coefficients of E(0).

The programs for A143628, there is no canonical definition to state claims against.
-/

/-! ## A143628.P2826534869545973016

`A143629(n)+A000587(n)`
-/

namespace A143628.P2826534869545973016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143629 n + A000587 n

end

end A143628.P2826534869545973016

/-! ## A143628.P8033259422583915461

`A293051(∑[n]+n)+A143629(n)`
-/

namespace A143628.P8033259422583915461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A143629 n

end

end A143628.P8033259422583915461

/-! ## A143628.P11747891618382372576

`A292861(∑[n+2]-1)+A143629(n)`
-/

namespace A143628.P11747891618382372576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A143629 n

end

end A143628.P11747891618382372576

/-! ## A143628.P13918531651635537937

`A293015(A000096(n))+A143629(n)`
-/

namespace A143628.P13918531651635537937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (A000096 n).toNat + A143629 n

end

end A143628.P13918531651635537937

/-! ## A143628.P10057837582601782408

`A024430(n)+A143629(n)-A024429(n)`
-/

namespace A143628.P10057837582601782408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024430 n + (A143629 n - A024429 n)

end

end A143628.P10057837582601782408

/-!
# A143629: Define E(n) = Sum_{k>=0} (-1)^floor(k/3)*k^n/k! for n = 0,1,2,... . Then E(n) is an integral linear combination of E(0), E(1) and E(2). This sequence lists the coefficients of E(1).

The programs for A143629, there is no canonical definition to state claims against.
-/

/-! ## A143629.P10191321614247960700

`A143628(n)-A000587(n)`
-/

namespace A143629.P10191321614247960700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n - A000587 n

end

end A143629.P10191321614247960700

/-! ## A143629.P14586720347912891997

`A143631(n)-A143630(n)`
-/

namespace A143629.P14586720347912891997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143631 n - A143630 n

end

end A143629.P14586720347912891997

/-! ## A143629.P15102614150676539059

`A143628(n)-A247108(∑[n])`
-/

namespace A143629.P15102614150676539059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n - A247108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143629.P15102614150676539059

/-! ## A143629.P912420509147913918

`A143628(n)-A293051(∑[n]+n)`
-/

namespace A143629.P912420509147913918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n - A293051 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143629.P912420509147913918

/-! ## A143629.P2150039312511554117

`A143628(n)-A292861(∑[n+2]-1)`
-/

namespace A143629.P2150039312511554117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n - A292861 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A143629.P2150039312511554117

/-!
# A143630: Define E(n) = Sum_{k >= 0} (-1)^floor(k/3)*k^n/k! for n = 0,1,2,.... Then E(n) is an integral linear combination of E(0), E(1) and E(2). This sequence lists the coefficients of E(2).

The programs for A143630, there is no canonical definition to state claims against.
-/

/-! ## A143630.P9651374286194993521

`A000587(n)+A143631(n)-A143628(n)`
-/

namespace A143630.P9651374286194993521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n + (A143631 n - A143628 n)

end

end A143630.P9651374286194993521

/-! ## A143630.P2868602947766095611

`A143631(n)-(A143628(n)-A293051(∑[n]+n))`
-/

namespace A143630.P2868602947766095611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143631 n - (A143628 n - A293051 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A143630.P2868602947766095611

/-! ## A143630.P17573815669925158018

`A143631(n)-(A143628(n)-A293015(∑[n]+n))`
-/

namespace A143630.P17573815669925158018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143631 n - (A143628 n - A293015 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A143630.P17573815669925158018

/-! ## A143630.P9183812794407171262

`A143631(n)-(A143628(n)-A247108(∑[n]))`
-/

namespace A143630.P9183812794407171262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143631 n - (A143628 n - A247108 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A143630.P9183812794407171262

/-! ## A143630.P6529537615749033490

`A143631(n)-A143629(n)`
-/

namespace A143630.P6529537615749033490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143631 n - A143629 n

end

end A143630.P6529537615749033490

/-!
# A143631: Let A(0) = 1, B(0) = 0 and C(0) = 0. Let A(n+1) = - Sum_{k = 0..n} binomial(n,k)*C(k), B(n+1) = Sum_{k = 0..n} binomial(n,k)*A(k) and C(n+1) = Sum_{k = 0..n} binomial(n,k)*B(k). This entry gives the sequence B(n).

The programs for A143631, there is no canonical definition to state claims against.
-/

/-! ## A143631.P3216220578598964731

`A143629(n)+A143630(n)`
-/

namespace A143631.P3216220578598964731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143629 n + A143630 n

end

end A143631.P3216220578598964731

/-! ## A143631.P10915217610513231758

`A143628(n)+A143630(n)-A000587(n)`
-/

namespace A143631.P10915217610513231758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n + (A143630 n - A000587 n)

end

end A143631.P10915217610513231758

/-! ## A143631.P12428325387619412693

`A143630(n)+A143628(n)-A293051(∑[n]+n)`
-/

namespace A143631.P12428325387619412693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143630 n + (A143628 n - A293051 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A143631.P12428325387619412693

/-! ## A143631.P13410995198282628817

`A143628(n)+A143630(n)-A293015(A000096(n))`
-/

namespace A143631.P13410995198282628817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n + (A143630 n - A293015 (A000096 n).toNat)

end

end A143631.P13410995198282628817

/-! ## A143631.P9447359008133760768

`A143630(n)+A143628(n)-A247108(∑[n])`
-/

namespace A143631.P9447359008133760768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143630 n + (A143628 n - A247108 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A143631.P9447359008133760768

/-!
# A143633: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^2-1)/2)).

The programs for A143633, there is no canonical definition to state claims against.
-/

/-! ## A143633.P14278357357195290488

`A143632(∑[n+3])`
-/

namespace A143633.P14278357357195290488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143633.P14278357357195290488

/-! ## A143633.P4967736377025333031

`or(1, A143632(A027379(n+1)))`
-/

namespace A143633.P4967736377025333031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143632 (A027379 (n + 1)).toNat)

end

end A143633.P4967736377025333031

/-! ## A143633.P1540918343357947278

`or(1, A143632(A055998(n+1)))`
-/

namespace A143633.P1540918343357947278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143632 (A055998 (n + 1)).toNat)

end

end A143633.P1540918343357947278

/-! ## A143633.P17410076166235680475

`A143632(A133263(n)+A016777(n))+A000007(n+1)`
-/

namespace A143633.P17410076166235680475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A133263 n + A016777 n).toNat + A000007 (n + 1)

end

end A143633.P17410076166235680475

/-! ## A143633.P6391534763617547571

`A143632(A141214(n))^A143632(A028710(n))`
-/

namespace A143633.P6391534763617547571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143632 (A141214 n).toNat : ℚ) ^ (A143632 (A028710 n).toNat : ℤ)

end

end A143633.P6391534763617547571

/-!
# A143634: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^3-1)/3)).

The programs for A143634, there is no canonical definition to state claims against.
-/

/-! ## A143634.P2129322637141983772

`A143632(∑[n+3]+n+3)`
-/

namespace A143634.P2129322637141983772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A143634.P2129322637141983772

/-! ## A143634.P15906656554119946617

`gcd(A000038(n), A143632(A046691(n+2)))`
-/

namespace A143634.P15906656554119946617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A143632 (A046691 (n + 2)).toNat)

end

end A143634.P15906656554119946617

/-! ## A143634.P3252798054079029613

`or(A067898(n), A143632(A046691(n+2)))`
-/

namespace A143634.P3252798054079029613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 n) (A143632 (A046691 (n + 2)).toNat)

end

end A143634.P3252798054079029613

/-! ## A143634.P8290777296800824455

`A143632(A046691(n+2))+A000007(n+3)`
-/

namespace A143634.P8290777296800824455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A046691 (n + 2)).toNat + A000007 (n + 3)

end

end A143634.P8290777296800824455

/-! ## A143634.P1678879466333316402

`A143632(A046691(n+2))+A010051(2*(n+2))`
-/

namespace A143634.P1678879466333316402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A046691 (n + 2)).toNat + A010051 (2 * (n + 2))

end

end A143634.P1678879466333316402

/-!
# A143635: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^4-1)/4)).

The programs for A143635, there is no canonical definition to state claims against.
-/

/-! ## A143635.P5304334088220544111

`A143632(A052905(n+2))`
-/

namespace A143635.P5304334088220544111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A052905 (n + 2)).toNat

end

end A143635.P5304334088220544111

/-! ## A143635.P15883798572908991544

`A143632(A056115(n)+10)`
-/

namespace A143635.P15883798572908991544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A056115 n + 10).toNat

end

end A143635.P15883798572908991544

/-! ## A143635.P17586216079383599711

`A143632(eq[3, A129713(n)])`
-/

namespace A143635.P17586216079383599711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143635.P17586216079383599711

/-! ## A143635.P11558657266262695144

`A143632(eq[4, A025581(n)])`
-/

namespace A143635.P11558657266262695144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143635.P11558657266262695144

/-! ## A143635.P7797857591100061047

`A143632(eq[9, A099375(n)])`
-/

namespace A143635.P7797857591100061047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143635.P7797857591100061047

/-!
# A143636: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^5-1)/5)).

The programs for A143636, there is no canonical definition to state claims against.
-/

/-! ## A143636.P12196926906532320011

`A143632(A055999(n+3))`
-/

namespace A143636.P12196926906532320011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A055999 (n + 3)).toNat

end

end A143636.P12196926906532320011

/-! ## A143636.P11851309451439953928

`A143632(eq[5, A025581(n)])`
-/

namespace A143636.P11851309451439953928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143636.P11851309451439953928

/-! ## A143636.P4100582311972991712

`A143632(eq[5, A129713(n)])`
-/

namespace A143636.P4100582311972991712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143636.P4100582311972991712

/-! ## A143636.P17640994283241361367

`A143632(eq[6, A193739(n)])`
-/

namespace A143636.P17640994283241361367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143636.P17640994283241361367

/-! ## A143636.P16178812305714016573

`A143632(eq[11, A099375(n)])`
-/

namespace A143636.P16178812305714016573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143636.P16178812305714016573

/-!
# A143637: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^6-1)/6)).

The programs for A143637, there is no canonical definition to state claims against.
-/

/-! ## A143637.P10385237631241632336

`A143632(eq[6, A025581(n)])`
-/

namespace A143637.P10385237631241632336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143637.P10385237631241632336

/-! ## A143637.P11578274097018697976

`A143632(eq[7, A193739(n)])`
-/

namespace A143637.P11578274097018697976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143637.P11578274097018697976

/-! ## A143637.P5755875792654689603

`A143632(eq[8, A129713(n)])`
-/

namespace A143637.P5755875792654689603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143637.P5755875792654689603

/-! ## A143637.P13465183421634110918

`A143632(eq[13, A099375(n)])`
-/

namespace A143637.P13465183421634110918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143637.P13465183421634110918

/-! ## A143637.P2124149500667371893

`A143632(eq[6, A144257(n+1)])`
-/

namespace A143637.P2124149500667371893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143637.P2124149500667371893

/-!
# A143638: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^7-1)/7)).

The programs for A143638, there is no canonical definition to state claims against.
-/

/-! ## A143638.P8569243455844100546

`A143632(A155212(n+4))`
-/

namespace A143638.P8569243455844100546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A155212 (n + 4)).toNat

end

end A143638.P8569243455844100546

/-! ## A143638.P13425141333420471469

`A143632(eq[7, A025581(n)])`
-/

namespace A143638.P13425141333420471469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143638.P13425141333420471469

/-! ## A143638.P16714379879593902252

`A143632(eq[15, A099375(n)])`
-/

namespace A143638.P16714379879593902252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143638.P16714379879593902252

/-! ## A143638.P641358562468475461

`A143632(eq[8, A004736(n+1)])`
-/

namespace A143638.P641358562468475461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143638.P641358562468475461

/-! ## A143638.P16719273447798091983

`A143632(eq[15, A027293(n+1)])`
-/

namespace A143638.P16719273447798091983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143638.P16719273447798091983

/-!
# A143639: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^8-1)/8)).

The programs for A143639, there is no canonical definition to state claims against.
-/

/-! ## A143639.P8969335976929057941

`A143632(eq[8, A025581(n)])`
-/

namespace A143639.P8969335976929057941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143639.P8969335976929057941

/-! ## A143639.P6274893191428065038

`A143632(eq[9, A193739(n)])`
-/

namespace A143639.P6274893191428065038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143639.P6274893191428065038

/-! ## A143639.P18303211234479498474

`A143632(eq[17, A099375(n)])`
-/

namespace A143639.P18303211234479498474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143639.P18303211234479498474

/-! ## A143639.P8998693921294463610

`A143632(eq[8, A144257(n+1)])`
-/

namespace A143639.P8998693921294463610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143639.P8998693921294463610

/-! ## A143639.P189025083274381825

`A143632(eq[9, A004736(n+1)])`
-/

namespace A143639.P189025083274381825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143639.P189025083274381825

/-!
# A143640: E.g.f. satisfies: A(x) = exp(x*A(((x+1)^9-1)/9)).

The programs for A143640, there is no canonical definition to state claims against.
-/

/-! ## A143640.P3904987146217365923

`A143632(eq[9, A025581(n)])`
-/

namespace A143640.P3904987146217365923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143640.P3904987146217365923

/-! ## A143640.P18401463007455526994

`A143632(eq[10, A193739(n)])`
-/

namespace A143640.P18401463007455526994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143640.P18401463007455526994

/-! ## A143640.P10866162904010041352

`A143632(eq[19, A099375(n)])`
-/

namespace A143640.P10866162904010041352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143640.P10866162904010041352

/-! ## A143640.P3419961508822891157

`A143632(eq[10, A004736(n+1)])`
-/

namespace A143640.P3419961508822891157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143640.P3419961508822891157

/-! ## A143640.P14820040321457183329

`A143632(eq[30, A027293(n+1)])`
-/

namespace A143640.P14820040321457183329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143640.P14820040321457183329

/-!
# A143642: Numerators of principal and intermediate convergents to 3^(1/2).

The programs for A143642, the canonical program `A143642.P14548711916889783629` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143642 has offset 1).

The definition of A143642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143642.P14548711916889783629

`4*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=12`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143642

/-- `4*a(n-3)-a(n-6)` -/
def P14548711916889783629.Spec : Prop :=
  ∀ n, P14548711916889783629.a n = A143642 (n + 1)

theorem P14548711916889783629.correct : P14548711916889783629.Spec := by
  intro n
  simp only [A143642, Nat.add_sub_cancel]

end A143642

/-! ## A143642.P13543415337158431189

`∑[A002531(n-ceil(n/3))]`
-/

namespace A143642.P13543415337158431189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 ((n : ℤ) - ⌈(n : ℚ) / 3⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143642.P13543415337158431189

namespace A143642

/-- `∑[A002531(n-ceil(n/3))]` -/
def P13543415337158431189.Spec : Prop :=
  ∀ n, P13543415337158431189.a n = A143642 (n + 1)

end A143642

/-! ## A143642.P8374473302166257262

`A254308(n)+A140827(n)`
-/

namespace A143642.P8374473302166257262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 n + A140827 n

end

end A143642.P8374473302166257262

namespace A143642

/-- `A254308(n)+A140827(n)` -/
def P8374473302166257262.Spec : Prop :=
  ∀ n, P8374473302166257262.a n = A143642 (n + 1)

end A143642

/-! ## A143642.P1755564147270083274

`∪[A143643(n+1), A259593(n)]`
-/

namespace A143642.P1755564147270083274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143642.P1755564147270083274

namespace A143642

/-- `∪[A143643(n+1), A259593(n)]` -/
def P1755564147270083274.Spec : Prop :=
  ∀ n, (P1755564147270083274.a n : ℤ) = A143642 (n + 1)

end A143642

/-! ## A143642.P12167819791520733892

`∑[A002531(floor(2*n/3))%A000051(n)]`
-/

namespace A143642.P12167819791520733892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002531 ⌊2 * ((n : ℚ) / 3)⌋.toNat) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143642.P12167819791520733892

namespace A143642

/-- `∑[A002531(floor(2*n/3))%A000051(n)]` -/
def P12167819791520733892.Spec : Prop :=
  ∀ n, P12167819791520733892.a n = A143642 (n + 1)

end A143642

/-! ## A143642.P1178784695896855612

`∑[A002531(floor(2*n/3))]%A163888(2*n+1)`
-/

namespace A143642.P1178784695896855612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 ⌊2 * ((n : ℚ) / 3)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A163888 (2 * n + 1))

end

end A143642.P1178784695896855612

namespace A143642

/-- `∑[A002531(floor(2*n/3))]%A163888(2*n+1)` -/
def P1178784695896855612.Spec : Prop :=
  ∀ n, P1178784695896855612.a n = A143642 (n + 1)

end A143642

/-! ## A143642.P7914423523381879982

`∑[A002531(floor(2*n/3))]%A254031(n+2)`
-/

namespace A143642.P7914423523381879982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 ⌊2 * ((n : ℚ) / 3)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A254031 (n + 2))

end

end A143642.P7914423523381879982

namespace A143642

/-- `∑[A002531(floor(2*n/3))]%A254031(n+2)` -/
def P7914423523381879982.Spec : Prop :=
  ∀ n, P7914423523381879982.a n = A143642 (n + 1)

end A143642

/-!
# A143643: Numerators of the lower principal convergents and the lower intermediate convergents to 3^(1/2).

The programs for A143643, the canonical program `A143643.P8174844702871081505` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143643 has offset 1).

The definition of A143643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143643.P8174844702871081505

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143643

/-- `4*a(n-2)-a(n-4)` -/
def P8174844702871081505.Spec : Prop :=
  ∀ n, P8174844702871081505.a n = A143643 (n + 1)

theorem P8174844702871081505.correct : P8174844702871081505.Spec := by
  intro n
  simp only [A143643, Nat.add_sub_cancel]

end A143643

/-! ## A143643.P16752541870095657109

`∑[A001075(ceil(n/2))]`
-/

namespace A143643.P16752541870095657109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143643.P16752541870095657109

namespace A143643

/-- `∑[A001075(ceil(n/2))]` -/
def P16752541870095657109.Spec : Prop :=
  ∀ n, P16752541870095657109.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P12478132364331943220

`∑[A005246(or(1, n+1))]`
-/

namespace A143643.P12478132364331943220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (Nat.lor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143643.P12478132364331943220

namespace A143643

/-- `∑[A005246(or(1, n+1))]` -/
def P12478132364331943220.Spec : Prop :=
  ∀ n, P12478132364331943220.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P11976486658945752120

`(Δ[or(1, n)]+1)*A108412(n)`
-/

namespace A143643.P11976486658945752120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) * A108412 n

end

end A143643.P11976486658945752120

namespace A143643

/-- `(Δ[or(1, n)]+1)*A108412(n)` -/
def P11976486658945752120.Spec : Prop :=
  ∀ n, P11976486658945752120.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P7915287891172483061

`A143642(2*n+1-floor(n/2))`
-/

namespace A143643.P7915287891172483061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 ((2 * n + 1 : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

end

end A143643.P7915287891172483061

namespace A143643

/-- `A143642(2*n+1-floor(n/2))` -/
def P7915287891172483061.Spec : Prop :=
  ∀ n, P7915287891172483061.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P10168700719238893574

`∑[A003500(∑[1-a(n-1)])/2]` with `a(0)=0`
-/

namespace A143643.P10168700719238893574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003500 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143643.P10168700719238893574

namespace A143643

/-- `∑[A003500(∑[1-a(n-1)])/2]` -/
def P10168700719238893574.Spec : Prop :=
  ∀ n, P10168700719238893574.a n = (A143643 (n + 1) : ℚ)

end A143643

/-! ## A143643.P2832817928112056451

`A010684(n)*A108412(n)`
-/

namespace A143643.P2832817928112056451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A108412 n

end

end A143643.P2832817928112056451

namespace A143643

/-- `A010684(n)*A108412(n)` -/
def P2832817928112056451.Spec : Prop :=
  ∀ n, P2832817928112056451.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P15524617621067929623

`(2-A033999(n))*A108412(n)`
-/

namespace A143643.P15524617621067929623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A108412 n

end

end A143643.P15524617621067929623

namespace A143643

/-- `(2-A033999(n))*A108412(n)` -/
def P15524617621067929623.Spec : Prop :=
  ∀ n, P15524617621067929623.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P15182547253484314201

`A082630(n+2)-A005246(n+2)`
-/

namespace A143643.P15182547253484314201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082630 (n + 2) - A005246 (n + 2)

end

end A143643.P15182547253484314201

namespace A143643

/-- `A082630(n+2)-A005246(n+2)` -/
def P15182547253484314201.Spec : Prop :=
  ∀ n, P15182547253484314201.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P227171860997192443

`A259593(n)+A259593(n)-A083336(n)`
-/

namespace A143643.P227171860997192443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 n + (A259593 n - A083336 n)

end

end A143643.P227171860997192443

namespace A143643

/-- `A259593(n)+A259593(n)-A083336(n)` -/
def P227171860997192443.Spec : Prop :=
  ∀ n, P227171860997192443.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P12084657877493187667

`A082630(n+1)+A082630(n+1)-A108412(n)`
-/

namespace A143643.P12084657877493187667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082630 (n + 1) + (A082630 (n + 1) - A108412 n)

end

end A143643.P12084657877493187667

namespace A143643

/-- `A082630(n+1)+A082630(n+1)-A108412(n)` -/
def P12084657877493187667.Spec : Prop :=
  ∀ n, P12084657877493187667.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P681564678620188145

`2*A259593(n)-A083336(n)`
-/

namespace A143643.P681564678620188145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259593 n - A083336 n

end

end A143643.P681564678620188145

namespace A143643

/-- `2*A259593(n)-A083336(n)` -/
def P681564678620188145.Spec : Prop :=
  ∀ n, P681564678620188145.a n = A143643 (n + 1)

end A143643

/-! ## A143643.P17790961020620107693

`∪[A259593(2*n+1), A259593(2*n+1)-A259593(2*n)]`
-/

namespace A143643.P17790961020620107693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (2 * n + 1) - A259593 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143643.P17790961020620107693

namespace A143643

/-- `∪[A259593(2*n+1), A259593(2*n+1)-A259593(2*n)]` -/
def P17790961020620107693.Spec : Prop :=
  ∀ n, (P17790961020620107693.a n : ℤ) = A143643 (n + 1)

end A143643

/-! ## A143643.P6814324412316400260

`A102871(n)/A005246(n+1)`
-/

namespace A143643.P6814324412316400260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102871 n : ℚ) / (A005246 (n + 1) : ℚ)

end

end A143643.P6814324412316400260

namespace A143643

/-- `A102871(n)/A005246(n+1)` -/
def P6814324412316400260.Spec : Prop :=
  ∀ n, P6814324412316400260.a n = (A143643 (n + 1) : ℚ)

end A143643

/-! ## A143643.P422537296886078225

`gcd(1-A092184(n), ∑[A001075(n)])`
-/

namespace A143643.P422537296886078225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A092184 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143643.P422537296886078225

namespace A143643

/-- `gcd(1-A092184(n), ∑[A001075(n)])` -/
def P422537296886078225.Spec : Prop :=
  ∀ n, (P422537296886078225.a n : ℤ) = A143643 (n + 1)

end A143643

/-! ## A143643.P12179245766890312520

`∑[A005246(2*n+1)]/A005246(n+1)`
-/

namespace A143643.P12179245766890312520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A005246 (n + 1) : ℚ)

end

end A143643.P12179245766890312520

namespace A143643

/-- `∑[A005246(2*n+1)]/A005246(n+1)` -/
def P12179245766890312520.Spec : Prop :=
  ∀ n, P12179245766890312520.a n = (A143643 (n + 1) : ℚ)

end A143643

/-! ## A143643.P9516235098897334445

`A005246(n)+A052530(n)/A005246(n+1)`
-/

namespace A143643.P9516235098897334445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005246 n : ℚ) + (A052530 n : ℚ) / (A005246 (n + 1) : ℚ)

end

end A143643.P9516235098897334445

namespace A143643

/-- `A005246(n)+A052530(n)/A005246(n+1)` -/
def P9516235098897334445.Spec : Prop :=
  ∀ n, P9516235098897334445.a n = (A143643 (n + 1) : ℚ)

end A143643

/-! ## A143643.P12762028644827928044

`(A101265(n+1)+A001353(n))/A005246(n+1)`
-/

namespace A143643.P12762028644827928044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101265 (n + 1) + A001353 n : ℚ) / (A005246 (n + 1) : ℚ)

end

end A143643.P12762028644827928044

namespace A143643

/-- `(A101265(n+1)+A001353(n))/A005246(n+1)` -/
def P12762028644827928044.Spec : Prop :=
  ∀ n, P12762028644827928044.a n = (A143643 (n + 1) : ℚ)

end A143643

/-! ## A143643.P16279926047018216997

`(A101879(n+1)+A001353(n))/A005246(n+1)`
-/

namespace A143643.P16279926047018216997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101879 (n + 1) + A001353 n : ℚ) / (A005246 (n + 1) : ℚ)

end

end A143643.P16279926047018216997

namespace A143643

/-- `(A101879(n+1)+A001353(n))/A005246(n+1)` -/
def P16279926047018216997.Spec : Prop :=
  ∀ n, P16279926047018216997.a n = (A143643 (n + 1) : ℚ)

end A143643

/-!
# A143644: Expansion of 1/(1 - x^3 - x^4 + x^7 - x^10 - x^11 + x^14) (a Salem polynomial).

The programs for A143644, there is no canonical definition to state claims against.
-/

/-! ## A143644.P14663232778513326085

`A000194(Δ[A261104(A279890(n))])`
-/

namespace A143644.P14663232778513326085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A279890 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f1 (n + 1) - f1 n).toNat

end

end A143644.P14663232778513326085

/-! ## A143644.P4046864823408382907

`Δ[A056556(Δ[A332274(n)])]`
-/

namespace A143644.P4046864823408382907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143644.P4046864823408382907

/-! ## A143644.P13915784447850996291

`A008679(eq[A193517(n+1), A353435(n)])`
-/

namespace A143644.P13915784447850996291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143644.P13915784447850996291

/-! ## A143644.P8893161324300568407

`A029269(eq[A029229(n), A029242(n+2)])`
-/

namespace A143644.P8893161324300568407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143644.P8893161324300568407

/-!
# A143645: Aliquot sequence starting at 24.

The programs for A143645, the canonical program `A143645.P16129284712906338068` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143645 has offset 0).

The definition of A143645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143645.P16129284712906338068

`A001065(A028310(a(n-1)))` with `a(0)=24`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143645

/-- `A001065(A028310(a(n-1)))` -/
def P16129284712906338068.Spec : Prop :=
  ∀ n, P16129284712906338068.a n = A143645 n

theorem P16129284712906338068.correct : P16129284712906338068.Spec := by
  intro n
  simp only [A143645]

end A143645

/-!
# A143646: Catalan transform of the 3-Fibonacci sequence A006190.

The programs for A143646, there is no canonical definition to state claims against.
-/

/-! ## A143646.P11868443472201184555

`A110654(A151122(n))-A124302(n)`
-/

namespace A143646.P11868443472201184555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151122 n).toNat - A124302 n

end

end A143646.P11868443472201184555

/-! ## A143646.P307900468217811588

`A172267(A151156(n)-A249576(2*n))`
-/

namespace A143646.P307900468217811588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172267 (A151156 n - A249576 (2 * n)).toNat

end

end A143646.P307900468217811588

/-!
# A143647: a(n) = ((5 + sqrt(3))^n + (5 - sqrt(3))^n)/2.

The programs for A143647, the canonical program `A143647.P14834715568352761673` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143647 has offset 0).

The definition of A143647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143647.P14834715568352761673

`10*a(n-1)-22*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143647

/-- `10*a(n-1)-22*a(n-2)` -/
def P14834715568352761673.Spec : Prop :=
  ∀ n, P14834715568352761673.a n = A143647 n

theorem P14834715568352761673.correct : P14834715568352761673.Spec := by
  intro n
  simp only [A143647]

end A143647

/-! ## A143647.P7819680543644091801

`((sqrt(3)+5)^n+(5-sqrt(3))^n)/2`
-/

namespace A143647.P7819680543644091801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (3 : ℝ) + 5) ^ n + (5 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A143647.P7819680543644091801

namespace A143647

/-- `((sqrt(3)+5)^n+(5-sqrt(3))^n)/2` -/
def P7819680543644091801.Spec : Prop :=
  ∀ n, P7819680543644091801.a n = (A143647 n : ℝ)

end A143647

/-! ## A143647.P6594380493790204791

`A162275(n)-A162272(n)`
-/

namespace A143647.P6594380493790204791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162275 n - A162272 n

end

end A143647.P6594380493790204791

namespace A143647

/-- `A162275(n)-A162272(n)` -/
def P6594380493790204791.Spec : Prop :=
  ∀ n, P6594380493790204791.a n = A143647 n

end A143647

/-! ## A143647.P16150467351709554189

`A163471(n)-A162275(n)`
-/

namespace A143647.P16150467351709554189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163471 n - A162275 n

end

end A143647.P16150467351709554189

namespace A143647

/-- `A163471(n)-A162275(n)` -/
def P16150467351709554189.Spec : Prop :=
  ∀ n, P16150467351709554189.a n = A143647 n

end A143647

/-! ## A143647.P5853615655924520476

`A162561(n)-A163471(n)`
-/

namespace A143647.P5853615655924520476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162561 n - A163471 n

end

end A143647.P5853615655924520476

namespace A143647

/-- `A162561(n)-A163471(n)` -/
def P5853615655924520476.Spec : Prop :=
  ∀ n, P5853615655924520476.a n = A143647 n

end A143647

/-! ## A143647.P4260620852150553380

`A162561(n)-3*A162558(n)`
-/

namespace A143647.P4260620852150553380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162561 n - 3 * A162558 n

end

end A143647.P4260620852150553380

namespace A143647

/-- `A162561(n)-3*A162558(n)` -/
def P4260620852150553380.Spec : Prop :=
  ∀ n, P4260620852150553380.a n = A143647 n

end A143647

/-!
# A143648: a(n) = ((4 + sqrt 6)^n + (4 - sqrt 6)^n)/2.

The programs for A143648, the canonical program `A143648.P10048607322197163001` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143648 has offset 0).

The definition of A143648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143648.P10048607322197163001

`8*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143648

/-- `8*a(n-1)-10*a(n-2)` -/
def P10048607322197163001.Spec : Prop :=
  ∀ n, P10048607322197163001.a n = A143648 n

theorem P10048607322197163001.correct : P10048607322197163001.Spec := by
  intro n
  simp only [A143648]

end A143648

/-! ## A143648.P8524130333228158113

`8*a(n-1)-A237416(a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A143648.P8524130333228158113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 * a (n - 1) - A237416 (a (n - 2)).toNat

end

end A143648.P8524130333228158113

namespace A143648

/-- `8*a(n-1)-A237416(a(n-2))` -/
def P8524130333228158113.Spec : Prop :=
  ∀ n, P8524130333228158113.a n = A143648 n

end A143648

/-!
# A143649: Consider numbers m,n such that UnitaryPhi(m)=UnitaryPhi(n)=3*(m*n)^(1/2)/4, m <= n; sequence gives values of n.

The programs for A143649, there is no canonical definition to state claims against.
-/

/-! ## A143649.P6664690070841930647

`A143650(∏{p}[n+1, #]^∏{e}[n+1, #])`
-/

namespace A143649.P6664690070841930647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143650 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A143649.P6664690070841930647

/-! ## A143649.P809335159848940054

`A143650(n+1)^exp(n-n*(1-val(∏{p}[n, #], 11)))`
-/

namespace A143649.P809335159848940054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A143650 (n + 1) : ℝ) ^ (Real.exp ((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ)) : ℝ))

end

end A143649.P809335159848940054

/-! ## A143649.P18074169065242790277

`A143650(∑[A005135(n)])`
-/

namespace A143649.P18074169065242790277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143650 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143649.P18074169065242790277

/-! ## A143649.P14574781809321716133

`A143650(∑[A172358(n)])`
-/

namespace A143649.P14574781809321716133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143650 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143649.P14574781809321716133

/-! ## A143649.P3459862720357282501

`A143650(A185095(∑[n]))`
-/

namespace A143649.P3459862720357282501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143650 (A185095 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A143649.P3459862720357282501

/-!
# A143652: (0, 1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, 13, ...) becomes (0^(1+2), 3^(2+2), 5^(2+3), 7^(2+3), 3^(2+2), 5^(11+2), 2^(3+13), ...).

The programs for A143652, there is no canonical definition to state claims against.
-/

/-! ## A143652.P12781050822120266872

`A143653(n+1)^(A143704(n+1)/A143711(n+1))`
-/

namespace A143652.P12781050822120266872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A143653 (n + 1) : ℝ) ^ ((A143704 (n + 1) : ℚ) / (A143711 (n + 1) : ℚ) : ℝ)

end

end A143652.P12781050822120266872

/-!
# A143654: Array T(n,k) read by rows: number of binary bracelets with n beads, k of them 0, with 00 prohibited, (n >= 2, 0 <= k <= floor(n/2)).

The programs for A143654, there is no canonical definition to state claims against.
-/

/-! ## A143654.P5898564020527076624

`A139039(A064466(n+1))`
-/

namespace A143654.P5898564020527076624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (A064466 (n + 1)).toNat

end

end A143654.P5898564020527076624

/-! ## A143654.P6933009152311641531

`gcd(A155086(n+2), A241318(A134192(n)))`
-/

namespace A143654.P6933009152311641531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155086 (n + 2)) (A241318 (A134192 n).toNat)

end

end A143654.P6933009152311641531

/-!
# A143655: Triangle read by rows, primes not dividing n; A054521 * (A061397 * 0^(n-k)), 1<=k<=n.

The programs for A143655, the canonical program `A143655.P13289820664003860313` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143655 has offset 1).

The definition of A143655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143655.P14494566413727630056

`∑{d}[A173541(n+1), A137851(#)]`
-/

namespace A143655.P14494566413727630056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A137851 d

end

end A143655.P14494566413727630056

namespace A143655

/-- `∑{d}[A173541(n+1), A137851(#)]` -/
def P14494566413727630056.Spec : Prop :=
  ∀ n, P14494566413727630056.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P13289820664003860313

`A127368(n+1)*A143538(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A143655

/-- `A127368(n+1)*A143538(n+1)` -/
def P13289820664003860313.Spec : Prop :=
  ∀ n, P13289820664003860313.a n = A143655 (n + 1)

theorem P13289820664003860313.correct : P13289820664003860313.Spec := by
  intro n
  simp only [A143655, Nat.add_sub_cancel]

end A143655

/-! ## A143655.P11158965632869944709

`A143538(n+1)*A173541(n+1)`
-/

namespace A143655.P11158965632869944709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (n + 1) * A173541 (n + 1)

end

end A143655.P11158965632869944709

namespace A143655

/-- `A143538(n+1)*A173541(n+1)` -/
def P11158965632869944709.Spec : Prop :=
  ∀ n, P11158965632869944709.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P13906234545579862694

`∑{p}[gcd(A007318(n), A154752(n+1)), #]`
-/

namespace A143655.P13906234545579862694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A154752 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A143655.P13906234545579862694

namespace A143655

/-- `∑{p}[gcd(A007318(n), A154752(n+1)), #]` -/
def P13906234545579862694.Spec : Prop :=
  ∀ n, (P13906234545579862694.a n : ℤ) = A143655 (n + 1)

end A143655

/-! ## A143655.P16740984949867677165

`A054521(n+1)*A061397(A193738(n))`
-/

namespace A143655.P16740984949867677165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A061397 (A193738 n).toNat

end

end A143655.P16740984949867677165

namespace A143655

/-- `A054521(n+1)*A061397(A193738(n))` -/
def P16740984949867677165.Spec : Prop :=
  ∀ n, P16740984949867677165.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P5967685141926160649

`A090302(gcd(A007318(n), A154752(n+1)))`
-/

namespace A143655.P5967685141926160649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090302 (Int.gcd (A007318 n) (A154752 (n + 1)))

end

end A143655.P5967685141926160649

namespace A143655

/-- `A090302(gcd(A007318(n), A154752(n+1)))` -/
def P5967685141926160649.Spec : Prop :=
  ∀ n, P5967685141926160649.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P7492075378351109814

`A054521(n+1)*A061397(A002260(n+1))`
-/

namespace A143655.P7492075378351109814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A061397 (A002260 (n + 1)).toNat

end

end A143655.P7492075378351109814

namespace A143655

/-- `A054521(n+1)*A061397(A002260(n+1))` -/
def P7492075378351109814.Spec : Prop :=
  ∀ n, P7492075378351109814.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P9276051905145699260

`A010051(A173541(n+1)+A127093(n+1))*A173541(n+1)`
-/

namespace A143655.P9276051905145699260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A173541 (n + 1) + A127093 (n + 1)).toNat * A173541 (n + 1)

end

end A143655.P9276051905145699260

namespace A143655

/-- `A010051(A173541(n+1)+A127093(n+1))*A173541(n+1)` -/
def P9276051905145699260.Spec : Prop :=
  ∀ n, P9276051905145699260.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P7059465875627566958

`A061397(A002260(n+1)*A050873(n+1))`
-/

namespace A143655.P7059465875627566958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A002260 (n + 1) * A050873 (n + 1)).toNat

end

end A143655.P7059465875627566958

namespace A143655

/-- `A061397(A002260(n+1)*A050873(n+1))` -/
def P7059465875627566958.Spec : Prop :=
  ∀ n, P7059465875627566958.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P1394351120932480197

`A137260(n+1)%A084885(n+1)`
-/

namespace A143655.P1394351120932480197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137260 (n + 1)) (A084885 (n + 1))

end

end A143655.P1394351120932480197

namespace A143655

/-- `A137260(n+1)%A084885(n+1)` -/
def P1394351120932480197.Spec : Prop :=
  ∀ n, P1394351120932480197.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P17629006434493293279

`A061397(∏{d}[A173541(n+1), #])`
-/

namespace A143655.P17629006434493293279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A143655.P17629006434493293279

namespace A143655

/-- `A061397(∏{d}[A173541(n+1), #])` -/
def P17629006434493293279.Spec : Prop :=
  ∀ n, P17629006434493293279.a n = A143655 (n + 1)

end A143655

/-! ## A143655.P10893412301973971179

`A123391(2^A173541(n+1))`
-/

namespace A143655.P10893412301973971179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A173541 (n + 1) : ℤ))).toNat

end

end A143655.P10893412301973971179

namespace A143655

/-- `A123391(2^A173541(n+1))` -/
def P10893412301973971179.Spec : Prop :=
  ∀ n, P10893412301973971179.a n = A143655 (n + 1)

end A143655

/-!
# A143656: Triangle T(n, k) = A045545(k) if gcd(n,k) = 1, 0 otherwise, read by rows.

The programs for A143656, there is no canonical definition to state claims against.
-/

/-! ## A143656.P1972404013370167901

`A045545(A127368(n+1))-A349317(n+1)`
-/

namespace A143656.P1972404013370167901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045545 (A127368 (n + 1)).toNat - A349317 (n + 1)

end

end A143656.P1972404013370167901

/-! ## A143656.P2905351361031713849

`A045545(A002260(n+1))*A054521(n+1)`
-/

namespace A143656.P2905351361031713849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045545 (A002260 (n + 1)).toNat * A054521 (n + 1)

end

end A143656.P2905351361031713849

/-! ## A143656.P18433613650427651466

`A045545(A127368(n+1))*A054521(n+1)`
-/

namespace A143656.P18433613650427651466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045545 (A127368 (n + 1)).toNat * A054521 (n + 1)

end

end A143656.P18433613650427651466

/-! ## A143656.P12144647509142986588

`A045545(A164306(n+1))*A054521(n+1)`
-/

namespace A143656.P12144647509142986588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045545 (A164306 (n + 1)).toNat * A054521 (n + 1)

end

end A143656.P12144647509142986588

/-! ## A143656.P4491651712679177870

`A045545(A226314(n+1))*A054521(n+1)`
-/

namespace A143656.P4491651712679177870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045545 (A226314 (n + 1)).toNat * A054521 (n + 1)

end

end A143656.P4491651712679177870

/-! ## A143656.P2964395057292845781

`lcm(A045545(A002260(n+1)), A215200(n+1))`
-/

namespace A143656.P2964395057292845781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045545 (A002260 (n + 1)).toNat) (A215200 (n + 1))

end

end A143656.P2964395057292845781

/-! ## A143656.P12789093111837512872

`A004530(A132442(n+1))*A045545(A226314(n+1))`
-/

namespace A143656.P12789093111837512872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A132442 (n + 1)).toNat * A045545 (A226314 (n + 1)).toNat

end

end A143656.P12789093111837512872

/-!
# A143657: Number of 4-noncrossing stack-free partial matching without 1-arcs.

The programs for A143657, there is no canonical definition to state claims against.
-/

/-! ## A143657.P24843969941339766

`A279794(n!+2)+A003239(n)`
-/

namespace A143657.P24843969941339766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279794 (Nat.factorial n + 2) + A003239 n

end

end A143657.P24843969941339766

/-! ## A143657.P18145471774919266133

`A073193(n)+A056924(A075834(n))`
-/

namespace A143657.P18145471774919266133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073193 n + A056924 (A075834 n).toNat

end

end A143657.P18145471774919266133

/-! ## A143657.P10474728871964820525

`A024417(A148986(n)+A032741(n))`
-/

namespace A143657.P10474728871964820525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148986 n + A032741 n).toNat

end

end A143657.P10474728871964820525

/-! ## A143657.P14356160346689157244

`A024417(A148986(n)+A106240(n+1))`
-/

namespace A143657.P14356160346689157244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148986 n + A106240 (n + 1)).toNat

end

end A143657.P14356160346689157244

/-!
# A143658: Number of squarefree integers not exceeding 2^n.

The programs for A143658, there is no canonical definition to state claims against.
-/

/-! ## A143658.P4814777306577733704

`A372540(n)-A157928(n)`
-/

namespace A143658.P4814777306577733704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372540 n - A157928 n

end

end A143658.P4814777306577733704

/-! ## A143658.P4608463535089612383

`2^n-A101836(n)`
-/

namespace A143658.P4608463535089612383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A101836 n

end

end A143658.P4608463535089612383

/-! ## A143658.P16466767306589657526

`abs(A000079(n)-A101836(n))`
-/

namespace A143658.P16466767306589657526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A101836 n|

end

end A143658.P16466767306589657526

/-! ## A143658.P5901778614526901661

`abs(A011782(n+1)-A101836(n))`
-/

namespace A143658.P5901778614526901661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A101836 n|

end

end A143658.P5901778614526901661

/-! ## A143658.P1184340127313772185

`A000079(n)-A057427(n)*A101836(n)`
-/

namespace A143658.P1184340127313772185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A057427 n * A101836 n

end

end A143658.P1184340127313772185

/-! ## A143658.P16101425415220680755

`(A000079(n)-A101836(n))%A017036(n)`
-/

namespace A143658.P16101425415220680755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A101836 n) (A017036 n)

end

end A143658.P16101425415220680755

/-! ## A143658.P17217345230107215269

`A000079(n)-A101836(n)%A254626(n+1)`
-/

namespace A143658.P17217345230107215269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - Int.tmod (A101836 n) (A254626 (n + 1))

end

end A143658.P17217345230107215269

/-!
# A143659: Number of perfect matchings of the (2n+1) X (2n+1) grid H_n with a central unit hole.

The programs for A143659, there is no canonical definition to state claims against.
-/

/-! ## A143659.P11809617605203378779

`record[A270668(n)]`
-/

namespace A143659.P11809617605203378779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143659.P11809617605203378779

/-! ## A143659.P2192696183853574822

`A270668(∑[n]+n)`
-/

namespace A143659.P2192696183853574822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270668 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143659.P2192696183853574822

/-!
# A143661: Number of non-symmetric families of n pairwise non-adjacent vertices (special cuts) of the 600-cell.

The programs for A143661, there is no canonical definition to state claims against.
-/

/-! ## A143661.P4595173025173166017

`A000040(A239769(n))²%A239771(n)`
-/

namespace A143661.P4595173025173166017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A239769 n).toNat ^ 2) (A239771 n)

end

end A143661.P4595173025173166017

/-!
# A143662: a(n) is the number of n-tosses having a run of 6 or more heads for a fair coin (i.e., probability is a(n)/2^n).

The programs for A143662, the canonical program `A143662.P5880569709313616368` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143662 has offset 0).

The definition of A143662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143662.P5880569709313616368

`2^n-A001592(n+6)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A143662

/-- `2^n-A001592(n+6)` -/
def P5880569709313616368.Spec : Prop :=
  ∀ n, P5880569709313616368.a n = A143662 n

theorem P5880569709313616368.correct : P5880569709313616368.Spec := by
  intro n
  simp only [A143662]

end A143662

/-! ## A143662.P14667260365907184705

`A000079(n)+A172316(n)-A172316(n+1)`
-/

namespace A143662.P14667260365907184705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A172316 n - A172316 (n + 1))

end

end A143662.P14667260365907184705

namespace A143662

/-- `A000079(n)+A172316(n)-A172316(n+1)` -/
def P14667260365907184705.Spec : Prop :=
  ∀ n, P14667260365907184705.a n = A143662 n

end A143662

/-! ## A143662.P12635333709874155066

`Δ[2^n-A172316(n)]`
-/

namespace A143662.P12635333709874155066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A172316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143662.P12635333709874155066

namespace A143662

/-- `Δ[2^n-A172316(n)]` -/
def P12635333709874155066.Spec : Prop :=
  ∀ n, P12635333709874155066.a n = A143662 n

end A143662

/-! ## A143662.P10098977769271073510

`Δ[A000051(n)-Δ[A145114(n)]]`
-/

namespace A143662.P10098977769271073510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143662.P10098977769271073510

namespace A143662

/-- `Δ[A000051(n)-Δ[A145114(n)]]` -/
def P10098977769271073510.Spec : Prop :=
  ∀ n, P10098977769271073510.a n = A143662 n

end A143662

/-! ## A143662.P6626933876964529441

`Δ[A000079(n)-Δ[A145114(n)]]`
-/

namespace A143662.P6626933876964529441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143662.P6626933876964529441

namespace A143662

/-- `Δ[A000079(n)-Δ[A145114(n)]]` -/
def P6626933876964529441.Spec : Prop :=
  ∀ n, P6626933876964529441.a n = A143662 n

end A143662

/-! ## A143662.P7000330558015643848

`Δ[A000225(n)-Δ[A145114(n)]]`
-/

namespace A143662.P7000330558015643848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143662.P7000330558015643848

namespace A143662

/-- `Δ[A000225(n)-Δ[A145114(n)]]` -/
def P7000330558015643848.Spec : Prop :=
  ∀ n, P7000330558015643848.a n = A143662 n

end A143662

/-! ## A143662.P11208411444216800865

`A000079(n)-A048887(A052905(n+3))`
-/

namespace A143662.P11208411444216800865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A048887 (A052905 (n + 3)).toNat

end

end A143662.P11208411444216800865

namespace A143662

/-- `A000079(n)-A048887(A052905(n+3))` -/
def P11208411444216800865.Spec : Prop :=
  ∀ n, P11208411444216800865.a n = A143662 n

end A143662

/-!
# A143663: a(n) is the least prime such that the multiplicative order of 3 mod a(n) equals n, or a(n)=1 if no such prime exists.

The programs for A143663, there is no canonical definition to state claims against.
-/

/-! ## A143663.P2815755750082592536

`A020639(A064079(n+1))`
-/

namespace A143663.P2815755750082592536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064079 (n + 1)).toNat

end

end A143663.P2815755750082592536

/-! ## A143663.P18359688486824926941

`A020639(A323748(C(n+3, 2)))`
-/

namespace A143663.P18359688486824926941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A323748 (Nat.choose (n + 3) 2)).toNat

end

end A143663.P18359688486824926941

/-! ## A143663.P3731388128000022419

`A020639(A323748(∑[n+2]+1))`
-/

namespace A143663.P3731388128000022419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A323748 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A143663.P3731388128000022419

/-! ## A143663.P6652551658447038207

`A322966(A019321(n+1))`
-/

namespace A143663.P6652551658447038207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322966 (A019321 (n + 1)).toNat

end

end A143663.P6652551658447038207

/-! ## A143663.P15234335950851649899

`A033677(A064079(comp[22*n]))`
-/

namespace A143663.P15234335950851649899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A064079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A143663.P15234335950851649899

/-!
# A143664: A141619 sorted and with duplicates removed.

The programs for A143664, there is no canonical definition to state claims against.
-/

/-! ## A143664.P13957892849865521679

`∪[3*(n+1), p?[A256513(n+1)]]`
-/

namespace A143664.P13957892849865521679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143664.P13957892849865521679

/-! ## A143664.P6041410277459087161

`∪[3*(n+2), p?[A325364(n+1)]]`
-/

namespace A143664.P6041410277459087161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143664.P6041410277459087161

/-! ## A143664.P15328015067187688649

`∪[A000040(n+1), ∑[A243833(n)+3]]`
-/

namespace A143664.P15328015067187688649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143664.P15328015067187688649

/-! ## A143664.P16904995628054668766

`∪[p?[A325364(n+1)], A008486(n+2)]`
-/

namespace A143664.P16904995628054668766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A143664.P16904995628054668766

/-! ## A143664.P17299247575243733128

`lt[n+1, A257174(A103164(n))]`
-/

namespace A143664.P17299247575243733128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A103164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A143664.P17299247575243733128

/-! ## A143664.P7885816319541294115

`A057918((∪[3*(n+1), A000040(n+1)]+1)²)`
-/

namespace A143664.P7885816319541294115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 1) ^ 2)

end

end A143664.P7885816319541294115

/-! ## A143664.P10298459600102506301

`lt[A237053(n), A058281(A058331(n))]`
-/

namespace A143664.P10298459600102506301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A058331 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143664.P10298459600102506301

/-!
# A143665: a(n) is the least prime such that the multiplicative order of 5 mod a(n) equals n.

The programs for A143665, there is no canonical definition to state claims against.
-/

/-! ## A143665.P7743413948995156371

`A020639(A064081(n+1))`
-/

namespace A143665.P7743413948995156371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064081 (n + 1)).toNat

end

end A143665.P7743413948995156371

/-! ## A143665.P12330025957156596660

`A020639(A323748((n+3)²-∑[n+1]))`
-/

namespace A143665.P12330025957156596660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A323748 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A143665.P12330025957156596660

/-! ## A143665.P906454106009835412

`p?[A212485(∑[A085030(n+4)])]`
-/

namespace A143665.P906454106009835412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212485 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143665.P906454106009835412

/-!
# A143667: Digits of the infinite Fibonacci word A003849 grouped 2 by 2 and interpreted as a binary value.

The programs for A143667, the canonical program `A143667.P402733352228964657` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143667 has offset 1).

The definition of A143667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143667.P402733352228964657

`3-A123564(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143667

/-- `3-A123564(n+1)` -/
def P402733352228964657.Spec : Prop :=
  ∀ n, P402733352228964657.a n = A143667 (n + 1)

theorem P402733352228964657.correct : P402733352228964657.Spec := by
  intro n
  simp only [A143667, Nat.add_sub_cancel]

end A143667

/-! ## A143667.P3011121158948655145

`A383670(2*(n+1))`
-/

namespace A143667.P3011121158948655145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383670 (2 * (n + 1))

end

end A143667.P3011121158948655145

namespace A143667

/-- `A383670(2*(n+1))` -/
def P3011121158948655145.Spec : Prop :=
  ∀ n, P3011121158948655145.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P5737451588974634690

`A383671(2*n+3)`
-/

namespace A143667.P5737451588974634690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383671 (2 * n + 3)

end

end A143667.P5737451588974634690

namespace A143667

/-- `A383671(2*n+3)` -/
def P5737451588974634690.Spec : Prop :=
  ∀ n, P5737451588974634690.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P1184672042350210925

`C(2, A159917(2*n)²)`
-/

namespace A143667.P1184672042350210925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A159917 (2 * n) ^ 2).toNat

end

end A143667.P1184672042350210925

namespace A143667

/-- `C(2, A159917(2*n)²)` -/
def P1184672042350210925.Spec : Prop :=
  ∀ n, (P1184672042350210925.a n : ℤ) = A143667 (n + 1)

end A143667

/-! ## A143667.P9175714857363482640

`A287791(2*n+1)%3`
-/

namespace A143667.P9175714857363482640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287791 (2 * n + 1)) 3

end

end A143667.P9175714857363482640

namespace A143667

/-- `A287791(2*n+1)%3` -/
def P9175714857363482640.Spec : Prop :=
  ∀ n, P9175714857363482640.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P10339180235503809786

`ceil(sqrt(A383999(2*n+1)))`
-/

namespace A143667.P10339180235503809786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A383999 (2 * n + 1) : ℝ)⌉

end

end A143667.P10339180235503809786

namespace A143667

/-- `ceil(sqrt(A383999(2*n+1)))` -/
def P10339180235503809786.Spec : Prop :=
  ∀ n, P10339180235503809786.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P15944329834309339578

`and(3, A104326(2*(n+1))-5)`
-/

namespace A143667.P15944329834309339578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A104326 (2 * (n + 1)) - 5)

end

end A143667.P15944329834309339578

namespace A143667

/-- `and(3, A104326(2*(n+1))-5)` -/
def P15944329834309339578.Spec : Prop :=
  ∀ n, P15944329834309339578.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P14552566698666389565

`A339825(n)+2*A339824(n)`
-/

namespace A143667.P14552566698666389565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339825 n + 2 * A339824 n

end

end A143667.P14552566698666389565

namespace A143667

/-- `A339825(n)+2*A339824(n)` -/
def P14552566698666389565.Spec : Prop :=
  ∀ n, P14552566698666389565.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P3410563752927586975

`A014677(A026355(2*(n+1)))+1`
-/

namespace A143667.P3410563752927586975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 (A026355 (2 * (n + 1))).toNat + 1

end

end A143667.P3410563752927586975

namespace A143667

/-- `A014677(A026355(2*(n+1)))+1` -/
def P3410563752927586975.Spec : Prop :=
  ∀ n, P3410563752927586975.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P16567423806388040810

`A005713(2*n)+A003849(2*n)`
-/

namespace A143667.P16567423806388040810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (2 * n) + A003849 (2 * n)

end

end A143667.P16567423806388040810

namespace A143667

/-- `A005713(2*n)+A003849(2*n)` -/
def P16567423806388040810.Spec : Prop :=
  ∀ n, P16567423806388040810.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P6685849719790636419

`A003842(2*n)*A005713(2*n)`
-/

namespace A143667.P6685849719790636419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (2 * n) * A005713 (2 * n)

end

end A143667.P6685849719790636419

namespace A143667

/-- `A003842(2*n)*A005713(2*n)` -/
def P6685849719790636419.Spec : Prop :=
  ∀ n, P6685849719790636419.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P7513393023365345482

`A005713(2*n)*A059426(2*n)`
-/

namespace A143667.P7513393023365345482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (2 * n) * A059426 (2 * n)

end

end A143667.P7513393023365345482

namespace A143667

/-- `A005713(2*n)*A059426(2*n)` -/
def P7513393023365345482.Spec : Prop :=
  ∀ n, P7513393023365345482.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P16592520942211670050

`A284620(A380960(2*n+1)+2*n)`
-/

namespace A143667.P16592520942211670050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A380960 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A143667.P16592520942211670050

namespace A143667

/-- `A284620(A380960(2*n+1)+2*n)` -/
def P16592520942211670050.Spec : Prop :=
  ∀ n, P16592520942211670050.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P12061402264720001373

`A005713(2*n)+1-A005614(2*n)`
-/

namespace A143667.P12061402264720001373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (2 * n) + (1 - A005614 (2 * n))

end

end A143667.P12061402264720001373

namespace A143667

/-- `A005713(2*n)+1-A005614(2*n)` -/
def P12061402264720001373.Spec : Prop :=
  ∀ n, P12061402264720001373.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P10665804352841202446

`A001468(2*(n+1))*A005713(2*n)`
-/

namespace A143667.P10665804352841202446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (2 * (n + 1)) * A005713 (2 * n)

end

end A143667.P10665804352841202446

namespace A143667

/-- `A001468(2*(n+1))*A005713(2*n)` -/
def P10665804352841202446.Spec : Prop :=
  ∀ n, P10665804352841202446.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P17977281560446038367

`A005713(2*n)+2-A014675(2*n)`
-/

namespace A143667.P17977281560446038367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (2 * n) + (2 - A014675 (2 * n))

end

end A143667.P17977281560446038367

namespace A143667

/-- `A005713(2*n)+2-A014675(2*n)` -/
def P17977281560446038367.Spec : Prop :=
  ∀ n, P17977281560446038367.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P9657359671963949822

`A005713(2*n)*A014675(2*n+1)`
-/

namespace A143667.P9657359671963949822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (2 * n) * A014675 (2 * n + 1)

end

end A143667.P9657359671963949822

namespace A143667

/-- `A005713(2*n)*A014675(2*n+1)` -/
def P9657359671963949822.Spec : Prop :=
  ∀ n, P9657359671963949822.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P16846487520297051353

`2*A003842(2*n)-A059426(2*n)`
-/

namespace A143667.P16846487520297051353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003842 (2 * n) - A059426 (2 * n)

end

end A143667.P16846487520297051353

namespace A143667

/-- `2*A003842(2*n)-A059426(2*n)` -/
def P16846487520297051353.Spec : Prop :=
  ∀ n, P16846487520297051353.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P16301451427339755663

`A001468(2*n)-Δ[A001468(2*n)]²`
-/

namespace A143667.P16301451427339755663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (2 * n) - (f1 (n + 1) - f1 n) ^ 2

end

end A143667.P16301451427339755663

namespace A143667

/-- `A001468(2*n)-Δ[A001468(2*n)]²` -/
def P16301451427339755663.Spec : Prop :=
  ∀ n, P16301451427339755663.a n = A143667 (n + 1)

end A143667

/-! ## A143667.P15751061816505167512

`A003849(2*n)+A014677(2*n+1)²`
-/

namespace A143667.P15751061816505167512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n) + A014677 (2 * n + 1) ^ 2

end

end A143667.P15751061816505167512

namespace A143667

/-- `A003849(2*n)+A014677(2*n+1)²` -/
def P15751061816505167512.Spec : Prop :=
  ∀ n, P15751061816505167512.a n = A143667 (n + 1)

end A143667

/-!
# A143668: Result of the morphing 01->01021212, 02->0102121201, 12->01021201, iterated from '01'. Sequence of the Fibonacci word fractal.

The programs for A143668, the canonical program `A143668.P5009634550339019748` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143668 has offset 1).

The definition of A143668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143668.P15406216065582464885

`and(Δ[floor(ϕ*(n+1))], Δ[n²])`
-/

namespace A143668.P15406216065582464885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A143668.P15406216065582464885

namespace A143668

/-- `and(Δ[floor(ϕ*(n+1))], Δ[n²])` -/
def P15406216065582464885.Spec : Prop :=
  ∀ n, P15406216065582464885.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P524146111563946330

`abs(Δ[floor((n+1)/ϕ)-n%2])`
-/

namespace A143668.P524146111563946330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A143668.P524146111563946330

namespace A143668

/-- `abs(Δ[floor((n+1)/ϕ)-n%2])` -/
def P524146111563946330.Spec : Prop :=
  ∀ n, P524146111563946330.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P12551221069521306413

`Δ[or(1, n)]^Δ[ceil((n+1)/ϕ)]`
-/

namespace A143668.P12551221069521306413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A143668.P12551221069521306413

namespace A143668

/-- `Δ[or(1, n)]^Δ[ceil((n+1)/ϕ)]` -/
def P12551221069521306413.Spec : Prop :=
  ∀ n, P12551221069521306413.a n = (A143668 (n + 1) : ℚ)

end A143668

/-! ## A143668.P17209757122513514887

`abs(and((-1)^n, Δ[floor(ϕ*(n+1))]))`
-/

namespace A143668.P17209757122513514887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land ((-1) ^ n) (f1 (n + 1) - f1 n)|

end

end A143668.P17209757122513514887

namespace A143668

/-- `abs(and((-1)^n, Δ[floor(ϕ*(n+1))]))` -/
def P17209757122513514887.Spec : Prop :=
  ∀ n, P17209757122513514887.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P11947609667080928453

`xor(n+1, Δ[floor((n+1)/ϕ)])-n`
-/

namespace A143668.P11947609667080928453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n) - (n : ℤ)

end

end A143668.P11947609667080928453

namespace A143668

/-- `xor(n+1, Δ[floor((n+1)/ϕ)])-n` -/
def P11947609667080928453.Spec : Prop :=
  ∀ n, P11947609667080928453.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P5009634550339019748

`abs(A005614(n)-(-1)^n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143668

/-- `abs(A005614(n)-(-1)^n)` -/
def P5009634550339019748.Spec : Prop :=
  ∀ n, P5009634550339019748.a n = A143668 (n + 1)

theorem P5009634550339019748.correct : P5009634550339019748.Spec := by
  intro n
  simp only [A143668, Nat.add_sub_cancel]

end A143668

/-! ## A143668.P5577737310206245599

`1-(A003849(n)-1)^n`
-/

namespace A143668.P5577737310206245599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A003849 n - 1) ^ n

end

end A143668.P5577737310206245599

namespace A143668

/-- `1-(A003849(n)-1)^n` -/
def P5577737310206245599.Spec : Prop :=
  ∀ n, P5577737310206245599.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P15130383257682147429

`abs(Δ[or(1, n)]+1-A003842(n))`
-/

namespace A143668.P15130383257682147429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 - A003842 n|

end

end A143668.P15130383257682147429

namespace A143668

/-- `abs(Δ[or(1, n)]+1-A003842(n))` -/
def P15130383257682147429.Spec : Prop :=
  ∀ n, P15130383257682147429.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P384838417340316163

`Δ[floor(ϕ*(n+1))]%A020639(n+2)`
-/

namespace A143668.P384838417340316163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A020639 (n + 2))

end

end A143668.P384838417340316163

namespace A143668

/-- `Δ[floor(ϕ*(n+1))]%A020639(n+2)` -/
def P384838417340316163.Spec : Prop :=
  ∀ n, P384838417340316163.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P15293596008246884007

`A000032(gcd(2, n+1)*Δ[floor((n+1)/ϕ)])-1`
-/

namespace A143668.P15293596008246884007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((Nat.gcd 2 (n + 1) : ℤ) * (f1 (n + 1) - f1 n)).toNat - 1

end

end A143668.P15293596008246884007

namespace A143668

/-- `A000032(gcd(2, n+1)*Δ[floor((n+1)/ϕ)])-1` -/
def P15293596008246884007.Spec : Prop :=
  ∀ n, P15293596008246884007.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P7911099614614037525

`A014675(n)%A010693(n)`
-/

namespace A143668.P7911099614614037525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014675 n) (A010693 n)

end

end A143668.P7911099614614037525

namespace A143668

/-- `A014675(n)%A010693(n)` -/
def P7911099614614037525.Spec : Prop :=
  ∀ n, P7911099614614037525.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P1417530181450879573

`A287659(n+1)%A266722(n)`
-/

namespace A143668.P1417530181450879573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287659 (n + 1)) (A266722 n)

end

end A143668.P1417530181450879573

namespace A143668

/-- `A287659(n+1)%A266722(n)` -/
def P1417530181450879573.Spec : Prop :=
  ∀ n, P1417530181450879573.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P6024951297584481467

`A184154(Δ[or(1, n)+A003622(n+1)+1])`
-/

namespace A143668.P6024951297584481467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (A003622 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184154 (f1 (n + 1) - f1 n).toNat

end

end A143668.P6024951297584481467

namespace A143668

/-- `A184154(Δ[or(1, n)+A003622(n+1)+1])` -/
def P6024951297584481467.Spec : Prop :=
  ∀ n, P6024951297584481467.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P15990371299048203304

`A098178(A287659(n+1))`
-/

namespace A143668.P15990371299048203304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A287659 (n + 1)).toNat

end

end A143668.P15990371299048203304

namespace A143668

/-- `A098178(A287659(n+1))` -/
def P15990371299048203304.Spec : Prop :=
  ∀ n, P15990371299048203304.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P2428546745368281304

`(A156596(n+1)+A003849(n))²-A156596(n+1)`
-/

namespace A143668.P2428546745368281304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156596 (n + 1) + A003849 n) ^ 2 - A156596 (n + 1)

end

end A143668.P2428546745368281304

namespace A143668

/-- `(A156596(n+1)+A003849(n))²-A156596(n+1)` -/
def P2428546745368281304.Spec : Prop :=
  ∀ n, P2428546745368281304.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P2069527053745556609

`A000035(n)+A000035(A003714(n)+n)`
-/

namespace A143668.P2069527053745556609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000035 (A003714 n + (n : ℤ)).toNat

end

end A143668.P2069527053745556609

namespace A143668

/-- `A000035(n)+A000035(A003714(n)+n)` -/
def P2069527053745556609.Spec : Prop :=
  ∀ n, P2069527053745556609.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P11459443113109143860

`gcd(3-A003849(n), A134067(n))-1`
-/

namespace A143668.P11459443113109143860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (3 - A003849 n) (A134067 n) : ℤ) - 1

end

end A143668.P11459443113109143860

namespace A143668

/-- `gcd(3-A003849(n), A134067(n))-1` -/
def P11459443113109143860.Spec : Prop :=
  ∀ n, P11459443113109143860.a n = A143668 (n + 1)

end A143668

/-! ## A143668.P6235531471804871763

`A199208(n)%A194584(n+1)`
-/

namespace A143668.P6235531471804871763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199208 n) (A194584 (n + 1))

end

end A143668.P6235531471804871763

namespace A143668

/-- `A199208(n)%A194584(n+1)` -/
def P6235531471804871763.Spec : Prop :=
  ∀ n, P6235531471804871763.a n = A143668 (n + 1)

end A143668

/-!
# A143669: a(n) = binomial((n+1)^2, n) / (n+1)^2.

The programs for A143669, there is no canonical definition to state claims against.
-/

/-! ## A143669.P15039982336898387332

`A091144(n+1)/(n+1)`
-/

namespace A143669.P15039982336898387332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091144 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A143669.P15039982336898387332

/-! ## A143669.P52222824640140361

`A227469(n)/(2*n+1)`
-/

namespace A143669.P52222824640140361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227469 n : ℚ) / (2 * n + 1 : ℚ)

end

end A143669.P52222824640140361

/-! ## A143669.P9687393704276041396

`C((n+1)², n)/(n+1)²`
-/

namespace A143669.P9687393704276041396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A143669.P9687393704276041396

/-! ## A143669.P1336615852293643820

`1/∑[2*n+1]*C(∑[2*n+1], n)`
-/

namespace A143669.P1336615852293643820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n : ℚ)

end

end A143669.P1336615852293643820

/-! ## A143669.P8614384206461957834

`A070780(n)/(n+1)²`
-/

namespace A143669.P8614384206461957834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070780 n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A143669.P8614384206461957834

/-!
# A143670: Array of higher spin alternating sign matrices, read by antidiagonals.

The programs for A143670, there is no canonical definition to state claims against.
-/

/-! ## A143670.P35955841089097892

`A342790(A125860(n))`
-/

namespace A143670.P35955841089097892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342790 (A125860 n).toNat

end

end A143670.P35955841089097892

/-! ## A143670.P13273652309489853858

`A010407(A142589(n))+1`
-/

namespace A143670.P13273652309489853858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010407 (A142589 n).toNat + 1

end

end A143670.P13273652309489853858

/-! ## A143670.P15316268566477546890

`A180121(A142589(n)+1)`
-/

namespace A143670.P15316268566477546890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180121 (A142589 n + 1).toNat

end

end A143670.P15316268566477546890

/-! ## A143670.P17777251812650289529

`A191989(A125860(n))+A109223(n)`
-/

namespace A143670.P17777251812650289529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191989 (A125860 n).toNat + A109223 n

end

end A143670.P17777251812650289529

/-! ## A143670.P10664946125921887890

`A322787(A306018(A318951(n+1)))`
-/

namespace A143670.P10664946125921887890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322787 (A306018 (A318951 (n + 1)).toNat).toNat

end

end A143670.P10664946125921887890

/-!
# A143671: Number of terms in A144688 of length n.

The programs for A143671, there is no canonical definition to state claims against.
-/

/-! ## A143671.P4467828868785927028

`A063945(n+1)/Δ[A180632(n)]`
-/

namespace A143671.P4467828868785927028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180632 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063945 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A143671.P4467828868785927028

/-!
# A143672: Number of chains (totally ordered subsets) in the poset of Dyck paths ordered by inclusion.

The programs for A143672, there is no canonical definition to state claims against.
-/

/-! ## A143672.P3672793926407967536

`A050125(2^∑[n])`
-/

namespace A143672.P3672793926407967536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050125 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A143672.P3672793926407967536

/-!
# A143673: Number of antichains in the poset of Dyck paths ordered by inclusion.

The programs for A143673, there is no canonical definition to state claims against.
-/

/-! ## A143673.P8204364278746329187

`A286926(A262613(a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A143673.P8204364278746329187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A286926 (A262613 (a (n - 1)).toNat).toNat

end

end A143673.P8204364278746329187

/-! ## A143673.P12156320692625063974

`A122893(A122889(n))+A000105(n)`
-/

namespace A143673.P12156320692625063974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122893 (A122889 n).toNat + A000105 n

end

end A143673.P12156320692625063974

/-!
# A143674: Number of maximal antichains in the poset of Dyck paths ordered by inclusion.

The programs for A143674, there is no canonical definition to state claims against.
-/

/-! ## A143674.P11358910500370098236

`A263837(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A143674.P11358910500370098236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A263837 (a (n - 1) ^ 2).toNat

end

end A143674.P11358910500370098236

/-! ## A143674.P1477064093468635004

`A263837(a(n-1)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A143674.P1477064093468635004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A263837 (a (n - 1) * a (n - 1)).toNat

end

end A143674.P1477064093468635004

/-!
# A143677: ( 1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, 13,..) becomes (abs (1-2, 3-2, 2-5, 2-3, 7-2, 3-3, 2-2, 5-11, 2-2, 3-13,..)).

The programs for A143677, there is no canonical definition to state claims against.
-/

/-! ## A143677.P8585306291760796812

`abs(A348477(2*n+1)-A348477(2*(n+1)))`
-/

namespace A143677.P8585306291760796812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A348477 (2 * n + 1) - A348477 (2 * (n + 1))|

end

end A143677.P8585306291760796812

/-! ## A143677.P9657587498553166485

`A056737(A348477(2*(n+1))*A348477(2*n+1))`
-/

namespace A143677.P9657587498553166485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A348477 (2 * (n + 1)) * A348477 (2 * n + 1)).toNat

end

end A143677.P9657587498553166485

/-! ## A143677.P14378038404235672120

`A056737(A141257(n+1))`
-/

namespace A143677.P14378038404235672120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A141257 (n + 1)).toNat

end

end A143677.P14378038404235672120

/-!
# A143680: a(n) = (prime(n)^3 - prime(n^3))/2.

The programs for A143680, there is no canonical definition to state claims against.
-/

/-! ## A143680.P12832317120798369635

`(A030078(n+1)-A055875(n+1))/2`
-/

namespace A143680.P12832317120798369635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) - A055875 (n + 1) : ℚ) / 2

end

end A143680.P12832317120798369635

/-! ## A143680.P4648092773458946613

`(A000578(A000040(n+1))-A055875(n+1))/2`
-/

namespace A143680.P4648092773458946613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A000040 (n + 1)).toNat - A055875 (n + 1) : ℚ) / 2

end

end A143680.P4648092773458946613

/-! ## A143680.P12223008967894902554

`(A291542(n+1)+A291541(n+1))/2`
-/

namespace A143680.P12223008967894902554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291542 (n + 1) + A291541 (n + 1) : ℚ) / 2

end

end A143680.P12223008967894902554

/-! ## A143680.P6822517184505273205

`(A127917(n+1)-A214612(n+1))/2`
-/

namespace A143680.P6822517184505273205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) - A214612 (n + 1) : ℚ) / 2

end

end A143680.P6822517184505273205

/-! ## A143680.P9140097304848456730

`A262199(n+1)/2`
-/

namespace A143680.P9140097304848456730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262199 (n + 1) : ℚ) / 2

end

end A143680.P9140097304848456730

/-!
# A143682: a(n) = (prime(n)^4 - prime(n^4))/2, where prime(n) is the n-th prime.

The programs for A143682, there is no canonical definition to state claims against.
-/

/-! ## A143682.P1148182830602660333

`(A030514(n+1)-A109791(n+1))/2`
-/

namespace A143682.P1148182830602660333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) - A109791 (n + 1) : ℚ) / 2

end

end A143682.P1148182830602660333

/-!
# A143683: Pascal-(1,8,1) array.

The programs for A143683, there is no canonical definition to state claims against.
-/

/-! ## A143683.P8158986936321549972

`A037475(A000188(A081581(n)²))`
-/

namespace A143683.P8158986936321549972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A000188 (A081581 n ^ 2).toNat).toNat

end

end A143683.P8158986936321549972

/-!
# A143684: a(0) = a(1) = 0; thereafter a(n) = 2*a(n-1)*a(n-2) + 1.

The programs for A143684, the canonical program `A143684.P12425716329374048392` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143684 has offset 0).

The definition of A143684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)+1` (program `A143684.P12425716329374048392`, by `A143684.P12425716329374048392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143684.P12425716329374048392

`2*a(n-1)*a(n-2)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143684

/-- `2*a(n-1)*a(n-2)+1` -/
def P12425716329374048392.Spec : Prop :=
  ∀ n, (P12425716329374048392.a n : ℤ) = A143684 n

theorem P12425716329374048392.correct : P12425716329374048392.Spec := by
  intro n
  simp only [A143684]

end A143684

/-! ## A143684.P7073661206053642760

`lcm(lcm(2, a(n-1)), a(n-2))+1` with `a(0)=0, a(1)=0`
-/

namespace A143684.P7073661206053642760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lcm (Nat.lcm 2 (a (n - 1))) (a (n - 2)) + 1

end

end A143684.P7073661206053642760

namespace A143684

/-- `lcm(lcm(2, a(n-1)), a(n-2))+1` -/
def P7073661206053642760.Spec : Prop :=
  ∀ n, (P7073661206053642760.a n : ℤ) = A143684 n

end A143684

/-! ## A143684.P3387987757690971218

`xor(1, 2*a(n-2)*a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A143684.P3387987757690971218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  Nat.xor 1 (2 * a (n - 2) * a (n - 1))

end

end A143684.P3387987757690971218

namespace A143684

/-- `xor(1, 2*a(n-2)*a(n-1))` -/
def P3387987757690971218.Spec : Prop :=
  ∀ n, (P3387987757690971218.a n : ℤ) = A143684 n

end A143684

/-! ## A143684.P4103527871248357173

`or(3, 2*a(n-2)*a(n-1))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A143684.P4103527871248357173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  Nat.lor 3 (2 * a (n - 2) * a (n - 1))

end

end A143684.P4103527871248357173

namespace A143684

/-- `or(3, 2*a(n-2)*a(n-1))` -/
def P4103527871248357173.Spec : Prop :=
  ∀ n, (P4103527871248357173.a n : ℤ) = A143684 n

end A143684

/-! ## A143684.P16956327854417247895

`3-2*(1-a(n-1)*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A143684.P16956327854417247895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 - 2 * (1 - a (n - 1) * a (n - 2))

end

end A143684.P16956327854417247895

namespace A143684

/-- `3-2*(1-a(n-1)*a(n-2))` -/
def P16956327854417247895.Spec : Prop :=
  ∀ n, P16956327854417247895.a n = A143684 n

end A143684

/-!
# A143685: Pascal-(1,9,1) array.

The programs for A143685, there is no canonical definition to state claims against.
-/

/-! ## A143685.P4973435229367909604

`A007095(A143683(n)%A155573(2*(n+1)))`
-/

namespace A143685.P4973435229367909604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A143683 n) (A155573 (2 * (n + 1)))).toNat

end

end A143685.P4973435229367909604

/-! ## A143685.P14338116547245338499

`A007095(A143683(n)%A236371(n+1))`
-/

namespace A143685.P14338116547245338499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A143683 n) (A236371 (n + 1))).toNat

end

end A143685.P14338116547245338499

/-! ## A143685.P10334354278910400449

`A007093(A081581(n)%A087086(3*(n+1)))`
-/

namespace A143685.P10334354278910400449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A081581 n) (A087086 (3 * (n + 1)))).toNat

end

end A143685.P10334354278910400449

/-! ## A143685.P7723026832737437875

`A007093(A081581(n))%A138535(3*n+2)`
-/

namespace A143685.P7723026832737437875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 (A081581 n).toNat) (A138535 (3 * n + 2))

end

end A143685.P7723026832737437875

/-! ## A143685.P8649755488235395733

`A107436(A081581(n)²)`
-/

namespace A143685.P8649755488235395733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (A081581 n ^ 2).toNat

end

end A143685.P8649755488235395733

/-!
# A143689: a(n) = (3*n^2 - n + 2)/2.

The programs for A143689, the canonical program `A143689.P2779484328448269126` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143689 has offset 0).

The definition of A143689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143689.P2779484328448269126

`C(n, 2)+n²+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143689

/-- `C(n, 2)+n²+1` -/
def P2779484328448269126.Spec : Prop :=
  ∀ n, (P2779484328448269126.a n : ℤ) = A143689 n

theorem P2779484328448269126.correct : P2779484328448269126.Spec := by
  intro n
  simp only [A143689]

end A143689

/-! ## A143689.P6347641128375614393

`a(n-1)+3*n-2` with `a(0)=1`
-/

namespace A143689.P6347641128375614393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 * n : ℤ) - 2

end

end A143689.P6347641128375614393

namespace A143689

/-- `a(n-1)+3*n-2` -/
def P6347641128375614393.Spec : Prop :=
  ∀ n, P6347641128375614393.a n = A143689 n

end A143689

/-! ## A143689.P2976425911385874170

`A000326(n+1)-3*n`
-/

namespace A143689.P2976425911385874170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) - (3 * n : ℤ)

end

end A143689.P2976425911385874170

namespace A143689

/-- `A000326(n+1)-3*n` -/
def P2976425911385874170.Spec : Prop :=
  ∀ n, P2976425911385874170.a n = A143689 n

end A143689

/-! ## A143689.P403751362212303617

`A152947(n+1)+A000290(n)`
-/

namespace A143689.P403751362212303617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A000290 n

end

end A143689.P403751362212303617

namespace A143689

/-- `A152947(n+1)+A000290(n)` -/
def P403751362212303617.Spec : Prop :=
  ∀ n, P403751362212303617.a n = A143689 n

end A143689

/-! ## A143689.P15693282957087377286

`A027599(n+1)/2`
-/

namespace A143689.P15693282957087377286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027599 (n + 1) : ℚ) / 2

end

end A143689.P15693282957087377286

namespace A143689

/-- `A027599(n+1)/2` -/
def P15693282957087377286.Spec : Prop :=
  ∀ n, P15693282957087377286.a n = (A143689 n : ℚ)

end A143689

/-! ## A143689.P8531189866842423589

`∑[3*n-2]+3`
-/

namespace A143689.P8531189866842423589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A143689.P8531189866842423589

namespace A143689

/-- `∑[3*n-2]+3` -/
def P8531189866842423589.Spec : Prop :=
  ∀ n, P8531189866842423589.a n = A143689 n

end A143689

/-! ## A143689.P5525930643385826864

`(C(3*n, 2)+3)/3`
-/

namespace A143689.P5525930643385826864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 + 3 : ℚ) / 3

end

end A143689.P5525930643385826864

namespace A143689

/-- `(C(3*n, 2)+3)/3` -/
def P5525930643385826864.Spec : Prop :=
  ∀ n, P5525930643385826864.a n = (A143689 n : ℚ)

end A143689

/-! ## A143689.P16177441371325817217

`∑[a(n-1)+3]` with `a(0)=1, a(1)=1`
-/

namespace A143689.P16177441371325817217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143689.P16177441371325817217

namespace A143689

/-- `∑[a(n-1)+3]` -/
def P16177441371325817217.Spec : Prop :=
  ∀ n, (P16177441371325817217.a n : ℤ) = A143689 n

end A143689

/-! ## A143689.P5369107947156984641

`∑[abs(2-floor(3/acot(n)))]`
-/

namespace A143689.P5369107947156984641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143689.P5369107947156984641

namespace A143689

/-- `∑[abs(2-floor(3/acot(n)))]` -/
def P5369107947156984641.Spec : Prop :=
  ∀ n, P5369107947156984641.a n = A143689 n

end A143689

/-! ## A143689.P9619796402313116561

`Δ[(C(n, 2)+1)*(n-1)]`
-/

namespace A143689.P9619796402313116561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1 : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143689.P9619796402313116561

namespace A143689

/-- `Δ[(C(n, 2)+1)*(n-1)]` -/
def P9619796402313116561.Spec : Prop :=
  ∀ n, P9619796402313116561.a n = A143689 n

end A143689

/-! ## A143689.P16905679733071743984

`abs(3-∑[a(n-1)-3])` with `a(0)=2`
-/

namespace A143689.P16905679733071743984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A143689.P16905679733071743984

namespace A143689

/-- `abs(3-∑[a(n-1)-3])` -/
def P16905679733071743984.Spec : Prop :=
  ∀ n, P16905679733071743984.a n = A143689 n

end A143689

/-! ## A143689.P11366887830252826188

`(Δ[lcm(n, (1-n)²)]+2)/2`
-/

namespace A143689.P11366887830252826188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 : ℚ) / 2

end

end A143689.P11366887830252826188

namespace A143689

/-- `(Δ[lcm(n, (1-n)²)]+2)/2` -/
def P11366887830252826188.Spec : Prop :=
  ∀ n, P11366887830252826188.a n = (A143689 n : ℚ)

end A143689

/-! ## A143689.P8679657233557991251

`(6-∑[a(n-1)-6])/2` with `a(0)=4`
-/

namespace A143689.P8679657233557991251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A143689.P8679657233557991251

namespace A143689

/-- `(6-∑[a(n-1)-6])/2` -/
def P8679657233557991251.Spec : Prop :=
  ∀ n, P8679657233557991251.a n = (A143689 n : ℚ)

end A143689

/-! ## A143689.P10341377940337322550

`∑[3*(2*n)%(n+1)+1]`
-/

namespace A143689.P10341377940337322550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143689.P10341377940337322550

namespace A143689

/-- `∑[3*(2*n)%(n+1)+1]` -/
def P10341377940337322550.Spec : Prop :=
  ∀ n, (P10341377940337322550.a n : ℤ) = A143689 n

end A143689

/-! ## A143689.P14626874899327876178

`floor(3*n-(2-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A143689.P14626874899327876178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) - (2 - a (n - 1))

end

end A143689.P14626874899327876178

namespace A143689

/-- `floor(3*n-(2-a(n-1)))` -/
def P14626874899327876178.Spec : Prop :=
  ∀ n, P14626874899327876178.a n = A143689 n

end A143689

/-! ## A143689.P1554711024027623921

`abs(C(n+2, 2)+n*(n-2))`
-/

namespace A143689.P1554711024027623921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 2) 2 : ℤ) + (n : ℤ) * ((n : ℤ) - 2)|

end

end A143689.P1554711024027623921

namespace A143689

/-- `abs(C(n+2, 2)+n*(n-2))` -/
def P1554711024027623921.Spec : Prop :=
  ∀ n, P1554711024027623921.a n = A143689 n

end A143689

/-! ## A143689.P15121768835008521248

`floor(n-∑[a(n-1)-3])` with `a(0)=-1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A143689.P15121768835008521248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143689.P15121768835008521248

namespace A143689

/-- `floor(n-∑[a(n-1)-3])` -/
def P15121768835008521248.Spec : Prop :=
  ∀ n, P15121768835008521248.a n = A143689 n

end A143689

/-! ## A143689.P7455127476364648308

`3*(n-(2-a(n-1))/3)` with `a(0)=1`
-/

namespace A143689.P7455127476364648308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n : ℚ) - (2 - a (n - 1)) / 3)

end

end A143689.P7455127476364648308

namespace A143689

/-- `3*(n-(2-a(n-1))/3)` -/
def P7455127476364648308.Spec : Prop :=
  ∀ n, P7455127476364648308.a n = (A143689 n : ℚ)

end A143689

/-!
# A143690: a(n) = A007318 * [1, 6, 14, 9, 0, 0, 0, ...].

The programs for A143690, the canonical program `A143690.P3024574281317307231` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143690 has offset 0).

The definition of A143690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143690.P8705587971888272848

`(n+1)*(3*n²+2*n+2)/2`
-/

namespace A143690.P8705587971888272848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((3 * n ^ 2 + 2 * n + 2 : ℚ) / 2)

end

end A143690.P8705587971888272848

namespace A143690

/-- `(n+1)*(3*n²+2*n+2)/2` -/
def P8705587971888272848.Spec : Prop :=
  ∀ n, P8705587971888272848.a n = (A143690 n : ℚ)

end A143690

/-! ## A143690.P3024574281317307231

`A000326(n+1)+(n+1)*A000326(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A143690

/-- `A000326(n+1)+(n+1)*A000326(n)` -/
def P3024574281317307231.Spec : Prop :=
  ∀ n, P3024574281317307231.a n = A143690 n

theorem P3024574281317307231.correct : P3024574281317307231.Spec := by
  intro n
  simp only [A143690]

end A143690

/-! ## A143690.P9224121072857882083

`∑[∑[a(n-1)+9]]` with `a(0)=1, a(1)=5`
-/

namespace A143690.P9224121072857882083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P9224121072857882083

namespace A143690

/-- `∑[∑[a(n-1)+9]]` -/
def P9224121072857882083.Spec : Prop :=
  ∀ n, (P9224121072857882083.a n : ℤ) = A143690 n

end A143690

/-! ## A143690.P3037434309381409377

`(n+1)²+∑[C(3*n, 2)]`
-/

namespace A143690.P3037434309381409377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P3037434309381409377

namespace A143690

/-- `(n+1)²+∑[C(3*n, 2)]` -/
def P3037434309381409377.Spec : Prop :=
  ∀ n, (P3037434309381409377.a n : ℤ) = A143690 n

end A143690

/-! ## A143690.P7691796873517433035

`(3*n+2)*C(n+1, 2)+1+n`
-/

namespace A143690.P7691796873517433035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) * Nat.choose (n + 1) 2 + 1 + n

end

end A143690.P7691796873517433035

namespace A143690

/-- `(3*n+2)*C(n+1, 2)+1+n` -/
def P7691796873517433035.Spec : Prop :=
  ∀ n, (P7691796873517433035.a n : ℤ) = A143690 n

end A143690

/-! ## A143690.P3199121078608933502

`lcm(2*n+1, ∑[2*n+1])-n*∑[n+2]`
-/

namespace A143690.P3199121078608933502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

end

end A143690.P3199121078608933502

namespace A143690

/-- `lcm(2*n+1, ∑[2*n+1])-n*∑[n+2]` -/
def P3199121078608933502.Spec : Prop :=
  ∀ n, P3199121078608933502.a n = A143690 n

end A143690

/-! ## A143690.P2358340830338473816

`∑[A006137(n)]`
-/

namespace A143690.P2358340830338473816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P2358340830338473816

namespace A143690

/-- `∑[A006137(n)]` -/
def P2358340830338473816.Spec : Prop :=
  ∀ n, P2358340830338473816.a n = A143690 n

end A143690

/-! ## A143690.P4752982569293138769

`∑[A022267(n)+1]`
-/

namespace A143690.P4752982569293138769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P4752982569293138769

namespace A143690

/-- `∑[A022267(n)+1]` -/
def P4752982569293138769.Spec : Prop :=
  ∀ n, P4752982569293138769.a n = A143690 n

end A143690

/-! ## A143690.P9069727295462226125

`∑[A276819(n)+n]`
-/

namespace A143690.P9069727295462226125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P9069727295462226125

namespace A143690

/-- `∑[A276819(n)+n]` -/
def P9069727295462226125.Spec : Prop :=
  ∀ n, P9069727295462226125.a n = A143690 n

end A143690

/-! ## A143690.P7227454063152629047

`∑[A038764(n)-n]`
-/

namespace A143690.P7227454063152629047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P7227454063152629047

namespace A143690

/-- `∑[A038764(n)-n]` -/
def P7227454063152629047.Spec : Prop :=
  ∀ n, P7227454063152629047.a n = A143690 n

end A143690

/-! ## A143690.P5229206318913141241

`∑[A022266(n)+n+1]`
-/

namespace A143690.P5229206318913141241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P5229206318913141241

namespace A143690

/-- `∑[A022266(n)+n+1]` -/
def P5229206318913141241.Spec : Prop :=
  ∀ n, P5229206318913141241.a n = A143690 n

end A143690

/-! ## A143690.P8809775472185545022

`A100175(n+1)-∑[n]`
-/

namespace A143690.P8809775472185545022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143690.P8809775472185545022

namespace A143690

/-- `A100175(n+1)-∑[n]` -/
def P8809775472185545022.Spec : Prop :=
  ∀ n, P8809775472185545022.a n = A143690 n

end A143690

/-! ## A143690.P16242906346290200729

`A005920(n)-∑[2*n]`
-/

namespace A143690.P16242906346290200729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143690.P16242906346290200729

namespace A143690

/-- `A005920(n)-∑[2*n]` -/
def P16242906346290200729.Spec : Prop :=
  ∀ n, P16242906346290200729.a n = A143690 n

end A143690

/-! ## A143690.P692201868990087917

`A069778(n)+n*∑[n]`
-/

namespace A143690.P692201868990087917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A143690.P692201868990087917

namespace A143690

/-- `A069778(n)+n*∑[n]` -/
def P692201868990087917.Spec : Prop :=
  ∀ n, P692201868990087917.a n = A143690 n

end A143690

/-! ## A143690.P16399657458785868281

`n*A143689(n+1)+1`
-/

namespace A143690.P16399657458785868281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A143689 (n + 1) + 1

end

end A143690.P16399657458785868281

namespace A143690

/-- `n*A143689(n+1)+1` -/
def P16399657458785868281.Spec : Prop :=
  ∀ n, P16399657458785868281.a n = A143690 n

end A143690

/-! ## A143690.P10361781615088233515

`∑[A062741(n)]+(n+1)²`
-/

namespace A143690.P10361781615088233515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A143690.P10361781615088233515

namespace A143690

/-- `∑[A062741(n)]+(n+1)²` -/
def P10361781615088233515.Spec : Prop :=
  ∀ n, P10361781615088233515.a n = A143690 n

end A143690

/-! ## A143690.P4405506881213273328

`∑[A218471(n)+(n+1)²]`
-/

namespace A143690.P4405506881213273328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P4405506881213273328

namespace A143690

/-- `∑[A218471(n)+(n+1)²]` -/
def P4405506881213273328.Spec : Prop :=
  ∀ n, P4405506881213273328.a n = A143690 n

end A143690

/-! ## A143690.P8893216068216956566

`A255687(n)+∑[(1-n)²]`
-/

namespace A143690.P8893216068216956566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255687 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143690.P8893216068216956566

namespace A143690

/-- `A255687(n)+∑[(1-n)²]` -/
def P8893216068216956566.Spec : Prop :=
  ∀ n, P8893216068216956566.a n = A143690 n

end A143690

/-!
# A143691: Lexicographically earliest permutation of the natural numbers having alternating even and odd numbers of prime factors.

The programs for A143691, there is no canonical definition to state claims against.
-/

/-! ## A143691.P1614658177554821618

`A143692(A143693(n+1))`
-/

namespace A143691.P1614658177554821618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143692 (A143693 (n + 1)).toNat

end

end A143691.P1614658177554821618

/-! ## A143691.P4853993263272264646

`A382374(A187829(n+1))`
-/

namespace A143691.P4853993263272264646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382374 (A187829 (n + 1)).toNat

end

end A143691.P4853993263272264646

/-! ## A143691.P5707435333080018082

`A001222(2^A382374(n+1))`
-/

namespace A143691.P5707435333080018082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A382374 (n + 1) : ℤ))).toNat

end

end A143691.P5707435333080018082

/-! ## A143691.P4362629755555015030

`A051903(2^A382374(n+1))`
-/

namespace A143691.P4362629755555015030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A382374 (n + 1) : ℤ))).toNat

end

end A143691.P4362629755555015030

/-! ## A143691.P11234531064481065366

`A382374(n+1)%Δ[A372732(n)]`
-/

namespace A143691.P11234531064481065366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382374 (n + 1)) (f1 (n + 1) - f1 n)

end

end A143691.P11234531064481065366

/-!
# A143692: Permutation of natural numbers: If n is k-th number with an odd number of prime divisors (counted with multiplicity) [i.e., n = A026424(k)], a(n) = 2*k, otherwise, when n is k-th number with an even number of prime divisors [i.e., n = A028260(k)], a(n) = (2*k)-1.

The programs for A143692, there is no canonical definition to state claims against.
-/

/-! ## A143692.P284325957535850599

`A143691(A143694(n+1))`
-/

namespace A143692.P284325957535850599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (A143694 (n + 1)).toNat

end

end A143692.P284325957535850599

/-!
# A143693: A143691(A143691(n)).

The programs for A143693, there is no canonical definition to state claims against.
-/

/-! ## A143693.P17037903333603553202

`A143691(A143691(n+1))`
-/

namespace A143693.P17037903333603553202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (A143691 (n + 1)).toNat

end

end A143693.P17037903333603553202

/-!
# A143694: A143692(A143692(n)).

The programs for A143694, there is no canonical definition to state claims against.
-/

/-! ## A143694.P6303544924126480151

`A143692(A143692(n+1))`
-/

namespace A143694.P6303544924126480151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143692 (A143692 (n + 1)).toNat

end

end A143694.P6303544924126480151

/-!
# A143697: Least square k^2 such that n^2-k^2 = p*q with p and q odd primes and p= 4.

The programs for A143697, there is no canonical definition to state claims against.
-/

/-! ## A143697.P1276057613557830621

`A082467(n+4)²`
-/

namespace A143697.P1276057613557830621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (n + 4) ^ 2

end

end A143697.P1276057613557830621

/-! ## A143697.P10594836167461366926

`(n+4-A078496(n+4))²`
-/

namespace A143697.P10594836167461366926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4 : ℤ) - A078496 (n + 4)) ^ 2

end

end A143697.P10594836167461366926

/-! ## A143697.P10396959622066303

`(n+4-A078587(n+4))²`
-/

namespace A143697.P10396959622066303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4 : ℤ) - A078587 (n + 4)) ^ 2

end

end A143697.P10396959622066303

/-! ## A143697.P15183418065190286599

`(A078496(n+4)-A020705(n))²`
-/

namespace A143697.P15183418065190286599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078496 (n + 4) - A020705 n) ^ 2

end

end A143697.P15183418065190286599

/-! ## A143697.P5731886258711696730

`(A078587(n+4)-A020705(n))²`
-/

namespace A143697.P5731886258711696730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078587 (n + 4) - A020705 n) ^ 2

end

end A143697.P5731886258711696730

/-! ## A143697.P13917282681329526344

`A082467(n+4)*A082467(A020705(n))`
-/

namespace A143697.P13917282681329526344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (n + 4) * A082467 (A020705 n).toNat

end

end A143697.P13917282681329526344

/-! ## A143697.P12398445278997285805

`A082467(n+4)^(A019425(A019425(n))+1)`
-/

namespace A143697.P12398445278997285805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082467 (n + 4) : ℚ) ^ (A019425 (A019425 n).toNat + 1 : ℤ)

end

end A143697.P12398445278997285805

/-! ## A143697.P2884157701346349685

`A000290(A082467(n+4)%A007491(n+1))`
-/

namespace A143697.P2884157701346349685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A082467 (n + 4)) (A007491 (n + 1))).toNat

end

end A143697.P2884157701346349685

/-! ## A143697.P165676064284458340

`A000290(2*A082467(n+4)-A082467(n+4))`
-/

namespace A143697.P165676064284458340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A082467 (n + 4) - A082467 (n + 4)).toNat

end

end A143697.P165676064284458340

/-! ## A143697.P3900825672791343894

`A082467(n+4)*A082467(A078496(n+4)-A082467(n+4))`
-/

namespace A143697.P3900825672791343894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (n + 4) * A082467 (A078496 (n + 4) - A082467 (n + 4)).toNat

end

end A143697.P3900825672791343894

/-! ## A143697.P8168669361975539518

`A082467(n+4)^A000005(A304874(n+2))`
-/

namespace A143697.P8168669361975539518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082467 (n + 4) : ℚ) ^ (A000005 (A304874 (n + 2)).toNat : ℤ)

end

end A143697.P8168669361975539518

/-! ## A143697.P12177629156296270166

`A082467(n+4)^A000005(A304875(n+2))`
-/

namespace A143697.P12177629156296270166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082467 (n + 4) : ℚ) ^ (A000005 (A304875 (n + 2)).toNat : ℤ)

end

end A143697.P12177629156296270166

/-!
# A143698: 12 times hexagonal numbers: 12*n*(2*n-1).

The programs for A143698, the canonical program `A143698.P9968800261778311667` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143698 has offset 0).

The definition of A143698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143698.P9968800261778311667

`24*n²-12*n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143698

/-- `24*n²-12*n` -/
def P9968800261778311667.Spec : Prop :=
  ∀ n, P9968800261778311667.a n = A143698 n

theorem P9968800261778311667.correct : P9968800261778311667.Spec := by
  intro n
  simp only [A143698]

end A143698

/-! ## A143698.P12544651000019339627

`2*A152746(n)`
-/

namespace A143698.P12544651000019339627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152746 n

end

end A143698.P12544651000019339627

namespace A143698

/-- `2*A152746(n)` -/
def P12544651000019339627.Spec : Prop :=
  ∀ n, P12544651000019339627.a n = A143698 n

end A143698

/-! ## A143698.P6763934088448596100

`3*A085250(n)`
-/

namespace A143698.P6763934088448596100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085250 n

end

end A143698.P6763934088448596100

namespace A143698

/-- `3*A085250(n)` -/
def P6763934088448596100.Spec : Prop :=
  ∀ n, P6763934088448596100.a n = A143698 n

end A143698

/-! ## A143698.P13888706368486257325

`4*A094159(n)`
-/

namespace A143698.P13888706368486257325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094159 n

end

end A143698.P13888706368486257325

namespace A143698

/-- `4*A094159(n)` -/
def P13888706368486257325.Spec : Prop :=
  ∀ n, P13888706368486257325.a n = A143698 n

end A143698

/-! ## A143698.P10766755576036963654

`6*A002939(n)`
-/

namespace A143698.P10766755576036963654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002939 n

end

end A143698.P10766755576036963654

namespace A143698

/-- `6*A002939(n)` -/
def P10766755576036963654.Spec : Prop :=
  ∀ n, P10766755576036963654.a n = A143698 n

end A143698

/-! ## A143698.P9650007210655132819

`12*A000384(n)`
-/

namespace A143698.P9650007210655132819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000384 n

end

end A143698.P9650007210655132819

namespace A143698

/-- `12*A000384(n)` -/
def P9650007210655132819.Spec : Prop :=
  ∀ n, P9650007210655132819.a n = A143698 n

end A143698

/-! ## A143698.P9234365030330359298

`12*C(2*n, 2)`
-/

namespace A143698.P9234365030330359298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose (2 * n) 2

end

end A143698.P9234365030330359298

namespace A143698

/-- `12*C(2*n, 2)` -/
def P9234365030330359298.Spec : Prop :=
  ∀ n, (P9234365030330359298.a n : ℤ) = A143698 n

end A143698

/-! ## A143698.P16364246518494036685

`3*n*record[lcm(4, n)]`
-/

namespace A143698.P16364246518494036685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A143698.P16364246518494036685

namespace A143698

/-- `3*n*record[lcm(4, n)]` -/
def P16364246518494036685.Spec : Prop :=
  ∀ n, (P16364246518494036685.a n : ℤ) = A143698 n

end A143698

/-! ## A143698.P10750740315248069416

`∑[a(n-1)+48]` with `a(0)=0, a(1)=12`
-/

namespace A143698.P10750740315248069416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143698.P10750740315248069416

namespace A143698

/-- `∑[a(n-1)+48]` -/
def P10750740315248069416.Spec : Prop :=
  ∀ n, (P10750740315248069416.a n : ℤ) = A143698 n

end A143698

/-! ## A143698.P7422243610237330275

`record[2*n*(n+1)*3^(n%2)]`
-/

namespace A143698.P7422243610237330275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((n + 1) * 3 ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143698.P7422243610237330275

namespace A143698

/-- `record[2*n*(n+1)*3^(n%2)]` -/
def P7422243610237330275.Spec : Prop :=
  ∀ n, (P7422243610237330275.a n : ℤ) = A143698 n

end A143698

/-! ## A143698.P100467952036461775

`record[2*n*(n+1)*(2*and(1, n)+1)]`
-/

namespace A143698.P100467952036461775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((n + 1) * (2 * Nat.land 1 n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143698.P100467952036461775

namespace A143698

/-- `record[2*n*(n+1)*(2*and(1, n)+1)]` -/
def P100467952036461775.Spec : Prop :=
  ∀ n, (P100467952036461775.a n : ℤ) = A143698 n

end A143698

/-! ## A143698.P8329346777109064694

`3*(A080856(n)-1)`
-/

namespace A143698.P8329346777109064694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A080856 n - 1)

end

end A143698.P8329346777109064694

namespace A143698

/-- `3*(A080856(n)-1)` -/
def P8329346777109064694.Spec : Prop :=
  ∀ n, P8329346777109064694.a n = A143698 n

end A143698

/-! ## A143698.P17357255756497634991

`3/2*A152750(n)`
-/

namespace A143698.P17357255756497634991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A152750 n : ℚ)

end

end A143698.P17357255756497634991

namespace A143698

/-- `3/2*A152750(n)` -/
def P17357255756497634991.Spec : Prop :=
  ∀ n, P17357255756497634991.a n = (A143698 n : ℚ)

end A143698

/-! ## A143698.P1842326307969409061

`4/3*A152994(n)`
-/

namespace A143698.P1842326307969409061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A152994 n : ℚ)

end

end A143698.P1842326307969409061

namespace A143698

/-- `4/3*A152994(n)` -/
def P1842326307969409061.Spec : Prop :=
  ∀ n, P1842326307969409061.a n = (A143698 n : ℚ)

end A143698

/-! ## A143698.P8646945532537199540

`3*(A139272(n)+n)`
-/

namespace A143698.P8646945532537199540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A139272 n + (n : ℤ))

end

end A143698.P8646945532537199540

namespace A143698

/-- `3*(A139272(n)+n)` -/
def P8646945532537199540.Spec : Prop :=
  ∀ n, P8646945532537199540.a n = A143698 n

end A143698

/-! ## A143698.P110482620882298636

`2*(A396291(n)-n)`
-/

namespace A143698.P110482620882298636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A396291 n - (n : ℤ))

end

end A143698.P110482620882298636

namespace A143698

/-- `2*(A396291(n)-n)` -/
def P110482620882298636.Spec : Prop :=
  ∀ n, P110482620882298636.a n = A143698 n

end A143698

/-! ## A143698.P3164567987724487706

`4*(A139267(n)+n)`
-/

namespace A143698.P3164567987724487706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A139267 n + (n : ℤ))

end

end A143698.P3164567987724487706

namespace A143698

/-- `4*(A139267(n)+n)` -/
def P3164567987724487706.Spec : Prop :=
  ∀ n, P3164567987724487706.a n = A143698 n

end A143698

/-! ## A143698.P17236335256931834411

`3*(A139273(n)-n)`
-/

namespace A143698.P17236335256931834411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A139273 n - (n : ℤ))

end

end A143698.P17236335256931834411

namespace A143698

/-- `3*(A139273(n)-n)` -/
def P17236335256931834411.Spec : Prop :=
  ∀ n, P17236335256931834411.a n = A143698 n

end A143698

/-! ## A143698.P15362528450398709268

`4*(A033579(n)-n)`
-/

namespace A143698.P15362528450398709268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A033579 n - (n : ℤ))

end

end A143698.P15362528450398709268

namespace A143698

/-- `4*(A033579(n)-n)` -/
def P15362528450398709268.Spec : Prop :=
  ∀ n, P15362528450398709268.a n = A143698 n

end A143698

/-! ## A143698.P15338200712932357829

`2/3*A060787(n+2)`
-/

namespace A143698.P15338200712932357829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A060787 (n + 2) : ℚ)

end

end A143698.P15338200712932357829

namespace A143698

/-- `2/3*A060787(n+2)` -/
def P15338200712932357829.Spec : Prop :=
  ∀ n, P15338200712932357829.a n = (A143698 n : ℚ)

end A143698

/-!
# A143699: a(n) = 19*a(n-1) - 41*a(n-2) + 19*a(n-3) - a(n-4).

The programs for A143699, the canonical program `A143699.P17203194959322300068` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143699 has offset 0).

The definition of A143699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*a(n-1)-41*a(n-2)+19*a(n-3)-a(n-4)` (program `A143699.P17203194959322300068`, by `A143699.P17203194959322300068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143699.P17203194959322300068

`19*a(n-1)-41*a(n-2)+19*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=19, a(3)=319`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143699

/-- `19*a(n-1)-41*a(n-2)+19*a(n-3)-a(n-4)` -/
def P17203194959322300068.Spec : Prop :=
  ∀ n, P17203194959322300068.a n = A143699 n

theorem P17203194959322300068.correct : P17203194959322300068.Spec := by
  intro n
  simp only [A143699]

end A143699

