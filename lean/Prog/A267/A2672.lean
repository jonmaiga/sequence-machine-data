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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A267200: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267200, there is no canonical definition to state claims against.
-/

/-! ## A267200.P12145194758646169648

`A267197(eq[7, A249900(n)])`
-/

namespace A267200.P12145194758646169648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267200.P12145194758646169648

/-! ## A267200.P3482232089689338585

`A267197(Δ[A143941(n+1)])`
-/

namespace A267200.P3482232089689338585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (f1 (n + 1) - f1 n).toNat

end

end A267200.P3482232089689338585

/-! ## A267200.P12115253320282543493

`A267197(A090288(n+1)+1)`
-/

namespace A267200.P12115253320282543493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A090288 (n + 1) + 1).toNat

end

end A267200.P12115253320282543493

/-! ## A267200.P4712472856577141434

`A267197(A181510(n+1)+5)`
-/

namespace A267200.P4712472856577141434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A181510 (n + 1) + 5).toNat

end

end A267200.P4712472856577141434

/-! ## A267200.P13894338572751441518

`A267197(eq[7, A286158(n+1)])`
-/

namespace A267200.P13894338572751441518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267200.P13894338572751441518

/-!
# A267201: Number of n X (n+5) arrays of permutations of n+5 copies of 0..n-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267201, there is no canonical definition to state claims against.
-/

/-! ## A267201.P2962032971222866999

`A267197(eq[13, A249900(n)])`
-/

namespace A267201.P2962032971222866999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267201.P2962032971222866999

/-! ## A267201.P9615553034498251717

`A267197(A268581(n+1)+1)`
-/

namespace A267201.P9615553034498251717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A268581 (n + 1) + 1).toNat

end

end A267201.P9615553034498251717

/-! ## A267201.P12456050703671797097

`A267197(2*A005563(n+2))`
-/

namespace A267201.P12456050703671797097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (2 * A005563 (n + 2)).toNat

end

end A267201.P12456050703671797097

/-! ## A267201.P1322040200632098803

`A267197(Δ[A131423(n+2)]-1)`
-/

namespace A267201.P1322040200632098803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (f1 (n + 1) - f1 n - 1).toNat

end

end A267201.P1322040200632098803

/-! ## A267201.P10542797241733606279

`A267197(A004277(n+2)*(n+4))`
-/

namespace A267201.P10542797241733606279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A004277 (n + 2) * (n + 4 : ℤ)).toNat

end

end A267201.P10542797241733606279

/-!
# A267202: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267202, there is no canonical definition to state claims against.
-/

/-! ## A267202.P7167375964309294517

`A267197(∑[n+3]+7)`
-/

namespace A267202.P7167375964309294517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267202.P7167375964309294517

/-! ## A267202.P10877867756102241276

`A267197(A055999(n)+10)+char[23]`
-/

namespace A267202.P10877867756102241276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267202.P10877867756102241276

/-! ## A267202.P11659548401509111136

`A007318(C(3, n))*A267197(A055999(n)+10)`
-/

namespace A267202.P11659548401509111136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A267197 (A055999 n + 10).toNat

end

end A267202.P11659548401509111136

/-! ## A267202.P5462263701903016387

`A267197(A055999(n)+10)%A000032(n+2)²`
-/

namespace A267202.P5462263701903016387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267197 (A055999 n + 10).toNat) (A000032 (n + 2) ^ 2)

end

end A267202.P5462263701903016387

/-! ## A267202.P5436941536336361786

`A267197(A055999(n)+10)^(A000040(n+1)%2)`
-/

namespace A267202.P5436941536336361786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267197 (A055999 n + 10).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A267202.P5436941536336361786

/-!
# A267203: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267203, there is no canonical definition to state claims against.
-/

/-! ## A267203.P14069981973734584217

`A267197(∑[n+4]+11)`
-/

namespace A267203.P14069981973734584217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267203.P14069981973734584217

/-! ## A267203.P9491235770644410959

`floor(atan(n))!*A267197(A167499(n+3))`
-/

namespace A267203.P9491235770644410959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊Real.arctan (n : ℝ)⌋.toNat : ℤ) * A267197 (A167499 (n + 3)).toNat

end

end A267203.P9491235770644410959

/-! ## A267203.P4343516527153177431

`A025448(n)!*A267197(A167499(n+3))`
-/

namespace A267203.P4343516527153177431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025448 n).toNat : ℤ) * A267197 (A167499 (n + 3)).toNat

end

end A267203.P4343516527153177431

/-! ## A267203.P7027128304095306269

`A267197(A167499(n+3))%A306813(n+3)`
-/

namespace A267203.P7027128304095306269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267197 (A167499 (n + 3)).toNat) (A306813 (n + 3))

end

end A267203.P7027128304095306269

/-! ## A267203.P6724236679933445532

`A267197(A167499(n+3))+A203951(2*(n+1))`
-/

namespace A267203.P6724236679933445532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A167499 (n + 3)).toNat + A203951 (2 * (n + 1))

end

end A267203.P6724236679933445532

/-!
# A267204: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267204, there is no canonical definition to state claims against.
-/

/-! ## A267204.P12758888549593193979

`A267197(A056115(n)+21)`
-/

namespace A267204.P12758888549593193979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A056115 n + 21).toNat

end

end A267204.P12758888549593193979

/-! ## A267204.P4634899807076440258

`A267197(eq[6, A256910(n)])`
-/

namespace A267204.P4634899807076440258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267204.P4634899807076440258

/-! ## A267204.P11379163995181134718

`A267197(∑[A020710(n)]+16)`
-/

namespace A267204.P11379163995181134718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A267204.P11379163995181134718

/-! ## A267204.P8176548644538604695

`A267197(A167499(n+4)+1)`
-/

namespace A267204.P8176548644538604695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A167499 (n + 4) + 1).toNat

end

end A267204.P8176548644538604695

/-! ## A267204.P9478854713431180680

`A267197(A000124(n+5)+5)`
-/

namespace A267204.P9478854713431180680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A000124 (n + 5) + 5).toNat

end

end A267204.P9478854713431180680

/-!
# A267205: Number of 7 X n arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any north, southwest or northwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267205, there is no canonical definition to state claims against.
-/

/-! ## A267205.P5559770519146295069

`A267197(A167487(n+5))`
-/

namespace A267205.P5559770519146295069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A167487 (n + 5)).toNat

end

end A267205.P5559770519146295069

/-! ## A267205.P3345309368884584285

`A267197(A000124(n+6)+6)`
-/

namespace A267205.P3345309368884584285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A000124 (n + 6) + 6).toNat

end

end A267205.P3345309368884584285

/-! ## A267205.P11024432827808394213

`A267197(A000217(n+6)+7)`
-/

namespace A267205.P11024432827808394213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A000217 (n + 6) + 7).toNat

end

end A267205.P11024432827808394213

/-! ## A267205.P14028559436412991682

`A267197(A161680(n+7)+7)`
-/

namespace A267205.P14028559436412991682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A161680 (n + 7) + 7).toNat

end

end A267205.P14028559436412991682

/-! ## A267205.P1948233576537729987

`A267197(A155212(n+2)+15)`
-/

namespace A267205.P1948233576537729987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267197 (A155212 (n + 2) + 15).toNat

end

end A267205.P1948233576537729987

/-!
# A267206: Binary representation of the n-th iteration of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267206, there is no canonical definition to state claims against.
-/

/-! ## A267206.P6779736664022673922

`A007088(A267207(n))`
-/

namespace A267206.P6779736664022673922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267207 n).toNat

end

end A267206.P6779736664022673922

/-! ## A267206.P4868270974008398162

`A185544(2*A267207(n))`
-/

namespace A267206.P4868270974008398162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267207 n).toNat

end

end A267206.P4868270974008398162

/-!
# A267207: Decimal representation of the n-th iteration of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267207, there is no canonical definition to state claims against.
-/

/-! ## A267207.P10375750185810251519

`or(A000079(n)*A282105(n), A282106(n))`
-/

namespace A267207.P10375750185810251519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A282105 n) (A282106 n)

end

end A267207.P10375750185810251519

/-!
# A267208: Middle column of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267208, the canonical program `A267208.P2281753971340839585` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267208 has offset 0).

The definition of A267208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267208.P2281753971340839585

`(n²%3)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267208

/-- `(n²%3)^n` -/
def P2281753971340839585.Spec : Prop :=
  ∀ n, (P2281753971340839585.a n : ℤ) = A267208 n

theorem P2281753971340839585.correct : P2281753971340839585.Spec := by
  intro n
  simp only [A267208]

end A267208

/-!
# A267209: Binary representation of the middle column of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267209, the canonical program `A267209.P15384435344150244872` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267209 has offset 0).

The definition of A267209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267209.P15384435344150244872

`n²%3+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267209

/-- `n²%3+10*a(n-1)` -/
def P15384435344150244872.Spec : Prop :=
  ∀ n, (P15384435344150244872.a n : ℤ) = A267209 n

theorem P15384435344150244872.correct : P15384435344150244872.Spec := by
  intro n
  simp only [A267209]

end A267209

/-! ## A267209.P4027749608556213312

`10*a(n-1)--n²%3` with `a(0)=1`
-/

namespace A267209.P4027749608556213312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - Int.tmod (-(n ^ 2 : ℤ)) 3

end

end A267209.P4027749608556213312

namespace A267209

/-- `10*a(n-1)--n²%3` -/
def P4027749608556213312.Spec : Prop :=
  ∀ n, P4027749608556213312.a n = A267209 n

end A267209

/-! ## A267209.P5696376255381228660

`10*a(n-1)+1-char[3*n]` with `a(0)=1`
-/

namespace A267209.P5696376255381228660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267209.P5696376255381228660

namespace A267209

/-- `10*a(n-1)+1-char[3*n]` -/
def P5696376255381228660.Spec : Prop :=
  ∀ n, P5696376255381228660.a n = A267209 n

end A267209

/-! ## A267209.P3859513846455898704

`A011655(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267209.P3859513846455898704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011655 n + 10 * a (n - 1)

end

end A267209.P3859513846455898704

namespace A267209

/-- `A011655(n)+10*a(n-1)` -/
def P3859513846455898704.Spec : Prop :=
  ∀ n, P3859513846455898704.a n = A267209 n

end A267209

/-! ## A267209.P16210392782534558081

`and(1, A000032(n))+10*a(n-1)` with `a(0)=1`
-/

namespace A267209.P16210392782534558081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000032 n) + 10 * a (n - 1)

end

end A267209.P16210392782534558081

namespace A267209

/-- `and(1, A000032(n))+10*a(n-1)` -/
def P16210392782534558081.Spec : Prop :=
  ∀ n, P16210392782534558081.a n = A267209 n

end A267209

/-! ## A267209.P17845268184048150570

`xor(10*a(n-1), abs(A010892(n+2)))` with `a(0)=1`
-/

namespace A267209.P17845268184048150570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) |A010892 (n + 2)|

end

end A267209.P17845268184048150570

namespace A267209

/-- `xor(10*a(n-1), abs(A010892(n+2)))` -/
def P17845268184048150570.Spec : Prop :=
  ∀ n, P17845268184048150570.a n = A267209 n

end A267209

/-! ## A267209.P13772518424244779168

`xor(10*a(n-1), Δ[A002264(2*n)])` with `a(0)=1`
-/

namespace A267209.P13772518424244779168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A267209.P13772518424244779168

namespace A267209

/-- `xor(10*a(n-1), Δ[A002264(2*n)])` -/
def P13772518424244779168.Spec : Prop :=
  ∀ n, P13772518424244779168.a n = A267209 n

end A267209

/-! ## A267209.P11797424579267543316

`or(10*a(n-1), Δ[A103221(4*n)])` with `a(0)=1`
-/

namespace A267209.P11797424579267543316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A267209.P11797424579267543316

namespace A267209

/-- `or(10*a(n-1), Δ[A103221(4*n)])` -/
def P11797424579267543316.Spec : Prop :=
  ∀ n, P11797424579267543316.a n = A267209 n

end A267209

/-! ## A267209.P13047776640037091177

`or(10*a(n-1), char[A001651(n+1)])` with `a(0)=1`
-/

namespace A267209.P13047776640037091177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A267209.P13047776640037091177

namespace A267209

/-- `or(10*a(n-1), char[A001651(n+1)])` -/
def P13047776640037091177.Spec : Prop :=
  ∀ n, (P13047776640037091177.a n : ℤ) = A267209 n

end A267209

/-!
# A267210: Decimal representation of the middle column of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267210, the canonical program `A267210.P6211933300778176822` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267210 has offset 0).

The definition of A267210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267210.P11751215997829006025

`ogf((1+x+x^2-x^3)/(1-2x-x^3+2x^4))`
-/

namespace A267210.P11751215997829006025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1] [1, -2, 0, -1, 2] n

end

end A267210.P11751215997829006025

namespace A267210

/-- `ogf((1+x+x^2-x^3)/(1-2x-x^3+2x^4))` -/
def P11751215997829006025.Spec : Prop :=
  ∀ n, P11751215997829006025.a n = A267210 n

end A267210

/-! ## A267210.P11592898650290835044

`n²%3+2*a(n-1)` with `a(0)=1`
-/

namespace A267210.P11592898650290835044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ 2 % 3 + 2 * a (n - 1)

end

end A267210.P11592898650290835044

namespace A267210

/-- `n²%3+2*a(n-1)` -/
def P11592898650290835044.Spec : Prop :=
  ∀ n, (P11592898650290835044.a n : ℤ) = A267210 n

end A267210

/-! ## A267210.P4756118686444809782

`abs(char[3*n]-2*a(n-1))+1` with `a(0)=1`
-/

namespace A267210.P4756118686444809782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 2 * a (n - 1)| + 1

end

end A267210.P4756118686444809782

namespace A267210

/-- `abs(char[3*n]-2*a(n-1))+1` -/
def P4756118686444809782.Spec : Prop :=
  ∀ n, P4756118686444809782.a n = A267210 n

end A267210

/-! ## A267210.P6211933300778176822

`2*a(n-1)+a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267210

/-- `2*a(n-1)+a(n-3)-2*a(n-4)` -/
def P6211933300778176822.Spec : Prop :=
  ∀ n, P6211933300778176822.a n = A267210 n

theorem P6211933300778176822.correct : P6211933300778176822.Spec := by
  intro n
  simp only [A267210]

end A267210

/-! ## A267210.P10922489486442250031

`A033129(n)+2^n`
-/

namespace A267210.P10922489486442250031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 n + (2 ^ n : ℤ)

end

end A267210.P10922489486442250031

namespace A267210

/-- `A033129(n)+2^n` -/
def P10922489486442250031.Spec : Prop :=
  ∀ n, P10922489486442250031.a n = A267210 n

end A267210

/-! ## A267210.P1664862306918628767

`and(1, A000032(n))+2*a(n-1)` with `a(0)=1`
-/

namespace A267210.P1664862306918628767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000032 n) + 2 * a (n - 1)

end

end A267210.P1664862306918628767

namespace A267210

/-- `and(1, A000032(n))+2*a(n-1)` -/
def P1664862306918628767.Spec : Prop :=
  ∀ n, P1664862306918628767.a n = A267210 n

end A267210

/-! ## A267210.P9258039551639444617

`and(1, A000045(n))+2*a(n-1)` with `a(0)=1`
-/

namespace A267210.P9258039551639444617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000045 n) + 2 * a (n - 1)

end

end A267210.P9258039551639444617

namespace A267210

/-- `and(1, A000045(n))+2*a(n-1)` -/
def P9258039551639444617.Spec : Prop :=
  ∀ n, P9258039551639444617.a n = A267210 n

end A267210

/-! ## A267210.P9825338564194939022

`a(n-1)+A011655(n)+a(n-1)` with `a(0)=1`
-/

namespace A267210.P9825338564194939022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A011655 n + a (n - 1))

end

end A267210.P9825338564194939022

namespace A267210

/-- `a(n-1)+A011655(n)+a(n-1)` -/
def P9825338564194939022.Spec : Prop :=
  ∀ n, P9825338564194939022.a n = A267210 n

end A267210

/-! ## A267210.P1884432284056282975

`a(n-1)+A267208(n)+a(n-1)` with `a(0)=1`
-/

namespace A267210.P1884432284056282975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A267208 n + a (n - 1))

end

end A267210.P1884432284056282975

namespace A267210

/-- `a(n-1)+A267208(n)+a(n-1)` -/
def P1884432284056282975.Spec : Prop :=
  ∀ n, P1884432284056282975.a n = A267210 n

end A267210

/-! ## A267210.P9283294884592298065

`A057744(n)+A000225(n)`
-/

namespace A267210.P9283294884592298065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 n + A000225 n

end

end A267210.P9283294884592298065

namespace A267210

/-- `A057744(n)+A000225(n)` -/
def P9283294884592298065.Spec : Prop :=
  ∀ n, P9283294884592298065.a n = A267210 n

end A267210

/-! ## A267210.P2720215811553932535

`A126646(n)-A155803(n)`
-/

namespace A267210.P2720215811553932535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A155803 n

end

end A267210.P2720215811553932535

namespace A267210

/-- `A126646(n)-A155803(n)` -/
def P2720215811553932535.Spec : Prop :=
  ∀ n, P2720215811553932535.a n = A267210 n

end A267210

/-! ## A267210.P12167918517603732261

`or(A003945(n), A033129(n))`
-/

namespace A267210.P12167918517603732261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 n) (A033129 n)

end

end A267210.P12167918517603732261

namespace A267210

/-- `or(A003945(n), A033129(n))` -/
def P12167918517603732261.Spec : Prop :=
  ∀ n, P12167918517603732261.a n = A267210 n

end A267210

/-! ## A267210.P11101560324746840222

`or(A033129(n), A290859(n))`
-/

namespace A267210.P11101560324746840222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033129 n) (A290859 n)

end

end A267210.P11101560324746840222

namespace A267210

/-- `or(A033129(n), A290859(n))` -/
def P11101560324746840222.Spec : Prop :=
  ∀ n, P11101560324746840222.a n = A267210 n

end A267210

/-! ## A267210.P9001149182954384560

`xor(A000079(n), A033129(n))`
-/

namespace A267210.P9001149182954384560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A033129 n)

end

end A267210.P9001149182954384560

namespace A267210

/-- `xor(A000079(n), A033129(n))` -/
def P9001149182954384560.Spec : Prop :=
  ∀ n, P9001149182954384560.a n = A267210 n

end A267210

/-! ## A267210.P12884373482474197789

`A000225(n)+A033129(n)+1`
-/

namespace A267210.P12884373482474197789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A033129 n + 1)

end

end A267210.P12884373482474197789

namespace A267210

/-- `A000225(n)+A033129(n)+1` -/
def P12884373482474197789.Spec : Prop :=
  ∀ n, P12884373482474197789.a n = A267210 n

end A267210

/-! ## A267210.P6319148041133979479

`A294627(n)+A033120(n+1)`
-/

namespace A267210.P6319148041133979479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n + A033120 (n + 1)

end

end A267210.P6319148041133979479

namespace A267210

/-- `A294627(n)+A033120(n+1)` -/
def P6319148041133979479.Spec : Prop :=
  ∀ n, P6319148041133979479.a n = A267210 n

end A267210

/-! ## A267210.P5775802724575482021

`A000079(n)+A057744(n)-1`
-/

namespace A267210.P5775802724575482021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A057744 n - 1)

end

end A267210.P5775802724575482021

namespace A267210

/-- `A000079(n)+A057744(n)-1` -/
def P5775802724575482021.Spec : Prop :=
  ∀ n, P5775802724575482021.a n = A267210 n

end A267210

/-! ## A267210.P1601363623129762405

`A000225(n+1)-A155803(n)`
-/

namespace A267210.P1601363623129762405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A155803 n

end

end A267210.P1601363623129762405

namespace A267210

/-- `A000225(n+1)-A155803(n)` -/
def P1601363623129762405.Spec : Prop :=
  ∀ n, P1601363623129762405.a n = A267210 n

end A267210

/-! ## A267210.P16896407529622009538

`xor(A000225(n), A033138(n+1))`
-/

namespace A267210.P16896407529622009538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A033138 (n + 1))

end

end A267210.P16896407529622009538

namespace A267210

/-- `xor(A000225(n), A033138(n+1))` -/
def P16896407529622009538.Spec : Prop :=
  ∀ n, P16896407529622009538.a n = A267210 n

end A267210

/-! ## A267210.P4969085972702643631

`∑[∑[A011782(n)]]-A155803(n)`
-/

namespace A267210.P4969085972702643631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A155803 n

end

end A267210.P4969085972702643631

namespace A267210

/-- `∑[∑[A011782(n)]]-A155803(n)` -/
def P4969085972702643631.Spec : Prop :=
  ∀ n, P4969085972702643631.a n = A267210 n

end A267210

/-!
# A267211: Number of ON (black) cells in the n-th iteration of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267211, the canonical program `A267211.P11283807270020127973` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267211 has offset 0).

The definition of A267211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267211.P11283807270020127973

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=2, a(4)=7, a(5)=7, a(6)=10, a(7)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267211

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P11283807270020127973.Spec : Prop :=
  ∀ n, P11283807270020127973.a n = A267211 n

theorem P11283807270020127973.correct : P11283807270020127973.Spec := by
  intro n
  simp only [A267211]

end A267211

/-! ## A267211.P12325479921919876848

`Δ[n²]-A267213(n)`
-/

namespace A267211.P12325479921919876848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267213 n

end

end A267211.P12325479921919876848

namespace A267211

/-- `Δ[n²]-A267213(n)` -/
def P12325479921919876848.Spec : Prop :=
  ∀ n, P12325479921919876848.a n = A267211 n

end A267211

/-! ## A267211.P1072186173672356236

`n+1-A267213(n%(n+1))+n`
-/

namespace A267211.P1072186173672356236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267213 (n % (n + 1)) + (n : ℤ)

