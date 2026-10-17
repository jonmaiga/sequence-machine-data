import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B004.C004

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A296062.P5761383797540387978

`n-A268289(n)`
-/

namespace A296062.P5761383797540387978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268289 n

end

end A296062.P5761383797540387978

noncomputable section

/-- A296062: Base-2 logarithm of the number of different shapes of balanced binary trees with n nodes (A110316).

Offset 0, canonical program `A296062.P5761383797540387978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062 (n : ℕ) : ℤ :=
  A296062.P5761383797540387978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301336.P12381687914768118623

`A268289(n)-1`
-/

namespace A301336.P12381687914768118623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n - 1

end

end A301336.P12381687914768118623

noncomputable section

/-- A301336: a(n) = total number of 1's minus total number of 0's in binary expansions of 0, ..., n.

Offset 0, canonical program `A301336.P12381687914768118623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336 (n : ℕ) : ℤ :=
  A301336.P12381687914768118623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360692.P11101891494698958030

`A101279(n+2)-1`
-/

namespace A360692.P11101891494698958030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 2) - 1

end

end A360692.P11101891494698958030

noncomputable section

/-- A360692: a(0) = 0. Thereafter a(n+1) = a(a(n)) if a(n) has not occurred previously, otherwise a(n+1) = n - 1 - a(n-1).

Offset 0, canonical program `A360692.P11101891494698958030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692 (n : ℕ) : ℤ :=
  A360692.P11101891494698958030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382123.P171162339606438149

`A000203(n+1)*A062731(n+1)/3`
-/

namespace A382123.P171162339606438149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A062731 (n + 1) : ℚ) / 3

end

end A382123.P171162339606438149

noncomputable section

/-- A382123: a(n) = sigma(n)*sigma(2*n)/3 for n >= 1.

Offset 1, canonical program `A382123.P171162339606438149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382123.P171162339606438149.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275019.P166952479479628715

`A007814(n+1)+A007814(n+2)+A007814(n+3)-1`
-/

namespace A275019.P166952479479628715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) + A007814 (n + 3) - 1

end

end A275019.P166952479479628715

noncomputable section

/-- A275019: 2-adic valuation of tetrahedral numbers C(n+2,3) = n(n+1)(n+2)/6 = A000292(n).

Offset 1, canonical program `A275019.P166952479479628715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275019 (n : ℕ) : ℤ :=
  A275019.P166952479479628715.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296306.P7064557066489787750

`(4^(A007814(n+1)+1)-1)/3`
-/

namespace A296306.P7064557066489787750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) / 3

end

end A296306.P7064557066489787750

noncomputable section

/-- A296306: a(n) = A001157(n)/A050999(n).

Offset 1, canonical program `A296306.P7064557066489787750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296306.P7064557066489787750.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309761.P8963305717422464653

`A276349(n+1)/10`
-/

namespace A309761.P8963305717422464653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276349 (n + 1) : ℚ) / 10

end

end A309761.P8963305717422464653

noncomputable section

/-- A309761: Numbers that are sums of consecutive powers of 10.

Offset 1, canonical program `A309761.P8963305717422464653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309761.P8963305717422464653.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329320.P8372120405615664937

`a(floor(n/2))+1-A035263(n+1)` with `a(0)=0`
-/

namespace A329320.P8372120405615664937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - A035263 (n + 1))

end

end A329320.P8372120405615664937

noncomputable section

/-- A329320: a(n) = Sum_{k=0..floor(log_2(n))} 1 - A035263(1 + floor(n/2^k)).

Offset 0, canonical program `A329320.P8372120405615664937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329320 (n : ℕ) : ℤ :=
  A329320.P8372120405615664937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371093.P8625920196172340784

`A007814(A016777(n))`
-/

namespace A371093.P8625920196172340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016777 n).toNat

end

end A371093.P8625920196172340784

noncomputable section

/-- A371093: a(n) is the 2-adic valuation of 3n+1.

Offset 0, canonical program `A371093.P8625920196172340784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093 (n : ℕ) : ℤ :=
  A371093.P8625920196172340784.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372205.P8398281046845519076

`(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372205.P8398281046845519076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n * a (SequenceMachineLib.roundAway (((n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2)).toNat + a ⌊((2 * n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2⌋.toNat

end

end A372205.P8398281046845519076

noncomputable section

/-- A372205: a(n) = (-1)^n*a((n - 2^A007814(n))/2) + a(floor((2*n - 2^A007814(n))/2)) for n > 0 and a(0) = 1.

Offset 0, canonical program `A372205.P8398281046845519076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372205 (n : ℕ) : ℤ :=
  A372205.P8398281046845519076.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397779.P3478401780238339042

`a(n-3)+A007814(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A397779.P3478401780238339042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + A007814 n

end

end A397779.P3478401780238339042

noncomputable section

/-- A397779: 2-adic valuation of the triple factorial of n.

Offset 0, canonical program `A397779.P3478401780238339042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779 (n : ℕ) : ℤ :=
  A397779.P3478401780238339042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266001.P9707974125563261164

`∩[A023705(n+1), A032924(n+1)]`
-/

namespace A266001.P9707974125563261164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266001.P9707974125563261164

noncomputable section

/-- A266001: Numbers with no 0's in their base 3 and base 4 expansions.

Offset 1, canonical program `A266001.P9707974125563261164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A266001 (n : ℕ) : ℤ :=
  (A266001.P9707974125563261164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A266001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266384.P18258297534978275243

`∑[A071043(n)]`
-/

namespace A266384.P18258297534978275243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266384.P18258297534978275243

noncomputable section

/-- A266384: Total number of OFF (white) cells after n iterations of the "Rule 22" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266384.P18258297534978275243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266384 (n : ℕ) : ℤ :=
  A266384.P18258297534978275243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266768.P11564001929353987529

`A029327(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A266768.P11564001929353987529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029327 n + a (n - 2)

end

end A266768.P11564001929353987529

noncomputable section

/-- A266768: Molien series for invariants of finite Coxeter group D_5.

Offset 0, canonical program `A266768.P11564001929353987529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266768 (n : ℕ) : ℤ :=
  A266768.P11564001929353987529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266978.P11450421611937941305

`A376583(A037458(n+1))`
-/

namespace A266978.P11450421611937941305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A037458 (n + 1)).toNat

end

end A266978.P11450421611937941305

noncomputable section

/-- A266978: Triangle read by rows giving successive states of cellular automaton generated by "Rule 79" initiated with a single ON (black) cell.

Offset 0, canonical program `A266978.P11450421611937941305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978 (n : ℕ) : ℤ :=
  A266978.P11450421611937941305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267092.P6419044303026255334

`n+1+A007814(n+1)*A008619(n)`
-/

namespace A267092.P6419044303026255334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007814 (n + 1) * A008619 n

end

end A267092.P6419044303026255334

noncomputable section

/-- A267092: a(n) is the number of P-positions for n-modular Nim with 2 piles.

Offset 1, canonical program `A267092.P6419044303026255334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267092 (n : ℕ) : ℤ :=
  A267092.P6419044303026255334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267368.P9350065740926405642

`∑[A071051(n)]`
-/

namespace A267368.P9350065740926405642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267368.P9350065740926405642

noncomputable section

/-- A267368: Total number of ON (black) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267368.P9350065740926405642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267368 (n : ℕ) : ℤ :=
  A267368.P9350065740926405642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267445.P11359933755806335792

`A004277(n)+1-A071051(n)`
-/

namespace A267445.P11359933755806335792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (1 - A071051 n)

end

end A267445.P11359933755806335792

noncomputable section

/-- A267445: Number of ON (black) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267445.P11359933755806335792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267445 (n : ℕ) : ℤ :=
  A267445.P11359933755806335792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267583.P8325400885467834765

`∑[A267582(n)]`
-/

namespace A267583.P8325400885467834765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267583.P8325400885467834765

noncomputable section

/-- A267583: Total number of ON (black) cells after n iterations of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267583.P8325400885467834765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267583 (n : ℕ) : ℤ :=
  A267583.P8325400885467834765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267849.P9616404114859344746

`(1-A049780(n)+n)*A008279(n)`
-/

namespace A267849.P9616404114859344746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * A008279 n

end

end A267849.P9616404114859344746

noncomputable section

/-- A267849: Triangular array: T(n,k) is the 2-row creation rook number to place k rooks on a 3 x n board.

Offset 0, canonical program `A267849.P9616404114859344746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A267849 (n : ℕ) : ℤ :=
  A267849.P9616404114859344746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A267849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268040.P2413962629400240570

`A099026(A061579(n))`
-/

namespace A268040.P2413962629400240570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 (A061579 n).toNat

end

end A268040.P2413962629400240570

noncomputable section

/-- A268040: Array y AND NOT x, read by antidiagonals.

Offset 0, canonical program `A268040.P2413962629400240570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A268040 (n : ℕ) : ℤ :=
  A268040.P2413962629400240570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A268040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268221.P1002273436628734708

`A000292(A003057(n+2))*A181511(n+1)`
-/

namespace A268221.P1002273436628734708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003057 (n + 2)).toNat * A181511 (n + 1)

end

end A268221.P1002273436628734708

noncomputable section

/-- A268221: Triangle read by rows: T(n,k) (n>=4, k=3..n-1) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,3,4,5,...,s,n} where s is the size of the largest proper open set in t.

Offset 4, canonical program `A268221.P1002273436628734708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268221 (n : ℕ) : ℤ :=
  A268221.P1002273436628734708.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268415.P13580893866302977043

`A043726(n+1)/2`
-/

namespace A268415.P13580893866302977043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043726 (n + 1) : ℚ) / 2

end

end A268415.P13580893866302977043

noncomputable section

/-- A268415: Balanced odious numbers: numbers with an odd number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268415.P13580893866302977043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268415.P13580893866302977043.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269244.P13071982595472903123

`∑{digits}[n^3, A004198(#)]`
-/

namespace A269244.P13071982595472903123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004198 x).sum

end

end A269244.P13071982595472903123

noncomputable section

/-- A269244: Number of times the digit 4 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269244.P13071982595472903123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269244 (n : ℕ) : ℤ :=
  A269244.P13071982595472903123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270438.P3486021905368719773

`A011782(A014081(n))*A277561(n)`
-/

namespace A270438.P3486021905368719773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014081 n).toNat * A277561 n

end

end A270438.P3486021905368719773

noncomputable section

/-- A270438: a(n) is the number of entries == 1 mod 4 in row n of Pascal's triangle.

Offset 0, canonical program `A270438.P3486021905368719773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270438 (n : ℕ) : ℤ :=
  A270438.P3486021905368719773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271668.P273675855261280975

`A094728(n+1)-A049780(n)`
-/

namespace A271668.P273675855261280975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A049780 n

end

end A271668.P273675855261280975

noncomputable section

/-- A271668: Triangle read by rows. The first column is A000217(n+1). From the second row we apply - A002262(n) for the following terms of the row.

Offset 0, canonical program `A271668.P273675855261280975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049780, A094728, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A271668 (n : ℕ) : ℤ :=
  A271668.P273675855261280975.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049780, A094728, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A271668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A271710.P8123047399099080066

`xor(A059268(n), A130321(n))`
-/

namespace A271710.P8123047399099080066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059268 n) (A130321 n)

end

end A271710.P8123047399099080066

noncomputable section

/-- A271710: Table T(n,k) = 2^n XOR 2^k read by antidiagonals, where XOR is the binary exclusive or operator.

Offset 0, canonical program `A271710.P8123047399099080066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271710 (n : ℕ) : ℤ :=
  A271710.P8123047399099080066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271787.P16430295729200728671

`comp[n-A229062(n)]`
-/

namespace A271787.P16430295729200728671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A271787.P16430295729200728671

noncomputable section

/-- A271787: Integers k that are the sum of two nonzero squares while k*(k+1) is not.

Offset 1, canonical program `A271787.P16430295729200728671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787 (n : ℕ) : ℤ :=
  (A271787.P16430295729200728671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272214.P17777000404027784812

`A104887(n+1)*A245093(n+1)`
-/

namespace A272214.P17777000404027784812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1) * A245093 (n + 1)

end

end A272214.P17777000404027784812

noncomputable section

/-- A272214: Square array read by antidiagonals upwards in which T(n,k) is the product of the n-th prime and the sum of the divisors of k, n >= 1, k >= 1.

Offset 1, canonical program `A272214.P17777000404027784812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A272214 (n : ℕ) : ℤ :=
  A272214.P17777000404027784812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A272214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273529.P14030670400839210133

`p?[A017077(A064816(n+1))]`
-/

namespace A273529.P14030670400839210133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A064816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273529.P14030670400839210133

noncomputable section

/-- A273529: Primes p of the form x^2 + y^2 such that p+1 is the sum of the two nonzero squares in exactly 2 ways.

Offset 1, canonical program `A273529.P14030670400839210133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A273529 (n : ℕ) : ℤ :=
  A273529.P14030670400839210133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A273529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273562.P16263863284680203859

`∑[A273561(n)]`
-/

namespace A273562.P16263863284680203859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273562.P16263863284680203859

noncomputable section

/-- A273562: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273562.P16263863284680203859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A273562 (n : ℕ) : ℤ :=
  A273562.P16263863284680203859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A273562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273563.P9685023777793405849

`Δ[A273561(n)]`
-/

namespace A273563.P9685023777793405849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273563.P9685023777793405849

noncomputable section

/-- A273563: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273563.P9685023777793405849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. -/
def A273563 (n : ℕ) : ℤ :=
  A273563.P9685023777793405849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. -/
def A273563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274824.P3690629462728526552

`A004736(n+1)*A245093(n+1)`
-/

namespace A274824.P3690629462728526552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A245093 (n + 1)

end

end A274824.P3690629462728526552

noncomputable section

/-- A274824: Triangle read by rows: T(n,k) = (n-k+1)*sigma(k), n>=1, 1<=k<=n.

Offset 1, canonical program `A274824.P3690629462728526552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274824 (n : ℕ) : ℤ :=
  A274824.P3690629462728526552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275015.P13420665391760099934

`floor(log2(gcd(15, A120027(n))))`
-/

namespace A275015.P13420665391760099934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.gcd 15 (A120027 n))

end

end A275015.P13420665391760099934

noncomputable section

/-- A275015: Number of neighbors of each new term in an isosceles triangle read by rows.

Offset 1, canonical program `A275015.P13420665391760099934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A275015 (n : ℕ) : ℤ :=
  (A275015.P13420665391760099934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A275015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275697.P6247169262184432070

`p?[p?[2*n+1]-A058263(n+1)]`
-/

namespace A275697.P6247169262184432070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275697.P6247169262184432070

noncomputable section

/-- A275697: Primes p such that gcd(p-1, q-1) = q - p, where q is the next prime after p.

Offset 1, canonical program `A275697.P6247169262184432070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697 (n : ℕ) : ℤ :=
  A275697.P6247169262184432070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276390.P11821832504603089140

`A276391(A006257(n)+1)`
-/

namespace A276390.P11821832504603089140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A006257 n + 1).toNat

end

end A276390.P11821832504603089140

noncomputable section

/-- A276390: Bisection of A115716.

Offset 0, canonical program `A276390.P11821832504603089140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276390 (n : ℕ) : ℤ :=
  A276390.P11821832504603089140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277178.P15202113963426692843

`∑[record[A274707(n+1)]]`
-/

namespace A277178.P15202113963426692843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P15202113963426692843

noncomputable section

/-- A277178: a(n) = Sum_{k=0..n} k*binomial(2*k,k)/2.

Offset 0, canonical program `A277178.P15202113963426692843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A277178 (n : ℕ) : ℤ :=
  A277178.P15202113963426692843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A277178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279340.P3137699239334451419

`A055938(n+2)-A055938(n+1)`
-/

namespace A279340.P3137699239334451419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 2) - A055938 (n + 1)

end

end A279340.P3137699239334451419

noncomputable section

/-- A279340: First differences of A055938.

Offset 1, canonical program `A279340.P3137699239334451419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279340 (n : ℕ) : ℤ :=
  A279340.P3137699239334451419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279353.P12583084604223118015

`xor(A055938(n+1), A055938(n+2))`
-/

namespace A279353.P12583084604223118015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055938 (n + 1)) (A055938 (n + 2))

end

end A279353.P12583084604223118015

noncomputable section

/-- A279353: a(n) = A055938(n+1) XOR A055938(n).

Offset 1, canonical program `A279353.P12583084604223118015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A279353 (n : ℕ) : ℤ :=
  A279353.P12583084604223118015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A279353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279539.P10358371075013548821

`A092755(n+1)+n`
-/

namespace A279539.P10358371075013548821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092755 (n + 1) + (n : ℤ)

end

end A279539.P10358371075013548821

noncomputable section

/-- A279539: Sum of ceilings of natural logs of first n integers.

Offset 1, canonical program `A279539.P10358371075013548821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279539 (n : ℕ) : ℤ :=
  A279539.P10358371075013548821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280073.P7299106028929026118

`A025581(lt[n, A051173(n+1)])`
-/

namespace A280073.P7299106028929026118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280073.P7299106028929026118

noncomputable section

/-- A280073: Numerator of Farey fractions sorted according to increasing k, with k = numerator + denominator. Fractions with same k are sorted in order of increasing denominator.

Offset 1, canonical program `A280073.P7299106028929026118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A280073 (n : ℕ) : ℤ :=
  A280073.P7299106028929026118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A280073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281379.P7269018797134553829

`lt[A178226(A003188(n)), 1]`
-/

namespace A281379.P7269018797134553829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A003188 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281379.P7269018797134553829

noncomputable section

/-- A281379: Numbers which are palindromic in their binary reflected Gray code representation.

Offset 1, canonical program `A281379.P7269018797134553829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A281379 (n : ℕ) : ℤ :=
  (A281379.P7269018797134553829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A281379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281385.P9241428565788523415

`A100345(n)-A143844(n)`
-/

namespace A281385.P9241428565788523415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - A143844 n

end

end A281385.P9241428565788523415

noncomputable section

/-- A281385: Triangular array T(n, k) = n^2 + n*k - k^2.

Offset 0, canonical program `A281385.P9241428565788523415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281385 (n : ℕ) : ℤ :=
  A281385.P9241428565788523415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281492.P13006118302952997106

`A121444(3*n)`
-/

namespace A281492.P13006118302952997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (3 * n)

end

end A281492.P13006118302952997106

noncomputable section

/-- A281492: Expansion of f(x, x^3) * f(x^4, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281492.P13006118302952997106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A281492 (n : ℕ) : ℤ :=
  A281492.P13006118302952997106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A281492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281902.P11836732846535714631

`eq[1, char[A049780(n)+n]]`
-/

namespace A281902.P11836732846535714631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281902.P11836732846535714631

noncomputable section

/-- A281902: Numbers n which have the form n = k^2 - k + (i^2-i)/2 + 2*k*i, k>=1, i>=0.

Offset 1, canonical program `A281902.P11836732846535714631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A281902 (n : ℕ) : ℤ :=
  (A281902.P11836732846535714631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A281902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281944.P7909452327264810087

`A037960(A002260(n+1))*A135278(n)`
-/

namespace A281944.P7909452327264810087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037960 (A002260 (n + 1)).toNat * A135278 n

end

end A281944.P7909452327264810087

noncomputable section

/-- A281944: Triangle read by rows: T(n,k) (n>=1, 3<=k<=n+2) is the number of k-sequences of balls colored with n colors such that exactly two balls are of a color seen previously in the sequence.

Offset 1, canonical program `A281944.P7909452327264810087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A281944 (n : ℕ) : ℤ :=
  A281944.P7909452327264810087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A281944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284031.P9234368606975242882

`A283909(n+1)/2`
-/

namespace A284031.P9234368606975242882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283909 (n + 1) : ℚ) / 2

end

end A284031.P9234368606975242882

noncomputable section

/-- A284031: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284031.P9234368606975242882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284031 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284031.P9234368606975242882.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284128.P5800027111026948998

`A090988(n+1)+A084468(n+1)`
-/

namespace A284128.P5800027111026948998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) + A084468 (n + 1)

end

end A284128.P5800027111026948998

noncomputable section

/-- A284128: Hosoya triangle of Fermat Lucas type, read by rows.

Offset 9, canonical program `A284128.P5800027111026948998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284128 (n : ℕ) : ℤ :=
  A284128.P5800027111026948998.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284131.P15303166683764381892

`A284115(A185871(n+1))`
-/

namespace A284131.P15303166683764381892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A185871 (n + 1)).toNat

end

end A284131.P15303166683764381892

noncomputable section

/-- A284131: Hosoya triangle of Morgan Voyce type, read by rows.

Offset 1, canonical program `A284131.P15303166683764381892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131 (n : ℕ) : ℤ :=
  A284131.P15303166683764381892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285952.P3731534810684257932

`record[(n+1)*A254377(n)]%2`
-/

namespace A285952.P3731534810684257932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A285952.P3731534810684257932

noncomputable section

/-- A285952: {0->1, 1->10}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285952.P3731534810684257932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285952 (n : ℕ) : ℤ :=
  A285952.P3731534810684257932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286098.P12308120415836337446

`A057944(n)+A004198(n)`
-/

namespace A286098.P12308120415836337446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004198 n

end

end A286098.P12308120415836337446

noncomputable section

/-- A286098: Square array read by antidiagonals: A(n,k) = T(n AND k, n OR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

Offset 0, canonical program `A286098.P12308120415836337446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286098 (n : ℕ) : ℤ :=
  A286098.P12308120415836337446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286099.P16724800913237782090

`A099026(n)+n`
-/

namespace A286099.P16724800913237782090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + (n : ℤ)

end

end A286099.P16724800913237782090

noncomputable section

/-- A286099: Square array read by antidiagonals: A(n,k) = T(n OR k, n AND k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

Offset 0, canonical program `A286099.P16724800913237782090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286099 (n : ℕ) : ℤ :=
  A286099.P16724800913237782090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286147.P2874123018124836590

`A286145(A061579(n))`
-/

namespace A286147.P2874123018124836590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (A061579 n).toNat

end

end A286147.P2874123018124836590

noncomputable section

/-- A286147: Square array read by antidiagonals: A(n,k) = T(n XOR k, n), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286147.P2874123018124836590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286147 (n : ℕ) : ℤ :=
  A286147.P2874123018124836590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286992.P3935319046932940823

`A286803(n+1)+A159684(n)`
-/

namespace A286992.P3935319046932940823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) + A159684 n

end

end A286992.P3935319046932940823

noncomputable section

/-- A286992: Positions of 1 in A286990; complement of A286991.

Offset 1, canonical program `A286992.P3935319046932940823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286992 (n : ℕ) : ℤ :=
  A286992.P3935319046932940823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287326.P2171539883149157368

`3-2*A176625(n)`
-/

namespace A287326.P2171539883149157368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A176625 n

end

end A287326.P2171539883149157368

noncomputable section

/-- A287326: Triangle read by rows: T(n, k) = 6*k*(n-k) + 1; n >= 0, 0 <= k <= n.

Offset 0, canonical program `A287326.P2171539883149157368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287326 (n : ℕ) : ℤ :=
  A287326.P2171539883149157368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287618.P888519761362367504

`A110654(A002024(n+1))+A110654(A048151(n+1))`
-/

namespace A287618.P888519761362367504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (n + 1)).toNat + A110654 (A048151 (n + 1)).toNat

end

end A287618.P888519761362367504

noncomputable section

/-- A287618: Triangle read by rows: T(j,k) is the number of distinct edge segments in a j X k rectangular grid.

Offset 1, canonical program `A287618.P888519761362367504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287618 (n : ℕ) : ℤ :=
  A287618.P888519761362367504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288341.P677461810220747952

`∑[∑[A037145(n)]]`
-/

namespace A288341.P677461810220747952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P677461810220747952

noncomputable section

/-- A288341: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*...*(1-x^6)).

Offset 0, canonical program `A288341.P677461810220747952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288341 (n : ℕ) : ℤ :=
  A288341.P677461810220747952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288349.P2654528822955700226

`∑[A059268(n)]`
-/

namespace A288349.P2654528822955700226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P2654528822955700226

noncomputable section

/-- A288349: Partial sums of A059268.

Offset 1, canonical program `A288349.P2654528822955700226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349 (n : ℕ) : ℤ :=
  A288349.P2654528822955700226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289035.P15604890525171698629

`A188297(n+1)-A188300(n+1)`
-/

namespace A289035.P15604890525171698629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 1) - A188300 (n + 1)

end

end A289035.P15604890525171698629

noncomputable section

/-- A289035: Fixed point of the mapping 00->0010, 01->010, 10->010, starting with 00.

Offset 1, canonical program `A289035.P15604890525171698629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289035 (n : ℕ) : ℤ :=
  A289035.P15604890525171698629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289719.P1369595819095415179

`record[A274707(n+1)+1]`
-/

namespace A289719.P1369595819095415179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289719.P1369595819095415179

noncomputable section

/-- A289719: a(n) = (n/2)*binomial(2*n, n) + 1.

Offset 0, canonical program `A289719.P1369595819095415179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A289719 (n : ℕ) : ℤ :=
  A289719.P1369595819095415179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A289719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290230.P10636525088049313073

`or(A051049(n), A288811(n))`
-/

namespace A290230.P10636525088049313073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A288811 n)

end

end A290230.P10636525088049313073

noncomputable section

/-- A290230: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290230.P10636525088049313073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230 (n : ℕ) : ℤ :=
  A290230.P10636525088049313073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290452.P1449433213042397141

`A135528(A268234(n))`
-/

namespace A290452.P1449433213042397141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A268234 n).toNat

end

end A290452.P1449433213042397141

noncomputable section

/-- A290452: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 2.

Offset 0, canonical program `A290452.P1449433213042397141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290452 (n : ℕ) : ℤ :=
  A290452.P1449433213042397141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292030.P15227462893493143006

`A141169(n)+A025581(n)*A104763(n+1)`
-/

namespace A292030.P15227462893493143006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A025581 n * A104763 (n + 1)

end

end A292030.P15227462893493143006

noncomputable section

/-- A292030: Table read by ascending antidiagonals: T(n,k) = A000045(k+1)*n + A000045(k).

Offset 0, canonical program `A292030.P15227462893493143006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292030 (n : ℕ) : ℤ :=
  A292030.P15227462893493143006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292611.P2392908135108116771

`C(A189151(n+1), 2)`
-/

namespace A292611.P2392908135108116771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189151 (n + 1)).toNat 2

end

end A292611.P2392908135108116771

noncomputable section

/-- A292611: Skip 3 triangle numbers, take 1 triangle number, skip 4 triangle numbers, take 2 triangle numbers, skip 5 triangle numbers, take 3 triangle numbers, ...

Offset 1, canonical program `A292611.P2392908135108116771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292611 (n : ℕ) : ℤ :=
  (A292611.P2392908135108116771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292930.P3057802283522938846

`A125091(n+1)*A166350(n+1)`
-/

namespace A292930.P3057802283522938846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125091 (n + 1) * A166350 (n + 1)

end

end A292930.P3057802283522938846

noncomputable section

/-- A292930: Triangle read by rows: T(n,k) (n>=1, 3<=k<=n+2) is the number of k-sequences of balls colored with at most n colors such that exactly three balls are the same color as some other ball in the sequence.

Offset 1, canonical program `A292930.P3057802283522938846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A292930 (n : ℕ) : ℤ :=
  A292930.P3057802283522938846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A292930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295989.P16301422566830817347

`A080099(A268231(n+1))`
-/

namespace A295989.P16301422566830817347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (A268231 (n + 1)).toNat

end

end A295989.P16301422566830817347

noncomputable section

/-- A295989: Irregular triangle T(n, k), read by rows, n >= 0 and 0 <= k < A001316(n): T(n, k) is the (k+1)-th nonnegative number m such that n AND m = m (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A295989.P16301422566830817347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6563 terms. -/
def A295989 (n : ℕ) : ℤ :=
  A295989.P16301422566830817347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6563 terms. -/
def A295989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296180.P1607420442538355336

`2-A176625(n)`
-/

namespace A296180.P1607420442538355336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176625 n

end

end A296180.P1607420442538355336

noncomputable section

/-- A296180: Triangle read by rows: T(n, k) = 3*(n - k)*k + 1, n >= 0, 0 <= k <= n.

Offset 0, canonical program `A296180.P1607420442538355336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296180 (n : ℕ) : ℤ :=
  A296180.P1607420442538355336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299146.P13308450374639411893

`A074909(A014132(n+1))-A007401(n+1)+n`
-/

namespace A299146.P13308450374639411893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A014132 (n + 1)).toNat - A007401 (n + 1) + (n : ℤ)

end

end A299146.P13308450374639411893

noncomputable section

/-- A299146: Modified Pascal's triangle read by rows: T(n,k) = C(n+1,k) - n, 1 <= k <= n.

Offset 1, canonical program `A299146.P13308450374639411893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299146 (n : ℕ) : ℤ :=
  A299146.P13308450374639411893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299149.P13711120400628081044

`(2*A025480(n)+1)*A046643(n+1)`
-/

namespace A299149.P13711120400628081044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A025480 n + 1) * A046643 (n + 1)

end

end A299149.P13711120400628081044

noncomputable section

/-- A299149: Numerators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299149.P13711120400628081044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299149 (n : ℕ) : ℤ :=
  A299149.P13711120400628081044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299251.P202647037417824564

`A183003(∑[∑[log2(gcd(2, n))]])`
-/

namespace A299251.P202647037417824564
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299251.P202647037417824564

noncomputable section

/-- A299251: a(n) = ((Sum_{k=1..floor((n+1)^2/4)} d(k)) - T(n)) / 2, where d(n) = number of divisors of n (A000005) and T(n) = the n-th triangular number (A000217).

Offset 1, canonical program `A299251.P202647037417824564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A299251 (n : ℕ) : ℤ :=
  A299251.P202647037417824564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A299251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299504.P7690026812954744828

`A009998(n)*A233543(n)`
-/

namespace A299504.P7690026812954744828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A233543 n

end

end A299504.P7690026812954744828

noncomputable section

/-- A299504: Triangle read by rows, T(n,k) = (k+1)^(n-k)*k! for 0 <= k <= n.

Offset 0, canonical program `A299504.P7690026812954744828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A299504 (n : ℕ) : ℤ :=
  A299504.P7690026812954744828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A299504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301523.P361054495749073688

`A002260(n+1)!+A003057(n+2)!`
-/

namespace A301523.P361054495749073688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002260 (n + 1)).toNat + Nat.factorial (A003057 (n + 2)).toNat

end

end A301523.P361054495749073688

noncomputable section

/-- A301523: Integers which can be partitioned into two distinct factorials. 0! and 1! are not considered distinct.

Offset 1, canonical program `A301523.P361054495749073688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A301523 (n : ℕ) : ℤ :=
  (A301523.P361054495749073688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A301523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302764.P1454018840970518205

`2*A074909(n)-A074909(A007401(n+1))`
-/

namespace A302764.P1454018840970518205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A074909 (A007401 (n + 1)).toNat

end

end A302764.P1454018840970518205

noncomputable section

/-- A302764: Pascal-like triangle with A000012 as the left border and A080956 as the right border.

Offset 1, canonical program `A302764.P1454018840970518205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302764 (n : ℕ) : ℤ :=
  A302764.P1454018840970518205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303259.P6745834928257893132

`A046899(A007590(n))-A142150(n)`
-/

namespace A303259.P6745834928257893132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n).toNat - A142150 n

end

end A303259.P6745834928257893132

noncomputable section

/-- A303259: Number of ordered rooted trees with n non-root nodes such that the maximal outdegree equals ceiling(n/2).

Offset 0, canonical program `A303259.P6745834928257893132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259 (n : ℕ) : ℤ :=
  A303259.P6745834928257893132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305721.P5842318793537541038

`∑[A019563(n)]`
-/

namespace A305721.P5842318793537541038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305721.P5842318793537541038

noncomputable section

/-- A305721: Crystal ball sequence for the lattice C_7.

Offset 0, canonical program `A305721.P5842318793537541038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305721 (n : ℕ) : ℤ :=
  A305721.P5842318793537541038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306412.P6965010902203263788

`(n+1)*A239442(n+1)`
-/

namespace A306412.P6965010902203263788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239442 (n + 1)

end

end A306412.P6965010902203263788

noncomputable section

/-- A306412: a(n) = phi(n^8) = n^7*phi(n).

Offset 1, canonical program `A306412.P6965010902203263788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306412 (n : ℕ) : ℤ :=
  A306412.P6965010902203263788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306897.P7907252615614501728

`A306896(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306897.P7907252615614501728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306896 (n + 1) : ℚ) / 6

end

end A306897.P7907252615614501728

noncomputable section

/-- A306897: a(n) = A306896(n)/6.

Offset 1, canonical program `A306897.P7907252615614501728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306897.P7907252615614501728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308663.P15674035364685402174

`A163866(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A308663.P15674035364685402174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163866 n + (1 - a (n - 1))

end

end A308663.P15674035364685402174

noncomputable section

/-- A308663: Partial sums of A097805.

Offset 0, canonical program `A308663.P15674035364685402174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308663 (n : ℕ) : ℤ :=
  A308663.P15674035364685402174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308867.P12097156113695832026

`n*∑[A037145(n)-A008667(n)]`
-/

namespace A308867.P12097156113695832026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308867.P12097156113695832026

noncomputable section

/-- A308867: Sum of all the parts in the partitions of n into 6 parts.

Offset 0, canonical program `A308867.P12097156113695832026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A308867 (n : ℕ) : ℤ :=
  A308867.P12097156113695832026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A308867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309555.P8164692491126048069

`A077028(n)+2`
-/

namespace A309555.P8164692491126048069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + 2

end

end A309555.P8164692491126048069

noncomputable section

/-- A309555: Triangle read by rows: T(n,k) = 3 + k*(n-k) for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A309555.P8164692491126048069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309555 (n : ℕ) : ℤ :=
  A309555.P8164692491126048069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313053.P8254110359425895258

`A312903(n)+A002266(n+2)`
-/

namespace A313053.P8254110359425895258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A002266 (n + 2)

end

end A313053.P8254110359425895258

noncomputable section

/-- A313053: Coordination sequence Gal.5.114.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313053.P8254110359425895258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A313053 (n : ℕ) : ℤ :=
  A313053.P8254110359425895258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A313053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313255.P1594934984092539332

`A313116(n)+A002266(n+2)`
-/

namespace A313255.P1594934984092539332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A002266 (n + 2)

end

end A313255.P1594934984092539332

noncomputable section

/-- A313255: Coordination sequence Gal.5.87.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313255.P1594934984092539332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313255 (n : ℕ) : ℤ :=
  A313255.P1594934984092539332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313295.P668024408772330037

`A313154(n)+A002266(n+2)`
-/

namespace A313295.P668024408772330037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A002266 (n + 2)

end

end A313295.P668024408772330037

noncomputable section

/-- A313295: Coordination sequence Gal.5.90.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313295.P668024408772330037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A313295 (n : ℕ) : ℤ :=
  A313295.P668024408772330037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A313295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313476.P1237108097731061015

`A330025(n)+A312903(n)`
-/

namespace A313476.P1237108097731061015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312903 n

end

end A313476.P1237108097731061015

noncomputable section

/-- A313476: Coordination sequence Gal.5.53.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313476.P1237108097731061015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A313476 (n : ℕ) : ℤ :=
  A313476.P1237108097731061015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A313476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313565.P15751569244382166249

`A313144(n)+A128834(n)`
-/

namespace A313565.P15751569244382166249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313144 n + A128834 n

end

end A313565.P15751569244382166249

noncomputable section

/-- A313565: Coordination sequence Gal.5.219.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313565.P15751569244382166249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565 (n : ℕ) : ℤ :=
  A313565.P15751569244382166249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313698.P13755199689401812010

`A313251(n)+A128834(n)`
-/

namespace A313698.P13755199689401812010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A128834 n

end

end A313698.P13755199689401812010

noncomputable section

/-- A313698: Coordination sequence Gal.6.157.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313698.P13755199689401812010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698 (n : ℕ) : ℤ :=
  A313698.P13755199689401812010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313782.P12193786850322098717

`A330025(n)+A313154(n)`
-/

namespace A313782.P12193786850322098717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313154 n

end

end A313782.P12193786850322098717

noncomputable section

/-- A313782: Coordination sequence Gal.5.289.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313782.P12193786850322098717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313782 (n : ℕ) : ℤ :=
  A313782.P12193786850322098717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313853.P5161189615059206870

`A313246(n)+A128834(A004525(n))`
-/

namespace A313853.P5161189615059206870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A128834 (A004525 n).toNat

end

end A313853.P5161189615059206870

noncomputable section

/-- A313853: Coordination sequence Gal.6.156.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313853.P5161189615059206870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853 (n : ℕ) : ℤ :=
  A313853.P5161189615059206870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313922.P17676570645266848054

`A313246(n)+A004525(n)`
-/

namespace A313922.P17676570645266848054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004525 n

end

end A313922.P17676570645266848054

noncomputable section

/-- A313922: Coordination sequence Gal.6.356.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313922.P17676570645266848054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922 (n : ℕ) : ℤ :=
  A313922.P17676570645266848054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313924.P10563583441028807303

`A313251(n)+A004525(n)`
-/

namespace A313924.P10563583441028807303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A004525 n

end

end A313924.P10563583441028807303

noncomputable section

/-- A313924: Coordination sequence Gal.6.626.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313924.P10563583441028807303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924 (n : ℕ) : ℤ :=
  A313924.P10563583441028807303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314164.P3889961829732098224

`A313116(n)+A057354(2*n+1)`
-/

namespace A314164.P3889961829732098224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A057354 (2 * n + 1)

end

end A314164.P3889961829732098224

noncomputable section

/-- A314164: Coordination sequence Gal.5.302.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314164.P3889961829732098224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A314164 (n : ℕ) : ℤ :=
  A314164.P3889961829732098224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A314164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314252.P9634804335758676249

`A313116(n)+n`
-/

namespace A314252.P9634804335758676249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + (n : ℤ)

end

end A314252.P9634804335758676249

noncomputable section

/-- A314252: Coordination sequence Gal.5.295.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314252.P9634804335758676249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314252 (n : ℕ) : ℤ :=
  A314252.P9634804335758676249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314899.P7105760915525544627

`A004525(n)+A314841(n)-A004396(A004525(n))`
-/

namespace A314899.P7105760915525544627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004396 (A004525 n).toNat)

end

end A314899.P7105760915525544627

noncomputable section

/-- A314899: Coordination sequence Gal.6.153.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314899.P7105760915525544627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899 (n : ℕ) : ℤ :=
  A314899.P7105760915525544627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314912.P18076292877621533634

`A004525(n)+A314841(n)-A004525(A004396(n))`
-/

namespace A314912.P18076292877621533634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004525 (A004396 n).toNat)

end

end A314912.P18076292877621533634

noncomputable section

/-- A314912: Coordination sequence Gal.6.195.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314912.P18076292877621533634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912 (n : ℕ) : ℤ :=
  A314912.P18076292877621533634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315215.P4888791960146051438

`A313154(n)+A253262(A253262(n)+n)`
-/

namespace A315215.P4888791960146051438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A253262 (A253262 n + (n : ℤ)).toNat

end

end A315215.P4888791960146051438

noncomputable section

/-- A315215: Coordination sequence Gal.6.352.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315215.P4888791960146051438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315215 (n : ℕ) : ℤ :=
  A315215.P4888791960146051438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315266.P7852260397978347680

`A314841(n)+A004525(n)`
-/

namespace A315266.P7852260397978347680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A004525 n

end

end A315266.P7852260397978347680

noncomputable section

/-- A315266: Coordination sequence Gal.6.205.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315266.P7852260397978347680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266 (n : ℕ) : ℤ :=
  A315266.P7852260397978347680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315275.P16320743547030048239

`A330025(n)+A314972(n)`
-/

namespace A315275.P16320743547030048239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314972 n

end

end A315275.P16320743547030048239

noncomputable section

/-- A315275: Coordination sequence Gal.6.329.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315275.P16320743547030048239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275 (n : ℕ) : ℤ :=
  A315275.P16320743547030048239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315399.P10081948034211585204

`abs(A008592(n)-A313292(n))`
-/

namespace A315399.P10081948034211585204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313292 n|

end

end A315399.P10081948034211585204

noncomputable section

/-- A315399: Coordination sequence Gal.4.43.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315399.P10081948034211585204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399 (n : ℕ) : ℤ :=
  A315399.P10081948034211585204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315455.P3215631304142781688

`A313891(n)+A128834(n)`
-/

namespace A315455.P3215631304142781688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n + A128834 n

end

end A315455.P3215631304142781688

noncomputable section

/-- A315455: Coordination sequence Gal.6.208.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315455.P3215631304142781688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455 (n : ℕ) : ℤ :=
  A315455.P3215631304142781688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315468.P18044790226856226141

`A314972(n)+A253262(n)`
-/

namespace A315468.P18044790226856226141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314972 n + A253262 n

end

end A315468.P18044790226856226141

noncomputable section

/-- A315468: Coordination sequence Gal.5.300.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315468.P18044790226856226141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468 (n : ℕ) : ℤ :=
  A315468.P18044790226856226141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315512.P16857491610922492177

`A315246(n)+∑[A021913(n)]`
-/

namespace A315512.P16857491610922492177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315512.P16857491610922492177

noncomputable section

/-- A315512: Coordination sequence Gal.6.626.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315512.P16857491610922492177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512 (n : ℕ) : ℤ :=
  A315512.P16857491610922492177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315527.P15376779248736554616

`A314841(n)+n`
-/

namespace A315527.P15376779248736554616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + (n : ℤ)

end

end A315527.P15376779248736554616

noncomputable section

/-- A315527: Coordination sequence Gal.6.638.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315527.P15376779248736554616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527 (n : ℕ) : ℤ :=
  A315527.P15376779248736554616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315680.P2686874256871590290

`A315463(n)+A004396(n-A004396(n))`
-/

namespace A315680.P2686874256871590290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315680.P2686874256871590290

noncomputable section

/-- A315680: Coordination sequence Gal.5.89.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315680.P2686874256871590290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680 (n : ℕ) : ℤ :=
  A315680.P2686874256871590290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315681.P15551591667760656861

`A004525(n)+A315670(n)-A004525(A004396(n))`
-/

namespace A315681.P15551591667760656861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315670 n - A004525 (A004396 n).toNat)

end

end A315681.P15551591667760656861

noncomputable section

/-- A315681: Coordination sequence Gal.6.159.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315681.P15551591667760656861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681 (n : ℕ) : ℤ :=
  A315681.P15551591667760656861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315700.P8415465502126498151

`abs(11*n-A313891(n))`
-/

namespace A315700.P8415465502126498151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313891 n|

end

end A315700.P8415465502126498151

noncomputable section

/-- A315700: Coordination sequence Gal.6.638.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315700.P8415465502126498151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700 (n : ℕ) : ℤ :=
  A315700.P8415465502126498151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315768.P5080605822707988904

`A314208(n)+A004525(n)`
-/

namespace A315768.P5080605822707988904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n + A004525 n

end

end A315768.P5080605822707988904

noncomputable section

/-- A315768: Coordination sequence Gal.6.628.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315768.P5080605822707988904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768 (n : ℕ) : ℤ :=
  A315768.P5080605822707988904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316717.P5515055320797680457

`A014081(eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A316717.P5515055320797680457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316717.P5515055320797680457

noncomputable section

/-- A316717: a(n) is the number of 3s in A316713(n). That is, a(n) is the number of C-sequences (A278041) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316717.P5515055320797680457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717 (n : ℕ) : ℤ :=
  A316717.P5515055320797680457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316831.P2741381390933968218

`A046819(a(floor(n/2))+n%2)` with `a(0)=0, a(1)=1`
-/

namespace A316831.P2741381390933968218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A046819 (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat

end

end A316831.P2741381390933968218

noncomputable section

/-- A316831: Trajectory of 0 under repeated application of the morphism 0 -> 01, 1 -> 21, 2 -> 13, 3 -> 33.

Offset 0, canonical program `A316831.P2741381390933968218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831 (n : ℕ) : ℤ :=
  A316831.P2741381390933968218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317189.P4789240492486274008

`5%(A316826(n)+1)`
-/

namespace A317189.P4789240492486274008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A316826 n + 1)

end

end A317189.P4789240492486274008

noncomputable section

/-- A317189: A morphic sequence related to the ternary Thue-Morse sequence.

Offset 0, canonical program `A317189.P4789240492486274008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317189 (n : ℕ) : ℤ :=
  A317189.P4789240492486274008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317673.P16095288745684130217

`A001511(n+1)*A209635(n+1)`
-/

namespace A317673.P16095288745684130217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A209635 (n + 1)

end

end A317673.P16095288745684130217

noncomputable section

/-- A317673: Moebius transform of A129502.

Offset 1, canonical program `A317673.P16095288745684130217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317673 (n : ℕ) : ℤ :=
  A317673.P16095288745684130217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317933.P9961828793587788294

`A046643(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A317933.P9961828793587788294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A317933.P9961828793587788294

noncomputable section

/-- A317933: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A034444 (number of unitary divisors of n).

Offset 1, canonical program `A317933.P9961828793587788294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933 (n : ℕ) : ℤ :=
  A317933.P9961828793587788294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317950.P649723107157043023

`Δ[abs(1-A317198(n))]`
-/

namespace A317950.P649723107157043023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A317198 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P649723107157043023

noncomputable section

/-- A317950: First differences of ternary tribonacci word A080843.

Offset 0, canonical program `A317950.P649723107157043023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950 (n : ℕ) : ℤ :=
  A317950.P649723107157043023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318449.P14690494041851434724

`A046643((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A318449.P14690494041851434724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A318449.P14690494041851434724

noncomputable section

/-- A318449: Numerators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318449.P14690494041851434724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318449 (n : ℕ) : ℤ :=
  A318449.P14690494041851434724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319526.P2244776712575752577

`∑{d}[A003991(n+1), #]`
-/

namespace A319526.P2244776712575752577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A319526.P2244776712575752577

noncomputable section

/-- A319526: Square array read by antidiagonals upwards: T(n,k) = sigma(n*k), n >= 1, k >= 1.

Offset 1, canonical program `A319526.P2244776712575752577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319526 (n : ℕ) : ℤ :=
  (A319526.P2244776712575752577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321258.P10467559747908190419

`A109974(A061579(n))-A009998(n)`
-/

namespace A321258.P10467559747908190419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A061579 n).toNat - A009998 n

end

end A321258.P10467559747908190419

noncomputable section

/-- A321258: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = sigma_k(n) - n^k.

Offset 1, canonical program `A321258.P10467559747908190419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4656 terms. -/
def A321258 (n : ℕ) : ℤ :=
  A321258.P10467559747908190419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4656 terms. -/
def A321258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321861.P2022339291446395564

`∑[and(2, -A138420(n+1))]-n`
-/

namespace A321861.P2022339291446395564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A138420 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A321861.P2022339291446395564

noncomputable section

/-- A321861: a(n) = A071838(prime(n)).

Offset 1, canonical program `A321861.P2022339291446395564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321861 (n : ℕ) : ℤ :=
  A321861.P2022339291446395564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322431.P11477619645148095533

`eq[0, A121444(n)]`
-/

namespace A322431.P11477619645148095533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P11477619645148095533

noncomputable section

/-- A322431: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^10 is zero.

Offset 1, canonical program `A322431.P11477619645148095533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431 (n : ℕ) : ℤ :=
  (A322431.P11477619645148095533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323466.P8596251984879986670

`A005811(n+1)+A014081(n+1)+1`
-/

namespace A323466.P8596251984879986670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + (A014081 (n + 1) + 1)

end

end A323466.P8596251984879986670

noncomputable section

/-- A323466: Number of terms in row n of A323465.

Offset 1, canonical program `A323466.P8596251984879986670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466 (n : ℕ) : ℤ :=
  A323466.P8596251984879986670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324470.P11516600818281016258

`∑[2-A317198(n)]`
-/

namespace A324470.P11516600818281016258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P11516600818281016258

noncomputable section

/-- A324470: Partial sums of ternary tribonacci word A092782.

Offset 1, canonical program `A324470.P11516600818281016258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470 (n : ℕ) : ℤ :=
  A324470.P11516600818281016258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327217.P245651097107119372

`lt[n*A327216(n), n]`
-/

namespace A327217.P245651097107119372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327216 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327217.P245651097107119372

noncomputable section

/-- A327217: Positions of 0's in {A327216(n) : n > 0}.

Offset 1, canonical program `A327217.P245651097107119372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327217 (n : ℕ) : ℤ :=
  (A327217.P245651097107119372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327218.P13898235747039253329

`A327176(n+1)-A327174(A327176(n+1)+1)`
-/

namespace A327218.P13898235747039253329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1) - A327174 (A327176 (n + 1) + 1).toNat

end

end A327218.P13898235747039253329

noncomputable section

/-- A327218: Positions of 1's in {A327216(n) : n > 0}.

Offset 1, canonical program `A327218.P13898235747039253329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327218 (n : ℕ) : ℤ :=
  A327218.P13898235747039253329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327224.P10926925885471084677

`A327207(n+1)-A327205(A327207(n+2)-3)`
-/

namespace A327224.P10926925885471084677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1) - A327205 (A327207 (n + 2) - 3).toNat

end

end A327224.P10926925885471084677

noncomputable section

/-- A327224: Positions of 1's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327224.P10926925885471084677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224 (n : ℕ) : ℤ :=
  A327224.P10926925885471084677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327317.P17591906357367732011

`A059268(n)*A096035(n+1)`
-/

namespace A327317.P17591906357367732011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A096035 (n + 1)

end

end A327317.P17591906357367732011

noncomputable section

/-- A327317: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = 2^(n-1) ((x+r)^n - (x+s)^n)/(r - s), where r = 2 and s = 1/2.

Offset 1, canonical program `A327317.P17591906357367732011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8552 terms. -/
def A327317 (n : ℕ) : ℤ :=
  A327317.P17591906357367732011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8552 terms. -/
def A327317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327474.P4290522059966938305

`A135342(n*a(floor(acot(n))))+1` with `a(0)=1`
-/

namespace A327474.P4290522059966938305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135342 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat + 1

end

end A327474.P4290522059966938305

noncomputable section

/-- A327474: Number of distinct means of subsets of {1..n}, where {} has mean 0.

Offset 0, canonical program `A327474.P4290522059966938305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327474 (n : ℕ) : ℤ :=
  A327474.P4290522059966938305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328372.P17781344567388749627

`A035263(n+1)*A298735(n+1)`
-/

namespace A328372.P17781344567388749627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A298735 (n + 1)

end

end A328372.P17781344567388749627

noncomputable section

/-- A328372: Expansion of Sum_{k>=1} x^(k^2) / (1 - x^(2*k^2)).

Offset 1, canonical program `A328372.P17781344567388749627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328372 (n : ℕ) : ℤ :=
  A328372.P17781344567388749627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329688.P15403590587362411359

`A329686(A042965(n+1))`
-/

namespace A329688.P15403590587362411359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A042965 (n + 1)).toNat

end

end A329688.P15403590587362411359

noncomputable section

/-- A329688: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, HD and DU.

Offset 0, canonical program `A329688.P15403590587362411359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688 (n : ℕ) : ℤ :=
  A329688.P15403590587362411359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330179.P2494087960825005647

`floor(3*A292666(n+1)/2)`
-/

namespace A330179.P2494087960825005647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A292666 (n + 1) : ℚ) / 2)⌋

end

end A330179.P2494087960825005647

noncomputable section

/-- A330179: a(n) = n + floor(ns/r) + floor(nt/r), where r = e - 1, s = e, t = e + 1.

Offset 1, canonical program `A330179.P2494087960825005647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330179 (n : ℕ) : ℤ :=
  A330179.P2494087960825005647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330547.P14620749538624071463

`∑[A033999(n)*A054541(n+1)]`
-/

namespace A330547.P14620749538624071463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330547.P14620749538624071463

noncomputable section

/-- A330547: a(1)=2; thereafter a(n) = a(n-1) + (-1)^(n+1)*(prime(n)-prime(n-1)) (where prime(k) denotes the k-th prime).

Offset 1, canonical program `A330547.P14620749538624071463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330547 (n : ℕ) : ℤ :=
  A330547.P14620749538624071463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330933.P1547525484770531212

`∩[A330932(n+1)-1, A330932(n+1)]`
-/

namespace A330933.P1547525484770531212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330933.P1547525484770531212

noncomputable section

/-- A330933: Starts of runs of 4 consecutive Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330933.P1547525484770531212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933 (n : ℕ) : ℤ :=
  (A330933.P1547525484770531212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330965.P15528813923853205152

`A000108(A002262(n))*A077028(n)`
-/

namespace A330965.P15528813923853205152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A077028 n

end

end A330965.P15528813923853205152

noncomputable section

/-- A330965: Array read by descending antidiagonals: A(n,k) = (1 + k*n)*C(n) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A330965.P15528813923853205152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330965 (n : ℕ) : ℤ :=
  A330965.P15528813923853205152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331830.P3749508068268674475

`A268272(eq[1, A268272(n+1)-A268272(n)])`
-/

namespace A331830.P3749508068268674475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (n + 1) - A268272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331830.P3749508068268674475

noncomputable section

/-- A331830: Numbers k such that k and k + 1 are both negabinary evil numbers.

Offset 1, canonical program `A331830.P3749508068268674475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830 (n : ℕ) : ℤ :=
  A331830.P3749508068268674475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331831.P1834665176300229750

`record[A141310(A268272(A004442(n)))]`
-/

namespace A331831.P1834665176300229750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A268272 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331831.P1834665176300229750

noncomputable section

/-- A331831: Numbers k such that k and k + 1 are both negabinary odious numbers.

Offset 1, canonical program `A331831.P1834665176300229750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831 (n : ℕ) : ℤ :=
  A331831.P1834665176300229750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332644.P7124613951883106852

`a(n-1)*A037126(n)` with `a(0)=1`
-/

namespace A332644.P7124613951883106852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A037126 n

end

end A332644.P7124613951883106852

noncomputable section

/-- A332644: Largest of the least integers of prime signatures over all partitions of n into distinct parts.

Offset 0, canonical program `A332644.P7124613951883106852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A332644 (n : ℕ) : ℤ :=
  A332644.P7124613951883106852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A332644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333427.P1257739180150662020

`∩[A333426(n+1)-1, A333426(n+1)]`
-/

namespace A333427.P1257739180150662020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333427.P1257739180150662020

noncomputable section

/-- A333427: Numbers k such that k and k+1 are both primorial base Niven numbers (A333426).

Offset 1, canonical program `A333427.P1257739180150662020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A333427 (n : ℕ) : ℤ :=
  (A333427.P1257739180150662020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A333427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333449.P15383882884305754423

`∑[∑{d}[n+1, A054541(#)]]`
-/

namespace A333449.P15383882884305754423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A054541 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333449.P15383882884305754423

noncomputable section

/-- A333449: a(n) = Sum_{k=1..n} prime(floor(n/k)).

Offset 1, canonical program `A333449.P15383882884305754423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333449 (n : ℕ) : ℤ :=
  A333449.P15383882884305754423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333623.P14520114881090528427

`lt[(n+1)%A319715(n+1), 1]+1`
-/

namespace A333623.P14520114881090528427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A319715 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333623.P14520114881090528427

noncomputable section

/-- A333623: Numbers k such that k is divisible by the sum of digits of all the divisors of k in primorial base (A319715).

Offset 1, canonical program `A333623.P14520114881090528427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623 (n : ℕ) : ℤ :=
  (A333623.P14520114881090528427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333911.P8917969992325064657

`eq[1, A229062(A000203(n+1))]+1`
-/

namespace A333911.P8917969992325064657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333911.P8917969992325064657

noncomputable section

/-- A333911: Numbers k such that sigma(k) is the sum of 2 squares, where sigma is the sum of divisors function (A000203).

Offset 1, canonical program `A333911.P8917969992325064657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3215 terms. -/
def A333911 (n : ℕ) : ℤ :=
  (A333911.P8917969992325064657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3215 terms. -/
def A333911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334156.P17698209707109941031

`A007526(A002260(n+1))*A173333(n+1)`
-/

namespace A334156.P17698209707109941031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 (A002260 (n + 1)).toNat * A173333 (n + 1)

end

end A334156.P17698209707109941031

noncomputable section

/-- A334156: Triangle read by rows: T(n,m) is the number of length n decorated permutations avoiding the word 0^m = 0...0 of m 0's, where 1 <= m <= n.

Offset 1, canonical program `A334156.P17698209707109941031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A334156 (n : ℕ) : ℤ :=
  A334156.P17698209707109941031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A334156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334977.P15905360750646034264

`A030983(n+3)+A000007(n)-A006013(n)`
-/

namespace A334977.P15905360750646034264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030983 (n + 3) + (A000007 n - A006013 n)

end

end A334977.P15905360750646034264

noncomputable section

/-- A334977: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 2_1-Dyck paths of length 3*n. A 2_1-Dyck path is a lattice path with steps (1, 2), (1, -1) that starts and ends at y = 0 and stays above the line y = -1.

Offset 0, canonical program `A334977.P15905360750646034264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A334977 (n : ℕ) : ℤ :=
  A334977.P15905360750646034264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A334977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336194.P7969052725366895353

`A003991(n+1)*A133819(n+1)-1`
-/

namespace A336194.P7969052725366895353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A133819 (n + 1) - 1

end

end A336194.P7969052725366895353

noncomputable section

/-- A336194: Table read by antidiagonals upwards: T(n,k) = (n - 1)*k^3 - 1, with n > 1 and k > 0.

Offset 2, canonical program `A336194.P7969052725366895353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336194 (n : ℕ) : ℤ :=
  A336194.P7969052725366895353.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336407.P9817670677513642301

`A153238(n+1)+n`
-/

namespace A336407.P9817670677513642301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + (n : ℤ)

end

end A336407.P9817670677513642301

noncomputable section

/-- A336407: a(n) is the number of composites < n-th odd composite.

Offset 1, canonical program `A336407.P9817670677513642301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336407 (n : ℕ) : ℤ :=
  A336407.P9817670677513642301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337499.P4185763426435453726

`A128014(n+2)-A126869(n)`
-/

namespace A337499.P4185763426435453726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (n + 2) - A126869 n

end

end A337499.P4185763426435453726

noncomputable section

/-- A337499: a(n) is the number of ballot sequences of length n tied or won by at most 2 votes.

Offset 0, canonical program `A337499.P4185763426435453726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A337499 (n : ℕ) : ℤ :=
  A337499.P4185763426435453726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A337499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338280.P8662157662031272285

`A058127(A099375(n)+2+n)`
-/

namespace A338280.P8662157662031272285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A099375 n + 2 + (n : ℤ)).toNat

end

end A338280.P8662157662031272285

noncomputable section

/-- A338280: Triangle T read by rows: T(n, k) = k*n^(n-k-1) with 0 < k < n.

Offset 2, canonical program `A338280.P8662157662031272285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A338280 (n : ℕ) : ℤ :=
  A338280.P8662157662031272285.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A338280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339330.P9380063307165119255

`∑[∑[A283681(n+1)]]`
-/

namespace A339330.P9380063307165119255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339330.P9380063307165119255

noncomputable section

/-- A339330: Sums of antidiagonals in A283681.

Offset 1, canonical program `A339330.P9380063307165119255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339330 (n : ℕ) : ℤ :=
  A339330.P9380063307165119255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339332.P17681451593917756509

`∑[A283683(n+1)]`
-/

namespace A339332.P17681451593917756509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339332.P17681451593917756509

noncomputable section

/-- A339332: Sums of antidiagonals in A283683.

Offset 1, canonical program `A339332.P17681451593917756509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339332 (n : ℕ) : ℤ :=
  A339332.P17681451593917756509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339363.P14614584923142497431

`1-A134478(∑[A118175(n)])+n`
-/

namespace A339363.P14614584923142497431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A134478 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A339363.P14614584923142497431

noncomputable section

/-- A339363: a(n) = Sum_{k=1..floor(sqrt(n))} floor(sqrt(n-k)).

Offset 1, canonical program `A339363.P14614584923142497431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339363 (n : ℕ) : ℤ :=
  A339363.P14614584923142497431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340373.P15583899175214030426

`A014081(A068068(n+1)+1)`
-/

namespace A340373.P15583899175214030426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A068068 (n + 1) + 1).toNat

end

end A340373.P15583899175214030426

noncomputable section

/-- A340373: a(n) = 1 if n is of the form of 2^i * p^j, with p an odd prime, and i>=0, j>=1, otherwise 0.

Offset 1, canonical program `A340373.P15583899175214030426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340373 (n : ℕ) : ℤ :=
  A340373.P15583899175214030426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340649.P12468037859103549001

`A097240(n+1)%A000040(n+1)`
-/

namespace A340649.P12468037859103549001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097240 (n + 1)) (A000040 (n + 1))

end

end A340649.P12468037859103549001

noncomputable section

/-- A340649: a(n) = (n*prime(n+1)) mod prime(n).

Offset 1, canonical program `A340649.P12468037859103549001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340649 (n : ℕ) : ℤ :=
  A340649.P12468037859103549001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342149.P10655591128175794512

`A193588(n)%(A193592(n)+1)`
-/

namespace A342149.P10655591128175794512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193588 n) (A193592 n + 1)

end

end A342149.P10655591128175794512

noncomputable section

/-- A342149: Infinite square matrix A(m,n) = F(m+1) mod (n+1), m,n >= 1, where F = Fibonacci = A000045, read by falling antidiagonals.

Offset 1, canonical program `A342149.P10655591128175794512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A342149 (n : ℕ) : ℤ :=
  A342149.P10655591128175794512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A342149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342905.P12915829879305596197

`∏{p}[A003990(n+1), #]`
-/

namespace A342905.P12915829879305596197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P12915829879305596197

noncomputable section

/-- A342905: Array read by antidiagonals: T(n,k) = product of all distinct primes dividing n*k (n>=1, k>=1).

Offset 1, canonical program `A342905.P12915829879305596197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342905 (n : ℕ) : ℤ :=
  (A342905.P12915829879305596197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343174.P1593472062629477177

`A004526(n+2)+A033264(n+1)`
-/

namespace A343174.P1593472062629477177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 2) + A033264 (n + 1)

end

end A343174.P1593472062629477177

noncomputable section

/-- A343174: Partial sums of paper-folding sequence A014577.

Offset 0, canonical program `A343174.P1593472062629477177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343174 (n : ℕ) : ℤ :=
  A343174.P1593472062629477177.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343752.P15498230505190100503

`∑[(n+1)*Δ[A094727(n+1)]]`
-/

namespace A343752.P15498230505190100503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343752.P15498230505190100503

noncomputable section

/-- A343752: a(1) = 1; for n > 1, a(n) = n if a(n-1) is divisible by n, otherwise a(n) = a(n-1)+n.

Offset 1, canonical program `A343752.P15498230505190100503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343752 (n : ℕ) : ℤ :=
  A343752.P15498230505190100503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344136.P9980595951335920740

`A265612(n)+Δ[A014137(n)]`
-/

namespace A344136.P9980595951335920740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + (f1 (n + 1) - f1 n)

end

end A344136.P9980595951335920740

noncomputable section

/-- A344136: Number of linear intervals in the Tamari lattices.

Offset 1, canonical program `A344136.P9980595951335920740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A344136 (n : ℕ) : ℤ :=
  A344136.P9980595951335920740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A344136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344343.P11569095817677921307

`A344342(eq[1, A344342(n+2)-A344342(n+1)]+1)`
-/

namespace A344343.P11569095817677921307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 2) - A344342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A344343.P11569095817677921307

noncomputable section

/-- A344343: Starts of runs of 3 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344343.P11569095817677921307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343 (n : ℕ) : ℤ :=
  A344343.P11569095817677921307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344442.P16917334550170264371

`A332844(n+1)-(n+1)`
-/

namespace A344442.P16917334550170264371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332844 (n + 1) - (n + 1 : ℤ)

end

end A344442.P16917334550170264371

noncomputable section

/-- A344442: a(n) = A332844(n) - n.

Offset 1, canonical program `A344442.P16917334550170264371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344442 (n : ℕ) : ℤ :=
  A344442.P16917334550170264371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345948.P11405303974706039683

`A344875(n+1)/A345947(n+1)`
-/

namespace A345948.P11405303974706039683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345948.P11405303974706039683

noncomputable section

/-- A345948: a(n) = A344875(n) / gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345948.P11405303974706039683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345948.P11405303974706039683.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345949.P11427355484984809944

`A028310(ceil(n/A345947(n+1)))`
-/

namespace A345949.P11427355484984809944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌈(n : ℚ) / (A345947 (n + 1) : ℚ)⌉.toNat

end

end A345949.P11427355484984809944

noncomputable section

/-- A345949: a(n) = A153151(n) / gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345949.P11427355484984809944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345949 (n : ℕ) : ℤ :=
  A345949.P11427355484984809944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347026.P1087206353886803899

`or(1, A253580(n))`
-/

namespace A347026.P1087206353886803899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253580 n)

end

end A347026.P1087206353886803899

noncomputable section

/-- A347026: Irregular triangle read by rows in which row n lists the first n odd numbers, followed by the first n odd numbers in decreasing order.

Offset 1, canonical program `A347026.P1087206353886803899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026 (n : ℕ) : ℤ :=
  A347026.P1087206353886803899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347204.P9262415258510155147

`a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`
-/

namespace A347204.P9262415258510155147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2)).toNat + a ⌊((2 * n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2⌋.toNat

end

end A347204.P9262415258510155147

noncomputable section

/-- A347204: a(n) = a(f(n)/2) + a(floor((n+f(n))/2)) for n > 0 with a(0) = 1 where f(n) = A129760(n).

Offset 0, canonical program `A347204.P9262415258510155147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347204 (n : ℕ) : ℤ :=
  (A347204.P9262415258510155147.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348110.P12801139591298659931

`∑[char[A100345(n)-1]]`
-/

namespace A348110.P12801139591298659931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348110.P12801139591298659931

noncomputable section

/-- A348110: Number of positive integers <= n that have middle divisors.

Offset 1, canonical program `A348110.P12801139591298659931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348110 (n : ℕ) : ℤ :=
  (A348110.P12801139591298659931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348239.P18203730916746657209

`∑[A348237(n)]`
-/

namespace A348239.P18203730916746657209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P18203730916746657209

noncomputable section

/-- A348239: Partial sums of A348237.

Offset 0, canonical program `A348239.P18203730916746657209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348239 (n : ℕ) : ℤ :=
  A348239.P18203730916746657209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348569.P9711021300508659903

`A133529(n+1)+A100484(n+1)*A215848(n+1)`
-/

namespace A348569.P9711021300508659903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) + A100484 (n + 1) * A215848 (n + 1)

end

end A348569.P9711021300508659903

noncomputable section

/-- A348569: a(n) = (prime(n) + prime(n+2))^2 + prime(n+1)^2.

Offset 1, canonical program `A348569.P9711021300508659903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348569 (n : ℕ) : ℤ :=
  A348569.P9711021300508659903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349695.P12576152736790949178

`A265612(n)+A001700(n)`
-/

namespace A349695.P12576152736790949178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + A001700 n

end

end A349695.P12576152736790949178

noncomputable section

/-- A349695: a(n) = (2n^2 - n + 2) * (2n)! / ((n + 1) * (n + 2) * n!^2).

Offset 1, canonical program `A349695.P12576152736790949178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A349695 (n : ℕ) : ℤ :=
  A349695.P12576152736790949178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A349695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349831.P6974818940591901218

`∩[2*n, A349830(n+1)]`
-/

namespace A349831.P6974818940591901218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349831.P6974818940591901218

noncomputable section

/-- A349831: Even numbers in the intersection of A228082 and A349829.

Offset 1, canonical program `A349831.P6974818940591901218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A349831 (n : ℕ) : ℤ :=
  (A349831.P6974818940591901218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A349831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349847.P4438692081841496329

`2*A349835(n)-A000984(n)`
-/

namespace A349847.P4438692081841496329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349835 n - A000984 n

end

end A349847.P4438692081841496329

noncomputable section

/-- A349847: Expansion of (1 + 8*x) / sqrt(1 - 4*x).

Offset 0, canonical program `A349847.P4438692081841496329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349847 (n : ℕ) : ℤ :=
  A349847.P4438692081841496329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350289.P15999425623583731686

`A010060(A004198(n))`
-/

namespace A350289.P15999425623583731686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004198 n).toNat

end

end A350289.P15999425623583731686

noncomputable section

/-- A350289: Infinite binary Walsh matrix read by antidiagonals.

Offset 0, canonical program `A350289.P15999425623583731686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350289 (n : ℕ) : ℤ :=
  A350289.P15999425623583731686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350700.P12913165554531738281

`Δ[A214923(abs(1-n))]`
-/

namespace A350700.P12913165554531738281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214923 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350700.P12913165554531738281

noncomputable section

/-- A350700: a(n) is the number of 1's minus the number of 0's in A004685(n).

Offset 0, canonical program `A350700.P12913165554531738281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700 (n : ℕ) : ℤ :=
  A350700.P12913165554531738281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350704.P136889457551582597

`filter[A156543(n+1), A066247(#)]`
-/

namespace A350704.P136889457551582597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A350704.P136889457551582597

noncomputable section

/-- A350704: Composite numbers that have no Sophie Germain prime factors.

Offset 1, canonical program `A350704.P136889457551582597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704 (n : ℕ) : ℤ :=
  A350704.P136889457551582597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351246.P6585149693211895413

`∑{d}[n+1, A306411(#)*A351245((n+1)/#)]`
-/

namespace A351246.P6585149693211895413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A351245 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351246.P6585149693211895413

noncomputable section

/-- A351246: a(n) = n^6 * Sum_{p|n, p prime} 1/p^6.

Offset 1, canonical program `A351246.P6585149693211895413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351246 (n : ℕ) : ℤ :=
  A351246.P6585149693211895413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351565.P4578675158118181757

`2*A110963(n+1)-1`
-/

namespace A351565.P4578675158118181757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110963 (n + 1) - 1

end

end A351565.P4578675158118181757

noncomputable section

/-- A351565: Odd part of Kimberling's paraphrase of the binary number system: a(n) = A000265(A003602(n)).

Offset 1, canonical program `A351565.P4578675158118181757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351565 (n : ℕ) : ℤ :=
  A351565.P4578675158118181757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352035.P12919876970250570103

`A321811(n+1)%∑[A022523(n)]`
-/

namespace A352035.P12919876970250570103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321811 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352035.P12919876970250570103

noncomputable section

/-- A352035: Sum of the 7th powers of the odd proper divisors of n.

Offset 1, canonical program `A352035.P12919876970250570103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352035 (n : ℕ) : ℤ :=
  A352035.P12919876970250570103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352291.P14610308504021664996

`A094694(eq[1, A094694(n+1)%2]+1)`
-/

namespace A352291.P14610308504021664996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094694 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352291.P14610308504021664996

noncomputable section

/-- A352291: Odd numbers k such that hammingweight(k^2) < hammingweight(k).

Offset 1, canonical program `A352291.P14610308504021664996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291 (n : ℕ) : ℤ :=
  A352291.P14610308504021664996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352785.P6519807018689113948

`A092391(A352776(n+1))`
-/

namespace A352785.P6519807018689113948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A352776 (n + 1)).toNat

end

end A352785.P6519807018689113948

noncomputable section

/-- A352785: Numbers k such that w(k - w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352785.P6519807018689113948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352785 (n : ℕ) : ℤ :=
  A352785.P6519807018689113948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353297.P5129831878395689733

`A002260(A268232(n+1))`
-/

namespace A353297.P5129831878395689733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A268232 (n + 1)).toNat

end

end A353297.P5129831878395689733

noncomputable section

/-- A353297: The i-values of pairs (i,j) listed in A353296.

Offset 1, canonical program `A353297.P5129831878395689733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353297 (n : ℕ) : ℤ :=
  A353297.P5129831878395689733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353298.P2133043049665979406

`A025581(A268232(n+1))`
-/

namespace A353298.P2133043049665979406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A268232 (n + 1)).toNat

end

end A353298.P2133043049665979406

noncomputable section

/-- A353298: The j-values of pairs (i,j) listed in A353296.

Offset 1, canonical program `A353298.P2133043049665979406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353298 (n : ℕ) : ℤ :=
  A353298.P2133043049665979406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353626.P12115139591417466746

`1-abs(A209635(n+1))`
-/

namespace A353626.P12115139591417466746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A209635 (n + 1)|

end

end A353626.P12115139591417466746

noncomputable section

/-- A353626: a(n) = 1 if n is a multiple of the square of an odd prime (equally: if the odd part of n is not squarefree), otherwise 0.

Offset 1, canonical program `A353626.P12115139591417466746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353626 (n : ℕ) : ℤ :=
  A353626.P12115139591417466746.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353627.P16518077331837195055

`abs(A209635(n+1))`
-/

namespace A353627.P16518077331837195055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209635 (n + 1)|

end

end A353627.P16518077331837195055

noncomputable section

/-- A353627: a(n) = 1 if the odd part of n is squarefree, otherwise 0.

Offset 1, canonical program `A353627.P16518077331837195055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353627 (n : ℕ) : ℤ :=
  A353627.P16518077331837195055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354039.P14555955065410119290

`lt[0, A354036(n+1)]+1`
-/

namespace A354039.P14555955065410119290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354039.P14555955065410119290

noncomputable section

/-- A354039: Odd numbers k for which sigma(k^2) == 1 (mod 4).

Offset 1, canonical program `A354039.P14555955065410119290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039 (n : ℕ) : ℤ :=
  (A354039.P14555955065410119290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354108.P16647006842029194396

`A154269(A304182(A304182(n+1))²)`
-/

namespace A354108.P16647006842029194396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A304182 (A304182 (n + 1)).toNat ^ 2).toNat

end

end A354108.P16647006842029194396

noncomputable section

/-- A354108: a(n) = 1 if n is neither an odd prime power nor twice an odd prime power, otherwise 0.

Offset 1, canonical program `A354108.P16647006842029194396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354108 (n : ℕ) : ℤ :=
  A354108.P16647006842029194396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354271.P8549106110734970551

`p?[A037126(n+1)-A025581(n)]`
-/

namespace A354271.P8549106110734970551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P8549106110734970551

noncomputable section

/-- A354271: Irregular array of the prime numbers read by rows.

Offset 1, canonical program `A354271.P8549106110734970551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. -/
def A354271 (n : ℕ) : ℤ :=
  A354271.P8549106110734970551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. -/
def A354271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357372.P4923733421453701218

`A003057(n+2)/gcd(A128227(n)², A003057(n+2))`
-/

namespace A357372.P4923733421453701218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / (Int.gcd (A128227 n ^ 2) (A003057 (n + 2)) : ℚ)

end

end A357372.P4923733421453701218

noncomputable section

/-- A357372: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) is the numerator of 1/n + 1/k.

Offset 1, canonical program `A357372.P4923733421453701218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357372 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357372.P4923733421453701218.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357814.P14551271944199952944

`floor(A131410(n+1)/A104763(n+1))`
-/

namespace A357814.P14551271944199952944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131410 (n + 1) : ℚ) / (A104763 (n + 1) : ℚ)⌋

end

end A357814.P14551271944199952944

noncomputable section

/-- A357814: Triangular array read by rows: T(n,k) is the quotient on division of Fib(n) by Fib(k) for 1 <= k <= n, where Fib(k) = A000045(k).

Offset 1, canonical program `A357814.P14551271944199952944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357814 (n : ℕ) : ℤ :=
  A357814.P14551271944199952944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359153.P11980574962426657024

`filter[A004767(n), A354036(#)]`
-/

namespace A359153.P11980574962426657024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359153.P11980574962426657024

noncomputable section

/-- A359153: Numbers of the form 4u+3 with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359153.P11980574962426657024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153 (n : ℕ) : ℤ :=
  A359153.P11980574962426657024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359373.P13677423627337552667

`eq[1, A359372(n+1)]+1`
-/

namespace A359373.P13677423627337552667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359373.P13677423627337552667

noncomputable section

/-- A359373: Nonmultiples of 4 that have an odd number of prime factors (with multiplicity).

Offset 1, canonical program `A359373.P13677423627337552667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359373 (n : ℕ) : ℤ :=
  (A359373.P13677423627337552667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359411.P11879795316904517508

`∏{e}[n+1, A092505(#)]`
-/

namespace A359411.P11879795316904517508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092505 (Nat.factorization (f1 n) p)

end

end A359411.P11879795316904517508

noncomputable section

/-- A359411: a(n) is the number of divisors of n that are both infinitary and exponential.

Offset 1, canonical program `A359411.P11879795316904517508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411 (n : ℕ) : ℤ :=
  A359411.P11879795316904517508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359834.P8118747049772739298

`lcm(A209635(n+1), A332732(n+1))`
-/

namespace A359834.P8118747049772739298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A209635 (n + 1)) (A332732 (n + 1))

end

end A359834.P8118747049772739298

noncomputable section

/-- A359834: Parity of Dirichlet inverse of A359832, where A359832(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359834.P8118747049772739298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359834 (n : ℕ) : ℤ :=
  (A359834.P8118747049772739298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360163.P4073483441112475958

`(A069290(n+1)+A347176(n+1))/2`
-/

namespace A360163.P4073483441112475958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069290 (n + 1) + A347176 (n + 1) : ℚ) / 2

end

end A360163.P4073483441112475958

noncomputable section

/-- A360163: a(n) is the sum of the square roots of the divisors of n that are odd squares.

Offset 1, canonical program `A360163.P4073483441112475958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A347176, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360163.P4073483441112475958.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A347176, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360397.P4343971559024488872

`record[(n+1)*(A316826(n)+1)-2]`
-/

namespace A360397.P4343971559024488872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A316826 n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360397.P4343971559024488872

noncomputable section

/-- A360397: Intersection of A356133 and A360393.

Offset 1, canonical program `A360397.P4343971559024488872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A360397 (n : ℕ) : ℤ :=
  A360397.P4343971559024488872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A360397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361025.P152739747742070564

`A336937(n+1)-A007814(n+1)`
-/

namespace A361025.P152739747742070564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1) - A007814 (n + 1)

end

end A361025.P152739747742070564

noncomputable section

/-- A361025: a(n) = A007814(sigma(n)) - A007814(n), where A007814(n) gives the 2-adic valuation of n, and sigma is the sum of divisors function.

Offset 1, canonical program `A361025.P152739747742070564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361025 (n : ℕ) : ℤ :=
  A361025.P152739747742070564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361123.P17185907231639651446

`1-A361122(n+1)`
-/

namespace A361123.P17185907231639651446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361122 (n + 1)

end

end A361123.P17185907231639651446

noncomputable section

/-- A361123: 1 if n-th composite number A002808(n) is divisible by 3, otherwise 0.

Offset 1, canonical program `A361123.P17185907231639651446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123 (n : ℕ) : ℤ :=
  A361123.P17185907231639651446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362196.P10325085165088880186

`A008861(n)-n`
-/

namespace A362196.P10325085165088880186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n - (n : ℤ)

end

end A362196.P10325085165088880186

noncomputable section

/-- A362196: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 9 with exactly one descent.

Offset 0, canonical program `A362196.P10325085165088880186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362196 (n : ℕ) : ℤ :=
  A362196.P10325085165088880186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362685.P6275879267292374181

`(A059268(n)-1)*A056942(n)`
-/

namespace A362685.P6275879267292374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n - 1) * A056942 n

end

end A362685.P6275879267292374181

noncomputable section

/-- A362685: Triangle of numbers read by rows, T(n, k) = (n*(n-1))*Stirling2(k, 2), for n >= 1 and 1 <= k <= n.

Offset 1, canonical program `A362685.P6275879267292374181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685 (n : ℕ) : ℤ :=
  A362685.P6275879267292374181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363718.P3369360157164842008

`Δ[record[A268289(n)]]`
-/

namespace A363718.P3369360157164842008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363718.P3369360157164842008

noncomputable section

/-- A363718: Irregular triangle read by rows. An infinite binary tree which has root node 1 in row n = 0. Each node then has left child m-1 if greater than 0 and right child m+1, where m is the value of the parent node.

Offset 0, canonical program `A363718.P3369360157164842008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718 (n : ℕ) : ℤ :=
  A363718.P3369360157164842008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365335.P14855515266997531486

`A196564(3^A007814(n+1))`
-/

namespace A365335.P14855515266997531486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A007814 (n + 1) : ℤ))).toNat

end

end A365335.P14855515266997531486

noncomputable section

/-- A365335: The number of exponentially odd coreful divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365335.P14855515266997531486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A365335 (n : ℕ) : ℤ :=
  A365335.P14855515266997531486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A365335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366541.P1807102450219154106

`A074909(n)+A325191(n+1)+A074909(n)`
-/

namespace A366541.P1807102450219154106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A325191 (n + 1) + A074909 n)

end

end A366541.P1807102450219154106

noncomputable section

/-- A366541: Regular triangle read by rows: T(n,k) is the number of k-facets of the bipyramid on an n-simplex base.

Offset 0, canonical program `A366541.P1807102450219154106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A366541 (n : ℕ) : ℤ :=
  A366541.P1807102450219154106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A366541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366721.P14264005158293563005

`∑[char[A102477(A054541(3*n+4))]]+1`
-/

namespace A366721.P14264005158293563005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (A054541 (3 * n + 4)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A366721.P14264005158293563005

noncomputable section

/-- A366721: Number of digits left of the radix point of n when written in base Pi using a greedy algorithm representation.

Offset 0, canonical program `A366721.P14264005158293563005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721 (n : ℕ) : ℤ :=
  (A366721.P14264005158293563005.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366840.P17137846369514752914

`A100006(n+1)-A366839(n+1)`
-/

namespace A366840.P17137846369514752914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A366839 (n + 1)

end

end A366840.P17137846369514752914

noncomputable section

/-- A366840: Sum of odd prime factors of n, counted with multiplicity.

Offset 1, canonical program `A366840.P17137846369514752914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840 (n : ℕ) : ℤ :=
  A366840.P17137846369514752914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367211.P16132309912826063694

`A074909(n)*A128514(n+1)`
-/

namespace A367211.P16132309912826063694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A128514 (n + 1)

end

end A367211.P16132309912826063694

noncomputable section

/-- A367211: Triangular array read by rows: T(n, k) = binomial(n, k) * A000129(n - k) for 0 <= k < n.

Offset 1, canonical program `A367211.P16132309912826063694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367211 (n : ℕ) : ℤ :=
  A367211.P16132309912826063694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368638.P4766696637105011760

`∑[A135342(n+1)]-2*n`
-/

namespace A368638.P4766696637105011760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A368638.P4766696637105011760

noncomputable section

/-- A368638: a(n) is the number of triangular partitions whose Young diagram fits inside a square of side n.

Offset 0, canonical program `A368638.P4766696637105011760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368638 (n : ℕ) : ℤ :=
  A368638.P4766696637105011760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369189.P17989487729230229152

`A185027(∏{p}[n+1, #])`
-/

namespace A369189.P17989487729230229152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369189.P17989487729230229152

noncomputable section

/-- A369189: Sum of the squarefree triangular divisors of n.

Offset 1, canonical program `A369189.P17989487729230229152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189 (n : ℕ) : ℤ :=
  A369189.P17989487729230229152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369359.P11914376555270565853

`A225034(n)-A002426(n)`
-/

namespace A369359.P11914376555270565853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A002426 n

end

end A369359.P11914376555270565853

noncomputable section

/-- A369359: a(n) is the total semiperimeter over all Motzkin polyominoes of length n.

Offset 0, canonical program `A369359.P11914376555270565853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359 (n : ℕ) : ℤ :=
  A369359.P11914376555270565853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369668.P5612230000554155073

`2*A359151(n+1)`
-/

namespace A369668.P5612230000554155073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359151 (n + 1)

end

end A369668.P5612230000554155073

noncomputable section

/-- A369668: Numbers that have an even number of prime factors with multiplicity and whose arithmetic derivative is of the form 4k+3.

Offset 1, canonical program `A369668.P5612230000554155073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668 (n : ℕ) : ℤ :=
  A369668.P5612230000554155073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370418.P18312025595933328677

`A119502(n)*A143084(n)`
-/

namespace A370418.P18312025595933328677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A143084 n

end

end A370418.P18312025595933328677

noncomputable section

/-- A370418: Triangle read by rows. T(n, k) = (n - k)! * (n + k)!.

Offset 0, canonical program `A370418.P18312025595933328677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A370418 (n : ℕ) : ℤ :=
  A370418.P18312025595933328677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A370418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371014.P1386548091365000844

`∑{d}[n+1, A229062(#)]`
-/

namespace A371014.P1386548091365000844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A229062 d

end

end A371014.P1386548091365000844

noncomputable section

/-- A371014: The number of divisors of n that are the sum of 2 squares.

Offset 1, canonical program `A371014.P1386548091365000844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371014 (n : ℕ) : ℤ :=
  A371014.P1386548091365000844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371201.P4499511649538821653

`A138383(n)-A054541(n+1)`
-/

namespace A371201.P4499511649538821653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n - A054541 (n + 1)

end

end A371201.P4499511649538821653

noncomputable section

/-- A371201: a(n) = Sum_{k=prime(n)..prime(n+1)-1} k, with a(0) = 1.

Offset 0, canonical program `A371201.P4499511649538821653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201 (n : ℕ) : ℤ :=
  A371201.P4499511649538821653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372538.P6016142959646065391

`eq[1, A372516(n+1)]+1`
-/

namespace A372538.P6016142959646065391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372538.P6016142959646065391

noncomputable section

/-- A372538: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is 1.

Offset 1, canonical program `A372538.P6016142959646065391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538 (n : ℕ) : ℤ :=
  (A372538.P6016142959646065391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373082.P13712031001074262158

`A087116(xor(n, floor(n/2)))`
-/

namespace A373082.P13712031001074262158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A373082.P13712031001074262158

noncomputable section

/-- A373082: Number of runs of 0's in A014550(n).

Offset 0, canonical program `A373082.P13712031001074262158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082 (n : ℕ) : ℤ :=
  A373082.P13712031001074262158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373360.P3869209732951132874

`A373347(n+2)-A373347(n+1)`
-/

namespace A373360.P3869209732951132874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373347 (n + 2) - A373347 (n + 1)

end

end A373360.P3869209732951132874

noncomputable section

/-- A373360: First differences of A373347.

Offset 1, canonical program `A373360.P3869209732951132874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360 (n : ℕ) : ℤ :=
  A373360.P3869209732951132874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373834.P8702571557965328653

`(16^A373832(round(sqrt(n²+1))))%4`
-/

namespace A373834.P8702571557965328653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((16 : ℚ) ^ (A373832 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℤ))) 4

end

end A373834.P8702571557965328653

noncomputable section

/-- A373834: a(n) = 1 if n is a multiple of A276150(n), otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373834.P8702571557965328653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834 (n : ℕ) : ℤ :=
  A373834.P8702571557965328653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373838.P492642340660410059

`A079978(A373833(n))`
-/

namespace A373838.P492642340660410059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373833 n).toNat

end

end A373838.P492642340660410059

noncomputable section

/-- A373838: a(n) = 1 if n and A276150(n) are both multiples of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373838.P492642340660410059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838 (n : ℕ) : ℤ :=
  A373838.P492642340660410059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373841.P18437281871460807394

`eq[n, n*A373840(n)]`
-/

namespace A373841.P18437281871460807394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373841.P18437281871460807394

noncomputable section

/-- A373841: Numbers whose digital sum in the primorial base is a multiple of 3.

Offset 1, canonical program `A373841.P18437281871460807394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841 (n : ℕ) : ℤ :=
  (A373841.P18437281871460807394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377930.P17544471663374099892

`val(A003990(n+1), 2)`
-/

namespace A377930.P17544471663374099892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003990 (n + 1)).toNat 2

end

end A377930.P17544471663374099892

noncomputable section

/-- A377930: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) = max(A007814(n), A007814(k)).

Offset 1, canonical program `A377930.P17544471663374099892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930 (n : ℕ) : ℤ :=
  (A377930.P17544471663374099892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378543.P12831466803385793164

`∑{d}[n+1, A359372(#)*A373188((n+1)/#)]`
-/

namespace A378543.P12831466803385793164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359372 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378543.P12831466803385793164

noncomputable section

/-- A378543: Sum of divisors d of n such that n/d has an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378543.P12831466803385793164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378543 (n : ℕ) : ℤ :=
  A378543.P12831466803385793164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378805.P272384943036114525

`n*A378804(n)`
-/

namespace A378805.P272384943036114525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A378804 n

end

end A378805.P272384943036114525

noncomputable section

/-- A378805: a(n) = n^2 * 2^n * binomial(4*n, n).

Offset 0, canonical program `A378805.P272384943036114525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378805 (n : ℕ) : ℤ :=
  A378805.P272384943036114525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378994.P8077621921937179120

`gcd(A062731(n+1), A103517(n))`
-/

namespace A378994.P8077621921937179120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062731 (n + 1)) (A103517 n)

end

end A378994.P8077621921937179120

noncomputable section

/-- A378994: a(n) = gcd(2*n, sigma(2*n)).

Offset 1, canonical program `A378994.P8077621921937179120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378994 (n : ℕ) : ℤ :=
  (A378994.P8077621921937179120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379635.P2239528434753463119

`A245093(n+1)*A272172(n+1)`
-/

namespace A379635.P2239528434753463119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) * A272172 (n + 1)

end

end A379635.P2239528434753463119

noncomputable section

/-- A379635: Triangle read by rows: T(n,k) = A000203(k)*A000203(n-k+1), n >= 1, k >= 1.

Offset 1, canonical program `A379635.P2239528434753463119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379635 (n : ℕ) : ℤ :=
  A379635.P2239528434753463119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382723.P441862081197136108

`(A033264(n)+2)*2^(A000120(n)-1)`
-/

namespace A382723.P441862081197136108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033264 n + 2 : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ)

end

end A382723.P441862081197136108

noncomputable section

/-- A382723: Number of entries in the n-th row of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382723.P441862081197136108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382723 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382723.P441862081197136108.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383685.P17659077601752719078

`A000040(lt[A054541(n+1), A038194(n+1)])`
-/

namespace A383685.P17659077601752719078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383685.P17659077601752719078

noncomputable section

/-- A383685: The lesser of two consecutive primes whose gap equals the difference between their digital roots.

Offset 1, canonical program `A383685.P17659077601752719078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685 (n : ℕ) : ℤ :=
  A383685.P17659077601752719078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385379.P147877078255257721

`A029837(A368978(n+1))`
-/

namespace A385379.P147877078255257721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A368978 (n + 1)).toNat

end

end A385379.P147877078255257721

noncomputable section

/-- A385379: The maximum possible number of distinct composite prime powers (A246547) in the factorization of n into prime powers.

Offset 1, canonical program `A385379.P147877078255257721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385379 (n : ℕ) : ℤ :=
  A385379.P147877078255257721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386259.P13017037285920601135

`A007814(A066301(n+1)+1)`
-/

namespace A386259.P13017037285920601135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A066301 (n + 1) + 1).toNat

end

end A386259.P13017037285920601135

noncomputable section

/-- A386259: Exponent of the highest power of 2 dividing the maximum exponent in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A386259.P13017037285920601135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259 (n : ℕ) : ℤ :=
  A386259.P13017037285920601135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386319.P6966133288420860649

`A112367(n)+A086460(n)`
-/

namespace A386319.P6966133288420860649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A086460 n

end

end A386319.P6966133288420860649

noncomputable section

/-- A386319: Triangle read by rows where row n is the start, corner and end vertex numbers of a triangular spiral with n sides on a triangular grid, starting from 1 and working inwards (0 <= k <= n).

Offset 0, canonical program `A386319.P6966133288420860649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319 (n : ℕ) : ℤ :=
  A386319.P6966133288420860649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386832.P17191505806885496330

`ceil(A077028(n)/A002260(n+1))`
-/

namespace A386832.P17191505806885496330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077028 n : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A386832.P17191505806885496330

noncomputable section

/-- A386832: Triangle read by rows: T(n,k) is the number of the sets of partitions of n with length k grouped by largest part.

Offset 1, canonical program `A386832.P17191505806885496330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832 (n : ℕ) : ℤ :=
  A386832.P17191505806885496330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387349.P7395513142153534106

`comp[A190429(n+1)]+1`
-/

namespace A387349.P7395513142153534106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387349.P7395513142153534106

noncomputable section

/-- A387349: Positions of 0's in A387348.

Offset 1, canonical program `A387349.P7395513142153534106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387349 (n : ℕ) : ℤ :=
  (A387349.P7395513142153534106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389809.P18305442377972474179

`A000040(A003057(n+2))`
-/

namespace A389809.P18305442377972474179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat

end

end A389809.P18305442377972474179

noncomputable section

/-- A389809: Sequence containing k-1 occurrences of prime(k) ordered by k.

Offset 1, canonical program `A389809.P18305442377972474179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809 (n : ℕ) : ℤ :=
  A389809.P18305442377972474179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390115.P15101073239205051047

`A246574(n+1)+A002057(n)`
-/

namespace A390115.P15101073239205051047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246574 (n + 1) + A002057 n

end

end A390115.P15101073239205051047

noncomputable section

/-- A390115: a(n) is the total number of vertices of degree 2 in Catalan word grid graphs with n parts.

Offset 2, canonical program `A390115.P15101073239205051047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115 (n : ℕ) : ℤ :=
  A390115.P15101073239205051047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390689.P12018629016533748003

`∑{d}[n+1, #*A229062(#)]`
-/

namespace A390689.P12018629016533748003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A229062 d

end

end A390689.P12018629016533748003

noncomputable section

/-- A390689: The sum of the divisors of n that are sums of 2 squares (A001481).

Offset 1, canonical program `A390689.P12018629016533748003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390689 (n : ℕ) : ℤ :=
  A390689.P12018629016533748003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391574.P13642684315948743333

`eq[A026492(n), A057427(n)]`
-/

namespace A391574.P13642684315948743333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P13642684315948743333

noncomputable section

/-- A391574: Numbers k such that 3*k = A048720(3,m) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391574.P13642684315948743333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574 (n : ℕ) : ℤ :=
  (A391574.P13642684315948743333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392842.P10202073856946613228

`A007814(record[A109168(3*n+2)])`
-/

namespace A392842.P10202073856946613228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A392842.P10202073856946613228

noncomputable section

/-- A392842: Number of trailing zeros in a type of Zeckendorf expansion based on Fibonacci numbers of even index.

Offset 1, canonical program `A392842.P10202073856946613228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842 (n : ℕ) : ℤ :=
  A392842.P10202073856946613228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393435.P12847349373595133276

`(-1)^A033264(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393435.P12847349373595133276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A033264 n : ℤ)

end

end A393435.P12847349373595133276

noncomputable section

/-- A393435: a(n) = (-1)^A033264(n).

Offset 0, canonical program `A393435.P12847349373595133276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393435.P12847349373595133276.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265906.P889638552289074279

`A153880(A265905(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265906.P889638552289074279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A265905 (n + 1)).toNat

end

end A265906.P889638552289074279

noncomputable section

/-- A265906: a(n) = A153880(A265905(n)); also the first differences of A265905.

Offset 1, canonical program `A265906.P889638552289074279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A265905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265906 (n : ℕ) : ℤ :=
  A265906.P889638552289074279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A265905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266620.P16243253378753888357

`A066169(n+1)+1-A294619(n)`
-/

namespace A266620.P16243253378753888357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (n + 1) + (1 - A294619 n)

end

end A266620.P16243253378753888357

noncomputable section

/-- A266620: a(n) = least non-divisor of n!.

Offset 1, canonical program `A266620.P16243253378753888357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266620 (n : ℕ) : ℤ :=
  A266620.P16243253378753888357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267001.P6280962808153602373

`A266848(2*n-A053187(n))`
-/

namespace A267001.P6280962808153602373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 ((2 * n : ℤ) - A053187 n).toNat

end

end A267001.P6280962808153602373

noncomputable section

/-- A267001: Triangle read by rows giving successive states of cellular automaton generated by "Rule 83" initiated with a single ON (black) cell.

Offset 0, canonical program `A267001.P6280962808153602373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267001 (n : ℕ) : ℤ :=
  A267001.P6280962808153602373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268715.P16379897427228210898

`A003188(A268714(n))`
-/

namespace A268715.P16379897427228210898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268714 n).toNat

end

end A268715.P16379897427228210898

noncomputable section

/-- A268715: Square array A(i,j) = A003188(A006068(i) + A006068(j)), read by antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

Offset 0, canonical program `A268715.P16379897427228210898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268715 (n : ℕ) : ℤ :=
  A268715.P16379897427228210898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268725.P2305431121267613913

`A003188(A268724(n+1))`
-/

namespace A268725.P2305431121267613913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268724 (n + 1)).toNat

end

end A268725.P2305431121267613913

noncomputable section

/-- A268725: Square array A(i,j) = A003188(A006068(i) * A006068(j)), read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A268725.P2305431121267613913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268725 (n : ℕ) : ℤ :=
  A268725.P2305431121267613913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268726.P17814660548721949411

`A007814(1+A006068(n))`
-/

namespace A268726.P17814660548721949411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A006068 n).toNat

end

end A268726.P17814660548721949411

noncomputable section

/-- A268726: Index of the toggled bit between n and A268717(n+1): a(n) = A000523(A003987(n, A268717(1+n))).

Offset 0, canonical program `A268726.P17814660548721949411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268726 (n : ℕ) : ℤ :=
  A268726.P17814660548721949411.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273285.P1544043867556247205

`A273283(n+2)^∑{e}[n+2, #]`
-/

namespace A273285.P1544043867556247205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (n + 2) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A273285.P1544043867556247205

noncomputable section

/-- A273285: A273283(n)^Omega(n), where Omega = A001222.

Offset 2, canonical program `A273285.P1544043867556247205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A273285 (n : ℕ) : ℤ :=
  A273285.P1544043867556247205.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A273285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274008.P14054883072027176064

`2*A005598(n)-1`
-/

namespace A274008.P14054883072027176064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005598 n - 1

end

end A274008.P14054883072027176064

noncomputable section

/-- A274008: Number of length-n ternary sequences where the sum of each block differs by at most 1 from every other block of the same length.

Offset 0, canonical program `A274008.P14054883072027176064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274008 (n : ℕ) : ℤ :=
  A274008.P14054883072027176064.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276378.P5512391112950635308

`2*A097702(n+1)+1`
-/

namespace A276378.P5512391112950635308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097702 (n + 1) + 1

end

end A276378.P5512391112950635308

noncomputable section

/-- A276378: Numbers k such that 6*k is squarefree.

Offset 1, canonical program `A276378.P5512391112950635308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276378 (n : ℕ) : ℤ :=
  A276378.P5512391112950635308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276789.P3535134119243695297

`A003145(n+2)-A003145(n+1)`
-/

namespace A276789.P3535134119243695297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 2) - A003145 (n + 1)

end

end A276789.P3535134119243695297

noncomputable section

/-- A276789: First differences of A003145.

Offset 1, canonical program `A276789.P3535134119243695297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276789 (n : ℕ) : ℤ :=
  A276789.P3535134119243695297.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276932.P111272194335471514

`A153880(A273670(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276932.P111272194335471514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A273670 n).toNat

end

end A276932.P111272194335471514

noncomputable section

/-- A276932: Row 2 of A276953: a(n) = A153880(A273670(n)).

Offset 0, canonical program `A276932.P111272194335471514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276932 (n : ℕ) : ℤ :=
  A276932.P111272194335471514.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276933.P13598886561639021604

`A153880(A153880(A273670(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276933.P13598886561639021604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A153880 (A273670 n).toNat).toNat

end

end A276933.P13598886561639021604

noncomputable section

/-- A276933: Row 3 of A276953: a(n) = A153880(A153880(A273670(n))).

Offset 0, canonical program `A276933.P13598886561639021604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276933 (n : ℕ) : ℤ :=
  A276933.P13598886561639021604.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276948.P13226370530176528930

`Δ[A273670(n)]`
-/

namespace A276948.P13226370530176528930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276948.P13226370530176528930

noncomputable section

/-- A276948: First differences of A273670: a(n) = A273670(n) - A273670(n-1).

Offset 1, canonical program `A276948.P13226370530176528930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A276948 (n : ℕ) : ℤ :=
  A276948.P13226370530176528930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A276948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276950.P3224110198419510546

`char[A273670(n)]`
-/

namespace A276950.P3224110198419510546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276950.P3224110198419510546

noncomputable section

/-- A276950: Characteristic function for A273670: 1 if there is at least one maximal digit present in the factorial representation of n (A007623), otherwise 0.

Offset 0, canonical program `A276950.P3224110198419510546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A276950 (n : ℕ) : ℤ :=
  (A276950.P3224110198419510546.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A276950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277331.P10020327164330900423

`A253563(A003714(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277331.P10020327164330900423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A003714 n).toNat

end

end A277331.P10020327164330900423

noncomputable section

/-- A277331: a(n) = A253563(A003714(n)).

Offset 0, canonical program `A277331.P10020327164330900423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277331 (n : ℕ) : ℤ :=
  A277331.P10020327164330900423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277910.P10787059213023238981

`1+A277909(n+1)`
-/

namespace A277910.P10787059213023238981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A277909 (n + 1)

end

end A277910.P10787059213023238981

noncomputable section

/-- A277910: Numbers n for which A277911(n) = n-1.

Offset 1, canonical program `A277910.P10787059213023238981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277910 (n : ℕ) : ℤ :=
  A277910.P10787059213023238981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278040.P10650196326427599491

`A003145(n+1)-1`
-/

namespace A278040.P10650196326427599491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) - 1

end

end A278040.P10650196326427599491

noncomputable section

/-- A278040: The tribonacci representation of a(n) is obtained by appending 0,1 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278040.P10650196326427599491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278040 (n : ℕ) : ℤ :=
  A278040.P10650196326427599491.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278083.P13856348263400599348

`A060968(Δ[n²])`
-/

namespace A278083.P13856348263400599348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278083.P13856348263400599348

noncomputable section

/-- A278083: a(n) is 1/6 of the number of primitive integral quadruples with sum = 2*m and sum of squares = 2*m^2, where m = 2*n-1.

Offset 1, canonical program `A278083.P13856348263400599348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278083 (n : ℕ) : ℤ :=
  A278083.P13856348263400599348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281490.P3523098735893646296

`A307597(9*n+7)`
-/

namespace A281490.P3523098735893646296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (9 * n + 7)

end

end A281490.P3523098735893646296

noncomputable section

/-- A281490: Expansion of f(x, x^3) * f(x, x^8) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281490.P3523098735893646296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281490 (n : ℕ) : ℤ :=
  A281490.P3523098735893646296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281491.P16396584514886976107

`A307597(9*n+4)`
-/

namespace A281491.P16396584514886976107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (9 * n + 4)

end

end A281491.P16396584514886976107

noncomputable section

/-- A281491: Expansion of f(x, x^3) * f(x^2, x^7) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281491.P16396584514886976107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281491 (n : ℕ) : ℤ :=
  A281491.P16396584514886976107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281589.P10233469596152794852

`(n+1)%2+A119608(n+2)%(n+1)`
-/

namespace A281589.P10233469596152794852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) + Int.tmod (A119608 (n + 2)) (n + 1 : ℤ)

end

end A281589.P10233469596152794852

noncomputable section

/-- A281589: Triangular array T(n,k), n > 0 and k = 1..2^(n-1), read by rows, in which row n corresponds to the permutation of [1..2^(n-1)] resulting from folding a horizontal strip of paper, with 2^(n-1) square cells numbered from 1 to 2^(n-1), n-1 times.

Offset 1, canonical program `A281589.P10233469596152794852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281589 (n : ℕ) : ℤ :=
  A281589.P10233469596152794852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283325.P1796176472703323700

`Δ[record[(n+1)*A283683(n+1)]]-1`
-/

namespace A283325.P1796176472703323700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A283325.P1796176472703323700

noncomputable section

/-- A283325: Lengths of runs of successive zeros in A283683.

Offset 1, canonical program `A283325.P1796176472703323700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8721 terms. -/
def A283325 (n : ℕ) : ℤ :=
  A283325.P1796176472703323700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8721 terms. -/
def A283325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283908.P12039075813356450362

`A290418(n-(1-n)%(n+1))`
-/

namespace A283908.P12039075813356450362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A283908.P12039075813356450362

noncomputable section

/-- A283908: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283908.P12039075813356450362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A283908 (n : ℕ) : ℤ :=
  A283908.P12039075813356450362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A283908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284796.P6640145476015724688

`A284794(n+1)-(A284775(n+1)+1)`
-/

namespace A284796.P6640145476015724688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284794 (n + 1) - (A284775 (n + 1) + 1)

end

end A284796.P6640145476015724688

noncomputable section

/-- A284796: Positions of 1's in A284793.

Offset 1, canonical program `A284796.P6640145476015724688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284796 (n : ℕ) : ℤ :=
  A284796.P6640145476015724688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284885.P16570972123802318958

`A284883(n+1)/2`
-/

namespace A284885.P16570972123802318958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284883 (n + 1) : ℚ) / 2

end

end A284885.P16570972123802318958

noncomputable section

/-- A284885: (A284883)/2.

Offset 1, canonical program `A284885.P16570972123802318958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284885.P16570972123802318958.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284963.P4374081168494453790

`A284921(n+1)+A256077(n+1)`
-/

namespace A284963.P4374081168494453790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) + A256077 (n + 1)

end

end A284963.P4374081168494453790

noncomputable section

/-- A284963: Numbers with digits 3 and 8 only.

Offset 1, canonical program `A284963.P4374081168494453790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284963 (n : ℕ) : ℤ :=
  A284963.P4374081168494453790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285345.P567793792438865630

`A285305(A028352(n+1)/2)`
-/

namespace A285345.P567793792438865630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (SequenceMachineLib.roundAway ((A028352 (n + 1) : ℚ) / 2)).toNat

end

end A285345.P567793792438865630

noncomputable section

/-- A285345: Fixed point of the morphism 0 -> 10, 1 -> 1100.

Offset 1, canonical program `A285345.P567793792438865630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285345 (n : ℕ) : ℤ :=
  A285345.P567793792438865630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285959.P12122029514880620375

`A285961(n+1)-A104248(n+1)`
-/

namespace A285959.P12122029514880620375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285961 (n + 1) - A104248 (n + 1)

end

end A285959.P12122029514880620375

noncomputable section

/-- A285959: Positions of 1 in A285957; complement of A285958.

Offset 1, canonical program `A285959.P12122029514880620375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285959 (n : ℕ) : ℤ :=
  A285959.P12122029514880620375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286048.P9111352750848664703

`A004767(n)-A286047(n+1)`
-/

namespace A286048.P9111352750848664703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286047 (n + 1)

end

end A286048.P9111352750848664703

noncomputable section

/-- A286048: Positions of 1 in A286046; complement of A286047.

Offset 1, canonical program `A286048.P9111352750848664703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286048 (n : ℕ) : ℤ :=
  A286048.P9111352750848664703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286049.P11350509932985132439

`char[A286051(n+1)-1]`
-/

namespace A286049.P11350509932985132439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286049.P11350509932985132439

noncomputable section

/-- A286049: {110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286049.P11350509932985132439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049 (n : ℕ) : ℤ :=
  (A286049.P11350509932985132439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286066.P5999862173123358208

`A284934(A143331(n+1)+n)-A143331(n+1)`
-/

namespace A286066.P5999862173123358208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (A143331 (n + 1) + (n : ℤ)).toNat - A143331 (n + 1)

end

end A286066.P5999862173123358208

noncomputable section

/-- A286066: Positions of 1 in A286064; complement of A286065.

Offset 1, canonical program `A286066.P5999862173123358208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286066 (n : ℕ) : ℤ :=
  A286066.P5999862173123358208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286801.P2102935286096413746

`char[A286803(n+1)-1]`
-/

namespace A286801.P2102935286096413746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286801.P2102935286096413746

noncomputable section

/-- A286801: {0->110, 1->010}-transform of the Pell word, A171588.

Offset 1, canonical program `A286801.P2102935286096413746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286801 (n : ℕ) : ℤ :=
  (A286801.P2102935286096413746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286937.P8216881898967728310

`1-A286804(n+1)`
-/

namespace A286937.P8216881898967728310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286804 (n + 1)

end

end A286937.P8216881898967728310

noncomputable section

/-- A286937: {111->null}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286937.P8216881898967728310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286937 (n : ℕ) : ℤ :=
  A286937.P8216881898967728310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286990.P5038761849871249141

`A286726(A133310(n))`
-/

namespace A286990.P5038761849871249141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A133310 n).toNat

end

end A286990.P5038761849871249141

noncomputable section

/-- A286990: {0->010, 1->101}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286990.P5038761849871249141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286990 (n : ℕ) : ℤ :=
  A286990.P5038761849871249141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287553.P11148344650868308369

`-xor(2, -A287555(n+1))`
-/

namespace A287553.P11148344650868308369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-A287555 (n + 1))

end

end A287553.P11148344650868308369

noncomputable section

/-- A287553: Positions of 1 in A053839.

Offset 1, canonical program `A287553.P11148344650868308369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287553 (n : ℕ) : ℤ :=
  A287553.P11148344650868308369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288022.P13806557595186574534

`∩[A030432(n+1), A031924(n+1)]`
-/

namespace A288022.P13806557595186574534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P13806557595186574534

noncomputable section

/-- A288022: Prime p1 of consecutive primes p1, p2, where p2 - p1 = 6, and p1, p2 are in different decades.

Offset 1, canonical program `A288022.P13806557595186574534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A288022 (n : ℕ) : ℤ :=
  (A288022.P13806557595186574534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A288022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288575.P17818525623741595510

`∑[A213911(n)+A007895(n)]`
-/

namespace A288575.P17818525623741595510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P17818525623741595510

noncomputable section

/-- A288575: Partial sums of A104324.

Offset 0, canonical program `A288575.P17818525623741595510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288575 (n : ℕ) : ℤ :=
  A288575.P17818525623741595510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288600.P16115501771230486977

`A288375(2-(2-n)%(n+1))`
-/

namespace A288600.P16115501771230486977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (2 - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A288600.P16115501771230486977

noncomputable section

/-- A288600: Fixed point of the mapping 00->0101, 10->1001, starting with 00.

Offset 1, canonical program `A288600.P16115501771230486977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288600 (n : ℕ) : ℤ :=
  A288600.P16115501771230486977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288929.P9658926497667176175

`char[comp[2*A219641(n)+n+2]-1]`
-/

namespace A288929.P9658926497667176175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219641 n + (n + 2 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288929.P9658926497667176175

noncomputable section

/-- A288929: Fixed point of the mapping 00->1000, 10->10011, starting with 00.

Offset 1, canonical program `A288929.P9658926497667176175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288929 (n : ℕ) : ℤ :=
  (A288929.P9658926497667176175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289108.P11984288742072836431

`A289055(n)-1`
-/

namespace A289108.P11984288742072836431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289055 n - 1

end

end A289108.P11984288742072836431

noncomputable section

/-- A289108: Triangle read by rows: T(n,k) = (k + 1)*prime(n) + k for n > 0, 0 <= k <= n, and with T(0,0) = 1.

Offset 0, canonical program `A289108.P11984288742072836431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289108 (n : ℕ) : ℤ :=
  A289108.P11984288742072836431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289493.P4700301683383788014

`A100637(n)-A099801(n)`
-/

namespace A289493.P4700301683383788014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A099801 n

end

end A289493.P4700301683383788014

noncomputable section

/-- A289493: Number of primes in the interval [2n, 3n].

Offset 1, canonical program `A289493.P4700301683383788014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289493 (n : ℕ) : ℤ :=
  A289493.P4700301683383788014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290258.P9500743634387484747

`A277335(n+1)`
-/

namespace A290258.P9500743634387484747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 (n + 1)

end

end A290258.P9500743634387484747

noncomputable section

/-- A290258: Triangle read by rows: row n (>=2) contains in increasing order the integers for which the binary representation has length n and all runs of 1's have even length.

Offset 2, canonical program `A290258.P9500743634387484747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290258 (n : ℕ) : ℤ :=
  A290258.P9500743634387484747.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292601.P906998299720976826

`n-A292600(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292601.P906998299720976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292600 n

end

end A292601.P906998299720976826

noncomputable section

/-- A292601: a(n) = n - A292600(n).

Offset 0, canonical program `A292601.P906998299720976826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292601 (n : ℕ) : ℤ :=
  A292601.P906998299720976826.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293513.P2913360707613170259

`A091954(n+1)-A293451(n+1)`
-/

namespace A293513.P2913360707613170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A293451 (n + 1)

end

end A293513.P2913360707613170259

noncomputable section

/-- A293513: Number of proper divisors of n of the form 4k+3.

Offset 1, canonical program `A293513.P2913360707613170259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091954, A293451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293513 (n : ℕ) : ℤ :=
  A293513.P2913360707613170259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091954, A293451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293959.P4536624460785763287

`A265754(n+1)-1`
-/

namespace A293959.P4536624460785763287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (n + 1) - 1

end

end A293959.P4536624460785763287

noncomputable section

/-- A293959: Construct a triangle T(n,k) (0 <= k <= n) of strings of integers, where T(0,0) = {0}, T(n,n) = {n}, and otherwise T(n,k) is the concatenation of T(n-1,k-1) and T(n-1,k). The sequence is obtained by reading across the rows of the triangle, concatenating the successive strings.

Offset 0, canonical program `A293959.P4536624460785763287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959 (n : ℕ) : ℤ :=
  A293959.P4536624460785763287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295897.P10527860566330288964

`floor(A277335(n)/2)`
-/

namespace A295897.P10527860566330288964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277335 n : ℚ) / 2⌋

end

end A295897.P10527860566330288964

noncomputable section

/-- A295897: Numbers in whose binary expansion there are no 1-runs of odd length followed by a 0 to their right.

Offset 1, canonical program `A295897.P10527860566330288964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295897 (n : ℕ) : ℤ :=
  A295897.P10527860566330288964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296307.P1006250162034138500

`(A004736(n+1)+1)*A010766(n+1)-1`
-/

namespace A296307.P1006250162034138500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + 1) * A010766 (n + 1) - 1

end

end A296307.P1006250162034138500

noncomputable section

/-- A296307: Array read by upwards antidiagonals: f(n,k) = (n+1)*ceiling(n/(k-1)) - 1.

Offset 1, canonical program `A296307.P1006250162034138500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A296307 (n : ℕ) : ℤ :=
  A296307.P1006250162034138500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A296307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301725.P2295522434011153661

`∑[A301724(n)]`
-/

namespace A301725.P2295522434011153661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301725.P2295522434011153661

noncomputable section

/-- A301725: Partial sums of A301724.

Offset 0, canonical program `A301725.P2295522434011153661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301725 (n : ℕ) : ℤ :=
  A301725.P2295522434011153661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301972.P16174437591455567490

`A001791(n)+2*A074922(n)`
-/

namespace A301972.P16174437591455567490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + 2 * A074922 n

end

end A301972.P16174437591455567490

noncomputable section

/-- A301972: a(n) = n*(n^2 - 2*n + 4)*binomial(2*n,n)/((n + 1)*(n + 2)).

Offset 0, canonical program `A301972.P16174437591455567490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A301972 (n : ℕ) : ℤ :=
  A301972.P16174437591455567490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A301972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302047.P8646642694935117735

`char[A090076(n+1)-1]`
-/

namespace A302047.P8646642694935117735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302047.P8646642694935117735

noncomputable section

/-- A302047: a(n) = 1 if n = prime(k)*prime(2+k) for some k, otherwise 0.

Offset 1, canonical program `A302047.P8646642694935117735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302047 (n : ℕ) : ℤ :=
  (A302047.P8646642694935117735.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302253.P10939319436702998548

`A140398(n+1)+2*A190435(n+1)`
-/

namespace A302253.P10939319436702998548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1) + 2 * A190435 (n + 1)

end

end A302253.P10939319436702998548

noncomputable section

/-- A302253: Positions of 3 in A190436.

Offset 1, canonical program `A302253.P10939319436702998548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302253 (n : ℕ) : ℤ :=
  A302253.P10939319436702998548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304095.P8518165107337469446

`∑{d}[n+1, A157658(#)*A304096((n+1)/#)]`
-/

namespace A304095.P8518165107337469446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A304096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304095.P8518165107337469446

noncomputable section

/-- A304095: a(n) is the number of the proper divisors of n that are Lucas numbers larger than 3 (4, 7, 11, 18, ...).

Offset 1, canonical program `A304095.P8518165107337469446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095 (n : ℕ) : ℤ :=
  A304095.P8518165107337469446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304327.P8179685896533217852

`∑{d}[n+1, A091050(#)*A271102((n+1)/#)]`
-/

namespace A304327.P8179685896533217852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091050 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304327.P8179685896533217852

noncomputable section

/-- A304327: Number of ways to write n as a product of a perfect power and a squarefree number.

Offset 1, canonical program `A304327.P8179685896533217852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304327 (n : ℕ) : ℤ :=
  A304327.P8179685896533217852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304569.P1317992739176579829

`C(2, A096133(n+1))`
-/

namespace A304569.P1317992739176579829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A096133 (n + 1)).toNat

end

end A304569.P1317992739176579829

noncomputable section

/-- A304569: Triangle read by rows: T(n,k) = 1 if k | n^e with e >= 0, otherwise T(n,k) = 0 (1 <= k <= n).

Offset 1, canonical program `A304569.P1317992739176579829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304569 (n : ℕ) : ℤ :=
  (A304569.P1317992739176579829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304685.P4730161233825574462

`C(A204697(n+1), A286577(A038502(n+1)))`
-/

namespace A304685.P4730161233825574462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204697 (n + 1)).toNat (A286577 (A038502 (n + 1)).toNat).toNat

end

end A304685.P4730161233825574462

noncomputable section

/-- A304685: a(n) = A000699(n) (mod 3).

Offset 1, canonical program `A304685.P4730161233825574462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685 (n : ℕ) : ℤ :=
  (A304685.P4730161233825574462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305393.P16089518376001682446

`gcd(2, A317198(n))`
-/

namespace A305393.P16089518376001682446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A317198 n)

end

end A305393.P16089518376001682446

noncomputable section

/-- A305393: First differences of A140102.

Offset 1, canonical program `A305393.P16089518376001682446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305393 (n : ℕ) : ℤ :=
  (A305393.P16089518376001682446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306379.P13856813588637983137

`∑{d}[n+1, A060648(#)*A063659((n+1)/#)]`
-/

namespace A306379.P13856813588637983137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P13856813588637983137

noncomputable section

/-- A306379: Dirichlet convolution of psi(n) with itself.

Offset 1, canonical program `A306379.P13856813588637983137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306379 (n : ℕ) : ℤ :=
  A306379.P13856813588637983137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306409.P2461275947846805459

`(A006134(n)-A120305(n))/2`
-/

namespace A306409.P2461275947846805459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n - A120305 n : ℚ) / 2

end

end A306409.P2461275947846805459

noncomputable section

/-- A306409: a(n) = -Sum_{0<=i

Offset 0, canonical program `A306409.P2461275947846805459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306409.P2461275947846805459.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306775.P4537564709775864372

`∑[A060648(n+1)]`
-/

namespace A306775.P4537564709775864372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P4537564709775864372

noncomputable section

/-- A306775: Partial sums of A060648: sum of the inverse Moebius transform of the Dedekind psi function from 1 to n.

Offset 1, canonical program `A306775.P4537564709775864372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306775 (n : ℕ) : ℤ :=
  A306775.P4537564709775864372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307354.P6583539778900423417

`(A006134(n)+A120305(n))/2`
-/

namespace A307354.P6583539778900423417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n + A120305 n : ℚ) / 2

end

end A307354.P6583539778900423417

noncomputable section

/-- A307354: a(n) = Sum_{0<=i<=j<=n} (-1)^(i+j) * (i+j)!/(i!*j!).

Offset 0, canonical program `A307354.P6583539778900423417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307354.P6583539778900423417.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307563.P16467976950140794453

`floor(A164385(n+1)/6)`
-/

namespace A307563.P16467976950140794453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164385 (n + 1) : ℚ) / 6⌋

end

end A307563.P16467976950140794453

noncomputable section

/-- A307563: Numbers k such that both 6k - 1 and 6k + 7 are prime.

Offset 1, canonical program `A307563.P16467976950140794453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307563 (n : ℕ) : ℤ :=
  A307563.P16467976950140794453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309081.P14085195362335014076

`∑[A344299(n+1)]`
-/

namespace A309081.P14085195362335014076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P14085195362335014076

noncomputable section

/-- A309081: a(n) = n - floor(n/2^2) + floor(n/3^2) - floor(n/4^2) + ...

Offset 1, canonical program `A309081.P14085195362335014076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309081 (n : ℕ) : ℤ :=
  A309081.P14085195362335014076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309322.P6198726568580367255

`(A018804(n+1)+A069097(n+1))/2`
-/

namespace A309322.P6198726568580367255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) + A069097 (n + 1) : ℚ) / 2

end

end A309322.P6198726568580367255

noncomputable section

/-- A309322: Expansion of Sum_{k>=1} phi(k) * x^k/(1 - x^k)^3, where phi = Euler totient function (A000010).

Offset 1, canonical program `A309322.P6198726568580367255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A069097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309322 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309322.P6198726568580367255.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A069097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309720.P3653890474350407193

`A096379(eq[A036263(n+1), A054541(n+1)])`
-/

namespace A309720.P3653890474350407193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309720.P3653890474350407193

noncomputable section

/-- A309720: Numbers of the form p+q-r = q+r-s where p < q < r < s are consecutive primes.

Offset 1, canonical program `A309720.P3653890474350407193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720 (n : ℕ) : ℤ :=
  A309720.P3653890474350407193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309790.P12506806462962635043

`A104895(2*n+3)+A065620(A063946(2*(n+1)))`
-/

namespace A309790.P12506806462962635043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (2 * n + 3) + A065620 (A063946 (2 * (n + 1))).toNat

end

end A309790.P12506806462962635043

noncomputable section

/-- A309790: G.f. A(x) satisfies: A(x) = 2*x*(1 - x)*A(x^2) + x/(1 - x).

Offset 0, canonical program `A309790.P12506806462962635043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790 (n : ℕ) : ℤ :=
  A309790.P12506806462962635043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310379.P6537019467355233572

`2*A312903(n)-A008574(n)`
-/

namespace A310379.P6537019467355233572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312903 n - A008574 n

end

end A310379.P6537019467355233572

noncomputable section

/-- A310379: Coordination sequence Gal.6.321.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310379.P6537019467355233572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A310379 (n : ℕ) : ℤ :=
  A310379.P6537019467355233572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A310379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310398.P3945335365291150677

`A312903(n)+Δ[A011858(n)]`
-/

namespace A310398.P3945335365291150677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + (f1 (n + 1) - f1 n)

end

end A310398.P3945335365291150677

noncomputable section

/-- A310398: Coordination sequence Gal.5.136.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310398.P3945335365291150677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310398 (n : ℕ) : ℤ :=
  A310398.P3945335365291150677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310422.P14341133682885301915

`abs(A008592(n)-A315303(n))`
-/

namespace A310422.P14341133682885301915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315303 n|

end

end A310422.P14341133682885301915

noncomputable section

/-- A310422: Coordination sequence Gal.6.325.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310422.P14341133682885301915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A310422 (n : ℕ) : ℤ :=
  A310422.P14341133682885301915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A310422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310538.P10108678506340412

`A310509(n)+Δ[A011862(n)]`
-/

namespace A310538.P10108678506340412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n + (f1 (n + 1) - f1 n)

end

end A310538.P10108678506340412

noncomputable section

/-- A310538: Coordination sequence Gal.6.215.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310538.P10108678506340412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A310538 (n : ℕ) : ℤ :=
  A310538.P10108678506340412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A310538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311209.P6586831971978910313

`A046978(n)+A313154(n)-n`
-/

namespace A311209.P6586831971978910313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313154 n - (n : ℤ))

end

end A311209.P6586831971978910313

noncomputable section

/-- A311209: Coordination sequence Gal.5.107.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311209.P6586831971978910313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A311209 (n : ℕ) : ℤ :=
  A311209.P6586831971978910313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A311209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312206.P1241787982787610248

`abs(10*n-A315670(n))`
-/

namespace A312206.P1241787982787610248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315670 n|

end

end A312206.P1241787982787610248

noncomputable section

/-- A312206: Coordination sequence Gal.6.157.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312206.P1241787982787610248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206 (n : ℕ) : ℤ :=
  A312206.P1241787982787610248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312976.P18215844327102758922

`A004396(2*(A312935(n)-n))`
-/

namespace A312976.P18215844327102758922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A312935 n - (n : ℤ))).toNat

end

end A312976.P18215844327102758922

noncomputable section

/-- A312976: Coordination sequence Gal.6.246.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312976.P18215844327102758922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A312976 (n : ℕ) : ℤ :=
  A312976.P18215844327102758922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A312976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313025.P18246201174359200645

`A301724(n)-(A330033(n)+n)`
-/

namespace A313025.P18246201174359200645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - (A330033 n + (n : ℤ))

end

end A313025.P18246201174359200645

noncomputable section

/-- A313025: Coordination sequence Gal.5.65.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313025.P18246201174359200645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313025 (n : ℕ) : ℤ :=
  A313025.P18246201174359200645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313062.P7455441757488067714

`A312935(n)+Δ[A011864(n)]`
-/

namespace A313062.P7455441757488067714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n + (f1 (n + 1) - f1 n)

end

end A313062.P7455441757488067714

noncomputable section

/-- A313062: Coordination sequence Gal.6.154.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313062.P7455441757488067714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A313062 (n : ℕ) : ℤ :=
  A313062.P7455441757488067714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A313062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313125.P8596607718569848778

`abs(A008592(n)-A315463(n))`
-/

namespace A313125.P8596607718569848778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315463 n|

end

end A313125.P8596607718569848778

noncomputable section

/-- A313125: Coordination sequence Gal.5.111.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313125.P8596607718569848778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125 (n : ℕ) : ℤ :=
  A313125.P8596607718569848778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313145.P4535959116783505472

`A312184(n)+A004525(n-A004396(n))`
-/

namespace A313145.P4535959116783505472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313145.P4535959116783505472

noncomputable section

/-- A313145: Coordination sequence Gal.6.264.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313145.P4535959116783505472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313145 (n : ℕ) : ℤ :=
  A313145.P4535959116783505472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313515.P11298845023019683879

`A313117(n)+A128834(n)`
-/

namespace A313515.P11298845023019683879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n + A128834 n

end

end A313515.P11298845023019683879

noncomputable section

/-- A313515: Coordination sequence Gal.6.264.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313515.P11298845023019683879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313515 (n : ℕ) : ℤ :=
  A313515.P11298845023019683879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313769.P5587162002525287589

`A004396(n)+A313619(n)-A004525(n)`
-/

namespace A313769.P5587162002525287589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313619 n - A004525 n)

end

end A313769.P5587162002525287589

noncomputable section

/-- A313769: Coordination sequence Gal.6.339.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313769.P5587162002525287589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769 (n : ℕ) : ℤ :=
  A313769.P5587162002525287589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313772.P6532572318584518292

`abs(A008592(n)-A313704(n))`
-/

namespace A313772.P6532572318584518292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313704 n|

end

end A313772.P6532572318584518292

noncomputable section

/-- A313772: Coordination sequence Gal.6.328.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313772.P6532572318584518292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313772 (n : ℕ) : ℤ :=
  A313772.P6532572318584518292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313855.P14947819833165197464

`A313719(n)+A002266(n+2)`
-/

namespace A313855.P14947819833165197464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A002266 (n + 2)

end

end A313855.P14947819833165197464

noncomputable section

/-- A313855: Coordination sequence Gal.5.87.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313855.P14947819833165197464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855 (n : ℕ) : ℤ :=
  A313855.P14947819833165197464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313890.P2997046397026414357

`∪[A313891(2*n+1), A313894(2*n)]`
-/

namespace A313890.P2997046397026414357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A313890.P2997046397026414357

noncomputable section

/-- A313890: Coordination sequence Gal.6.648.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313890.P2997046397026414357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890 (n : ℕ) : ℤ :=
  (A313890.P2997046397026414357.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313939.P1821970513572052391

`A008576(n)+A313799(n)-A072154(n)`
-/

namespace A313939.P1821970513572052391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313799 n - A072154 n)

end

end A313939.P1821970513572052391

noncomputable section

/-- A313939: Coordination sequence Gal.6.659.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313939.P1821970513572052391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939 (n : ℕ) : ℤ :=
  A313939.P1821970513572052391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314085.P6510588875040797776

`A315670(n)-A004525(A004396(n))`
-/

namespace A314085.P6510588875040797776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n - A004525 (A004396 n).toNat

end

end A314085.P6510588875040797776

noncomputable section

/-- A314085: Coordination sequence Gal.6.132.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314085.P6510588875040797776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085 (n : ℕ) : ℤ :=
  A314085.P6510588875040797776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314129.P3295900941499139215

`A313966(n)+A314123(n)-A313957(n)`
-/

namespace A314129.P3295900941499139215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314123 n - A313957 n)

end

end A314129.P3295900941499139215

noncomputable section

/-- A314129: Coordination sequence Gal.5.312.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314129.P3295900941499139215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129 (n : ℕ) : ℤ :=
  A314129.P3295900941499139215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314130.P11569106488579326638

`A313966(n)+A314125(n)-A313957(n)`
-/

namespace A314130.P11569106488579326638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314125 n - A313957 n)

end

end A314130.P11569106488579326638

noncomputable section

/-- A314130: Coordination sequence Gal.5.312.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314130.P11569106488579326638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130 (n : ℕ) : ℤ :=
  A314130.P11569106488579326638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314176.P4544315038910432247

`A313932(n)+A244895(A142150(n))`
-/

namespace A314176.P4544315038910432247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313932 n + A244895 (A142150 n).toNat

end

end A314176.P4544315038910432247

noncomputable section

/-- A314176: Coordination sequence Gal.5.313.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314176.P4544315038910432247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176 (n : ℕ) : ℤ :=
  A314176.P4544315038910432247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314210.P1704120020659904217

`(A310496(n)+A008458(n))/2`
-/

namespace A314210.P1704120020659904217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A008458 n : ℚ) / 2

end

end A314210.P1704120020659904217

noncomputable section

/-- A314210: Coordination sequence Gal.6.623.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314210.P1704120020659904217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314210.P1704120020659904217.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314254.P14587660656971649234

`A313117(n)+n`
-/

namespace A314254.P14587660656971649234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n + (n : ℤ)

end

end A314254.P14587660656971649234

noncomputable section

/-- A314254: Coordination sequence Gal.6.628.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314254.P14587660656971649234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A314254 (n : ℕ) : ℤ :=
  A314254.P14587660656971649234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A314254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314548.P16561424659105891053

`A314364(n)+A087509(n)`
-/

namespace A314548.P16561424659105891053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314364 n + A087509 n

end

end A314548.P16561424659105891053

noncomputable section

/-- A314548: Coordination sequence Gal.4.99.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314548.P16561424659105891053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A314548 (n : ℕ) : ℤ :=
  A314548.P16561424659105891053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A314548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314689.P7889334889047970928

`abs(A008592(n)-A314234(n))`
-/

namespace A314689.P7889334889047970928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314234 n|

end

end A314689.P7889334889047970928

noncomputable section

/-- A314689: Coordination sequence Gal.6.255.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314689.P7889334889047970928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689 (n : ℕ) : ℤ :=
  A314689.P7889334889047970928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314708.P15864941767784630642

`A315171(n)-A330025(A330025(n)+n)`
-/

namespace A314708.P15864941767784630642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315171 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A314708.P15864941767784630642

noncomputable section

/-- A314708: Coordination sequence Gal.5.65.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314708.P15864941767784630642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2526 terms. -/
def A314708 (n : ℕ) : ℤ :=
  A314708.P15864941767784630642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2526 terms. -/
def A314708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314885.P6042204147825848892

`abs(A008592(n)-A314133(n))`
-/

namespace A314885.P6042204147825848892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314133 n|

end

end A314885.P6042204147825848892

noncomputable section

/-- A314885: Coordination sequence Gal.6.245.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314885.P6042204147825848892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885 (n : ℕ) : ℤ :=
  A314885.P6042204147825848892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314971.P14452924613501510343

`abs(A008592(n)-A314088(n))`
-/

namespace A314971.P14452924613501510343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314088 n|

end

end A314971.P14452924613501510343

noncomputable section

/-- A314971: Coordination sequence Gal.5.138.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314971.P14452924613501510343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971 (n : ℕ) : ℤ :=
  A314971.P14452924613501510343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315019.P7036511611890630324

`abs(10*n-A314057(n))`
-/

namespace A315019.P7036511611890630324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314057 n|

end

end A315019.P7036511611890630324

noncomputable section

/-- A315019: Coordination sequence Gal.6.320.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315019.P7036511611890630324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019 (n : ℕ) : ℤ :=
  A315019.P7036511611890630324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315056.P4925321079305398332

`abs(A008592(n)-A314029(n))`
-/

namespace A315056.P4925321079305398332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314029 n|

end

end A315056.P4925321079305398332

noncomputable section

/-- A315056: Coordination sequence Gal.6.348.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315056.P4925321079305398332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056 (n : ℕ) : ℤ :=
  A315056.P4925321079305398332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315172.P15889676630402810519

`2*A314671(n)-A008574(n)`
-/

namespace A315172.P15889676630402810519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314671 n - A008574 n

end

end A315172.P15889676630402810519

noncomputable section

/-- A315172: Coordination sequence Gal.5.54.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315172.P15889676630402810519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172 (n : ℕ) : ℤ :=
  A315172.P15889676630402810519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315212.P16544204040533700131

`abs(10*n-A310496(n))`
-/

namespace A315212.P16544204040533700131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310496 n|

end

end A315212.P16544204040533700131

noncomputable section

/-- A315212: Coordination sequence Gal.6.351.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315212.P16544204040533700131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212 (n : ℕ) : ℤ :=
  A315212.P16544204040533700131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315267.P18096296036471696412

`A313799(n)+A134667(A006369(n))`
-/

namespace A315267.P18096296036471696412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A134667 (A006369 n).toNat

end

end A315267.P18096296036471696412

noncomputable section

/-- A315267: Coordination sequence Gal.6.215.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315267.P18096296036471696412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267 (n : ℕ) : ℤ :=
  A315267.P18096296036471696412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315312.P652016832202607211

`A315261(n)+Δ[A011864(n)]`
-/

namespace A315312.P652016832202607211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315261 n + (f1 (n + 1) - f1 n)

end

end A315312.P652016832202607211

noncomputable section

/-- A315312: Coordination sequence Gal.6.639.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315312.P652016832202607211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315312 (n : ℕ) : ℤ :=
  A315312.P652016832202607211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315446.P15191818491354741477

`A315398(n)+Δ[A011862(n)]`
-/

namespace A315446.P15191818491354741477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + (f1 (n + 1) - f1 n)

end

end A315446.P15191818491354741477

noncomputable section

/-- A315446: Coordination sequence Gal.5.68.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315446.P15191818491354741477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446 (n : ℕ) : ℤ :=
  A315446.P15191818491354741477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315478.P13307919099686245578

`A315426(n)+Δ[A011864(n)]`
-/

namespace A315478.P13307919099686245578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315426 n + (f1 (n + 1) - f1 n)

end

end A315478.P13307919099686245578

noncomputable section

/-- A315478: Coordination sequence Gal.6.209.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315478.P13307919099686245578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315478 (n : ℕ) : ℤ :=
  A315478.P13307919099686245578.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315485.P8491301675403388189

`A313717(n)+A004525(n)`
-/

namespace A315485.P8491301675403388189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + A004525 n

end

end A315485.P8491301675403388189

noncomputable section

/-- A315485: Coordination sequence Gal.6.205.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315485.P8491301675403388189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315485 (n : ℕ) : ℤ :=
  A315485.P8491301675403388189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315631.P14361202183170723118

`A315398(n)+A004396(n-A004396(n))`
-/

namespace A315631.P14361202183170723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315631.P14361202183170723118

noncomputable section

/-- A315631: Coordination sequence Gal.5.68.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315631.P14361202183170723118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631 (n : ℕ) : ℤ :=
  A315631.P14361202183170723118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315690.P5988482929167051028

`A314671(n)+∑[A101825(n)]`
-/

namespace A315690.P5988482929167051028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315690.P5988482929167051028

noncomputable section

/-- A315690: Coordination sequence Gal.5.135.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315690.P5988482929167051028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A315690 (n : ℕ) : ℤ :=
  A315690.P5988482929167051028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A315690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315727.P1759850529148023067

`A315669(n)+Δ[A011862(n)]`
-/

namespace A315727.P1759850529148023067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315669 n + (f1 (n + 1) - f1 n)

end

end A315727.P1759850529148023067

noncomputable section

/-- A315727: Coordination sequence Gal.5.89.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315727.P1759850529148023067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727 (n : ℕ) : ℤ :=
  A315727.P1759850529148023067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315832.P11173554786775722333

`A315213(n)-A265188(n+1)+n`
-/

namespace A315832.P11173554786775722333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A265188 (n + 1) + (n : ℤ)

end

end A315832.P11173554786775722333

noncomputable section

/-- A315832: Coordination sequence Gal.5.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315832.P11173554786775722333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315832 (n : ℕ) : ℤ :=
  A315832.P11173554786775722333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315959.P3345584257071925561

`3*n+A004525(A315828(n))`
-/

namespace A315959.P3345584257071925561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A004525 (A315828 n).toNat

end

end A315959.P3345584257071925561

noncomputable section

/-- A315959: Coordination sequence Gal.5.146.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315959.P3345584257071925561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959 (n : ℕ) : ℤ :=
  A315959.P3345584257071925561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316344.P12222898114171771494

`A316826((C(3, n+2)+1)*(n+1))`
-/

namespace A316344.P12222898114171771494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 ((Nat.choose 3 (n + 2) + 1) * (n + 1))

end

end A316344.P12222898114171771494

noncomputable section

/-- A316344: An example of a word that is uniform morphic, but neither pure morphic, primitive morphic, nor recurrent.

Offset 0, canonical program `A316344.P12222898114171771494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316344 (n : ℕ) : ℤ :=
  A316344.P12222898114171771494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317797.P6848879990228861065

`∑{d}[n+1, A034676(#)*A111938((n+1)/#)]`
-/

namespace A317797.P6848879990228861065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A111938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317797.P6848879990228861065

noncomputable section

/-- A317797: Sum of the norm of divisors of n over Gaussian integers, with associated divisors counted only once.

Offset 1, canonical program `A317797.P6848879990228861065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317797 (n : ℕ) : ℤ :=
  A317797.P6848879990228861065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318107.P12439522984960775908

`A104684(n)*A264772(n)`
-/

namespace A318107.P12439522984960775908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n * A264772 n

end

end A318107.P12439522984960775908

noncomputable section

/-- A318107: Triangle read by rows: T(n,k) = (3*n - 2*k)!/((n-k)!^3*k!).

Offset 0, canonical program `A318107.P12439522984960775908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A318107 (n : ℕ) : ℤ :=
  A318107.P12439522984960775908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A318107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318206.P13112359878719457918

`eq[1, A175242(n+1)]+1`
-/

namespace A318206.P13112359878719457918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318206.P13112359878719457918

noncomputable section

/-- A318206: Numbers having no divisor d > 1 that is a binary palindrome (i.e., an element of A006995).

Offset 1, canonical program `A318206.P13112359878719457918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3950 terms. -/
def A318206 (n : ℕ) : ℤ :=
  (A318206.P13112359878719457918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3950 terms. -/
def A318206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318448.P18323809931802074675

`A318447(n+1)+A294898(n+1)`
-/

namespace A318448.P18323809931802074675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318447 (n + 1) + A294898 (n + 1)

end

end A318448.P18323809931802074675

noncomputable section

/-- A318448: a(n) = Sum_{d|n} A294898(d), where A294898(d) = A005187(d) - sigma(d).

Offset 1, canonical program `A318448.P18323809931802074675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294898, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318448 (n : ℕ) : ℤ :=
  A318448.P18323809931802074675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294898, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318465.P12082296130128085348

`2^A318464(n+1)`
-/

namespace A318465.P12082296130128085348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318464 (n + 1) : ℤ)

end

end A318465.P12082296130128085348

noncomputable section

/-- A318465: The number of Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the Zeckendorf expansion (A014417) of each s(i) contains only terms that are in the Zeckendorf expansion of r(i).

Offset 1, canonical program `A318465.P12082296130128085348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318465.P12082296130128085348.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319131.P10960371744779715006

`∑{d}[n+1, A007425(#)*A137851((n+1)/#)]`
-/

namespace A319131.P10960371744779715006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319131.P10960371744779715006

noncomputable section

/-- A319131: a(n) = Sum_{d|n} Sum_{p|d, p prime} p.

Offset 1, canonical program `A319131.P10960371744779715006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319131 (n : ℕ) : ℤ :=
  A319131.P10960371744779715006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319968.P17225468272260434348

`2*(A003144(n+1)+A003145(n+1))+n`
-/

namespace A319968.P17225468272260434348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003144 (n + 1) + A003145 (n + 1)) + (n : ℤ)

end

end A319968.P17225468272260434348

noncomputable section

/-- A319968: a(n) = A003145(A003145(n)).

Offset 1, canonical program `A319968.P17225468272260434348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319968 (n : ℕ) : ℤ :=
  A319968.P17225468272260434348.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319971.P17707355117856194328

`3*A003144(n+1)+4*A003145(n+1)+2*n`
-/

namespace A319971.P17707355117856194328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003144 (n + 1) + 4 * A003145 (n + 1) + (2 * n : ℤ)

end

end A319971.P17707355117856194328

noncomputable section

/-- A319971: a(n) = A003146(A003145(n)).

Offset 1, canonical program `A319971.P17707355117856194328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971 (n : ℕ) : ℤ :=
  A319971.P17707355117856194328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320088.P9801896306864635147

`∑[A295505(n+1)]`
-/

namespace A320088.P9801896306864635147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320088.P9801896306864635147

noncomputable section

/-- A320088: Number of primitive (=aperiodic) 4-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320088.P9801896306864635147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A320088 (n : ℕ) : ℤ :=
  A320088.P9801896306864635147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A320088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320627.P6502014669296269449

`A006134(A038754(n)-1)/3^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320627.P6502014669296269449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 (A038754 n - 1).toNat : ℚ) / (3 ^ n : ℚ)

end

end A320627.P6502014669296269449

noncomputable section

/-- A320627: a(n) = A006134(A038754(n) - 1)/3^n.

Offset 0, canonical program `A320627.P6502014669296269449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320627.P6502014669296269449.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320935.P2955053183113654564

`A320934(n+1)+A320528(n+1)`
-/

namespace A320935.P2955053183113654564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320934 (n + 1) + A320528 (n + 1)

end

end A320935.P2955053183113654564

noncomputable section

/-- A320935: Number of chiral pairs of color patterns (set partitions) for a row of length n using 5 or fewer colors (subsets).

Offset 1, canonical program `A320935.P2955053183113654564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A320935 (n : ℕ) : ℤ :=
  A320935.P2955053183113654564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A320935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322583.P14311457502044672591

`A344438(∑[A063226(n+1)])+A344438(n+1)`
-/

namespace A322583.P14311457502044672591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A344438 (n + 1)

end

end A322583.P14311457502044672591

noncomputable section

/-- A322583: a(n) is the number of factorizations of n into factorial numbers larger than one; a(1) = 1.

Offset 1, canonical program `A322583.P14311457502044672591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583 (n : ℕ) : ℤ :=
  A322583.P14311457502044672591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324795.P1691509728636329575

`A090076(n+1)-A056221(n+1)`
-/

namespace A324795.P1691509728636329575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A056221 (n + 1)

end

end A324795.P1691509728636329575

noncomputable section

/-- A324795: a(n) = 2*p(n)*p(n+2) - p(n+1)^2 where p(k) = k-th prime.

Offset 1, canonical program `A324795.P1691509728636329575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324795 (n : ℕ) : ℤ :=
  A324795.P1691509728636329575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324873.P5103908596752073579

`gcd(n+1, A060968(n+1))`
-/

namespace A324873.P5103908596752073579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A060968 (n + 1))

end

end A324873.P5103908596752073579

noncomputable section

/-- A324873: a(n) = gcd(n, A060968(n)).

Offset 1, canonical program `A324873.P5103908596752073579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324873 (n : ℕ) : ℤ :=
  (A324873.P5103908596752073579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325402.P10132391026070939766

`A055944(n)-A325401(n)`
-/

namespace A325402.P10132391026070939766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - A325401 n

end

end A325402.P10132391026070939766

noncomputable section

/-- A325402: maxflip(n) = max(n, r(n)) where r(n) is the binary reverse of n.

Offset 0, canonical program `A325402.P10132391026070939766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325402 (n : ℕ) : ℤ :=
  A325402.P10132391026070939766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327277.P14093476909524946840

`p?[A037126(n+1)*A143536(n+1)]`
-/

namespace A327277.P14093476909524946840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327277.P14093476909524946840

noncomputable section

/-- A327277: Irregular triangle read by rows in which row n lists the first prime(n) primes.

Offset 1, canonical program `A327277.P14093476909524946840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A327277 (n : ℕ) : ℤ :=
  A327277.P14093476909524946840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A327277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327434.P6965097301390461405

`A056221(A046868(n+1)-1)`
-/

namespace A327434.P6965097301390461405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (A046868 (n + 1) - 1).toNat

end

end A327434.P6965097301390461405

noncomputable section

/-- A327434: Prime(n)^2 - prime(n-1)*prime(n+1) for n in A046868.

Offset 1, canonical program `A327434.P6965097301390461405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A327434 (n : ℕ) : ℤ :=
  A327434.P6965097301390461405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A327434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328196.P7657334495966535076

`Δ[A328190(n+1)]`
-/

namespace A328196.P7657334495966535076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328196.P7657334495966535076

noncomputable section

/-- A328196: First differences of A328190.

Offset 1, canonical program `A328196.P7657334495966535076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A328196 (n : ℕ) : ℤ :=
  A328196.P7657334495966535076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A328196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328639.P17852271608018374893

`∑{d}[n+1, A076752(#)*A328254((n+1)/#)]`
-/

namespace A328639.P17852271608018374893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P17852271608018374893

noncomputable section

/-- A328639: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(s-2)).

Offset 1, canonical program `A328639.P17852271608018374893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328639 (n : ℕ) : ℤ :=
  A328639.P17852271608018374893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328818.P2352908255522347692

`A307011(n)+A307013(n)`
-/

namespace A328818.P2352908255522347692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n + A307013 n

end

end A328818.P2352908255522347692

noncomputable section

/-- A328818: 2 * x-coordinate of the points of a counterclockwise spiral on an hexagonal grid.

Offset 0, canonical program `A328818.P2352908255522347692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307013, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328818 (n : ℕ) : ℤ :=
  A328818.P2352908255522347692.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307013, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328915.P16910844681852021405

`∏{p}[n+1, A066169(#)]`
-/

namespace A328915.P16910844681852021405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A066169 p

end

end A328915.P16910844681852021405

noncomputable section

/-- A328915: If n = Product (p_j^k_j) then a(n) = Product (nextprime(p_j)), where nextprime = A151800.

Offset 1, canonical program `A328915.P16910844681852021405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328915 (n : ℕ) : ℤ :=
  A328915.P16910844681852021405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329836.P12686953867278850669

`A110303(2*n+2)%A074822(A000463(n+4))`
-/

namespace A329836.P12686953867278850669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * n + 2)) (A074822 (A000463 (n + 4)).toNat)

end

end A329836.P12686953867278850669

noncomputable section

/-- A329836: Beatty sequence for (11+sqrt(101))/10.

Offset 1, canonical program `A329836.P12686953867278850669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836 (n : ℕ) : ℤ :=
  A329836.P12686953867278850669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330018.P8032385890936907680

`A069264(n+1)-A062799(n+1)`
-/

namespace A330018.P8032385890936907680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (n + 1) - A062799 (n + 1)

end

end A330018.P8032385890936907680

noncomputable section

/-- A330018: a(n) = Sum_{d|n} (bigomega(d) - omega(d)).

Offset 1, canonical program `A330018.P8032385890936907680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A069264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330018 (n : ℕ) : ℤ :=
  A330018.P8032385890936907680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A069264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330556.P13468609858281030865

`A330559(∑[A101264(n)]+1)`
-/

namespace A330556.P13468609858281030865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A330556.P13468609858281030865

noncomputable section

/-- A330556: a(n) = (number of primes p <= 2*n+1 with Delta(p) == 2 mod 4) - (number of primes p <= 2*n+1 with Delta(p) == 0 mod 4), where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330556.P13468609858281030865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330556 (n : ℕ) : ℤ :=
  A330556.P13468609858281030865.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330799.P5359052289965847582

`7*a(n-1)-A103970(n)` with `a(0)=1`
-/

namespace A330799.P5359052289965847582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A103970 n

end

end A330799.P5359052289965847582

noncomputable section

/-- A330799: Evaluation of the Motzkin polynomials at 1/2 and normalized with 2^n.

Offset 0, canonical program `A330799.P5359052289965847582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A330799 (n : ℕ) : ℤ :=
  A330799.P5359052289965847582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A330799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331891.P10796456041934863719

`∑[2*A119608(n+1)]-A119608(n+1)`
-/

namespace A331891.P10796456041934863719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119608 (n + 1)

end

end A331891.P10796456041934863719

noncomputable section

/-- A331891: Negabinary palindromes: nonnegative numbers whose negabinary expansion (A039724) is palindromic.

Offset 1, canonical program `A331891.P10796456041934863719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891 (n : ℕ) : ℤ :=
  A331891.P10796456041934863719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332681.P15735275970095107601

`A049691(n)+∑[round(∏{p}[n+1, -#]/(n+2))]`
-/

namespace A332681.P15735275970095107601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332681.P15735275970095107601

noncomputable section

/-- A332681: a(n) = Sum_{k=1..n} mu(k) * ceiling(n/k)^2.

Offset 1, canonical program `A332681.P15735275970095107601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A332681 (n : ℕ) : ℤ :=
  A332681.P15735275970095107601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A332681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332794.P344464151084610744

`2*A255655(n+1)-A018804(n+1)`
-/

namespace A332794.P344464151084610744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255655 (n + 1) - A018804 (n + 1)

end

end A332794.P344464151084610744

noncomputable section

/-- A332794: a(n) = Sum_{d|n} (-1)^(d + 1) * d * phi(n/d).

Offset 1, canonical program `A332794.P344464151084610744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332794 (n : ℕ) : ℤ :=
  A332794.P344464151084610744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333231.P6834028189182866023

`A046868(n+1)-1`
-/

namespace A333231.P6834028189182866023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1) - 1

end

end A333231.P6834028189182866023

noncomputable section

/-- A333231: Positions of weak descents in the sequence of differences between primes.

Offset 1, canonical program `A333231.P6834028189182866023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333231 (n : ℕ) : ℤ :=
  A333231.P6834028189182866023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333315.P973349873457227221

`∑[A008330(n+1)]`
-/

namespace A333315.P973349873457227221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P973349873457227221

noncomputable section

/-- A333315: a(n) = Sum_{k=1..n} phi(prime(k)-1), where phi is the Euler totient function (A000005).

Offset 1, canonical program `A333315.P973349873457227221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333315 (n : ℕ) : ℤ :=
  A333315.P973349873457227221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334163.P14937506091226471622

`A000040(A247515(n+1))`
-/

namespace A334163.P14937506091226471622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247515 (n + 1)).toNat

end

end A334163.P14937506091226471622

noncomputable section

/-- A334163: Primes p whose continued fraction expansion of sqrt(p) has a 1 in the second position.

Offset 1, canonical program `A334163.P14937506091226471622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A334163 (n : ℕ) : ℤ :=
  A334163.P14937506091226471622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A334163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334800.P4513335297567322539

`A062774(n+1)-A062799(n+1)`
-/

namespace A334800.P4513335297567322539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) - A062799 (n + 1)

end

end A334800.P4513335297567322539

noncomputable section

/-- A334800: a(n) is the number of values d*p less than n, where d is a divisor of n, p is a prime, and d*p is not a divisor of n.

Offset 1, canonical program `A334800.P4513335297567322539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334800 (n : ℕ) : ℤ :=
  A334800.P4513335297567322539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336377.P11303749911854219269

`A000040(A336375(n+1))`
-/

namespace A336377.P11303749911854219269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336375 (n + 1)).toNat

end

end A336377.P11303749911854219269

noncomputable section

/-- A336377: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) > 1.

Offset 1, canonical program `A336377.P11303749911854219269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377 (n : ℕ) : ℤ :=
  A336377.P11303749911854219269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337637.P9892417587625479301

`∑[A095076(A095076(n)+n)]`
-/

namespace A337637.P9892417587625479301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (A095076 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337637.P9892417587625479301

noncomputable section

/-- A337637: Number of numbers k <= n such that both k and k+1 are in A020899.

Offset 0, canonical program `A337637.P9892417587625479301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337637 (n : ℕ) : ℤ :=
  A337637.P9892417587625479301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338529.P17609218579952394928

`A046302(n+1)/A006094(n+1)-A006094(n+1)`
-/

namespace A338529.P17609218579952394928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ) - (A006094 (n + 1) : ℚ)

end

end A338529.P17609218579952394928

noncomputable section

/-- A338529: a(n) = prime(n+2)*prime(n+3)-prime(n)*prime(n+1).

Offset 1, canonical program `A338529.P17609218579952394928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338529.P17609218579952394928.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338533.P15816568125547245429

`p?[A102770(n+3)-A102770(n+1)]`
-/

namespace A338533.P15816568125547245429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 3) - A102770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338533.P15816568125547245429

noncomputable section

/-- A338533: Primes in A338529/2.

Offset 1, canonical program `A338533.P15816568125547245429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533 (n : ℕ) : ℤ :=
  A338533.P15816568125547245429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340078.P18366831274413488675

`gcd(A018804(n+1)-n, A131738(n))`
-/

namespace A340078.P18366831274413488675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 1) - (n : ℤ)) (A131738 n)

end

end A340078.P18366831274413488675

noncomputable section

/-- A340078: a(n) = gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

Offset 1, canonical program `A340078.P18366831274413488675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340078 (n : ℕ) : ℤ :=
  (A340078.P18366831274413488675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340567.P15280367653010939046

`A191524(n)+A191522(n)`
-/

namespace A340567.P15280367653010939046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n + A191522 n

end

end A340567.P15280367653010939046

noncomputable section

/-- A340567: Total number of ascents in all faro permutations of length n.

Offset 0, canonical program `A340567.P15280367653010939046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340567 (n : ℕ) : ℤ :=
  A340567.P15280367653010939046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341273.P10577388597316029777

`xor(n, A131577(A261283(n)))`
-/

namespace A341273.P10577388597316029777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 (A261283 n).toNat)

end

end A341273.P10577388597316029777

noncomputable section

/-- A341273: If A261283(n) = 0, then a(n) = n, otherwise a(n) is obtained by flipping the A261283(n)-th rightmost bit in the binary expansion of n.

Offset 0, canonical program `A341273.P10577388597316029777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A341273 (n : ℕ) : ℤ :=
  A341273.P10577388597316029777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A341273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341835.P7023220512797998449

`∑{d}[n+1, A341836(#)]`
-/

namespace A341835.P7023220512797998449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341836 d

end

end A341835.P7023220512797998449

noncomputable section

/-- A341835: Dirichlet g.f.: 1 / zeta(s)^9.

Offset 1, canonical program `A341835.P7023220512797998449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341835 (n : ℕ) : ℤ :=
  A341835.P7023220512797998449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342185.P15363331262892615647

`p?[ceil(A074822(n+1)/10)]`
-/

namespace A342185.P15363331262892615647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074822 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342185.P15363331262892615647

noncomputable section

/-- A342185: Primes q such that 10*q-1 and 10*q+3 are cousin primes.

Offset 1, canonical program `A342185.P15363331262892615647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185 (n : ℕ) : ℤ :=
  A342185.P15363331262892615647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343311.P12285777711636340916

`lt[A324337(n), A082023(n)²]`
-/

namespace A343311.P12285777711636340916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P12285777711636340916

noncomputable section

/-- A343311: Numbers of the form x + y + z with distinct positive integers x,y,z such that (x+y+z) | x*y*z.

Offset 1, canonical program `A343311.P12285777711636340916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343311 (n : ℕ) : ℤ :=
  (A343311.P12285777711636340916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343440.P31135175070880535

`∑{d}[A003557(n+1), A000740((n+1)/#)]`
-/

namespace A343440.P31135175070880535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343440.P31135175070880535

noncomputable section

/-- A343440: a(n) = Sum_{d|n, gcd(d, n/d) = 1} (-1)^omega(n/d) * 2^(d-1).

Offset 1, canonical program `A343440.P31135175070880535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A343440 (n : ℕ) : ℤ :=
  A343440.P31135175070880535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A343440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343490.P11085896974170910640

`∑{d}[n+1, #*A295505((n+1)/#)]`
-/

namespace A343490.P11085896974170910640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343490.P11085896974170910640

noncomputable section

/-- A343490: a(n) = Sum_{k=1..n} 4^(gcd(k, n) - 1).

Offset 1, canonical program `A343490.P11085896974170910640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A343490 (n : ℕ) : ℤ :=
  A343490.P11085896974170910640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A343490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343809.P11687227892759460159

`A114327(eq[1, A143536(n+1)])+1+n`
-/

namespace A343809.P11687227892759460159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1 + (n : ℤ)

end

end A343809.P11687227892759460159

noncomputable section

/-- A343809: Divide the positive integers into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

Offset 1, canonical program `A343809.P11687227892759460159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A343809 (n : ℕ) : ℤ :=
  A343809.P11687227892759460159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A343809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344372.P12264498720652963850

`∑{d}[n+1, A001511(#)*A029935((n+1)/#)]`
-/

namespace A344372.P12264498720652963850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P12264498720652963850

noncomputable section

/-- A344372: a(n) = Sum_{k = 1..n} gcd(2*k, n).

Offset 1, canonical program `A344372.P12264498720652963850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344372 (n : ℕ) : ℤ :=
  A344372.P12264498720652963850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344485.P11580457126215604994

`(n+1)²-A018804(n+1)`
-/

namespace A344485.P11580457126215604994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A018804 (n + 1)

end

end A344485.P11580457126215604994

noncomputable section

/-- A344485: a(n) = Sum_{d|n} (n-d) * phi(n/d).

Offset 1, canonical program `A344485.P11580457126215604994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344485 (n : ℕ) : ℤ :=
  A344485.P11580457126215604994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345070.P14970259234537640589

`A345069(n+1)/2`
-/

namespace A345070.P14970259234537640589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345069 (n + 1) : ℚ) / 2

end

end A345070.P14970259234537640589

noncomputable section

/-- A345070: Averages of two consecutive even-indexed primes.

Offset 1, canonical program `A345070.P14970259234537640589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345070.P14970259234537640589.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345277.P7546065214592130930

`A345069(n+2)+A031215(n+1)`
-/

namespace A345277.P7546065214592130930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345069 (n + 2) + A031215 (n + 1)

end

end A345277.P7546065214592130930

noncomputable section

/-- A345277: Sums of 3 consecutive even-indexed primes.

Offset 1, canonical program `A345277.P7546065214592130930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345277 (n : ℕ) : ℤ :=
  A345277.P7546065214592130930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345280.P13179303495743495362

`∑{p}[n+1, A066169(#)]`
-/

namespace A345280.P13179303495743495362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A066169 p

end

end A345280.P13179303495743495362

noncomputable section

/-- A345280: a(n) = Sum_{p|n, p prime} nextprime(p), where nextprime(n) is the smallest prime > n.

Offset 1, canonical program `A345280.P13179303495743495362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345280 (n : ℕ) : ℤ :=
  A345280.P13179303495743495362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345978.P5377370654684222569

`-A307013(n)`
-/

namespace A345978.P5377370654684222569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A307013 n

end

end A345978.P5377370654684222569

noncomputable section

/-- A345978: Third coordinate of the points of a counterclockwise spiral on an hexagonal grid in a symmetric redundant hexagonal coordinate system.

Offset 0, canonical program `A345978.P5377370654684222569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978 (n : ℕ) : ℤ :=
  A345978.P5377370654684222569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347091.P10465094588197524565

`A332844(n+1)+A347090(n+1)`
-/

namespace A347091.P10465094588197524565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332844 (n + 1) + A347090 (n + 1)

end

end A347091.P10465094588197524565

noncomputable section

/-- A347091: Sum of A332844 and its Dirichlet inverse.

Offset 1, canonical program `A347091.P10465094588197524565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332844, A347090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347091 (n : ℕ) : ℤ :=
  A347091.P10465094588197524565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332844, A347090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347095.P13848354769774225057

`A018804(n+1)+A101035(n+1)`
-/

namespace A347095.P13848354769774225057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A101035 (n + 1)

end

end A347095.P13848354769774225057

noncomputable section

/-- A347095: Sum of Pillai's arithmetical function (A018804) and its Dirichlet inverse.

Offset 1, canonical program `A347095.P13848354769774225057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A101035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347095 (n : ℕ) : ℤ :=
  A347095.P13848354769774225057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A101035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347104.P489848652422214647

`∑{d}[n+1, #*A137851((n+1)/#)]`
-/

namespace A347104.P489848652422214647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347104.P489848652422214647

noncomputable section

/-- A347104: Dirichlet g.f.: primezeta(s-1) * zeta(s-1) / zeta(s).

Offset 1, canonical program `A347104.P489848652422214647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347104 (n : ℕ) : ℤ :=
  A347104.P489848652422214647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347128.P11070062399515435337

`A018804(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347128.P11070062399515435337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P11070062399515435337

noncomputable section

/-- A347128: a(n) = A018804(n) / A003557(n), where A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A347128.P11070062399515435337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347128.P11070062399515435337.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347134.P17427216324099525413

`∑{d}[n+1, A010051(#)*A018804((n+1)/#)]`
-/

namespace A347134.P17427216324099525413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P17427216324099525413

noncomputable section

/-- A347134: a(n) = Sum_{d|n} phi(n/d) * A069359(d), where phi is Euler totient function.

Offset 1, canonical program `A347134.P17427216324099525413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347134 (n : ℕ) : ℤ :=
  A347134.P17427216324099525413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348011.P10712634183778289058

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A060648(n+1)`
-/

namespace A348011.P10712634183778289058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A060648 (n + 1) : ℚ)

end

end A348011.P10712634183778289058

noncomputable section

/-- A348011: a(n) = phi(n^2) * Sum_{d|n} 2^omega(d) / d.

Offset 1, canonical program `A348011.P10712634183778289058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348011.P10712634183778289058.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349230.P2013382610802091613

`eq[2, A105570(n)+A081221(n+1)]`
-/

namespace A349230.P2013382610802091613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A081221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349230.P2013382610802091613

noncomputable section

/-- A349230: Numbers k such that k and k+3 are consecutive squarefree numbers.

Offset 1, canonical program `A349230.P2013382610802091613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3571 terms. -/
def A349230 (n : ℕ) : ℤ :=
  (A349230.P2013382610802091613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3571 terms. -/
def A349230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349444.P9210141452199048946

`∑{d}[n+1, A007427(#)*A113415((n+1)/#)]`
-/

namespace A349444.P9210141452199048946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P9210141452199048946

noncomputable section

/-- A349444: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A092673 (Dirichlet inverse of A001511).

Offset 1, canonical program `A349444.P9210141452199048946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444 (n : ℕ) : ℤ :=
  A349444.P9210141452199048946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349676.P6432705211347796036

`A018804(a(n-1))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349676.P6432705211347796036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A018804 (a (n - 1)).toNat

end

end A349676.P6432705211347796036

noncomputable section

/-- A349676: Iterated Pillai's arithmetical function: a(1) = 2, for n >= 2, a(n) = A018804(a(n-1)).

Offset 1, canonical program `A349676.P6432705211347796036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349676 (n : ℕ) : ℤ :=
  A349676.P6432705211347796036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349692.P606356036147903569

`∑{d}[n+1, A018804(#)*A018804((n+1)/#)]`
-/

namespace A349692.P606356036147903569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349692.P606356036147903569

noncomputable section

/-- A349692: Dirichlet convolution of the gcd-sum function (A018804) with itself.

Offset 1, canonical program `A349692.P606356036147903569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349692 (n : ℕ) : ℤ :=
  A349692.P606356036147903569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349693.P1618582373112485882

`1/3*A115364(n+1)*A372784(n+1)`
-/

namespace A349693.P1618582373112485882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A115364 (n + 1) : ℚ) * (A372784 (n + 1) : ℚ)

end

end A349693.P1618582373112485882

noncomputable section

/-- A349693: Dirichlet convolution of the ruler function (A001511) with itself.

Offset 1, canonical program `A349693.P1618582373112485882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349693.P1618582373112485882.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351307.P18414374849791957633

`∑{d}[n+1, A189922(#)*A351602((n+1)/#)]`
-/

namespace A351307.P18414374849791957633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189922 d * A351602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351307.P18414374849791957633

noncomputable section

/-- A351307: Sum of the squares of the square divisors of n.

Offset 1, canonical program `A351307.P18414374849791957633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351307 (n : ℕ) : ℤ :=
  A351307.P18414374849791957633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352753.P3714199880856668914

`A035250(n+1)*A034387(n+1)`
-/

namespace A352753.P3714199880856668914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) * A034387 (n + 1)

end

end A352753.P3714199880856668914

noncomputable section

/-- A352753: a(n) = (pi(2n-1) - pi(n-1)) * Sum_{p <= n, p prime} p.

Offset 1, canonical program `A352753.P3714199880856668914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352753 (n : ℕ) : ℤ :=
  A352753.P3714199880856668914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353084.P13564049963541245376

`A003265(n+1)-n`
-/

namespace A353084.P13564049963541245376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1) - (n : ℤ)

end

end A353084.P13564049963541245376

noncomputable section

/-- A353084: Column 0 of the extended Trithoff (tribonacci) array.

Offset 1, canonical program `A353084.P13564049963541245376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084 (n : ℕ) : ℤ :=
  A353084.P13564049963541245376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353219.P7197214775389791693

`∩[A022544(n+1)+1, A022544(n+1)]`
-/

namespace A353219.P7197214775389791693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353219.P7197214775389791693

noncomputable section

/-- A353219: Positive integers which cannot be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

Offset 1, canonical program `A353219.P7197214775389791693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7191 terms. -/
def A353219 (n : ℕ) : ℤ :=
  (A353219.P7197214775389791693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7191 terms. -/
def A353219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353612.P5678627208239049230

`A061397(A108872(n+1))`
-/

namespace A353612.P5678627208239049230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A108872 (n + 1)).toNat

end

end A353612.P5678627208239049230

noncomputable section

/-- A353612: Triangle read by rows: T(n,k) = (n + k) if (n + k) is a prime number, otherwise T(n,k) = 0; n >= 1, k >= 1.

Offset 1, canonical program `A353612.P5678627208239049230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353612 (n : ℕ) : ℤ :=
  A353612.P5678627208239049230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354923.P18081959809145531847

`C(A007814(n+1), C(A008480(n+1), 2))`
-/

namespace A354923.P18081959809145531847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (n + 1)).toNat (Nat.choose (A008480 (n + 1)).toNat 2)

end

end A354923.P18081959809145531847

noncomputable section

/-- A354923: a(n) = 1 if n is either a power of prime or 2*prime, otherwise 0.

Offset 1, canonical program `A354923.P18081959809145531847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923 (n : ℕ) : ℤ :=
  (A354923.P18081959809145531847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355182.P7640286436067638090

`A128549(A063957(n+1))`
-/

namespace A355182.P7640286436067638090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128549 (A063957 (n + 1)).toNat

end

end A355182.P7640286436067638090

noncomputable section

/-- A355182: a(n) = t(n) - s(n) where s(n) = n*(n-1)/2 is the sum of the first n nonnegative integers and t(n) is the smallest sum of consecutive integers starting from n such that t(n) > s(n).

Offset 1, canonical program `A355182.P7640286436067638090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A355182 (n : ℕ) : ℤ :=
  A355182.P7640286436067638090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A355182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355825.P15495116383470503426

`A363329(n+1)%3`
-/

namespace A355825.P15495116383470503426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363329 (n + 1)) 3

end

end A355825.P15495116383470503426

noncomputable section

/-- A355825: a(n) = 1 if all exponents in prime factorization of n have an odd binary weight, otherwise 0.

Offset 1, canonical program `A355825.P15495116383470503426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355825 (n : ℕ) : ℤ :=
  A355825.P15495116383470503426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355996.P7540053898324700991

`A173333(n+1)/A010766(n+1)!`
-/

namespace A355996.P7540053898324700991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (Nat.factorial (A010766 (n + 1)).toNat : ℚ)

end

end A355996.P7540053898324700991

noncomputable section

/-- A355996: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) = n!/(k! * floor(n/k)!).

Offset 1, canonical program `A355996.P7540053898324700991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A355996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355996.P7540053898324700991.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A355996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356013.P16236274806747850591

`A173333(n+1)/A010766(n+1)`
-/

namespace A356013.P16236274806747850591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A356013.P16236274806747850591

noncomputable section

/-- A356013: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) = n!/(k! * floor(n/k)).

Offset 1, canonical program `A356013.P16236274806747850591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A356013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356013.P16236274806747850591.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A356013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356472.P4075546166562556307

`lcm(n+1, A018804(n+1))/(n+1)`
-/

namespace A356472.P4075546166562556307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A018804 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A356472.P4075546166562556307

noncomputable section

/-- A356472: Numerator of the average of gcd(i,n) for i = 1..n.

Offset 1, canonical program `A356472.P4075546166562556307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356472 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356472.P4075546166562556307.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356546.P14984275591505448716

`A003506(n+1)*A168256(n)`
-/

namespace A356546.P14984275591505448716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A168256 n

end

end A356546.P14984275591505448716

noncomputable section

/-- A356546: Triangle read by rows. T(n, k) = RisingFactorial(n + 1, n) / (k! * (n - k)!).

Offset 0, canonical program `A356546.P14984275591505448716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6604 terms. -/
def A356546 (n : ℕ) : ℤ :=
  A356546.P14984275591505448716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6604 terms. -/
def A356546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356647.P6767433424201887109

`A000120(A087118(n+2))`
-/

namespace A356647.P6767433424201887109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A087118 (n + 2)).toNat

end

end A356647.P6767433424201887109

noncomputable section

/-- A356647: Concatenation of runs {y..x} for each x>=1, using each y from 1 to x before moving on to the next value for x.

Offset 1, canonical program `A356647.P6767433424201887109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356647 (n : ℕ) : ℤ :=
  A356647.P6767433424201887109.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357253.P13552220234802372552

`A000040(A100637(2*n+1))`
-/

namespace A357253.P13552220234802372552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100637 (2 * n + 1)).toNat

end

end A357253.P13552220234802372552

noncomputable section

/-- A357253: a(n) is the largest prime < 6*n.

Offset 1, canonical program `A357253.P13552220234802372552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357253 (n : ℕ) : ℤ :=
  A357253.P13552220234802372552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357625.P1034363125234446896

`eq[1, A124754(and(n, A006068(n)))+1]`
-/

namespace A357625.P1034363125234446896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A006068 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357625.P1034363125234446896

noncomputable section

/-- A357625: Numbers k such that the k-th composition in standard order has half-alternating sum 0.

Offset 1, canonical program `A357625.P1034363125234446896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625 (n : ℕ) : ℤ :=
  (A357625.P1034363125234446896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358529.P11632851717617367385

`A233671(n+1)+1`
-/

namespace A358529.P11632851717617367385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) + 1

end

end A358529.P11632851717617367385

noncomputable section

/-- A358529: Indices of the primes in A358528.

Offset 1, canonical program `A358529.P11632851717617367385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529 (n : ℕ) : ℤ :=
  A358529.P11632851717617367385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358769.P7237245545502372505

`A062799(n+1)%2`
-/

namespace A358769.P7237245545502372505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062799 (n + 1)) 2

end

end A358769.P7237245545502372505

noncomputable section

/-- A358769: a(n) = 1 if n is of the form p * m^2, where p is a prime and m is a natural number >= 1, otherwise 0.

Offset 1, canonical program `A358769.P7237245545502372505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358769 (n : ℕ) : ℤ :=
  A358769.P7237245545502372505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359161.P8726554361443463211

`filter[A091113(n+1), A353557(#)]`
-/

namespace A359161.P8726554361443463211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359161.P8726554361443463211

noncomputable section

/-- A359161: Numbers of the form 4u+1 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359161.P8726554361443463211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161 (n : ℕ) : ℤ :=
  A359161.P8726554361443463211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359163.P2654985658167397465

`filter[A091236(n+1), A353557(#)]`
-/

namespace A359163.P2654985658167397465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359163.P2654985658167397465

noncomputable section

/-- A359163: Numbers of the form 4u+3 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359163.P2654985658167397465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163 (n : ℕ) : ℤ :=
  A359163.P2654985658167397465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359240.P2642300034305361616

`A359227(n+1)-A008441(n)`
-/

namespace A359240.P2642300034305361616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359227 (n + 1) - A008441 n

end

end A359240.P2642300034305361616

noncomputable section

/-- A359240: Number of divisors of 4*n-3 of form 4*k+3.

Offset 1, canonical program `A359240.P2642300034305361616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359240 (n : ℕ) : ℤ :=
  A359240.P2642300034305361616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359370.P6297683612885959672

`A359372(3*(n+1))`
-/

namespace A359370.P6297683612885959672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (3 * (n + 1))

end

end A359370.P6297683612885959672

noncomputable section

/-- A359370: a(n) = 1 if n is not a multiple of 4 and has an even number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359370.P6297683612885959672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359370 (n : ℕ) : ℤ :=
  A359370.P6297683612885959672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359485.P1680214592273319641

`∑{d}[n+1, A002131(#)*A328254((n+1)/#)]`
-/

namespace A359485.P1680214592273319641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359485.P1680214592273319641

noncomputable section

/-- A359485: a(1) = 1, a(2) = -5; a(n) = -n^2 * Sum_{d|n, d < n} a(d) / d^2.

Offset 1, canonical program `A359485.P1680214592273319641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485 (n : ℕ) : ℤ :=
  A359485.P1680214592273319641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359822.P1092898922336058354

`lt[A359792(xor(1, n)+1), 1]`
-/

namespace A359822.P1092898922336058354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359792 (Nat.xor 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359822.P1092898922336058354

noncomputable section

/-- A359822: Numbers k whose arithmetic derivative, A003415(k), has the same parity as k.

Offset 1, canonical program `A359822.P1092898922336058354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359822 (n : ℕ) : ℤ :=
  (A359822.P1092898922336058354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359869.P15930042732878126221

`lt[∏{p}[n+1, #], A352167(n+1)]+1`
-/

namespace A359869.P15930042732878126221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A359869.P15930042732878126221

noncomputable section

/-- A359869: Numbers whose product of distinct prime factors is less than the sum of its prime factors (with repetition).

Offset 1, canonical program `A359869.P15930042732878126221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359869 (n : ℕ) : ℤ :=
  (A359869.P15930042732878126221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359949.P7223717125220601482

`∑{d}[n+1, A029935(#)*A073185((n+1)/#)]`
-/

namespace A359949.P7223717125220601482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A073185 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359949.P7223717125220601482

noncomputable section

/-- A359949: Multiplicative sequence with a(p) = 3*p-1 and a(p^e) = (3*e*(p-1) + 3) * p^(e-1) for e > 1 and prime p.

Offset 1, canonical program `A359949.P7223717125220601482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359949 (n : ℕ) : ℤ :=
  A359949.P7223717125220601482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360452.P5231315610190854606

`record[A049691(n)-a(n-1)]` with `a(0)=0`
-/

namespace A360452.P5231315610190854606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A049691 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360452.P5231315610190854606

noncomputable section

/-- A360452: Number of fractions c/d with |c| <= d <= 2n and odd denominator when factors of 2 are canceled.

Offset 0, canonical program `A360452.P5231315610190854606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452 (n : ℕ) : ℤ :=
  A360452.P5231315610190854606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361121.P16839421460347675392

`A053542(n+1)%2`
-/

namespace A361121.P16839421460347675392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053542 (n + 1)) 2

end

end A361121.P16839421460347675392

noncomputable section

/-- A361121: 1 if n-th composite number A002808(n) is even, otherwise 0.

Offset 1, canonical program `A361121.P16839421460347675392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121 (n : ℕ) : ℤ :=
  A361121.P16839421460347675392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363033.P3461086659024526628

`A284281(5*n+4)`
-/

namespace A363033.P3461086659024526628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * n + 4)

end

end A363033.P3461086659024526628

noncomputable section

/-- A363033: Sum of divisors of 5*n-1 of form 5*k+3.

Offset 1, canonical program `A363033.P3461086659024526628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363033 (n : ℕ) : ℤ :=
  A363033.P3461086659024526628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363034.P10087279533718128159

`A284281(record[xor(3, n)]+n)`
-/

namespace A363034.P10087279533718128159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n)

end

end A363034.P10087279533718128159

noncomputable section

/-- A363034: Sum of divisors of 5*n-2 of form 5*k+3.

Offset 1, canonical program `A363034.P10087279533718128159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363034 (n : ℕ) : ℤ :=
  A363034.P10087279533718128159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363035.P15747468741637469586

`A284281(5*n+2)`
-/

namespace A363035.P15747468741637469586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * n + 2)

end

end A363035.P15747468741637469586

noncomputable section

/-- A363035: Sum of divisors of 5*n-3 of form 5*k+3.

Offset 1, canonical program `A363035.P15747468741637469586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363035 (n : ℕ) : ℤ :=
  A363035.P15747468741637469586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363053.P13013895526662378901

`A284281(5*n+1)`
-/

namespace A363053.P13013895526662378901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * n + 1)

end

end A363053.P13013895526662378901

noncomputable section

/-- A363053: Sum of divisors of 5*n-4 of form 5*k+3.

Offset 1, canonical program `A363053.P13013895526662378901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053 (n : ℕ) : ℤ :=
  A363053.P13013895526662378901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363571.P3654018862182972144

`(A084771(n)-1)/4`
-/

namespace A363571.P3654018862182972144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084771 n - 1 : ℚ) / 4

end

end A363571.P3654018862182972144

noncomputable section

/-- A363571: Expansion of (1 / sqrt(1 - 10*x + 9*x^2) - 1 / (1 - x)) / 4.

Offset 0, canonical program `A363571.P3654018862182972144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363571.P3654018862182972144.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366379.P12647451880837089221

`lt[char[A366378(n+1)], 1]`
-/

namespace A366379.P12647451880837089221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A366379.P12647451880837089221

noncomputable section

/-- A366379: Numbers k such that A057889(k) != k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366379.P12647451880837089221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A366379 (n : ℕ) : ℤ :=
  (A366379.P12647451880837089221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A366379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366659.P2927659781479291372

`∑[A366813(n+1)]`
-/

namespace A366659.P2927659781479291372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366659.P2927659781479291372

noncomputable section

/-- A366659: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(floor(n/k)+3,4).

Offset 1, canonical program `A366659.P2927659781479291372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366659 (n : ℕ) : ℤ :=
  A366659.P2927659781479291372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366723.P14973946033266997521

`∑[A366814(n+1)]`
-/

namespace A366723.P14973946033266997521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366723.P14973946033266997521

noncomputable section

/-- A366723: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(floor(n/k)+4,5).

Offset 1, canonical program `A366723.P14973946033266997521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366723 (n : ℕ) : ℤ :=
  A366723.P14973946033266997521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369744.P12931148306204078682

`∑{d}[n+1, A062799(#)*A137851((n+1)/#)]`
-/

namespace A369744.P12931148306204078682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369744.P12931148306204078682

noncomputable section

/-- A369744: a(n) = Sum_{p|n, p prime} p * omega(n/p).

Offset 1, canonical program `A369744.P12931148306204078682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369744 (n : ℕ) : ℤ :=
  A369744.P12931148306204078682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369745.P3771573079941059180

`∑{d}[n+1, A062774(#)*A137851((n+1)/#)]`
-/

namespace A369745.P3771573079941059180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062774 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369745.P3771573079941059180

noncomputable section

/-- A369745: a(n) = Sum_{p|n, p prime} p * pi(n/p).

Offset 1, canonical program `A369745.P3771573079941059180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369745 (n : ℕ) : ℤ :=
  A369745.P3771573079941059180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370895.P1285603479824087748

`∑[(-1)^n*A018804(n+1)]`
-/

namespace A370895.P1285603479824087748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A018804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370895.P1285603479824087748

noncomputable section

/-- A370895: Partial alternating sums of Pillai's arithmetical function (A018804).

Offset 1, canonical program `A370895.P1285603479824087748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370895 (n : ℕ) : ℤ :=
  A370895.P1285603479824087748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371176.P8298273328207224755

`∑[2^A213911(n)]`
-/

namespace A371176.P8298273328207224755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A213911 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371176.P8298273328207224755

noncomputable section

/-- A371176: Numbers k such that A000120(k) <= A001511(k).

Offset 1, canonical program `A371176.P8298273328207224755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371176.P8298273328207224755.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372209.P616246694490321131

`A008578(A046868(n+1))`
-/

namespace A372209.P616246694490321131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046868 (n + 1)).toNat

end

end A372209.P616246694490321131

noncomputable section

/-- A372209: Primes p_1 where products m of k = 3 consecutive primes p_1..p_k are such that only p_1 < m^(1/k).

Offset 1, canonical program `A372209.P616246694490321131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209 (n : ℕ) : ℤ :=
  A372209.P616246694490321131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372429.P17746023410303381127

`A227192(A338524(n+1))`
-/

namespace A372429.P17746023410303381127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227192 (A338524 (n + 1)).toNat

end

end A372429.P17746023410303381127

noncomputable section

/-- A372429: Sum of binary indices of prime(n). Sum of positions of ones in the reversed binary expansion of prime(n).

Offset 1, canonical program `A372429.P17746023410303381127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A372429 (n : ℕ) : ℤ :=
  A372429.P17746023410303381127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A372429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373125.P1876854732026961662

`A372683(n)-2^n`
-/

namespace A373125.P1876854732026961662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372683 n - (2 ^ n : ℤ)

end

end A373125.P1876854732026961662

noncomputable section

/-- A373125: Difference between 2^n and the least squarefree number >= 2^n.

Offset 0, canonical program `A373125.P1876854732026961662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373125 (n : ℕ) : ℤ :=
  A373125.P1876854732026961662.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373126.P14612012098336311250

`2^n-A372889(n)`
-/

namespace A373126.P14612012098336311250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A372889 n

end

end A373126.P14612012098336311250

noncomputable section

/-- A373126: Difference between 2^n and the greatest squarefree number <= 2^n.

Offset 0, canonical program `A373126.P14612012098336311250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373126 (n : ℕ) : ℤ :=
  A373126.P14612012098336311250.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373260.P13345870415244065994

`A372573(3*(n+1))`
-/

namespace A373260.P13345870415244065994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (3 * (n + 1))

end

end A373260.P13345870415244065994

noncomputable section

/-- A373260: a(n) = 1 if A276085(n) == +1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373260.P13345870415244065994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260 (n : ℕ) : ℤ :=
  A373260.P13345870415244065994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373261.P11625810487040253736

`eq[1, A373153(n+1)]+1`
-/

namespace A373261.P11625810487040253736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373261.P11625810487040253736

noncomputable section

/-- A373261: Numbers k for which A276085(k) == +1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373261.P11625810487040253736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261 (n : ℕ) : ℤ :=
  (A373261.P11625810487040253736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373262.P3920179608283670955

`lt[A373153(n+1), 0]+1`
-/

namespace A373262.P3920179608283670955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373262.P3920179608283670955

noncomputable section

/-- A373262: Numbers k for which A276085(k) == -1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373262.P3920179608283670955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262 (n : ℕ) : ℤ :=
  (A373262.P3920179608283670955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373280.P16964894581792831006

`∑{d}[n+1, A115362(#-1)*A295505((n+1)/#)]`
-/

namespace A373280.P16964894581792831006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115362 (d - 1) * A295505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373280.P16964894581792831006

noncomputable section

/-- A373280: Expansion of Sum_{k>=0} x^(4^k) / (1 - 4*x^(4^k)).

Offset 1, canonical program `A373280.P16964894581792831006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A373280 (n : ℕ) : ℤ :=
  A373280.P16964894581792831006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A373280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373372.P1234123365246061466

`A373371(n+1)*A372573(n+1)`
-/

namespace A373372.P1234123365246061466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A372573 (n + 1)

end

end A373372.P1234123365246061466

noncomputable section

/-- A373372: a(n) = 1 if A001414(n) and A276085(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

Offset 1, canonical program `A373372.P1234123365246061466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373372 (n : ℕ) : ℤ :=
  A373372.P1234123365246061466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373376.P10229871634249009273

`∪[A335657(n+1), A016825(n)]`
-/

namespace A373376.P10229871634249009273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P10229871634249009273

noncomputable section

/-- A373376: Numbers k such that gcd(A001414(k), A003415(k)) is odd, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373376.P10229871634249009273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376 (n : ℕ) : ℤ :=
  (A373376.P10229871634249009273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373836.P14977565913195360682

`A372573(n+1)*A373975(n+1)`
-/

namespace A373836.P14977565913195360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A373975 (n + 1)

end

end A373836.P14977565913195360682

noncomputable section

/-- A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373836.P14977565913195360682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836 (n : ℕ) : ℤ :=
  A373836.P14977565913195360682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374041.P11682123411284146130

`A372573(n+1)*A374039(n+1)`
-/

namespace A374041.P11682123411284146130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A374039 (n + 1)

end

end A374041.P11682123411284146130

noncomputable section

/-- A374041: a(n) = 1 if A276085(n) and A328768(n) are both multiples of 3, otherwise 0, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A374041.P11682123411284146130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374041 (n : ℕ) : ℤ :=
  A374041.P11682123411284146130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374061.P16980433022031769018

`floor(A035185(n+1)/2)`
-/

namespace A374061.P16980433022031769018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035185 (n + 1) : ℚ) / 2⌋

end

end A374061.P16980433022031769018

noncomputable section

/-- A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

Offset 1, canonical program `A374061.P16980433022031769018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061 (n : ℕ) : ℤ :=
  A374061.P16980433022031769018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374109.P10190102552975969900

`∪[A373587(n+1), A016825(n)]`
-/

namespace A374109.P10190102552975969900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374109.P10190102552975969900

noncomputable section

/-- A374109: Numbers k such that A113177(k) and A328845(k) are not both even, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

Offset 1, canonical program `A374109.P10190102552975969900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374109 (n : ℕ) : ℤ :=
  (A374109.P10190102552975969900.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374114.P4158927788412466770

`filter[A374108(n+1), A035263(#)]`
-/

namespace A374114.P4158927788412466770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A374114.P4158927788412466770

noncomputable section

/-- A374114: Numbers k such that A113177(k) and A276085(k) are both even, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374114.P4158927788412466770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A374114 (n : ℕ) : ℤ :=
  A374114.P4158927788412466770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A374114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374115.P14378622944131692428

`∪[A036554(n+1), A373587(n+1)]`
-/

namespace A374115.P14378622944131692428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374115.P14378622944131692428

noncomputable section

/-- A374115: Numbers k such that A113177(k) and A276085(k) are not both even, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374115.P14378622944131692428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374115 (n : ℕ) : ℤ :=
  (A374115.P14378622944131692428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374119.P18024338057745193586

`A372573(n+1)*A374051(n+1)`
-/

namespace A374119.P18024338057745193586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A374051 (n + 1)

end

end A374119.P18024338057745193586

noncomputable section

/-- A374119: a(n) = 1 if A113177(n) and A276085(n) are both multiples of 3, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374119.P18024338057745193586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119 (n : ℕ) : ℤ :=
  A374119.P18024338057745193586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374151.P5800413158960378192

`A132090(2^n)`
-/

namespace A374151.P5800413158960378192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (2 ^ n)

end

end A374151.P5800413158960378192

noncomputable section

/-- A374151: The number of prime-indexed primes below 2^n.

Offset 0, canonical program `A374151.P5800413158960378192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151 (n : ℕ) : ℤ :=
  A374151.P5800413158960378192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374276.P15801528438707414755

`A374093(n)+A214284(n)`
-/

namespace A374276.P15801528438707414755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 n + A214284 n

end

end A374276.P15801528438707414755

noncomputable section

/-- A374276: Number of representations of n by the quadratic form x^2 + 3*x*y + y^2 with 0 <= x <= y.

Offset 0, canonical program `A374276.P15801528438707414755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276 (n : ℕ) : ℤ :=
  A374276.P15801528438707414755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375272.P13151626788742865521

`log2(A331109(n+1))`
-/

namespace A375272.P13151626788742865521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331109 (n + 1) : ℝ)

end

end A375272.P13151626788742865521

noncomputable section

/-- A375272: The number of factors of n of the form p^Fibonacci(k), where p is a prime and k >= 2, when the factorization is uniquely done using the dual Zeckendorf representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A375272.P13151626788742865521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375272.P13151626788742865521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375932.P15622445158983307868

`(n+1)/A375931(n+1)`
-/

namespace A375932.P15622445158983307868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A375931 (n + 1) : ℚ)

end

end A375932.P15622445158983307868

noncomputable section

/-- A375932: The largest unitary k-free divisor of n where k = A051903(n) is the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A375932.P15622445158983307868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375932.P15622445158983307868.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376164.P7708879350905486662

`eq[1, A081221(n+1)]+1`
-/

namespace A376164.P7708879350905486662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376164.P7708879350905486662

noncomputable section

/-- A376164: Maximum of the n-th maximal run of nonsquarefree numbers (increasing by 1 at a time).

Offset 1, canonical program `A376164.P7708879350905486662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376164 (n : ℕ) : ℤ :=
  (A376164.P7708879350905486662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376366.P16346461924270472844

`A368779(n+1)-A376365(n+1)`
-/

namespace A376366.P16346461924270472844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368779 (n + 1) - A376365 (n + 1)

end

end A376366.P16346461924270472844

noncomputable section

/-- A376366: The number of non-unitary prime divisors of the cubefree numbers.

Offset 1, canonical program `A376366.P16346461924270472844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368779, A376365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376366 (n : ℕ) : ℤ :=
  A376366.P16346461924270472844.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368779, A376365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376599.P86518609693394274

`Δ[A375735(n+1)]`
-/

namespace A376599.P86518609693394274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P86518609693394274

noncomputable section

/-- A376599: Second differences of consecutive non-prime-powers inclusive (A024619). First differences of A375735.

Offset 1, canonical program `A376599.P86518609693394274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599 (n : ℕ) : ℤ :=
  A376599.P86518609693394274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376651.P6843983757789881629

`eq[2, A053542(n+1)]+1`
-/

namespace A376651.P6843983757789881629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376651.P6843983757789881629

noncomputable section

/-- A376651: Points of upward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376651.P6843983757789881629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651 (n : ℕ) : ℤ :=
  (A376651.P6843983757789881629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376761.P8424020303563534854

`A035250(A002808(n+1))`
-/

namespace A376761.P8424020303563534854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A002808 (n + 1)).toNat

end

end A376761.P8424020303563534854

noncomputable section

/-- A376761: Number of primes between the n-th composite number c(n) and 2*c(n).

Offset 1, canonical program `A376761.P8424020303563534854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376761 (n : ℕ) : ℤ :=
  A376761.P8424020303563534854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377421.P16177160434784500960

`filter[A204232(n+1), A178226(#)]`
-/

namespace A377421.P16177160434784500960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A377421.P16177160434784500960

noncomputable section

/-- A377421: Numbers whose binary reversal is prime and unequal to the original number.

Offset 1, canonical program `A377421.P16177160434784500960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421 (n : ℕ) : ℤ :=
  A377421.P16177160434784500960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378087.P5730754973821830144

`Δ[A081221(n+1)]+1`
-/

namespace A378087.P5730754973821830144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A378087.P5730754973821830144

noncomputable section

/-- A378087: First-differences of A067535 (least positive integer >= n that is squarefree).

Offset 1, canonical program `A378087.P5730754973821830144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378087 (n : ℕ) : ℤ :=
  A378087.P5730754973821830144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378217.P591878857379882394

`∑{d}[n+1, A378211(#)]`
-/

namespace A378217.P591878857379882394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378211 d

end

end A378217.P591878857379882394

noncomputable section

/-- A378217: Dirichlet inverse of A330575.

Offset 1, canonical program `A378217.P591878857379882394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378217 (n : ℕ) : ℤ :=
  A378217.P591878857379882394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378443.P3282744420953376765

`∑{d}[n+1, A372573(#)]`
-/

namespace A378443.P3282744420953376765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372573 d

end

end A378443.P3282744420953376765

noncomputable section

/-- A378443: Inverse Möbius transform of A372573.

Offset 1, canonical program `A378443.P3282744420953376765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378443 (n : ℕ) : ℤ :=
  A378443.P3282744420953376765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379099.P6794364004104742208

`A000108(n)*A006134(n)`
-/

namespace A379099.P6794364004104742208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006134 n

end

end A379099.P6794364004104742208

noncomputable section

/-- A379099: a(n) = Sum_{k=0..n} binomial(2*k, k)*binomial(2*n, n)/(n + 1). Row sums of A379100.

Offset 0, canonical program `A379099.P6794364004104742208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099 (n : ℕ) : ℤ :=
  A379099.P6794364004104742208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379219.P16078624363697017036

`∑{d}[n+1, A379109(#)]`
-/

namespace A379219.P16078624363697017036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A379109 d

end

end A379219.P16078624363697017036

noncomputable section

/-- A379219: Dirichlet inverse of A379218.

Offset 1, canonical program `A379219.P16078624363697017036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379219 (n : ℕ) : ℤ :=
  A379219.P16078624363697017036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379226.P6425558838148186179

`eq[1, A379227(n+1)]+1`
-/

namespace A379226.P6425558838148186179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379226.P6425558838148186179

noncomputable section

/-- A379226: Numbers k for which A113177(k) is a multiple of 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379226.P6425558838148186179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226 (n : ℕ) : ℤ :=
  (A379226.P6425558838148186179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380151.P6636326723691283784

`A035487(n+1)-A380804(n+1)`
-/

namespace A380151.P6636326723691283784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) - A380804 (n + 1)

end

end A380151.P6636326723691283784

noncomputable section

/-- A380151: Classification sequence for the Stolarsky array A035506.

Offset 1, canonical program `A380151.P6636326723691283784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151 (n : ℕ) : ℤ :=
  A380151.P6636326723691283784.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380372.P10366550130277599333

`char[A082851(n+1)-1]`
-/

namespace A380372.P10366550130277599333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082851 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380372.P10366550130277599333

noncomputable section

/-- A380372: Characteristic function of A082851.

Offset 1, canonical program `A380372.P10366550130277599333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372 (n : ℕ) : ℤ :=
  (A380372.P10366550130277599333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380443.P17503996144246579122

`A004525(A378299(n+1))`
-/

namespace A380443.P17503996144246579122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A378299 (n + 1)).toNat

end

end A380443.P17503996144246579122

noncomputable section

/-- A380443: a(n) = numerator(b(n)), where b(n) = b(n/2)/2 for n even and 1 - b((n-1)/2)/2 for n odd with b(1) = 1.

Offset 1, canonical program `A380443.P17503996144246579122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443 (n : ℕ) : ℤ :=
  A380443.P17503996144246579122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380910.P6919724403864687655

`A004730(abs(1-n))`
-/

namespace A380910.P6919724403864687655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |1 - (n : ℤ)|.toNat

end

end A380910.P6919724403864687655

noncomputable section

/-- A380910: a(n) = denominator(n!! / (n - 1)!!).

Offset 0, canonical program `A380910.P6919724403864687655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910 (n : ℕ) : ℤ :=
  A380910.P6919724403864687655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380950.P16297941268626771220

`A004730(A289207(n))*A380909(n)`
-/

namespace A380950.P16297941268626771220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (A289207 n).toNat * A380909 n

end

end A380950.P16297941268626771220

noncomputable section

/-- A380950: a(n) = denominator(r(n)) where r(n) = (n/2)*(Pi/2)^cos(Pi*(n-1))*((n/2-1/2)!/(n/2)!)^2.

Offset 0, canonical program `A380950.P16297941268626771220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950 (n : ℕ) : ℤ :=
  A380950.P16297941268626771220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381852.P9783243754932668671

`A053644(2*n+1)-A049773(A049773(2*n+1))`
-/

namespace A381852.P9783243754932668671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) - A049773 (A049773 (2 * n + 1)).toNat

end

end A381852.P9783243754932668671

noncomputable section

/-- A381852: In the binary expansion of n (without leading zeros): complement the bits strictly to the right of the leftmost zero digit, if any.

Offset 0, canonical program `A381852.P9783243754932668671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852 (n : ℕ) : ℤ :=
  A381852.P9783243754932668671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383423.P11431245251035309516

`∩[A022342(n+1), A383427(n+1)]`
-/

namespace A383423.P11431245251035309516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383423.P11431245251035309516

noncomputable section

/-- A383423: Indices k such that A003849(k) = 0 and A383422(k) = 0.

Offset 1, canonical program `A383423.P11431245251035309516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423 (n : ℕ) : ℤ :=
  (A383423.P11431245251035309516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383424.P17133997064317184709

`∩[A003622(n+1), A383427(n+1)]`
-/

namespace A383424.P17133997064317184709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383424.P17133997064317184709

noncomputable section

/-- A383424: Indices k such that A003849(k) = 1 and A383422(k) = 1.

Offset 1, canonical program `A383424.P17133997064317184709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424 (n : ℕ) : ℤ :=
  (A383424.P17133997064317184709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383793.P8012503440223215475

`A038502(n+1)*A256688(n+1)`
-/

namespace A383793.P8012503440223215475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) * A256688 (n + 1)

end

end A383793.P8012503440223215475

noncomputable section

/-- A383793: Numerators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

Offset 1, canonical program `A383793.P8012503440223215475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793 (n : ℕ) : ℤ :=
  A383793.P8012503440223215475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385122.P7971090258386335497

`A062821(n+1)-A163109(n+1)`
-/

namespace A385122.P7971090258386335497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A163109 (n + 1)

end

end A385122.P7971090258386335497

noncomputable section

/-- A385122: a(n) = d(phi(n)) - phi(d(n)) where d(n) = A000005(n) is the number of divisors and phi(n) = A000010(n) is the Euler totient function.

Offset 1, canonical program `A385122.P7971090258386335497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A163109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385122 (n : ℕ) : ℤ :=
  A385122.P7971090258386335497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A163109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385350.P6185656812643599907

`filter[A007422(n+1), A035263(#)]`
-/

namespace A385350.P6185656812643599907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A385350.P6185656812643599907

noncomputable section

/-- A385350: Numbers j such that the product of odd proper divisors of j is j.

Offset 1, canonical program `A385350.P6185656812643599907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350 (n : ℕ) : ℤ :=
  A385350.P6185656812643599907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388060.P10420952751908136420

`A084771(n)+2*A059231(n)*2*n`
-/

namespace A388060.P10420952751908136420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + 2 * A059231 n * (2 * n : ℤ)

end

end A388060.P10420952751908136420

noncomputable section

/-- A388060: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+1,k).

Offset 0, canonical program `A388060.P10420952751908136420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A388060 (n : ℕ) : ℤ :=
  A388060.P10420952751908136420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A388060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388427.P2071951571592344279

`filter[A303554(n+1), A066247(#)]`
-/

namespace A388427.P2071951571592344279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A388427.P2071951571592344279

noncomputable section

/-- A388427: Composite numbers that are squarefree or prime powers.

Offset 1, canonical program `A388427.P2071951571592344279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427 (n : ℕ) : ℤ :=
  A388427.P2071951571592344279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389099.P6075006044423678117

`A002262(n)/A389101(n)`
-/

namespace A389099.P6075006044423678117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) / (A389101 n : ℚ)

end

end A389099.P6075006044423678117

noncomputable section

/-- A389099: Array read by ascending antidiagonals: A(n, k) = k / gcd(n^k, k).

Offset 0, canonical program `A389099.P6075006044423678117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389099.P6075006044423678117.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389115.P8667954685780618499

`A104629(n)-A114495(n+1)`
-/

namespace A389115.P8667954685780618499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n - A114495 (n + 1)

end

end A389115.P8667954685780618499

noncomputable section

/-- A389115: Expansion of g^3/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A389115.P8667954685780618499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A389115 (n : ℕ) : ℤ :=
  A389115.P8667954685780618499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A389115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389838.P12199354101649347898

`∪[A002808(n+1), A053726(n+1)]`
-/

namespace A389838.P12199354101649347898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389838.P12199354101649347898

noncomputable section

/-- A389838: Numbers of the form j*k or j*k + (j-1)*(k-1) with j, k > 1.

Offset 1, canonical program `A389838.P12199354101649347898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838 (n : ℕ) : ℤ :=
  (A389838.P12199354101649347898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390099.P13380091930058253574

`A111333(A066940(n+2))`
-/

namespace A390099.P13380091930058253574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A066940 (n + 2)).toNat

end

end A390099.P13380091930058253574

noncomputable section

/-- A390099: Record denominators of (p2+1)/(p1+1), where p1 < p2 are consecutive primes.

Offset 1, canonical program `A390099.P13380091930058253574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099 (n : ℕ) : ℤ :=
  A390099.P13380091930058253574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390788.P17759256906105032846

`lt[A210882(A210882(2*n+1)), A210882(2*n+1)]`
-/

namespace A390788.P17759256906105032846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A210882 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390788.P17759256906105032846

noncomputable section

/-- A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390788.P17759256906105032846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788 (n : ℕ) : ℤ :=
  (A390788.P17759256906105032846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390789.P3572526343516217248

`A072568(n+1)/2`
-/

namespace A390789.P3572526343516217248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072568 (n + 1) : ℚ) / 2

end

end A390789.P3572526343516217248

noncomputable section

/-- A390789: Numbers k such that 2*k - (greatest prime < 2*k) = (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390789.P3572526343516217248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390789.P3572526343516217248.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390881.P5264832364345799499

`gcd(A000203(n+1), A018804(n+1))`
-/

namespace A390881.P5264832364345799499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A018804 (n + 1))

end

end A390881.P5264832364345799499

noncomputable section

/-- A390881: a(n) = gcd(A018804(n), A000203(n)).

Offset 1, canonical program `A390881.P5264832364345799499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390881 (n : ℕ) : ℤ :=
  (A390881.P5264832364345799499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391658.P1593916310506347255

`A233671(n+1)-A046868(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391658.P1593916310506347255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - A046868 (n + 1)

end

end A391658.P1593916310506347255

noncomputable section

/-- A391658: a(n) = A233671(n) - A046868(n).

Offset 1, canonical program `A391658.P1593916310506347255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658 (n : ℕ) : ℤ :=
  A391658.P1593916310506347255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392013.P12731442129654960335

`∏{e}[A138302(n+1), A124754(#)]`
-/

namespace A392013.P12731442129654960335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A124754 (Nat.factorization (f1 n).natAbs p)

end

end A392013.P12731442129654960335

noncomputable section

/-- A392013: The number of exponential divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392013.P12731442129654960335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392013 (n : ℕ) : ℤ :=
  A392013.P12731442129654960335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392632.P13925357405564602898

`eq[1, A392630(n+1)]+1`
-/

namespace A392632.P13925357405564602898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392632.P13925357405564602898

noncomputable section

/-- A392632: Numbers k whose squarefree kernel is the only exponential divisor of k that is a number whose number of divisors is a power of 2.

Offset 1, canonical program `A392632.P13925357405564602898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632 (n : ℕ) : ℤ :=
  (A392632.P13925357405564602898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393212.P8608727344683158324

`or(A005843(A007814(3*n+5)), A073575(3*n+5))`
-/

namespace A393212.P8608727344683158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A007814 (3 * n + 5)).toNat) (A073575 (3 * n + 5))

end

end A393212.P8608727344683158324

noncomputable section

/-- A393212: Halting time for Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393212.P8608727344683158324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212 (n : ℕ) : ℤ :=
  A393212.P8608727344683158324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396514.P190034944072554770

`A018804(n+1)-A000203(n+1)`
-/

namespace A396514.P190034944072554770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A000203 (n + 1)

end

end A396514.P190034944072554770

noncomputable section

/-- A396514: a(n) = Sum_{k=1..n, k does not divide n} gcd(k,n).

Offset 1, canonical program `A396514.P190034944072554770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396514 (n : ℕ) : ℤ :=
  A396514.P190034944072554770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397991.P6089644370162683677

`A025581(n)+A010766(n+1)`
-/

namespace A397991.P6089644370162683677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A010766 (n + 1)

end

end A397991.P6089644370162683677

noncomputable section

/-- A397991: Array read by ascending antidiagonals: A(n,k) = floor(1+k*n/(k-1)) with k >= 2.

Offset 0, canonical program `A397991.P6089644370162683677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991 (n : ℕ) : ℤ :=
  A397991.P6089644370162683677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266174.P16187119275492808258

`A266848(n)*A267704(n)`
-/

namespace A266174.P16187119275492808258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 n * A267704 n

end

end A266174.P16187119275492808258

noncomputable section

/-- A266174: Triangle read by rows giving successive states of cellular automaton generated by "Rule 5" initiated with a single ON (black) cell.

Offset 0, canonical program `A266174.P16187119275492808258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266174 (n : ℕ) : ℤ :=
  A266174.P16187119275492808258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266514.P224851295556962655

`A266848(A020703(n+1)-1)`
-/

namespace A266514.P224851295556962655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (A020703 (n + 1) - 1).toNat

end

end A266514.P224851295556962655

noncomputable section

/-- A266514: Triangle read by rows giving successive states of cellular automaton generated by "Rule 29" initiated with a single ON (black) cell.

Offset 0, canonical program `A266514.P224851295556962655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266514 (n : ℕ) : ℤ :=
  A266514.P224851295556962655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266605.P12090074785028019429

`A266848(1-A053188(n)+n)`
-/

namespace A266605.P12090074785028019429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (1 - A053188 n + (n : ℤ)).toNat

end

end A266605.P12090074785028019429

noncomputable section

/-- A266605: Triangle read by rows giving successive states of cellular automaton generated by "Rule 39" initiated with a single ON (black) cell.

Offset 0, canonical program `A266605.P12090074785028019429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266605 (n : ℕ) : ℤ :=
  A266605.P12090074785028019429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267137.P18034840649141291006

`lt[0, A005882(n)]`
-/

namespace A267137.P18034840649141291006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267137.P18034840649141291006

noncomputable section

/-- A267137: Numbers of the form x^2 + x + x*y + y + y^2 where x and y are integers.

Offset 1, canonical program `A267137.P18034840649141291006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4135 terms. -/
def A267137 (n : ℕ) : ℤ :=
  (A267137.P18034840649141291006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4135 terms. -/
def A267137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267525.P14697647178311935944

`A267676(A020703(n+1)-1)`
-/

namespace A267525.P14697647178311935944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267676 (A020703 (n + 1) - 1).toNat

end

end A267525.P14697647178311935944

noncomputable section

/-- A267525: Triangle read by rows giving successive states of cellular automaton generated by "Rule 141" initiated with a single ON (black) cell.

Offset 0, canonical program `A267525.P14697647178311935944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267525 (n : ℕ) : ℤ :=
  A267525.P14697647178311935944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272006.P12335751938190877041

`A003617(n+1)-A062397(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272006.P12335751938190877041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) - A062397 n

end

end A272006.P12335751938190877041

noncomputable section

/-- A272006: a(n) = A003617(n) - A062397(n-1).

Offset 1, canonical program `A272006.P12335751938190877041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272006 (n : ℕ) : ℤ :=
  A272006.P12335751938190877041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272334.P18035456064944277151

`gcd(A038388(n+1), A290683(n))`
-/

namespace A272334.P18035456064944277151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038388 (n + 1)) (A290683 n)

end

end A272334.P18035456064944277151

noncomputable section

/-- A272334: Square root of the largest square dividing 2^n - 1.

Offset 1, canonical program `A272334.P18035456064944277151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A272334 (n : ℕ) : ℤ :=
  (A272334.P18035456064944277151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A272334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272533.P7437355540614725294

`lt[1, A333748(n+1)]+1`
-/

namespace A272533.P7437355540614725294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272533.P7437355540614725294

noncomputable section

/-- A272533: Numbers n such that A072499(n)!=A072504(n).

Offset 1, canonical program `A272533.P7437355540614725294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. -/
def A272533 (n : ℕ) : ℤ :=
  (A272533.P7437355540614725294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. -/
def A272533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273663.P4019550503399085777

`∑[char[A273670(n+1)-1]]`
-/

namespace A273663.P4019550503399085777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273663.P4019550503399085777

noncomputable section

/-- A273663: Least monotonic left inverse for A273670: a(1) = 0; for n > 1, a(n) = A257680(A225901(n)) + a(n-1).

Offset 1, canonical program `A273663.P4019550503399085777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273663 (n : ℕ) : ℤ :=
  (A273663.P4019550503399085777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274923.P17560489070939647201

`-A268038(n+1)`
-/

namespace A274923.P17560489070939647201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A268038 (n + 1)

end

end A274923.P17560489070939647201

noncomputable section

/-- A274923: List of y-coordinates of point moving in counterclockwise square spiral.

Offset 1, canonical program `A274923.P17560489070939647201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274923 (n : ℕ) : ℤ :=
  A274923.P17560489070939647201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276050.P4598829443769848170

`filter[A274849(n+1), A005171(#)]`
-/

namespace A276050.P4598829443769848170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A276050.P4598829443769848170

noncomputable section

/-- A276050: Isolated deficient numbers that are composite.

Offset 1, canonical program `A276050.P4598829443769848170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A276050 (n : ℕ) : ℤ :=
  A276050.P4598829443769848170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A276050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278138.P16735703307475398826

`∩[A023208(n+1)-2, A023208(n+1)]`
-/

namespace A278138.P16735703307475398826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278138.P16735703307475398826

noncomputable section

/-- A278138: Primes p such that p+2, 3*p+2 and 3*p+8 are also primes.

Offset 1, canonical program `A278138.P16735703307475398826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A278138 (n : ℕ) : ℤ :=
  (A278138.P16735703307475398826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A278138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281316.P5684123240907500479

`(A057427(n)+1)*A292600(A143329(n+1))+1`
-/

namespace A281316.P5684123240907500479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A292600 (A143329 (n + 1)).toNat + 1

end

end A281316.P5684123240907500479

noncomputable section

/-- A281316: Prime number p such that the decimal representation of its binary reflected Gray code is also a prime.

Offset 1, canonical program `A281316.P5684123240907500479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A281316 (n : ℕ) : ℤ :=
  A281316.P5684123240907500479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A281316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281856.P5741386727194129312

`A023022(A180634(n+3))/2`
-/

namespace A281856.P5741386727194129312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023022 (A180634 (n + 3)).toNat : ℚ) / 2

end

end A281856.P5741386727194129312

noncomputable section

/-- A281856: One fourth of the order of the abelian non-cyclic groups (Z/A033949(n)*Z)^x.

Offset 1, canonical program `A281856.P5741386727194129312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8032 terms. -/
def A281856 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A281856.P5741386727194129312.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8032 terms. -/
def A281856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283671.P12303064168289075202

`sqrt(A283670(n+1))`
-/

namespace A283671.P12303064168289075202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283670 (n + 1) : ℝ)

end

end A283671.P12303064168289075202

noncomputable section

/-- A283671: Square root of the single square referenced in A190641.

Offset 1, canonical program `A283671.P12303064168289075202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A283671.P12303064168289075202.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284152.P5316867727396450920

`A284280(n+1)+A284281(n+1)`
-/

namespace A284152.P5316867727396450920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (n + 1) + A284281 (n + 1)

end

end A284152.P5316867727396450920

noncomputable section

/-- A284152: a(n) = Sum_{d|n, d == 2 or 3 mod 5} d.

Offset 1, canonical program `A284152.P5316867727396450920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284152 (n : ℕ) : ℤ :=
  A284152.P5316867727396450920.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284565.P9570140672652545483

`A000360(2*n)`
-/

namespace A284565.P9570140672652545483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n)

end

end A284565.P9570140672652545483

noncomputable section

/-- A284565: Bisection of A000360.

Offset 0, canonical program `A284565.P9570140672652545483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284565 (n : ℕ) : ℤ :=
  A284565.P9570140672652545483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284792.P14898968063971139874

`char[A284934(n+1)-1]`
-/

namespace A284792.P14898968063971139874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284792.P14898968063971139874

noncomputable section

/-- A284792: {1001->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A284792.P14898968063971139874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284792 (n : ℕ) : ℤ :=
  (A284792.P14898968063971139874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284793.P3906525423452783720

`A285305(n+1)-A284775(n+1)`
-/

namespace A284793.P3906525423452783720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1) - A284775 (n + 1)

end

end A284793.P3906525423452783720

noncomputable section

/-- A284793: Difference sequence of A284775.

Offset 1, canonical program `A284793.P3906525423452783720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284793 (n : ℕ) : ℤ :=
  A284793.P3906525423452783720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285096.P16169422435609313154

`∩[A061385(n+1), A069709(n+1)]`
-/

namespace A285096.P16169422435609313154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P16169422435609313154

noncomputable section

/-- A285096: Primes with integer arithmetic mean of digits = 2 in base 10.

Offset 1, canonical program `A285096.P16169422435609313154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096 (n : ℕ) : ℤ :=
  (A285096.P16169422435609313154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285225.P10692360427278529095

`p?[A061387(n+1)]`
-/

namespace A285225.P10692360427278529095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285225.P10692360427278529095

noncomputable section

/-- A285225: Primes with integer arithmetic mean of digits = 4 in base 10.

Offset 1, canonical program `A285225.P10692360427278529095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225 (n : ℕ) : ℤ :=
  A285225.P10692360427278529095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285226.P16444782336951835408

`p?[A061388(n+1)]`
-/

namespace A285226.P16444782336951835408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285226.P16444782336951835408

noncomputable section

/-- A285226: Primes with integer arithmetic mean of digits = 5 in base 10.

Offset 1, canonical program `A285226.P16444782336951835408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226 (n : ℕ) : ℤ :=
  A285226.P16444782336951835408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285227.P10686455318228212917

`∩[A061424(n+1), A069709(n+1)]`
-/

namespace A285227.P10686455318228212917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285227.P10686455318228212917

noncomputable section

/-- A285227: Primes with integer arithmetic mean of digits = 7 in base 10.

Offset 1, canonical program `A285227.P10686455318228212917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A285227 (n : ℕ) : ℤ :=
  (A285227.P10686455318228212917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A285227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285389.P15180177278250206425

`A000079(A285406(n+1))`
-/

namespace A285389.P15180177278250206425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A285406 (n + 1)).toNat

end

end A285389.P15180177278250206425

noncomputable section

/-- A285389: Denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k))/n.

Offset 1, canonical program `A285389.P15180177278250206425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285389 (n : ℕ) : ℤ :=
  A285389.P15180177278250206425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286608.P6471949318429911751

`lt[A087207(n+1), n+1]+1`
-/

namespace A286608.P6471949318429911751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286608.P6471949318429911751

noncomputable section

/-- A286608: Numbers k for which the binary representation of the primes that divide k (A087207) is less than k.

Offset 1, canonical program `A286608.P6471949318429911751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A286608 (n : ℕ) : ℤ :=
  (A286608.P6471949318429911751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A286608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286683.P11327338289831238682

`eq[A007814(n+1), A318874(n+1)]+1`
-/

namespace A286683.P11327338289831238682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286683.P11327338289831238682

noncomputable section

/-- A286683: Even numbers k such that the number of odd divisors of k is equal to the 2-adic valuation of k.

Offset 1, canonical program `A286683.P11327338289831238682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A286683 (n : ℕ) : ℤ :=
  (A286683.P11327338289831238682.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A286683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286693.P502539275683704723

`∑[A286991(n+1)%3]+n`
-/

namespace A286693.P502539275683704723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286991 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A286693.P502539275683704723

noncomputable section

/-- A286693: Positions of 1 in A286691; complement of A286692.

Offset 1, canonical program `A286693.P502539275683704723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286693 (n : ℕ) : ℤ :=
  A286693.P502539275683704723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287075.P10517102401792539073

`A287073(A287074(n+1)-n)-2`
-/

namespace A287075.P10517102401792539073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (A287074 (n + 1) - (n : ℤ)).toNat - 2

end

end A287075.P10517102401792539073

noncomputable section

/-- A287075: Positions of 2 in A287072.

Offset 1, canonical program `A287075.P10517102401792539073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287075 (n : ℕ) : ℤ :=
  A287075.P10517102401792539073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287169.P17828971576127066043

`xor(A014963(4*n+2), A107334(2*n))`
-/

namespace A287169.P17828971576127066043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (4 * n + 2)) (A107334 (2 * n))

end

end A287169.P17828971576127066043

noncomputable section

/-- A287169: Number of non-attacking king positions on a cylindrical 3 X 2n chessboard.

Offset 0, canonical program `A287169.P17828971576127066043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A287169 (n : ℕ) : ℤ :=
  A287169.P17828971576127066043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A287169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287170.P3735047358035407124

`A069010(A087207(n+1))`
-/

namespace A287170.P3735047358035407124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A087207 (n + 1)).toNat

end

end A287170.P3735047358035407124

noncomputable section

/-- A287170: a(n) = number of runs of consecutive prime numbers among the prime divisors of n.

Offset 1, canonical program `A287170.P3735047358035407124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170 (n : ℕ) : ℤ :=
  A287170.P3735047358035407124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288566.P93477700096519531

`∑[A087207(n+1)]`
-/

namespace A288566.P93477700096519531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P93477700096519531

noncomputable section

/-- A288566: Partial sums of A087207.

Offset 1, canonical program `A288566.P93477700096519531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A288566 (n : ℕ) : ℤ :=
  A288566.P93477700096519531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A288566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289500.P6623169090579863016

`A038801(n+1)-A100637(A016789(n))`
-/

namespace A289500.P6623169090579863016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (n + 1) - A100637 (A016789 n).toNat

end

end A289500.P6623169090579863016

noncomputable section

/-- A289500: Number of primes in the interval [9n, 10n].

Offset 1, canonical program `A289500.P6623169090579863016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289500 (n : ℕ) : ℤ :=
  A289500.P6623169090579863016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290641.P13824394655971321259

`∏{d}[n+1, A008578(A014963(#))]`
-/

namespace A290641.P13824394655971321259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008578 (A014963 d).toNat

end

end A290641.P13824394655971321259

noncomputable section

/-- A290641: Multiplicative with a(p^e) = prime(p-1)^e.

Offset 1, canonical program `A290641.P13824394655971321259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290641 (n : ℕ) : ℤ :=
  A290641.P13824394655971321259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291292.P8579242565345000571

`3*a(n-1)-A115143(n)` with `a(0)=1, a(1)=1`
-/

namespace A291292.P8579242565345000571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) - A115143 n

end

end A291292.P8579242565345000571

noncomputable section

/-- A291292: Necklace Catalan numbers.

Offset 0, canonical program `A291292.P8579242565345000571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A291292 (n : ℕ) : ℤ :=
  A291292.P8579242565345000571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A291292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294235.P12226892777925913484

`∑[(A007431(n)+n)%2]`
-/

namespace A294235.P12226892777925913484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007431 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P12226892777925913484

noncomputable section

/-- A294235: Number of partitions of n into two parts such that the larger part is nonsquarefree.

Offset 1, canonical program `A294235.P12226892777925913484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294235 (n : ℕ) : ℤ :=
  A294235.P12226892777925913484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295657.P13118520405075574834

`∑{d}[A003557(A003557(n+1)), A346612(#)]`
-/

namespace A295657.P13118520405075574834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346612 d

end

end A295657.P13118520405075574834

noncomputable section

/-- A295657: Multiplicative with a(p^e) = p^floor((e-1)/2).

Offset 1, canonical program `A295657.P13118520405075574834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295657 (n : ℕ) : ℤ :=
  A295657.P13118520405075574834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295661.P311646455530732485

`lt[1, A056191(n+1)]+1`
-/

namespace A295661.P311646455530732485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A295661.P311646455530732485

noncomputable section

/-- A295661: Numbers with at least one odd exponent larger than one in their prime factorization.

Offset 1, canonical program `A295661.P311646455530732485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661 (n : ℕ) : ℤ :=
  (A295661.P311646455530732485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295666.P10284647198696941857

`∏{d}[A058035(n+1), A014963(A003557(#))]`
-/

namespace A295666.P10284647198696941857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 (A003557 d).toNat

end

end A295666.P10284647198696941857

noncomputable section

/-- A295666: a(n) = Product_{d|n, gcd(d,n/d) is prime} gcd(d,n/d).

Offset 1, canonical program `A295666.P10284647198696941857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295666 (n : ℕ) : ℤ :=
  A295666.P10284647198696941857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297404.P1105051912658612473

`A087207(∏{e}[n+1, A000040(#)])`
-/

namespace A297404.P1105051912658612473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A297404.P1105051912658612473

noncomputable section

/-- A297404: A binary representation of the positive exponents that appear in the prime factorization of a number, shown in decimal.

Offset 1, canonical program `A297404.P1105051912658612473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297404 (n : ℕ) : ℤ :=
  A297404.P1105051912658612473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298867.P15695722077931917837

`A020934(n+1)+1+n`
-/

namespace A298867.P15695722077931917837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020934 (n + 1) + 1 + (n : ℤ)

end

end A298867.P15695722077931917837

noncomputable section

/-- A298867: Positions of numbers 4*p when all primes p and products 4*p are arranged in increasing order.

Offset 1, canonical program `A298867.P15695722077931917837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298867 (n : ℕ) : ℤ :=
  A298867.P15695722077931917837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300951.P16227161527495429065

`lcm(a(n-2), A014963(floor(n/2)))` with `a(0)=1, a(1)=1`
-/

namespace A300951.P16227161527495429065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 2) : ℤ) (A014963 ⌊(n : ℚ) / 2⌋.toNat)

end

end A300951.P16227161527495429065

noncomputable section

/-- A300951: a(n) = Product_{j=1..floor(n/2)} p(j) where p(j) = j if j is prime else 1.

Offset 0, canonical program `A300951.P16227161527495429065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A300951 (n : ℕ) : ℤ :=
  (A300951.P16227161527495429065.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A300951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303449.P9379731540711879324

`A090633(Δ[n²])`
-/

namespace A303449.P9379731540711879324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090633 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A303449.P9379731540711879324

noncomputable section

/-- A303449: Denominator of (2*n+1)/(2^(2*n+1)-1).

Offset 0, canonical program `A303449.P9379731540711879324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A303449 (n : ℕ) : ℤ :=
  A303449.P9379731540711879324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A303449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304066.P18148162431885830221

`∑[A066328(n+1)]`
-/

namespace A304066.P18148162431885830221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P18148162431885830221

noncomputable section

/-- A304066: a(n) = Sum_{k=1..n} k*floor(n/prime(k)).

Offset 1, canonical program `A304066.P18148162431885830221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304066 (n : ℕ) : ℤ :=
  A304066.P18148162431885830221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304183.P16998250907067850540

`(A001615(n+1)-A304182(n+1))/2`
-/

namespace A304183.P16998250907067850540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A304182 (n + 1) : ℚ) / 2

end

end A304183.P16998250907067850540

noncomputable section

/-- A304183: Number of primitive inequivalent oblique sublattices of rectangular lattice of index n.

Offset 1, canonical program `A304183.P16998250907067850540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A304182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304183 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304183.P16998250907067850540.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A304182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306898.P8159862033566146639

`∑{d}[n+1, A174478(#)*A326938((n+1)/#)]`
-/

namespace A306898.P8159862033566146639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174478 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306898.P8159862033566146639

noncomputable section

/-- A306898: a(n) = Sum_{d|n} 2^d*phi(2*n/d).

Offset 1, canonical program `A306898.P8159862033566146639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A306898 (n : ℕ) : ℤ :=
  A306898.P8159862033566146639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A306898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307425.P15398168593737495323

`∑{d}[n+1, A073184(#)*A307445((n+1)/#)]`
-/

namespace A307425.P15398168593737495323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307425.P15398168593737495323

noncomputable section

/-- A307425: Dirichlet g.f.: zeta(s) / (zeta(2*s) * zeta(3*s)).

Offset 1, canonical program `A307425.P15398168593737495323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307425 (n : ℕ) : ℤ :=
  A307425.P15398168593737495323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308401.P1704796771430067553

`A005513(n+9)-A058187(n+3)`
-/

namespace A308401.P1704796771430067553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005513 (n + 9) - A058187 (n + 3)

end

end A308401.P1704796771430067553

noncomputable section

/-- A308401: Number of bracelets (turnover necklaces) of length n that have no reflection symmetry and consist of 6 white beads and n-6 black beads.

Offset 9, canonical program `A308401.P1704796771430067553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A308401 (n : ℕ) : ℤ :=
  A308401.P1704796771430067553.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A308401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310367.P12244695363259660047

`A014963(A001316(n))*A004525(A312927(n))`
-/

namespace A310367.P12244695363259660047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A004525 (A312927 n).toNat

end

end A310367.P12244695363259660047

noncomputable section

/-- A310367: Coordination sequence Gal.6.129.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310367.P12244695363259660047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A310367 (n : ℕ) : ℤ :=
  A310367.P12244695363259660047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A310367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310420.P17604742702045992643

`abs(A008592(n)-A315305(n))`
-/

namespace A310420.P17604742702045992643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315305 n|

end

end A310420.P17604742702045992643

noncomputable section

/-- A310420: Coordination sequence Gal.6.324.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310420.P17604742702045992643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310420 (n : ℕ) : ℤ :=
  A310420.P17604742702045992643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310455.P786279696323869961

`(A310496(n)+A310413(n))/2`
-/

namespace A310455.P786279696323869961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A310413 n : ℚ) / 2

end

end A310455.P786279696323869961

noncomputable section

/-- A310455: Coordination sequence Gal.6.348.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310455.P786279696323869961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A310455.P786279696323869961.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310521.P11719741427687549128

`abs(A008592(n)-A315185(n))`
-/

namespace A310521.P11719741427687549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315185 n|

end

end A310521.P11719741427687549128

noncomputable section

/-- A310521: Coordination sequence Gal.5.133.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310521.P11719741427687549128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A310521 (n : ℕ) : ℤ :=
  A310521.P11719741427687549128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A310521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310531.P139863264852785367

`A313293(n)+A004396(A002264(n+1))`
-/

namespace A310531.P139863264852785367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n + A004396 (A002264 (n + 1)).toNat

end

end A310531.P139863264852785367

noncomputable section

/-- A310531: Coordination sequence Gal.5.135.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310531.P139863264852785367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531 (n : ℕ) : ℤ :=
  A310531.P139863264852785367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311512.P15083007676544046786

`A004525(A004396(n))+A312184(n)-A004396(n)`
-/

namespace A311512.P15083007676544046786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312184 n - A004396 n)

end

end A311512.P15083007676544046786

noncomputable section

/-- A311512: Coordination sequence Gal.6.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311512.P15083007676544046786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A311512 (n : ℕ) : ℤ :=
  A311512.P15083007676544046786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A311512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311861.P8116900546318081513

`A047588(n+1)+A311687(n)-n`
-/

namespace A311861.P8116900546318081513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) + (A311687 n - (n : ℤ))

end

end A311861.P8116900546318081513

noncomputable section

/-- A311861: Coordination sequence Gal.6.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311861.P8116900546318081513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861 (n : ℕ) : ℤ :=
  A311861.P8116900546318081513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312101.P13095207374321224915

`A004525(A004396(n))+A312184(n)-A004525(n)`
-/

namespace A312101.P13095207374321224915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312184 n - A004525 n)

end

end A312101.P13095207374321224915

noncomputable section

/-- A312101: Coordination sequence Gal.6.150.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312101.P13095207374321224915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312101 (n : ℕ) : ℤ :=
  A312101.P13095207374321224915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312507.P15411761902841347457

`2*A313876(n)-A008458(n)`
-/

namespace A312507.P15411761902841347457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313876 n - A008458 n

end

end A312507.P15411761902841347457

noncomputable section

/-- A312507: Coordination sequence Gal.6.245.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312507.P15411761902841347457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A312507 (n : ℕ) : ℤ :=
  A312507.P15411761902841347457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A312507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312969.P1122136448779470542

`A004525(n)+A312926(n)-A004396(A004525(n))`
-/

namespace A312969.P1122136448779470542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312926 n - A004396 (A004525 n).toNat)

end

end A312969.P1122136448779470542

noncomputable section

/-- A312969: Coordination sequence Gal.6.254.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312969.P1122136448779470542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312969 (n : ℕ) : ℤ :=
  A312969.P1122136448779470542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313519.P11254400388031239526

`2*A313704(n)-A313834(n)`
-/

namespace A313519.P11254400388031239526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313704 n - A313834 n

end

end A313519.P11254400388031239526

noncomputable section

/-- A313519: Coordination sequence Gal.6.196.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313519.P11254400388031239526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313519 (n : ℕ) : ℤ :=
  A313519.P11254400388031239526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313543.P17775607979476667023

`A004396(A314038(n)+2*n)`
-/

namespace A313543.P17775607979476667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314038 n + (2 * n : ℤ)).toNat

end

end A313543.P17775607979476667023

noncomputable section

/-- A313543: Coordination sequence Gal.6.196.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313543.P17775607979476667023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543 (n : ℕ) : ℤ :=
  A313543.P17775607979476667023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313803.P13524405696789602585

`A314737(n)+n-A004396(A004525(n))`
-/

namespace A313803.P13524405696789602585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313803.P13524405696789602585

noncomputable section

/-- A313803: Coordination sequence Gal.6.210.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313803.P13524405696789602585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803 (n : ℕ) : ℤ :=
  A313803.P13524405696789602585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313825.P10683649782616596619

`2*A313722(n)-A313615(n)`
-/

namespace A313825.P10683649782616596619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313722 n - A313615 n

end

end A313825.P10683649782616596619

noncomputable section

/-- A313825: Coordination sequence Gal.6.322.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313825.P10683649782616596619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313825 (n : ℕ) : ℤ :=
  A313825.P10683649782616596619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314127.P7201920616213390850

`2*n+A004396(A310456(n))`
-/

namespace A314127.P7201920616213390850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310456 n).toNat

end

end A314127.P7201920616213390850

noncomputable section

/-- A314127: Coordination sequence Gal.6.326.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314127.P7201920616213390850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314127 (n : ℕ) : ℤ :=
  A314127.P7201920616213390850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314157.P13095074004396682400

`A310456(n)+A004525(A008458(n)-A310456(n))`
-/

namespace A314157.P13095074004396682400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n + A004525 (A008458 n - A310456 n).toNat

end

end A314157.P13095074004396682400

noncomputable section

/-- A314157: Coordination sequence Gal.6.623.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314157.P13095074004396682400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314157 (n : ℕ) : ℤ :=
  A314157.P13095074004396682400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314428.P9611413599869563837

`A315214(n)-A004396(A006369(n))`
-/

namespace A314428.P9611413599869563837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315214 n - A004396 (A006369 n).toNat

end

end A314428.P9611413599869563837

noncomputable section

/-- A314428: Coordination sequence Gal.6.58.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314428.P9611413599869563837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428 (n : ℕ) : ℤ :=
  A314428.P9611413599869563837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314742.P12640656443291314387

`A311332(n)+A004525(n)`
-/

namespace A314742.P12640656443291314387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311332 n + A004525 n

end

end A314742.P12640656443291314387

noncomputable section

/-- A314742: Coordination sequence Gal.6.262.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314742.P12640656443291314387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742 (n : ℕ) : ℤ :=
  A314742.P12640656443291314387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315186.P13057520070277243894

`2*A314684(n)-A008574(n)`
-/

namespace A315186.P13057520070277243894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314684 n - A008574 n

end

end A315186.P13057520070277243894

noncomputable section

/-- A315186: Coordination sequence Gal.6.263.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315186.P13057520070277243894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186 (n : ℕ) : ℤ :=
  A315186.P13057520070277243894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315758.P11537770092758335120

`abs(A008592(n)-A311332(n))`
-/

namespace A315758.P11537770092758335120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311332 n|

end

end A315758.P11537770092758335120

noncomputable section

/-- A315758: Coordination sequence Gal.6.210.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315758.P11537770092758335120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758 (n : ℕ) : ℤ :=
  A315758.P11537770092758335120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316561.P12406151038005718592

`record[∏{p}[A061387(n+2), #]]`
-/

namespace A316561.P12406151038005718592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316561.P12406151038005718592

noncomputable section

/-- A316561: Squarefree numbers whose arithmetic mean of digits is 4.

Offset 1, canonical program `A316561.P12406151038005718592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6779 terms. -/
def A316561 (n : ℕ) : ℤ :=
  (A316561.P12406151038005718592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6779 terms. -/
def A316561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318445.P14423617105751206309

`A211779(n+1)+A318447(n+1)`
-/

namespace A318445.P14423617105751206309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A318447 (n + 1)

end

end A318445.P14423617105751206309

noncomputable section

/-- A318445: a(n) = Sum_{d|n, d

Offset 1, canonical program `A318445.P14423617105751206309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211779, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318445 (n : ℕ) : ℤ :=
  A318445.P14423617105751206309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211779, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318509.P16676407723879251455

`∏{d}[n+1, A002487(A014963(#))]`
-/

namespace A318509.P16676407723879251455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A002487 (A014963 d).toNat

end

end A318509.P16676407723879251455

noncomputable section

/-- A318509: Completely multiplicative with a(p) = A002487(p).

Offset 1, canonical program `A318509.P16676407723879251455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318509 (n : ℕ) : ℤ :=
  A318509.P16676407723879251455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319210.P5693129370865964047

`A023022(n+3)*A055034(2*(n+1))`
-/

namespace A319210.P5693129370865964047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3) * A055034 (2 * (n + 1))

end

end A319210.P5693129370865964047

noncomputable section

/-- A319210: a(n) = phi(n^2 - 1)/2 where phi is A000010.

Offset 2, canonical program `A319210.P5693129370865964047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A319210 (n : ℕ) : ℤ :=
  A319210.P5693129370865964047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A319210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319690.P7951034641680093575

`∏{d}[n+1, A014963(#)%3]`
-/

namespace A319690.P7951034641680093575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.tmod (A014963 d) 3

end

end A319690.P7951034641680093575

noncomputable section

/-- A319690: Fully multiplicative with a(p^e) = (p mod 3)^e.

Offset 1, canonical program `A319690.P7951034641680093575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319690 (n : ℕ) : ℤ :=
  A319690.P7951034641680093575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320087.P4992698850007107004

`∑[A034741(n+1)]`
-/

namespace A320087.P4992698850007107004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320087.P4992698850007107004

noncomputable section

/-- A320087: Number of primitive (=aperiodic) ternary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320087.P4992698850007107004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A320087 (n : ℕ) : ℤ :=
  A320087.P4992698850007107004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A320087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320827.P3304668886705030181

`3*a(n-1)-A115143(n)-A115143(n)` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A320827.P3304668886705030181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  3 * a (n - 1) - A115143 n - A115143 n

end

end A320827.P3304668886705030181

noncomputable section

/-- A320827: G.f.: -sqrt(1 - 4*x)*(2*x - 1)/(3*x - 1).

Offset 0, canonical program `A320827.P3304668886705030181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A320827 (n : ℕ) : ℤ :=
  A320827.P3304668886705030181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A320827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322430.P13676474653024602128

`eq[0, A005882(n)]`
-/

namespace A322430.P13676474653024602128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P13676474653024602128

noncomputable section

/-- A322430: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^8 is zero.

Offset 1, canonical program `A322430.P13676474653024602128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430 (n : ℕ) : ℤ :=
  (A322430.P13676474653024602128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323153.P15147622585639362245

`char[eq[1, A243473(n+1)]]`
-/

namespace A323153.P15147622585639362245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323153.P15147622585639362245

noncomputable section

/-- A323153: a(n) = 1 if n is either a prime or a perfect number, 0 otherwise.

Offset 1, canonical program `A323153.P15147622585639362245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323153 (n : ℕ) : ℤ :=
  (A323153.P15147622585639362245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323154.P14116477510633869356

`A000007(A048146(n+1)%(n+1))`
-/

namespace A323154.P14116477510633869356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A048146 (n + 1)) (n + 1 : ℤ)).toNat

end

end A323154.P14116477510633869356

noncomputable section

/-- A323154: a(n) = 1 if n divides A048146(n) = (sigma(n)-usigma(n)), 0 otherwise.

Offset 1, canonical program `A323154.P14116477510633869356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154 (n : ℕ) : ℤ :=
  A323154.P14116477510633869356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323159.P5731114062272202659

`gcd(∏{p}[n+1, #+1]-(n+1)-A034460(n+1), ∏{p}[n+1, #+1])`
-/

namespace A323159.P5731114062272202659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - (n + 1 : ℤ) - A034460 (n + 1)) ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A323159.P5731114062272202659

noncomputable section

/-- A323159: Greatest common divisor of product (1+(p^e)) and product (1+p), where p ranges over prime factors of n, with e corresponding exponent; a(n) = gcd(A034448(n), A048250(n)).

Offset 1, canonical program `A323159.P5731114062272202659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323159 (n : ℕ) : ℤ :=
  (A323159.P5731114062272202659.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323163.P1312201353918271352

`gcd((n+1)/∏{p}[n+1, #], A034460(n+1))`
-/

namespace A323163.P1312201353918271352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A034460 (n + 1))

end

end A323163.P1312201353918271352

noncomputable section

/-- A323163: Greatest common divisor of product (1+(p^e)) and product p^(e-1), where p ranges over prime factors of n, with e corresponding exponent; a(n) = gcd(A034448(n), A003557(n)).

Offset 1, canonical program `A323163.P1312201353918271352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323163 (n : ℕ) : ℤ :=
  (A323163.P1312201353918271352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324391.P7291233321166429413

`∏{d}[n+1, A070939(A014963(#))]`
-/

namespace A324391.P7291233321166429413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A070939 (A014963 d).toNat

end

end A324391.P7291233321166429413

noncomputable section

/-- A324391: Fully multiplicative with a(p^e) = A070939(p)^e, where A070939(p) gives the length of the binary representation of p.

Offset 1, canonical program `A324391.P7291233321166429413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324391 (n : ℕ) : ℤ :=
  A324391.P7291233321166429413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325813.P443341904852923996

`gcd(2*n+2-∑{d}[n+1, #], A034460(n+1))`
-/

namespace A325813.P443341904852923996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))) (A034460 (n + 1))

end

end A325813.P443341904852923996

noncomputable section

/-- A325813: a(n) = gcd(A034448(n)-n, n-A048146(n)), where A034448 and A048146 are respectively the sum of unitary and non-unitary divisors of n.

Offset 1, canonical program `A325813.P443341904852923996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325813 (n : ℕ) : ℤ :=
  (A325813.P443341904852923996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325814.P540079700746224643

`A033879(n+1)+A034460(n+1)`
-/

namespace A325814.P540079700746224643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A034460 (n + 1)

end

end A325814.P540079700746224643

noncomputable section

/-- A325814: a(n) = n - A048146(n), where A048146 is the sum of non-unitary divisors of n.

Offset 1, canonical program `A325814.P540079700746224643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A034460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325814 (n : ℕ) : ℤ :=
  A325814.P540079700746224643.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A034460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325974.P5304343172121658747

`A000203(n+1)-A325973(n+1)`
-/

namespace A325974.P5304343172121658747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325973 (n + 1)

end

end A325974.P5304343172121658747

noncomputable section

/-- A325974: Arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}: a(n) = (1/2)*(A048146(n) + A162296(n)).

Offset 1, canonical program `A325974.P5304343172121658747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325974 (n : ℕ) : ℤ :=
  A325974.P5304343172121658747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327305.P16405484816997818644

`(A327303(n+1)-A327303(n))/5^n`
-/

namespace A327305.P16405484816997818644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327303 (n + 1) - A327303 n : ℚ) / (5 ^ n : ℚ)

end

end A327305.P16405484816997818644

noncomputable section

/-- A327305: Digits of one of the two 5-adic integers sqrt(-9) that is related to A327303.

Offset 0, canonical program `A327305.P16405484816997818644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327305 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327305.P16405484816997818644.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327971.P15193960377859545139

`A280508(A110240(n))`
-/

namespace A327971.P15193960377859545139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (A110240 n).toNat

end

end A327971.P15193960377859545139

noncomputable section

/-- A327971: Bitwise XOR of trajectories of rule 30 and its mirror image, rule 86, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A265281(n).

Offset 0, canonical program `A327971.P15193960377859545139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A280508, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327971 (n : ℕ) : ℤ :=
  A327971.P15193960377859545139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A280508, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328502.P1197756649921844482

`∑{d}[n+1, A029935(#)*A351654((n+1)/#)]`
-/

namespace A328502.P1197756649921844482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P1197756649921844482

noncomputable section

/-- A328502: Dirichlet g.f.: zeta(s-1) / (zeta(s) * zeta(s-2)).

Offset 1, canonical program `A328502.P1197756649921844482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328502 (n : ℕ) : ℤ :=
  A328502.P1197756649921844482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328708.P9117693535644354588

`A046079(n+1)-A024361(n+1)`
-/

namespace A328708.P9117693535644354588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) - A024361 (n + 1)

end

end A328708.P9117693535644354588

noncomputable section

/-- A328708: Number of non-primitive Pythagorean triples with leg n.

Offset 1, canonical program `A328708.P9117693535644354588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A046079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328708 (n : ℕ) : ℤ :=
  A328708.P9117693535644354588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A046079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328708.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329402.P8727720182881996422

`A046079(4*(n+1))+1`
-/

namespace A329402.P8727720182881996422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (4 * (n + 1)) + 1

end

end A329402.P8727720182881996422

noncomputable section

/-- A329402: Number of rectangles (w X h, w <= h) with integer side lengths w and h having area = n * perimeter.

Offset 1, canonical program `A329402.P8727720182881996422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329402 (n : ℕ) : ℤ :=
  A329402.P8727720182881996422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329760.P7902454852561261286

`∩[A038604(n+1), A038615(n+1)]`
-/

namespace A329760.P7902454852561261286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P7902454852561261286

noncomputable section

/-- A329760: Primes without {2, 7} as digits.

Offset 1, canonical program `A329760.P7902454852561261286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9574 terms. -/
def A329760 (n : ℕ) : ℤ :=
  (A329760.P7902454852561261286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9574 terms. -/
def A329760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332516.P9149279751242895197

`filter[A004612(n+1), A354029(#)]`
-/

namespace A332516.P9149279751242895197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A332516.P9149279751242895197

noncomputable section

/-- A332516: Numbers k such that phi(k) == 10 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332516.P9149279751242895197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A332516 (n : ℕ) : ℤ :=
  A332516.P9149279751242895197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A332516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332882.P15306502482901872650

`A034448(n+1)/A323166(n+1)`
-/

namespace A332882.P15306502482901872650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332882.P15306502482901872650

noncomputable section

/-- A332882: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332882.P15306502482901872650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332882.P15306502482901872650.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332883.P3376569476005531227

`(n+1)/A323166(n+1)`
-/

namespace A332883.P3376569476005531227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332883.P3376569476005531227

noncomputable section

/-- A332883: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332883.P3376569476005531227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332883.P3376569476005531227.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333312.P3354544449326470189

`∪[2*A153238(n+1)+3, A156683(A009005(n+1))]`
-/

namespace A333312.P3354544449326470189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (A009005 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333312.P3354544449326470189

noncomputable section

/-- A333312: Positive integers m >= 2 such that there are at least two values of v such that the sequence {v, ..., v + m - 1} of m nonnegative integers can be partitioned into two subsets of consecutive integers with the same sum.

Offset 1, canonical program `A333312.P3354544449326470189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333312 (n : ℕ) : ℤ :=
  (A333312.P3354544449326470189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333842.P12933037220548875688

`A066328(A003557(n+1))`
-/

namespace A333842.P12933037220548875688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A003557 (n + 1)).toNat

end

end A333842.P12933037220548875688

noncomputable section

/-- A333842: G.f.: Sum_{k>=1} k * x^(prime(k)^2) / (1 - x^(prime(k)^2)).

Offset 1, canonical program `A333842.P12933037220548875688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333842 (n : ℕ) : ℤ :=
  A333842.P12933037220548875688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334662.P8497653626660670943

`∑{d}[n+1, A306671(#)]`
-/

namespace A334662.P8497653626660670943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306671 d

end

end A334662.P8497653626660670943

noncomputable section

/-- A334662: a(n) = Sum_{d|n} gcd(tau(d), pod(d)), where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A334662.P8497653626660670943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334662 (n : ℕ) : ℤ :=
  A334662.P8497653626660670943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334730.P4098740322766143181

`∏{d}[n+1, A306671(#)]`
-/

namespace A334730.P4098740322766143181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A306671 d

end

end A334730.P4098740322766143181

noncomputable section

/-- A334730: a(n) = Product_{d|n} gcd(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334730.P4098740322766143181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334730 (n : ℕ) : ℤ :=
  A334730.P4098740322766143181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334919.P14357513930265192530

`lt[1, A046079(3*n+1)]`
-/

namespace A334919.P14357513930265192530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P14357513930265192530

noncomputable section

/-- A334919: Numbers of the form i + j + 3*i*j for i,j >= 1 together with numbers of the form -i - j + 3*i*j for i,j >= 2.

Offset 1, canonical program `A334919.P14357513930265192530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919 (n : ℕ) : ℤ :=
  (A334919.P14357513930265192530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335397.P14891039673154172877

`∩[A335328(n+1)-1, A335328(n+1)]`
-/

namespace A335397.P14891039673154172877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335397.P14891039673154172877

noncomputable section

/-- A335397: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary divisors (A048109).

Offset 1, canonical program `A335397.P14891039673154172877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397 (n : ℕ) : ℤ :=
  (A335397.P14891039673154172877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336336.P15098443827968725045

`A174344(n+1)²+A268038(n+1)²`
-/

namespace A336336.P15098443827968725045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) ^ 2 + A268038 (n + 1) ^ 2

end

end A336336.P15098443827968725045

noncomputable section

/-- A336336: Squared distance from start of a point moving in a square spiral.

Offset 1, canonical program `A336336.P15098443827968725045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336336 (n : ℕ) : ℤ :=
  A336336.P15098443827968725045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336510.P14148724725539657442

`xor(a(n-1), A248663(n+1))` with `a(0)=0`
-/

namespace A336510.P14148724725539657442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A248663 (n + 1))

end

end A336510.P14148724725539657442

noncomputable section

/-- A336510: a(n) = Sum_{p | A055204(n)} 2^(pi(p) - 1).

Offset 1, canonical program `A336510.P14148724725539657442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A336510 (n : ℕ) : ℤ :=
  A336510.P14148724725539657442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A336510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336591.P6846533338555796771

`record[lcm(A007913(n+1), A056191(n+1))]`
-/

namespace A336591.P6846533338555796771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A056191 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336591.P6846533338555796771

noncomputable section

/-- A336591: Numbers whose exponents in their prime factorization are either 1, 3, or both.

Offset 1, canonical program `A336591.P6846533338555796771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336591 (n : ℕ) : ℤ :=
  (A336591.P6846533338555796771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336615.P1929992287404199022

`eq[2, A295878(n+1)]+1`
-/

namespace A336615.P1929992287404199022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336615.P1929992287404199022

noncomputable section

/-- A336615: Numbers of the form p * m^2, where p is prime and m > 0 is not divisible by p.

Offset 1, canonical program `A336615.P1929992287404199022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615 (n : ℕ) : ℤ :=
  (A336615.P1929992287404199022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336645.P14758899081627921314

`1-A326129(n+1)+n`
-/

namespace A336645.P14758899081627921314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326129 (n + 1) + (n : ℤ)

end

end A336645.P14758899081627921314

noncomputable section

/-- A336645: a(n) = n - A326129(n).

Offset 1, canonical program `A336645.P14758899081627921314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336645 (n : ℕ) : ℤ :=
  A336645.P14758899081627921314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337156.P7925351017222445069

`A008784(eq[1, A008784(n+2)-A008784(n+1)]+1)`
-/

namespace A337156.P7925351017222445069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2) - A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337156.P7925351017222445069

noncomputable section

/-- A337156: Numbers k such that the k-th triangular number has all its prime factors congruent to 1 mod 4.

Offset 1, canonical program `A337156.P7925351017222445069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A337156 (n : ℕ) : ℤ :=
  A337156.P7925351017222445069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A337156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337532.P2496507582063867673

`∑{d}[n+1, A046079(#)+1]`
-/

namespace A337532.P2496507582063867673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A046079 d + 1)

end

end A337532.P2496507582063867673

noncomputable section

/-- A337532: a(n) = Sum_{d1|n, d2|n, d1<=d2} [(d1 mod 2) = (d2 mod 2)], where [ ] is the Iverson bracket.

Offset 1, canonical program `A337532.P2496507582063867673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337532 (n : ℕ) : ℤ :=
  A337532.P2496507582063867673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338490.P10907091718341308882

`A066328(2*(n+1))-1`
-/

namespace A338490.P10907091718341308882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * (n + 1)) - 1

end

end A338490.P10907091718341308882

noncomputable section

/-- A338490: Sum of indices of distinct odd prime factors of n.

Offset 1, canonical program `A338490.P10907091718341308882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338490 (n : ℕ) : ℤ :=
  A338490.P10907091718341308882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339746.P14149983824418019061

`eq[1, A372573(n+1)]+1`
-/

namespace A339746.P14149983824418019061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339746.P14149983824418019061

noncomputable section

/-- A339746: Positive integers of the form 2^i*3^j*k, gcd(k,6)=1, and i == j (mod 3).

Offset 1, canonical program `A339746.P14149983824418019061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746 (n : ℕ) : ℤ :=
  (A339746.P14149983824418019061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340679.P327405937723677062

`A007947(n+1)/A014963(n+1)`
-/

namespace A340679.P327405937723677062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A340679.P327405937723677062

noncomputable section

/-- A340679: If n is a power of prime then a(n) = 1, otherwise a(n) = product of the distinct prime factors of n.

Offset 1, canonical program `A340679.P327405937723677062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340679.P327405937723677062.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342014.P15104606658135798061

`∑{d}[n+1, (n+1)/A014963(#)]%(n+1)`
-/

namespace A342014.P15104606658135798061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (A014963 d : ℚ))) (n + 1 : ℤ)

end

end A342014.P15104606658135798061

noncomputable section

/-- A342014: Arithmetic derivative of n, taken modulo n: a(n) = A003415(n) mod n.

Offset 1, canonical program `A342014.P15104606658135798061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342014 (n : ℕ) : ℤ :=
  A342014.P15104606658135798061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343519.P6978686432379773821

`∑{d}[n+1, A007431(#)*A101289((n+1)/#)]`
-/

namespace A343519.P6978686432379773821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A101289 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343519.P6978686432379773821

noncomputable section

/-- A343519: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, n).

Offset 1, canonical program `A343519.P6978686432379773821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343519 (n : ℕ) : ℤ :=
  A343519.P6978686432379773821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345298.P9232387955265906661

`2*A087207(n+1)`
-/

namespace A345298.P9232387955265906661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087207 (n + 1)

end

end A345298.P9232387955265906661

noncomputable section

/-- A345298: a(n) = Sum_{p|n, p prime} tau(p #).

Offset 1, canonical program `A345298.P9232387955265906661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A345298 (n : ℕ) : ℤ :=
  A345298.P9232387955265906661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A345298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347101.P16544199152805482784

`∏{d}[n+1, A013632(A014963(#))]`
-/

namespace A347101.P16544199152805482784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A013632 (A014963 d).toNat

end

end A347101.P16544199152805482784

noncomputable section

/-- A347101: Fully multiplicative with a(prime(k)) = A001223(k), where A001223 gives the distance from the k-th prime to the (k+1)-th prime.

Offset 1, canonical program `A347101.P16544199152805482784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347101 (n : ℕ) : ℤ :=
  A347101.P16544199152805482784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347131.P9557456993449807775

`∑{d}[n+1, A007431(#)*A319684((n+1)/#)]`
-/

namespace A347131.P9557456993449807775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P9557456993449807775

noncomputable section

/-- A347131: a(n) = Sum_{d|n} phi(n/d) * A003415(d), where A003415 is the arithmetic derivative and phi is Euler totient function.

Offset 1, canonical program `A347131.P9557456993449807775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347131 (n : ℕ) : ℤ :=
  A347131.P9557456993449807775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347955.P12154340568705559514

`∑{d}[n+1, A319684(#)*A349136((n+1)/#)]`
-/

namespace A347955.P12154340568705559514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P12154340568705559514

noncomputable section

/-- A347955: Dirichlet convolution of A003415 (arithmetic derivative) with A003602 (a Kimberling paraphrase).

Offset 1, canonical program `A347955.P12154340568705559514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347955 (n : ℕ) : ℤ :=
  A347955.P12154340568705559514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348004.P15506325115126856123

`eq[1, A348264(n+1)+1]+1`
-/

namespace A348004.P15506325115126856123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348004.P15506325115126856123

noncomputable section

/-- A348004: Numbers whose unitary divisors have distinct values of the unitary totient function uphi (A047994).

Offset 1, canonical program `A348004.P15506325115126856123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7386 terms. -/
def A348004 (n : ℕ) : ℤ :=
  (A348004.P15506325115126856123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7386 terms. -/
def A348004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349123.P11110344356280477347

`∑{d}[n+1, A018804(#)*A319684((n+1)/#)]`
-/

namespace A349123.P11110344356280477347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P11110344356280477347

noncomputable section

/-- A349123: a(n) = Sum_{d|n} A038040(n/d) * A003415(d), where A038040(n) = n*tau(n), and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A349123.P11110344356280477347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349123 (n : ℕ) : ℤ :=
  A349123.P11110344356280477347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349664.P7684518333172414269

`A046079((n+1)²)`
-/

namespace A349664.P7684518333172414269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 ((n + 1) ^ 2)

end

end A349664.P7684518333172414269

noncomputable section

/-- A349664: a(n) is the number of solutions for n^4 = z^2 - x^2 with {z,x} >= 1.

Offset 1, canonical program `A349664.P7684518333172414269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664 (n : ℕ) : ℤ :=
  A349664.P7684518333172414269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351558.P12959759109943034203

`and(n, A248663(∏{p}[n, #]))`
-/

namespace A351558.P12959759109943034203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A248663 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A351558.P12959759109943034203

noncomputable section

/-- A351558: a(n) = A048675(gcd(n, A019565(n))).

Offset 0, canonical program `A351558.P12959759109943034203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A351558 (n : ℕ) : ℤ :=
  A351558.P12959759109943034203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A351558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351560.P15324628770148461386

`A087207(∑{d}[n+1, #])`
-/

namespace A351560.P15324628770148461386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A351560.P15324628770148461386

noncomputable section

/-- A351560: a(n) is a binary representation of the primes that divide sigma(n) [the sum of divisors of n function], shown in decimal.

Offset 1, canonical program `A351560.P15324628770148461386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A351560 (n : ℕ) : ℤ :=
  A351560.P15324628770148461386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A351560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352273.P15168054115810300813

`filter[A055048(n+1), A035263(#)]`
-/

namespace A352273.P15168054115810300813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A352273.P15168054115810300813

noncomputable section

/-- A352273: Numbers whose squarefree part is congruent to 5 modulo 6.

Offset 1, canonical program `A352273.P15168054115810300813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273 (n : ℕ) : ℤ :=
  A352273.P15168054115810300813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353352.P1673129124953599033

`∑{d}[n+1, A353350(#)]`
-/

namespace A353352.P1673129124953599033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353350 d

end

end A353352.P1673129124953599033

noncomputable section

/-- A353352: Number of divisors d of n for which A048675(d) is a multiple of 3.

Offset 1, canonical program `A353352.P1673129124953599033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353352 (n : ℕ) : ℤ :=
  A353352.P1673129124953599033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353380.P1519682102492887619

`1-abs(∑{d}[n+1, A332823(#)])`
-/

namespace A353380.P1519682102492887619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |∑ d ∈ Nat.divisors (f1 n), A332823 d|

end

end A353380.P1519682102492887619

noncomputable section

/-- A353380: a(n) = 1 if A353354(n) [= Sum_{d|n} A332823(d)] is zero, otherwise 0.

Offset 1, canonical program `A353380.P1519682102492887619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353380 (n : ℕ) : ℤ :=
  A353380.P1519682102492887619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353445.P139513798113643550

`2-3*A332823(n+1)²`
-/

namespace A353445.P139513798113643550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 3 * A332823 (n + 1) ^ 2

end

end A353445.P139513798113643550

noncomputable section

/-- A353445: Let f be the completely multiplicative function from the positive integers to the cube roots of unity defined by f(prime(m)) = w^(2^(m-1)), where w is the cube root with positive imaginary part. a(n) is twice the real part of f(n).

Offset 1, canonical program `A353445.P139513798113643550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353445 (n : ℕ) : ℤ :=
  A353445.P139513798113643550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353566.P10561952852954268597

`A000007(A373247(n+1))`
-/

namespace A353566.P10561952852954268597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A373247 (n + 1)).toNat

end

end A353566.P10561952852954268597

noncomputable section

/-- A353566: a(n) = 1 if n is a multiple of its prime shadow A181819(n), and 0 otherwise.

Offset 1, canonical program `A353566.P10561952852954268597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353566 (n : ℕ) : ℤ :=
  A353566.P10561952852954268597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353959.P15648512991217701478

`∑{d}[n+1, #*A359792(#)]`
-/

namespace A353959.P15648512991217701478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359792 d

end

end A353959.P15648512991217701478

noncomputable section

/-- A353959: a(n) = Sum_{d|n} d * (-1)^(d'), where d' is the arithmetic derivative of d (A003415).

Offset 1, canonical program `A353959.P15648512991217701478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353959 (n : ℕ) : ℤ :=
  A353959.P15648512991217701478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355222.P17906569904308679321

`A182324(n)-A054054(A056142(n))`
-/

namespace A355222.P17906569904308679321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - A054054 (A056142 n).toNat

end

end A355222.P17906569904308679321

noncomputable section

/-- A355222: The k-th leftmost digit of a(n) is the greatest of the k leftmost digits of n.

Offset 0, canonical program `A355222.P17906569904308679321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222 (n : ℕ) : ℤ :=
  A355222.P17906569904308679321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359830.P7538047403356094708

`eq[0, A353350(n+1)]+1`
-/

namespace A359830.P7538047403356094708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359830.P7538047403356094708

noncomputable section

/-- A359830: Numbers k such that A048675(k) is not a multiple of 3.

Offset 1, canonical program `A359830.P7538047403356094708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830 (n : ℕ) : ℤ :=
  (A359830.P7538047403356094708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359870.P1653634179700732458

`lt[A001414(n+1), A007913(A350390(n+1))]+1`
-/

namespace A359870.P1653634179700732458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A350390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P1653634179700732458

noncomputable section

/-- A359870: Numbers whose product of distinct prime factors is greater than the sum of its prime factors (with repetition).

Offset 1, canonical program `A359870.P1653634179700732458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870 (n : ℕ) : ℤ :=
  (A359870.P1653634179700732458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360126.P9027795698661320514

`eq[0, A360125(n+1)]+1`
-/

namespace A360126.P9027795698661320514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360126.P9027795698661320514

noncomputable section

/-- A360126: Numbers k for which A359425(k) is even, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360126.P9027795698661320514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126 (n : ℕ) : ℤ :=
  (A360126.P9027795698661320514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360127.P2447225170114496464

`eq[1, A360125(n+1)]+1`
-/

namespace A360127.P2447225170114496464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360127.P2447225170114496464

noncomputable section

/-- A360127: Numbers k for which A359425(k) is odd, where A359425 is the Dirichlet convolution of the arithmetic derivative with the primorial base exp function.

Offset 1, canonical program `A360127.P2447225170114496464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127 (n : ℕ) : ℤ :=
  (A360127.P2447225170114496464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361024.P7432656464654402567

`A361023(n+1)-A324903(n+1)`
-/

namespace A361024.P7432656464654402567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 (n + 1) - A324903 (n + 1)

end

end A361024.P7432656464654402567

noncomputable section

/-- A361024: a(n) = 1 if n and sigma(n) have equal 2-adic valuations, otherwise 0, where sigma is the sum of divisors function.

Offset 1, canonical program `A361024.P7432656464654402567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324903, A361023, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361024 (n : ℕ) : ℤ :=
  A361024.P7432656464654402567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324903, A361023, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362148.P4847235968772766025

`∩[A046099(n+1), A362147(n+1)]`
-/

namespace A362148.P4847235968772766025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P4847235968772766025

noncomputable section

/-- A362148: Numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A362148.P4847235968772766025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148 (n : ℕ) : ℤ :=
  (A362148.P4847235968772766025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363553.P1066074787311457405

`A011582(A369306(n+1))`
-/

namespace A363553.P1066074787311457405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A369306 (n + 1)).toNat

end

end A363553.P1066074787311457405

noncomputable section

/-- A363553: Möbius function of rank 5: a(n) = lambda(n) = A008836(n) if n is 5-free and 0 otherwise.

Offset 1, canonical program `A363553.P1066074787311457405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363553 (n : ℕ) : ℤ :=
  A363553.P1066074787311457405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363597.P3397001613817327848

`comp[A120944(n+1)-1]+1`
-/

namespace A363597.P3397001613817327848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A363597.P3397001613817327848

noncomputable section

/-- A363597: Union of prime powers and numbers that are not squarefree.

Offset 1, canonical program `A363597.P3397001613817327848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363597 (n : ℕ) : ℤ :=
  (A363597.P3397001613817327848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365211.P5641128578924435499

`A034448(A065331(n+1))*A186099(n+1)`
-/

namespace A365211.P5641128578924435499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A065331 (n + 1)).toNat * A186099 (n + 1)

end

end A365211.P5641128578924435499

noncomputable section

/-- A365211: The sum of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

Offset 1, canonical program `A365211.P5641128578924435499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365211 (n : ℕ) : ℤ :=
  A365211.P5641128578924435499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365337.P16355101885610281145

`∑{d}[A350390(n+1), #]`
-/

namespace A365337.P16355101885610281145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365337.P16355101885610281145

noncomputable section

/-- A365337: The sum of divisors of the largest exponentially odd number dividing n.

Offset 1, canonical program `A365337.P16355101885610281145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365337 (n : ℕ) : ℤ :=
  (A365337.P16355101885610281145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365499.P12823429545755088149

`A365498((n+1)/A055229(n+1))`
-/

namespace A365499.P12823429545755088149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055229 (n + 1) : ℚ))).toNat

end

end A365499.P12823429545755088149

noncomputable section

/-- A365499: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(4*s)).

Offset 1, canonical program `A365499.P12823429545755088149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499 (n : ℕ) : ℤ :=
  A365499.P12823429545755088149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365829.P2680897813873898775

`record[A007913(A246716(n+1))]`
-/

namespace A365829.P2680897813873898775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A246716 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365829.P2680897813873898775

noncomputable section

/-- A365829: Squarefree non-semiprimes.

Offset 1, canonical program `A365829.P2680897813873898775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4722 terms. -/
def A365829 (n : ℕ) : ℤ :=
  A365829.P2680897813873898775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4722 terms. -/
def A365829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366536.P4024848325437955831

`2^A376365(n+1)`
-/

namespace A366536.P4024848325437955831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A376365 (n + 1) : ℤ)

end

end A366536.P4024848325437955831

noncomputable section

/-- A366536: The number of unitary divisors of the cubefree numbers (A004709).

Offset 1, canonical program `A366536.P4024848325437955831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366536.P4024848325437955831.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367989.P240043340969754542

`A035316((n+1)/A350389(n+1))`
-/

namespace A367989.P240043340969754542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A367989.P240043340969754542

noncomputable section

/-- A367989: The sum of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367989.P240043340969754542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367989 (n : ℕ) : ℤ :=
  A367989.P240043340969754542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368038.P2030547895329606168

`A048146(A013929(n+1))`
-/

namespace A368038.P2030547895329606168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A013929 (n + 1)).toNat

end

end A368038.P2030547895329606168

noncomputable section

/-- A368038: The sum of non-unitary divisors of the nonsquarefree numbers.

Offset 1, canonical program `A368038.P2030547895329606168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368038 (n : ℕ) : ℤ :=
  A368038.P2030547895329606168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368167.P14958017841539973394

`A350389(A057521(n+1))`
-/

namespace A368167.P14958017841539973394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A057521 (n + 1)).toNat

end

end A368167.P14958017841539973394

noncomputable section

/-- A368167: The largest unitary divisor of n that is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368167.P14958017841539973394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368167 (n : ℕ) : ℤ :=
  A368167.P14958017841539973394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368170.P17133771726429753802

`A057521(A350390(n+1))`
-/

namespace A368170.P17133771726429753802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A350390 (n + 1)).toNat

end

end A368170.P17133771726429753802

noncomputable section

/-- A368170: The largest cubefull exponentially odd divisor of n.

Offset 1, canonical program `A368170.P17133771726429753802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170 (n : ℕ) : ℤ :=
  A368170.P17133771726429753802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368247.P6979336993255888350

`A073184(A360540(n+1))`
-/

namespace A368247.P6979336993255888350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (A360540 (n + 1)).toNat

end

end A368247.P6979336993255888350

noncomputable section

/-- A368247: The number of cubefree divisors of the cubefull part of n (A360540).

Offset 1, canonical program `A368247.P6979336993255888350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368247 (n : ℕ) : ℤ :=
  A368247.P6979336993255888350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368471.P8379948987742590772

`A033634(A350389(n+1))`
-/

namespace A368471.P8379948987742590772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A350389 (n + 1)).toNat

end

end A368471.P8379948987742590772

noncomputable section

/-- A368471: a(n) is the sum of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A368471.P8379948987742590772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368471 (n : ℕ) : ℤ :=
  A368471.P8379948987742590772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369028.P15444832986516875941

`A014963(A253563(n))`
-/

namespace A369028.P15444832986516875941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A253563 n).toNat

end

end A369028.P15444832986516875941

noncomputable section

/-- A369028: Exponential of Mangoldt function permuted by A253563.

Offset 0, canonical program `A369028.P15444832986516875941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369028 (n : ℕ) : ℤ :=
  A369028.P15444832986516875941.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369041.P3784839183294288014

`A014963(A003188(n+1))`
-/

namespace A369041.P3784839183294288014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003188 (n + 1)).toNat

end

end A369041.P3784839183294288014

noncomputable section

/-- A369041: LCM-transform of binary Gray code (A003188).

Offset 1, canonical program `A369041.P3784839183294288014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A369041 (n : ℕ) : ℤ :=
  A369041.P3784839183294288014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A369041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369310.P4588423880105354459

`A190867(n+1)*A365498(n+1)`
-/

namespace A369310.P4588423880105354459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1) * A365498 (n + 1)

end

end A369310.P4588423880105354459

noncomputable section

/-- A369310: The number of divisors d of n such that gcd(d, n/d) is a powerful number.

Offset 1, canonical program `A369310.P4588423880105354459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310 (n : ℕ) : ℤ :=
  A369310.P4588423880105354459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370010.P2556358850231895376

`A045319(A020934(n+1)-1)`
-/

namespace A370010.P2556358850231895376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A020934 (n + 1) - 1).toNat

end

end A370010.P2556358850231895376

noncomputable section

/-- A370010: a(n) is the greatest prime less than 4*prime(n).

Offset 1, canonical program `A370010.P2556358850231895376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A370010 (n : ℕ) : ℤ :=
  A370010.P2556358850231895376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A370010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371015.P13355970796855090247

`(n+1)/A363340(n+1)`
-/

namespace A371015.P13355970796855090247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A363340 (n + 1) : ℚ)

end

end A371015.P13355970796855090247

noncomputable section

/-- A371015: The largest divisor of n that is the sum of 2 squares.

Offset 1, canonical program `A371015.P13355970796855090247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371015 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371015.P13355970796855090247.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371906.P54646913033196370

`xor(a(n-1), A087207(n+1))` with `a(0)=0`
-/

namespace A371906.P54646913033196370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A087207 (n + 1))

end

end A371906.P54646913033196370

noncomputable section

/-- A371906: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is odd.

Offset 1, canonical program `A371906.P54646913033196370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906 (n : ℕ) : ℤ :=
  A371906.P54646913033196370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372112.P1502568326743945115

`A014963(record[∏{p}[n, #]])`
-/

namespace A372112.P1502568326743945115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A372112.P1502568326743945115

noncomputable section

/-- A372112: Rad-transform of the squarefree numbers A005117 (see Comments).

Offset 1, canonical program `A372112.P1502568326743945115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A372112 (n : ℕ) : ℤ :=
  A372112.P1502568326743945115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A372112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372749.P13035462491583893748

`A202342(n+1)+A136496(n+1)+A381841(n+1)-2`
-/

namespace A372749.P13035462491583893748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + A381841 (n + 1) - 2

end

end A372749.P13035462491583893748

noncomputable section

/-- A372749: 4th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372749.P13035462491583893748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372749 (n : ℕ) : ℤ :=
  A372749.P13035462491583893748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372750.P11021400097773802461

`A202342(n+1)+A136496(n+1)+2*A381841(n+1)-3`
-/

namespace A372750.P11021400097773802461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + 2 * A381841 (n + 1) - 3

end

end A372750.P11021400097773802461

noncomputable section

/-- A372750: 5th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372750.P11021400097773802461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372750 (n : ℕ) : ℤ :=
  A372750.P11021400097773802461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372752.P5687007721040332012

`2*A202342(n+1)+A136496(n+1)+3*A381841(n+1)-4`
-/

namespace A372752.P5687007721040332012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202342 (n + 1) + A136496 (n + 1) + 3 * A381841 (n + 1) - 4

end

end A372752.P5687007721040332012

noncomputable section

/-- A372752: 6th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372752.P5687007721040332012`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372752 (n : ℕ) : ℤ :=
  A372752.P5687007721040332012.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372756.P16576302570727181633

`3*A202342(n+1)+2*A136496(n+1)+4*A381841(n+1)-6`
-/

namespace A372756.P16576302570727181633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A202342 (n + 1) + 2 * A136496 (n + 1) + 4 * A381841 (n + 1) - 6

end

end A372756.P16576302570727181633

noncomputable section

/-- A372756: 7th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372756.P16576302570727181633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372756 (n : ℕ) : ℤ :=
  A372756.P16576302570727181633.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372757.P4399208571086954249

`4*A202342(n+1)+3*A136496(n+1)+6*A381841(n+1)-9`
-/

namespace A372757.P4399208571086954249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A202342 (n + 1) + 3 * A136496 (n + 1) + 6 * A381841 (n + 1) - 9

end

end A372757.P4399208571086954249

noncomputable section

/-- A372757: 8th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372757.P4399208571086954249`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372757 (n : ℕ) : ℤ :=
  A372757.P4399208571086954249.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, A202342, A381841, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373299.P1347449349989211872

`A151800(A022885(n+1))`
-/

namespace A373299.P1347449349989211872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A022885 (n + 1)).toNat

end

end A373299.P1347449349989211872

noncomputable section

/-- A373299: Numbers prime(k) such that prime(k) - prime(k-1) = prime(k+2) - prime(k+1).

Offset 1, canonical program `A373299.P1347449349989211872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299 (n : ℕ) : ℤ :=
  A373299.P1347449349989211872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374538.P5898032326319891676

`A034676(A350389(n+1))`
-/

namespace A374538.P5898032326319891676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A350389 (n + 1)).toNat

end

end A374538.P5898032326319891676

noncomputable section

/-- A374538: a(n) is the sum of the squares of the unitary divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A374538.P5898032326319891676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374538 (n : ℕ) : ℤ :=
  A374538.P5898032326319891676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375032.P9183128720752084141

`A051903(A350389(n+1))`
-/

namespace A375032.P9183128720752084141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350389 (n + 1)).toNat

end

end A375032.P9183128720752084141

noncomputable section

/-- A375032: The maximum odd exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375032.P9183128720752084141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375032 (n : ℕ) : ℤ :=
  A375032.P9183128720752084141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375033.P7336156441965577288

`A051903((n+1)/A350389(n+1))`
-/

namespace A375033.P7336156441965577288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A375033.P7336156441965577288

noncomputable section

/-- A375033: The maximum even exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375033.P7336156441965577288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375033 (n : ℕ) : ℤ :=
  A375033.P7336156441965577288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375072.P124892896223991445

`∩[A060476(n+1), A382967(n+1)]`
-/

namespace A375072.P124892896223991445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P124892896223991445

noncomputable section

/-- A375072: Biquadratefree numbers (A046100) that are not cubefree (A004709).

Offset 1, canonical program `A375072.P124892896223991445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A375072 (n : ℕ) : ℤ :=
  (A375072.P124892896223991445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A375072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376602.P2124917522490715053

`eq[0, A073445(n+1)]+1`
-/

namespace A376602.P2124917522490715053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376602.P2124917522490715053

noncomputable section

/-- A376602: Inflection and undulation points in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376602.P2124917522490715053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602 (n : ℕ) : ℤ :=
  (A376602.P2124917522490715053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376715.P17313450320270734925

`filter[A265640(n+1), A066247(#)]`
-/

namespace A376715.P17313450320270734925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A376715.P17313450320270734925

noncomputable section

/-- A376715: Composite numbers in A265640.

Offset 1, canonical program `A376715.P17313450320270734925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715 (n : ℕ) : ℤ :=
  A376715.P17313450320270734925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378085.P12109818959703916191

`1-Δ[A378619(n+1)]`
-/

namespace A378085.P12109818959703916191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A378085.P12109818959703916191

noncomputable section

/-- A378085: First differences of A070321 (greatest squarefree number <= n).

Offset 1, canonical program `A378085.P12109818959703916191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378085 (n : ℕ) : ℤ :=
  A378085.P12109818959703916191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379851.P2408517926029222728

`lt[2, A332881(n+1)]+1`
-/

namespace A379851.P2408517926029222728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379851.P2408517926029222728

noncomputable section

/-- A379851: Numbers k such that phi(k) does not divide k. Complement of A007694.

Offset 1, canonical program `A379851.P2408517926029222728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851 (n : ℕ) : ℤ :=
  (A379851.P2408517926029222728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382133.P15663710745626438162

`∩[A046386(n+1), A162800(n)]`
-/

namespace A382133.P15663710745626438162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382133.P15663710745626438162

noncomputable section

/-- A382133: Products of 4 distinct primes that are the average of two consecutive primes.

Offset 1, canonical program `A382133.P15663710745626438162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A382133 (n : ℕ) : ℤ :=
  (A382133.P15663710745626438162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A382133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382417.P4382839370036979022

`A007814(2*n+3)+comp[A255805(n+1)]`
-/

namespace A382417.P4382839370036979022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A382417.P4382839370036979022

noncomputable section

/-- A382417: Numbers with at least one zero in their base-8 representation.

Offset 1, canonical program `A382417.P4382839370036979022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A382417 (n : ℕ) : ℤ :=
  A382417.P4382839370036979022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A382417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382421.P17134259101633358853

`∏{e}[A046099(n+1), #]`
-/

namespace A382421.P17134259101633358853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382421.P17134259101633358853

noncomputable section

/-- A382421: The product of exponents in the prime factorization of the noncubefree numbers.

Offset 1, canonical program `A382421.P17134259101633358853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382421 (n : ℕ) : ℤ :=
  (A382421.P17134259101633358853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382661.P7475283618975773470

`A366535(n+1)*A382660(n+1)`
-/

namespace A382661.P7475283618975773470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366535 (n + 1) * A382660 (n + 1)

end

end A382661.P7475283618975773470

noncomputable section

/-- A382661: The unitary Jordan totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382661.P7475283618975773470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382661 (n : ℕ) : ℤ :=
  A382661.P7475283618975773470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382663.P15887194253345116133

`A366537(n+1)*A382662(n+1)`
-/

namespace A382663.P15887194253345116133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366537 (n + 1) * A382662 (n + 1)

end

end A382663.P15887194253345116133

noncomputable section

/-- A382663: The unitary Jordan totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382663.P15887194253345116133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382663 (n : ℕ) : ℤ :=
  A382663.P15887194253345116133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382987.P16727742091010566575

`A026269(n+2)-A005554(n+1)`
-/

namespace A382987.P16727742091010566575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2) - A005554 (n + 1)

end

end A382987.P16727742091010566575

noncomputable section

/-- A382987: a(n) is the total sum of the last symbol in all Catalan words of length n avoiding the pattern (>=,>=).

Offset 0, canonical program `A382987.P16727742091010566575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987 (n : ℕ) : ℤ :=
  A382987.P16727742091010566575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383717.P12018944813867076919

`A212793(n+1)*A366765(n+1)`
-/

namespace A383717.P12018944813867076919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A366765 (n + 1)

end

end A383717.P12018944813867076919

noncomputable section

/-- A383717: Dirichlet g.f.: Product_{p prime} (1 + 1/p^(s-1) + 1/p^(2*s-1)).

Offset 1, canonical program `A383717.P12018944813867076919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383717 (n : ℕ) : ℤ :=
  A383717.P12018944813867076919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384049.P15976918065604329778

`A360539(n+1)*A385195(A360540(n+1))`
-/

namespace A384049.P15976918065604329778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1) * A385195 (A360540 (n + 1)).toNat

end

end A384049.P15976918065604329778

noncomputable section

/-- A384049: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is cubefree.

Offset 1, canonical program `A384049.P15976918065604329778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384049 (n : ℕ) : ℤ :=
  A384049.P15976918065604329778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384418.P15387864905350044636

`record[A057521(A209061(n+1))]`
-/

namespace A384418.P15387864905350044636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A209061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384418.P15387864905350044636

noncomputable section

/-- A384418: Powerful exponentially squarefree numbers.

Offset 1, canonical program `A384418.P15387864905350044636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A384418 (n : ℕ) : ℤ :=
  A384418.P15387864905350044636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A384418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384419.P10385921889359605999

`filter[A209061(n+1), A010055(#)]`
-/

namespace A384419.P10385921889359605999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A384419.P10385921889359605999

noncomputable section

/-- A384419: Exponentially squarefree prime powers.

Offset 1, canonical program `A384419.P10385921889359605999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1273 terms. -/
def A384419 (n : ℕ) : ℤ :=
  A384419.P10385921889359605999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1273 terms. -/
def A384419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385048.P15337767966192426689

`A034448(n+1)/A371242(n+1)`
-/

namespace A385048.P15337767966192426689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A371242 (n + 1) : ℚ)

end

end A385048.P15337767966192426689

noncomputable section

/-- A385048: The sum of the unitary divisors of n that are cubefull numbers (A036966).

Offset 1, canonical program `A385048.P15337767966192426689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385048.P15337767966192426689.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385049.P4314546345996774465

`A034448(A385007(n+1))`
-/

namespace A385049.P4314546345996774465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A385007 (n + 1)).toNat

end

end A385049.P4314546345996774465

noncomputable section

/-- A385049: The sum of the unitary divisors of n that are biquadratefree numbers (A046100).

Offset 1, canonical program `A385049.P4314546345996774465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049 (n : ℕ) : ℤ :=
  A385049.P4314546345996774465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386268.P721446606681825854

`A392359(A040976(n+2))`
-/

namespace A386268.P721446606681825854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (A040976 (n + 2)).toNat

end

end A386268.P721446606681825854

noncomputable section

/-- A386268: a(n) = numerator((prime(n) - 2)/(n - 1)).

Offset 2, canonical program `A386268.P721446606681825854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268 (n : ℕ) : ℤ :=
  A386268.P721446606681825854.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386325.P8442755559218868440

`∩[A038615(n+1), A038618(n+1)]`
-/

namespace A386325.P8442755559218868440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P8442755559218868440

noncomputable section

/-- A386325: Primes without {0, 7} as digits.

Offset 1, canonical program `A386325.P8442755559218868440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386325 (n : ℕ) : ℤ :=
  (A386325.P8442755559218868440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386342.P11450868314914418014

`∩[A038611(n+1), A038615(n+1)]`
-/

namespace A386342.P11450868314914418014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P11450868314914418014

noncomputable section

/-- A386342: Primes without {3, 7} as digits.

Offset 1, canonical program `A386342.P11450868314914418014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342 (n : ℕ) : ℤ :=
  (A386342.P11450868314914418014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386351.P7318400634088148714

`∩[A038613(n+1), A038615(n+1)]`
-/

namespace A386351.P7318400634088148714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P7318400634088148714

noncomputable section

/-- A386351: Primes without {5, 7} as digits.

Offset 1, canonical program `A386351.P7318400634088148714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351 (n : ℕ) : ℤ :=
  (A386351.P7318400634088148714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386354.P16560442262164628227

`∩[A038614(n+1), A038615(n+1)]`
-/

namespace A386354.P16560442262164628227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P16560442262164628227

noncomputable section

/-- A386354: Primes without {6, 7} as digits.

Offset 1, canonical program `A386354.P16560442262164628227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354 (n : ℕ) : ℤ :=
  (A386354.P16560442262164628227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386357.P4558547617115754189

`∩[A038615(n+1), A038616(n+1)]`
-/

namespace A386357.P4558547617115754189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P4558547617115754189

noncomputable section

/-- A386357: Primes without {7, 8} as digits.

Offset 1, canonical program `A386357.P4558547617115754189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9575 terms. -/
def A386357 (n : ℕ) : ℤ :=
  (A386357.P4558547617115754189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9575 terms. -/
def A386357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388986.P11904024746085052397

`lt[A325973(n+1), n]+1`
-/

namespace A388986.P11904024746085052397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388986.P11904024746085052397

noncomputable section

/-- A388986: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} is less than 2*k.

Offset 1, canonical program `A388986.P11904024746085052397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986 (n : ℕ) : ℤ :=
  (A388986.P11904024746085052397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389170.P11666675562721126669

`A057723(n+1)-A048146(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389170.P11666675562721126669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A048146 (n + 1)

end

end A389170.P11666675562721126669

noncomputable section

/-- A389170: a(n) = A057723(n) - A048146(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389170.P11666675562721126669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389170 (n : ℕ) : ℤ :=
  A389170.P11666675562721126669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389215.P13589853183880962071

`lt[n, A325973(n+1)]+1`
-/

namespace A389215.P13589853183880962071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389215.P13589853183880962071

noncomputable section

/-- A389215: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

Offset 1, canonical program `A389215.P13589853183880962071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215 (n : ℕ) : ℤ :=
  (A389215.P13589853183880962071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389458.P16303439763242894167

`eq[2, and(3, A048146(n+1))]+1`
-/

namespace A389458.P16303439763242894167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048146 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389458.P16303439763242894167

noncomputable section

/-- A389458: Numbers whose sum of non-unitary divisors (A048146) is congruent to 2 modulo 4.

Offset 1, canonical program `A389458.P16303439763242894167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A389458 (n : ℕ) : ℤ :=
  (A389458.P16303439763242894167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A389458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390371.P1751252496697479842

`A350390(A368886(n+1))`
-/

namespace A390371.P1751252496697479842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (A368886 (n + 1)).toNat

end

end A390371.P1751252496697479842

noncomputable section

/-- A390371: a(n) is the largest bi-unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A390371.P1751252496697479842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390371 (n : ℕ) : ℤ :=
  A390371.P1751252496697479842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390693.P1105766320151799112

`(n+1)*A363340(n+1)`
-/

namespace A390693.P1105766320151799112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A363340 (n + 1)

end

end A390693.P1105766320151799112

noncomputable section

/-- A390693: The smallest multiple of n that is the sum of 2 squares (A001481).

Offset 1, canonical program `A390693.P1105766320151799112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390693 (n : ℕ) : ℤ :=
  A390693.P1105766320151799112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390752.P10968645331509799660

`A346612(A350390(n+1))`
-/

namespace A390752.P10968645331509799660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346612 (A350390 (n + 1)).toNat

end

end A390752.P10968645331509799660

noncomputable section

/-- A390752: The Euler totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A390752.P10968645331509799660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390752 (n : ℕ) : ℤ :=
  A390752.P10968645331509799660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391899.P10823638519009848898

`A051903(A209061(n+1))`
-/

namespace A391899.P10823638519009848898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A209061 (n + 1)).toNat

end

end A391899.P10823638519009848898

noncomputable section

/-- A391899: The maximum exponent in the prime factorization of the exponentially squarefree numbers (A209061).

Offset 1, canonical program `A391899.P10823638519009848898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391899 (n : ℕ) : ℤ :=
  A391899.P10823638519009848898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392168.P16582096240564873926

`A181797(A350390(n+1))`
-/

namespace A392168.P16582096240564873926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (A350390 (n + 1)).toNat

end

end A392168.P16582096240564873926

noncomputable section

/-- A392168: The Dedekind psi function value of the smallest square divisible by n.

Offset 1, canonical program `A392168.P16582096240564873926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392168 (n : ℕ) : ℤ :=
  A392168.P16582096240564873926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392169.P9929213472793241053

`A001615(n+1)*A048798(n+1)`
-/

namespace A392169.P9929213472793241053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A048798 (n + 1)

end

end A392169.P9929213472793241053

noncomputable section

/-- A392169: The Dedekind psi function value of the smallest cube divisible by n.

Offset 1, canonical program `A392169.P9929213472793241053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392169 (n : ℕ) : ℤ :=
  A392169.P9929213472793241053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394346.P4603799114259171752

`A324528(n+1)*A306671(n+1)`
-/

namespace A394346.P4603799114259171752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324528 (n + 1) * A306671 (n + 1)

end

end A394346.P4603799114259171752

noncomputable section

/-- A394346: a(n) = tau(n) * pod(n) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A394346.P4603799114259171752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346 (n : ℕ) : ℤ :=
  A394346.P4603799114259171752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395270.P1707680225757047534

`filter[A120944(n+1), A323170(#)]`
-/

namespace A395270.P1707680225757047534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P1707680225757047534

noncomputable section

/-- A395270: Numbers that are radicals of abundant numbers.

Offset 1, canonical program `A395270.P1707680225757047534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A395270 (n : ℕ) : ℤ :=
  A395270.P1707680225757047534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A395270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265333.P11142459361382241526

`A084558(n)-A084558(A004526(n))`
-/

namespace A265333.P11142459361382241526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A084558 (A004526 n).toNat

end

end A265333.P11142459361382241526

noncomputable section

/-- A265333: Characteristic function for A265334: a(n) = 1 if n >= k! but < 2*k! for some k, 0 otherwise.

Offset 0, canonical program `A265333.P11142459361382241526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265333 (n : ℕ) : ℤ :=
  A265333.P11142459361382241526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265893.P4567769337452854523

`A084558(n)-A230403(A028310(n))`
-/

namespace A265893.P4567769337452854523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A230403 (A028310 n).toNat

end

end A265893.P4567769337452854523

noncomputable section

/-- A265893: a(n) = A084558(n) - A230403(n); the length of factorial base representation of n without its trailing zeros.

Offset 0, canonical program `A265893.P4567769337452854523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265893 (n : ℕ) : ℤ :=
  A265893.P4567769337452854523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269594.P601689813181141290

`(A269590(n)²+4)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269594.P601689813181141290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269590 n ^ 2 + 4 : ℚ) / (5 ^ n : ℚ)

end

end A269594.P601689813181141290

noncomputable section

/-- A269594: a(n) = (A269590(n)^2 + 4)/5^n, n >= 0.

Offset 0, canonical program `A269594.P601689813181141290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A269594.P601689813181141290.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284324.P5958562104063105870

`∩[A028846(n+1), A062372(n+1)]`
-/

namespace A284324.P5958562104063105870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284324.P5958562104063105870

noncomputable section

/-- A284324: Numbers k such that product of digits of k is a power of 8.

Offset 1, canonical program `A284324.P5958562104063105870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A284324 (n : ℕ) : ℤ :=
  (A284324.P5958562104063105870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A284324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289616.P6968600782892435759

`A289654(n+1)-A289207(n)`
-/

namespace A289616.P6968600782892435759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) - A289207 n

end

end A289616.P6968600782892435759

noncomputable section

/-- A289616: A246604 (Catalan(n)-n) with initial terms 1,0,0,2,10 changed to 1,1,1,2,11.

Offset 0, canonical program `A289616.P6968600782892435759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616 (n : ℕ) : ℤ :=
  A289616.P6968600782892435759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291186.P9759207513551932445

`∏{d}[n+1, #]/A306671(n+1)`
-/

namespace A291186.P9759207513551932445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A291186.P9759207513551932445

noncomputable section

/-- A291186: a(n) = numerator of (pod(n) / tau(n)).

Offset 1, canonical program `A291186.P9759207513551932445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A291186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291186.P9759207513551932445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A291186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295901.P1895136251216199414

`A296206((n+1)²)`
-/

namespace A295901.P1895136251216199414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296206 ((n + 1) ^ 2)

end

end A295901.P1895136251216199414

noncomputable section

/-- A295901: Unique sequence satisfying SumXOR_{d divides n} a(d) = n^2 for any n > 0, where SumXOR is the analog of summation under the binary XOR operation.

Offset 1, canonical program `A295901.P1895136251216199414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295901 (n : ℕ) : ℤ :=
  A295901.P1895136251216199414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297330.P4306723329666060960

`A007953(A040115(n+1))`
-/

namespace A297330.P4306723329666060960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A040115 (n + 1)).toNat

end

end A297330.P4306723329666060960

noncomputable section

/-- A297330: Total variation of base-10 digits of n; see Comments.

Offset 1, canonical program `A297330.P4306723329666060960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297330 (n : ℕ) : ℤ :=
  A297330.P4306723329666060960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300252.P13504588308757464481

`∑{d}[n+1, A057427(#-1)*A300251((n+1)/#)]`
-/

namespace A300252.P13504588308757464481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300252.P13504588308757464481

noncomputable section

/-- A300252: Difference between arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300252.P13504588308757464481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300252 (n : ℕ) : ℤ :=
  A300252.P13504588308757464481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305809.P1603223688838508842

`∑{d}[n+1, A300251(#)*A319684((n+1)/#)]`
-/

namespace A305809.P1603223688838508842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P1603223688838508842

noncomputable section

/-- A305809: Dirichlet convolution of A003415 (Arithmetic derivative) with itself.

Offset 1, canonical program `A305809.P1603223688838508842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809 (n : ℕ) : ℤ :=
  A305809.P1603223688838508842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306528.P17599500303172333272

`eq[A109395(n+1), A332881(n+1)]+1`
-/

namespace A306528.P17599500303172333272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306528.P17599500303172333272

noncomputable section

/-- A306528: Numbers k such that gcd(k, phi(k)) = gcd(k, psi(k)).

Offset 1, canonical program `A306528.P17599500303172333272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528 (n : ℕ) : ℤ :=
  (A306528.P17599500303172333272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310452.P8814723128049641890

`A312926(n)+∑[A021913(n)]`
-/

namespace A310452.P8814723128049641890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310452.P8814723128049641890

noncomputable section

/-- A310452: Coordination sequence Gal.6.195.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310452.P8814723128049641890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A310452 (n : ℕ) : ℤ :=
  A310452.P8814723128049641890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A310452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313228.P2561284602986671939

`A313859(n)-A004525(A004396(n))`
-/

namespace A313228.P2561284602986671939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - A004525 (A004396 n).toNat

end

end A313228.P2561284602986671939

noncomputable section

/-- A313228: Coordination sequence Gal.6.155.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313228.P2561284602986671939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228 (n : ℕ) : ℤ :=
  A313228.P2561284602986671939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313824.P16488686342278004829

`A004396(A004525(n))+A313859(n)-A004525(n)`
-/

namespace A313824.P16488686342278004829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313859 n - A004525 n)

end

end A313824.P16488686342278004829

noncomputable section

/-- A313824: Coordination sequence Gal.6.195.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313824.P16488686342278004829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824 (n : ℕ) : ℤ :=
  A313824.P16488686342278004829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321503.P6387010611333371333

`∩[A000977(n+1)-1, A000977(n+1)]`
-/

namespace A321503.P6387010611333371333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321503.P6387010611333371333

noncomputable section

/-- A321503: Numbers m such that m and m+1 both have at least 3 distinct prime factors.

Offset 1, canonical program `A321503.P6387010611333371333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3559 terms. -/
def A321503 (n : ℕ) : ℤ :=
  (A321503.P6387010611333371333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3559 terms. -/
def A321503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332422.P2549243754206614322

`∑{p}[n+1, A181983(A026238(#))]`
-/

namespace A332422.P2549243754206614322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A181983 (A026238 p).toNat

end

end A332422.P2549243754206614322

noncomputable section

/-- A332422: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * pi(p_j)), where pi = A000720.

Offset 1, canonical program `A332422.P2549243754206614322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422 (n : ℕ) : ℤ :=
  A332422.P2549243754206614322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332424.P12302743230273671513

`∑{p}[n+1, #/A332823(#)]`
-/

namespace A332424.P12302743230273671513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (A332823 p : ℚ)

end

end A332424.P12302743230273671513

noncomputable section

/-- A332424: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * p_j), where pi = A000720.

Offset 1, canonical program `A332424.P12302743230273671513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332424.P12302743230273671513.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344843.P4941616825028739545

`∩[A357077(n+1)-1, A357077(n+1)]`
-/

namespace A344843.P4941616825028739545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344843.P4941616825028739545

noncomputable section

/-- A344843: The smallest of three consecutive integers that are products of three or more primes.

Offset 1, canonical program `A344843.P4941616825028739545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A344843 (n : ℕ) : ℤ :=
  (A344843.P4941616825028739545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A344843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346620.P14772451308299098952

`∑[A007774(n+1)]`
-/

namespace A346620.P14772451308299098952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P14772451308299098952

noncomputable section

/-- A346620: Partial sums of A007774.

Offset 1, canonical program `A346620.P14772451308299098952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346620 (n : ℕ) : ℤ :=
  A346620.P14772451308299098952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358821.P12672995773149391331

`A005563(n+1)/A068310(n+2)`
-/

namespace A358821.P12672995773149391331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (n + 1) : ℚ) / (A068310 (n + 2) : ℚ)

end

end A358821.P12672995773149391331

noncomputable section

/-- A358821: a(n) is the largest square dividing n^2 - 1.

Offset 2, canonical program `A358821.P12672995773149391331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A358821.P12672995773149391331.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365404.P17834107798748408501

`A365481(A003557(n+1))`
-/

namespace A365404.P17834107798748408501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (A003557 (n + 1)).toNat

end

end A365404.P17834107798748408501

noncomputable section

/-- A365404: The sum of the unitary divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365404.P17834107798748408501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365404 (n : ℕ) : ℤ :=
  A365404.P17834107798748408501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375055.P17814751730417792502

`filter[A000977(n+1), A087049(#)]`
-/

namespace A375055.P17814751730417792502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A375055.P17814751730417792502

noncomputable section

/-- A375055: Nonsquarefree numbers k divisible by at least 3 distinct primes.

Offset 1, canonical program `A375055.P17814751730417792502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5131 terms. -/
def A375055 (n : ℕ) : ℤ :=
  A375055.P17814751730417792502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5131 terms. -/
def A375055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383371.P1134250893838150847

`p?[A028846(n+1)]`
-/

namespace A383371.P1134250893838150847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383371.P1134250893838150847

noncomputable section

/-- A383371: Primes having only {1, 2, 4, 8} as digits.

Offset 1, canonical program `A383371.P1134250893838150847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371 (n : ℕ) : ℤ :=
  A383371.P1134250893838150847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387254.P4440641154738734773

`A389065(n+1)²`
-/

namespace A387254.P4440641154738734773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1) ^ 2

end

end A387254.P4440641154738734773

noncomputable section

/-- A387254: Squares of numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A387254.P4440641154738734773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254 (n : ℕ) : ℤ :=
  A387254.P4440641154738734773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313259.P1861422749685330600

`A004396(A310533(n)+2*n)`
-/

namespace A313259.P1861422749685330600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310533 n + (2 * n : ℤ)).toNat

end

end A313259.P1861422749685330600

noncomputable section

/-- A313259: Coordination sequence Gal.6.204.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313259.P1861422749685330600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259 (n : ℕ) : ℤ :=
  A313259.P1861422749685330600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313779.P5705324669876184418

`A312944(2*n)-4*n`
-/

namespace A313779.P5705324669876184418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 (2 * n) - (4 * n : ℤ)

end

end A313779.P5705324669876184418

noncomputable section

/-- A313779: Coordination sequence Gal.6.328.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313779.P5705324669876184418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A313779 (n : ℕ) : ℤ :=
  A313779.P5705324669876184418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A313779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315473.P5440894521520911496

`A310533(n)+A000034(n)*A128834(n)`
-/

namespace A315473.P5440894521520911496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310533 n + A000034 n * A128834 n

end

end A315473.P5440894521520911496

noncomputable section

/-- A315473: Coordination sequence Gal.6.658.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315473.P5440894521520911496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473 (n : ℕ) : ℤ :=
  A315473.P5440894521520911496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315519.P253301866715473937

`abs(A008592(n)-A312944(n))`
-/

namespace A315519.P253301866715473937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312944 n|

end

end A315519.P253301866715473937

noncomputable section

/-- A315519: Coordination sequence Gal.6.332.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315519.P253301866715473937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315519 (n : ℕ) : ℤ :=
  A315519.P253301866715473937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373933.P14223243970326009727

`A373934(n+2)-A373934(n+1)`
-/

namespace A373933.P14223243970326009727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373934 (n + 2) - A373934 (n + 1)

end

end A373933.P14223243970326009727

noncomputable section

/-- A373933: Number of compositions of 7*n-1 into parts 6 and 7.

Offset 1, canonical program `A373933.P14223243970326009727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373933 (n : ℕ) : ℤ :=
  A373933.P14223243970326009727.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310465.P7677132150427515020

`A310380(n)+A001281(A310533(n)-A310380(n))`
-/

namespace A310465.P7677132150427515020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A001281 (A310533 n - A310380 n).toNat

end

end A310465.P7677132150427515020

noncomputable section

/-- A310465: Coordination sequence Gal.6.342.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310465.P7677132150427515020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465 (n : ℕ) : ℤ :=
  A310465.P7677132150427515020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265743.P10780089586930708631

`a(A215020(n+1))+1` with `a(0)=0`
-/

namespace A265743.P10780089586930708631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A215020 (n + 1)).toNat + 1

end

end A265743.P10780089586930708631

noncomputable section

/-- A265743: a(n) = number of terms of A005187 needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A265743.P10780089586930708631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265743 (n : ℕ) : ℤ :=
  (A265743.P10780089586930708631.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274079.P11049046374545540560

`A000096(A056556(n))+A056560(n)+2`
-/

namespace A274079.P11049046374545540560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A056556 n).toNat + (A056560 n + 2)

end

end A274079.P11049046374545540560

noncomputable section

/-- A274079: Table read by rows: the n-th row is the list of numbers diagonally up and to the right of n in the natural numbers read by antidiagonals.

Offset 1, canonical program `A274079.P11049046374545540560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079 (n : ℕ) : ℤ :=
  A274079.P11049046374545540560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278114.P18284453329078907458

`∑[A105149(2*n+1)+A105149(2*n)]`
-/

namespace A278114.P18284453329078907458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (2 * n + 1) + A105149 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278114.P18284453329078907458

noncomputable section

/-- A278114: Number of primes <= 2n^2.

Offset 1, canonical program `A278114.P18284453329078907458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278114 (n : ℕ) : ℤ :=
  A278114.P18284453329078907458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280509.P5809525915846432635

`A051064(A246200(n+1))`
-/

namespace A280509.P5809525915846432635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A246200 (n + 1)).toNat

end

end A280509.P5809525915846432635

noncomputable section

/-- A280509: a(n) = A051064(A246200(n)); 3-adic valuation of A057889(3*n).

Offset 1, canonical program `A280509.P5809525915846432635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5476 terms. -/
def A280509 (n : ℕ) : ℤ :=
  A280509.P5809525915846432635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5476 terms. -/
def A280509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283978.P12954739794367481226

`A002487(n)-A283976(n)`
-/

namespace A283978.P12954739794367481226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A283976 n

end

end A283978.P12954739794367481226

noncomputable section

/-- A283978: a(2n) = 0, a(2n+1) = A002487(n) AND A002487(n+1), where AND is bitwise-and (A004198).

Offset 0, canonical program `A283978.P12954739794367481226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A283976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283978 (n : ℕ) : ℤ :=
  A283978.P12954739794367481226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A283976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287374.P14008916992974002894

`n+1+char[A269161(n)]+n`
-/

namespace A287374.P14008916992974002894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A287374.P14008916992974002894

noncomputable section

/-- A287374: Positions of 1 in A101666.

Offset 1, canonical program `A287374.P14008916992974002894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287374 (n : ℕ) : ℤ :=
  (A287374.P14008916992974002894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288915.P17477177874724802117

`Δ[comp[A270190(n+1)]]`
-/

namespace A288915.P17477177874724802117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A288915.P17477177874724802117

noncomputable section

/-- A288915: Run lengths in A039704.

Offset 1, canonical program `A288915.P17477177874724802117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915 (n : ℕ) : ℤ :=
  A288915.P17477177874724802117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294283.P1633113175361013834

`A294060(n+1)+A262871(A028310(n))`
-/

namespace A294283.P1633113175361013834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (n + 1) + A262871 (A028310 n).toNat

end

end A294283.P1633113175361013834

noncomputable section

/-- A294283: Sum of the larger parts of the partitions of n into two distinct parts with smaller part squarefree.

Offset 1, canonical program `A294283.P1633113175361013834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294283 (n : ℕ) : ℤ :=
  A294283.P1633113175361013834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294285.P4641961170870907035

`∑[n*char[∏{p}[n, #]]]-A262871(n+1)`
-/

namespace A294285.P4641961170870907035
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A262871 (n + 1)

end

end A294285.P4641961170870907035

noncomputable section

/-- A294285: Sum of the larger parts of the partitions of n into two distinct parts with larger part squarefree.

Offset 1, canonical program `A294285.P4641961170870907035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294285 (n : ℕ) : ℤ :=
  A294285.P4641961170870907035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305800.P15822938426651104625

`A066246(n+1)+2-A000007(n)`
-/

namespace A305800.P15822938426651104625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + (2 - A000007 n)

end

end A305800.P15822938426651104625

noncomputable section

/-- A305800: Filter sequence for a(prime) = constant sequences.

Offset 1, canonical program `A305800.P15822938426651104625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800 (n : ℕ) : ℤ :=
  A305800.P15822938426651104625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309812.P14860242101810124384

`2*A094551(n+1)-1`
-/

namespace A309812.P14860242101810124384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094551 (n + 1) - 1

end

end A309812.P14860242101810124384

noncomputable section

/-- A309812: Odd integers k such that k^2 is arithmetic mean of two other perfect squares.

Offset 1, canonical program `A309812.P14860242101810124384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309812 (n : ℕ) : ℤ :=
  A309812.P14860242101810124384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316844.P16115526743851967488

`A056557(lt[A056559(n), A056558(n)])`
-/

namespace A316844.P16115526743851967488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316844.P16115526743851967488

noncomputable section

/-- A316844: Column 2 of table A316841.

Offset 1, canonical program `A316844.P16115526743851967488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844 (n : ℕ) : ℤ :=
  A316844.P16115526743851967488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316845.P7291579847746609250

`A056558(lt[A056559(n), A056558(n)])`
-/

namespace A316845.P7291579847746609250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316845.P7291579847746609250

noncomputable section

/-- A316845: Column 3 of table A316841.

Offset 1, canonical program `A316845.P7291579847746609250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845 (n : ℕ) : ℤ :=
  A316845.P7291579847746609250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316851.P8837201044806511717

`A070770(lt[A056559(n), A056558(n)])`
-/

namespace A316851.P8837201044806511717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316851.P8837201044806511717

noncomputable section

/-- A316851: Consider integer triangles as listed in rows of table A316841. Sequence gives perimeters of these triangles in the same order.

Offset 1, canonical program `A316851.P8837201044806511717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851 (n : ℕ) : ℤ :=
  A316851.P8837201044806511717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317932.P6928807366266153349

`2^A305439(n+1)`
-/

namespace A317932.P6928807366266153349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305439 (n + 1) : ℤ)

end

end A317932.P6928807366266153349

noncomputable section

/-- A317932: Denominators of certain "Dirichlet Square Root" sequences: a(n) = A046644(n)/(2^A007949(n)).

Offset 1, canonical program `A317932.P6928807366266153349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317932.P6928807366266153349.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317991.P1333235406774140562

`log2(A317989(n+2))`
-/

namespace A317991.P1333235406774140562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A317989 (n + 2) : ℝ)

end

end A317991.P1333235406774140562

noncomputable section

/-- A317991: 2-rank of the narrow class group of the real quadratic field with discriminant A003658(n), n >= 2.

Offset 2, canonical program `A317991.P1333235406774140562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317989, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317991.P1333235406774140562.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317989, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317992.P5649410725794310829

`A001221(A033198(n+1))-1`
-/

namespace A317992.P5649410725794310829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033198 (n + 1)).toNat - 1

end

end A317992.P5649410725794310829

noncomputable section

/-- A317992: 2-rank of the narrow class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317992.P5649410725794310829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992 (n : ℕ) : ℤ :=
  A317992.P5649410725794310829.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318440.P5886094417818087707

`A046645(n+1)-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318440.P5886094417818087707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (n + 1)

end

end A318440.P5886094417818087707

noncomputable section

/-- A318440: a(n) = A046645(n) - A007814(n); the 2-adic valuation of A299150.

Offset 1, canonical program `A318440.P5886094417818087707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440 (n : ℕ) : ℤ :=
  A318440.P5886094417818087707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318513.P7243821554285740695

`∑{d}[A318512(n+1), A001221(#)]`
-/

namespace A318513.P7243821554285740695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A318513.P7243821554285740695

noncomputable section

/-- A318513: The 2-adic valuation of A318512.

Offset 1, canonical program `A318513.P7243821554285740695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318513 (n : ℕ) : ℤ :=
  A318513.P7243821554285740695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318651.P14693122508814225811

`A046644(n+1)/A318512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318651.P14693122508814225811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ)

end

end A318651.P14693122508814225811

noncomputable section

/-- A318651: a(n) = A046644(n)/A318512(n).

Offset 1, canonical program `A318651.P14693122508814225811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318651.P14693122508814225811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318656.P13008805478963827236

`2*A007814(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318656.P13008805478963827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A046645 (n + 1)

end

end A318656.P13008805478963827236

noncomputable section

/-- A318656: The 2-adic valuation of ratio A318649(n)/A318512(n); a(n) = 2*A007814(n) - A046645(n).

Offset 1, canonical program `A318656.P13008805478963827236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656 (n : ℕ) : ℤ :=
  A318656.P13008805478963827236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318959.P9287724268472417125

`A065091(lt[2, A240473(n+1)])`
-/

namespace A318959.P9287724268472417125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A318959.P9287724268472417125

noncomputable section

/-- A318959: Primes p (> 2) such that p - 2 and p - 1 are nonsquarefree.

Offset 1, canonical program `A318959.P9287724268472417125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A318959 (n : ℕ) : ℤ :=
  A318959.P9287724268472417125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A318959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320701.P8423657333563563362

`A000720(A031924(n+1)+1)`
-/

namespace A320701.P8423657333563563362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031924 (n + 1) + 1).toNat

end

end A320701.P8423657333563563362

noncomputable section

/-- A320701: Indices of primes followed by a gap (distance to next larger prime) of 6.

Offset 1, canonical program `A320701.P8423657333563563362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A031924, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320701 (n : ℕ) : ℤ :=
  A320701.P8423657333563563362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A031924, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321516.P138228601672142670

`A070824(n+1)-A087624(n+1)`
-/

namespace A321516.P138228601672142670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A087624 (n + 1)

end

end A321516.P138228601672142670

noncomputable section

/-- A321516: Number of composite divisors of n that are < n.

Offset 1, canonical program `A321516.P138228601672142670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321516 (n : ℕ) : ℤ :=
  A321516.P138228601672142670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325977.P12931186378742614702

`(A034460(n+1)+A325313(n+1))/2`
-/

namespace A325977.P12931186378742614702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + A325313 (n + 1) : ℚ) / 2

end

end A325977.P12931186378742614702

noncomputable section

/-- A325977: a(n) = (1/2)*(A034448(n)+A048250(n)-2*n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A325977.P12931186378742614702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325977.P12931186378742614702.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326059.P7921970760751488691

`A326058(n+1)-A033879(n+1)`
-/

namespace A326059.P7921970760751488691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) - A033879 (n + 1)

end

end A326059.P7921970760751488691

noncomputable section

/-- A326059: a(n) = A285309(n) - n, where A285309 gives the sum of nonsquare divisors of n.

Offset 1, canonical program `A326059.P7921970760751488691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326058, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326059 (n : ℕ) : ℤ :=
  A326059.P7921970760751488691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326058, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326060.P2998260433922690749

`gcd(A033879(n+1), A326058(n+1))`
-/

namespace A326060.P2998260433922690749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A326058 (n + 1))

end

end A326060.P2998260433922690749

noncomputable section

/-- A326060: a(n) = gcd(n-A035316(n), A285309(n)-n), where A035316 and A285309 give respectively the sums of square and nonsquare divisors of n.

Offset 1, canonical program `A326060.P2998260433922690749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326060 (n : ℕ) : ℤ :=
  (A326060.P2998260433922690749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331677.P8782749264935814350

`n-A070046(n+1)`
-/

namespace A331677.P8782749264935814350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070046 (n + 1)

end

end A331677.P8782749264935814350

noncomputable section

/-- A331677: a(n) is the difference between the number of primes smaller than prime(n) (i.e., n-1) and greater than prime(n) but less than 2*prime(n).

Offset 1, canonical program `A331677.P8782749264935814350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331677 (n : ℕ) : ℤ :=
  A331677.P8782749264935814350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332464.P13607079084851042029

`A269174(A000203(n+1))`
-/

namespace A332464.P13607079084851042029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A000203 (n + 1)).toNat

end

end A332464.P13607079084851042029

noncomputable section

/-- A332464: Rule 124 one-dimensional cellular automaton applied for one step to the configuration read from the base-2 expansion of sigma(n), then converted back to decimal.

Offset 1, canonical program `A332464.P13607079084851042029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332464 (n : ℕ) : ℤ :=
  A332464.P13607079084851042029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333465.P8571709817543642968

`A018804(n+1)+A333463(n+1)-A000203(n+1)`
-/

namespace A333465.P8571709817543642968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A333463 (n + 1) - A000203 (n + 1))

end

end A333465.P8571709817543642968

noncomputable section

/-- A333465: a(n) = Sum_{k=1..n} ceiling(n/k) * gcd(n,k).

Offset 1, canonical program `A333465.P8571709817543642968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333465 (n : ℕ) : ℤ :=
  A333465.P8571709817543642968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339451.P5257208981662838490

`∑[A079559(n)]-A182105(n+1)`
-/

namespace A339451.P5257208981662838490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A339451.P5257208981662838490

noncomputable section

/-- A339451: Gray-code-like sequence in which, at each step, the least significant bit that has never been toggled from the previous value, is toggled.

Offset 0, canonical program `A339451.P5257208981662838490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451 (n : ℕ) : ℤ :=
  A339451.P5257208981662838490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340086.P7171776503870000729

`gcd(A129527(n), A340083(n+1))`
-/

namespace A340086.P7171776503870000729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129527 n) (A340083 (n + 1))

end

end A340086.P7171776503870000729

noncomputable section

/-- A340086: a(1) = 0, for n > 1, a(n) = A000265(n-1) / gcd(n-1, A336466(n)).

Offset 1, canonical program `A340086.P7171776503870000729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340086 (n : ℕ) : ℤ :=
  (A340086.P7171776503870000729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342165.P16521807271284690319

`A049084(n+1)+a(A066246(n+1))` with `a(0)=1`
-/

namespace A342165.P16521807271284690319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049084 (n + 1) + a (A066246 (n + 1)).toNat

end

end A342165.P16521807271284690319

noncomputable section

/-- A342165: A fractal-like sequence: erase the terms that have a prime index, the non-erased terms rebuild the original sequence.

Offset 1, canonical program `A342165.P16521807271284690319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342165 (n : ℕ) : ℤ :=
  A342165.P16521807271284690319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343819.P12164081537324373688

`eq[A064547(n+1), A064547(n+2)]+1`
-/

namespace A343819.P12164081537324373688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343819.P12164081537324373688

noncomputable section

/-- A343819: Numbers k such that k and k+1 have the same number of Fermi-Dirac factors (A064547).

Offset 1, canonical program `A343819.P12164081537324373688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819 (n : ℕ) : ℤ :=
  (A343819.P12164081537324373688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345279.P7115677743287407116

`A344931(n+1)+A324966(n+1)`
-/

namespace A345279.P7115677743287407116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A324966 (n + 1)

end

end A345279.P7115677743287407116

noncomputable section

/-- A345279: a(n) = Sum_{p|n} p^((pi(p)+1) mod 2).

Offset 1, canonical program `A345279.P7115677743287407116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345279 (n : ℕ) : ℤ :=
  A345279.P7115677743287407116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346422.P4569030555854337770

`(1+A014081(n))*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346422.P4569030555854337770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A014081 n) * a (A053645 n).toNat

end

end A346422.P4569030555854337770

noncomputable section

/-- A346422: a(n) = (1 + A014081(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A346422.P4569030555854337770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346422 (n : ℕ) : ℤ :=
  A346422.P4569030555854337770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347950.P18371532176146364720

`char[A100345(n)-1]`
-/

namespace A347950.P18371532176146364720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A347950.P18371532176146364720

noncomputable section

/-- A347950: Characteristic function of numbers that have middle divisors.

Offset 1, canonical program `A347950.P18371532176146364720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347950 (n : ℕ) : ℤ :=
  (A347950.P18371532176146364720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348503.P10322559957490935708

`gcd(∑{d}[n+1, #], A048146(n+1))`
-/

namespace A348503.P10322559957490935708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A048146 (n + 1))

end

end A348503.P10322559957490935708

noncomputable section

/-- A348503: a(n) = gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348503.P10322559957490935708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348503 (n : ℕ) : ℤ :=
  (A348503.P10322559957490935708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348983.P13130046007357734622

`∑{d}[n+1, #*A348980((n+1)/#)]`
-/

namespace A348983.P13130046007357734622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A348980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348983.P13130046007357734622

noncomputable section

/-- A348983: a(n) = Sum_{d|n} A038040(d) * A322582(n/d), where A038040(n) = n*d(n), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348983.P13130046007357734622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348983 (n : ℕ) : ℤ :=
  A348983.P13130046007357734622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348984.P8034432277354798354

`gcd(A000203(n+1), A325973(n+1))`
-/

namespace A348984.P8034432277354798354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A325973 (n + 1))

end

end A348984.P8034432277354798354

noncomputable section

/-- A348984: a(n) = gcd(sigma(n), A325973(n)), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348984.P8034432277354798354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348984 (n : ℕ) : ℤ :=
  (A348984.P8034432277354798354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349130.P16374043146752204545

`A038040(n+1)-A348980(n+1)`
-/

namespace A349130.P16374043146752204545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A348980 (n + 1)

end

end A349130.P16374043146752204545

noncomputable section

/-- A349130: a(n) = Sum_{d|n} d * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A349130.P16374043146752204545`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A348980, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349130 (n : ℕ) : ℤ :=
  A349130.P16374043146752204545.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A348980, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349132.P869711925521774844

`A327251(n+1)-A348982(n+1)`
-/

namespace A349132.P869711925521774844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327251 (n + 1) - A348982 (n + 1)

end

end A349132.P869711925521774844

noncomputable section

/-- A349132: a(n) = Sum_{d|n} psi(d) * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and psi is Dedekind psi function, A001615.

Offset 1, canonical program `A349132.P869711925521774844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A348982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349132 (n : ℕ) : ℤ :=
  A349132.P869711925521774844.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A348982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350388.P14803128031435634268

`A071974(n+1)²`
-/

namespace A350388.P14803128031435634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) ^ 2

end

end A350388.P14803128031435634268

noncomputable section

/-- A350388: a(n) is the largest unitary divisor of n that is a square.

Offset 1, canonical program `A350388.P14803128031435634268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388 (n : ℕ) : ℤ :=
  A350388.P14803128031435634268.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351517.P17553045902605292487

`∏{p}[n+1, A345278(#)]`
-/

namespace A351517.P17553045902605292487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A345278 p

end

end A351517.P17553045902605292487

noncomputable section

/-- A351517: a(n) = Product_{p|n, p prime} p^(pi(p) mod 2).

Offset 1, canonical program `A351517.P17553045902605292487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351517 (n : ℕ) : ℤ :=
  A351517.P17553045902605292487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352749.P9390807807202768394

`A000720(n+1)*A035250(n+1)`
-/

namespace A352749.P9390807807202768394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A035250 (n + 1)

end

end A352749.P9390807807202768394

noncomputable section

/-- A352749: a(n) = pi(n) * (pi(2n-1) - pi(n-1)).

Offset 1, canonical program `A352749.P9390807807202768394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352749 (n : ℕ) : ℤ :=
  A352749.P9390807807202768394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353354.P15025921415780628562

`∑{d}[n+1, A332823(#)]`
-/

namespace A353354.P15025921415780628562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332823 d

end

end A353354.P15025921415780628562

noncomputable section

/-- A353354: Inverse Möbius transform of A332823.

Offset 1, canonical program `A353354.P15025921415780628562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353354 (n : ℕ) : ℤ :=
  A353354.P15025921415780628562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353374.P4573974283751582701

`A035263(n+1)*A065043(n+1)`
-/

namespace A353374.P4573974283751582701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A065043 (n + 1)

end

end A353374.P4573974283751582701

noncomputable section

/-- A353374: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an even number, otherwise 0.

Offset 1, canonical program `A353374.P4573974283751582701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353374 (n : ℕ) : ℤ :=
  A353374.P4573974283751582701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353946.P10018284100613643832

`A035250(n+1)^A000720(n+1)-C(2, n+2)`
-/

namespace A353946.P10018284100613643832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035250 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ) - (Nat.choose 2 (n + 2) : ℚ)

end

end A353946.P10018284100613643832

noncomputable section

/-- A353946: a(n) = (pi(2n-1) - pi(n-1))^pi(n) for n > 1, a(1) = 0.

Offset 1, canonical program `A353946.P10018284100613643832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A353946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353946.P10018284100613643832.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A353946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355583.P3000225781261365502

`(A007814(n+1)+1)*(A007949(n+1)+1)*(A112765(n+1)+1)`
-/

namespace A355583.P3000225781261365502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * ((A007949 (n + 1) + 1) * (A112765 (n + 1) + 1))

end

end A355583.P3000225781261365502

noncomputable section

/-- A355583: a(n) is the number of the 5-smooth divisors of n.

Offset 1, canonical program `A355583.P3000225781261365502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A112765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355583 (n : ℕ) : ℤ :=
  A355583.P3000225781261365502.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A112765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355584.P16453104652502697061

`(2^(A007814(n+1)+1)-1)*(3^(A007949(n+1)+1)-1)*(5^(A112765(n+1)+1)-1)/8`
-/

namespace A355584.P16453104652502697061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) * (((3 : ℚ) ^ (A007949 (n + 1) + 1 : ℤ) - 1) * (((5 : ℚ) ^ (A112765 (n + 1) + 1 : ℤ) - 1) / 8))

end

end A355584.P16453104652502697061

noncomputable section

/-- A355584: a(n) is the sum of the 5-smooth divisors of n.

Offset 1, canonical program `A355584.P16453104652502697061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A112765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355584 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355584.P16453104652502697061.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A112765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355750.P5981996292456239035

`A062731(n+1)-A099777(n+1)`
-/

namespace A355750.P5981996292456239035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - A099777 (n + 1)

end

end A355750.P5981996292456239035

noncomputable section

/-- A355750: Sum of the divisors of 2n minus the number of divisors of 2n.

Offset 1, canonical program `A355750.P5981996292456239035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355750 (n : ℕ) : ℤ :=
  A355750.P5981996292456239035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356006.P9495163879456603929

`A007814(n+1)+A007949(n+1)+A112765(n+1)`
-/

namespace A356006.P9495163879456603929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007949 (n + 1) + A112765 (n + 1)

end

end A356006.P9495163879456603929

noncomputable section

/-- A356006: The number of prime divisors of n that are not greater than 5, counted with multiplicity.

Offset 1, canonical program `A356006.P9495163879456603929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A112765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356006 (n : ℕ) : ℤ :=
  A356006.P9495163879456603929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A112765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358336.P1440461923045548440

`∑{d}[n+1, A029935(#)*A183097((n+1)/#)]`
-/

namespace A358336.P1440461923045548440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A183097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358336.P1440461923045548440

noncomputable section

/-- A358336: Multiplicative sequence with a(p^e) = ((p-1) * (1 + e*(e+1)/2) + e) * p^(e-1) for prime p and e > 0.

Offset 1, canonical program `A358336.P1440461923045548440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358336 (n : ℕ) : ℤ :=
  A358336.P1440461923045548440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358346.P10429080455784404753

`A034448(A350389(n+1))`
-/

namespace A358346.P10429080455784404753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A350389 (n + 1)).toNat

end

end A358346.P10429080455784404753

noncomputable section

/-- A358346: a(n) is the sum of the unitary divisors of n that are exponentially odd (A268335).

Offset 1, canonical program `A358346.P10429080455784404753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358346 (n : ℕ) : ℤ :=
  A358346.P10429080455784404753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360162.P1996768474283540312

`A034448(A071974(n+1))`
-/

namespace A360162.P1996768474283540312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A071974 (n + 1)).toNat

end

end A360162.P1996768474283540312

noncomputable section

/-- A360162: a(n) is the sum of the square roots of the unitary divisors of n that are squares.

Offset 1, canonical program `A360162.P1996768474283540312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360162 (n : ℕ) : ℤ :=
  A360162.P1996768474283540312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363341.P11856642166053254809

`A014200(2*(n+1))-(n+1)`
-/

namespace A363341.P11856642166053254809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A363341.P11856642166053254809

noncomputable section

/-- A363341: Number of positive integers k <= n such that round(n/k) is odd.

Offset 1, canonical program `A363341.P11856642166053254809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341 (n : ℕ) : ℤ :=
  A363341.P11856642166053254809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364011.P3082904920966475495

`A364205(n+1)+A002324(n+1)`
-/

namespace A364011.P3082904920966475495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364205 (n + 1) + A002324 (n + 1)

end

end A364011.P3082904920966475495

noncomputable section

/-- A364011: Expansion of Sum_{k>0} x^k / (1 + x^(3*k)).

Offset 1, canonical program `A364011.P3082904920966475495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364011 (n : ℕ) : ℤ :=
  A364011.P3082904920966475495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364082.P5750381891829572794

`A363903(3*(n+1)+n)`
-/

namespace A364082.P5750381891829572794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (3 * (n + 1) + n)

end

end A364082.P5750381891829572794

noncomputable section

/-- A364082: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(4*k-3)).

Offset 1, canonical program `A364082.P5750381891829572794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082 (n : ℕ) : ℤ :=
  A364082.P5750381891829572794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364083.P15159461776881463796

`A363903(4*n+1)`
-/

namespace A364083.P15159461776881463796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (4 * n + 1)

end

end A364083.P15159461776881463796

noncomputable section

/-- A364083: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-3)).

Offset 1, canonical program `A364083.P15159461776881463796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083 (n : ℕ) : ℤ :=
  A364083.P15159461776881463796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365402.P6723311834408339205

`∏{e}[A350389(n+1), #+1]`
-/

namespace A365402.P6723311834408339205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A365402.P6723311834408339205

noncomputable section

/-- A365402: The number of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A365402.P6723311834408339205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365402 (n : ℕ) : ℤ :=
  (A365402.P6723311834408339205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366146.P1044057475554337600

`∑{d}[A360540(n+1), #]`
-/

namespace A366146.P1044057475554337600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366146.P1044057475554337600

noncomputable section

/-- A366146: The sum of divisors of the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A366146.P1044057475554337600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366146 (n : ℕ) : ℤ :=
  (A366146.P1044057475554337600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366247.P12546709701483345304

`A064547(n+1)-A366246(n+1)`
-/

namespace A366247.P12546709701483345304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A366246 (n + 1)

end

end A366247.P12546709701483345304

noncomputable section

/-- A366247: The number of infinitary divisors of n that are "Fermi-Dirac primes" (A050376) and terms of A366243.

Offset 1, canonical program `A366247.P12546709701483345304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A366246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366247 (n : ℕ) : ℤ :=
  A366247.P12546709701483345304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A366246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366600.P10655762037839471457

`(1+A033264(n))*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366600.P10655762037839471457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A033264 n) * a (A053645 n).toNat

end

end A366600.P10655762037839471457

noncomputable section

/-- A366600: a(n) = (1 + A033264(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A366600.P10655762037839471457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366600 (n : ℕ) : ℤ :=
  A366600.P10655762037839471457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367516.P12997703582462291800

`2^A367512(n+1)`
-/

namespace A367516.P12997703582462291800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A367512 (n + 1) : ℤ)

end

end A367516.P12997703582462291800

noncomputable section

/-- A367516: The number of unitary divisors of n that are exponentially evil numbers (A262675).

Offset 1, canonical program `A367516.P12997703582462291800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367516.P12997703582462291800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367988.P9791931490433910697

`∑{d}[A071974(n+1), #]`
-/

namespace A367988.P9791931490433910697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A367988.P9791931490433910697

noncomputable section

/-- A367988: The sum of the divisors of the square root of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367988.P9791931490433910697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367988 (n : ℕ) : ℤ :=
  (A367988.P9791931490433910697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367991.P5779548576678775471

`A048250(n+1)/A367990(n+1)`
-/

namespace A367991.P5779548576678775471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A367990 (n + 1) : ℚ)

end

end A367991.P5779548576678775471

noncomputable section

/-- A367991: The sum of the divisors of the squarefree part of n.

Offset 1, canonical program `A367991.P5779548576678775471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A367990, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367991.P5779548576678775471.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A367990, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368251.P3199248697924659099

`A327527(n+1)-A034444(n+1)`
-/

namespace A368251.P3199248697924659099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1) - A034444 (n + 1)

end

end A368251.P3199248697924659099

noncomputable section

/-- A368251: The number of nonsquarefree divisors of n that are powers of squarefree numbers (A072777).

Offset 1, canonical program `A368251.P3199248697924659099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A327527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368251 (n : ℕ) : ℤ :=
  A368251.P3199248697924659099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A327527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369044.P5345950759641945392

`A014963(A163807(n+1))`
-/

namespace A369044.P5345950759641945392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A163807 (n + 1)).toNat

end

end A369044.P5345950759641945392

noncomputable section

/-- A369044: LCM-transform of bijective bit reverse (A057889).

Offset 1, canonical program `A369044.P5345950759641945392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A369044 (n : ℕ) : ℤ :=
  A369044.P5345950759641945392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A369044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369718.P16530112575577134757

`A091306(n+1)*A360720(n+1)`
-/

namespace A369718.P16530112575577134757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (n + 1) * A360720 (n + 1)

end

end A369718.P16530112575577134757

noncomputable section

/-- A369718: The sum of unitary divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369718.P16530112575577134757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369718 (n : ℕ) : ℤ :=
  A369718.P16530112575577134757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370079.P17725464824544906365

`∏{e}[A350389(n+1), #]`
-/

namespace A370079.P17725464824544906365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A370079.P17725464824544906365

noncomputable section

/-- A370079: The product of the odd exponents of the prime factorization of n.

Offset 1, canonical program `A370079.P17725464824544906365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370079 (n : ℕ) : ℤ :=
  (A370079.P17725464824544906365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372539.P15910707666179442912

`A000720(A095072(n+1))`
-/

namespace A372539.P15910707666179442912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095072 (n + 1)).toNat

end

end A372539.P15910707666179442912

noncomputable section

/-- A372539: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is -1.

Offset 1, canonical program `A372539.P15910707666179442912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539 (n : ℕ) : ℤ :=
  A372539.P15910707666179442912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375230.P7295009914355440211

`3^A064547(n+1)`
-/

namespace A375230.P7295009914355440211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A375230.P7295009914355440211

noncomputable section

/-- A375230: The total number of infinitary divisors of the infinitary divisors of n.

Offset 1, canonical program `A375230.P7295009914355440211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375230 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375230.P7295009914355440211.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377019.P8238063563762477433

`eq[A001221(n+1), A376885(n+1)]+1`
-/

namespace A377019.P8238063563762477433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377019.P8238063563762477433

noncomputable section

/-- A377019: Numbers whose prime factorization has exponents that are all factorial numbers.

Offset 1, canonical program `A377019.P8238063563762477433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019 (n : ℕ) : ℤ :=
  (A377019.P8238063563762477433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380839.P1105865872776131656

`A173557(n+1)/A305444(n+1)*A307410(n+1)`
-/

namespace A380839.P1105865872776131656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A305444 (n + 1) : ℚ) * (A307410 (n + 1) : ℚ)

end

end A380839.P1105865872776131656

noncomputable section

/-- A380839: Numerators of J(n) = Product_{p|n, p odd prime} (p - 1)/(p - 2).

Offset 1, canonical program `A380839.P1105865872776131656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380839.P1105865872776131656.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382290.P2377806297881400849

`A064547(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382290.P2377806297881400849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A001221 (n + 1)

end

end A382290.P2377806297881400849

noncomputable section

/-- A382290: a(n) = A064547(n) - A001221(n).

Offset 1, canonical program `A382290.P2377806297881400849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382290 (n : ℕ) : ℤ :=
  A382290.P2377806297881400849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382292.P11441178726949856059

`eq[A001221(n+1)+1, A064547(n+1)]+1`
-/

namespace A382292.P11441178726949856059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382292.P11441178726949856059

noncomputable section

/-- A382292: Numbers k such that A382290(k) = 1.

Offset 1, canonical program `A382292.P11441178726949856059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A382292 (n : ℕ) : ℤ :=
  (A382292.P11441178726949856059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A382292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382420.P7625293795778711111

`A056170(A046099(n+1))`
-/

namespace A382420.P7625293795778711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046099 (n + 1)).toNat

end

end A382420.P7625293795778711111

noncomputable section

/-- A382420: The number of non-unitary prime divisors of the noncubefree numbers.

Offset 1, canonical program `A382420.P7625293795778711111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1681 terms. -/
def A382420 (n : ℕ) : ℤ :=
  A382420.P7625293795778711111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1681 terms. -/
def A382420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382425.P14354733787958842001

`A382423(n+1)+A382424(n+1)`
-/

namespace A382425.P14354733787958842001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382423 (n + 1) + A382424 (n + 1)

end

end A382425.P14354733787958842001

noncomputable section

/-- A382425: The number of non-unitary prime divisors of the biquadratefree numbers.

Offset 1, canonical program `A382425.P14354733787958842001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382423, A382424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382425 (n : ℕ) : ℤ :=
  A382425.P14354733787958842001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382423, A382424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382890.P5080446729015347365

`sqrt(A382889(n+1))`
-/

namespace A382890.P5080446729015347365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382889 (n + 1) : ℝ)

end

end A382890.P5080446729015347365

noncomputable section

/-- A382890: The square root of the largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382890.P5080446729015347365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382890.P5080446729015347365.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382891.P5915587379995941909

`A004709(n+1)/A382889(n+1)`
-/

namespace A382891.P5915587379995941909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382889 (n + 1) : ℚ)

end

end A382891.P5915587379995941909

noncomputable section

/-- A382891: The powerfree part of the n-th cubefree number.

Offset 1, canonical program `A382891.P5915587379995941909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382891.P5915587379995941909.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383769.P11406854060680008032

`ceil(A318512(n+1)/2^val(n+1, 2))`
-/

namespace A383769.P11406854060680008032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318512 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉

end

end A383769.P11406854060680008032

noncomputable section

/-- A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

Offset 1, canonical program `A383769.P11406854060680008032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769 (n : ℕ) : ℤ :=
  A383769.P11406854060680008032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384531.P15070268753136582785

`∑{d}[n+1, A018804(#)*A173557((n+1)/#)]`
-/

namespace A384531.P15070268753136582785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A173557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384531.P15070268753136582785

noncomputable section

/-- A384531: Multiplicative sequence a(n) with a(p^e) = ((2*e+1) * p - 2*e) * p^(e-1) for prime p and e >= 0.

Offset 1, canonical program `A384531.P15070268753136582785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384531 (n : ℕ) : ℤ :=
  A384531.P15070268753136582785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384868.P5511449840220434533

`A231204(A054429(n+1))-A231204(n+1)`
-/

namespace A384868.P5511449840220434533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A054429 (n + 1)).toNat - A231204 (n + 1)

end

end A384868.P5511449840220434533

noncomputable section

/-- A384868: a(n) = Sum_{i=1...|b|} i*(-1)^b_i where b is the lexicographically n-th binary string.

Offset 0, canonical program `A384868.P5511449840220434533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868 (n : ℕ) : ℤ :=
  A384868.P5511449840220434533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385045.P3641014629195364561

`A034448(A065330(n+1))`
-/

namespace A385045.P3641014629195364561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A065330 (n + 1)).toNat

end

end A385045.P3641014629195364561

noncomputable section

/-- A385045: The sum of the unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385045.P3641014629195364561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045 (n : ℕ) : ℤ :=
  A385045.P3641014629195364561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391211.P8292871902387921407

`A054541(A121543(n+2))`
-/

namespace A391211.P8292871902387921407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A121543 (n + 2)).toNat

end

end A391211.P8292871902387921407

noncomputable section

/-- A391211: Difference between A333242(n) and the next lower prime number.

Offset 2, canonical program `A391211.P8292871902387921407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8935 terms. -/
def A391211 (n : ℕ) : ℤ :=
  A391211.P8292871902387921407.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8935 terms. -/
def A391211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392055.P15206338133621600335

`A014963(A354031(n+1)+n+1)`
-/

namespace A392055.P15206338133621600335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A354031 (n + 1) + (n + 1 : ℤ)).toNat

end

end A392055.P15206338133621600335

noncomputable section

/-- A392055: a(n) = p if n = p^k is a perfect power of either a ramified or inert prime in the Gaussian integers and 1 otherwise.

Offset 1, canonical program `A392055.P15206338133621600335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055 (n : ℕ) : ℤ :=
  A392055.P15206338133621600335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265510.P3655784241704673795

`A007088(A265509(n))`
-/

namespace A265510.P3655784241704673795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265509 n).toNat

end

end A265510.P3655784241704673795

noncomputable section

/-- A265510: a(n) = largest base-2 palindrome m <= 2n+1 such that every base-2 digit of m is <= the corresponding digit of 2n+1; m is written in base 2.

Offset 0, canonical program `A265510.P3655784241704673795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265510 (n : ℕ) : ℤ :=
  A265510.P3655784241704673795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267135.P1163518685697158345

`2*(n+1)-A138971(n+1)`
-/

namespace A267135.P1163518685697158345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A138971 (n + 1)

end

end A267135.P1163518685697158345

noncomputable section

/-- A267135: a(n) = n minus the number of primes of form 4m + 1 that are less than n-th prime of form 4m + 3.

Offset 1, canonical program `A267135.P1163518685697158345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135 (n : ℕ) : ℤ :=
  A267135.P1163518685697158345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267357.P14963580651497646829

`A269174(a(n-1))` with `a(0)=1`
-/

namespace A267357.P14963580651497646829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269174 (a (n - 1)).toNat

end

end A267357.P14963580651497646829

noncomputable section

/-- A267357: Decimal representation of the n-th iteration of the "Rule 124" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267357.P14963580651497646829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267357 (n : ℕ) : ℤ :=
  A267357.P14963580651497646829.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267891.P13368573259135657762

`eq[16, A054844(n+1)]+1`
-/

namespace A267891.P13368573259135657762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267891.P13368573259135657762

noncomputable section

/-- A267891: Numbers with 8 odd divisors.

Offset 1, canonical program `A267891.P13368573259135657762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891 (n : ℕ) : ℤ :=
  (A267891.P13368573259135657762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269704.P3345989859340557520

`∩[A024704(n+1), A080147(n+1)]`
-/

namespace A269704.P3345989859340557520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269704.P3345989859340557520

noncomputable section

/-- A269704: Numbers k such that prime(k) == 1 (mod 8).

Offset 1, canonical program `A269704.P3345989859340557520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A269704 (n : ℕ) : ℤ :=
  (A269704.P3345989859340557520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A269704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270544.P6791323703914777716

`4*A060831(n)+n%2+n`
-/

namespace A270544.P6791323703914777716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060831 n + ((n % 2 + n : ℕ) : ℤ)

end

end A270544.P6791323703914777716

noncomputable section

/-- A270544: Number of ordered pairs (i,j) with |i|, |j| <= n, |i * j| <= n, and i odd.

Offset 0, canonical program `A270544.P6791323703914777716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270544 (n : ℕ) : ℤ :=
  A270544.P6791323703914777716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273401.P1165814043605019566

`eq[A054844(n+2), A054844(n+1)]+1`
-/

namespace A273401.P1165814043605019566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273401.P1165814043605019566

noncomputable section

/-- A273401: Numbers n such that n and n + 1 have exactly the same number of odd divisors.

Offset 1, canonical program `A273401.P1165814043605019566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401 (n : ℕ) : ℤ :=
  (A273401.P1165814043605019566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274357.P15400264292422820349

`A030626(eq[1, A030626(n+1)-A111398(n+1)])`
-/

namespace A274357.P15400264292422820349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1) - A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274357.P15400264292422820349

noncomputable section

/-- A274357: Numbers n such that n and n+1 both have 8 divisors.

Offset 1, canonical program `A274357.P15400264292422820349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A274357 (n : ℕ) : ℤ :=
  A274357.P15400264292422820349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A274357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275418.P17647390156546014803

`eq[A054844(n+3), A054844(n+1)]+2`
-/

namespace A275418.P17647390156546014803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A275418.P17647390156546014803

noncomputable section

/-- A275418: Numbers n such that n - 1 has exactly as many odd divisors as n + 1.

Offset 1, canonical program `A275418.P17647390156546014803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418 (n : ℕ) : ℤ :=
  (A275418.P17647390156546014803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276379.P10581108024537777216

`A007088(A087207(n+1))`
-/

namespace A276379.P10581108024537777216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A087207 (n + 1)).toNat

end

end A276379.P10581108024537777216

noncomputable section

/-- A276379: Write a "1" for each distinct prime divisor p of n in the (pi(p) - 1)-th place, ignoring multiplicity.

Offset 1, canonical program `A276379.P10581108024537777216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276379 (n : ℕ) : ℤ :=
  A276379.P10581108024537777216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280469.P12523109073399917992

`filter[A067888(n+1), A379971(#)]`
-/

namespace A280469.P12523109073399917992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P12523109073399917992

noncomputable section

/-- A280469: Numbers n such that n-1 and n+1 are squarefree and have the same number of prime factors.

Offset 1, canonical program `A280469.P12523109073399917992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. -/
def A280469 (n : ℕ) : ℤ :=
  A280469.P12523109073399917992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. -/
def A280469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280728.P2681727417312641949

`A183063(A000032(n))`
-/

namespace A280728.P2681727417312641949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000032 n).toNat

end

end A280728.P2681727417312641949

noncomputable section

/-- A280728: Number of even divisors of Lucas(n).

Offset 0, canonical program `A280728.P2681727417312641949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280728 (n : ℕ) : ℤ :=
  A280728.P2681727417312641949.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283973.P12202427252811082316

`lt[A283988(n+1), 1]+1`
-/

namespace A283973.P12202427252811082316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283973.P12202427252811082316

noncomputable section

/-- A283973: Numbers n such that A007306(n) = A283986(n); positions of zeros in A283988.

Offset 1, canonical program `A283973.P12202427252811082316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A283973 (n : ℕ) : ℤ :=
  (A283973.P12202427252811082316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A283973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283974.P17363378362124844892

`comp[lt[A283988(n+1), 1]]+1`
-/

namespace A283974.P17363378362124844892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A283974.P17363378362124844892

noncomputable section

/-- A283974: Numbers n for which A002487(n-1) AND A002487(n) > 0 where AND is bitwise-and (A004198).

Offset 1, canonical program `A283974.P17363378362124844892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283974 (n : ℕ) : ℤ :=
  (A283974.P17363378362124844892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288041.P16531561564463658720

`eq[2, A000005(A034964(n+1))]+1`
-/

namespace A288041.P16531561564463658720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034964 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288041.P16531561564463658720

noncomputable section

/-- A288041: Numbers k such that prime(k) + prime(k+1) + ... + prime(k+4) is prime.

Offset 1, canonical program `A288041.P16531561564463658720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A288041 (n : ℕ) : ℤ :=
  (A288041.P16531561564463658720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A288041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291549.P17778341340060570744

`∩[A039770(n+1), A291167(n+1)]`
-/

namespace A291549.P17778341340060570744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291549.P17778341340060570744

noncomputable section

/-- A291549: Numbers n such that both phi(n) and psi(n) are perfect squares.

Offset 1, canonical program `A291549.P17778341340060570744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549 (n : ℕ) : ℤ :=
  (A291549.P17778341340060570744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291770.P14763637493214319991

`A035327(A289831(n+1))`
-/

namespace A291770.P14763637493214319991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A289831 (n + 1)).toNat

end

end A291770.P14763637493214319991

noncomputable section

/-- A291770: A binary encoding of the zeros in ternary representation of n.

Offset 1, canonical program `A291770.P14763637493214319991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A291770 (n : ℕ) : ℤ :=
  A291770.P14763637493214319991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A291770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295303.P8470606991534144988

`round(sin(atan(A295301(n+1))))`
-/

namespace A295303.P8470606991534144988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A295301 (n + 1) : ℝ)))

end

end A295303.P8470606991534144988

noncomputable section

/-- A295303: a(n) = +1 if n > phi(sigma(n)), -1 if n < phi(sigma(n)), and 0 if n = phi(sigma(n)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295303.P8470606991534144988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303 (n : ℕ) : ℤ :=
  A295303.P8470606991534144988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295309.P8495486040454173549

`ceil(A295301(n+1)/A160664(n))`
-/

namespace A295309.P8495486040454173549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A160664 n : ℚ)⌉

end

end A295309.P8495486040454173549

noncomputable section

/-- A295309: Characteristic function for A295307: a(n) = 1 if n > phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295309.P8495486040454173549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309 (n : ℕ) : ℤ :=
  A295309.P8495486040454173549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295310.P14660383633070597932

`gcd(A000027(n+1), A295301(n+1))`
-/

namespace A295310.P14660383633070597932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A295301 (n + 1))

end

end A295310.P14660383633070597932

noncomputable section

/-- A295310: a(n) = gcd(n, A062401(n)), where A062401(n) = phi(sigma(n)).

Offset 1, canonical program `A295310.P14660383633070597932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295310 (n : ℕ) : ℤ :=
  (A295310.P14660383633070597932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296084.P5567096927429281005

`A121373((A296082(n+1)+9)²)`
-/

namespace A296084.P5567096927429281005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((A296082 (n + 1) + 9) ^ 2).toNat

end

end A296084.P5567096927429281005

noncomputable section

/-- A296084: a(1) = 0 and for n > 1, a(n) = 1 if tau(n)-1 divides sigma(n)-1, 0 otherwise. Here tau = A000005, sigma = A000203.

Offset 1, canonical program `A296084.P5567096927429281005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296084 (n : ℕ) : ℤ :=
  A296084.P5567096927429281005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296213.P8375901246265267104

`char[A063532(n+1)-1]`
-/

namespace A296213.P8375901246265267104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296213.P8375901246265267104

noncomputable section

/-- A296213: a(n) = 1 if both 1+phi(k) and 1+sigma(k) are squares, 0 otherwise.

Offset 1, canonical program `A296213.P8375901246265267104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213 (n : ℕ) : ℤ :=
  (A296213.P8375901246265267104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297117.P14003803636479694355

`A297114(n+1)+A051953(n+1)`
-/

namespace A297117.P14003803636479694355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A051953 (n + 1)

end

end A297117.P14003803636479694355

noncomputable section

/-- A297117: Möbius transform of A011371, n minus (number of 1's in binary expansion of n).

Offset 1, canonical program `A297117.P14003803636479694355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297117 (n : ℕ) : ℤ :=
  A297117.P14003803636479694355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303479.P8152554123791237719

`A303481(n+1)-2*A303973(n+1)`
-/

namespace A303479.P8152554123791237719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303481 (n + 1) - 2 * A303973 (n + 1)

end

end A303479.P8152554123791237719

noncomputable section

/-- A303479: Total volume of the family of rectangular prisms with dimensions p, q, and |q - p| where p divides q, n = p + q and p < q.

Offset 1, canonical program `A303479.P8152554123791237719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303479 (n : ℕ) : ℤ :=
  A303479.P8152554123791237719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306345.P6612547379326574336

`abs(A001221(n+1)-A055212(n+1))`
-/

namespace A306345.P6612547379326574336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001221 (n + 1) - A055212 (n + 1)|

end

end A306345.P6612547379326574336

noncomputable section

/-- A306345: Absolute difference between the number of prime divisors and the number of composite divisors of n.

Offset 1, canonical program `A306345.P6612547379326574336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306345 (n : ℕ) : ℤ :=
  A306345.P6612547379326574336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317841.P1605425394467167167

`A000010(n+1)-A317839(n+1)`
-/

namespace A317841.P1605425394467167167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A317839 (n + 1)

end

end A317841.P1605425394467167167

noncomputable section

/-- A317841: Möbius transform of A284013 (= n - A002487(n)), where A002487 is Stern's Diatomic sequence.

Offset 1, canonical program `A317841.P1605425394467167167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A317839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A317841 (n : ℕ) : ℤ :=
  A317841.P1605425394467167167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A317839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A317841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319225.P16688211917328614942

`A028310(abs(A330415(n+1)))`
-/

namespace A319225.P16688211917328614942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A330415 (n + 1)|.toNat

end

end A319225.P16688211917328614942

noncomputable section

/-- A319225: Number of acyclic spanning subgraphs of a cycle graph, where the sizes of the connected components are given by the prime indices of n.

Offset 1, canonical program `A319225.P16688211917328614942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319225 (n : ℕ) : ℤ :=
  A319225.P16688211917328614942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319659.P863151469873212101

`log2(A003640(n+1))`
-/

namespace A319659.P863151469873212101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003640 (n + 1) : ℝ)

end

end A319659.P863151469873212101

noncomputable section

/-- A319659: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A003657(n).

Offset 1, canonical program `A319659.P863151469873212101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319659.P863151469873212101.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324331.P176680532726837166

`A069249(n+1)-Δ[n²]`
-/

namespace A324331.P176680532726837166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A324331.P176680532726837166

noncomputable section

/-- A324331: a(n) = (n-1)^2 - phi(n)*sigma(n), where phi is A000010 and sigma is A000203.

Offset 1, canonical program `A324331.P176680532726837166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324331 (n : ℕ) : ℤ :=
  A324331.P176680532726837166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324639.P17877870540520381496

`eq[(A318466(n+1)-A318467(n+1))/2, A318458(n+1)]+1`
-/

namespace A324639.P17877870540520381496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318466 (n + 1) - A318467 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A324639.P17877870540520381496

noncomputable section

/-- A324639: Numbers k such that bitand(2k,sigma(k)) = 2*bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324639.P17877870540520381496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639 (n : ℕ) : ℤ :=
  (A324639.P17877870540520381496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324745.P1964975310352198901

`∩[A007774(n+1), A039770(n+1)]`
-/

namespace A324745.P1964975310352198901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324745.P1964975310352198901

noncomputable section

/-- A324745: Numbers k with exactly two distinct prime factors and such that phi(k) is a square.

Offset 1, canonical program `A324745.P1964975310352198901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A324745 (n : ℕ) : ℤ :=
  (A324745.P1964975310352198901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A324745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325093.P294070785817657769

`record[A007913(A318400(n+1))]`
-/

namespace A325093.P294070785817657769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A318400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325093.P294070785817657769

noncomputable section

/-- A325093: Heinz numbers of integer partitions into distinct powers of 2.

Offset 1, canonical program `A325093.P294070785817657769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A325093 (n : ℕ) : ℤ :=
  A325093.P294070785817657769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A325093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325321.P4412432402840763013

`A010052(A051953(n+1))`
-/

namespace A325321.P4412432402840763013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051953 (n + 1)).toNat

end

end A325321.P4412432402840763013

noncomputable section

/-- A325321: a(n) = 1 if cototient of n is a square, 0 otherwise.

Offset 1, canonical program `A325321.P4412432402840763013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325321 (n : ℕ) : ℤ :=
  A325321.P4412432402840763013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330740.P3370590016903294651

`A117967(abs(A117966(n)))`
-/

namespace A330740.P3370590016903294651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 |A117966 n|.toNat

end

end A330740.P3370590016903294651

noncomputable section

/-- A330740: a(n) = min(n, A004488(n)), where A004488(n) is base-3 sum n+n without carries.

Offset 0, canonical program `A330740.P3370590016903294651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740 (n : ℕ) : ℤ :=
  A330740.P3370590016903294651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331133.P4944719196915576697

`A331132(n+1)/2`
-/

namespace A331133.P4944719196915576697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331132 (n + 1) : ℚ) / 2

end

end A331133.P4944719196915576697

noncomputable section

/-- A331133: a(n) = Sum_{i=1..n} d(i)^2*d(i+1)/2, where d(n) = A000005(n).

Offset 1, canonical program `A331133.P4944719196915576697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331133.P4944719196915576697.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333168.P11188141478812584799

`∑[A333167(n)]`
-/

namespace A333168.P11188141478812584799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P11188141478812584799

noncomputable section

/-- A333168: a(n) = Sum_{k=0..n} r_2(k^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333168.P11188141478812584799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333168 (n : ℕ) : ℤ :=
  A333168.P11188141478812584799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333171.P4309938117730159280

`∑[A333167(n)/A105397(n)]`
-/

namespace A333171.P4309938117730159280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333167 n : ℚ) / (A105397 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P4309938117730159280

noncomputable section

/-- A333171: a(n) = Sum_{k=0..n} d(k^2 + 1), where d(k) is the number of divisors of k (A000005).

Offset 0, canonical program `A333171.P4309938117730159280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333171.P4309938117730159280.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333909.P16369031029610307077

`eq[1, A229062(A062570(n+1))]+1`
-/

namespace A333909.P16369031029610307077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A062570 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333909.P16369031029610307077

noncomputable section

/-- A333909: Numbers k such that phi(k) is the sum of 2 squares, where phi is the Euler totient function (A000010).

Offset 1, canonical program `A333909.P16369031029610307077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333909 (n : ℕ) : ℤ :=
  (A333909.P16369031029610307077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336564.P5928910573233431199

`A336563(n+1)+A033879(n+1)`
-/

namespace A336564.P5928910573233431199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + A033879 (n + 1)

end

end A336564.P5928910573233431199

noncomputable section

/-- A336564: a(n) = n - A308135(n), where A308135(n) is the sum of non-coreful divisors of n.

Offset 1, canonical program `A336564.P5928910573233431199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A336563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336564 (n : ℕ) : ℤ :=
  A336564.P5928910573233431199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A336563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336566.P12315522764219514752

`gcd(n+2-∑{d}[n+1, #]+n, A336563(n+1))`
-/

namespace A336566.P12315522764219514752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (n : ℤ)) (A336563 (n + 1))

end

end A336566.P12315522764219514752

noncomputable section

/-- A336566: a(n) = gcd(A336563(n), A336564(n)) = gcd(A057723(n)-n, n-A308135(n)).

Offset 1, canonical program `A336566.P12315522764219514752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336566 (n : ℕ) : ℤ :=
  (A336566.P12315522764219514752.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337106.P11641309545225411868

`A153823(n)-A157928(n)`
-/

namespace A337106.P11641309545225411868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n - A157928 n

end

end A337106.P11641309545225411868

noncomputable section

/-- A337106: Number of nontrivial divisors of n!.

Offset 0, canonical program `A337106.P11641309545225411868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337106 (n : ℕ) : ℤ :=
  A337106.P11641309545225411868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337257.P14876870470645707118

`A027423(n)-A336940(n)`
-/

namespace A337257.P14876870470645707118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A336940 n

end

end A337257.P14876870470645707118

noncomputable section

/-- A337257: Number of even divisors of n!.

Offset 0, canonical program `A337257.P14876870470645707118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337257 (n : ℕ) : ℤ :=
  A337257.P14876870470645707118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337910.P11596621976641212789

`A087688(n+1)/A087782(n+1)`
-/

namespace A337910.P11596621976641212789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087688 (n + 1) : ℚ) / (A087782 (n + 1) : ℚ)

end

end A337910.P11596621976641212789

noncomputable section

/-- A337910: Integers of the form (the number of nonnegative bases m < n such that m^3 == m (mod n))/(the number of nonnegative bases m < n such that -m^3 == m (mod n)).

Offset 1, canonical program `A337910.P11596621976641212789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337910.P11596621976641212789.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341746.P1855135683892942832

`A341916(A053644(n+1)*A280995(n+1))`
-/

namespace A341746.P1855135683892942832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A053644 (n + 1) * A280995 (n + 1)).toNat

end

end A341746.P1855135683892942832

noncomputable section

/-- A341746: If the runs in the binary expansion of n are (r_1, ..., r_k), then the runs in the binary expansion of a(n) are (r_1 + ... + r_k, r_1, ..., r_{k-1}).

Offset 1, canonical program `A341746.P1855135683892942832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341746 (n : ℕ) : ℤ :=
  A341746.P1855135683892942832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342534.P15358775689638602389

`∑{d}[n+1, A007431(#)*A029939((n+1)/#)]`
-/

namespace A342534.P15358775689638602389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A029939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342534.P15358775689638602389

noncomputable section

/-- A342534: a(n) = Sum_{k=1..n} phi(gcd(k, n))^2.

Offset 1, canonical program `A342534.P15358775689638602389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342534 (n : ℕ) : ℤ :=
  A342534.P15358775689638602389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342535.P1287221588278345036

`∑{d}[n+1, A007431(#)*A338997((n+1)/#)]`
-/

namespace A342535.P1287221588278345036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A338997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342535.P1287221588278345036

noncomputable section

/-- A342535: a(n) = Sum_{k=1..n} phi(gcd(k, n))^3.

Offset 1, canonical program `A342535.P1287221588278345036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342535 (n : ℕ) : ℤ :=
  A342535.P1287221588278345036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343501.P17916702806192043918

`2*A338691(n+1)`
-/

namespace A343501.P17916702806192043918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338691 (n + 1)

end

end A343501.P17916702806192043918

noncomputable section

/-- A343501: Positions of 4's in A003324.

Offset 1, canonical program `A343501.P17916702806192043918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501 (n : ℕ) : ℤ :=
  A343501.P17916702806192043918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343656.P8994259511323762319

`A000005(A009998(n))`
-/

namespace A343656.P8994259511323762319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009998 n).toNat

end

end A343656.P8994259511323762319

noncomputable section

/-- A343656: Array read by antidiagonals where A(n,k) is the number of divisors of n^k.

Offset 1, canonical program `A343656.P8994259511323762319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343656 (n : ℕ) : ℤ :=
  A343656.P8994259511323762319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344687.P14717226967310331617

`floor(∑[A038024(n+1)/2])`
-/

namespace A344687.P14717226967310331617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038024 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A344687.P14717226967310331617

noncomputable section

/-- A344687: a(n) is the lowest nonnegative exponent k such that n!^k is the product of the divisors of n!.

Offset 1, canonical program `A344687.P14717226967310331617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687 (n : ℕ) : ℤ :=
  A344687.P14717226967310331617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345674.P823125279381487032

`A000010(n+1)-A046144(n+1)`
-/

namespace A345674.P823125279381487032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A046144 (n + 1)

end

end A345674.P823125279381487032

noncomputable section

/-- A345674: Euler totient function phi(n) - number of primitive roots modulo n.

Offset 1, canonical program `A345674.P823125279381487032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A046144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345674 (n : ℕ) : ℤ :=
  A345674.P823125279381487032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A046144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346010.P5513981083379835901

`A000005(n+1)/gcd(A000005(n+1), A062799(n+1))`
-/

namespace A346010.P5513981083379835901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A062799 (n + 1)) : ℚ)

end

end A346010.P5513981083379835901

noncomputable section

/-- A346010: a(n) is the denominator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346010.P5513981083379835901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346010.P5513981083379835901.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346692.P12280756729807432709

`A000010(n+1)-A054571(n+1)`
-/

namespace A346692.P12280756729807432709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A054571 (n + 1)

end

end A346692.P12280756729807432709

noncomputable section

/-- A346692: a(n) = phi(n) - phi(n-phi(n)), a(1) = 1.

Offset 1, canonical program `A346692.P12280756729807432709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A054571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346692 (n : ℕ) : ℤ :=
  A346692.P12280756729807432709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A054571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346692.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347737.P5866675298143105702

`A006463(n+1)-A060831(n)`
-/

namespace A347737.P5866675298143105702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) - A060831 n

end

end A347737.P5866675298143105702

noncomputable section

/-- A347737: Zero together with the partial sums of A238005.

Offset 0, canonical program `A347737.P5866675298143105702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006463, A060831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347737 (n : ℕ) : ℤ :=
  A347737.P5866675298143105702.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006463, A060831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347737.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348077.P4273143389917239204

`∩[A348076(n+1)-1, A348076(n+1)]`
-/

namespace A348077.P4273143389917239204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348077.P4273143389917239204

noncomputable section

/-- A348077: Starts of runs of 3 consecutive numbers that have an equal number of even and odd exponents in their prime factorization (A187039).

Offset 1, canonical program `A348077.P4273143389917239204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A348077 (n : ℕ) : ℤ :=
  (A348077.P4273143389917239204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A348077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348345.P4539488916826781607

`A023443(∩[A083795(n+1), A162643(n+1)])`
-/

namespace A348345.P4539488916826781607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A348345.P4539488916826781607

noncomputable section

/-- A348345: Number k such that k and k+1 have the same positive number of noninfinitary divisors (A348341).

Offset 1, canonical program `A348345.P4539488916826781607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A348345 (n : ℕ) : ℤ :=
  A348345.P4539488916826781607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A348345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348915.P13373623292540873174

`A000593(n+1)+A183063(n+1)`
-/

namespace A348915.P13373623292540873174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A183063 (n + 1)

end

end A348915.P13373623292540873174

noncomputable section

/-- A348915: a(n) = Sum_{d|n} d^(d mod 2).

Offset 1, canonical program `A348915.P13373623292540873174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348915 (n : ℕ) : ℤ :=
  A348915.P13373623292540873174.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348952.P8554637893616273279

`Δ[A000196(n)]-A305152(n+1)`
-/

namespace A348952.P8554637893616273279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A305152 (n + 1)

end

end A348952.P8554637893616273279

noncomputable section

/-- A348952: a(n) = -Sum_{d|n, d < sqrt(n)} (-1)^(d + n/d).

Offset 1, canonical program `A348952.P8554637893616273279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348952 (n : ℕ) : ℤ :=
  A348952.P8554637893616273279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348976.P9987790780550882752

`A000010(n+1)+A300251(n+1)`
-/

namespace A348976.P9987790780550882752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A300251 (n + 1)

end

end A348976.P9987790780550882752

noncomputable section

/-- A348976: Möbius transform of A129283, which is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348976.P9987790780550882752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348976 (n : ℕ) : ℤ :=
  A348976.P9987790780550882752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349360.P4810529674749984531

`A184389(n+1)+A335567(n+1)`
-/

namespace A349360.P4810529674749984531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + A335567 (n + 1)

end

end A349360.P4810529674749984531

noncomputable section

/-- A349360: Number of positive integer pairs (s,t), with s,t <= n and s <= t such that either both s and t divide n or both do not.

Offset 1, canonical program `A349360.P4810529674749984531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184389, A335567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349360 (n : ℕ) : ℤ :=
  A349360.P4810529674749984531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184389, A335567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351444.P16678748484825930213

`A322582(n+1)+A351442(n+1)`
-/

namespace A351444.P16678748484825930213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A351442 (n + 1)

end

end A351444.P16678748484825930213

noncomputable section

/-- A351444: a(n) = n - A003958(n) + A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351444.P16678748484825930213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351444 (n : ℕ) : ℤ :=
  A351444.P16678748484825930213.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351445.P1347753034350702190

`A351442(n+1)-A003958(n+1)`
-/

namespace A351445.P1347753034350702190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (n + 1) - A003958 (n + 1)

end

end A351445.P1347753034350702190

noncomputable section

/-- A351445: a(n) = A003958(sigma(n)) - A003958(n), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351445.P1347753034350702190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351445 (n : ℕ) : ℤ :=
  A351445.P1347753034350702190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351561.P9711075868512573755

`A000005(n+1)+A051953(n+1)`
-/

namespace A351561.P9711075868512573755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A051953 (n + 1)

end

end A351561.P9711075868512573755

noncomputable section

/-- A351561: a(n) = n + d(n) - phi(n), where d is the number of divisors function, and phi is the Euler totient function.

Offset 1, canonical program `A351561.P9711075868512573755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351561 (n : ℕ) : ℤ :=
  A351561.P9711075868512573755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351746.P13626312203566205031

`A351711(n+1)-A248577(n+1)`
-/

namespace A351746.P13626312203566205031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (n + 1) - A248577 (n + 1)

end

end A351746.P13626312203566205031

noncomputable section

/-- A351746: a(n) = Sum_{p|n, p prime} (p-1) * tau(n/p).

Offset 1, canonical program `A351746.P13626312203566205031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248577, A351711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351746 (n : ℕ) : ℤ :=
  A351746.P13626312203566205031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248577, A351711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351847.P12065325014482619326

`A323171(A078174(n+1))`
-/

namespace A351847.P12065325014482619326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323171 (A078174 (n + 1)).toNat

end

end A351847.P12065325014482619326

noncomputable section

/-- A351847: Arithmetic mean of the distinct prime factors of A078174(n).

Offset 1, canonical program `A351847.P12065325014482619326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351847 (n : ℕ) : ℤ :=
  A351847.P12065325014482619326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353637.P5440180522401724762

`∏{d}[A353636(n+1), A001221(#)]`
-/

namespace A353637.P5440180522401724762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A353637.P5440180522401724762

noncomputable section

/-- A353637: a(n) = 1 if phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353637.P5440180522401724762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637 (n : ℕ) : ℤ :=
  A353637.P5440180522401724762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353644.P12499979160227092597

`A000010(n+1)/A353643(n+1)`
-/

namespace A353644.P12499979160227092597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P12499979160227092597

noncomputable section

/-- A353644: a(n) = phi(n) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353644.P12499979160227092597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353644.P12499979160227092597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353646.P14527440753907412208

`A062401(n+1)/A353643(n+1)`
-/

namespace A353646.P14527440753907412208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P14527440753907412208

noncomputable section

/-- A353646: a(n) = phi(sigma(n)) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353646.P14527440753907412208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353646.P14527440753907412208.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353681.P403205491971656766

`ceil(A353636(n+1)/A008000(n))`
-/

namespace A353681.P403205491971656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A008000 n : ℚ)⌉

end

end A353681.P403205491971656766

noncomputable section

/-- A353681: a(n) = 1 if phi(sigma(n)) > phi(n), otherwise 0.

Offset 1, canonical program `A353681.P403205491971656766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681 (n : ℕ) : ℤ :=
  A353681.P403205491971656766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357696.P6244782871759486007

`filter[A357695(n+1), A294930(#)]`
-/

namespace A357696.P6244782871759486007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A357696.P6244782871759486007

noncomputable section

/-- A357696: Cubefree primitive abundant numbers: cubefree abundant numbers having no abundant proper divisor.

Offset 1, canonical program `A357696.P6244782871759486007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696 (n : ℕ) : ℤ :=
  A357696.P6244782871759486007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357761.P12264452491752923310

`A227872(n+1)-A356018(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357761.P12264452491752923310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A356018 (n + 1)

end

end A357761.P12264452491752923310

noncomputable section

/-- A357761: a(n) = A227872(n) - A356018(n).

Offset 1, canonical program `A357761.P12264452491752923310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, A356018, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357761 (n : ℕ) : ℤ :=
  A357761.P12264452491752923310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, A356018, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362008.P15802057352919654675

`eq[9, dr(A051953(n+1))]+1`
-/

namespace A362008.P15802057352919654675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362008.P15802057352919654675

noncomputable section

/-- A362008: Numbers whose Euler's cototient is divisible by 9.

Offset 1, canonical program `A362008.P15802057352919654675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008 (n : ℕ) : ℤ :=
  (A362008.P15802057352919654675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363258.P12380158314372331947

`A363903(Δ[n²])`
-/

namespace A363258.P12380158314372331947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363258.P12380158314372331947

noncomputable section

/-- A363258: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(4*k-3)).

Offset 1, canonical program `A363258.P12380158314372331947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258 (n : ℕ) : ℤ :=
  A363258.P12380158314372331947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364018.P745909422124864912

`∑{d}[n+1, A007438(#)*A364014((n+1)/#)]`
-/

namespace A364018.P745909422124864912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364018.P745909422124864912

noncomputable section

/-- A364018: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-1) / (1 - x^(3*k-1))^3.

Offset 1, canonical program `A364018.P745909422124864912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018 (n : ℕ) : ℤ :=
  A364018.P745909422124864912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366145.P15841595300471254035

`A000005(n+1)/A366147(n+1)`
-/

namespace A366145.P15841595300471254035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A366147 (n + 1) : ℚ)

end

end A366145.P15841595300471254035

noncomputable section

/-- A366145: The number of divisors of the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A366145.P15841595300471254035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A366147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366145 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366145.P15841595300471254035.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A366147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368804.P4492888258836152047

`A007088(A362030(n+1))`
-/

namespace A368804.P4492888258836152047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A362030 (n + 1)).toNat

end

end A368804.P4492888258836152047

noncomputable section

/-- A368804: Irregular triangle read by rows: T(n,k) is the k-th balanced binary word of length 2*n, where words within a row are in lexicographical order (with leading zeros removed and interpreted as decimal numbers).

Offset 1, canonical program `A368804.P4492888258836152047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804 (n : ℕ) : ℤ :=
  A368804.P4492888258836152047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368980.P9473977594289059310

`∏{e}[n+1, A183063(#)]`
-/

namespace A368980.P9473977594289059310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A183063 (Nat.factorization (f1 n) p)

end

end A368980.P9473977594289059310

noncomputable section

/-- A368980: The number of exponential divisors of n that are squares (A000290).

Offset 1, canonical program `A368980.P9473977594289059310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980 (n : ℕ) : ℤ :=
  A368980.P9473977594289059310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369255.P8598601348355343696

`A000035(A140773(n+1))`
-/

namespace A369255.P8598601348355343696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140773 (n + 1)).toNat

end

end A369255.P8598601348355343696

noncomputable section

/-- A369255: Parity of A140773, where A140773 is the inverse Möbius transform of A038548.

Offset 1, canonical program `A369255.P8598601348355343696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369255 (n : ℕ) : ℤ :=
  A369255.P8598601348355343696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369258.P16975426313700226545

`A001227(n+1)-A369257(n+1)`
-/

namespace A369258.P16975426313700226545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A369257 (n + 1)

end

end A369258.P16975426313700226545

noncomputable section

/-- A369258: a(n) = number of odd divisors of n that have an odd number of prime factors with multiplicity.

Offset 1, canonical program `A369258.P16975426313700226545`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A369257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369258 (n : ℕ) : ℤ :=
  A369258.P16975426313700226545.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A369257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371263.P7260451375417791318

`A371256(A117967(n))`
-/

namespace A371263.P7260451375417791318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A117967 n).toNat

end

end A371263.P7260451375417791318

noncomputable section

/-- A371263: The run lengths transform of the balanced ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371263.P7260451375417791318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263 (n : ℕ) : ℤ :=
  A371263.P7260451375417791318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372467.P9198545942954414521

`log2(A372466(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372467.P9198545942954414521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372466 (n + 1) + 1 : ℝ)

end

end A372467.P9198545942954414521

noncomputable section

/-- A372467: a(n) = log_2(A372466(n) + 1).

Offset 1, canonical program `A372467.P9198545942954414521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372467.P9198545942954414521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375962.P14051908958568052838

`∩[A018252(n+1), comp[A375960(n+1)]]`
-/

namespace A375962.P14051908958568052838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A375962.P14051908958568052838

noncomputable section

/-- A375962: Numbers whose product of proper divisors is not a cube.

Offset 1, canonical program `A375962.P14051908958568052838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A375962 (n : ℕ) : ℤ :=
  (A375962.P14051908958568052838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A375962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377430.P4255043940740327153

`eq[2, Δ[A112930(n+1)]]+1`
-/

namespace A377430.P4255043940740327153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377430.P4255043940740327153

noncomputable section

/-- A377430: Numbers k such that there is exactly one squarefree number between prime(k)+1 and prime(k+1)-1.

Offset 1, canonical program `A377430.P4255043940740327153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430 (n : ℕ) : ℤ :=
  (A377430.P4255043940740327153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378767.P14747477378798876079

`filter[A046099(n+1), A355447(#)]`
-/

namespace A378767.P14747477378798876079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A378767.P14747477378798876079

noncomputable section

/-- A378767: Numbers k that are not prime powers which are divisible by a cube greater than 1.

Offset 1, canonical program `A378767.P14747477378798876079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767 (n : ℕ) : ℤ :=
  A378767.P14747477378798876079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382872.P13479336682410921135

`A000005(A018804(n+1))`
-/

namespace A382872.P13479336682410921135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018804 (n + 1)).toNat

end

end A382872.P13479336682410921135

noncomputable section

/-- A382872: For n >= 1, a(n) is the number of divisors of Pillai's arithmetical function: Sum_{k=1..n} gcd(k, n) (A018804).

Offset 1, canonical program `A382872.P13479336682410921135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A382872 (n : ℕ) : ℤ :=
  A382872.P13479336682410921135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A382872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388983.P17500820432191245093

`filter[A228056(n+1), A355447(#)]`
-/

namespace A388983.P17500820432191245093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A388983.P17500820432191245093

noncomputable section

/-- A388983: Numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

Offset 1, canonical program `A388983.P17500820432191245093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983 (n : ℕ) : ℤ :=
  A388983.P17500820432191245093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390960.P1725280362300566501

`A348341(A162643(n+1))`
-/

namespace A390960.P1725280362300566501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (A162643 (n + 1)).toNat

end

end A390960.P1725280362300566501

noncomputable section

/-- A390960: The number of noninfinitary divisors of the numbers whose number of divisors is not a power of 2 (A162643).

Offset 1, canonical program `A390960.P1725280362300566501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3116 terms. -/
def A390960 (n : ℕ) : ℤ :=
  A390960.P1725280362300566501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3116 terms. -/
def A390960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391074.P7066598171140740427

`A000005(n+1)-A327527(n+1)`
-/

namespace A391074.P7066598171140740427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A327527 (n + 1)

end

end A391074.P7066598171140740427

noncomputable section

/-- A391074: a(n) is the number of nonuniform divisors of n.

Offset 1, canonical program `A391074.P7066598171140740427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A327527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391074 (n : ℕ) : ℤ :=
  A391074.P7066598171140740427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A327527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392980.P15181118893878896143

`A392236(2*(n+1))/2`
-/

namespace A392980.P15181118893878896143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392236 (2 * (n + 1)) : ℚ) / 2

end

end A392980.P15181118893878896143

noncomputable section

/-- A392980: Positions of zeros in A393336.

Offset 1, canonical program `A392980.P15181118893878896143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A392980 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392980.P15181118893878896143.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A392980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394425.P9665330244244718537

`∏{e}[A382902(n+1), #]`
-/

namespace A394425.P9665330244244718537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A394425.P9665330244244718537

noncomputable section

/-- A394425: The number of exponential divisors of the biquadratefree numbers.

Offset 1, canonical program `A394425.P9665330244244718537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394425 (n : ℕ) : ℤ :=
  (A394425.P9665330244244718537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394792.P15853201692661085382

`∑[A010054(A054844(n+1)²)]`
-/

namespace A394792.P15853201692661085382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A054844 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P15853201692661085382

noncomputable section

/-- A394792: Number of positive integers <= n with exactly three odd divisors.

Offset 1, canonical program `A394792.P15853201692661085382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394792 (n : ℕ) : ℤ :=
  A394792.P15853201692661085382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395330.P14444694070182848771

`A183063(2*A003991(n+1))`
-/

namespace A395330.P14444694070182848771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A003991 (n + 1)).toNat

end

end A395330.P14444694070182848771

noncomputable section

/-- A395330: Symmetric array read by antidiagonals: A(n,k) = tau(n*k), where tau = A000005.

Offset 1, canonical program `A395330.P14444694070182848771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9934 terms. -/
def A395330 (n : ℕ) : ℤ :=
  A395330.P14444694070182848771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9934 terms. -/
def A395330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276305.P15088986145936003847

`p?[floor(A054753(n+1)/2)]`
-/

namespace A276305.P15088986145936003847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054753 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P15088986145936003847

noncomputable section

/-- A276305: Primes p such that d(p*(2p+1)) = 12 where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A276305.P15088986145936003847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A276305 (n : ℕ) : ℤ :=
  A276305.P15088986145936003847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A276305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283476.P12626958136040058516

`1+eq[1, A323511(n+1)]`
-/

namespace A283476.P12626958136040058516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283476.P12626958136040058516

noncomputable section

/-- A283476: Squarefree numbers n for which A079559(A048675(n)) = 1.

Offset 1, canonical program `A283476.P12626958136040058516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A283476 (n : ℕ) : ℤ :=
  (A283476.P12626958136040058516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A283476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284167.P732557117571730859

`∑{d}[n+1, sqrt(A035116(n+1+#))]`
-/

namespace A284167.P732557117571730859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A035116 (n + 1 + d) : ℝ)

end

end A284167.P732557117571730859

noncomputable section

/-- A284167: a(n) = Sum_{i=1..A000005(n)} d(n+k(i)), where d(t) is the number of divisors of t and k(i) is the i-th divisor of n.

Offset 1, canonical program `A284167.P732557117571730859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A284167 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284167.P732557117571730859.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A284167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285508.P10690134456776123429

`∪[A030078(n+1), A054753(n+1)]`
-/

namespace A285508.P10690134456776123429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P10690134456776123429

noncomputable section

/-- A285508: Numbers with exactly three prime factors, not all distinct.

Offset 1, canonical program `A285508.P10690134456776123429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508 (n : ℕ) : ℤ :=
  (A285508.P10690134456776123429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286228.P2619244444952308733

`∪[A054753(n+1), A280076(n+1)]`
-/

namespace A286228.P2619244444952308733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P2619244444952308733

noncomputable section

/-- A286228: Numbers n such that d(n) = 2^omega(n) + omega(n) where d = A000005 and omega = A001221.

Offset 1, canonical program `A286228.P2619244444952308733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228 (n : ℕ) : ℤ :=
  (A286228.P2619244444952308733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292763.P17011171486369911549

`eq[1, A354032(n+1)]+1`
-/

namespace A292763.P17011171486369911549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292763.P17011171486369911549

noncomputable section

/-- A292763: Numbers m such that sigma(m)+phi(m) == 2 mod 4.

Offset 1, canonical program `A292763.P17011171486369911549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292763 (n : ℕ) : ℤ :=
  (A292763.P17011171486369911549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294889.P3663956152667717036

`A001065(n+1)-A294888(n+1)`
-/

namespace A294889.P3663956152667717036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A294888 (n + 1)

end

end A294889.P3663956152667717036

noncomputable section

/-- A294889: Sum of abundant proper divisors of n.

Offset 1, canonical program `A294889.P3663956152667717036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294889 (n : ℕ) : ℤ :=
  A294889.P3663956152667717036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302975.P17848082813074921203

`A137926(n+1)^Δ[A006218(n)]`
-/

namespace A302975.P17848082813074921203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A302975.P17848082813074921203

noncomputable section

/-- A302975: a(n) = denominator of tau(n)^n / n^tau(n).

Offset 1, canonical program `A302975.P17848082813074921203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A302975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302975.P17848082813074921203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A302975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306217.P10231340410320966270

`filter[A045718(n), A354926(#)]`
-/

namespace A306217.P10231340410320966270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A306217.P10231340410320966270

noncomputable section

/-- A306217: Sphenic numbers with a prime nearest neighbor.

Offset 1, canonical program `A306217.P10231340410320966270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A306217 (n : ℕ) : ℤ :=
  A306217.P10231340410320966270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A306217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308339.P12363408473159488480

`eq[1, A239656(n+1)]+1`
-/

namespace A308339.P12363408473159488480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308339.P12363408473159488480

noncomputable section

/-- A308339: Sphenic number indices of A215217.

Offset 1, canonical program `A308339.P12363408473159488480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308339 (n : ℕ) : ℤ :=
  (A308339.P12363408473159488480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318827.P12746899666604182033

`A051953(n+1)+A318830(n+1)`
-/

namespace A318827.P12746899666604182033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A318830 (n + 1)

end

end A318827.P12746899666604182033

noncomputable section

/-- A318827: a(n) = n - gcd(n - 1, phi(n)).

Offset 1, canonical program `A318827.P12746899666604182033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318827 (n : ℕ) : ℤ :=
  A318827.P12746899666604182033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325470.P15058644850768859444

`A187794(n+1)+A000120(A059268(n))`
-/

namespace A325470.P15058644850768859444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A000120 (A059268 n).toNat

end

end A325470.P15058644850768859444

noncomputable section

/-- A325470: a(n) is the sum of divisors d of n such that d divides sigma(d).

Offset 1, canonical program `A325470.P15058644850768859444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A325470 (n : ℕ) : ℤ :=
  A325470.P15058644850768859444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A325470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327570.P12500919374031446701

`A000010(n+1)*A002618(n+1)`
-/

namespace A327570.P12500919374031446701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A002618 (n + 1)

end

end A327570.P12500919374031446701

noncomputable section

/-- A327570: a(n) = n*phi(n)^2, phi = A000010.

Offset 1, canonical program `A327570.P12500919374031446701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327570 (n : ℕ) : ℤ :=
  A327570.P12500919374031446701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328728.P9496393580234342524

`A328749(A328727(n+1))`
-/

namespace A328728.P9496393580234342524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A328727 (n + 1)).toNat

end

end A328728.P9496393580234342524

noncomputable section

/-- A328728: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of A328727(n).

Offset 1, canonical program `A328728.P9496393580234342524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728 (n : ℕ) : ℤ :=
  A328728.P9496393580234342524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331078.P2556841124686977371

`∑[ceil(∏{e}[n+1, #+1]/2)*A034836(n+1)]`
-/

namespace A331078.P2556841124686977371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉ * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P2556841124686977371

noncomputable section

/-- A331078: a(n) = Sum_{k = 1..n} [u_2(k)*u_3(k)], where u_2 = A038548, u_3 = A034836.

Offset 1, canonical program `A331078.P2556841124686977371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331078 (n : ℕ) : ℤ :=
  A331078.P2556841124686977371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331079.P2155090531484907639

`∑[A038548(n+1)*A038548(n+2)]`
-/

namespace A331079.P2155090531484907639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) * A038548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331079.P2155090531484907639

noncomputable section

/-- A331079: a(n) = Sum_{i=1..n} u_2(i)*u_2(i+1), where u_2(n) = A038548(n).

Offset 1, canonical program `A331079.P2155090531484907639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331079 (n : ℕ) : ℤ :=
  A331079.P2155090531484907639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331130.P5600848552238636263

`∑[A034836(n+1)*A034836(n+2)]`
-/

namespace A331130.P5600848552238636263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) * A034836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331130.P5600848552238636263

noncomputable section

/-- A331130: a(n) = Sum_{i=1..n} u_3(i)*u_3(i+1), where u_3(n) = A034836(n).

Offset 1, canonical program `A331130.P5600848552238636263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331130 (n : ℕ) : ℤ :=
  A331130.P5600848552238636263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337175.P3535412205708800651

`A337174(n+1)-A038548(n+1)`
-/

namespace A337175.P3535412205708800651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337174 (n + 1) - A038548 (n + 1)

end

end A337175.P3535412205708800651

noncomputable section

/-- A337175: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and d1*d2 < n.

Offset 1, canonical program `A337175.P3535412205708800651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A337174, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337175 (n : ℕ) : ℤ :=
  A337175.P3535412205708800651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A337174, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349005.P15599194683630198262

`A060866(n+1)+A038548(n+1)`
-/

namespace A349005.P15599194683630198262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + A038548 (n + 1)

end

end A349005.P15599194683630198262

noncomputable section

/-- A349005: a(n) = Sum_{d|n, d^2>=n} 1+d+n/d.

Offset 1, canonical program `A349005.P15599194683630198262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A060866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349005 (n : ℕ) : ℤ :=
  A349005.P15599194683630198262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A060866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349659.P4651749158989321582

`A000203(n+1)-A335182(n+1)`
-/

namespace A349659.P4651749158989321582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A335182 (n + 1)

end

end A349659.P4651749158989321582

noncomputable section

/-- A349659: Sum of the nonrefactorable divisors of n.

Offset 1, canonical program `A349659.P4651749158989321582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349659 (n : ℕ) : ℤ :=
  A349659.P4651749158989321582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350534.P1685177641505256515

`A038548(n+1)+A060872(n+1)-A060866(n+1)`
-/

namespace A350534.P1685177641505256515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A060872 (n + 1) - A060866 (n + 1))

end

end A350534.P1685177641505256515

noncomputable section

/-- A350534: Sum of the largest parts of the partitions of n into 3 parts whose largest part is equal to the product of the other two.

Offset 0, canonical program `A350534.P1685177641505256515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534 (n : ℕ) : ℤ :=
  A350534.P1685177641505256515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351521.P4143436504143602524

`A008966(n+1)*A035116(n+1)`
-/

namespace A351521.P4143436504143602524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A035116 (n + 1)

end

end A351521.P4143436504143602524

noncomputable section

/-- A351521: Dirichlet g.f.: Product_{p prime} (1 + 4*p^(-s)).

Offset 1, canonical program `A351521.P4143436504143602524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351521 (n : ℕ) : ℤ :=
  A351521.P4143436504143602524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353472.P18369739324795552969

`char[A054753(n+1)-1]`
-/

namespace A353472.P18369739324795552969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353472.P18369739324795552969

noncomputable section

/-- A353472: a(n) = 1 if n is a product of a prime and the square of a different prime (p^2 * q), otherwise 0.

Offset 1, canonical program `A353472.P18369739324795552969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353472 (n : ℕ) : ℤ :=
  (A353472.P18369739324795552969.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353798.P2681432505353467180

`val(A000040(A034836(n+1)), 7)`
-/

namespace A353798.P2681432505353467180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A034836 (n + 1)).toNat).toNat 7

end

end A353798.P2681432505353467180

noncomputable section

/-- A353798: a(n) = 1 if n is either 4th power of a prime (A030514), or product of a prime and the square of a different prime (A054753), otherwise 0.

Offset 1, canonical program `A353798.P2681432505353467180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798 (n : ℕ) : ℤ :=
  (A353798.P2681432505353467180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365784.P9414466859234964261

`A126706(n+1)/A365783(n+1)`
-/

namespace A365784.P9414466859234964261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A365783 (n + 1) : ℚ)

end

end A365784.P9414466859234964261

noncomputable section

/-- A365784: a(n) = A126706(n) divided by its squarefree kernel.

Offset 1, canonical program `A365784.P9414466859234964261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365784.P9414466859234964261.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365785.P6855440073540334258

`A387944(A365783(n+1))`
-/

namespace A365785.P6855440073540334258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A365783 (n + 1)).toNat

end

end A365785.P6855440073540334258

noncomputable section

/-- A365785: a(n) = k such that A120944(k) is the squarefree kernel of A126706(n).

Offset 1, canonical program `A365785.P6855440073540334258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785 (n : ℕ) : ℤ :=
  A365785.P6855440073540334258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366654.P3224767880021133943

`A053287(3*(n+1))`
-/

namespace A366654.P3224767880021133943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (3 * (n + 1))

end

end A366654.P3224767880021133943

noncomputable section

/-- A366654: a(n) = phi(8^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366654.P3224767880021133943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A366654 (n : ℕ) : ℤ :=
  A366654.P3224767880021133943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A366654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368883.P5151374445955228630

`A061389(A053165(n+1))`
-/

namespace A368883.P5151374445955228630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A053165 (n + 1)).toNat

end

end A368883.P5151374445955228630

noncomputable section

/-- A368883: The number of infinitary divisors of n that are cubefree.

Offset 1, canonical program `A368883.P5151374445955228630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883 (n : ℕ) : ℤ :=
  A368883.P5151374445955228630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369253.P11097286628827511262

`A000035(A038548(n+1))`
-/

namespace A369253.P11097286628827511262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A038548 (n + 1)).toNat

end

end A369253.P11097286628827511262

noncomputable section

/-- A369253: Parity of A038548, where A038548(n) is the number of divisors of n that are at most sqrt(n).

Offset 1, canonical program `A369253.P11097286628827511262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369253 (n : ℕ) : ℤ :=
  A369253.P11097286628827511262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372690.P6818816879152483449

`A036537(record[n/Δ[A036537(n+1)]]+1)`
-/

namespace A372690.P6818816879152483449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A372690.P6818816879152483449

noncomputable section

/-- A372690: Numbers k such that k and k+1 are both numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372690.P6818816879152483449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690 (n : ℕ) : ℤ :=
  A372690.P6818816879152483449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372691.P3029882331532059219

`∩[A175496(n+1)-1, A175496(n+1)]`
-/

namespace A372691.P3029882331532059219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372691.P3029882331532059219

noncomputable section

/-- A372691: Numbers k such that k and k+1 are both nonsquarefree numbers whose number of divisors is a power of 2 (A175496).

Offset 1, canonical program `A372691.P3029882331532059219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691 (n : ℕ) : ℤ :=
  (A372691.P3029882331532059219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376720.P7784690848056402490

`A126706(n+1)*A365783(n+1)`
-/

namespace A376720.P7784690848056402490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) * A365783 (n + 1)

end

end A376720.P7784690848056402490

noncomputable section

/-- A376720: Product of numbers m that are neither squarefree nor prime powers and rad(m), where rad = A007947.

Offset 1, canonical program `A376720.P7784690848056402490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720 (n : ℕ) : ℤ :=
  A376720.P7784690848056402490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378032.P9045998569336998006

`A162966(A000040(n+1)-A071403(n+1)+1)`
-/

namespace A378032.P9045998569336998006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (A000040 (n + 1) - A071403 (n + 1) + 1).toNat

end

end A378032.P9045998569336998006

noncomputable section

/-- A378032: a(1) = a(2) = 1; a(n>2) is the greatest nonsquarefree number < prime(n).

Offset 1, canonical program `A378032.P9045998569336998006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2810 terms. -/
def A378032 (n : ℕ) : ℤ :=
  A378032.P9045998569336998006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2810 terms. -/
def A378032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396919.P3561420194489919644

`filter[A054753(n+1), A359770(#)]`
-/

namespace A396919.P3561420194489919644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A396919.P3561420194489919644

noncomputable section

/-- A396919: Numbers of the form 4*p or 2*p^2, where p is an odd prime.

Offset 1, canonical program `A396919.P3561420194489919644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A396919 (n : ℕ) : ℤ :=
  A396919.P3561420194489919644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A396919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398421.P3891246051767450638

`∩[A053850(n+1), A054753(n+1)]`
-/

namespace A398421.P3891246051767450638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398421.P3891246051767450638

noncomputable section

/-- A398421: Odd numbers of the form p^2*q, where p and q are distinct odd primes.

Offset 1, canonical program `A398421.P3891246051767450638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A398421 (n : ℕ) : ℤ :=
  (A398421.P3891246051767450638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A398421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337690.P488329027084497173

`∑{d}[n+1, A341619(#)]`
-/

namespace A337690.P488329027084497173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341619 d

end

end A337690.P488329027084497173

noncomputable section

/-- A337690: a(n) is the number of primitive nondeficient numbers (A006039) dividing n.

Offset 1, canonical program `A337690.P488329027084497173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337690 (n : ℕ) : ℤ :=
  A337690.P488329027084497173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337690.provenance : SequenceMachineLib.Provenance := .conjectured