end

end A267211.P1072186173672356236

namespace A267211

/-- `n+1-A267213(n%(n+1))+n` -/
def P1072186173672356236.Spec : Prop :=
  ∀ n, P1072186173672356236.a n = A267211 n

end A267211

/-! ## A267211.P7110197679853928555

`A000290(n+1)-(A267213(n)+A000290(n))`
-/

namespace A267211.P7110197679853928555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A267213 n + A000290 n)

end

end A267211.P7110197679853928555

namespace A267211

/-- `A000290(n+1)-(A267213(n)+A000290(n))` -/
def P7110197679853928555.Spec : Prop :=
  ∀ n, P7110197679853928555.a n = A267211 n

end A267211

/-! ## A267211.P14291975525925296981

`2*n+1-Δ[A267214(A000007(n)-1+n)]`
-/

namespace A267211.P14291975525925296981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267214 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A267211.P14291975525925296981

namespace A267211

/-- `2*n+1-Δ[A267214(A000007(n)-1+n)]` -/
def P14291975525925296981.Spec : Prop :=
  ∀ n, P14291975525925296981.a n = A267211 n

end A267211

/-! ## A267211.P13215820112351058481

`A005408(n)-Δ[A267214(n-(1-A000007(n)))]`
-/

namespace A267211.P13215820112351058481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267214 ((n : ℤ) - (1 - A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (f1 (n + 1) - f1 n)

end

end A267211.P13215820112351058481

namespace A267211

/-- `A005408(n)-Δ[A267214(n-(1-A000007(n)))]` -/
def P13215820112351058481.Spec : Prop :=
  ∀ n, P13215820112351058481.a n = A267211 n

end A267211

/-! ## A267211.P3367975601798935549

`∑{digits}[A267206(n), #]`
-/

namespace A267211.P3367975601798935549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A267211.P3367975601798935549

namespace A267211

/-- `∑{digits}[A267206(n), #]` -/
def P3367975601798935549.Spec : Prop :=
  ∀ n, (P3367975601798935549.a n : ℤ) = A267211 n

end A267211

/-!
# A267212: Total number of ON (black) cells after n iterations of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267212, the canonical program `A267212.P5567742225151797128` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267212 has offset 0).

The definition of A267212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267212.P5567742225151797128

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=9, a(4)=16, a(5)=23, a(6)=33, a(7)=38`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267212

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P5567742225151797128.Spec : Prop :=
  ∀ n, P5567742225151797128.a n = A267212 n

theorem P5567742225151797128.correct : P5567742225151797128.Spec := by
  intro n
  simp only [A267212]

end A267212

/-! ## A267212.P18084819597987666010

`∑[A267211(n)]`
-/

namespace A267212.P18084819597987666010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267212.P18084819597987666010

namespace A267212

/-- `∑[A267211(n)]` -/
def P18084819597987666010.Spec : Prop :=
  ∀ n, P18084819597987666010.a n = A267212 n

end A267212

/-! ## A267212.P18143568830665848434

`(n+1)²-A267214(n)`
-/

namespace A267212.P18143568830665848434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267214 n

end

end A267212.P18143568830665848434

namespace A267212

/-- `(n+1)²-A267214(n)` -/
def P18143568830665848434.Spec : Prop :=
  ∀ n, P18143568830665848434.a n = A267212 n

end A267212

/-! ## A267212.P8350469392886308127

`∑[Δ[n²]-A267213(n)]`
-/

namespace A267212.P8350469392886308127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267212.P8350469392886308127

namespace A267212

/-- `∑[Δ[n²]-A267213(n)]` -/
def P8350469392886308127.Spec : Prop :=
  ∀ n, P8350469392886308127.a n = A267212 n

end A267212

/-! ## A267212.P3314899469303193365

`A267211(n%A151800(n))+a(n-1)` with `a(0)=1`
-/

namespace A267212.P3314899469303193365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267211 (Int.tmod (n : ℤ) (A151800 n)).toNat + a (n - 1)

end

end A267212.P3314899469303193365

namespace A267212

/-- `A267211(n%A151800(n))+a(n-1)` -/
def P3314899469303193365.Spec : Prop :=
  ∀ n, P3314899469303193365.a n = A267212 n

end A267212

/-! ## A267212.P16669887606614275252

`∑[∑{digits}[A267206(n), #]]`
-/

namespace A267212.P16669887606614275252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267212.P16669887606614275252

namespace A267212

/-- `∑[∑{digits}[A267206(n), #]]` -/
def P16669887606614275252.Spec : Prop :=
  ∀ n, (P16669887606614275252.a n : ℤ) = A267212 n

end A267212

/-!
# A267213: Number of OFF (white) cells in the n-th iteration of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267213, the canonical program `A267213.P2053160139325835647` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267213 has offset 0).

The definition of A267213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267213.P2053160139325835647

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=5, a(4)=2, a(5)=4, a(6)=3, a(7)=10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267213

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P2053160139325835647.Spec : Prop :=
  ∀ n, P2053160139325835647.a n = A267213 n

theorem P2053160139325835647.correct : P2053160139325835647.Spec := by
  intro n
  simp only [A267213]

end A267213

/-! ## A267213.P1913341187532772235

`Δ[n²]-A267211(n)`
-/

namespace A267213.P1913341187532772235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267211 n

end

end A267213.P1913341187532772235

namespace A267213

/-- `Δ[n²]-A267211(n)` -/
def P1913341187532772235.Spec : Prop :=
  ∀ n, P1913341187532772235.a n = A267213 n

end A267213

/-! ## A267213.P6532600244887485235

`A000027(n+1)+n-A267211(n)`
-/

namespace A267213.P6532600244887485235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A267211 n)

end

end A267213.P6532600244887485235

namespace A267213

/-- `A000027(n+1)+n-A267211(n)` -/
def P6532600244887485235.Spec : Prop :=
  ∀ n, P6532600244887485235.a n = A267213 n

end A267213

/-! ## A267213.P8290604024253839739

`n+1-A267211(n%A151800(n))+n`
-/

namespace A267213.P8290604024253839739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267211 (Int.tmod (n : ℤ) (A151800 n)).toNat + (n : ℤ)

end

end A267213.P8290604024253839739

namespace A267213

/-- `n+1-A267211(n%A151800(n))+n` -/
def P8290604024253839739.Spec : Prop :=
  ∀ n, P8290604024253839739.a n = A267213 n

end A267213

/-! ## A267213.P11771617456025309022

`Δ[A267214(A000007(n)-1+n)]`
-/

namespace A267213.P11771617456025309022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267214 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267213.P11771617456025309022

namespace A267213

/-- `Δ[A267214(A000007(n)-1+n)]` -/
def P11771617456025309022.Spec : Prop :=
  ∀ n, P11771617456025309022.a n = A267213 n

end A267213

/-! ## A267213.P5684545846542936479

`Δ[A267214(n-(1-A000007(n)))]`
-/

namespace A267213.P5684545846542936479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267214 ((n : ℤ) - (1 - A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267213.P5684545846542936479

namespace A267213

/-- `Δ[A267214(n-(1-A000007(n)))]` -/
def P5684545846542936479.Spec : Prop :=
  ∀ n, P5684545846542936479.a n = A267213 n

end A267213

/-! ## A267213.P14994197834500478626

`A244321(A244322(n+1))+n-A267211(n)`
-/

namespace A267213.P14994197834500478626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244321 (A244322 (n + 1)).toNat + ((n : ℤ) - A267211 n)

end

end A267213.P14994197834500478626

namespace A267213

/-- `A244321(A244322(n+1))+n-A267211(n)` -/
def P14994197834500478626.Spec : Prop :=
  ∀ n, P14994197834500478626.a n = A267213 n

end A267213

/-! ## A267213.P10373706664489511721

`A004736(∑[n]+1)+n-A267211(n)`
-/

namespace A267213.P10373706664489511721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((n : ℤ) - A267211 n)

end

end A267213.P10373706664489511721

namespace A267213

/-- `A004736(∑[n]+1)+n-A267211(n)` -/
def P10373706664489511721.Spec : Prop :=
  ∀ n, P10373706664489511721.a n = A267213 n

end A267213

/-!
# A267214: Total number of OFF (white) cells after n iterations of the "Rule 109" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267214, the canonical program `A267214.P18272378131960014545` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267214 has offset 0).

The definition of A267214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267214.P18272378131960014545

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=7, a(4)=9, a(5)=13, a(6)=16, a(7)=26`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267214

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P18272378131960014545.Spec : Prop :=
  ∀ n, P18272378131960014545.a n = A267214 n

theorem P18272378131960014545.correct : P18272378131960014545.Spec := by
  intro n
  simp only [A267214]

end A267214

/-! ## A267214.P16925127444290568404

`∑[A267213(n)]`
-/

namespace A267214.P16925127444290568404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267214.P16925127444290568404

namespace A267214

/-- `∑[A267213(n)]` -/
def P16925127444290568404.Spec : Prop :=
  ∀ n, P16925127444290568404.a n = A267214 n

end A267214

/-! ## A267214.P17768858314942897157

`(n+1)²-A267212(n)`
-/

namespace A267214.P17768858314942897157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267212 n

end

end A267214.P17768858314942897157

namespace A267214

/-- `(n+1)²-A267212(n)` -/
def P17768858314942897157.Spec : Prop :=
  ∀ n, P17768858314942897157.a n = A267214 n

end A267214

/-! ## A267214.P9062331958217676042

`∑[Δ[n²]-A267211(n)]`
-/

namespace A267214.P9062331958217676042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267214.P9062331958217676042

namespace A267214

/-- `∑[Δ[n²]-A267211(n)]` -/
def P9062331958217676042.Spec : Prop :=
  ∀ n, P9062331958217676042.a n = A267214 n

end A267214

/-! ## A267214.P4781115607031341712

`A000027(n+1)²-∑[A267211(n)]`
-/

namespace A267214.P4781115607031341712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267214.P4781115607031341712

namespace A267214

/-- `A000027(n+1)²-∑[A267211(n)]` -/
def P4781115607031341712.Spec : Prop :=
  ∀ n, P4781115607031341712.a n = A267214 n

end A267214

/-! ## A267214.P1899155286249548430

`A000217(n+1)+∑[n-A267211(n)]`
-/

namespace A267214.P1899155286249548430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A267211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267214.P1899155286249548430

namespace A267214

/-- `A000217(n+1)+∑[n-A267211(n)]` -/
def P1899155286249548430.Spec : Prop :=
  ∀ n, P1899155286249548430.a n = A267214 n

end A267214

/-!
# A267215: Integers k such that k! is the sum of 3 squares.

The programs for A267215, there is no canonical definition to state claims against.
-/

/-! ## A267215.P17580873675548905305

`comp[A084953(n+1)]`
-/

namespace A267215.P17580873675548905305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A267215.P17580873675548905305

/-! ## A267215.P9449063955235052656

`lt[char[A084953(A344180(n))], 1]`
-/

namespace A267215.P9449063955235052656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084953 (A344180 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A267215.P9449063955235052656

/-! ## A267215.P11466623640011346452

`lt[char[A084953(n+1)], A353801(n+1)]`
-/

namespace A267215.P11466623640011346452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084953 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A267215.P11466623640011346452

/-! ## A267215.P13267241754408548019

`lt[char[A084953(n+1)], A296306(2*n+1)]`
-/

namespace A267215.P13267241754408548019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084953 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296306 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A267215.P13267241754408548019

/-! ## A267215.P9430604027953702134

`lt[A151949(A005117(n+1)), A119679(n+1)]`
-/

namespace A267215.P9430604027953702134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A005117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267215.P9430604027953702134

/-!
# A267216: Numbers D such that D^2 = A^2 + B^3 + C^4 has more than two solutions in positive integers (A, B, C).

The programs for A267216, there is no canonical definition to state claims against.
-/

/-! ## A267216.P17101030723614732192

`lt[2, A180243(n+1)]+1`
-/

namespace A267216.P17101030723614732192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A267216.P17101030723614732192

/-! ## A267216.P8498666929248691572

`lt[2, A180243(A028310(n))]`
-/

namespace A267216.P8498666929248691572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180243 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267216.P8498666929248691572

/-! ## A267216.P6358044853723295128

`eq[1, A000009(a(A180243(n)))]` with `a(0)=3, a(1)=3, a(2)=3`
-/

namespace A267216.P6358044853723295128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3] fun n f2 =>
  A000009 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267216.P6358044853723295128

/-! ## A267216.P2898996264277515028

`eq[1, A000010(a(A180243(n)))]` with `a(0)=3, a(1)=3, a(2)=3`
-/

namespace A267216.P2898996264277515028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3] fun n f2 =>
  A000010 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267216.P2898996264277515028

/-! ## A267216.P15545107891903721592

`eq[1, A000045(a(A180243(n)))]` with `a(0)=3, a(1)=3, a(2)=3`
-/

namespace A267216.P15545107891903721592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3] fun n f2 =>
  A000045 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267216.P15545107891903721592

/-!
# A267217: 10-gonal (or decagonal) numbers with prime indices.

The programs for A267217, the canonical program `A267217.P10913398264968307580` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267217 has offset 1).

The definition of A267217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267217.P10913398264968307580

`A001107(A000040(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267217

/-- `A001107(A000040(n+1))` -/
def P10913398264968307580.Spec : Prop :=
  ∀ n, P10913398264968307580.a n = A267217 (n + 1)

theorem P10913398264968307580.correct : P10913398264968307580.Spec := by
  intro n
  simp only [A267217, Nat.add_sub_cancel]

end A267217

/-! ## A267217.P4901711814335525376

`A267144(n+1)+A036689(n+1)`
-/

namespace A267217.P4901711814335525376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267144 (n + 1) + A036689 (n + 1)

end

end A267217.P4901711814335525376

namespace A267217

/-- `A267144(n+1)+A036689(n+1)` -/
def P4901711814335525376.Spec : Prop :=
  ∀ n, P4901711814335525376.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P8143980076194001259

`A069262(n+1)-A001748(n+1)`
-/

namespace A267217.P8143980076194001259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069262 (n + 1) - A001748 (n + 1)

end

end A267217.P8143980076194001259

namespace A267217

/-- `A069262(n+1)-A001748(n+1)` -/
def P8143980076194001259.Spec : Prop :=
  ∀ n, P8143980076194001259.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P17323109983301260572

`A133064(n+1)%A181149(n+1)`
-/

namespace A267217.P17323109983301260572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133064 (n + 1)) (A181149 (n + 1))

end

end A267217.P17323109983301260572

namespace A267217

/-- `A133064(n+1)%A181149(n+1)` -/
def P17323109983301260572.Spec : Prop :=
  ∀ n, P17323109983301260572.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P14221869004474046711

`A100484(n+1)²-A001748(n+1)`
-/

namespace A267217.P14221869004474046711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) ^ 2 - A001748 (n + 1)

end

end A267217.P14221869004474046711

namespace A267217

/-- `A100484(n+1)²-A001748(n+1)` -/
def P14221869004474046711.Spec : Prop :=
  ∀ n, P14221869004474046711.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P3166162587859907764

`A117961(n+1)+2*A036689(n+1)`
-/

namespace A267217.P3166162587859907764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) + 2 * A036689 (n + 1)

end

end A267217.P3166162587859907764

namespace A267217

/-- `A117961(n+1)+2*A036689(n+1)` -/
def P3166162587859907764.Spec : Prop :=
  ∀ n, P3166162587859907764.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P9781319300087562108

`2*A117961(n+1)-A000040(n+1)`
-/

namespace A267217.P9781319300087562108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117961 (n + 1) - A000040 (n + 1)

end

end A267217.P9781319300087562108

namespace A267217

/-- `2*A117961(n+1)-A000040(n+1)` -/
def P9781319300087562108.Spec : Prop :=
  ∀ n, P9781319300087562108.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P13008655928989332823

`2*A267144(n+1)-A117961(n+1)`
-/

namespace A267217.P13008655928989332823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267144 (n + 1) - A117961 (n + 1)

end

end A267217.P13008655928989332823

namespace A267217

/-- `2*A267144(n+1)-A117961(n+1)` -/
def P13008655928989332823.Spec : Prop :=
  ∀ n, P13008655928989332823.a n = A267217 (n + 1)

theorem P13008655928989332823.correct : P13008655928989332823.Spec := by
  intro n
  simp only [A267217, Nat.add_sub_cancel, A267217.P13008655928989332823.a, A267217.P10913398264968307580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001107, A001107.P15766833630772781234.a, A117961, A117961.P13445040666802526157.a, A267144, A267144.P16510657683815295351.a, A000384, A000384.P5392390561999168282.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267217

/-! ## A267217.P15543986824180023343

`A006093(n+1)+(A131426(n+1)+2)²`
-/

namespace A267217.P15543986824180023343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A131426 (n + 1) + 2) ^ 2

end

end A267217.P15543986824180023343

namespace A267217

/-- `A006093(n+1)+(A131426(n+1)+2)²` -/
def P15543986824180023343.Spec : Prop :=
  ∀ n, P15543986824180023343.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P8639758564621703557

`A006093(n+1)+(2-A072055(n+1))²`
-/

namespace A267217.P8639758564621703557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 - A072055 (n + 1)) ^ 2

end

end A267217.P8639758564621703557

namespace A267217

/-- `A006093(n+1)+(2-A072055(n+1))²` -/
def P8639758564621703557.Spec : Prop :=
  ∀ n, P8639758564621703557.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P16840701819322937573

`A000040(n+1)²+2*A179545(n+1)`
-/

namespace A267217.P16840701819322937573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + 2 * A179545 (n + 1)

end

end A267217.P16840701819322937573

namespace A267217

/-- `A000040(n+1)²+2*A179545(n+1)` -/
def P16840701819322937573.Spec : Prop :=
  ∀ n, P16840701819322937573.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P14042983153899344787

`(2*A000040(n+1))²-A001748(n+1)`
-/

namespace A267217.P14042983153899344787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000040 (n + 1)) ^ 2 - A001748 (n + 1)

end

end A267217.P14042983153899344787

namespace A267217

/-- `(2*A000040(n+1))²-A001748(n+1)` -/
def P14042983153899344787.Spec : Prop :=
  ∀ n, P14042983153899344787.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P17873590419234045163

`(A001749(n+1)/2)²-A001748(n+1)`
-/

namespace A267217.P17873590419234045163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001749 (n + 1) : ℚ) / 2) ^ 2 - (A001748 (n + 1) : ℚ)

end

end A267217.P17873590419234045163

namespace A267217

/-- `(A001749(n+1)/2)²-A001748(n+1)` -/
def P17873590419234045163.Spec : Prop :=
  ∀ n, P17873590419234045163.a n = (A267217 (n + 1) : ℚ)

end A267217

/-! ## A267217.P5126270673250785219

`A001248(n+1)+A267144(n+1)-A000040(n+1)`
-/

namespace A267217.P5126270673250785219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A267144 (n + 1) - A000040 (n + 1))

end

end A267217.P5126270673250785219

namespace A267217

/-- `A001248(n+1)+A267144(n+1)-A000040(n+1)` -/
def P5126270673250785219.Spec : Prop :=
  ∀ n, P5126270673250785219.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P17407370101000866011

`A117961(n+1)+A267144(n+1)-A001248(n+1)`
-/

namespace A267217.P17407370101000866011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) + (A267144 (n + 1) - A001248 (n + 1))

end

end A267217.P17407370101000866011

namespace A267217

/-- `A117961(n+1)+A267144(n+1)-A001248(n+1)` -/
def P17407370101000866011.Spec : Prop :=
  ∀ n, P17407370101000866011.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P3800571258439725128

`A116995(n+1)+A267144(n+1)-A034953(n+1)`
-/

namespace A267217.P3800571258439725128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116995 (n + 1) + (A267144 (n + 1) - A034953 (n + 1))

end

end A267217.P3800571258439725128

namespace A267217

/-- `A116995(n+1)+A267144(n+1)-A034953(n+1)` -/
def P3800571258439725128.Spec : Prop :=
  ∀ n, P3800571258439725128.a n = A267217 (n + 1)

theorem P3800571258439725128.correct : P3800571258439725128.Spec := by
  intro n
  simp only [A267217, Nat.add_sub_cancel, A267217.P3800571258439725128.a, A267217.P10913398264968307580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001107, A001107.P15766833630772781234.a, A034953, A034953.P12568728140146877898.a, A116995, A116995.P12832703324765891542.a, A267144, A267144.P16510657683815295351.a, A000217, A000217.P10269402890581615239.a, A000326, A000326.P15785277619453972366.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267217

/-! ## A267217.P12236440695119889238

`A006093(n+1)+(A006093(n+1)+A000040(n+1))²`
-/

namespace A267217.P12236440695119889238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A006093 (n + 1) + A000040 (n + 1)) ^ 2

end

end A267217.P12236440695119889238

namespace A267217

/-- `A006093(n+1)+(A006093(n+1)+A000040(n+1))²` -/
def P12236440695119889238.Spec : Prop :=
  ∀ n, P12236440695119889238.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P7123722551626247228

`A001747(n+2)²-A112773(n+2)`
-/

namespace A267217.P7123722551626247228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) ^ 2 - A112773 (n + 2)

end

end A267217.P7123722551626247228

namespace A267217

/-- `A001747(n+2)²-A112773(n+2)` -/
def P7123722551626247228.Spec : Prop :=
  ∀ n, P7123722551626247228.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P17260974879747019910

`A001749(n+1)*A008578(n+2)-A001748(n+1)`
-/

namespace A267217.P17260974879747019910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A008578 (n + 2) - A001748 (n + 1)

end

end A267217.P17260974879747019910

namespace A267217

/-- `A001749(n+1)*A008578(n+2)-A001748(n+1)` -/
def P17260974879747019910.Spec : Prop :=
  ∀ n, P17260974879747019910.a n = A267217 (n + 1)

end A267217

/-! ## A267217.P15190392557542087368

`A000040(n+1)*A001749(n+1)-A112773(n+2)`
-/

namespace A267217.P15190392557542087368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001749 (n + 1) - A112773 (n + 2)

end

end A267217.P15190392557542087368

namespace A267217

/-- `A000040(n+1)*A001749(n+1)-A112773(n+2)` -/
def P15190392557542087368.Spec : Prop :=
  ∀ n, P15190392557542087368.a n = A267217 (n + 1)

end A267217

/-!
# A267218: a(n) is the a(n-1)-st a(n-2)-dimensional orthoplex number, starting with the terms 1, 2.

The programs for A267218, there is no canonical definition to state claims against.
-/

/-! ## A267218.P4791592398145715129

`∑[A328533(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A267218.P4791592398145715129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f1 =>
  A328533 (f1 (n - 1) + f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267218.P4791592398145715129

/-!
# A267219: Expansion of exp( Sum_{n >= 1} A002895(n)*x^n/n ).

The programs for A267219, there is no canonical definition to state claims against.
-/

/-! ## A267219.P6291817450617776464

`A008620((n+2)!*∑[∑[1/(n+2)]])+n`
-/

namespace A267219.P6291817450617776464
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway ((Nat.factorial (n + 2) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat + (n : ℤ)

end

end A267219.P6291817450617776464

/-!
# A267221: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its west, northeast or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A267221, there is no canonical definition to state claims against.
-/

/-! ## A267221.P1110142303774252119

`A267222(∑[n+2])`
-/

namespace A267221.P1110142303774252119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267221.P1110142303774252119

/-! ## A267221.P3288055855917149568

`A015426(n)*A267222(A000096(n+1))`
-/

namespace A267221.P3288055855917149568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015426 n * A267222 (A000096 (n + 1)).toNat

end

end A267221.P3288055855917149568

/-! ## A267221.P14228444275254563124

`A267222(A167614(n+1)-4)-A160086(n)`
-/

namespace A267221.P14228444275254563124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (A167614 (n + 1) - 4).toNat - A160086 n

end

end A267221.P14228444275254563124

/-! ## A267221.P8580129554869296633

`A267222(A000096(n+1))+A015404(3*n+4)`
-/

namespace A267221.P8580129554869296633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (A000096 (n + 1)).toNat + A015404 (3 * n + 4)

end

end A267221.P8580129554869296633

/-!
# A267223: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its west, northeast or southeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A267223, there is no canonical definition to state claims against.
-/

/-! ## A267223.P922724844552694187

`A267222(∑[n+2]+4)`
-/

namespace A267223.P922724844552694187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267223.P922724844552694187

/-! ## A267223.P11392485540676203674

`and(-1, A267222(A167614(n+1)))`
-/

namespace A267223.P11392485540676203674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A267222 (A167614 (n + 1)).toNat)

end

end A267223.P11392485540676203674

/-! ## A267223.P4665690884029088552

`A267222(A167614(n+1))+A025443(n)`
-/

namespace A267223.P4665690884029088552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (A167614 (n + 1)).toNat + A025443 n

end

end A267223.P4665690884029088552

/-! ## A267223.P11333806078670235171

`A267222(A167614(n+1))+A025466(n)`
-/

namespace A267223.P11333806078670235171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (A167614 (n + 1)).toNat + A025466 n

end

end A267223.P11333806078670235171

/-!
# A267224: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its west, northeast or southeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A267224, there is no canonical definition to state claims against.
-/

/-! ## A267224.P18195238054875557674

`A267222(A141214(n)+7)`
-/

namespace A267224.P18195238054875557674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (A141214 n + 7).toNat

end

end A267224.P18195238054875557674

/-! ## A267224.P4370271004047297404

`A267222(A052905(n)+9)`
-/

namespace A267224.P4370271004047297404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (A052905 n + 9).toNat

end

end A267224.P4370271004047297404

/-! ## A267224.P2708524580303356034

`A267222(A055999(n)+10)`
-/

namespace A267224.P2708524580303356034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267222 (A055999 n + 10).toNat

end

end A267224.P2708524580303356034

/-!
# A267225: Number of length-n 0..n arrays with no following elements greater than or equal to the first repeated value.

The programs for A267225, there is no canonical definition to state claims against.
-/

/-! ## A267225.P11691747189921824885

`A267232((n+1)²+n²)`
-/

namespace A267225.P11691747189921824885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 ((n + 1) ^ 2 + n ^ 2)

end

end A267225.P11691747189921824885

/-! ## A267225.P13162558558256690713

`record[gcd(A114327(n), A267232(n+1))]`
-/

namespace A267225.P13162558558256690713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A267232 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267225.P13162558558256690713

/-! ## A267225.P4068932585838095241

`A267232(A001844(n))+A008683(4*(n+1))`
-/

namespace A267225.P4068932585838095241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A267225.P4068932585838095241

/-! ## A267225.P6936725112815823603

`A267232(A001844(n))+val(A006530(n+1), 4)`
-/

namespace A267225.P6936725112815823603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A001844 n).toNat + (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 4 : ℤ)

end

end A267225.P6936725112815823603

/-! ## A267225.P1865453923515747509

`A014963(10*A000040(n+1))*A267232(A001844(n))`
-/

namespace A267225.P1865453923515747509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * A000040 (n + 1)).toNat * A267232 (A001844 n).toNat

end

end A267225.P1865453923515747509

/-!
# A267226: Number of length-n 0..2 arrays with no following elements greater than or equal to the first repeated value.

The programs for A267226, the canonical program `A267226.P11849902975923826706` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267226 has offset 1).

The definition of A267226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267226.P18270701815590286394

`∑[ogf((3-6x+2x^3)/(1-4x+4x^2))]`
-/

namespace A267226.P18270701815590286394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 0, 2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267226.P18270701815590286394

namespace A267226

/-- `∑[ogf((3-6x+2x^3)/(1-4x+4x^2))]` -/
def P18270701815590286394.Spec : Prop :=
  ∀ n, P18270701815590286394.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P4651768662236629086

`2^(n-1)+2*a(n-1)+1` with `a(0)=3, a(1)=9`
-/

namespace A267226.P4651768662236629086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 9] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2 * a (n - 1) + 1

end

end A267226.P4651768662236629086

namespace A267226

/-- `2^(n-1)+2*a(n-1)+1` -/
def P4651768662236629086.Spec : Prop :=
  ∀ n, P4651768662236629086.a n = (A267226 (n + 1) : ℚ)

end A267226

/-! ## A267226.P11849902975923826706

`2*A111297(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267226

/-- `2*A111297(n+1)-1` -/
def P11849902975923826706.Spec : Prop :=
  ∀ n, P11849902975923826706.a n = A267226 (n + 1)

theorem P11849902975923826706.correct : P11849902975923826706.Spec := by
  intro n
  simp only [A267226, Nat.add_sub_cancel]

end A267226

/-! ## A267226.P3586799886455265831

`2*Δ[A109975(n+1)]-1`
-/

namespace A267226.P3586799886455265831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A267226.P3586799886455265831

namespace A267226

/-- `2*Δ[A109975(n+1)]-1` -/
def P3586799886455265831.Spec : Prop :=
  ∀ n, P3586799886455265831.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P15187009290702378004

`A047861(n)+floor(2^(n-1))+2`
-/

namespace A267226.P15187009290702378004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047861 n + (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2)

end

end A267226.P15187009290702378004

namespace A267226

/-- `A047861(n)+floor(2^(n-1))+2` -/
def P15187009290702378004.Spec : Prop :=
  ∀ n, P15187009290702378004.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P14139133419188319696

`A056469(n)+A047861(n)`
-/

namespace A267226.P14139133419188319696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n + A047861 n

end

end A267226.P14139133419188319696

namespace A267226

/-- `A056469(n)+A047861(n)` -/
def P14139133419188319696.Spec : Prop :=
  ∀ n, P14139133419188319696.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P10456171956116402800

`A103204(n+1)+A047860(n)`
-/

namespace A267226.P10456171956116402800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) + A047860 n

end

end A267226.P10456171956116402800

namespace A267226

/-- `A103204(n+1)+A047860(n)` -/
def P10456171956116402800.Spec : Prop :=
  ∀ n, P10456171956116402800.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P16742902432568612499

`A055010(n)+A045891(n+2)`
-/

namespace A267226.P16742902432568612499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + A045891 (n + 2)

end

end A267226.P16742902432568612499

namespace A267226

/-- `A055010(n)+A045891(n+2)` -/
def P16742902432568612499.Spec : Prop :=
  ∀ n, P16742902432568612499.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P8426268644168054527

`A047862(n)+3-A011782(n)`
-/

namespace A267226.P8426268644168054527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047862 n + (3 - A011782 n)

end

end A267226.P8426268644168054527

namespace A267226

/-- `A047862(n)+3-A011782(n)` -/
def P8426268644168054527.Spec : Prop :=
  ∀ n, P8426268644168054527.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P8925140829356546847

`∑[A000079(n)+2*A109975(n)]`
-/

namespace A267226.P8925140829356546847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A109975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267226.P8925140829356546847

namespace A267226

/-- `∑[A000079(n)+2*A109975(n)]` -/
def P8925140829356546847.Spec : Prop :=
  ∀ n, P8925140829356546847.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P15072733683797496141

`A011782(n+1)+A129955(n+1)-1`
-/

namespace A267226.P15072733683797496141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A129955 (n + 1) - 1)

end

end A267226.P15072733683797496141

namespace A267226

/-- `A011782(n+1)+A129955(n+1)-1` -/
def P15072733683797496141.Spec : Prop :=
  ∀ n, P15072733683797496141.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P16812216401955012540

`A052955(2*n)+2*A045891(n+1)`
-/

namespace A267226.P16812216401955012540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n) + 2 * A045891 (n + 1)

end

end A267226.P16812216401955012540

namespace A267226

/-- `A052955(2*n)+2*A045891(n+1)` -/
def P16812216401955012540.Spec : Prop :=
  ∀ n, P16812216401955012540.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P4723019382262086750

`A052996(n+1)+n*A166444(n+1)`
-/

namespace A267226.P4723019382262086750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (n + 1) + (n : ℤ) * A166444 (n + 1)

end

end A267226.P4723019382262086750

namespace A267226

/-- `A052996(n+1)+n*A166444(n+1)` -/
def P4723019382262086750.Spec : Prop :=
  ∀ n, P4723019382262086750.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P13568700308321165609

`A000225(n+1)+A131056(n+1)+A000225(n+1)`
-/

namespace A267226.P13568700308321165609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A131056 (n + 1) + A000225 (n + 1))

end

end A267226.P13568700308321165609

namespace A267226

/-- `A000225(n+1)+A131056(n+1)+A000225(n+1)` -/
def P13568700308321165609.Spec : Prop :=
  ∀ n, P13568700308321165609.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P16163739502356552935

`ceil(A047861(n+1)/2)`
-/

namespace A267226.P16163739502356552935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047861 (n + 1) : ℚ) / 2⌉

end

end A267226.P16163739502356552935

namespace A267226

/-- `ceil(A047861(n+1)/2)` -/
def P16163739502356552935.Spec : Prop :=
  ∀ n, P16163739502356552935.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P1809924585862061308

`A052549(n)+Δ[A001792(n)]`
-/

namespace A267226.P1809924585862061308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n + (f1 (n + 1) - f1 n)

end

end A267226.P1809924585862061308

namespace A267226

/-- `A052549(n)+Δ[A001792(n)]` -/
def P1809924585862061308.Spec : Prop :=
  ∀ n, P1809924585862061308.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P1876003027959662697

`A047859(n+1)-(n+1)*A011782(n)`
-/

namespace A267226.P1876003027959662697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 (n + 1) - (n + 1 : ℤ) * A011782 n

end

end A267226.P1876003027959662697

namespace A267226

/-- `A047859(n+1)-(n+1)*A011782(n)` -/
def P1876003027959662697.Spec : Prop :=
  ∀ n, P1876003027959662697.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P8401532235663507567

`A000079(n+1)+A134311(n+1)-A134311(n)`
-/

namespace A267226.P8401532235663507567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A134311 (n + 1) - A134311 n)

end

end A267226.P8401532235663507567

namespace A267226

/-- `A000079(n+1)+A134311(n+1)-A134311(n)` -/
def P8401532235663507567.Spec : Prop :=
  ∀ n, P8401532235663507567.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P15336064528333407030

`Δ[Δ[A131352(n+1)]]-1`
-/

namespace A267226.P15336064528333407030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A267226.P15336064528333407030

namespace A267226

/-- `Δ[Δ[A131352(n+1)]]-1` -/
def P15336064528333407030.Spec : Prop :=
  ∀ n, P15336064528333407030.a n = A267226 (n + 1)

end A267226

/-! ## A267226.P1185235028762985960

`A131056(n+1)+A099035(n+2)-A002064(n+1)`
-/

namespace A267226.P1185235028762985960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131056 (n + 1) + (A099035 (n + 2) - A002064 (n + 1))

end

end A267226.P1185235028762985960

namespace A267226

/-- `A131056(n+1)+A099035(n+2)-A002064(n+1)` -/
def P1185235028762985960.Spec : Prop :=
  ∀ n, P1185235028762985960.a n = A267226 (n + 1)

end A267226

/-!
# A267227: Number of length-n 0..3 arrays with no following elements greater than or equal to the first repeated value.

The programs for A267227, the canonical program `A267227.P10424677277622638478` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267227 has offset 1).

The definition of A267227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267227.P10424677277622638478

`9*a(n-1)-29*a(n-2)+39*a(n-3)-18*a(n-4)` with `a(0)=4, a(1)=16, a(2)=54, a(3)=176, a(4)=564`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267227

/-- `9*a(n-1)-29*a(n-2)+39*a(n-3)-18*a(n-4)` -/
def P10424677277622638478.Spec : Prop :=
  ∀ n, P10424677277622638478.a n = A267227 (n + 1)

theorem P10424677277622638478.correct : P10424677277622638478.Spec := by
  intro n
  simp only [A267227, Nat.add_sub_cancel]

end A267227

/-! ## A267227.P2061412406286442369

`A267232(∑[n+3]+1)`
-/

namespace A267227.P2061412406286442369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267227.P2061412406286442369

namespace A267227

/-- `A267232(∑[n+3]+1)` -/
def P2061412406286442369.Spec : Prop :=
  ∀ n, P2061412406286442369.a n = A267227 (n + 1)

end A267227

/-! ## A267227.P13963186508777843142

`lcm(2, A267232(A034856(n+2)))`
-/

namespace A267227.P13963186508777843142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267232 (A034856 (n + 2)).toNat)

end

end A267227.P13963186508777843142

namespace A267227

/-- `lcm(2, A267232(A034856(n+2)))` -/
def P13963186508777843142.Spec : Prop :=
  ∀ n, (P13963186508777843142.a n : ℤ) = A267227 (n + 1)

end A267227

/-! ## A267227.P5641404156806629128

`A267232(A034856(n+2))%A181258(n+1)`
-/

namespace A267227.P5641404156806629128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267232 (A034856 (n + 2)).toNat) (A181258 (n + 1))

end

end A267227.P5641404156806629128

namespace A267227

/-- `A267232(A034856(n+2))%A181258(n+1)` -/
def P5641404156806629128.Spec : Prop :=
  ∀ n, P5641404156806629128.a n = A267227 (n + 1)

end A267227

/-! ## A267227.P12532612698118308172

`A000108(val(n+1, 10))*A267232(A034856(n+2))`
-/

namespace A267227.P12532612698118308172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (n + 1) 10) * A267232 (A034856 (n + 2)).toNat

end

end A267227.P12532612698118308172

namespace A267227

/-- `A000108(val(n+1, 10))*A267232(A034856(n+2))` -/
def P12532612698118308172.Spec : Prop :=
  ∀ n, P12532612698118308172.a n = A267227 (n + 1)

end A267227

/-! ## A267227.P2384674281850348891

`A090001(A071044(n))*A267232(A034856(n+2))`
-/

namespace A267227.P2384674281850348891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A071044 n).toNat * A267232 (A034856 (n + 2)).toNat

end

end A267227.P2384674281850348891

namespace A267227

/-- `A090001(A071044(n))*A267232(A034856(n+2))` -/
def P2384674281850348891.Spec : Prop :=
  ∀ n, P2384674281850348891.a n = A267227 (n + 1)

end A267227

/-!
# A267228: Number of length-n 0..4 arrays with no following elements greater than or equal to the first repeated value.

The programs for A267228, there is no canonical definition to state claims against.
-/

/-! ## A267228.P8591997919871747295

`A267232(A027379(n+2))`
-/

namespace A267228.P8591997919871747295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A027379 (n + 2)).toNat

end

end A267228.P8591997919871747295

/-! ## A267228.P15215836229719023673

`A267232(A055998(n+2))`
-/

namespace A267228.P15215836229719023673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A055998 (n + 2)).toNat

end

end A267228.P15215836229719023673

/-! ## A267228.P12570934749306351882

`A267232(A155212(n)+5)`
-/

namespace A267228.P12570934749306351882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A155212 n + 5).toNat

end

end A267228.P12570934749306351882

/-! ## A267228.P15412411070930044270

`A267232(A052905(n+1)+2)`
-/

namespace A267228.P15412411070930044270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A052905 (n + 1) + 2).toNat

end

end A267228.P15412411070930044270

/-! ## A267228.P4836119315377132653

`A267232(A000217(n+3)+n+1)`
-/

namespace A267228.P4836119315377132653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A267228.P4836119315377132653

/-! ## A267228.P10821966799882075051

`A267232(A167614(n+1)+A005408(n))`
-/

namespace A267228.P10821966799882075051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167614 (n + 1) + A005408 n).toNat

end

end A267228.P10821966799882075051

/-! ## A267228.P8688537211957152662

`A267232(A267232(∑[n]+1)+A034856(n+2)+1)`
-/

namespace A267228.P8688537211957152662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A267232 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A034856 (n + 2) + 1).toNat

end

end A267228.P8688537211957152662

/-!
# A267229: Number of length-n 0..5 arrays with no following elements greater than or equal to the first repeated value.

The programs for A267229, there is no canonical definition to state claims against.
-/

/-! ## A267229.P3295585873378692059

`A267232(A046691(n+3))`
-/

namespace A267229.P3295585873378692059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A046691 (n + 3)).toNat

end

end A267229.P3295585873378692059

/-! ## A267229.P7190844303716504521

`A267232(Δ[A023545(n+1)])`
-/

namespace A267229.P7190844303716504521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (f1 (n + 1) - f1 n).toNat

end

end A267229.P7190844303716504521

/-! ## A267229.P13333091356460690504

`A267232(A167499(n+4)-9)`
-/

namespace A267229.P13333091356460690504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167499 (n + 4) - 9).toNat

end

end A267229.P13333091356460690504

/-! ## A267229.P7448651250214738990

`A267232(A000124(n+6)-(n+11))`
-/

namespace A267229.P7448651250214738990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000124 (n + 6) - (n + 11 : ℤ)).toNat

end

end A267229.P7448651250214738990

/-! ## A267229.P12949830804790761873

`A267232(A080036(A155212(n)+4))`
-/

namespace A267229.P12949830804790761873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A080036 (A155212 n + 4).toNat).toNat

end

end A267229.P12949830804790761873

/-!
# A267230: Number of length-n 0..6 arrays with no following elements greater than or equal to the first repeated value.

The programs for A267230, there is no canonical definition to state claims against.
-/

/-! ## A267230.P16787129167699559870

`A267232(A052905(n+3))`
-/

namespace A267230.P16787129167699559870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A052905 (n + 3)).toNat

end

end A267230.P16787129167699559870

/-! ## A267230.P3632338371429151190

`A267232(A000217(n+6)-5)`
-/

namespace A267230.P3632338371429151190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000217 (n + 6) - 5).toNat

end

end A267230.P3632338371429151190

/-! ## A267230.P4824557813369855199

`A267232(A000124(n+6)-6)`
-/

namespace A267230.P4824557813369855199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000124 (n + 6) - 6).toNat

end

end A267230.P4824557813369855199

/-! ## A267230.P16051331763514551959

`A267232(A167614(n+5)-8)`
-/

namespace A267230.P16051331763514551959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167614 (n + 5) - 8).toNat

end

end A267230.P16051331763514551959

/-! ## A267230.P3144440903824201635

`A267232(Δ[A023545(n+2)]-1)`
-/

namespace A267230.P3144440903824201635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (f1 (n + 1) - f1 n - 1).toNat

end

end A267230.P3144440903824201635

/-! ## A267230.P8696798898675915638

`A267232(A005408(A005408(n)+5)+A000217(n+2))`
-/

namespace A267230.P8696798898675915638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A005408 (A005408 n + 5).toNat + A000217 (n + 2)).toNat

end

end A267230.P8696798898675915638

/-!
# A267231: Number of length-n 0..7 arrays with no following elements greater than or equal to the first repeated value.

The programs for A267231, there is no canonical definition to state claims against.
-/

/-! ## A267231.P12910039011615437149

`A267232(A055999(n+4))`
-/

namespace A267231.P12910039011615437149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A055999 (n + 4)).toNat

end

end A267231.P12910039011615437149

/-! ## A267231.P16186290110675215530

`A267232(A052905(n+4)-1)`
-/

namespace A267231.P16186290110675215530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A052905 (n + 4) - 1).toNat

end

end A267231.P16186290110675215530

/-! ## A267231.P16220389870884462366

`A267232(A000217(n+7)-6)`
-/

namespace A267231.P16220389870884462366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000217 (n + 7) - 6).toNat

end

end A267231.P16220389870884462366

/-! ## A267231.P4862322523948495599

`A267232(A000124(n+7)-7)`
-/

namespace A267231.P4862322523948495599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000124 (n + 7) - 7).toNat

end

end A267231.P4862322523948495599

/-! ## A267231.P282671784904996920

`A267232(A005408(n)+Δ[A023545(n+1)]+10)`
-/

namespace A267231.P282671784904996920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A005408 n + (f1 (n + 1) - f1 n + 10)).toNat

end

end A267231.P282671784904996920

/-!
# A267233: Number of length-4 0..n arrays with no following elements greater than or equal to the first repeated value.

The programs for A267233, the canonical program `A267233.P13692085639845397797` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267233 has offset 1).

The definition of A267233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267233.P13692085639845397797

`∑[∑[∑[4*6*n+5]+1]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267233

/-- `∑[∑[∑[4*6*n+5]+1]]` -/
def P13692085639845397797.Spec : Prop :=
  ∀ n, (P13692085639845397797.a n : ℤ) = A267233 (n + 1)

theorem P13692085639845397797.correct : P13692085639845397797.Spec := by
  intro n
  simp only [A267233, Nat.add_sub_cancel]

end A267233

/-! ## A267233.P15935890981419303902

`A134481(n)+A082986(n+1)`
-/

namespace A267233.P15935890981419303902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A082986 (n + 1)

end

end A267233.P15935890981419303902

namespace A267233

/-- `A134481(n)+A082986(n+1)` -/
def P15935890981419303902.Spec : Prop :=
  ∀ n, P15935890981419303902.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P10924428851414403512

`A053126(n+4)+A051797(n)`
-/

namespace A267233.P10924428851414403512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053126 (n + 4) + A051797 n

end

end A267233.P10924428851414403512

namespace A267233

/-- `A053126(n+4)+A051797(n)` -/
def P10924428851414403512.Spec : Prop :=
  ∀ n, P10924428851414403512.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P8788160292374105137

`A033994(n+1)+A002378(n+1)²`
-/

namespace A267233.P8788160292374105137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033994 (n + 1) + A002378 (n + 1) ^ 2

end

end A267233.P8788160292374105137

namespace A267233

/-- `A033994(n+1)+A002378(n+1)²` -/
def P8788160292374105137.Spec : Prop :=
  ∀ n, P8788160292374105137.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P6365270733732319276

`A000330(n+1)+A000217(n+1)*A014106(n+1)`
-/

namespace A267233.P6365270733732319276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + A000217 (n + 1) * A014106 (n + 1)

end

end A267233.P6365270733732319276

namespace A267233

/-- `A000330(n+1)+A000217(n+1)*A014106(n+1)` -/
def P6365270733732319276.Spec : Prop :=
  ∀ n, P6365270733732319276.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P6463523690969022929

`(n+2)²²-A007584(n+2)`
-/

namespace A267233.P6463523690969022929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - A007584 (n + 2)

end

end A267233.P6463523690969022929

namespace A267233

/-- `(n+2)²²-A007584(n+2)` -/
def P6463523690969022929.Spec : Prop :=
  ∀ n, P6463523690969022929.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P8071329680500297434

`A070893(2*(n+1))+∑[∑[n]]`
-/

namespace A267233.P8071329680500297434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (2 * (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A267233.P8071329680500297434

namespace A267233

/-- `A070893(2*(n+1))+∑[∑[n]]` -/
def P8071329680500297434.Spec : Prop :=
  ∀ n, P8071329680500297434.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P8473914462558657747

`A000292(n)+∑[A002411(2*(n+1))]`
-/

namespace A267233.P8473914462558657747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267233.P8473914462558657747

namespace A267233

/-- `A000292(n)+∑[A002411(2*(n+1))]` -/
def P8473914462558657747.Spec : Prop :=
  ∀ n, P8473914462558657747.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P14756241433076805508

`A267232(A167614(n+2)+1)`
-/

namespace A267233.P14756241433076805508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167614 (n + 2) + 1).toNat

end

end A267233.P14756241433076805508

namespace A267233

/-- `A267232(A167614(n+2)+1)` -/
def P14756241433076805508.Spec : Prop :=
  ∀ n, P14756241433076805508.a n = A267233 (n + 1)

end A267233

/-! ## A267233.P15632572309232626675

`A267232(A166136(n+2)-2)`
-/

namespace A267233.P15632572309232626675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A166136 (n + 2) - 2).toNat

end

end A267233.P15632572309232626675

namespace A267233

/-- `A267232(A166136(n+2)-2)` -/
def P15632572309232626675.Spec : Prop :=
  ∀ n, P15632572309232626675.a n = A267233 (n + 1)

end A267233

/-!
# A267234: Number of length-5 0..n arrays with no following elements greater than or equal to the first repeated value.

The programs for A267234, the canonical program `A267234.P2830985789986895469` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267234 has offset 1).

The definition of A267234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267234.P2830985789986895469

`(n+1)^5+37/12*(n+1)^4+5/2*(n+1)^3+5/12*(n+1)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267234

/-- `(n+1)^5+37/12*(n+1)^4+5/2*(n+1)^3+5/12*(n+1)²` -/
def P2830985789986895469.Spec : Prop :=
  ∀ n, P2830985789986895469.a n = (A267234 (n + 1) : ℚ)

end A267234

/-! ## A267234.P2557052867280630095

`A267232(A167499(n+3))`
-/

namespace A267234.P2557052867280630095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167499 (n + 3)).toNat

end

end A267234.P2557052867280630095

namespace A267234

/-- `A267232(A167499(n+3))` -/
def P2557052867280630095.Spec : Prop :=
  ∀ n, P2557052867280630095.a n = A267234 (n + 1)

end A267234

/-! ## A267234.P4028941981322398616

`A267232(A167614(n+3)+2)`
-/

namespace A267234.P4028941981322398616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167614 (n + 3) + 2).toNat

end

end A267234.P4028941981322398616

namespace A267234

/-- `A267232(A167614(n+3)+2)` -/
def P4028941981322398616.Spec : Prop :=
  ∀ n, P4028941981322398616.a n = A267234 (n + 1)

end A267234

/-! ## A267234.P107602981006395076

`A267232(A000124(n+4)+4)`
-/

namespace A267234.P107602981006395076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000124 (n + 4) + 4).toNat

end

end A267234.P107602981006395076

namespace A267234

/-- `A267232(A000124(n+4)+4)` -/
def P107602981006395076.Spec : Prop :=
  ∀ n, P107602981006395076.a n = A267234 (n + 1)

end A267234

/-! ## A267234.P1758790285910270725

`A267232(A000217(n+4)+5)`
-/

namespace A267234.P1758790285910270725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000217 (n + 4) + 5).toNat

end

end A267234.P1758790285910270725

namespace A267234

/-- `A267232(A000217(n+4)+5)` -/
def P1758790285910270725.Spec : Prop :=
  ∀ n, P1758790285910270725.a n = A267234 (n + 1)

end A267234

/-! ## A267234.P12332121476822155887

`A267232(A038722(Δ[A023545(n+1)]))`
-/

namespace A267234.P12332121476822155887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A267234.P12332121476822155887

namespace A267234

/-- `A267232(A038722(Δ[A023545(n+1)]))` -/
def P12332121476822155887.Spec : Prop :=
  ∀ n, P12332121476822155887.a n = A267234 (n + 1)

end A267234

/-!
# A267235: Number of length-6 0..n arrays with no following elements greater than or equal to the first repeated value.

The programs for A267235, the canonical program `A267235.P14735702944073116401` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267235 has offset 1).

The definition of A267235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267235.P14735702944073116401

`(n+1)^6+197*(n+1)^5/60+3*(n+1)^4+3*(n+1)^3/4-(n+1)/30`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267235

/-- `(n+1)^6+197*(n+1)^5/60+3*(n+1)^4+3*(n+1)^3/4-(n+1)/30` -/
def P14735702944073116401.Spec : Prop :=
  ∀ n, P14735702944073116401.a n = (A267235 (n + 1) : ℚ)

end A267235

/-! ## A267235.P7714530274901060261

`A267232(A167499(n+4)+1)`
-/

namespace A267235.P7714530274901060261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167499 (n + 4) + 1).toNat

end

end A267235.P7714530274901060261

namespace A267235

/-- `A267232(A167499(n+4)+1)` -/
def P7714530274901060261.Spec : Prop :=
  ∀ n, P7714530274901060261.a n = A267235 (n + 1)

end A267235

/-! ## A267235.P17262223063197968537

`A267232(A000124(n+5)+5)`
-/

namespace A267235.P17262223063197968537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000124 (n + 5) + 5).toNat

end

end A267235.P17262223063197968537

namespace A267235

/-- `A267232(A000124(n+5)+5)` -/
def P17262223063197968537.Spec : Prop :=
  ∀ n, P17262223063197968537.a n = A267235 (n + 1)

end A267235

/-! ## A267235.P405047825500932006

`A267232(A000217(n+5)+6)`
-/

namespace A267235.P405047825500932006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000217 (n + 5) + 6).toNat

end

end A267235.P405047825500932006

namespace A267235

/-- `A267232(A000217(n+5)+6)` -/
def P405047825500932006.Spec : Prop :=
  ∀ n, P405047825500932006.a n = A267235 (n + 1)

end A267235

/-! ## A267235.P1231972320301391058

`A267232(Δ[A023545(n+1)]+10)`
-/

namespace A267235.P1231972320301391058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (f1 (n + 1) - f1 n + 10).toNat

end

end A267235.P1231972320301391058

namespace A267235

/-- `A267232(Δ[A023545(n+1)]+10)` -/
def P1231972320301391058.Spec : Prop :=
  ∀ n, P1231972320301391058.a n = A267235 (n + 1)

end A267235

/-! ## A267235.P17884489823831036769

`A267232(A052905(n+4)-2*(n+1))`
-/

namespace A267235.P17884489823831036769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A052905 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A267235.P17884489823831036769

namespace A267235

/-- `A267232(A052905(n+4)-2*(n+1))` -/
def P17884489823831036769.Spec : Prop :=
  ∀ n, P17884489823831036769.a n = A267235 (n + 1)

end A267235

/-!
# A267236: Number of length-7 0..n arrays with no following elements greater than or equal to the first repeated value.

The programs for A267236, there is no canonical definition to state claims against.
-/

/-! ## A267236.P1690556774968373405

`A267232(A167487(n+5))`
-/

namespace A267236.P1690556774968373405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167487 (n + 5)).toNat

end

end A267236.P1690556774968373405

/-! ## A267236.P11907628749527732587

`A267232(A166136(n+5)+1)`
-/

namespace A267236.P11907628749527732587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A166136 (n + 5) + 1).toNat

end

end A267236.P11907628749527732587

/-! ## A267236.P6737714549638192308

`A267232(A167614(n+5)+4)`
-/

namespace A267236.P6737714549638192308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A167614 (n + 5) + 4).toNat

end

end A267236.P6737714549638192308

/-! ## A267236.P3134704025060309305

`A267232(A000124(n+6)+6)`
-/

namespace A267236.P3134704025060309305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000124 (n + 6) + 6).toNat

end

end A267236.P3134704025060309305

/-! ## A267236.P13393416540627814717

`A267232(A000217(n+6)+7)`
-/

namespace A267236.P13393416540627814717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A000217 (n + 6) + 7).toNat

end

end A267236.P13393416540627814717

/-! ## A267236.P3689376298512562058

`A267232(A055999(n+3)+13)`
-/

namespace A267236.P3689376298512562058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267232 (A055999 (n + 3) + 13).toNat

end

end A267236.P3689376298512562058

/-!
# A267238: Sum of the triangular numbers whose indices are the digits of n.

The programs for A267238, there is no canonical definition to state claims against.
-/

/-! ## A267238.P10607153159384726683

`∑{digits}[n+1, C(#+1, 2)]`
-/

namespace A267238.P10607153159384726683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose (x + 1) 2).sum

end

end A267238.P10607153159384726683

/-! ## A267238.P10456066119023753509

`∑{digits}[n+1, (#²+#)/2]`
-/

namespace A267238.P10456066119023753509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x ^ 2 + x : ℚ) / 2).sum

end

end A267238.P10456066119023753509

/-! ## A267238.P10400724991507645629

`∑{digits}[n+1, #*(#+1)]/2`
-/

namespace A267238.P10400724991507645629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x * (x + 1)).sum : ℕ) : ℚ) / 2

end

end A267238.P10400724991507645629

/-! ## A267238.P564032854014452459

`floor(cosh(log(∑{digits}[n+1, #²+#])))`
-/

namespace A267238.P564032854014452459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2 + x).sum : ℕ) : ℝ))⌋

end

end A267238.P564032854014452459

/-! ## A267238.P12360873410654750835

`round(cosh(log(∑{digits}[n+1, #²+#])))`
-/

namespace A267238.P12360873410654750835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2 + x).sum : ℕ) : ℝ)))

end

end A267238.P12360873410654750835

/-! ## A267238.P11150155842787131070

`A077253(n+1)/2`
-/

namespace A267238.P11150155842787131070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077253 (n + 1) : ℚ) / 2

end

end A267238.P11150155842787131070

/-! ## A267238.P5379227398139400532

`∑{digits}[n+1, A000217(#)]%90`
-/

namespace A267238.P5379227398139400532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000217 x).sum 90

end

end A267238.P5379227398139400532

/-! ## A267238.P2648291337430038611

`A065033(∑{digits}[n+1, #²+#])`
-/

namespace A267238.P2648291337430038611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2 + x).sum

end

end A267238.P2648291337430038611

/-! ## A267238.P17267509184415132632

`A001281(A077253(n+1))`
-/

namespace A267238.P17267509184415132632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A077253 (n + 1)).toNat

end

end A267238.P17267509184415132632

/-! ## A267238.P13294665589923205630

`A354280(A077253(n+1)+1)`
-/

namespace A267238.P13294665589923205630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354280 (A077253 (n + 1) + 1).toNat

end

end A267238.P13294665589923205630

/-!
# A267239: Number of n X n binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267239, there is no canonical definition to state claims against.
-/

/-! ## A267239.P6536994079155228144

`A267245(∑[4*n]+1)`
-/

namespace A267239.P6536994079155228144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267239.P6536994079155228144

/-! ## A267239.P8085185742295796916

`record[A003982(n)*A267245(n+1)]`
-/

namespace A267239.P8085185742295796916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A267245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267239.P8085185742295796916

/-! ## A267239.P2497080482250790608

`gcd(A000038(n), A267245(A001844(n)))`
-/

namespace A267239.P2497080482250790608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A267245 (A001844 n).toNat)

end

end A267239.P2497080482250790608

/-! ## A267239.P13509832368767102737

`lcm(A036065(n), A267245(A001844(n)))`
-/

namespace A267239.P13509832368767102737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036065 n) (A267245 (A001844 n).toNat)

end

end A267239.P13509832368767102737

/-! ## A267239.P10952757174175092843

`A325318(n+1)+A267245(A001844(n))`
-/

namespace A267239.P10952757174175092843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325318 (n + 1) + A267245 (A001844 n).toNat

end

end A267239.P10952757174175092843

/-!
# A267240: Number of n X 3 binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267240, there is no canonical definition to state claims against.
-/

/-! ## A267240.P8201332513322626009

`A267245(∑[n+3]+1)`
-/

namespace A267240.P8201332513322626009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267240.P8201332513322626009

/-! ## A267240.P4574849706563033432

`gcd(A151878(n+4), A267245(A034856(n+2)))`
-/

namespace A267240.P4574849706563033432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 (n + 4)) (A267245 (A034856 (n + 2)).toNat)

end

end A267240.P4574849706563033432

/-!
# A267241: Number of nX4 binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267241, there is no canonical definition to state claims against.
-/

/-! ## A267241.P13299160270961744240

`A267245(A141214(n+1))`
-/

namespace A267241.P13299160270961744240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A141214 (n + 1)).toNat

end

end A267241.P13299160270961744240

/-! ## A267241.P6369515658657844453

`A267245(A027379(n+2))`
-/

namespace A267241.P6369515658657844453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A027379 (n + 2)).toNat

end

end A267241.P6369515658657844453

/-! ## A267241.P17438889552155229927

`A267245(eq[3, A193592(n)])`
-/

namespace A267241.P17438889552155229927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267241.P17438889552155229927

/-! ## A267241.P10967663103017020748

`A267245(A052905(n+1)+2)`
-/

namespace A267241.P10967663103017020748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A052905 (n + 1) + 2).toNat

end

end A267241.P10967663103017020748

/-! ## A267241.P571965155714819000

`A267245(eq[4, A058399(n+1)])`
-/

namespace A267241.P571965155714819000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267241.P571965155714819000

/-!
# A267242: Number of nX5 binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267242, there is no canonical definition to state claims against.
-/

/-! ## A267242.P948900167780097509

`A267245(Δ[A264443(n)])`
-/

namespace A267242.P948900167780097509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (f1 (n + 1) - f1 n).toNat

end

end A267242.P948900167780097509

/-! ## A267242.P11922311030184479

`A267245(A046691(n+3))`
-/

namespace A267242.P11922311030184479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A046691 (n + 3)).toNat

end

end A267242.P11922311030184479

/-! ## A267242.P4514931190553654407

`A267245(eq[4, A193592(n)])`
-/

namespace A267242.P4514931190553654407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267242.P4514931190553654407

/-! ## A267242.P2604008973606203275

`A267245(eq[8, A140996(n)])`
-/

namespace A267242.P2604008973606203275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267242.P2604008973606203275

/-! ## A267242.P4518551786735743935

`A267245(Δ[A023545(n+1)])`
-/

namespace A267242.P4518551786735743935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (f1 (n + 1) - f1 n).toNat

end

end A267242.P4518551786735743935

/-!
# A267243: Number of n X 6 binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267243, there is no canonical definition to state claims against.
-/

/-! ## A267243.P8951976324589863153

`A267245(A052905(n+3))`
-/

namespace A267243.P8951976324589863153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A052905 (n + 3)).toNat

end

end A267243.P8951976324589863153

/-! ## A267243.P11369960420144007587

`A267245(A056119(n)+16)`
-/

namespace A267243.P11369960420144007587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A056119 n + 16).toNat

end

end A267243.P11369960420144007587

/-! ## A267243.P7656555545780730619

`A267245(eq[3, A219347(n)])`
-/

namespace A267243.P7656555545780730619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267243.P7656555545780730619

/-! ## A267243.P14693918182591077081

`A267245(eq[5, A193592(n)])`
-/

namespace A267243.P14693918182591077081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267243.P14693918182591077081

/-! ## A267243.P14184770065511135971

`record[A267245(A155212(n)+3)]`
-/

namespace A267243.P14184770065511135971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A155212 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267243.P14184770065511135971

/-!
# A267244: Number of n X 7 binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267244, there is no canonical definition to state claims against.
-/

/-! ## A267244.P6713944592660589495

`A267245(∑[n+7]+15)`
-/

namespace A267244.P6713944592660589495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A267244.P6713944592660589495

/-! ## A267244.P3355607147241700826

`A267245(A000124(n+7)-7)+A158855(3*n+1)`
-/

namespace A267244.P3355607147241700826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A000124 (n + 7) - 7).toNat + A158855 (3 * n + 1 + 14)

end

end A267244.P3355607147241700826

/-!
# A267245: T(n,k)=Number of nXk binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267245, there is no canonical definition to state claims against.
-/

/-! ## A267245.P3311530076446235690

`A136610(A219207(n))+A003506(n+1)`
-/

namespace A267245.P3311530076446235690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136610 (A219207 n).toNat + A003506 (n + 1)

end

end A267245.P3311530076446235690

/-! ## A267245.P16689797212564228383

`A119485(A322266(n+1))+A014430(n)`
-/

namespace A267245.P16689797212564228383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119485 (A322266 (n + 1)).toNat + A014430 n

end

end A267245.P16689797212564228383

/-! ## A267245.P13615271041234420343

`A185651(n)+A119485(A200763(n+1))`
-/

namespace A267245.P13615271041234420343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 n + A119485 (A200763 (n + 1)).toNat

end

end A267245.P13615271041234420343

/-! ## A267245.P1252808988955429948

`A248944(n+1)+A133010(A133041(n))`
-/

namespace A267245.P1252808988955429948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (n + 1) + A133010 (A133041 n).toNat

end

end A267245.P1252808988955429948

/-!
# A267246: Binary representation of the n-th iteration of the "Rule 165" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267246, there is no canonical definition to state claims against.
-/

/-! ## A267246.P8188184635257239725

`A000042(2*n+1)%A006943(A004277(n))`
-/

namespace A267246.P8188184635257239725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (2 * n + 1)) (A006943 (A004277 n).toNat)

end

end A267246.P8188184635257239725

/-! ## A267246.P6729380370711360029

`A007088(A267247(n))`
-/

namespace A267246.P6729380370711360029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267247 n).toNat

end

end A267246.P6729380370711360029

/-! ## A267246.P2023907686800011409

`A007088(or(2^n, A219843(2*n)))`
-/

namespace A267246.P2023907686800011409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (2 ^ n : ℤ) (A219843 (2 * n))).toNat

end

end A267246.P2023907686800011409

/-! ## A267246.P4489238611162753706

`A007088(A000007(n)+record[A219843(n)])`
-/

namespace A267246.P4489238611162753706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267246.P4489238611162753706

/-!
# A267247: Decimal representation of the n-th iteration of the "Rule 165" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267247, the canonical program `A267247.P4603199812040826951` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267247 has offset 0).

The definition of A267247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267247.P4603199812040826951

`A000007(n)+record[A219843(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A267247

/-- `A000007(n)+record[A219843(n)]` -/
def P4603199812040826951.Spec : Prop :=
  ∀ n, P4603199812040826951.a n = A267247 n

theorem P4603199812040826951.correct : P4603199812040826951.Spec := by
  intro n
  simp only [A267247]

end A267247

/-! ## A267247.P7998215878426482024

`or(record[A219843(n)], A000079(n))`
-/

namespace A267247.P7998215878426482024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000079 n)

end

end A267247.P7998215878426482024

namespace A267247

/-- `or(record[A219843(n)], A000079(n))` -/
def P7998215878426482024.Spec : Prop :=
  ∀ n, P7998215878426482024.a n = A267247 n

end A267247

/-! ## A267247.P5274951388754896130

`record[or(A016116(n), A219843(n))]`
-/

namespace A267247.P5274951388754896130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 n) (A219843 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267247.P5274951388754896130

namespace A267247

/-- `record[or(A016116(n), A219843(n))]` -/
def P5274951388754896130.Spec : Prop :=
  ∀ n, P5274951388754896130.a n = A267247 n

end A267247

/-! ## A267247.P13076857857456952841

`A219843(2*n)+A000007(n)`
-/

namespace A267247.P13076857857456952841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 (2 * n) + A000007 n

end

end A267247.P13076857857456952841

namespace A267247

/-- `A219843(2*n)+A000007(n)` -/
def P13076857857456952841.Spec : Prop :=
  ∀ n, P13076857857456952841.a n = A267247 n

end A267247

/-! ## A267247.P9925323218750961123

`or(A000079(n), A219843(2*n))`
-/

namespace A267247.P9925323218750961123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A219843 (2 * n))

end

end A267247.P9925323218750961123

namespace A267247

/-- `or(A000079(n), A219843(2*n))` -/
def P9925323218750961123.Spec : Prop :=
  ∀ n, P9925323218750961123.a n = A267247 n

end A267247

/-! ## A267247.P12529202473929732755

`record[A219843(n)+A209229(n+1)]`
-/

namespace A267247.P12529202473929732755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 n + A209229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267247.P12529202473929732755

namespace A267247

/-- `record[A219843(n)+A209229(n+1)]` -/
def P12529202473929732755.Spec : Prop :=
  ∀ n, P12529202473929732755.a n = A267247 n

end A267247

/-! ## A267247.P2388221086964067151

`A219843(2*n)+1-A057427(n)`
-/

namespace A267247.P2388221086964067151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 (2 * n) + (1 - A057427 n)

end

end A267247.P2388221086964067151

namespace A267247

/-- `A219843(2*n)+1-A057427(n)` -/
def P2388221086964067151.Spec : Prop :=
  ∀ n, P2388221086964067151.a n = A267247 n

end A267247

/-! ## A267247.P3873337651663190271

`or(A016116(2*n), A219843(2*n))`
-/

namespace A267247.P3873337651663190271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 (2 * n)) (A219843 (2 * n))

end

end A267247.P3873337651663190271

namespace A267247

/-- `or(A016116(2*n), A219843(2*n))` -/
def P3873337651663190271.Spec : Prop :=
  ∀ n, P3873337651663190271.a n = A267247 n

end A267247

/-! ## A267247.P9528369550792333473

`A219843(2*n)+A209229(n²+2)`
-/

namespace A267247.P9528369550792333473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 (2 * n) + A209229 (n ^ 2 + 2)

end

end A267247.P9528369550792333473

namespace A267247

/-- `A219843(2*n)+A209229(n²+2)` -/
def P9528369550792333473.Spec : Prop :=
  ∀ n, P9528369550792333473.a n = A267247 n

end A267247

/-! ## A267247.P1643115587530908037

`record[A219843(n)+val(A000040(n+1), 2)]`
-/

namespace A267247.P1643115587530908037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 n + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267247.P1643115587530908037

namespace A267247

/-- `record[A219843(n)+val(A000040(n+1), 2)]` -/
def P1643115587530908037.Spec : Prop :=
  ∀ n, P1643115587530908037.a n = A267247 n

end A267247

/-! ## A267247.P8633833840453654803

`record[A266298(2*n+1)+A219843(n+1)]`
-/

namespace A267247.P8633833840453654803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (2 * n + 1) + A219843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267247.P8633833840453654803

namespace A267247

/-- `record[A266298(2*n+1)+A219843(n+1)]` -/
def P8633833840453654803.Spec : Prop :=
  ∀ n, P8633833840453654803.a n = A267247 n

end A267247

/-! ## A267247.P2404691442270865945

`A219843(2*n)+val(A000040(2*n+1), 2)`
-/

namespace A267247.P2404691442270865945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 (2 * n) + (SequenceMachineLib.valuation (A000040 (2 * n + 1)).toNat 2 : ℤ)

end

end A267247.P2404691442270865945

namespace A267247

/-- `A219843(2*n)+val(A000040(2*n+1), 2)` -/
def P2404691442270865945.Spec : Prop :=
  ∀ n, P2404691442270865945.a n = A267247 n

end A267247

/-! ## A267247.P10998486200447582345

`A095121(2*n)+1-A001317(2*n)`
-/

namespace A267247.P10998486200447582345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (2 * n) + (1 - A001317 (2 * n))

end

end A267247.P10998486200447582345

namespace A267247

/-- `A095121(2*n)+1-A001317(2*n)` -/
def P10998486200447582345.Spec : Prop :=
  ∀ n, P10998486200447582345.a n = A267247 n

end A267247

/-! ## A267247.P3914170930207681022

`A052955(A008574(n))-A001317(2*n)`
-/

namespace A267247.P3914170930207681022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A008574 n).toNat - A001317 (2 * n)

end

end A267247.P3914170930207681022

namespace A267247

/-- `A052955(A008574(n))-A001317(2*n)` -/
def P3914170930207681022.Spec : Prop :=
  ∀ n, P3914170930207681022.a n = A267247 n

end A267247

/-! ## A267247.P16888657299673514231

`A290682(A004277(n))-A001317(2*n)`
-/

namespace A267247.P16888657299673514231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (A004277 n).toNat - A001317 (2 * n)

end

end A267247.P16888657299673514231

namespace A267247

/-- `A290682(A004277(n))-A001317(2*n)` -/
def P16888657299673514231.Spec : Prop :=
  ∀ n, P16888657299673514231.a n = A267247 n

end A267247

/-!
# A267248: Number of 5Xn binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267248, there is no canonical definition to state claims against.
-/

/-! ## A267248.P3947076848682209722

`A267245(A155212(n)+13)`
-/

namespace A267248.P3947076848682209722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A155212 n + 13).toNat

end

end A267248.P3947076848682209722

/-! ## A267248.P8410407376931911205

`A267245(A056000(n)+15)`
-/

namespace A267248.P8410407376931911205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A056000 n + 15).toNat

end

end A267248.P8410407376931911205

/-! ## A267248.P9226294011564944463

`A267245(eq[7, A066657(n)])`
-/

namespace A267248.P9226294011564944463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267248.P9226294011564944463

/-! ## A267248.P635269719938017626

`A267245(A166136(n+3)-1)`
-/

namespace A267248.P635269719938017626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A166136 (n + 3) - 1).toNat

end

end A267248.P635269719938017626

/-! ## A267248.P5388391978362146735

`A267245(eq[6, A131818(n+1)])`
-/

namespace A267248.P5388391978362146735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267248.P5388391978362146735

/-!
# A267249: Number of 6Xn binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267249, there is no canonical definition to state claims against.
-/

/-! ## A267249.P17126599182311354649

`A267245(A166136(n+4))`
-/

namespace A267249.P17126599182311354649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A166136 (n + 4)).toNat

end

end A267249.P17126599182311354649

/-! ## A267249.P15506056686712991791

`A267245(A167614(n+4)+3)`
-/

namespace A267249.P15506056686712991791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A167614 (n + 4) + 3).toNat

end

end A267249.P15506056686712991791

/-! ## A267249.P10334040544190060084

`A267245(eq[7, A131818(n+1)])`
-/

namespace A267249.P10334040544190060084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267249.P10334040544190060084

/-! ## A267249.P5305112458857997718

`A267245(eq[5, A004736(n+1)]+11)`
-/

namespace A267249.P5305112458857997718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 11)

end

end A267249.P5305112458857997718

/-! ## A267249.P73014146314693608

`A267245(A034111(n+1)-A055999(n))`
-/

namespace A267249.P73014146314693608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A034111 (n + 1) - A055999 n).toNat

end

end A267249.P73014146314693608

/-!
# A267250: Number of 7Xn binary arrays with row sums nondecreasing and columns lexicographically nondecreasing.

The programs for A267250, there is no canonical definition to state claims against.
-/

/-! ## A267250.P16847475187426812418

`A267245(eq[11, A066657(n)])`
-/

namespace A267250.P16847475187426812418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267250.P16847475187426812418

/-! ## A267250.P14737093715720564661

`A267245(A167614(n+5)+4)`
-/

namespace A267250.P14737093715720564661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A167614 (n + 5) + 4).toNat

end

end A267250.P14737093715720564661

/-! ## A267250.P1098575872190679975

`A267245(A000124(n+6)+6)`
-/

namespace A267250.P1098575872190679975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A000124 (n + 6) + 6).toNat

end

end A267250.P1098575872190679975

/-! ## A267250.P12790368690031353979

`A267245(A155212(n+2)+15)`
-/

namespace A267250.P12790368690031353979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (A155212 (n + 2) + 15).toNat

end

end A267250.P12790368690031353979

/-! ## A267250.P8677291968686934286

`A267245(eq[8, A131818(n+1)])`
-/

namespace A267250.P8677291968686934286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267250.P8677291968686934286

/-!
# A267253: Triangle read by rows giving successive states of cellular automaton generated by "Rule 111" initiated with a single ON (black) cell.

The programs for A267253, there is no canonical definition to state claims against.
-/

/-! ## A267253.P700698403142472150

`A267358(A020703(n+1)-1)`
-/

namespace A267253.P700698403142472150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267358 (A020703 (n + 1) - 1).toNat

end

end A267253.P700698403142472150

/-! ## A267253.P14487961297662210143

`A267358(A020703(n+2))`
-/

namespace A267253.P14487961297662210143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267358 (A020703 (n + 2)).toNat

end

end A267253.P14487961297662210143

/-! ## A267253.P7720272025298632424

`A326476(A326476(2*n+1)%A061395(n+2))`
-/

namespace A267253.P7720272025298632424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (Int.tmod (A326476 (2 * n + 1)) (A061395 (n + 2))).toNat

end

end A267253.P7720272025298632424

/-!
# A267254: Binary representation of the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267254, there is no canonical definition to state claims against.
-/

/-! ## A267254.P7504069935419953452

`A007088(A267255(n))`
-/

namespace A267254.P7504069935419953452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267255 n).toNat

end

end A267254.P7504069935419953452

/-!
# A267256: Middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267256, the canonical program `A267256.P7417068767322150785` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267256 has offset 0).

The definition of A267256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267256.P7417068767322150785

`and(1, C(6, n)+n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267256

/-- `and(1, C(6, n)+n)` -/
def P7417068767322150785.Spec : Prop :=
  ∀ n, (P7417068767322150785.a n : ℤ) = A267256 n

theorem P7417068767322150785.correct : P7417068767322150785.Spec := by
  intro n
  simp only [A267256]

end A267256

/-!
# A267257: Binary representation of the middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267257, the canonical program `A267257.P4515086165542725921` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267257 has offset 0).

The definition of A267257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A267258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A267257.P4515086165542725921

`A007088(A267258(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267257

/-- `A007088(A267258(n))` -/
def P4515086165542725921.Spec : Prop :=
  ∀ n, P4515086165542725921.a n = A267257 n

theorem P4515086165542725921.correct : P4515086165542725921.Spec := by
  intro n
  simp only [A267257]

end A267257

/-! ## A267257.P17262568144060133799

`A267155(n+2)+10*a(n-1)` with `a(0)=1`
-/

namespace A267257.P17262568144060133799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267155 (n + 2) + 10 * a (n - 1)

end

end A267257.P17262568144060133799

namespace A267257

/-- `A267155(n+2)+10*a(n-1)` -/
def P17262568144060133799.Spec : Prop :=
  ∀ n, P17262568144060133799.a n = A267257 n

end A267257

/-! ## A267257.P1249985962877663778

`or(10*a(n-1), A228594(A188216(n)))` with `a(0)=1`
-/

namespace A267257.P1249985962877663778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A228594 (A188216 n).toNat)

end

end A267257.P1249985962877663778

namespace A267257

/-- `or(10*a(n-1), A228594(A188216(n)))` -/
def P1249985962877663778.Spec : Prop :=
  ∀ n, P1249985962877663778.a n = A267257 n

end A267257

/-! ## A267257.P10787139284370235089

`A007088(A267157(n+2)-A007283(n))`
-/

namespace A267257.P10787139284370235089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267157 (n + 2) - A007283 n).toNat

end

end A267257.P10787139284370235089

namespace A267257

/-- `A007088(A267157(n+2)-A007283(n))` -/
def P10787139284370235089.Spec : Prop :=
  ∀ n, P10787139284370235089.a n = A267257 n

end A267257

/-! ## A267257.P15743328585202203385

`A185544(2*A267258(n))`
-/

namespace A267257.P15743328585202203385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267258 n).toNat

end

end A267257.P15743328585202203385

namespace A267257

/-- `A185544(2*A267258(n))` -/
def P15743328585202203385.Spec : Prop :=
  ∀ n, P15743328585202203385.a n = A267257 n

end A267257

/-!
# A267258: Decimal representation of the middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267258, the canonical program `A267258.P5534093032175889116` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267258 has offset 0).

The definition of A267258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267258.P5534093032175889116

`xor(2*a(n-1), A267256(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267258

/-- `xor(2*a(n-1), A267256(n))` -/
def P5534093032175889116.Spec : Prop :=
  ∀ n, P5534093032175889116.a n = A267258 n

theorem P5534093032175889116.correct : P5534093032175889116.Spec := by
  intro n
  simp only [A267258]

end A267258

/-! ## A267258.P8747782298764032590

`or(2*a(n-1), A267155(n+2))` with `a(0)=1`
-/

namespace A267258.P8747782298764032590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A267155 (n + 2))

end

end A267258.P8747782298764032590

namespace A267258

/-- `or(2*a(n-1), A267155(n+2))` -/
def P8747782298764032590.Spec : Prop :=
  ∀ n, P8747782298764032590.a n = A267258 n

end A267258

/-! ## A267258.P6204988317042592206

`xor(2*a(n-1), A059841(A084461(n+1)))` with `a(0)=1`
-/

namespace A267258.P6204988317042592206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A059841 (A084461 (n + 1)).toNat)

end

end A267258.P6204988317042592206

namespace A267258

/-- `xor(2*a(n-1), A059841(A084461(n+1)))` -/
def P6204988317042592206.Spec : Prop :=
  ∀ n, P6204988317042592206.a n = A267258 n

end A267258

/-! ## A267258.P12077626834764091071

`A267157(n+2)-A007283(n)`
-/

namespace A267258.P12077626834764091071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267157 (n + 2) - A007283 n

end

end A267258.P12077626834764091071

namespace A267258

/-- `A267157(n+2)-A007283(n)` -/
def P12077626834764091071.Spec : Prop :=
  ∀ n, P12077626834764091071.a n = A267258 n

end A267258

/-! ## A267258.P6451084076621630302

`or(2*a(n-1), A050873(A056000(n)))` with `a(0)=1`
-/

namespace A267258.P6451084076621630302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A050873 (A056000 n).toNat)

end

end A267258.P6451084076621630302

namespace A267258

/-- `or(2*a(n-1), A050873(A056000(n)))` -/
def P6451084076621630302.Spec : Prop :=
  ∀ n, P6451084076621630302.a n = A267258 n

end A267258

/-!
# A267259: Number of ON (black) cells in the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267259, the canonical program `A267259.P16464707296081217590` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267259 has offset 0).

The definition of A267259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267259.P16464707296081217590

`Δ[n²]-A267261(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267259

/-- `Δ[n²]-A267261(n)` -/
def P16464707296081217590.Spec : Prop :=
  ∀ n, P16464707296081217590.a n = A267259 n

theorem P16464707296081217590.correct : P16464707296081217590.Spec := by
  intro n
  simp only [A267259]

end A267259

/-! ## A267259.P5094192752194377566

`A266792(n)+char[2*(n+1)]`
-/

namespace A267259.P5094192752194377566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266792 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267259.P5094192752194377566

namespace A267259

/-- `A266792(n)+char[2*(n+1)]` -/
def P5094192752194377566.Spec : Prop :=
  ∀ n, P5094192752194377566.a n = A267259 n

end A267259

/-! ## A267259.P5206966188826579984

`A005843(n)+1-A267261(n)`
-/

namespace A267259.P5206966188826579984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267261 n)

end

end A267259.P5206966188826579984

namespace A267259

/-- `A005843(n)+1-A267261(n)` -/
def P5206966188826579984.Spec : Prop :=
  ∀ n, P5206966188826579984.a n = A267259 n

theorem P5206966188826579984.correct : P5206966188826579984.Spec := by
  intro n
  simp only [A267259, Nat.add_sub_cancel, A267259.P5206966188826579984.a, A267259.P16464707296081217590.f1, A267259.P16464707296081217590.a, A005843, A005843.P3167286115683555970.a, A267261, A267261.P3387360367513525929.a, A267262, A267262.P8589735387793530781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267259

/-! ## A267259.P607517282176053386

`A040001(n)+A266792(n)-1`
-/

namespace A267259.P607517282176053386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + (A266792 n - 1)

end

end A267259.P607517282176053386

namespace A267259

/-- `A040001(n)+A266792(n)-1` -/
def P607517282176053386.Spec : Prop :=
  ∀ n, P607517282176053386.a n = A267259 n

end A267259

/-! ## A267259.P9132035486864437665

`A000027(n+1)+n-A267261(n)`
-/

namespace A267259.P9132035486864437665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A267261 n)

end

end A267259.P9132035486864437665

namespace A267259

/-- `A000027(n+1)+n-A267261(n)` -/
def P9132035486864437665.Spec : Prop :=
  ∀ n, P9132035486864437665.a n = A267259 n

theorem P9132035486864437665.correct : P9132035486864437665.Spec := by
  intro n
  simp only [A267259, Nat.add_sub_cancel, A267259.P9132035486864437665.a, A267259.P16464707296081217590.f1, A267259.P16464707296081217590.a, A000027, A000027.P10331202704469894836.a, A267261, A267261.P3387360367513525929.a, A267262, A267262.P8589735387793530781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267259

/-! ## A267259.P2936682306589498944

`(n-A267261(n))%A007310(n+1)+n+1`
-/

namespace A267259.P2936682306589498944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A267261 n) (A007310 (n + 1)) + (n + 1 : ℤ)

end

end A267259.P2936682306589498944

namespace A267259

/-- `(n-A267261(n))%A007310(n+1)+n+1` -/
def P2936682306589498944.Spec : Prop :=
  ∀ n, P2936682306589498944.a n = A267259 n

end A267259

/-! ## A267259.P8560804584837248893

`(n-A267261(n)+n+1)%A091272(n+1)`
-/

namespace A267259.P8560804584837248893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A267261 n + (n + 1 : ℤ)) (A091272 (n + 1))

end

end A267259.P8560804584837248893

namespace A267259

/-- `(n-A267261(n)+n+1)%A091272(n+1)` -/
def P8560804584837248893.Spec : Prop :=
  ∀ n, P8560804584837248893.a n = A267259 n

end A267259

/-! ## A267259.P9067358725477755921

`A000290(n+1)-(A267261(n)+A000290(n))`
-/

namespace A267259.P9067358725477755921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A267261 n + A000290 n)

end

end A267259.P9067358725477755921

namespace A267259

/-- `A000290(n+1)-(A267261(n)+A000290(n))` -/
def P9067358725477755921.Spec : Prop :=
  ∀ n, P9067358725477755921.a n = A267259 n

theorem P9067358725477755921.correct : P9067358725477755921.Spec := by
  intro n
  simp only [A267259, Nat.add_sub_cancel, A267259.P9067358725477755921.a, A267259.P16464707296081217590.f1, A267259.P16464707296081217590.a, A000290, A000290.P12206242496348924484.a, A267261, A267261.P3387360367513525929.a, A267262, A267262.P8589735387793530781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267259

/-! ## A267259.P13365927241948741115

`A269359(A269359(n+1))+n-A267261(n)`
-/

namespace A267259.P13365927241948741115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269359 (A269359 (n + 1)).toNat + ((n : ℤ) - A267261 n)

end

end A267259.P13365927241948741115

namespace A267259

/-- `A269359(A269359(n+1))+n-A267261(n)` -/
def P13365927241948741115.Spec : Prop :=
  ∀ n, P13365927241948741115.a n = A267259 n

end A267259

/-! ## A267259.P4904201826537075994

`∑{digits}[A267254(n), #]`
-/

namespace A267259.P4904201826537075994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A267259.P4904201826537075994

namespace A267259

/-- `∑{digits}[A267254(n), #]` -/
def P4904201826537075994.Spec : Prop :=
  ∀ n, (P4904201826537075994.a n : ℤ) = A267259 n

end A267259

/-!
# A267260: Total number of ON (black) cells after n iterations of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267260, the canonical program `A267260.P17358005146578031685` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267260 has offset 0).

The definition of A267260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267260.P16747729809533729682

`∑[A267259(n)]`
-/

namespace A267260.P16747729809533729682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267260.P16747729809533729682

namespace A267260

/-- `∑[A267259(n)]` -/
def P16747729809533729682.Spec : Prop :=
  ∀ n, P16747729809533729682.a n = A267260 n

end A267260

/-! ## A267260.P17358005146578031685

`(n+1)²-A267262(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267260

/-- `(n+1)²-A267262(n)` -/
def P17358005146578031685.Spec : Prop :=
  ∀ n, P17358005146578031685.a n = A267260 n

theorem P17358005146578031685.correct : P17358005146578031685.Spec := by
  intro n
  simp only [A267260]

end A267260

/-! ## A267260.P9100618386458232181

`∑[Δ[n²]-A267261(n)]`
-/

namespace A267260.P9100618386458232181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267260.P9100618386458232181

namespace A267260

/-- `∑[Δ[n²]-A267261(n)]` -/
def P9100618386458232181.Spec : Prop :=
  ∀ n, P9100618386458232181.a n = A267260 n

end A267260

/-! ## A267260.P502922429999453417

`A266793(n)+A004526(n)`
-/

namespace A267260.P502922429999453417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266793 n + A004526 n

end

end A267260.P502922429999453417

namespace A267260

/-- `A266793(n)+A004526(n)` -/
def P502922429999453417.Spec : Prop :=
  ∀ n, P502922429999453417.a n = A267260 n

end A267260

/-! ## A267260.P10088510092528536850

`A213398(n)-A266795(n)`
-/

namespace A267260.P10088510092528536850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n - A266795 n

end

end A267260.P10088510092528536850

namespace A267260

/-- `A213398(n)-A266795(n)` -/
def P10088510092528536850.Spec : Prop :=
  ∀ n, P10088510092528536850.a n = A267260 n

end A267260

/-! ## A267260.P5540513220814645098

`A183302(A266793(n))`
-/

namespace A267260.P5540513220814645098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183302 (A266793 n).toNat

end

end A267260.P5540513220814645098

namespace A267260

/-- `A183302(A266793(n))` -/
def P5540513220814645098.Spec : Prop :=
  ∀ n, P5540513220814645098.a n = A267260 n

end A267260

/-! ## A267260.P644223868754805562

`∑[∑{digits}[A267254(n), #]]`
-/

namespace A267260.P644223868754805562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267254 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267260.P644223868754805562

namespace A267260

/-- `∑[∑{digits}[A267254(n), #]]` -/
def P644223868754805562.Spec : Prop :=
  ∀ n, (P644223868754805562.a n : ℤ) = A267260 n

end A267260

/-!
# A267261: Number of OFF (white) cells in the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267261, the canonical program `A267261.P3387360367513525929` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267261 has offset 0).

The definition of A267261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267261.P12344476548815023948

`Δ[n²]-A267259(n)`
-/

namespace A267261.P12344476548815023948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267259 n

end

end A267261.P12344476548815023948

namespace A267261

/-- `Δ[n²]-A267259(n)` -/
def P12344476548815023948.Spec : Prop :=
  ∀ n, P12344476548815023948.a n = A267261 n

theorem P12344476548815023948.correct : P12344476548815023948.Spec := by
  intro n
  simp only [A267261, Nat.add_sub_cancel, A267261.P12344476548815023948.f1, A267261.P12344476548815023948.a, A267261.P3387360367513525929.a, A267259, A267259.P16464707296081217590.f1, A267259.P16464707296081217590.a, A267262, A267262.P8589735387793530781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267261

/-! ## A267261.P546418762050893365

`A266794(n)-char[2*(n+1)]`
-/

namespace A267261.P546418762050893365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267261.P546418762050893365

namespace A267261

/-- `A266794(n)-char[2*(n+1)]` -/
def P546418762050893365.Spec : Prop :=
  ∀ n, P546418762050893365.a n = A267261 n

end A267261

/-! ## A267261.P16079417222960996106

`n+1-A267259(n%(n+1))+n`
-/

namespace A267261.P16079417222960996106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267259 (n % (n + 1)) + (n : ℤ)

end

end A267261.P16079417222960996106

namespace A267261

/-- `n+1-A267259(n%(n+1))+n` -/
def P16079417222960996106.Spec : Prop :=
  ∀ n, P16079417222960996106.a n = A267261 n

end A267261

/-! ## A267261.P1106704463952338330

`A005843(n)+1-A267259(n)`
-/

namespace A267261.P1106704463952338330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267259 n)

end

end A267261.P1106704463952338330

namespace A267261

/-- `A005843(n)+1-A267259(n)` -/
def P1106704463952338330.Spec : Prop :=
  ∀ n, P1106704463952338330.a n = A267261 n

theorem P1106704463952338330.correct : P1106704463952338330.Spec := by
  intro n
  simp only [A267261, Nat.add_sub_cancel, A267261.P1106704463952338330.a, A267261.P3387360367513525929.a, A005843, A005843.P3167286115683555970.a, A267259, A267259.P16464707296081217590.f1, A267259.P16464707296081217590.a, A267262, A267262.P8589735387793530781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267261

/-! ## A267261.P15514652145527354358

`A000027(n+1)+n-A267259(n)`
-/

namespace A267261.P15514652145527354358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A267259 n)

end

end A267261.P15514652145527354358

namespace A267261

/-- `A000027(n+1)+n-A267259(n)` -/
def P15514652145527354358.Spec : Prop :=
  ∀ n, P15514652145527354358.a n = A267261 n

theorem P15514652145527354358.correct : P15514652145527354358.Spec := by
  intro n
  simp only [A267261, Nat.add_sub_cancel, A267261.P15514652145527354358.a, A267261.P3387360367513525929.a, A000027, A000027.P10331202704469894836.a, A267259, A267259.P16464707296081217590.f1, A267259.P16464707296081217590.a, A267262, A267262.P8589735387793530781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267261

/-! ## A267261.P3387360367513525929

`A267262(n)-A267262((2*n)%(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267261

/-- `A267262(n)-A267262((2*n)%(n+1))` -/
def P3387360367513525929.Spec : Prop :=
  ∀ n, P3387360367513525929.a n = A267261 n

theorem P3387360367513525929.correct : P3387360367513525929.Spec := by
  intro n
  simp only [A267261]

end A267261

/-! ## A267261.P5470089672497590541

`A266794(n)+A000035(n)-A257531(A000040(n+1))`
-/

namespace A267261.P5470089672497590541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n + A000035 n - A257531 (A000040 (n + 1)).toNat

end

end A267261.P5470089672497590541

namespace A267261

/-- `A266794(n)+A000035(n)-A257531(A000040(n+1))` -/
def P5470089672497590541.Spec : Prop :=
  ∀ n, P5470089672497590541.a n = A267261 n

end A267261

/-!
# A267262: Total number of OFF (white) cells after n iterations of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267262, the canonical program `A267262.P8589735387793530781` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267262 has offset 0).

The definition of A267262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267262.P8589735387793530781

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=9, a(5)=13, a(6)=20, a(7)=24, a(8)=35`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267262

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8589735387793530781.Spec : Prop :=
  ∀ n, P8589735387793530781.a n = A267262 n

theorem P8589735387793530781.correct : P8589735387793530781.Spec := by
  intro n
  simp only [A267262]

end A267262

/-! ## A267262.P7446443766069556860

`∑[A267261(n)]`
-/

namespace A267262.P7446443766069556860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267262.P7446443766069556860

namespace A267262

/-- `∑[A267261(n)]` -/
def P7446443766069556860.Spec : Prop :=
  ∀ n, P7446443766069556860.a n = A267262 n

end A267262

/-! ## A267262.P9506378711739652175

`(n+1)²-A267260(n)`
-/

namespace A267262.P9506378711739652175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267260 n

end

end A267262.P9506378711739652175

namespace A267262

/-- `(n+1)²-A267260(n)` -/
def P9506378711739652175.Spec : Prop :=
  ∀ n, P9506378711739652175.a n = A267262 n

theorem P9506378711739652175.correct : P9506378711739652175.Spec := by
  intro n
  simp only [A267262, Nat.add_sub_cancel, A267262.P9506378711739652175.a, A267262.P8589735387793530781.a, A267260, A267260.P17358005146578031685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267262

/-! ## A267262.P4660762548324328652

`∑[Δ[n²]-A267259(n)]`
-/

namespace A267262.P4660762548324328652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267262.P4660762548324328652

namespace A267262

/-- `∑[Δ[n²]-A267259(n)]` -/
def P4660762548324328652.Spec : Prop :=
  ∀ n, P4660762548324328652.a n = A267262 n

end A267262

/-! ## A267262.P16690706583736240293

`A266795(n)-A004526(n)`
-/

namespace A267262.P16690706583736240293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266795 n - A004526 n

end

end A267262.P16690706583736240293

namespace A267262

/-- `A266795(n)-A004526(n)` -/
def P16690706583736240293.Spec : Prop :=
  ∀ n, P16690706583736240293.a n = A267262 n

end A267262

/-! ## A267262.P9156463388507566231

`∑[A266794(n)]-A004526(n)`
-/

namespace A267262.P9156463388507566231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 n

end

end A267262.P9156463388507566231

namespace A267262

/-- `∑[A266794(n)]-A004526(n)` -/
def P9156463388507566231.Spec : Prop :=
  ∀ n, P9156463388507566231.a n = A267262 n

end A267262

/-! ## A267262.P5414977502148074417

`∑[A266794(n)+A000035(n)]-n`
-/

namespace A267262.P5414977502148074417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A267262.P5414977502148074417

namespace A267262

/-- `∑[A266794(n)+A000035(n)]-n` -/
def P5414977502148074417.Spec : Prop :=
  ∀ n, P5414977502148074417.a n = A267262 n

end A267262

/-! ## A267262.P3410415506633354394

`∑[2*n+1-∑{digits}[A267254(n), #]]`
-/

namespace A267262.P3410415506633354394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267262.P3410415506633354394

namespace A267262

/-- `∑[2*n+1-∑{digits}[A267254(n), #]]` -/
def P3410415506633354394.Spec : Prop :=
  ∀ n, P3410415506633354394.a n = A267262 n

end A267262

/-!
# A267263: Number of nonzero digits in representation of n in primorial base.

The programs for A267263, the canonical program `A267263.P541567630172199219` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267263 has offset 0).

The definition of A267263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267263.P4934450477738065666

`A001221(A328571(n))`
-/

namespace A267263.P4934450477738065666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328571 n).toNat

end

end A267263.P4934450477738065666

namespace A267263

/-- `A001221(A328571(n))` -/
def P4934450477738065666.Spec : Prop :=
  ∀ n, P4934450477738065666.a n = A267263 n

end A267263

/-! ## A267263.P2347509259468676909

`A001222(A328835(n))`
-/

namespace A267263.P2347509259468676909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328835 n).toNat

end

end A267263.P2347509259468676909

namespace A267263

/-- `A001222(A328835(n))` -/
def P2347509259468676909.Spec : Prop :=
  ∀ n, P2347509259468676909.a n = A267263 n

end A267263

/-! ## A267263.P16613627864695116596

`A328614(n)+A328615(n)`
-/

namespace A267263.P16613627864695116596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 n + A328615 n

end

end A267263.P16613627864695116596

namespace A267263

/-- `A328614(n)+A328615(n)` -/
def P16613627864695116596.Spec : Prop :=
  ∀ n, P16613627864695116596.a n = A267263 n

end A267263

/-! ## A267263.P17437297306936216531

`A392608(n)+A392610(n)`
-/

namespace A267263.P17437297306936216531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392608 n + A392610 n

end

end A267263.P17437297306936216531

namespace A267263

/-- `A392608(n)+A392610(n)` -/
def P17437297306936216531.Spec : Prop :=
  ∀ n, P17437297306936216531.a n = A267263 n

end A267263

/-! ## A267263.P5749028726421355707

`A069010(A277022(n))`
-/

namespace A267263.P5749028726421355707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A277022 n).toNat

end

end A267263.P5749028726421355707

namespace A267263

/-- `A069010(A277022(n))` -/
def P5749028726421355707.Spec : Prop :=
  ∀ n, P5749028726421355707.a n = A267263 n

end A267263

/-! ## A267263.P3386525115367694501

`A001221(A276086(n))`
-/

namespace A267263.P3386525115367694501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276086 n).toNat

end

end A267263.P3386525115367694501

namespace A267263

/-- `A001221(A276086(n))` -/
def P3386525115367694501.Spec : Prop :=
  ∀ n, P3386525115367694501.a n = A267263 n

end A267263

/-! ## A267263.P541567630172199219

`a(A260187(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A267263

/-- `a(A260187(n))+1` -/
def P541567630172199219.Spec : Prop :=
  ∀ n, (P541567630172199219.a n : ℤ) = A267263 n

theorem P541567630172199219.correct : P541567630172199219.Spec := by
  intro n
  simp only [A267263]

end A267263

/-! ## A267263.P12886627331231405693

`A235224(n)-A328620(n)`
-/

namespace A267263.P12886627331231405693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n - A328620 n

end

end A267263.P12886627331231405693

namespace A267263

/-- `A235224(n)-A328620(n)` -/
def P12886627331231405693.Spec : Prop :=
  ∀ n, P12886627331231405693.a n = A267263 n

theorem P12886627331231405693.correct : P12886627331231405693.Spec := by
  intro n
  simp only [A267263, Nat.add_sub_cancel, A267263.P12886627331231405693.a, A267263.P541567630172199219.a, A235224, A235224.P9540919302901513135.f2, A235224.P9540919302901513135.f1, A235224.P9540919302901513135.a, A260187, A260187.P12900667191599328450.a, A328620, A328620.P17305493884034460707.a, A260188, A260188.P5872051986536960582.a, A300951, A300951.P16227161527495429065.a, A014963, A014963.P5975177236000282614.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A052955, A052955.P5313474801376957548.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267263

/-! ## A267263.P13001553559727295888

`A276150(n-A328842(n))`
-/

namespace A267263.P13001553559727295888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 ((n : ℤ) - A328842 n).toNat

end

end A267263.P13001553559727295888

namespace A267263

/-- `A276150(n-A328842(n))` -/
def P13001553559727295888.Spec : Prop :=
  ∀ n, P13001553559727295888.a n = A267263 n

end A267263

/-! ## A267263.P3683292238193506644

`A366693(n-A328842(n))`
-/

namespace A267263.P3683292238193506644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366693 ((n : ℤ) - A328842 n).toNat

end

end A267263.P3683292238193506644

namespace A267263

/-- `A366693(n-A328842(n))` -/
def P3683292238193506644.Spec : Prop :=
  ∀ n, P3683292238193506644.a n = A267263 n

end A267263

/-! ## A267263.P3486291295958068507

`A001222(A328571(2*n-n))`
-/

namespace A267263.P3486291295958068507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328571 (2 * n - n)).toNat

end

end A267263.P3486291295958068507

namespace A267263

/-- `A001222(A328571(2*n-n))` -/
def P3486291295958068507.Spec : Prop :=
  ∀ n, P3486291295958068507.a n = A267263 n

end A267263

/-! ## A267263.P3112601159096134763

`A000005(2*A000005(A328571(n)))-2`
-/

namespace A267263.P3112601159096134763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A000005 (A328571 n).toNat).toNat - 2

end

end A267263.P3112601159096134763

namespace A267263

/-- `A000005(2*A000005(A328571(n)))-2` -/
def P3112601159096134763.Spec : Prop :=
  ∀ n, P3112601159096134763.a n = A267263 n

end A267263

/-! ## A267263.P4638234012314371129

`∑{digits}[A049345(n), A276088(A276088(#))]`
-/

namespace A267263.P4638234012314371129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A276088 (A276088 x).toNat).sum

end

end A267263.P4638234012314371129

namespace A267263

/-- `∑{digits}[A049345(n), A276088(A276088(#))]` -/
def P4638234012314371129.Spec : Prop :=
  ∀ n, P4638234012314371129.a n = A267263 n

end A267263

/-! ## A267263.P2686545651889025560

`A079067(A328613(n))`
-/

namespace A267263.P2686545651889025560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A328613 n).toNat

end

end A267263.P2686545651889025560

namespace A267263

/-- `A079067(A328613(n))` -/
def P2686545651889025560.Spec : Prop :=
  ∀ n, P2686545651889025560.a n = A267263 n

end A267263

/-! ## A267263.P1026091077816099071

`∑{e}[A278226(n), A034693(A034693(#))]`
-/

namespace A267263.P1026091077816099071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034693 (A034693 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A267263.P1026091077816099071

namespace A267263

/-- `∑{e}[A278226(n), A034693(A034693(#))]` -/
def P1026091077816099071.Spec : Prop :=
  ∀ n, P1026091077816099071.a n = A267263 n

end A267263

/-! ## A267263.P16253419031907274057

`A001222(A328571(n)²)/2`
-/

namespace A267263.P16253419031907274057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A328571 n ^ 2).toNat : ℚ) / 2

end

end A267263.P16253419031907274057

namespace A267263

/-- `A001222(A328571(n)²)/2` -/
def P16253419031907274057.Spec : Prop :=
  ∀ n, P16253419031907274057.a n = (A267263 n : ℚ)

end A267263

/-! ## A267263.P302750209016334794

`A055640(A049345(n))`
-/

namespace A267263.P302750209016334794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A049345 n).toNat

end

end A267263.P302750209016334794

namespace A267263

/-- `A055640(A049345(n))` -/
def P302750209016334794.Spec : Prop :=
  ∀ n, P302750209016334794.a n = A267263 n

end A267263

/-! ## A267263.P1598773800046377024

`A102669(A049345(n)+A049345(n)+1)`
-/

namespace A267263.P1598773800046377024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A049345 n + (A049345 n + 1)).toNat

end

end A267263.P1598773800046377024

namespace A267263

/-- `A102669(A049345(n)+A049345(n)+1)` -/
def P1598773800046377024.Spec : Prop :=
  ∀ n, P1598773800046377024.a n = A267263 n

end A267263

/-! ## A267263.P4842361880628614782

`A001221(A278226(n))`
-/

namespace A267263.P4842361880628614782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278226 n).toNat

end

end A267263.P4842361880628614782

namespace A267263

/-- `A001221(A278226(n))` -/
def P4842361880628614782.Spec : Prop :=
  ∀ n, P4842361880628614782.a n = A267263 n

end A267263

/-!
# A267264: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north, northeast or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267264, there is no canonical definition to state claims against.
-/

/-! ## A267264.P15722228105279787448

`gcd(A060543(n), A073579(A245501(n)))`
-/

namespace A267264.P15722228105279787448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060543 n) (A073579 (A245501 n).toNat)

end

end A267264.P15722228105279787448

/-! ## A267264.P5515710277559047107

`A060543(n*A062892(A128724(n)))`
-/

namespace A267264.P5515710277559047107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060543 ((n : ℤ) * A062892 (A128724 n).toNat).toNat

end

end A267264.P5515710277559047107

/-! ## A267264.P11085452625375086410

`A060543(n*A341743(A291883(n)))`
-/

namespace A267264.P11085452625375086410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060543 ((n : ℤ) * A341743 (A291883 n).toNat).toNat

end

end A267264.P11085452625375086410

/-! ## A267264.P17591792740205990475

`A060543(n)^A037213(A128724(n))`
-/

namespace A267264.P17591792740205990475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060543 n : ℚ) ^ (A037213 (A128724 n).toNat : ℤ)

end

end A267264.P17591792740205990475

/-! ## A267264.P8247656104471111322

`A060543(n)^A341743(A291883(n))`
-/

namespace A267264.P8247656104471111322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060543 n : ℚ) ^ (A341743 (A291883 n).toNat : ℤ)

end

end A267264.P8247656104471111322

/-!
# A267265: Number of 4 X n arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north, northeast or northwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267265, there is no canonical definition to state claims against.
-/

/-! ## A267265.P11132181145185763749

`A267264(A141214(n)+7)`
-/

namespace A267265.P11132181145185763749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A141214 n + 7).toNat

end

end A267265.P11132181145185763749

/-! ## A267265.P12076116467549516027

`A267264(A052905(n)+9)`
-/

namespace A267265.P12076116467549516027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A052905 n + 9).toNat

end

end A267265.P12076116467549516027

/-! ## A267265.P9345018487934593737

`A267264(A055999(n)+10)`
-/

namespace A267265.P9345018487934593737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A055999 n + 10).toNat

end

end A267265.P9345018487934593737

/-! ## A267265.P7463014409371353801

`A267264(A167614(n+2)+1)`
-/

namespace A267265.P7463014409371353801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A167614 (n + 2) + 1).toNat

end

end A267265.P7463014409371353801

/-! ## A267265.P12347662377783988025

`A267264(A000217(n+3)+4)`
-/

namespace A267265.P12347662377783988025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A000217 (n + 3) + 4).toNat

end

end A267265.P12347662377783988025

/-!
# A267266: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north, northeast or northwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267266, there is no canonical definition to state claims against.
-/

/-! ## A267266.P10208976135072113601

`A267264(A155212(n)+13)`
-/

namespace A267266.P10208976135072113601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A155212 n + 13).toNat

end

end A267266.P10208976135072113601

/-! ## A267266.P6842356002171150624

`A267264(A000217(n+4)+5)`
-/

namespace A267266.P6842356002171150624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A000217 (n + 4) + 5).toNat

end

end A267266.P6842356002171150624

/-! ## A267266.P15179662636136479066

`A267264(eq[3, A259094(n+1)])`
-/

namespace A267266.P15179662636136479066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267266.P15179662636136479066

/-! ## A267266.P14314830658856952318

`A129646(A074029(n+1))`
-/

namespace A267266.P14314830658856952318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129646 (A074029 (n + 1)).toNat

end

end A267266.P14314830658856952318

/-! ## A267266.P3608884008573793143

`A182244(6^A108577(n+1))`
-/

namespace A267266.P3608884008573793143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182244 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A108577 (n + 1) : ℤ))).toNat

end

end A267266.P3608884008573793143

/-!
# A267267: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north, northeast or northwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267267, there is no canonical definition to state claims against.
-/

/-! ## A267267.P1859443322960031972

`A267264(A167499(n+4)+1)`
-/

namespace A267267.P1859443322960031972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A167499 (n + 4) + 1).toNat

end

end A267267.P1859443322960031972

/-! ## A267267.P3785916370529440686

`A267264(A167614(n+4)+3)`
-/

namespace A267267.P3785916370529440686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A167614 (n + 4) + 3).toNat

end

end A267267.P3785916370529440686

/-! ## A267267.P15143851370017647604

`A267264(eq[4, A219347(n)]-Δ[n²])`
-/

namespace A267267.P15143851370017647604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

end

end A267267.P15143851370017647604

/-! ## A267267.P12093677781855212269

`A162610(A106439(n+1)^∏{digits}[n, #%C(n, #)])`
-/

namespace A267267.P12093677781855212269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (A106439 (n + 1) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).prod).toNat

end

end A267267.P12093677781855212269

/-! ## A267267.P13507947614110610177

`A162610(A106439(n+1)^(n%10*floor(n/10)))`
-/

namespace A267267.P13507947614110610177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (SequenceMachineLib.roundAway ((A106439 (n + 1) : ℚ) ^ (((n % 10 : ℕ) : ℤ) * ⌊(n : ℚ) / 10⌋ : ℤ))).toNat

end

end A267267.P13507947614110610177

/-!
# A267268: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A267268, there is no canonical definition to state claims against.
-/

/-! ## A267268.P12426896659268567963

`A269523(2^n-1)`
-/

namespace A267268.P12426896659268567963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269523 (2 ^ n - 1)

end

end A267268.P12426896659268567963

/-! ## A267268.P16983369448998227937

`or(1, A269523(A000225(n)))`
-/

namespace A267268.P16983369448998227937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269523 (A000225 n).toNat)

end

end A267268.P16983369448998227937

/-! ## A267268.P13341064423647470076

`record[A269523(A269386(n+1))]`
-/

namespace A267268.P13341064423647470076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269523 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267268.P13341064423647470076

/-! ## A267268.P5503037679124094105

`record[A269523(A324877(n+1))]`
-/

namespace A267268.P5503037679124094105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269523 (A324877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267268.P5503037679124094105

/-! ## A267268.P14339870575299367169

`record[gcd(A035327(n), A269523(n))]`
-/

namespace A267268.P14339870575299367169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A269523 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267268.P14339870575299367169

/-!
# A267269: Triangle read by rows giving successive states of cellular automaton generated by "Rule 115" initiated with a single ON (black) cell.

The programs for A267269, the canonical program `A267269.P7578572907619052116` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267269 has offset 0).

The definition of A267269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267269.P7578572907619052116

`A266716(A020703(n+1)-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A267269

/-- `A266716(A020703(n+1)-1)` -/
def P7578572907619052116.Spec : Prop :=
  ∀ n, P7578572907619052116.a n = A267269 n

theorem P7578572907619052116.correct : P7578572907619052116.Spec := by
  intro n
  simp only [A267269]

end A267269

/-! ## A267269.P10930184283109138460

`A266716(A057428(n)+A020703(n+1))`
-/

namespace A267269.P10930184283109138460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A057428 n + A020703 (n + 1)).toNat

end

end A267269.P10930184283109138460

namespace A267269

/-- `A266716(A057428(n)+A020703(n+1))` -/
def P10930184283109138460.Spec : Prop :=
  ∀ n, P10930184283109138460.a n = A267269 n

end A267269

/-! ## A267269.P14353803145039612669

`A266716(A020703(n+2)%A266723(n))`
-/

namespace A267269.P14353803145039612669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (Int.tmod (A020703 (n + 2)) (A266723 n)).toNat

end

end A267269.P14353803145039612669

namespace A267269

/-- `A266716(A020703(n+2)%A266723(n))` -/
def P14353803145039612669.Spec : Prop :=
  ∀ n, P14353803145039612669.a n = A267269 n

end A267269

/-! ## A267269.P6342784377283376290

`or(A266716(A020703(n+2)), A267001(n))`
-/

namespace A267269.P6342784377283376290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266716 (A020703 (n + 2)).toNat) (A267001 n)

end

end A267269.P6342784377283376290

namespace A267269

/-- `or(A266716(A020703(n+2)), A267001(n))` -/
def P6342784377283376290.Spec : Prop :=
  ∀ n, P6342784377283376290.a n = A267269 n

end A267269

/-! ## A267269.P14401829229216848620

`A266716(A033999(2*n+1)+A020703(n+1))`
-/

namespace A267269.P14401829229216848620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A033999 (2 * n + 1) + A020703 (n + 1)).toNat

end

end A267269.P14401829229216848620

namespace A267269

/-- `A266716(A033999(2*n+1)+A020703(n+1))` -/
def P14401829229216848620.Spec : Prop :=
  ∀ n, P14401829229216848620.a n = A267269 n

end A267269

/-!
# A267270: Binary representation of the n-th iteration of the "Rule 115" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267270, there is no canonical definition to state claims against.
-/

/-! ## A267270.P4022602309296587193

`A007088(A267271(n))`
-/

namespace A267270.P4022602309296587193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267271 n).toNat

end

end A267270.P4022602309296587193

/-! ## A267270.P13048211173075656683

`A185544(2*A267271(n))`
-/

namespace A267270.P13048211173075656683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267271 n).toNat

end

end A267270.P13048211173075656683

/-!
# A267271: Decimal representation of the n-th iteration of the "Rule 115" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267271, the canonical program `A267271.P1576574748171931790` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267271 has offset 0).

The definition of A267271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267271.P1576574748171931790

`or(A029744(A016777(n)), A267003(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267271

/-- `or(A029744(A016777(n)), A267003(n))` -/
def P1576574748171931790.Spec : Prop :=
  ∀ n, P1576574748171931790.a n = A267271 n

theorem P1576574748171931790.correct : P1576574748171931790.Spec := by
  intro n
  simp only [A267271]

end A267271

/-! ## A267271.P7446708450962141785

`A318514(A267003(n))`
-/

namespace A267271.P7446708450962141785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318514 (A267003 n).toNat

end

end A267271.P7446708450962141785

namespace A267271

/-- `A318514(A267003(n))` -/
def P7446708450962141785.Spec : Prop :=
  ∀ n, P7446708450962141785.a n = A267271 n

end A267271

/-! ## A267271.P10875616603322769844

`A032742(3*A267003(n))`
-/

namespace A267271.P10875616603322769844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (3 * A267003 n).toNat

end

end A267271.P10875616603322769844

namespace A267271

/-- `A032742(3*A267003(n))` -/
def P10875616603322769844.Spec : Prop :=
  ∀ n, P10875616603322769844.a n = A267271 n

end A267271

/-!
# A267272: Triangle read by rows giving successive states of cellular automaton generated by "Rule 117" initiated with a single ON (black) cell.

The programs for A267272, the canonical program `A267272.P2548666978376878626` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267272 has offset 0).

The definition of A267272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267272.P14105386359532143170

`A266982(char[2]+n)`
-/

namespace A267272.P14105386359532143170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A267272.P14105386359532143170

namespace A267272

/-- `A266982(char[2]+n)` -/
def P14105386359532143170.Spec : Prop :=
  ∀ n, P14105386359532143170.a n = A267272 n

end A267272

/-! ## A267272.P13330726753714598876

`(char[2]-A266982(n))²`
-/

namespace A267272.P13330726753714598876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A266982 n) ^ 2

end

end A267272.P13330726753714598876

namespace A267272

/-- `(char[2]-A266982(n))²` -/
def P13330726753714598876.Spec : Prop :=
  ∀ n, P13330726753714598876.a n = A267272 n

end A267272

/-! ## A267272.P2548666978376878626

`A267034(n-C(n, C(2, n)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A267272

/-- `A267034(n-C(n, C(2, n)))` -/
def P2548666978376878626.Spec : Prop :=
  ∀ n, P2548666978376878626.a n = A267272 n

theorem P2548666978376878626.correct : P2548666978376878626.Spec := by
  intro n
  simp only [A267272]

end A267272

/-! ## A267272.P17699045561070958426

`∑[∑[A267533(n)]+n]%2`
-/

namespace A267272.P17699045561070958426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A267272.P17699045561070958426

namespace A267272

/-- `∑[∑[A267533(n)]+n]%2` -/
def P17699045561070958426.Spec : Prop :=
  ∀ n, P17699045561070958426.a n = A267272 n

end A267272

/-! ## A267272.P8352300251059627560

`A266982(n)+A185012(n)`
-/

namespace A267272.P8352300251059627560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 n + A185012 n

end

end A267272.P8352300251059627560

namespace A267272

/-- `A266982(n)+A185012(n)` -/
def P8352300251059627560.Spec : Prop :=
  ∀ n, P8352300251059627560.a n = A267272 n

end A267272

/-! ## A267272.P16039443787588998261

`A267034(2*n-A326178(n))`
-/

namespace A267272.P16039443787588998261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 ((2 * n : ℤ) - A326178 n).toNat

end

end A267272.P16039443787588998261

namespace A267272

/-- `A267034(2*n-A326178(n))` -/
def P16039443787588998261.Spec : Prop :=
  ∀ n, P16039443787588998261.a n = A267272 n

end A267272

/-! ## A267272.P9361393357053571989

`A267034(n-A326178(n)+n)`
-/

namespace A267272.P9361393357053571989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 ((n : ℤ) - A326178 n + (n : ℤ)).toNat

end

end A267272.P9361393357053571989

namespace A267272

/-- `A267034(n-A326178(n)+n)` -/
def P9361393357053571989.Spec : Prop :=
  ∀ n, P9361393357053571989.a n = A267272 n

end A267272

/-! ## A267272.P4610043715156224798

`A267034(n-(A326178(n)-n))`
-/

namespace A267272.P4610043715156224798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 ((n : ℤ) - (A326178 n - (n : ℤ))).toNat

end

end A267272.P4610043715156224798

namespace A267272

/-- `A267034(n-(A326178(n)-n))` -/
def P4610043715156224798.Spec : Prop :=
  ∀ n, P4610043715156224798.a n = A267272 n

end A267272

/-! ## A267272.P856190094958384471

`A059841(A000194(A000194(n+1)-1+n))`
-/

namespace A267272.P856190094958384471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000194 (A000194 (n + 1) - 1 + (n : ℤ)).toNat).toNat

end

end A267272.P856190094958384471

namespace A267272

/-- `A059841(A000194(A000194(n+1)-1+n))` -/
def P856190094958384471.Spec : Prop :=
  ∀ n, P856190094958384471.a n = A267272 n

end A267272

/-! ## A267272.P7169720532581070562

`A267034(A094064(char[2]+n))`
-/

namespace A267272.P7169720532581070562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A094064 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A267272.P7169720532581070562

namespace A267272

/-- `A267034(A094064(char[2]+n))` -/
def P7169720532581070562.Spec : Prop :=
  ∀ n, P7169720532581070562.a n = A267272 n

end A267272

/-! ## A267272.P13962695616436584332

`A267034(A094064(n)-char[2])`
-/

namespace A267272.P13962695616436584332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A094064 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A267272.P13962695616436584332

namespace A267272

/-- `A267034(A094064(n)-char[2])` -/
def P13962695616436584332.Spec : Prop :=
  ∀ n, P13962695616436584332.a n = A267272 n

end A267272

/-! ## A267272.P2469447808646793244

`A266300(A184111(n+1))`
-/

namespace A267272.P2469447808646793244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A184111 (n + 1)).toNat

end

end A267272.P2469447808646793244

namespace A267272

/-- `A266300(A184111(n+1))` -/
def P2469447808646793244.Spec : Prop :=
  ∀ n, P2469447808646793244.a n = A267272 n

end A267272

/-! ## A267272.P18064177080802314488

`char[(n+2)*A266434(n)]`
-/

namespace A267272.P18064177080802314488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A266434 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267272.P18064177080802314488

namespace A267272

/-- `char[(n+2)*A266434(n)]` -/
def P18064177080802314488.Spec : Prop :=
  ∀ n, (P18064177080802314488.a n : ℤ) = A267272 n

end A267272

/-! ## A267272.P8409739561669505828

`char[A094064(n)*A267034(n)]`
-/

namespace A267272.P8409739561669505828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094064 n * A267034 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267272.P8409739561669505828

namespace A267272

/-- `char[A094064(n)*A267034(n)]` -/
def P8409739561669505828.Spec : Prop :=
  ∀ n, (P8409739561669505828.a n : ℤ) = A267272 n

end A267272

/-! ## A267272.P3572345570289267210

`A266434(and(n-2, A052549(n)))`
-/

namespace A267272.P3572345570289267210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (Int.land ((n : ℤ) - 2) (A052549 n)).toNat

end

end A267272.P3572345570289267210

namespace A267272

/-- `A266434(and(n-2, A052549(n)))` -/
def P3572345570289267210.Spec : Prop :=
  ∀ n, P3572345570289267210.a n = A267272 n

end A267272

/-!
# A267273: Binary representation of the n-th iteration of the "Rule 117" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267273, there is no canonical definition to state claims against.
-/

/-! ## A267273.P5300107452058886463

`gcd(A266970(n+1), A266975(n))*A266983(n)`
-/

namespace A267273.P5300107452058886463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A266970 (n + 1)) (A266975 n) : ℤ) * A266983 n

end

end A267273.P5300107452058886463

/-! ## A267273.P6357359762729690766

`A266983(n)+A010054(A000040(n+1))*A011557(n)`
-/

namespace A267273.P6357359762729690766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266983 n + A010054 (A000040 (n + 1)).toNat * A011557 n

end

end A267273.P6357359762729690766

/-! ## A267273.P4457972740137922471

`A266983(n)+A010054(A000040(n+1))*A119899(n+1)`
-/

namespace A267273.P4457972740137922471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266983 n + A010054 (A000040 (n + 1)).toNat * A119899 (n + 1)

end

end A267273.P4457972740137922471

/-! ## A267273.P2589975752865525944

`A266983(n)+A010054(A000040(n+1))*A136234(n+3)`
-/

namespace A267273.P2589975752865525944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266983 n + A010054 (A000040 (n + 1)).toNat * A136234 (n + 3)

end

end A267273.P2589975752865525944

/-! ## A267273.P15354788335915032814

`or(A154721(A067190(n+1)), A266983(n))`
-/

namespace A267273.P15354788335915032814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154721 (A067190 (n + 1)).toNat) (A266983 n)

end

end A267273.P15354788335915032814

/-!
# A267274: Decimal representation of the n-th iteration of the "Rule 117" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267274, the canonical program `A267274.P14752253401723931087` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267274 has offset 0).

The definition of A267274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267274.P14752253401723931087

`17*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=3, a(2)=24, a(3)=31, a(4)=384, a(5)=511`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267274

/-- `17*a(n-2)-16*a(n-4)` -/
def P14752253401723931087.Spec : Prop :=
  ∀ n, P14752253401723931087.a n = A267274 n

theorem P14752253401723931087.correct : P14752253401723931087.Spec := by
  intro n
  simp only [A267274]

end A267274

/-! ## A267274.P11560941118646651675

`A266984(n)+2*char[1]`
-/

namespace A267274.P11560941118646651675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266984 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A267274.P11560941118646651675

namespace A267274

/-- `A266984(n)+2*char[1]` -/
def P11560941118646651675.Spec : Prop :=
  ∀ n, P11560941118646651675.a n = A267274 n

end A267274

/-! ## A267274.P8440382461737621769

`lcm(floor(1/(γ-n)), A266984(n-char[1]))`
-/

namespace A267274.P8440382461737621769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A266984 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A267274.P8440382461737621769

namespace A267274

/-- `lcm(floor(1/(γ-n)), A266984(n-char[1]))` -/
def P8440382461737621769.Spec : Prop :=
  ∀ n, (P8440382461737621769.a n : ℤ) = A267274 n

end A267274

/-! ## A267274.P6512895521111642386

`or(A266220(n), A266984(n))`
-/

namespace A267274.P6512895521111642386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266220 n) (A266984 n)

end

end A267274.P6512895521111642386

namespace A267274

/-- `or(A266220(n), A266984(n))` -/
def P6512895521111642386.Spec : Prop :=
  ∀ n, P6512895521111642386.a n = A267274 n

end A267274

/-! ## A267274.P11972167560482757789

`or(A266437(n), A266984(n))`
-/

namespace A267274.P11972167560482757789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266437 n) (A266984 n)

end

end A267274.P11972167560482757789

namespace A267274

/-- `or(A266437(n), A266984(n))` -/
def P11972167560482757789.Spec : Prop :=
  ∀ n, P11972167560482757789.a n = A267274 n

end A267274

/-! ## A267274.P3305604506368349764

`or(A266984(n), A277928(n))`
-/

namespace A267274.P3305604506368349764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266984 n) (A277928 n)

end

end A267274.P3305604506368349764

namespace A267274

/-- `or(A266984(n), A277928(n))` -/
def P3305604506368349764.Spec : Prop :=
  ∀ n, P3305604506368349764.a n = A267274 n

end A267274

/-! ## A267274.P7653110183038975940

`or(A266984(n), A277936(n))`
-/

namespace A267274.P7653110183038975940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266984 n) (A277936 n)

end

end A267274.P7653110183038975940

namespace A267274

/-- `or(A266984(n), A277936(n))` -/
def P7653110183038975940.Spec : Prop :=
  ∀ n, P7653110183038975940.a n = A267274 n

end A267274

/-! ## A267274.P323598412321548352

`or(Δ[A052928(n)], A266984(n))`
-/

namespace A267274.P323598412321548352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A266984 n)

end

end A267274.P323598412321548352

namespace A267274

/-- `or(Δ[A052928(n)], A266984(n))` -/
def P323598412321548352.Spec : Prop :=
  ∀ n, P323598412321548352.a n = A267274 n

end A267274

/-! ## A267274.P5549808441933268392

`or(Δ[A109613(n)], A266984(n))`
-/

namespace A267274.P5549808441933268392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A266984 n)

end

end A267274.P5549808441933268392

namespace A267274

/-- `or(Δ[A109613(n)], A266984(n))` -/
def P5549808441933268392.Spec : Prop :=
  ∀ n, P5549808441933268392.a n = A267274 n

end A267274

/-! ## A267274.P65010447530857079

`or(A005127(A019426(n)), A266984(n))`
-/

namespace A267274.P65010447530857079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005127 (A019426 n).toNat) (A266984 n)

end

end A267274.P65010447530857079

namespace A267274

/-- `or(A005127(A019426(n)), A266984(n))` -/
def P65010447530857079.Spec : Prop :=
  ∀ n, P65010447530857079.a n = A267274 n

end A267274

/-! ## A267274.P13425728023922977583

`A014963(∑[n+1])*A266984(n)`
-/

namespace A267274.P13425728023922977583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A266984 n

end

end A267274.P13425728023922977583

namespace A267274

/-- `A014963(∑[n+1])*A266984(n)` -/
def P13425728023922977583.Spec : Prop :=
  ∀ n, P13425728023922977583.a n = A267274 n

end A267274

/-!
# A267275: Binary representation of the n-th iteration of the "Rule 118" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267275, there is no canonical definition to state claims against.
-/

/-! ## A267275.P8358676943529484715

`A007088(A267276(n))`
-/

namespace A267275.P8358676943529484715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267276 n).toNat

end

end A267275.P8358676943529484715

/-! ## A267275.P6337472378526808306

`A305989(A266810(n))`
-/

namespace A267275.P6337472378526808306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A266810 n).toNat

end

end A267275.P6337472378526808306

/-!
# A267276: Decimal representation of the n-th iteration of the "Rule 118" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267276, there is no canonical definition to state claims against.
-/

/-! ## A267276.P16713696600033441070

`A030101(A266810(n))`
-/

namespace A267276.P16713696600033441070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A266810 n).toNat

end

end A267276.P16713696600033441070

/-! ## A267276.P3098656559461799237

`A281589(2*A266810(n))`
-/

namespace A267276.P3098656559461799237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A266810 n).toNat

end

end A267276.P3098656559461799237

/-! ## A267276.P12464941988992276131

`A325401(2*A266810(n))`
-/

namespace A267276.P12464941988992276131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A266810 n).toNat

end

end A267276.P12464941988992276131

/-!
# A267277: Zeroless primes p such that p*(product of digits of p)+(sum of digits of p) is also prime.

The programs for A267277, there is no canonical definition to state claims against.
-/

/-! ## A267277.P9418348101005069762

`p?[A129917(comp[A028419(n)])]`
-/

namespace A267277.P9418348101005069762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028419 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129917 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267277.P9418348101005069762

/-! ## A267277.P17791394469767090079

`∩[A030475(n+1), A129917(n+1)]`
-/

namespace A267277.P17791394469767090079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267277.P17791394469767090079

/-! ## A267277.P7168818279335523796

`∩[A038618(n+1), A129917(n+1)]`
-/

namespace A267277.P7168818279335523796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267277.P7168818279335523796

/-! ## A267277.P3331676029629616358

`∩[A052085(n+1), A129917(n+1)]`
-/

namespace A267277.P3331676029629616358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267277.P3331676029629616358

/-! ## A267277.P11963145180021100443

`∩[A062353(n+1), A129917(n+1)]`
-/

namespace A267277.P11963145180021100443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267277.P11963145180021100443

/-!
# A267278: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267278, there is no canonical definition to state claims against.
-/

/-! ## A267278.P16825450525415393556

`A267019(n+1)-A185037(A029669(n))`
-/

namespace A267278.P16825450525415393556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (n + 1) - A185037 (A029669 n).toNat

end

end A267278.P16825450525415393556

/-! ## A267278.P14048345911507627061

`A267019(n+1)-A137579(A076736(n+1))`
-/

namespace A267278.P14048345911507627061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (n + 1) - A137579 (A076736 (n + 1)).toNat

end

end A267278.P14048345911507627061

/-! ## A267278.P8627288453832782126

`A353832(A267019(n+1)%A144672(n+1))`
-/

namespace A267278.P8627288453832782126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (Int.tmod (A267019 (n + 1)) (A144672 (n + 1))).toNat

end

end A267278.P8627288453832782126

/-! ## A267278.P17728023688286472614

`A267019(A043317(n+1))`
-/

namespace A267278.P17728023688286472614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (A043317 (n + 1)).toNat

end

end A267278.P17728023688286472614

/-! ## A267278.P10777847825863783497

`A267019(A044914(n+1))`
-/

namespace A267278.P10777847825863783497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (A044914 (n + 1)).toNat

end

end A267278.P10777847825863783497

/-!
# A267279: Number of (n+1)Xn arrays containing n copies of 0..n+1-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267279, there is no canonical definition to state claims against.
-/

/-! ## A267279.P15306905672941158299

`A267278(2*(n+1)²+1)`
-/

namespace A267279.P15306905672941158299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (2 * (n + 1) ^ 2 + 1)

end

end A267279.P15306905672941158299

/-! ## A267279.P7596066101180433231

`record[A267278(A241496(n)-n)]`
-/

namespace A267279.P7596066101180433231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A241496 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267279.P7596066101180433231

/-! ## A267279.P1776888016136580008

`record[gcd(A227431(n+1), A267278(n+1))]`
-/

namespace A267279.P1776888016136580008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227431 (n + 1)) (A267278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267279.P1776888016136580008

/-!
# A267280: Number of nX(n+1) arrays of permutations of n+1 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267280, there is no canonical definition to state claims against.
-/

/-! ## A267280.P7176937859978085967

`A267278(2*(n+1)²)`
-/

namespace A267280.P7176937859978085967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (2 * (n + 1) ^ 2)

end

end A267280.P7176937859978085967

/-! ## A267280.P2898079030032099250

`record[A267278(A053439(n))]`
-/

namespace A267280.P2898079030032099250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267280.P2898079030032099250

/-! ## A267280.P3391978339781013879

`record[A267278(∑[A266285(n)])]`
-/

namespace A267280.P3391978339781013879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267280.P3391978339781013879

/-!
# A267281: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267281, there is no canonical definition to state claims against.
-/

/-! ## A267281.P6107235203930261892

`A267278(∑[4*(n+1)])`
-/

namespace A267281.P6107235203930261892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267281.P6107235203930261892

/-! ## A267281.P14930088085915615175

`record[A267278(A241496(n))]`
-/

namespace A267281.P14930088085915615175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A241496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267281.P14930088085915615175

/-! ## A267281.P16667260757764863619

`record[A267278(A120097(n+1))]`
-/

namespace A267281.P16667260757764863619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A120097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267281.P16667260757764863619

/-!
# A267282: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267282, there is no canonical definition to state claims against.
-/

/-! ## A267282.P13516614182302678657

`record[A267278(A266448(n))]`
-/

namespace A267282.P13516614182302678657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A266448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267282.P13516614182302678657

/-!
# A267283: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267283, there is no canonical definition to state claims against.
-/

/-! ## A267283.P2391662491989685312

`A267278(A142463(n+2))`
-/

namespace A267283.P2391662491989685312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A142463 (n + 2)).toNat

end

end A267283.P2391662491989685312

/-!
# A267284: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267284, there is no canonical definition to state claims against.
-/

/-! ## A267284.P9065900029483701674

`A267278(∑[n+3]+7)`
-/

namespace A267284.P9065900029483701674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267284.P9065900029483701674

/-!
# A267285: Number of 5 X n arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267285, there is no canonical definition to state claims against.
-/

/-! ## A267285.P3744675871993662144

`A267278(∑[n+4]+11)`
-/

namespace A267285.P3744675871993662144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267285.P3744675871993662144

/-!
# A267286: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267286, there is no canonical definition to state claims against.
-/

/-! ## A267286.P7217338485616655468

`A267278(∑[n+5]+16)`
-/

namespace A267286.P7217338485616655468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A267286.P7217338485616655468

/-!
# A267287: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267287, there is no canonical definition to state claims against.
-/

/-! ## A267287.P14209884629443894350

`A267278(A056119(n)+28)`
-/

namespace A267287.P14209884629443894350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A056119 n + 28).toNat

end

end A267287.P14209884629443894350

/-! ## A267287.P14070520967583189622

`A267278(eq[11, A066657(n)])`
-/

namespace A267287.P14070520967583189622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267287.P14070520967583189622

/-! ## A267287.P1389909640706552808

`A267278(A166136(n+5)+1)`
-/

namespace A267287.P1389909640706552808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A166136 (n + 5) + 1).toNat

end

end A267287.P1389909640706552808

/-! ## A267287.P15960463147533142297

`A267278(A167499(n+5)+2)`
-/

namespace A267287.P15960463147533142297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A167499 (n + 5) + 2).toNat

end

end A267287.P15960463147533142297

/-! ## A267287.P16253787524849880450

`A267278(A167614(n+5)+4)`
-/

namespace A267287.P16253787524849880450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A167614 (n + 5) + 4).toNat

end

end A267287.P16253787524849880450

/-!
# A267289: Primes p such that (2^k)+p+(2^(k+1)) is also prime, where 2^k is the largest power of 2 smaller than p.

The programs for A267289, the canonical program `A267289.P12094867785970251216` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267289 has offset 1).

The definition of A267289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267289.P12094867785970251216

`p?[A338623(A004139(n+3))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267289

/-- `p?[A338623(A004139(n+3))]` -/
def P12094867785970251216.Spec : Prop :=
  ∀ n, P12094867785970251216.a n = A267289 (n + 1)

theorem P12094867785970251216.correct : P12094867785970251216.Spec := by
  intro n
  simp only [A267289, Nat.add_sub_cancel]

end A267289

/-! ## A267289.P8214898276440946921

`p?[A338623(A215848(n+3))]`
-/

namespace A267289.P8214898276440946921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A215848 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P8214898276440946921

namespace A267289

/-- `p?[A338623(A215848(n+3))]` -/
def P8214898276440946921.Spec : Prop :=
  ∀ n, P8214898276440946921.a n = A267289 (n + 1)

end A267289

/-! ## A267289.P9639672858127872462

`p?[A338623(A000040(n+5))]`
-/

namespace A267289.P9639672858127872462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A000040 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P9639672858127872462

namespace A267289

/-- `p?[A338623(A000040(n+5))]` -/
def P9639672858127872462.Spec : Prop :=
  ∀ n, P9639672858127872462.a n = A267289 (n + 1)

end A267289

/-! ## A267289.P14208932884369735039

`p?[A338623(A005180(n+6))]`
-/

namespace A267289.P14208932884369735039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A005180 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P14208932884369735039

namespace A267289

/-- `p?[A338623(A005180(n+6))]` -/
def P14208932884369735039.Spec : Prop :=
  ∀ n, P14208932884369735039.a n = A267289 (n + 1)

end A267289

/-! ## A267289.P355133453932770866

`p?[A338623(p?[A004756(n+1)])]`
-/

namespace A267289.P355133453932770866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P355133453932770866

namespace A267289

/-- `p?[A338623(p?[A004756(n+1)])]` -/
def P355133453932770866.Spec : Prop :=
  ∀ n, P355133453932770866.a n = A267289 (n + 1)

end A267289

/-! ## A267289.P12073125037012378701

`p?[A338623(p?[A304588(n+3)])]`
-/

namespace A267289.P12073125037012378701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304588 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P12073125037012378701

namespace A267289

/-- `p?[A338623(p?[A304588(n+3)])]` -/
def P12073125037012378701.Spec : Prop :=
  ∀ n, P12073125037012378701.a n = A267289 (n + 1)

end A267289

/-! ## A267289.P10537684073544703256

`p?[A022998(A338623(A008578(n+1)))]`
-/

namespace A267289.P10537684073544703256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A338623 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P10537684073544703256

namespace A267289

/-- `p?[A022998(A338623(A008578(n+1)))]` -/
def P10537684073544703256.Spec : Prop :=
  ∀ n, P10537684073544703256.a n = A267289 (n + 1)

end A267289

/-! ## A267289.P6097294365041134795

`p?[A093178(A338623(A093641(n+1)))]`
-/

namespace A267289.P6097294365041134795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A338623 (A093641 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P6097294365041134795

namespace A267289

/-- `p?[A093178(A338623(A093641(n+1)))]` -/
def P6097294365041134795.Spec : Prop :=
  ∀ n, P6097294365041134795.a n = A267289 (n + 1)

end A267289

/-! ## A267289.P7006645693115715735

`p?[A000265(A338623(A100484(n+1)))]`
-/

namespace A267289.P7006645693115715735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A338623 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P7006645693115715735

namespace A267289

/-- `p?[A000265(A338623(A100484(n+1)))]` -/
def P7006645693115715735.Spec : Prop :=
  ∀ n, P7006645693115715735.a n = A267289 (n + 1)

end A267289

/-!
# A267290: Primes of the form 11*k^2-11*k+7.

The programs for A267290, the canonical program `A267290.P163653998228225270` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267290 has offset 1).

The definition of A267290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267290.P163653998228225270

`p?[11*(n²+n)+7]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267290

/-- `p?[11*(n²+n)+7]` -/
def P163653998228225270.Spec : Prop :=
  ∀ n, (P163653998228225270.a n : ℤ) = A267290 (n + 1)

theorem P163653998228225270.correct : P163653998228225270.Spec := by
  intro n
  simp only [A267290, Nat.add_sub_cancel]

end A267290

/-! ## A267290.P968056418751666929

`or(1, p?[A006222(n)+4])`
-/

namespace A267290.P968056418751666929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A267290.P968056418751666929

namespace A267290

/-- `or(1, p?[A006222(n)+4])` -/
def P968056418751666929.Spec : Prop :=
  ∀ n, P968056418751666929.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P2592644952710374468

`p?[A006222(n)+4]%A017453(n)`
-/

namespace A267290.P2592644952710374468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017453 n)

end

end A267290.P2592644952710374468

namespace A267290

/-- `p?[A006222(n)+4]%A017453(n)` -/
def P2592644952710374468.Spec : Prop :=
  ∀ n, P2592644952710374468.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P6398864854640740914

`lcm(p?[A006222(n)+4], A033999(n))`
-/

namespace A267290.P6398864854640740914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A267290.P6398864854640740914

namespace A267290

/-- `lcm(p?[A006222(n)+4], A033999(n))` -/
def P6398864854640740914.Spec : Prop :=
  ∀ n, (P6398864854640740914.a n : ℤ) = A267290 (n + 1)

end A267290

/-! ## A267290.P4124402287041371007

`A007318(C(2, n))*p?[A006222(n)+4]`
-/

namespace A267290.P4124402287041371007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P4124402287041371007

namespace A267290

/-- `A007318(C(2, n))*p?[A006222(n)+4]` -/
def P4124402287041371007.Spec : Prop :=
  ∀ n, P4124402287041371007.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P11558660778576919865

`p?[A006222(n)+4]/A007318(C(3, n))`
-/

namespace A267290.P11558660778576919865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A267290.P11558660778576919865

namespace A267290

/-- `p?[A006222(n)+4]/A007318(C(3, n))` -/
def P11558660778576919865.Spec : Prop :=
  ∀ n, P11558660778576919865.a n = (A267290 (n + 1) : ℚ)

end A267290

/-! ## A267290.P18216871343846511071

`A000108(and(1, -n))*p?[A006222(n)+4]`
-/

namespace A267290.P18216871343846511071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P18216871343846511071

namespace A267290

/-- `A000108(and(1, -n))*p?[A006222(n)+4]` -/
def P18216871343846511071.Spec : Prop :=
  ∀ n, P18216871343846511071.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P4686806252608209888

`A007318(and(1, -n))*p?[A006222(n)+4]`
-/

namespace A267290.P4686806252608209888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P4686806252608209888

namespace A267290

/-- `A007318(and(1, -n))*p?[A006222(n)+4]` -/
def P4686806252608209888.Spec : Prop :=
  ∀ n, P4686806252608209888.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P10711380708030460462

`p?[A006222(n)+4]/A000041(C(n, n²))`
-/

namespace A267290.P10711380708030460462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A267290.P10711380708030460462

namespace A267290

/-- `p?[A006222(n)+4]/A000041(C(n, n²))` -/
def P10711380708030460462.Spec : Prop :=
  ∀ n, P10711380708030460462.a n = (A267290 (n + 1) : ℚ)

end A267290

/-! ## A267290.P18375954182481650573

`p?[A006222(n)+4]^A007318(C(n, n²))`
-/

namespace A267290.P18375954182481650573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (Nat.choose n (n ^ 2)) : ℤ)

end

end A267290.P18375954182481650573

namespace A267290

/-- `p?[A006222(n)+4]^A007318(C(n, n²))` -/
def P18375954182481650573.Spec : Prop :=
  ∀ n, P18375954182481650573.a n = (A267290 (n + 1) : ℚ)

end A267290

/-! ## A267290.P11755793413189541347

`p?[A006222(n)+4]+A008683(4*(n+1))`
-/

namespace A267290.P11755793413189541347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A267290.P11755793413189541347

namespace A267290

/-- `p?[A006222(n)+4]+A008683(4*(n+1))` -/
def P11755793413189541347.Spec : Prop :=
  ∀ n, P11755793413189541347.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P16120317718889582267

`A000041(C(2, n+2))*p?[A006222(n)+4]`
-/

namespace A267290.P16120317718889582267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P16120317718889582267

namespace A267290

/-- `A000041(C(2, n+2))*p?[A006222(n)+4]` -/
def P16120317718889582267.Spec : Prop :=
  ∀ n, P16120317718889582267.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P16316648949854700399

`A000108(C(2, n+2))*p?[A006222(n)+4]`
-/

namespace A267290.P16316648949854700399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P16316648949854700399

namespace A267290

/-- `A000108(C(2, n+2))*p?[A006222(n)+4]` -/
def P16316648949854700399.Spec : Prop :=
  ∀ n, P16316648949854700399.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P7148636795373207460

`p?[A006222(n)+4]/A000041(gcd(n, n+1))`
-/

namespace A267290.P7148636795373207460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A267290.P7148636795373207460

namespace A267290

/-- `p?[A006222(n)+4]/A000041(gcd(n, n+1))` -/
def P7148636795373207460.Spec : Prop :=
  ∀ n, P7148636795373207460.a n = (A267290 (n + 1) : ℚ)

end A267290

/-! ## A267290.P14935575389276715923

`p?[A006222(n)+4]/A007318(1-(-1)^n)`
-/

namespace A267290.P14935575389276715923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (1 - (-1) ^ n).toNat : ℚ)

end

end A267290.P14935575389276715923

namespace A267290

/-- `p?[A006222(n)+4]/A007318(1-(-1)^n)` -/
def P14935575389276715923.Spec : Prop :=
  ∀ n, P14935575389276715923.a n = (A267290 (n + 1) : ℚ)

end A267290

/-! ## A267290.P16124264397444367728

`A130507(A008574(n))+p?[A006222(n)+4]`
-/

namespace A267290.P16124264397444367728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A008574 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P16124264397444367728

namespace A267290

/-- `A130507(A008574(n))+p?[A006222(n)+4]` -/
def P16124264397444367728.Spec : Prop :=
  ∀ n, P16124264397444367728.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P8682162710969635936

`A130507(A022144(n))+p?[A006222(n)+4]`
-/

namespace A267290.P8682162710969635936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A022144 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P8682162710969635936

namespace A267290

/-- `A130507(A022144(n))+p?[A006222(n)+4]` -/
def P8682162710969635936.Spec : Prop :=
  ∀ n, P8682162710969635936.a n = A267290 (n + 1)

end A267290

/-! ## A267290.P15053262625350498080

`A000122(A000040(n+1))+p?[A006222(n)+4]`
-/

namespace A267290.P15053262625350498080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267290.P15053262625350498080

namespace A267290

/-- `A000122(A000040(n+1))+p?[A006222(n)+4]` -/
def P15053262625350498080.Spec : Prop :=
  ∀ n, P15053262625350498080.a n = A267290 (n + 1)

end A267290

/-!
# A267291: Primes which are at 2/3 of the distance between their neighbors.

The programs for A267291, there is no canonical definition to state claims against.
-/

/-! ## A267291.P4424373936313319968

`p?[A024675(n+1)+A001223(n+3)]`
-/

namespace A267291.P4424373936313319968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A001223 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P4424373936313319968

/-! ## A267291.P11234736416075929367

`p?[A093667(n+2)+A028334(n+2)]`
-/

namespace A267291.P11234736416075929367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 2) + A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P11234736416075929367

/-! ## A267291.P12826768860108302882

`p?[A004139(n+2)-A028334(n+2)]`
-/

namespace A267291.P12826768860108302882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P12826768860108302882

/-! ## A267291.P16502028560275416074

`p?[A048448(n+3)-A024675(n+1)]`
-/

namespace A267291.P16502028560275416074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 3) - A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P16502028560275416074

/-! ## A267291.P1067950243290846505

`p?[A045319(n+3)-A028334(n+2)]`
-/

namespace A267291.P1067950243290846505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 3) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P1067950243290846505

/-! ## A267291.P16313611390589774847

`p?[A045344(n+3)-A028334(n+2)]`
-/

namespace A267291.P16313611390589774847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 3) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P16313611390589774847

/-! ## A267291.P1107726093232970664

`p?[A065091(n+3)-A028334(n+2)]`
-/

namespace A267291.P1107726093232970664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 3) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P1107726093232970664

/-! ## A267291.P17921072654734737682

`p?[A000040(n+4)-A028334(n+2)]`
-/

namespace A267291.P17921072654734737682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P17921072654734737682

/-! ## A267291.P941774166485546524

`p?[A008578(n+5)-A028334(n+2)]`
-/

namespace A267291.P941774166485546524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 5) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267291.P941774166485546524

/-! ## A267291.P4469103620349166991

`A065091(eq[A008578(n+1), A107471(n+1)])`
-/

namespace A267291.P4469103620349166991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A267291.P4469103620349166991

/-!
# A267292: Triangle read by rows giving successive states of cellular automaton generated by "Rule 121" initiated with a single ON (black) cell.

The programs for A267292, there is no canonical definition to state claims against.
-/

/-! ## A267292.P523657614344364709

`A267152(A020703(n+1)-1)`
-/

namespace A267292.P523657614344364709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (A020703 (n + 1) - 1).toNat

end

end A267292.P523657614344364709

/-! ## A267292.P12511640562045441919

`A267152(A057428(n)+A020703(n+1))`
-/

namespace A267292.P12511640562045441919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (A057428 n + A020703 (n + 1)).toNat

end

end A267292.P12511640562045441919

/-! ## A267292.P16150574322489677072

`A267152(A033999(2*n+1)+A020703(n+1))`
-/

namespace A267292.P16150574322489677072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (A033999 (2 * n + 1) + A020703 (n + 1)).toNat

end

end A267292.P16150574322489677072

/-! ## A267292.P3814601173876557477

`char[A020703(n+2)*A267152(n)]`
-/

namespace A267292.P3814601173876557477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 2) * A267152 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267292.P3814601173876557477

/-! ## A267292.P8775138358720719667

`A267152(A020703(n+2)%A296253(n))`
-/

namespace A267292.P8775138358720719667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (Int.tmod (A020703 (n + 2)) (A296253 n)).toNat

end

end A267292.P8775138358720719667

/-!
# A267293: Binary representation of the n-th iteration of the "Rule 121" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267293, there is no canonical definition to state claims against.
-/

/-! ## A267293.P13888461274051188580

`A007088(A267294(n))`
-/

namespace A267293.P13888461274051188580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267294 n).toNat

end

end A267293.P13888461274051188580

/-!
# A267294: Decimal representation of the n-th iteration of the "Rule 121" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267294, there is no canonical definition to state claims against.
-/

/-! ## A267294.P5711509262714396255

`A081344(A211682(2*n+1))-A145690(2*(n+1))`
-/

namespace A267294.P5711509262714396255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A211682 (2 * n + 1)).toNat - A145690 (2 * (n + 1))

end

end A267294.P5711509262714396255

/-!
# A267295: Circulant Ramsey numbers RC_2(3,n) of the second kind.

The programs for A267295, there is no canonical definition to state claims against.
-/

/-! ## A267295.P15267988110741966771

`A000789(n+2)+1`
-/

namespace A267295.P15267988110741966771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000789 (n + 2) + 1

end

end A267295.P15267988110741966771

/-! ## A267295.P17734033716302780312

`∑[A195019(n+1)-or(n, floor(n/2))]`
-/

namespace A267295.P17734033716302780312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (n + 1) - Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267295.P17734033716302780312

/-! ## A267295.P11301586272137807096

`∑[∏{e}[A100346(n+3)+1, #+1]+1]`
-/

namespace A267295.P11301586272137807096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 (n + 3) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267295.P11301586272137807096

/-! ## A267295.P16028811973343582503

`A020725(A000789(n+2))`
-/

namespace A267295.P16028811973343582503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000789 (n + 2)).toNat

end

end A267295.P16028811973343582503

/-! ## A267295.P9075937114142610331

`A318718(A302505(n+1))+n`
-/

namespace A267295.P9075937114142610331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318718 (A302505 (n + 1)).toNat + (n : ℤ)

end

end A267295.P9075937114142610331

/-!
# A267297: Square triangular numbers that are the sum of 2 nonzero nonconsecutive triangular numbers.

The programs for A267297, there is no canonical definition to state claims against.
-/

/-! ## A267297.P17415407885854554930

`A001110(round(n*ratio[n+3])+3)`
-/

namespace A267297.P17415407885854554930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) + 3).toNat

end

end A267297.P17415407885854554930

/-! ## A267297.P15076891463913864328

`A001110(A055495(n+1))+A000007(n+3)`
-/

namespace A267297.P15076891463913864328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 (A055495 (n + 1)).toNat + A000007 (n + 3)

end

end A267297.P15076891463913864328

/-! ## A267297.P31154425547758428

`A035638(2*n+5)+A001110(A055495(n+1))`
-/

namespace A267297.P31154425547758428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035638 (2 * n + 5) + A001110 (A055495 (n + 1)).toNat

end

end A267297.P31154425547758428

/-! ## A267297.P17676261434235728994

`A001109(record[A027684(n)])²`
-/

namespace A267297.P17676261434235728994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A267297.P17676261434235728994

