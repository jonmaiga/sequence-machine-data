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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A227600: Number of lattice paths from {n}^9 to {0}^9 using steps that decrement one component such that for each point (p_1,p_2,...,p_9) we have p_1<=p_2<=...<=p_9.

The programs for A227600, there is no canonical definition to state claims against.
-/

/-! ## A227600.P18074973172612641239

`A227578(eq[9, A025581(n)])`
-/

namespace A227600.P18074973172612641239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227600.P18074973172612641239

/-! ## A227600.P5476911491491426552

`A227578(eq[10, A193739(n)])`
-/

namespace A227600.P5476911491491426552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227600.P5476911491491426552

/-! ## A227600.P10169680811168002096

`A227578(eq[10, A004736(n+1)])`
-/

namespace A227600.P10169680811168002096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227600.P10169680811168002096

/-!
# A227601: 

The programs for A227601, there is no canonical definition to state claims against.
-/

/-! ## A227601.P9330581996981212397

`A227578(eq[10, A025581(n)])`
-/

namespace A227601.P9330581996981212397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227601.P9330581996981212397

/-! ## A227601.P13086833432765986585

`A227578(eq[11, A193739(n)])`
-/

namespace A227601.P13086833432765986585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227601.P13086833432765986585

/-! ## A227601.P16847473876398569739

`A227578(eq[21, A099375(n)])`
-/

namespace A227601.P16847473876398569739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227601.P16847473876398569739

/-! ## A227601.P12403857481582424177

`A227578(eq[11, A004736(n+1)])`
-/

namespace A227601.P12403857481582424177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227601.P12403857481582424177

/-!
# A227602: Number of lattice paths from {5}^n to {0}^n using steps that decrement one component such that for each point (p_1,p_2,...,p_n) we have p_1<=p_2<=...<=p_n.

The programs for A227602, there is no canonical definition to state claims against.
-/

/-! ## A227602.P8138638483577985594

`A227578(A167499(n+4))`
-/

namespace A227602.P8138638483577985594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A167499 (n + 4)).toNat

end

end A227602.P8138638483577985594

/-! ## A227602.P11599628341844105157

`A227578(eq[5, A002262(n)])`
-/

namespace A227602.P11599628341844105157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227602.P11599628341844105157

/-! ## A227602.P2836273234118693628

`A227578(eq[5, A141169(n)])`
-/

namespace A227602.P2836273234118693628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227602.P2836273234118693628

/-! ## A227602.P16000439010975994801

`A227578(A000217(n+5)+5)`
-/

namespace A227602.P16000439010975994801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A000217 (n + 5) + 5).toNat

end

end A227602.P16000439010975994801

/-! ## A227602.P12752785508608987452

`A227578(eq[5, A130270(n+1)])`
-/

namespace A227602.P12752785508608987452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227602.P12752785508608987452

/-!
# A227603: Number of lattice paths from {6}^n to {0}^n using steps that decrement one component such that for each point (p_1,p_2,...,p_n) we have p_1<=p_2<=...<=p_n.

The programs for A227603, there is no canonical definition to state claims against.
-/

/-! ## A227603.P3983241850155941747

`A227578(eq[6, A002262(n)])`
-/

namespace A227603.P3983241850155941747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227603.P3983241850155941747

/-! ## A227603.P3063696198359235315

`A227578(A055998(n+4)+9)`
-/

namespace A227603.P3063696198359235315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A055998 (n + 4) + 9).toNat

end

end A227603.P3063696198359235315

/-! ## A227603.P8985825156457453285

`A227578(eq[6, A144328(n+1)])`
-/

namespace A227603.P8985825156457453285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227603.P8985825156457453285

/-! ## A227603.P13664075489214885240

`A227578(eq[7, A002260(n+1)])`
-/

namespace A227603.P13664075489214885240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227603.P13664075489214885240

/-!
# A227604: Number of lattice paths from {7}^n to {0}^n using steps that decrement one component such that for each point (p_1,p_2,...,p_n) we have p_1<=p_2<=...<=p_n.

The programs for A227604, there is no canonical definition to state claims against.
-/

/-! ## A227604.P15406031204996524421

`A227578(eq[7, A002262(n)])`
-/

namespace A227604.P15406031204996524421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227604.P15406031204996524421

/-! ## A227604.P11697863023256361288

`A227578(eq[7, A144328(n+1)])`
-/

namespace A227604.P11697863023256361288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227604.P11697863023256361288

/-! ## A227604.P10565579464983271688

`A227578(eq[8, A002260(n+1)])`
-/

namespace A227604.P10565579464983271688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227604.P10565579464983271688

/-!
# A227606: 

The programs for A227606, there is no canonical definition to state claims against.
-/

/-! ## A227606.P10468506187720946705

`A227578(A167499(n+8)+4)`
-/

namespace A227606.P10468506187720946705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A167499 (n + 8) + 4).toNat

end

end A227606.P10468506187720946705

/-!
# A227607: 

The programs for A227607, there is no canonical definition to state claims against.
-/

/-! ## A227607.P14786479349227376480

`A227578(eq[11, A002260(n+1)])`
-/

namespace A227607.P14786479349227376480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227607.P14786479349227376480

/-!
# A227609: Determinant of the (p_n-1)/2 X (p_n-1)/2 matrix with (i,j)-entry being the Legendre symbol((i^2+j^2)/p_n), where p_n is the n-th prime.

The programs for A227609, there is no canonical definition to state claims against.
-/

/-! ## A227609.P12728879273132812350

`A227968(n+2)/A005097(n+1)`
-/

namespace A227609.P12728879273132812350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227968 (n + 2) : ℚ) / (A005097 (n + 1) : ℚ)

end

end A227609.P12728879273132812350

/-! ## A227609.P14111534502701892373

`A227968(n+2)/A102781(n+2)`
-/

namespace A227609.P14111534502701892373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227968 (n + 2) : ℚ) / (A102781 (n + 2) : ℚ)

end

end A227609.P14111534502701892373

/-! ## A227609.P16083982065244223016

`A227968(n+2)/A130290(n+2)`
-/

namespace A227609.P16083982065244223016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227968 (n + 2) : ℚ) / (A130290 (n + 2) : ℚ)

end

end A227609.P16083982065244223016

/-! ## A227609.P7246484738968073170

`A227968(n+2)/record[A069897(n+1)]`
-/

namespace A227609.P7246484738968073170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227968 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A227609.P7246484738968073170

/-! ## A227609.P15278934510874335638

`A227968(n+2)/record[A023022(n+2)]`
-/

namespace A227609.P15278934510874335638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227968 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A227609.P15278934510874335638

/-!
# A227610: Number of ways 1/n can be expressed as the sum of three distinct unit fractions: 1/n = 1/x + 1/y + 1/z satisfying 0 < x < y < z.

The programs for A227610, there is no canonical definition to state claims against.
-/

/-! ## A227610.P3001482393906058774

`A075785(3*(n+1))`
-/

namespace A227610.P3001482393906058774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075785 (3 * (n + 1))

end

end A227610.P3001482393906058774

/-! ## A227610.P12451611009047839840

`A073101(4*(n+1))`
-/

namespace A227610.P12451611009047839840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073101 (4 * (n + 1))

end

end A227610.P12451611009047839840

/-! ## A227610.P26225835985580492

`A075248(5*(n+1))`
-/

namespace A227610.P26225835985580492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075248 (5 * (n + 1))

end

end A227610.P26225835985580492

/-! ## A227610.P5381550225168919292

`xor(1, xor(1, A075248(A008587(n+1))))`
-/

namespace A227610.P5381550225168919292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A075248 (A008587 (n + 1)).toNat))

end

end A227610.P5381550225168919292

/-! ## A227610.P17559404583106063236

`A004194(n+1)-A361689(n+1)`
-/

namespace A227610.P17559404583106063236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004194 (n + 1) - A361689 (n + 1)

end

end A227610.P17559404583106063236

/-! ## A227610.P3948423721781523571

`A073101(A059558(n+1))+C(n, n+1)`
-/

namespace A227610.P3948423721781523571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073101 (A059558 (n + 1)).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A227610.P3948423721781523571

/-! ## A227610.P15123270892488404786

`A073101((n+2)²-n²)%A037411(n+2)`
-/

namespace A227610.P15123270892488404786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073101 ((n + 2) ^ 2 - n ^ 2)) (A037411 (n + 2))

end

end A227610.P15123270892488404786

/-! ## A227610.P4671183381397622603

`gcd(A000038(n), A073101(A059558(n+1)))`
-/

namespace A227610.P4671183381397622603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073101 (A059558 (n + 1)).toNat)

end

end A227610.P4671183381397622603

/-! ## A227610.P2143220911236655665

`or(A000007(n), A073101(A059558(n+1)))`
-/

namespace A227610.P2143220911236655665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A073101 (A059558 (n + 1)).toNat)

end

end A227610.P2143220911236655665

/-! ## A227610.P14554156319149188717

`A075248(A008587(n+1))+A000007(n+1)`
-/

namespace A227610.P14554156319149188717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075248 (A008587 (n + 1)).toNat + A000007 (n + 1)

end

end A227610.P14554156319149188717

/-! ## A227610.P17435293964543371674

`A073101(A059558(n+1))/A007318(C(2, n))`
-/

namespace A227610.P17435293964543371674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073101 (A059558 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A227610.P17435293964543371674

/-! ## A227610.P2878763327005144496

`A073101(A059558(n+1))%A000040(n+2)²`
-/

namespace A227610.P2878763327005144496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073101 (A059558 (n + 1)).toNat) (A000040 (n + 2) ^ 2)

end

end A227610.P2878763327005144496

/-! ## A227610.P2766829410657581165

`A073101(A059558(n+1))^(A000040(n+1)%2)`
-/

namespace A227610.P2766829410657581165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073101 (A059558 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A227610.P2766829410657581165

/-! ## A227610.P2449616985937453293

`A075248(A008587(n+1))/A007318(C(2, n+2))`
-/

namespace A227610.P2449616985937453293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075248 (A008587 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A227610.P2449616985937453293

/-! ## A227610.P1370759153920364098

`A073101(A059558(n+1))/A007318(and(2, n-2))`
-/

namespace A227610.P1370759153920364098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073101 (A059558 (n + 1)).toNat : ℚ) / (A007318 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A227610.P1370759153920364098

/-! ## A227610.P2616988513324403494

`A075248(A008587(n+1))/A007318(and(3, 2-n))`
-/

namespace A227610.P2616988513324403494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075248 (A008587 (n + 1)).toNat : ℚ) / (A007318 (Int.land 3 (2 - (n : ℤ))).toNat : ℚ)

end

end A227610.P2616988513324403494

/-! ## A227610.P17213163490129208294

`A073101(A059558(n+1))/A007318(gcd(n, n+1))`
-/

namespace A227610.P17213163490129208294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073101 (A059558 (n + 1)).toNat : ℚ) / (A007318 (Nat.gcd n (n + 1)) : ℚ)

end

end A227610.P17213163490129208294

/-! ## A227610.P15642450402767554110

`A075248(A008587(n+1))/A001221(A139884(n+1))`
-/

namespace A227610.P15642450402767554110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075248 (A008587 (n + 1)).toNat : ℚ) / (A001221 (A139884 (n + 1)).toNat : ℚ)

end

end A227610.P15642450402767554110

/-! ## A227610.P9783854153300663098

`A075248(A008587(n+1))/A001221(A008578(n+2))`
-/

namespace A227610.P9783854153300663098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075248 (A008587 (n + 1)).toNat : ℚ) / (A001221 (A008578 (n + 2)).toNat : ℚ)

end

end A227610.P9783854153300663098

/-!
# A227611: Number of ways 2/n can be expressed as the sum of three distinct unit fractions: 2/n = 1/x + 1/y + 1/z with 0 < x < y < z.

The programs for A227611, there is no canonical definition to state claims against.
-/

/-! ## A227611.P1942285129157081870

`A073101(2*(n+1))`
-/

namespace A227611.P1942285129157081870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073101 (2 * (n + 1))

end

end A227611.P1942285129157081870

/-! ## A227611.P9348251585104248900

`or(char[1], A073101(n+2+n))`
-/

namespace A227611.P9348251585104248900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A073101 (n + 2 + n))

end

end A227611.P9348251585104248900

/-! ## A227611.P14733012987811228498

`and(-1, A073101(record[2-xor(1, -n)]))`
-/

namespace A227611.P14733012987811228498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A073101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A227611.P14733012987811228498

/-! ## A227611.P17919333279264935863

`A073101(n+2+n)%∑[A000032(n)]`
-/

namespace A227611.P17919333279264935863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073101 (n + 2 + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227611.P17919333279264935863

/-! ## A227611.P15343800314231860195

`A073101(n+2+n)+A000038(n+1)`
-/

namespace A227611.P15343800314231860195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073101 (n + 2 + n) + A000038 (n + 1)

end

end A227611.P15343800314231860195

/-! ## A227611.P15952999231972454167

`A073101(n+2+n)^A007318(C(2, n))`
-/

namespace A227611.P15952999231972454167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073101 (n + 2 + n) : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A227611.P15952999231972454167

/-! ## A227611.P4629537856424624707

`A073101(n+2+n)^A014963(∑[n+1])`
-/

namespace A227611.P4629537856424624707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073101 (n + 2 + n) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A227611.P4629537856424624707

/-! ## A227611.P10794037940335947117

`A073101(n+2+n)/gcd(2, A000040(n+1))`
-/

namespace A227611.P10794037940335947117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073101 (n + 2 + n) : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A227611.P10794037940335947117

/-! ## A227611.P17696529836723963409

`A073101(n+2+n)+(n+1)%A006530(n+1)`
-/

namespace A227611.P17696529836723963409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073101 (n + 2 + n) + Int.tmod (n + 1 : ℤ) (A006530 (n + 1))

end

end A227611.P17696529836723963409

/-!
# A227613: Smallest primes a(n) such that 1 + a(1), 1 + a(1) + a(1)*a(2), ..., 1 + a(1) + a(1)*a(2) + ... + a(1)*a(2)*a(3)*...*a(n) are prime numbers with a(1) = 2 and a(i) < a(i+1).

The programs for A227613, there is no canonical definition to state claims against.
-/

/-! ## A227613.P11385435410016973175

`A002487(A056208(n)²)-2`
-/

namespace A227613.P11385435410016973175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A056208 n ^ 2).toNat - 2

end

end A227613.P11385435410016973175

/-! ## A227613.P3609447582654703384

`A002034(A319729(3*n+4)+A135345(n))`
-/

namespace A227613.P3609447582654703384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A319729 (3 * n + 4) + A135345 n).toNat

end

end A227613.P3609447582654703384

/-!
# A227614: Number of partitions of n into distinct parts with perimeter n-2.

The programs for A227614, there is no canonical definition to state claims against.
-/

/-! ## A227614.P277555042705720366

`A227344(A034856(n+5))`
-/

namespace A227614.P277555042705720366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A034856 (n + 5)).toNat

end

end A227614.P277555042705720366

/-! ## A227614.P6947366742188870439

`A227344(A056119(n)+19)`
-/

namespace A227614.P6947366742188870439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A056119 n + 19).toNat

end

end A227614.P6947366742188870439

/-! ## A227614.P3405994605178793524

`A227344(A046691(n+4)+2)`
-/

namespace A227614.P3405994605178793524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A046691 (n + 4) + 2).toNat

end

end A227614.P3405994605178793524

/-! ## A227614.P1803063773497045699

`A227344(A052905(n+3)+3)`
-/

namespace A227614.P1803063773497045699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A052905 (n + 3) + 3).toNat

end

end A227614.P1803063773497045699

/-! ## A227614.P3889297574232393109

`A227344(A000096(n+5)-1)`
-/

namespace A227614.P3889297574232393109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A000096 (n + 5) - 1).toNat

end

end A227614.P3889297574232393109

/-! ## A227614.P12377697008918905528

`A227344(A000217(n+6)-2)`
-/

namespace A227614.P12377697008918905528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A000217 (n + 6) - 2).toNat

end

end A227614.P12377697008918905528

/-! ## A227614.P1213756579819127907

`A227344(A000124(n+6)-3)`
-/

namespace A227614.P1213756579819127907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A000124 (n + 6) - 3).toNat

end

end A227614.P1213756579819127907

/-! ## A227614.P9108237922384645301

`A227344(A161680(n+7)-2)`
-/

namespace A227614.P9108237922384645301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A161680 (n + 7) - 2).toNat

end

end A227614.P9108237922384645301

/-! ## A227614.P3343222812698654538

`A227344(A000326(n+5)-(n+4)²)`
-/

namespace A227614.P3343222812698654538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A000326 (n + 5) - ((n + 4) ^ 2 : ℤ)).toNat

end

end A227614.P3343222812698654538

/-!
# A227615: Number of bits necessary to represent u(n) in binary, where u is the Lucas-Lehmer sequence: u(0) = 100 (in binary); for n>0, u(n) = u(n-1)^2 - 2.

The programs for A227615, there is no canonical definition to state claims against.
-/

/-! ## A227615.P10497062417494938272

`A038572(A190569(n))+A000051(n)`
-/

namespace A227615.P10497062417494938272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A190569 n).toNat + A000051 n

end

end A227615.P10497062417494938272

/-! ## A227615.P13508830585824166589

`A198633(n)-A002266(A011782(n))`
-/

namespace A227615.P13508830585824166589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - A002266 (A011782 n).toNat

end

end A227615.P13508830585824166589

/-! ## A227615.P5998821064672358758

`A047298(a(n-1))+a(n-3)` with `a(0)=3, a(1)=4, a(2)=8`
-/

namespace A227615.P5998821064672358758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 8] fun n a =>
  A047298 (a (n - 1)).toNat + a (n - 3)

end

end A227615.P5998821064672358758

/-! ## A227615.P15428597599255928407

`A048578(n)-A008616(2^n)`
-/

namespace A227615.P15428597599255928407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A008616 (2 ^ n)

end

end A227615.P15428597599255928407

/-! ## A227615.P16342224999191192421

`A066530(floor(6*2^n/5))+A000079(n)`
-/

namespace A227615.P16342224999191192421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 ⌊6 * ((2 ^ n : ℚ) / 5)⌋.toNat + A000079 n

end

end A227615.P16342224999191192421

/-!
# A227616: Number of bits set to 1 in the binary representation of the n-th term of the Lucas-Lehmer sequence (A003010).

The programs for A227616, there is no canonical definition to state claims against.
-/

/-! ## A227616.P9694044360416315785

`A318719(A003000(n))+A123110(A035171(n+1))`
-/

namespace A227616.P9694044360416315785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A003000 n).toNat + A123110 (A035171 (n + 1)).toNat

end

end A227616.P9694044360416315785

/-! ## A227616.P9629720439705797210

`A318719(A003000(n))+A123110(A185740(3*n+2))`
-/

namespace A227616.P9629720439705797210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A003000 n).toNat + A123110 (A185740 (3 * n + 2)).toNat

end

end A227616.P9629720439705797210

/-!
# A227618: Expansion of q * f(-q) * f(-q^4) * f(-q^16) * f(-q^6, -q^10) in powers of q where f() is a Ramanujan theta function.

The programs for A227618, there is no canonical definition to state claims against.
-/

/-! ## A227618.P12901364380668585732

`A229502(n+1)+A229502(2*(n+1))/2`
-/

namespace A227618.P12901364380668585732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229502 (n + 1) : ℚ) + (A229502 (2 * (n + 1)) : ℚ) / 2

end

end A227618.P12901364380668585732

/-!
# A227619: G.f.: A(x) = 1+x + Sum_{n>=2} (A(x)^n - 1)^n.

The programs for A227619, there is no canonical definition to state claims against.
-/

/-! ## A227619.P3999207466557242230

`A296313(Δ[floor(2^(n-1))²])`
-/

namespace A227619.P3999207466557242230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (f1 (n + 1) - f1 n).toNat

end

end A227619.P3999207466557242230

/-!
# A227620: Logarithmic derivative of A005169, the number of fountains of n coins.

The programs for A227620, there is no canonical definition to state claims against.
-/

/-! ## A227620.P14276592428446678792

`∑{d}[n+1, #*A226999(#)]`
-/

namespace A227620.P14276592428446678792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A226999 d

end

end A227620.P14276592428446678792

/-! ## A227620.P17788498584080589630

`∑{d}[A323844(A055998(n)), A006490(#)]`
-/

namespace A227620.P17788498584080589630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006490 d

end

end A227620.P17788498584080589630

/-! ## A227620.P8440082951122466328

`∑{d}[A032555(n+1), A006490(#)]`
-/

namespace A227620.P8440082951122466328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006490 d

end

end A227620.P8440082951122466328

/-! ## A227620.P2199982370214224026

`∑{d}[A032559(n+1), A006490(#)]`
-/

namespace A227620.P2199982370214224026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006490 d

end

end A227620.P2199982370214224026

/-! ## A227620.P6341194862308999750

`∑{d}[A077739(n+1), A006490(#)]`
-/

namespace A227620.P6341194862308999750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006490 d

end

end A227620.P6341194862308999750

/-!
# A227621: The nearest integer of perimeter of T-square (fractal) after n-iterations, starting with a unit square.

The programs for A227621, the canonical program `A227621.P10691665454135400740` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227621 has offset 0).

The definition of A227621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227621.P10691665454135400740

`round(Δ[4*(3^n-2^n)]/2^n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227621

/-- `round(Δ[4*(3^n-2^n)]/2^n)` -/
def P10691665454135400740.Spec : Prop :=
  ∀ n, P10691665454135400740.a n = A227621 n

theorem P10691665454135400740.correct : P10691665454135400740.Spec := by
  intro n
  simp only [A227621]

end A227621

/-! ## A227621.P4060725950337832601

`A004526(floor(∑[3/2*a(n-1)])+2)` with `a(0)=7, a(1)=8`
-/

namespace A227621.P4060725950337832601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  (3 : ℚ) / 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 2).toNat

end

end A227621.P4060725950337832601

namespace A227621

/-- `A004526(floor(∑[3/2*a(n-1)])+2)` -/
def P4060725950337832601.Spec : Prop :=
  ∀ n, P4060725950337832601.a n = A227621 n

end A227621

/-! ## A227621.P4721352567382390973

`A003056(∑[A211116(n+1)])`
-/

namespace A227621.P4721352567382390973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227621.P4721352567382390973

namespace A227621

/-- `A003056(∑[A211116(n+1)])` -/
def P4721352567382390973.Spec : Prop :=
  ∀ n, P4721352567382390973.a n = A227621 n

end A227621

/-! ## A227621.P17205242327228675874

`A052146(A018011(n+4)-9)`
-/

namespace A227621.P17205242327228675874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A018011 (n + 4) - 9).toNat

end

end A227621.P17205242327228675874

namespace A227621

/-- `A052146(A018011(n+4)-9)` -/
def P17205242327228675874.Spec : Prop :=
  ∀ n, P17205242327228675874.a n = A227621 n

end A227621

/-!
# A227622: Primes p of the form m^2 + 27.

The programs for A227622, there is no canonical definition to state claims against.
-/

/-! ## A227622.P11276643549395016123

`p?[n²+27]`
-/

namespace A227622.P11276643549395016123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A227622.P11276643549395016123

/-! ## A227622.P1314346710279602896

`or(1, p?[n*n+27])`
-/

namespace A227622.P1314346710279602896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A227622.P1314346710279602896

/-! ## A227622.P9383460641035132305

`lcm(2, p?[n*n+27])/2`
-/

namespace A227622.P9383460641035132305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 27

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A227622.P9383460641035132305

/-! ## A227622.P12627947186421381799

`gcd(n, n+1)*p?[n*n+27]`
-/

namespace A227622.P12627947186421381799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A227622.P12627947186421381799

/-! ## A227622.P10344716582751837196

`2*p?[n*n+27]-p?[n*n+27]`
-/

namespace A227622.P10344716582751837196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 27

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A227622.P10344716582751837196

/-! ## A227622.P8159208293913775426

`A007318(C(2, n))*p?[n*n+27]`
-/

namespace A227622.P8159208293913775426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A227622.P8159208293913775426

/-! ## A227622.P8879454022845994210

`A001222(record[A014963(n+2)])*p?[n*n+27]`
-/

namespace A227622.P8879454022845994210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A227622.P8879454022845994210

/-!
# A227623: Numbers k such that phi(k) + pi(k) is prime.

The programs for A227623, the canonical program `A227623.P9837027504325705862` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227623 has offset 1).

The definition of A227623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227623.P9837027504325705862

`eq[1, A001222(A082515(n+1))]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A227623

/-- `eq[1, A001222(A082515(n+1))]+1` -/
def P9837027504325705862.Spec : Prop :=
  ∀ n, (P9837027504325705862.a n : ℤ) = A227623 (n + 1)

theorem P9837027504325705862.correct : P9837027504325705862.Spec := by
  intro n
  simp only [A227623, Nat.add_sub_cancel]

end A227623

/-! ## A227623.P14373250839652284919

`lt[A269479(n+5), A096540(2*n+5)]`
-/

namespace A227623.P14373250839652284919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096540 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227623.P14373250839652284919

namespace A227623

/-- `lt[A269479(n+5), A096540(2*n+5)]` -/
def P14373250839652284919.Spec : Prop :=
  ∀ n, (P14373250839652284919.a n : ℤ) = A227623 (n + 1)

end A227623

/-! ## A227623.P2201043613751797854

`lt[A113407(A113402(3*n+1)), A113447(n+1)]`
-/

namespace A227623.P2201043613751797854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 (A113402 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227623.P2201043613751797854

namespace A227623

/-- `lt[A113407(A113402(3*n+1)), A113447(n+1)]` -/
def P2201043613751797854.Spec : Prop :=
  ∀ n, (P2201043613751797854.a n : ℤ) = A227623 (n + 1)

end A227623

/-!
# A227624: a(n) = numerator of r(n), where r(n) = (4*n+2)!/((3*n)!*2^n).

The programs for A227624, there is no canonical definition to state claims against.
-/

/-! ## A227624.P4385703724929903939

`A010050(2*n+1)/(A000165(n)*A064350(n))`
-/

namespace A227624.P4385703724929903939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 (2 * n + 1) : ℚ) / (A000165 n * A064350 n : ℚ)

end

end A227624.P4385703724929903939

/-!
# A227625: Indicator sequence of primes p > 3: k = p mod 6, if k = 5 then a(n) = -1, if k = 1 then a(n) = 1 else a(n) = 0, a(2) = -1, a(3) = 1.

The programs for A227625, the canonical program `A227625.P4004230417441754442` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227625 has offset 1).

The definition of A227625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227625.P3876080860562794526

`char[lt[n, ∑{p}[n+1, #]]]/A257075(n)`
-/

namespace A227625.P3876080860562794526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (A257075 n : ℚ)

end

end A227625.P3876080860562794526

namespace A227625

/-- `char[lt[n, ∑{p}[n+1, #]]]/A257075(n)` -/
def P3876080860562794526.Spec : Prop :=
  ∀ n, P3876080860562794526.a n = (A227625 (n + 1) : ℚ)

end A227625

/-! ## A227625.P3575908130158563916

`and(-A010051(n+1), (-1)^(n%3))`
-/

namespace A227625.P3575908130158563916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010051 (n + 1)) ((-1) ^ (n % 3))

end

end A227625.P3575908130158563916

namespace A227625

/-- `and(-A010051(n+1), (-1)^(n%3))` -/
def P3575908130158563916.Spec : Prop :=
  ∀ n, P3575908130158563916.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P1011809074245729884

`char[p?[xor(3, n)]-1]*A343785(n+1)`
-/

namespace A227625.P1011809074245729884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A343785 (n + 1)

end

end A227625.P1011809074245729884

namespace A227625

/-- `char[p?[xor(3, n)]-1]*A343785(n+1)` -/
def P1011809074245729884.Spec : Prop :=
  ∀ n, P1011809074245729884.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P4004230417441754442

`A010051(n+1)*A257075(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227625

/-- `A010051(n+1)*A257075(n)` -/
def P4004230417441754442.Spec : Prop :=
  ∀ n, P4004230417441754442.a n = A227625 (n + 1)

theorem P4004230417441754442.correct : P4004230417441754442.Spec := by
  intro n
  simp only [A227625, Nat.add_sub_cancel]

end A227625

/-! ## A227625.P7785504927754461815

`A257075(n)%A049076(n+1)`
-/

namespace A227625.P7785504927754461815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257075 n) (A049076 (n + 1))

end

end A227625.P7785504927754461815

namespace A227625

/-- `A257075(n)%A049076(n+1)` -/
def P7785504927754461815.Spec : Prop :=
  ∀ n, P7785504927754461815.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P12127391180899636239

`char[Δ[A166333(n)]]*A257075(n)`
-/

namespace A227625.P12127391180899636239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A257075 n

end

end A227625.P12127391180899636239

namespace A227625

/-- `char[Δ[A166333(n)]]*A257075(n)` -/
def P12127391180899636239.Spec : Prop :=
  ∀ n, P12127391180899636239.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P17517880821156730822

`A010051(n+1)*A343785(n+1)`
-/

namespace A227625.P17517880821156730822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A343785 (n + 1)

end

end A227625.P17517880821156730822

namespace A227625

/-- `A010051(n+1)*A343785(n+1)` -/
def P17517880821156730822.Spec : Prop :=
  ∀ n, P17517880821156730822.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P14087024958278543430

`A343785(n+1)%A049076(n+1)`
-/

namespace A227625.P14087024958278543430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343785 (n + 1)) (A049076 (n + 1))

end

end A227625.P14087024958278543430

namespace A227625

/-- `A343785(n+1)%A049076(n+1)` -/
def P14087024958278543430.Spec : Prop :=
  ∀ n, P14087024958278543430.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P10190774534239667831

`char[A020639(A028310(n)+1)-1]*A257075(n)`
-/

namespace A227625.P10190774534239667831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028310 n + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A257075 n

end

end A227625.P10190774534239667831

namespace A227625

/-- `char[A020639(A028310(n)+1)-1]*A257075(n)` -/
def P10190774534239667831.Spec : Prop :=
  ∀ n, P10190774534239667831.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P7994932662257722837

`(A005171(n+1)-1)^A047271(A047271(n+2)+1)`
-/

namespace A227625.P7994932662257722837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005171 (n + 1) - 1 : ℚ) ^ (A047271 (A047271 (n + 2) + 1).toNat : ℤ)

end

end A227625.P7994932662257722837

namespace A227625

/-- `(A005171(n+1)-1)^A047271(A047271(n+2)+1)` -/
def P7994932662257722837.Spec : Prop :=
  ∀ n, P7994932662257722837.a n = (A227625 (n + 1) : ℚ)

end A227625

/-! ## A227625.P4218738860593055157

`A008683(n*A005090(n+1)+1)*A010051(n+1)`
-/

namespace A227625.P4218738860593055157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n : ℤ) * A005090 (n + 1) + 1).toNat * A010051 (n + 1)

end

end A227625.P4218738860593055157

namespace A227625

/-- `A008683(n*A005090(n+1)+1)*A010051(n+1)` -/
def P4218738860593055157.Spec : Prop :=
  ∀ n, P4218738860593055157.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P8745477713754951622

`A137893(n+1)-(A010051(n+1)-A137893(n+1))²`
-/

namespace A227625.P8745477713754951622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (n + 1) - (A010051 (n + 1) - A137893 (n + 1)) ^ 2

end

end A227625.P8745477713754951622

namespace A227625

/-- `A137893(n+1)-(A010051(n+1)-A137893(n+1))²` -/
def P8745477713754951622.Spec : Prop :=
  ∀ n, P8745477713754951622.a n = A227625 (n + 1)

end A227625

/-! ## A227625.P1884371960936957012

`xor(A010051(n+1), A292590(n+2))-A292590(n+2)`
-/

namespace A227625.P1884371960936957012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (n + 1)) (A292590 (n + 2)) - A292590 (n + 2)

end

end A227625.P1884371960936957012

namespace A227625

/-- `xor(A010051(n+1), A292590(n+2))-A292590(n+2)` -/
def P1884371960936957012.Spec : Prop :=
  ∀ n, P1884371960936957012.a n = A227625 (n + 1)

end A227625

/-!
# A227627: Numbers k such that F(5*k)/(5*F(k)) is prime, where F(m) is the m-th Fibonacci number.

The programs for A227627, there is no canonical definition to state claims against.
-/

/-! ## A227627.P1483212315554063770

`record[A367859(A252746(n)+1+n)]`
-/

namespace A227627.P1483212315554063770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367859 (A252746 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227627.P1483212315554063770

/-! ## A227627.P3385858601051679110

`A266228(n+1)+A096809(A096816(n))`
-/

namespace A227627.P3385858601051679110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1) + A096809 (A096816 n).toNat

end

end A227627.P3385858601051679110

/-! ## A227627.P5679555397956295429

`A309873(A126278(n+1))+A097212(n+1)`
-/

namespace A227627.P5679555397956295429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A126278 (n + 1)).toNat + A097212 (n + 1)

end

end A227627.P5679555397956295429

/-! ## A227627.P8087214643121495378

`A097212(n+1)-A033999(A056404(n+1))`
-/

namespace A227627.P8087214643121495378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1) - A033999 (A056404 (n + 1)).toNat

end

end A227627.P8087214643121495378

/-!
# A227628: Number of Lipschitz quaternions X such that X^2 == X (mod n).

The programs for A227628, there is no canonical definition to state claims against.
-/

/-! ## A227628.P9183500502590165904

`A227867(n+1)/A146160(n+1)`
-/

namespace A227628.P9183500502590165904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227867 (n + 1) : ℚ) / (A146160 (n + 1) : ℚ)

end

end A227628.P9183500502590165904

/-! ## A227628.P18014045992006598418

`(n%2+1)*A066907(A000265(n+1))`
-/

namespace A227628.P18014045992006598418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A066907 (A000265 (n + 1)).toNat

end

end A227628.P18014045992006598418

/-! ## A227628.P10891820392069601230

`A066907(A259445(n+1))/gcd(2, n+1)`
-/

namespace A227628.P10891820392069601230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066907 (A259445 (n + 1)).toNat : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A227628.P10891820392069601230

/-! ## A227628.P10172902413621076079

`A000034(n)*A066907(A000265(n+1))`
-/

namespace A227628.P10172902413621076079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A066907 (A000265 (n + 1)).toNat

end

end A227628.P10172902413621076079

/-! ## A227628.P13251153539270504479

`A066907(A259445(n+1))/A000034(n)`
-/

namespace A227628.P13251153539270504479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066907 (A259445 (n + 1)).toNat : ℚ) / (A000034 n : ℚ)

end

end A227628.P13251153539270504479

/-! ## A227628.P1260940402385975849

`A066907(A259445(n+1))/A010673(n)!`
-/

namespace A227628.P1260940402385975849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066907 (A259445 (n + 1)).toNat : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A227628.P1260940402385975849

/-! ## A227628.P17418589293871330572

`∑[A165326(n)]*A066907(A000265(n+1))`
-/

namespace A227628.P17418589293871330572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A066907 (A000265 (n + 1)).toNat

end

end A227628.P17418589293871330572

/-! ## A227628.P8480896004871673915

`Δ[A032766(n)]*A066907(A000265(n+1))`
-/

namespace A227628.P8480896004871673915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A066907 (A000265 (n + 1)).toNat

end

end A227628.P8480896004871673915

/-! ## A227628.P13485022406685607856

`A040001(n+1)*A066907(A000265(n+1))`
-/

namespace A227628.P13485022406685607856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A066907 (A000265 (n + 1)).toNat

end

end A227628.P13485022406685607856

/-! ## A227628.P4188747361818967204

`A006519(n²+1)*A066907(A000265(n+1))`
-/

namespace A227628.P4188747361818967204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A066907 (A000265 (n + 1)).toNat

end

end A227628.P4188747361818967204

/-!
# A227629: Least splitter of the harmonic numbers H(n) and H(n+1).

The programs for A227629, there is no canonical definition to state claims against.
-/

/-! ## A227629.P16895908021434174528

`floor(A227630(n+1)/∑[1/(n+1)])`
-/

namespace A227629.P16895908021434174528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227630 (n + 1) : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A227629.P16895908021434174528

/-!
# A227630: Numerator of the least splitting rational of the harmonic numbers H(n) and H(n+1).

The programs for A227630, there is no canonical definition to state claims against.
-/

/-! ## A227630.P13917409480206384741

`ceil(∑[1/(n+1)]*A227629(n+1))`
-/

namespace A227630.P13917409480206384741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) * (A227629 (n + 1) : ℚ)⌉

end

end A227630.P13917409480206384741

/-!
# A227632: Record values in A227617.

The programs for A227632, there is no canonical definition to state claims against.
-/

/-! ## A227632.P16083058598517592080

`record[A227617(n+1)]`
-/

namespace A227632.P16083058598517592080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227632.P16083058598517592080

/-! ## A227632.P12313922039739566526

`A227617(A227633(n+1))`
-/

namespace A227632.P12313922039739566526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227617 (A227633 (n + 1)).toNat

end

end A227632.P12313922039739566526

/-! ## A227632.P17072431742967987341

`gcd(A118204(3*n+2), A329700(n+4))+n`
-/

namespace A227632.P17072431742967987341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118204 (3 * n + 2)) (A329700 (n + 4)) + n

end

end A227632.P17072431742967987341

/-!
# A227633: Where record values occur in A227617.

The programs for A227633, there is no canonical definition to state claims against.
-/

/-! ## A227633.P839765532527553428

`A100707(A227632(n+1))`
-/

namespace A227633.P839765532527553428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (A227632 (n + 1)).toNat

end

end A227633.P839765532527553428

/-! ## A227633.P9054047662510382418

`A100707(record[A227617(n+1)])`
-/

namespace A227633.P9054047662510382418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227633.P9054047662510382418

/-!
# A227634: Least splitter of log(n) and log(n+1).

The programs for A227634, there is no canonical definition to state claims against.
-/

/-! ## A227634.P6725332482339531590

`A183163(ceil(acot(n)+n))`
-/

namespace A227634.P6725332482339531590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183163 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A227634.P6725332482339531590

/-! ## A227634.P290088159973889453

`A183163(floor(acot(n))+1+n)`
-/

namespace A227634.P290088159973889453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183163 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (n : ℤ)).toNat

end

end A227634.P290088159973889453

/-! ## A227634.P1688286608694988273

`A183163(floor(sqrt(n²+1))+1)`
-/

namespace A227634.P1688286608694988273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183163 (Nat.sqrt (n ^ 2 + 1) + 1)

end

end A227634.P1688286608694988273

/-! ## A227634.P12206843644642414310

`A183163(n+1)^ceil(n/98)`
-/

namespace A227634.P12206843644642414310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183163 (n + 1) : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A227634.P12206843644642414310

/-! ## A227634.P13793083093291245562

`A183163(n+1)-A000007(n)`
-/

namespace A227634.P13793083093291245562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183163 (n + 1) - A000007 n

end

end A227634.P13793083093291245562

/-! ## A227634.P4923154511446489674

`A183163(n+1)-A151878(n)`
-/

namespace A227634.P4923154511446489674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183163 (n + 1) - A151878 n

end

end A227634.P4923154511446489674

/-! ## A227634.P17466401650052531733

`A183163(n+1)-A151909(n)`
-/

namespace A227634.P17466401650052531733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183163 (n + 1) - A151909 n

end

end A227634.P17466401650052531733

/-! ## A227634.P14446951250391378624

`A183163(n+1)-A151933(n)`
-/

namespace A227634.P14446951250391378624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183163 (n + 1) - A151933 n

end

end A227634.P14446951250391378624

/-! ## A227634.P39394022190586263

`A183163(n+1)/A054977(n)`
-/

namespace A227634.P39394022190586263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183163 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A227634.P39394022190586263

/-! ## A227634.P15807159013817034091

`gcd(A025543(n), A183163(n+1))`
-/

namespace A227634.P15807159013817034091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025543 n) (A183163 (n + 1))

end

end A227634.P15807159013817034091

/-!
# A227635: G.f.: Sum_{n>=1} x^n * (1+x)^n / (1-x^n).

The programs for A227635, there is no canonical definition to state claims against.
-/

/-! ## A227635.P5373178191021946256

`A214259(n+1)+A114003(n+1)`
-/

namespace A227635.P5373178191021946256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214259 (n + 1) + A114003 (n + 1)

end

end A227635.P5373178191021946256

/-! ## A227635.P1181595963608961489

`A000005(n+1)+A072951(n+1)-1`
-/

namespace A227635.P1181595963608961489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A072951 (n + 1) - 1)

end

end A227635.P1181595963608961489

/-! ## A227635.P2785031369152842837

`A214259(n+1)+A131507(A066446(n+1))`
-/

namespace A227635.P2785031369152842837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214259 (n + 1) + A131507 (A066446 (n + 1)).toNat

end

end A227635.P2785031369152842837

/-! ## A227635.P16622065925735277699

`A072951(n+1)-A024000(A000005(n+1))`
-/

namespace A227635.P16622065925735277699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072951 (n + 1) - A024000 (A000005 (n + 1)).toNat

end

end A227635.P16622065925735277699

/-! ## A227635.P22918705243413511

`A214258(∑[n]+1)+A072951(n+1)-1`
-/

namespace A227635.P22918705243413511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (A072951 (n + 1) - 1)

end

end A227635.P22918705243413511

/-! ## A227635.P13904500879107816310

`A072951(n+1)+A001222(∏{d}[n+1, A006530(#)])`
-/

namespace A227635.P13904500879107816310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072951 (n + 1) + A001222 (∏ d ∈ Nat.divisors (f1 n), A006530 d).toNat

end

end A227635.P13904500879107816310

/-!
# A227636: Number of n X n 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(n+1) binary array having determinant equal to one, with rows and columns of the latter in nondecreasing lexicographic order.

The programs for A227636, there is no canonical definition to state claims against.
-/

/-! ## A227636.P5436950384952758307

`A227641(∑[4*n]+1)`
-/

namespace A227636.P5436950384952758307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227636.P5436950384952758307

/-! ## A227636.P13216156912441097954

`A227641(A001844(n))+char[8]`
-/

namespace A227636.P13216156912441097954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227636.P13216156912441097954

/-! ## A227636.P1303851629509438145

`record[A227641(A001844(val(n+1, 2)))]`
-/

namespace A227636.P1303851629509438145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227636.P1303851629509438145

/-! ## A227636.P14786336699062934652

`record[A003982(n)*A227641(n+1)]`
-/

namespace A227636.P14786336699062934652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227636.P14786336699062934652

/-!
# A227637: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having determinant equal to one, with rows and columns of the latter in nondecreasing lexicographic order.

The programs for A227637, the canonical program `A227637.P4467144732718974290` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227637 has offset 1).

The definition of A227637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227637.P12433827447092828055

`∑[∑[∑[n]+(3-n)%a(n-1)]]` with `a(0)=2`
-/

namespace A227637.P12433827447092828055
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + Int.tmod (3 - (n : ℤ)) (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227637.P12433827447092828055

namespace A227637

/-- `∑[∑[∑[n]+(3-n)%a(n-1)]]` -/
def P12433827447092828055.Spec : Prop :=
  ∀ n, P12433827447092828055.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P10814700989827946696

`∑[floor((∑[a(n-1)+n]+a(n-1))/2)]` with `a(0)=2`
-/

namespace A227637.P10814700989827946696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227637.P10814700989827946696

namespace A227637

/-- `∑[floor((∑[a(n-1)+n]+a(n-1))/2)]` -/
def P10814700989827946696.Spec : Prop :=
  ∀ n, P10814700989827946696.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P4467144732718974290

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=23, a(4)=44, a(5)=78`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227637

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4467144732718974290.Spec : Prop :=
  ∀ n, P4467144732718974290.a n = A227637 (n + 1)

theorem P4467144732718974290.correct : P4467144732718974290.Spec := by
  intro n
  simp only [A227637, Nat.add_sub_cancel]

end A227637

/-! ## A227637.P9764588557984842518

`A110610(n+1)+A058923(n)`
-/

namespace A227637.P9764588557984842518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110610 (n + 1) + A058923 n

end

end A227637.P9764588557984842518

namespace A227637

/-- `A110610(n+1)+A058923(n)` -/
def P9764588557984842518.Spec : Prop :=
  ∀ n, P9764588557984842518.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P16063592414925824836

`A116721(n+1)+A055417(n)`
-/

namespace A227637.P16063592414925824836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + A055417 n

end

end A227637.P16063592414925824836

namespace A227637

/-- `A116721(n+1)+A055417(n)` -/
def P16063592414925824836.Spec : Prop :=
  ∀ n, P16063592414925824836.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P10249979422031049076

`A227161(n)+A089071(n+1)`
-/

namespace A227637.P10249979422031049076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n + A089071 (n + 1)

end

end A227637.P10249979422031049076

namespace A227637

/-- `A227161(n)+A089071(n+1)` -/
def P10249979422031049076.Spec : Prop :=
  ∀ n, P10249979422031049076.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P11503450220979347363

`A027927(n+2)+A010000(n)`
-/

namespace A227637.P11503450220979347363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + A010000 n

end

end A227637.P11503450220979347363

namespace A227637

/-- `A027927(n+2)+A010000(n)` -/
def P11503450220979347363.Spec : Prop :=
  ∀ n, P11503450220979347363.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P13102700746943587854

`∑[A000125(n)]+A010000(n)-n`
-/

namespace A227637.P13102700746943587854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A010000 n - (n : ℤ))

end

end A227637.P13102700746943587854

namespace A227637

/-- `∑[A000125(n)]+A010000(n)-n` -/
def P13102700746943587854.Spec : Prop :=
  ∀ n, P13102700746943587854.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P9291618931184209100

`A180415(n+1)+A116722(n+1)`
-/

namespace A227637.P9291618931184209100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A116722 (n + 1)

end

end A227637.P9291618931184209100

namespace A227637

/-- `A180415(n+1)+A116722(n+1)` -/
def P9291618931184209100.Spec : Prop :=
  ∀ n, P9291618931184209100.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P15026043529446016545

`A089071(n+1)+A318054(n)+1`
-/

namespace A227637.P15026043529446016545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) + (A318054 n + 1)

end

end A227637.P15026043529446016545

namespace A227637

/-- `A089071(n+1)+A318054(n)+1` -/
def P15026043529446016545.Spec : Prop :=
  ∀ n, P15026043529446016545.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P15545303022625922261

`A027927(n+2)+∑[A004280(n+1)]`
-/

namespace A227637.P15545303022625922261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227637.P15545303022625922261

namespace A227637

/-- `A027927(n+2)+∑[A004280(n+1)]` -/
def P15545303022625922261.Spec : Prop :=
  ∀ n, P15545303022625922261.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P10233596212498809979

`∑[A003600(n)]+A014206(n)-A003600(n)`
-/

namespace A227637.P10233596212498809979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A014206 n - A003600 n)

end

end A227637.P10233596212498809979

namespace A227637

/-- `∑[A003600(n)]+A014206(n)-A003600(n)` -/
def P10233596212498809979.Spec : Prop :=
  ∀ n, P10233596212498809979.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P7706620905016586603

`∑[∑[A077169(n+1)]-A055998(n)]`
-/

namespace A227637.P7706620905016586603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A055998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227637.P7706620905016586603

namespace A227637

/-- `∑[∑[A077169(n+1)]-A055998(n)]` -/
def P7706620905016586603.Spec : Prop :=
  ∀ n, P7706620905016586603.a n = A227637 (n + 1)

end A227637

/-! ## A227637.P1353561722412101478

`A000127(n+2)+A002061(n)%A000125(n)`
-/

namespace A227637.P1353561722412101478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 2) + Int.tmod (A002061 n) (A000125 n)

end

end A227637.P1353561722412101478

namespace A227637

/-- `A000127(n+2)+A002061(n)%A000125(n)` -/
def P1353561722412101478.Spec : Prop :=
  ∀ n, P1353561722412101478.a n = A227637 (n + 1)

end A227637

/-!
# A227638: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having determinant equal to one, with rows and columns of the latter in nondecreasing lexicographic order.

The programs for A227638, there is no canonical definition to state claims against.
-/

/-! ## A227638.P8913508517525899181

`A227641(∑[n+2]+4)`
-/

namespace A227638.P8913508517525899181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227638.P8913508517525899181

/-! ## A227638.P8846426465036176331

`and(-1, A227641(A167614(n+1)))`
-/

namespace A227638.P8846426465036176331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A227641 (A167614 (n + 1)).toNat)

end

end A227638.P8846426465036176331

/-! ## A227638.P6943670681360903750

`record[A227641(n+4)/A126126(n)]`
-/

namespace A227638.P6943670681360903750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227641 (n + 4) : ℚ) / (A126126 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227638.P6943670681360903750

/-! ## A227638.P6825407329384358498

`A227641(A167614(n+1))+A178798(n)`
-/

namespace A227638.P6825407329384358498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (A167614 (n + 1)).toNat + A178798 n

end

end A227638.P6825407329384358498

/-! ## A227638.P9869138560756359967

`A227641(A167614(n+1))%A016833(n)`
-/

namespace A227638.P9869138560756359967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227641 (A167614 (n + 1)).toNat) (A016833 n)

end

end A227638.P9869138560756359967

/-!
# A227639: Number of nX4 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X5 binary array having determinant equal to one, with rows and columns of the latter in nondecreasing lexicographic order.

The programs for A227639, there is no canonical definition to state claims against.
-/

/-! ## A227639.P1537917742196259794

`A227641(∑[n+3]+7)`
-/

namespace A227639.P1537917742196259794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227639.P1537917742196259794

/-! ## A227639.P17526818678459498605

`A316868(2*(n+1))+A227641(A055998(n+2))`
-/

namespace A227639.P17526818678459498605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (2 * (n + 1)) + A227641 (A055998 (n + 2)).toNat

end

end A227639.P17526818678459498605

/-!
# A227640: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having determinant equal to one, with rows and columns of the latter in nondecreasing lexicographic order.

The programs for A227640, there is no canonical definition to state claims against.
-/

/-! ## A227640.P4378997274089416816

`A227641(A374005(n+1))`
-/

namespace A227640.P4378997274089416816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (A374005 (n + 1)).toNat

end

end A227640.P4378997274089416816

/-! ## A227640.P12320375186295638568

`A227641(A167499(n+3))`
-/

namespace A227640.P12320375186295638568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (A167499 (n + 3)).toNat

end

end A227640.P12320375186295638568

/-! ## A227640.P12941251601444168525

`A227641(A155212(n)+13)`
-/

namespace A227640.P12941251601444168525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (A155212 n + 13).toNat

end

end A227640.P12941251601444168525

/-! ## A227640.P5807089064620453446

`A227641(A056000(n)+15)`
-/

namespace A227640.P5807089064620453446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (A056000 n + 15).toNat

end

end A227640.P5807089064620453446

/-! ## A227640.P18401200342769252907

`A227641(eq[7, A066657(n)])`
-/

namespace A227640.P18401200342769252907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227640.P18401200342769252907

/-!
# A227641: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having determinant equal to one, with rows and columns of the latter in nondecreasing lexicographic order.

The programs for A227641, there is no canonical definition to state claims against.
-/

/-! ## A227641.P13168215095396728473

`A113221(A278157(n+1))+A002024(n+1)`
-/

namespace A227641.P13168215095396728473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A278157 (n + 1)).toNat + A002024 (n + 1)

end

end A227641.P13168215095396728473

/-! ## A227641.P17609610178053346071

`A333943(A047666(n+1)%A341211(n)²)`
-/

namespace A227641.P17609610178053346071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333943 (Int.tmod (A047666 (n + 1)) (A341211 n ^ 2)).toNat

end

end A227641.P17609610178053346071

/-! ## A227641.P11359190144752879301

`A087092(A014430(n))`
-/

namespace A227641.P11359190144752879301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087092 (A014430 n).toNat

end

end A227641.P11359190144752879301

/-! ## A227641.P15305392807823024069

`A103298(A202795(n+1))`
-/

namespace A227641.P15305392807823024069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A202795 (n + 1)).toNat

end

end A227641.P15305392807823024069

/-! ## A227641.P9650136565857503366

`A103298(A219569(n+1))`
-/

namespace A227641.P9650136565857503366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A219569 (n + 1)).toNat

end

end A227641.P9650136565857503366

/-!
# A227644: Perfect powers equal to the sum of 2 factorial numbers.

The programs for A227644, there is no canonical definition to state claims against.
-/

/-! ## A227644.P5006401714653310589

`filter[A066847(n), A075802(#)]`
-/

namespace A227644.P5006401714653310589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A227644.P5006401714653310589

/-!
# A227645: Perfect powers equal to the sum of 4 factorial numbers.

The programs for A227645, there is no canonical definition to state claims against.
-/

/-! ## A227645.P13457809115071744008

`record[A057521(A111222(n))]`
-/

namespace A227645.P13457809115071744008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A111222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227645.P13457809115071744008

/-! ## A227645.P2061245295468301565

`filter[A111222(n), A075802(#)]`
-/

namespace A227645.P2061245295468301565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A227645.P2061245295468301565

/-! ## A227645.P11835390706838071472

`filter[A111222(n), A112526(#)]`
-/

namespace A227645.P11835390706838071472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A227645.P11835390706838071472

/-! ## A227645.P15600513948401994723

`filter[A111222(n), A268340(#)]`
-/

namespace A227645.P15600513948401994723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268340 (f1 j).toNat = 1) n)

end

end A227645.P15600513948401994723

/-! ## A227645.P1920807516796387831

`∩[A001597(n+1), A111222(n)]`
-/

namespace A227645.P1920807516796387831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227645.P1920807516796387831

/-!
# A227646: Perfect powers equal to the sum of 5 factorial numbers.

The programs for A227646, there is no canonical definition to state claims against.
-/

/-! ## A227646.P3954365895855320852

`∩[A265731(n+1), A276882(n+1)]`
-/

namespace A227646.P3954365895855320852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227646.P3954365895855320852

/-! ## A227646.P6564547602885264869

`A001597(eq[A067693(n), A074279(n+1)])`
-/

namespace A227646.P6564547602885264869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227646.P6564547602885264869

/-! ## A227646.P5492388819318357543

`A321454(A219035(n+2))`
-/

namespace A227646.P5492388819318357543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321454 (A219035 (n + 2)).toNat

end

end A227646.P5492388819318357543

/-!
# A227647: Perfect powers equal to the sum of 6 factorial numbers.

The programs for A227647, there is no canonical definition to state claims against.
-/

/-! ## A227647.P9197295102830191390

`A001597(lt[A321765(3*(n+1)), A001222(n+1)])`
-/

namespace A227647.P9197295102830191390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227647.P9197295102830191390

/-! ## A227647.P13431724703201440151

`A001597(lt[A321765(3*(n+1)), A033676(n+1)])`
-/

namespace A227647.P13431724703201440151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227647.P13431724703201440151

/-! ## A227647.P8713261761870228546

`A001597(lt[A321765(3*(n+1)), A045778(n+1)])`
-/

namespace A227647.P8713261761870228546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227647.P8713261761870228546

/-! ## A227647.P15362499304732559762

`A001597(A063992(n+1)%A269727(n+1))`
-/

namespace A227647.P15362499304732559762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Int.tmod (A063992 (n + 1)) (A269727 (n + 1))).toNat

end

end A227647.P15362499304732559762

/-! ## A227647.P15538695149392167822

`A001597(A103679(n+4)%A347392(n+5))`
-/

namespace A227647.P15538695149392167822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Int.tmod (A103679 (n + 4)) (A347392 (n + 5))).toNat

end

end A227647.P15538695149392167822

/-!
# A227648: Perfect powers equal to the sum of 7 factorial numbers.

The programs for A227648, there is no canonical definition to state claims against.
-/

/-! ## A227648.P11116156535279617793

`A227649(lt[A000043(n+1), A161341(n+1)])`
-/

namespace A227648.P11116156535279617793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227649 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227648.P11116156535279617793

/-! ## A227648.P16619198240197756895

`filter[A050675(n+1), A075802(#)]`
-/

namespace A227648.P16619198240197756895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A227648.P16619198240197756895

/-! ## A227648.P14567032528888946906

`filter[A227649(n+1), A114213(#)]`
-/

namespace A227648.P14567032528888946906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A227648.P14567032528888946906

/-! ## A227648.P7047479175802659660

`filter[A072777(n+2), A114213(#)]`
-/

namespace A227648.P7047479175802659660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A227648.P7047479175802659660

/-! ## A227648.P85813703237908057

`filter[A080366(n+2), A114213(#)]`
-/

namespace A227648.P85813703237908057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A227648.P85813703237908057

/-!
# A227649: Perfect powers equal to the sum of 8 factorial numbers.

The programs for A227649, there is no canonical definition to state claims against.
-/

/-! ## A227649.P13846544098955441097

`lt[A035306(A267817(2*n+1)), A253641(n)]`
-/

namespace A227649.P13846544098955441097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (A267817 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227649.P13846544098955441097

/-! ## A227649.P12146837108918662815

`record[A081676(n+8)/A298575(n+3)]`
-/

namespace A227649.P12146837108918662815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081676 (n + 8) : ℚ) / (A298575 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227649.P12146837108918662815

/-! ## A227649.P12667520263495841925

`record[A072103(n+2)%A161341(2*n+3)]`
-/

namespace A227649.P12667520263495841925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072103 (n + 2)) (A161341 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227649.P12667520263495841925

/-! ## A227649.P17131730730460646493

`A359493(A262524(n+2))`
-/

namespace A227649.P17131730730460646493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (A262524 (n + 2)).toNat

end

end A227649.P17131730730460646493

/-! ## A227649.P8224917217380148899

`A000194(A062965(n+2))`
-/

namespace A227649.P8224917217380148899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A062965 (n + 2)).toNat

end

end A227649.P8224917217380148899

/-!
# A227650: Perfect powers equal to the sum of 9 factorial numbers.

The programs for A227650, there is no canonical definition to state claims against.
-/

/-! ## A227650.P6997406492776753268

`record[A001597(A286001(n+5))]`
-/

namespace A227650.P6997406492776753268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A286001 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227650.P6997406492776753268

/-! ## A227650.P3298544301571609295

`filter[A321454(n+3), A075802(#)]`
-/

namespace A227650.P3298544301571609295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321454 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A227650.P3298544301571609295

/-! ## A227650.P3714336960714128416

`A001597(4%A111151(n+1)+n)`
-/

namespace A227650.P3714336960714128416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Int.tmod 4 (A111151 (n + 1)) + (n : ℤ)).toNat

end

end A227650.P3714336960714128416

/-! ## A227650.P1935115214606944183

`A001597(n+4)%A154532(n+1)`
-/

namespace A227650.P1935115214606944183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (n + 4)) (A154532 (n + 1))

end

end A227650.P1935115214606944183

/-! ## A227650.P11405307364815965319

`A001597(n%A293036(n+1)+4)`
-/

namespace A227650.P11405307364815965319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Int.tmod (n : ℤ) (A293036 (n + 1)) + 4).toNat

end

end A227650.P11405307364815965319

/-!
# A227651: Perfect powers equal to the sum of 10 factorial numbers.

The programs for A227651, there is no canonical definition to state claims against.
-/

/-! ## A227651.P6365828416916850243

`A227649(A055645(n)+3)`
-/

namespace A227651.P6365828416916850243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227649 (A055645 n + 3).toNat

end

end A227651.P6365828416916850243

/-! ## A227651.P13852900139523668510

`A227649(A262545(n+1)+3)`
-/

namespace A227651.P13852900139523668510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227649 (A262545 (n + 1) + 3).toNat

end

end A227651.P13852900139523668510

/-! ## A227651.P1457992787073033940

`A227649(n+3)%A124165(n+2)`
-/

namespace A227651.P1457992787073033940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227649 (n + 3)) (A124165 (n + 2))

end

end A227651.P1457992787073033940

/-! ## A227651.P10594878832586661843

`A227649(n+3)^A227655(A227655(n))`
-/

namespace A227651.P10594878832586661843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227649 (n + 3) : ℚ) ^ (A227655 (A227655 n).toNat : ℤ)

end

end A227651.P10594878832586661843

/-! ## A227651.P16906845946758932346

`A227649(A382083(n+1))`
-/

namespace A227651.P16906845946758932346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227649 (A382083 (n + 1)).toNat

end

end A227651.P16906845946758932346

/-!
# A227652: Perfect powers which are the product of distinct factorials.

The programs for A227652, there is no canonical definition to state claims against.
-/

/-! ## A227652.P12573955584273514628

`∩[A058295(n+1), A368681(n+1)]`
-/

namespace A227652.P12573955584273514628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227652.P12573955584273514628

/-! ## A227652.P996995829296508092

`∩[A034878(n+1)², A058295(n+1)]`
-/

namespace A227652.P996995829296508092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034878 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227652.P996995829296508092

/-! ## A227652.P6052787911814500576

`∩[A002093(n+1)², A058295(n+1)]`
-/

namespace A227652.P6052787911814500576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227652.P6052787911814500576

/-!
# A227653: a(1) = least k such that 1/2 + 1/3 < H(k) - H(3); a(2) = least k such that H(a(1)) - H(3) < H(k) -H(a(1)), and for n > 2, a(n) = least k such that H(a(n-1)) - H(a(n-2)) > H(k) - H(a(n-1)), where H = harmonic number.

The programs for A227653, the canonical program `A227653.P2584347059661360907` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227653 has offset 1).

The definition of A227653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227653.P2584347059661360907

`3*a(n-1)-a(n-2)-a(n-4)` with `a(0)=8, a(1)=21, a(2)=54, a(3)=138`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227653

/-- `3*a(n-1)-a(n-2)-a(n-4)` -/
def P2584347059661360907.Spec : Prop :=
  ∀ n, P2584347059661360907.a n = A227653 (n + 1)

theorem P2584347059661360907.correct : P2584347059661360907.Spec := by
  intro n
  simp only [A227653, Nat.add_sub_cancel]

end A227653

/-! ## A227653.P11890086035236156014

`A077849(n+2)`
-/

namespace A227653.P11890086035236156014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077849 (n + 2)

end

end A227653.P11890086035236156014

namespace A227653

/-- `A077849(n+2)` -/
def P11890086035236156014.Spec : Prop :=
  ∀ n, P11890086035236156014.a n = A227653 (n + 1)

end A227653

/-! ## A227653.P9821572501865325461

`record[A077849(abs(2-n))]`
-/

namespace A227653.P9821572501865325461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077849 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227653.P9821572501865325461

namespace A227653

/-- `record[A077849(abs(2-n))]` -/
def P9821572501865325461.Spec : Prop :=
  ∀ n, P9821572501865325461.a n = A227653 (n + 1)

end A227653

/-! ## A227653.P11632444106511971863

`floor(A347725(n+4)/3)`
-/

namespace A227653.P11632444106511971863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347725 (n + 4) : ℚ) / 3⌋

end

end A227653.P11632444106511971863

namespace A227653

/-- `floor(A347725(n+4)/3)` -/
def P11632444106511971863.Spec : Prop :=
  ∀ n, P11632444106511971863.a n = A227653 (n + 1)

end A227653

/-! ## A227653.P1249035597991851482

`∑[A077939(n+2)]+3`
-/

namespace A227653.P1249035597991851482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A227653.P1249035597991851482

namespace A227653

/-- `∑[A077939(n+2)]+3` -/
def P1249035597991851482.Spec : Prop :=
  ∀ n, P1249035597991851482.a n = A227653 (n + 1)

end A227653

/-! ## A227653.P8628988089165709408

`∑[abs(A077986(n+2))]+3`
-/

namespace A227653.P8628988089165709408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077986 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A227653.P8628988089165709408

namespace A227653

/-- `∑[abs(A077986(n+2))]+3` -/
def P8628988089165709408.Spec : Prop :=
  ∀ n, P8628988089165709408.a n = A227653 (n + 1)

end A227653

/-!
# A227655: Number A(n,k) of lattice paths from {n}^k to {0}^k using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_k) we have abs(p_{i}-p_{i+1}) <= 1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A227655, there is no canonical definition to state claims against.
-/

/-! ## A227655.P11326177295072745722

`A175948(A225816(n))`
-/

namespace A227655.P11326177295072745722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A225816 n).toNat

end

end A227655.P11326177295072745722

/-!
# A227656: Number of lattice paths from {2}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227656, there is no canonical definition to state claims against.
-/

/-! ## A227656.P2534275382508378303

`A227655(∑[n+2]+3)`
-/

namespace A227656.P2534275382508378303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A227656.P2534275382508378303

/-! ## A227656.P11017146192437477345

`A227655(A340266(n+1))+A137579(n)`
-/

namespace A227656.P11017146192437477345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A340266 (n + 1)).toNat + A137579 n

end

end A227656.P11017146192437477345

/-! ## A227656.P5548915501754283

`A014902(n)*A227655(A340266(n+1))`
-/

namespace A227656.P5548915501754283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A227655 (A340266 (n + 1)).toNat

end

end A227656.P5548915501754283

/-! ## A227656.P6285404437463183363

`gcd(A000038(n), A227655(A340266(n+1)))`
-/

namespace A227656.P6285404437463183363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A227655 (A340266 (n + 1)).toNat)

end

end A227656.P6285404437463183363

/-! ## A227656.P11199821616664308952

`or(A000007(n), A227655(A340266(n+1)))`
-/

namespace A227656.P11199821616664308952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A227655 (A340266 (n + 1)).toNat)

end

end A227656.P11199821616664308952

/-!
# A227657: Number of lattice paths from {3}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227657, there is no canonical definition to state claims against.
-/

/-! ## A227657.P2157635422317261913

`A227655(A167614(n+2))`
-/

namespace A227657.P2157635422317261913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A167614 (n + 2)).toNat

end

end A227657.P2157635422317261913

/-! ## A227657.P8715250748122723717

`A227655(A141214(n)+6)`
-/

namespace A227657.P8715250748122723717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A141214 n + 6).toNat

end

end A227657.P8715250748122723717

/-! ## A227657.P7092352715662260860

`A227655(A052905(n)+8)`
-/

namespace A227657.P7092352715662260860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A052905 n + 8).toNat

end

end A227657.P7092352715662260860

/-! ## A227657.P11794522934349405262

`A227655(eq[3, A002262(n)])`
-/

namespace A227657.P11794522934349405262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227657.P11794522934349405262

/-! ## A227657.P5931773272265729706

`A227655(A340266(n+2)+1)`
-/

namespace A227657.P5931773272265729706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A340266 (n + 2) + 1).toNat

end

end A227657.P5931773272265729706

/-!
# A227658: Number of lattice paths from {4}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227658, there is no canonical definition to state claims against.
-/

/-! ## A227658.P677193819201396185

`A227655(A155212(n)+12)`
-/

namespace A227658.P677193819201396185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A155212 n + 12).toNat

end

end A227658.P677193819201396185

/-! ## A227658.P16721242625089110552

`A227655(eq[4, A002262(n)])`
-/

namespace A227658.P16721242625089110552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227658.P16721242625089110552

/-! ## A227658.P15504260823867679178

`A227655(eq[16, A059268(n)])`
-/

namespace A227658.P15504260823867679178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227658.P15504260823867679178

/-! ## A227658.P5684378330429437948

`A227655(A000217(n+4)+4)`
-/

namespace A227658.P5684378330429437948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A000217 (n + 4) + 4).toNat

end

end A227658.P5684378330429437948

/-! ## A227658.P17659164198882677935

`A227655(eq[4, A144328(n+1)])`
-/

namespace A227658.P17659164198882677935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227658.P17659164198882677935

/-!
# A227659: Number of lattice paths from {5}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227659, there is no canonical definition to state claims against.
-/

/-! ## A227659.P8950399111875742795

`A227655(A000217(n+5)+5)`
-/

namespace A227659.P8950399111875742795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A000217 (n + 5) + 5).toNat

end

end A227659.P8950399111875742795

/-! ## A227659.P11003383085601001712

`A227655(eq[6, A002260(n+1)])`
-/

namespace A227659.P11003383085601001712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227659.P11003383085601001712

/-!
# A227660: Number of lattice paths from {6}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227660, there is no canonical definition to state claims against.
-/

/-! ## A227660.P13898255951772152323

`A227655(eq[7, A002260(n+1)])`
-/

namespace A227660.P13898255951772152323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227660.P13898255951772152323

/-!
# A227663: Number of lattice paths from {9}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227663, there is no canonical definition to state claims against.
-/

/-! ## A227663.P15560804802101847615

`A227655(A167499(n+8)+4)`
-/

namespace A227663.P15560804802101847615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A167499 (n + 8) + 4).toNat

end

end A227663.P15560804802101847615

/-!
# A227665: Number of lattice paths from {n}^3 to {0}^3 using steps that decrement one component by 1 such that for each point (p_1,p_2,p_3) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227665, the canonical program `A227665.P17955885001884573603` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227665 has offset 0).

The definition of A227665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227665.P17955885001884573603

`7*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227665

/-- `7*a(n-1)+2*a(n-2)` -/
def P17955885001884573603.Spec : Prop :=
  ∀ n, (P17955885001884573603.a n : ℤ) = A227665 n

theorem P17955885001884573603.correct : P17955885001884573603.Spec := by
  intro n
  simp only [A227665]

end A227665

/-! ## A227665.P17638429377417650760

`ogf((-1+x)/(-1+7x+2x^2))`
-/

namespace A227665.P17638429377417650760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -7, -2] n

end

end A227665.P17638429377417650760

namespace A227665

/-- `ogf((-1+x)/(-1+7x+2x^2))` -/
def P17638429377417650760.Spec : Prop :=
  ∀ n, P17638429377417650760.a n = A227665 n

end A227665

/-! ## A227665.P11060191595952499895

`Δ[A015555(n)]`
-/

namespace A227665.P11060191595952499895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227665.P11060191595952499895

namespace A227665

/-- `Δ[A015555(n)]` -/
def P11060191595952499895.Spec : Prop :=
  ∀ n, P11060191595952499895.a n = A227665 n

end A227665

/-! ## A227665.P17783714973168799170

`A015555(n+1)-A015555(n)`
-/

namespace A227665.P17783714973168799170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015555 (n + 1) - A015555 n

end

end A227665.P17783714973168799170

namespace A227665

/-- `A015555(n+1)-A015555(n)` -/
def P17783714973168799170.Spec : Prop :=
  ∀ n, P17783714973168799170.a n = A227665 n

end A227665

/-! ## A227665.P12861536018678968718

`record[A015555(A123108(n))]-A015555(n)`
-/

namespace A227665.P12861536018678968718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015555 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A015555 n

end

end A227665.P12861536018678968718

namespace A227665

/-- `record[A015555(A123108(n))]-A015555(n)` -/
def P12861536018678968718.Spec : Prop :=
  ∀ n, P12861536018678968718.a n = A227665 n

end A227665

/-! ## A227665.P6440693663174592975

`A254663(n)-2*A015555(n)`
-/

namespace A227665.P6440693663174592975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254663 n - 2 * A015555 n

end

end A227665.P6440693663174592975

namespace A227665

/-- `A254663(n)-2*A015555(n)` -/
def P6440693663174592975.Spec : Prop :=
  ∀ n, P6440693663174592975.a n = A227665 n

end A227665

/-!
# A227666: Number of lattice paths from {n}^4 to {0}^4 using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_4) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227666, there is no canonical definition to state claims against.
-/

/-! ## A227666.P8220271032096394403

`A227655(A052905(n+2))`
-/

namespace A227666.P8220271032096394403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A052905 (n + 2)).toNat

end

end A227666.P8220271032096394403

/-! ## A227666.P16839660895731645227

`A227655(eq[4, A025581(n)])`
-/

namespace A227666.P16839660895731645227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227666.P16839660895731645227

/-! ## A227666.P5270592849800998202

`A227655(eq[9, A099375(n)])`
-/

namespace A227666.P5270592849800998202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227666.P5270592849800998202

/-! ## A227666.P1417213718159228180

`A227655(eq[16, A130321(n)])`
-/

namespace A227666.P1417213718159228180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227666.P1417213718159228180

/-! ## A227666.P743321153164871366

`A227655(eq[5, A004736(n+1)])`
-/

namespace A227666.P743321153164871366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227666.P743321153164871366

/-!
# A227667: Number of lattice paths from {n}^5 to {0}^5 using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_5) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227667, there is no canonical definition to state claims against.
-/

/-! ## A227667.P11504811394695226990

`A227655(A055999(n+3))`
-/

namespace A227667.P11504811394695226990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A055999 (n + 3)).toNat

end

end A227667.P11504811394695226990

/-! ## A227667.P3713410836865760060

`A227655(eq[5, A025581(n)])`
-/

namespace A227667.P3713410836865760060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227667.P3713410836865760060

/-! ## A227667.P1192719359597695288

`A227655(eq[6, A193739(n)])`
-/

namespace A227667.P1192719359597695288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227667.P1192719359597695288

/-! ## A227667.P3125695155588638930

`A227655(eq[11, A099375(n)])`
-/

namespace A227667.P3125695155588638930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227667.P3125695155588638930

/-! ## A227667.P16446298107172845462

`A227655(eq[32, A130321(n)])`
-/

namespace A227667.P16446298107172845462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227667.P16446298107172845462

/-!
# A227668: Number of lattice paths from {n}^6 to {0}^6 using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_6) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227668, there is no canonical definition to state claims against.
-/

/-! ## A227668.P17498913765347110656

`A227655(eq[7, A004736(n+1)])`
-/

namespace A227668.P17498913765347110656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227668.P17498913765347110656

/-!
# A227669: 

The programs for A227669, there is no canonical definition to state claims against.
-/

/-! ## A227669.P17458185074663215009

`A227655(A155212(n+4))`
-/

namespace A227669.P17458185074663215009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A155212 (n + 4)).toNat

end

end A227669.P17458185074663215009

/-!
# A227672: 

The programs for A227672, there is no canonical definition to state claims against.
-/

/-! ## A227672.P15959528021931569034

`A227655(A000217(n+11)-11)`
-/

namespace A227672.P15959528021931569034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A000217 (n + 11) - 11).toNat

end

end A227672.P15959528021931569034

/-!
# A227673: Number of lattice paths from {n}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1.

The programs for A227673, there is no canonical definition to state claims against.
-/

/-! ## A227673.P2180926599916546906

`A227655(∑[4*n])`
-/

namespace A227673.P2180926599916546906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227673.P2180926599916546906

/-!
# A227674: Number of n X n 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(n+1) binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227674, there is no canonical definition to state claims against.
-/

/-! ## A227674.P15823592554703772561

`A227679(∑[4*n]+1)`
-/

namespace A227674.P15823592554703772561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227674.P15823592554703772561

/-! ## A227674.P2774626147606814369

`record[A227679(Δ[A235355(n)])]`
-/

namespace A227674.P2774626147606814369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227674.P2774626147606814369

/-! ## A227674.P840806685217152635

`record[A227679(record[A326657(n)])]`
-/

namespace A227674.P840806685217152635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227674.P840806685217152635

/-! ## A227674.P16401900264630395312

`A227679(A001844(n))+char[8]`
-/

namespace A227674.P16401900264630395312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227674.P16401900264630395312

/-!
# A227675: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227675, the canonical program `A227675.P630598864551539950` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227675 has offset 1).

The definition of A227675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227675.P630598864551539950

`A223659(n+1)+∑[C(n, 3)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227675

/-- `A223659(n+1)+∑[C(n, 3)]` -/
def P630598864551539950.Spec : Prop :=
  ∀ n, P630598864551539950.a n = A227675 (n + 1)

theorem P630598864551539950.correct : P630598864551539950.Spec := by
  intro n
  simp only [A227675, Nat.add_sub_cancel]

end A227675

/-! ## A227675.P13655767585500191879

`∑[C(n, 3)]+∑[A257890(n)]+1`
-/

namespace A227675.P13655767585500191879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A227675.P13655767585500191879

namespace A227675

/-- `∑[C(n, 3)]+∑[A257890(n)]+1` -/
def P13655767585500191879.Spec : Prop :=
  ∀ n, P13655767585500191879.a n = A227675 (n + 1)

end A227675

/-! ## A227675.P12655652705062755594

`A223659(n+1)+C(A000027(n+1), 4)`
-/

namespace A227675.P12655652705062755594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) + (Nat.choose (A000027 (n + 1)).toNat 4 : ℤ)

end

end A227675.P12655652705062755594

namespace A227675

/-- `A223659(n+1)+C(A000027(n+1), 4)` -/
def P12655652705062755594.Spec : Prop :=
  ∀ n, P12655652705062755594.a n = A227675 (n + 1)

end A227675

/-! ## A227675.P15803564448214006325

`A223659(n+1)+∑[A000292(n)-n²]`
-/

namespace A227675.P15803564448214006325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227675.P15803564448214006325

namespace A227675

/-- `A223659(n+1)+∑[A000292(n)-n²]` -/
def P15803564448214006325.Spec : Prop :=
  ∀ n, P15803564448214006325.a n = A227675 (n + 1)

end A227675

/-! ## A227675.P4679327710551291155

`A000127(n+1)+A223659(n+1)-A000124(n)`
-/

namespace A227675.P4679327710551291155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + (A223659 (n + 1) - A000124 n)

end

end A227675.P4679327710551291155

namespace A227675

/-- `A000127(n+1)+A223659(n+1)-A000124(n)` -/
def P4679327710551291155.Spec : Prop :=
  ∀ n, P4679327710551291155.a n = A227675 (n + 1)

end A227675

/-! ## A227675.P14574408341857801758

`A136395(n+1)+A062989(n)`
-/

namespace A227675.P14574408341857801758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136395 (n + 1) + A062989 n

end

end A227675.P14574408341857801758

namespace A227675

/-- `A136395(n+1)+A062989(n)` -/
def P14574408341857801758.Spec : Prop :=
  ∀ n, P14574408341857801758.a n = A227675 (n + 1)

end A227675

/-! ## A227675.P3522590237204477288

`A223659(n+1)+A000332(n+1)`
-/

namespace A227675.P3522590237204477288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) + A000332 (n + 1)

end

end A227675.P3522590237204477288

namespace A227675

/-- `A223659(n+1)+A000332(n+1)` -/
def P3522590237204477288.Spec : Prop :=
  ∀ n, P3522590237204477288.a n = A227675 (n + 1)

end A227675

/-!
# A227676: Number of nX3 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X4 binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227676, there is no canonical definition to state claims against.
-/

/-! ## A227676.P13262545728215621972

`A227679(∑[n+2]+4)`
-/

namespace A227676.P13262545728215621972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227676.P13262545728215621972

/-! ## A227676.P14718702680513449251

`A227679(A167614(n+1))+A025439(n)`
-/

namespace A227676.P14718702680513449251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A167614 (n + 1)).toNat + A025439 n

end

end A227676.P14718702680513449251

/-! ## A227676.P13470488959547563250

`A227679(A167614(n+1))+A178798(n)`
-/

namespace A227676.P13470488959547563250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A167614 (n + 1)).toNat + A178798 n

end

end A227676.P13470488959547563250

/-! ## A227676.P9010772451633532688

`A227679(A167614(n+1))+A184955(n)`
-/

namespace A227676.P9010772451633532688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A167614 (n + 1)).toNat + A184955 n

end

end A227676.P9010772451633532688

/-! ## A227676.P8754797672928023050

`A227679(A167614(n+1))%A017596(n)`
-/

namespace A227676.P8754797672928023050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227679 (A167614 (n + 1)).toNat) (A017596 n)

end

end A227676.P8754797672928023050

/-!
# A227677: Number of n X 4 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 5 binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227677, there is no canonical definition to state claims against.
-/

/-! ## A227677.P4070917296684118343

`A227679(A374004(n+1))`
-/

namespace A227677.P4070917296684118343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A374004 (n + 1)).toNat

end

end A227677.P4070917296684118343

/-! ## A227677.P4567985136663373025

`A227679(A052905(n)+9)`
-/

namespace A227677.P4567985136663373025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A052905 n + 9).toNat

end

end A227677.P4567985136663373025

/-! ## A227677.P14984184705506141525

`A227679(A055999(n)+10)`
-/

namespace A227677.P14984184705506141525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A055999 n + 10).toNat

end

end A227677.P14984184705506141525

/-! ## A227677.P12334709396003615902

`A227679(A167614(n+2)+1)`
-/

namespace A227677.P12334709396003615902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A167614 (n + 2) + 1).toNat

end

end A227677.P12334709396003615902

/-! ## A227677.P3386220515128840589

`A227679(A166136(n+2)-2)`
-/

namespace A227677.P3386220515128840589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A166136 (n + 2) - 2).toNat

end

end A227677.P3386220515128840589

/-!
# A227678: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227678, there is no canonical definition to state claims against.
-/

/-! ## A227678.P6324570321965935271

`A227679(A374005(n+1))`
-/

namespace A227678.P6324570321965935271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A374005 (n + 1)).toNat

end

end A227678.P6324570321965935271

/-! ## A227678.P16246035494313549178

`A227679(A167499(n+3))`
-/

namespace A227678.P16246035494313549178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A167499 (n + 3)).toNat

end

end A227678.P16246035494313549178

/-! ## A227678.P17143537691700999041

`A227679(A155212(n)+13)`
-/

namespace A227678.P17143537691700999041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A155212 n + 13).toNat

end

end A227678.P17143537691700999041

/-! ## A227678.P3588589382660544736

`A227679(A056000(n)+15)`
-/

namespace A227678.P3588589382660544736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (A056000 n + 15).toNat

end

end A227678.P3588589382660544736

/-! ## A227678.P2566855940503175250

`A227679(Δ[A264443(n)])`
-/

namespace A227678.P2566855940503175250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227679 (f1 (n + 1) - f1 n).toNat

end

end A227678.P2566855940503175250

/-!
# A227679: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227679, there is no canonical definition to state claims against.
-/

/-! ## A227679.P10347281771166065139

`floor(sqrt(A223762(n+1)%A223746(n+1)))`
-/

namespace A227679.P10347281771166065139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A223762 (n + 1)) (A223746 (n + 1)))

end

end A227679.P10347281771166065139

/-! ## A227679.P13522354083987550010

`floor(sqrt(A223850(n+1)%A223746(n+1)))`
-/

namespace A227679.P13522354083987550010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A223850 (n + 1)) (A223746 (n + 1)))

end

end A227679.P13522354083987550010

/-! ## A227679.P5049442790860058983

`A227103(∑[A287378(n)])+A004247(n)`
-/

namespace A227679.P5049442790860058983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A004247 n

end

end A227679.P5049442790860058983

/-! ## A227679.P2452875563631951419

`A240338(∑[A287378(n)])+A004247(n)`
-/

namespace A227679.P2452875563631951419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A004247 n

end

end A227679.P2452875563631951419

/-! ## A227679.P13149743737726261939

`A227103(A001104(n+1))+A004247(n)`
-/

namespace A227679.P13149743737726261939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A001104 (n + 1)).toNat + A004247 n

end

end A227679.P13149743737726261939

/-!
# A227680: Numbers whose sum of semiprime divisors is a prime number.

The programs for A227680, there is no canonical definition to state claims against.
-/

/-! ## A227680.P6432111689674534324

`∩[A130734(n+1), A345382(n+1)]`
-/

namespace A227680.P6432111689674534324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227680.P6432111689674534324

/-!
# A227681: G.f.: exp( Sum_{n>=1} x^n * (1+x)^n / (n*(1-x^n)) ).

The programs for A227681, there is no canonical definition to state claims against.
-/

/-! ## A227681.P14555516325170038803

`∑[A003056(A076148(n+1))]`
-/

namespace A227681.P14555516325170038803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A076148 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227681.P14555516325170038803

/-! ## A227681.P3098804960950502627

`A194698(∑[A301789(n+1)])-n`
-/

namespace A227681.P3098804960950502627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A227681.P3098804960950502627

/-! ## A227681.P4085834599934159222

`A000006(A027102(n+1)-A069754(n+1))`
-/

namespace A227681.P4085834599934159222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A027102 (n + 1) - A069754 (n + 1)).toNat

end

end A227681.P4085834599934159222

/-! ## A227681.P674765028237248507

`A055244(n)-A319951(A217156(2*n+5))`
-/

namespace A227681.P674765028237248507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A319951 (A217156 (2 * n + 5)).toNat

end

end A227681.P674765028237248507

/-! ## A227681.P10262134518374275453

`A293137(A301994(n+1))`
-/

namespace A227681.P10262134518374275453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A301994 (n + 1)).toNat

end

end A227681.P10262134518374275453

/-!
# A227682: G.f.: exp( Sum_{n>=1} x^n / (n*(1-x)^n * (1-x^n)) ).

The programs for A227682, there is no canonical definition to state claims against.
-/

/-! ## A227682.P9893103393942946402

`A238350(∑[(n+1)²]-1)`
-/

namespace A227682.P9893103393942946402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A227682.P9893103393942946402

/-! ## A227682.P15080905560991790533

`A240745(A062399(n))`
-/

namespace A227682.P15080905560991790533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240745 ((A062399 n).toNat + 55)

end

end A227682.P15080905560991790533

/-! ## A227682.P7744270018295186561

`A240745(A120126(n))`
-/

namespace A227682.P7744270018295186561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240745 ((A120126 n).toNat + 55)

end

end A227682.P7744270018295186561

/-! ## A227682.P17483970682213712757

`A154470(A240745(n))`
-/

namespace A227682.P17483970682213712757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A240745 (n + 55)).toNat

end

end A227682.P17483970682213712757

/-! ## A227682.P622716096643457924

`A240745(A351870(n))`
-/

namespace A227682.P622716096643457924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240745 ((A351870 n).toNat + 55)

end

end A227682.P622716096643457924

/-!
# A227683: Number of digits in n-th Mersenne number.

The programs for A227683, the canonical program `A227683.P3007357548507244957` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227683 has offset 1).

The definition of A227683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227683.P3007357548507244957

`ceil(p?[xor(1, n)]/log2(10))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227683

/-- `ceil(p?[xor(1, n)]/log2(10))` -/
def P3007357548507244957.Spec : Prop :=
  ∀ n, P3007357548507244957.a n = A227683 (n + 1)

theorem P3007357548507244957.correct : P3007357548507244957.Spec := by
  intro n
  simp only [A227683, Nat.add_sub_cancel]

end A227683

/-! ## A227683.P6726438342342036190

`floor(p?[xor(1, n)]/log2(10))+1`
-/

namespace A227683.P6726438342342036190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1

end

end A227683.P6726438342342036190

namespace A227683

/-- `floor(p?[xor(1, n)]/log2(10))+1` -/
def P6726438342342036190.Spec : Prop :=
  ∀ n, P6726438342342036190.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P13450720808644263650

`ceil(p?[n%3+n]/log2(10))`
-/

namespace A227683.P13450720808644263650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A227683.P13450720808644263650

namespace A227683

/-- `ceil(p?[n%3+n]/log2(10))` -/
def P13450720808644263650.Spec : Prop :=
  ∀ n, P13450720808644263650.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P4971931438031684864

`ceil(p?[n-(-1)^n]/log2(10))`
-/

namespace A227683.P4971931438031684864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A227683.P4971931438031684864

namespace A227683

/-- `ceil(p?[n-(-1)^n]/log2(10))` -/
def P4971931438031684864.Spec : Prop :=
  ∀ n, P4971931438031684864.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P4683256906224364900

`ceil(A000040(n+1)/log2(10))`
-/

namespace A227683.P4683256906224364900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A227683.P4683256906224364900

namespace A227683

/-- `ceil(A000040(n+1)/log2(10))` -/
def P4683256906224364900.Spec : Prop :=
  ∀ n, P4683256906224364900.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P11282815761295346906

`ceil(record[A006530(n+2)]/log2(10))`
-/

namespace A227683.P11282815761295346906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A227683.P11282815761295346906

namespace A227683

/-- `ceil(record[A006530(n+2)]/log2(10))` -/
def P11282815761295346906.Spec : Prop :=
  ∀ n, P11282815761295346906.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P18026313653917243606

`ceil(record[A020639(n+2)]/log2(10))`
-/

namespace A227683.P18026313653917243606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A227683.P18026313653917243606

namespace A227683

/-- `ceil(record[A020639(n+2)]/log2(10))` -/
def P18026313653917243606.Spec : Prop :=
  ∀ n, P18026313653917243606.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P13017676172493296392

`ceil((record[A000010(n+1)]+1)/log2(10))`
-/

namespace A227683.P13017676172493296392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A227683.P13017676172493296392

namespace A227683

/-- `ceil((record[A000010(n+1)]+1)/log2(10))` -/
def P13017676172493296392.Spec : Prop :=
  ∀ n, P13017676172493296392.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P15966905465541818553

`A034887(p?[comp[n²]])`
-/

namespace A227683.P15966905465541818553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A227683.P15966905465541818553

namespace A227683

/-- `A034887(p?[comp[n²]])` -/
def P15966905465541818553.Spec : Prop :=
  ∀ n, P15966905465541818553.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P6876414693655768378

`A034887(A000040(n+1))`
-/

namespace A227683.P6876414693655768378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A000040 (n + 1)).toNat

end

end A227683.P6876414693655768378

namespace A227683

/-- `A034887(A000040(n+1))` -/
def P6876414693655768378.Spec : Prop :=
  ∀ n, P6876414693655768378.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P3871434386024673393

`A034887(A006005(n+1))`
-/

namespace A227683.P3871434386024673393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A006005 (n + 1)).toNat

end

end A227683.P3871434386024673393

namespace A227683

/-- `A034887(A006005(n+1))` -/
def P3871434386024673393.Spec : Prop :=
  ∀ n, P3871434386024673393.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P973758291253360423

`A192543(A008864(n+1))`
-/

namespace A227683.P973758291253360423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A008864 (n + 1)).toNat

end

end A227683.P973758291253360423

namespace A227683

/-- `A192543(A008864(n+1))` -/
def P973758291253360423.Spec : Prop :=
  ∀ n, P973758291253360423.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P13802644509997331817

`A034887(A171577(n+1))`
-/

namespace A227683.P13802644509997331817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A171577 (n + 1)).toNat

end

end A227683.P13802644509997331817

namespace A227683

/-- `A034887(A171577(n+1))` -/
def P13802644509997331817.Spec : Prop :=
  ∀ n, P13802644509997331817.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P2988283670111997356

`A192543(A028815(n+1))`
-/

namespace A227683.P2988283670111997356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A028815 (n + 1)).toNat

end

end A227683.P2988283670111997356

namespace A227683

/-- `A192543(A028815(n+1))` -/
def P2988283670111997356.Spec : Prop :=
  ∀ n, P2988283670111997356.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P2052360419809084084

`A192543(A175216(n+1))`
-/

namespace A227683.P2052360419809084084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A175216 (n + 1)).toNat

end

end A227683.P2052360419809084084

namespace A227683

/-- `A192543(A175216(n+1))` -/
def P2052360419809084084.Spec : Prop :=
  ∀ n, P2052360419809084084.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P16649339607424179980

`A034887(A008578(n+2))`
-/

namespace A227683.P16649339607424179980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A008578 (n + 2)).toNat

end

end A227683.P16649339607424179980

namespace A227683

/-- `A034887(A008578(n+2))` -/
def P16649339607424179980.Spec : Prop :=
  ∀ n, P16649339607424179980.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P15642066976904248223

`A034887(A075643(n+2))`
-/

namespace A227683.P15642066976904248223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A075643 (n + 2)).toNat

end

end A227683.P15642066976904248223

namespace A227683

/-- `A034887(A075643(n+2))` -/
def P15642066976904248223.Spec : Prop :=
  ∀ n, P15642066976904248223.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P8017354778602661485

`A034887(A171525(n+2))`
-/

namespace A227683.P8017354778602661485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A171525 (n + 2)).toNat

end

end A227683.P8017354778602661485

namespace A227683

/-- `A034887(A171525(n+2))` -/
def P8017354778602661485.Spec : Prop :=
  ∀ n, P8017354778602661485.a n = A227683 (n + 1)

end A227683

/-! ## A227683.P2244946372138675820

`A034887(A182986(n+2))`
-/

namespace A227683.P2244946372138675820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A182986 (n + 2)).toNat

end

end A227683.P2244946372138675820

namespace A227683

/-- `A034887(A182986(n+2))` -/
def P2244946372138675820.Spec : Prop :=
  ∀ n, P2244946372138675820.a n = A227683 (n + 1)

end A227683

/-!
# A227687: Least splitter of s(n) and s(n+1), where s(n) = 1/sqrt(1) + 1/sqrt(2) + ... + 1/sqrt(n).

The programs for A227687, there is no canonical definition to state claims against.
-/

/-! ## A227687.P12792628544347827998

`ceil(A227688(n+1)/A000267(n))`
-/

namespace A227687.P12792628544347827998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227688 (n + 1) : ℚ) / (A000267 n : ℚ)⌉

end

end A227687.P12792628544347827998

/-! ## A227687.P14751022255194433899

`dr(A263775(A006703(A008486(n))))`
-/

namespace A227687.P14751022255194433899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A263775 (A006703 (A008486 n).toNat).toNat)

end

end A227687.P14751022255194433899

/-! ## A227687.P12274041117081444167

`A098281(A042993(n+1)-A007305(n))`
-/

namespace A227687.P12274041117081444167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098281 (A042993 (n + 1) - A007305 n).toNat

end

end A227687.P12274041117081444167

/-! ## A227687.P2299463909290128639

`A084532(A133259(A091536(n)+n))`
-/

namespace A227687.P2299463909290128639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (A133259 (A091536 n + (n : ℤ)).toNat).toNat

end

end A227687.P2299463909290128639

/-! ## A227687.P15374444521570889332

`A084532(or(A091536(n), A133259(n)))`
-/

namespace A227687.P15374444521570889332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (Int.lor (A091536 n) (A133259 n)).toNat

end

end A227687.P15374444521570889332

/-!
# A227689: a(n) is the least integer k such that 2^k - 1 has at least 10^n digits.

The programs for A227689, the canonical program `A227689.P15072887592567712730` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227689 has offset 0).

The definition of A227689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227689.P15072887592567712730

`floor((10^n-1)*log2(10))+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227689

/-- `floor((10^n-1)*log2(10))+1` -/
def P15072887592567712730.Spec : Prop :=
  ∀ n, P15072887592567712730.a n = A227689 n

theorem P15072887592567712730.correct : P15072887592567712730.Spec := by
  intro n
  simp only [A227689]

end A227689

/-!
# A227690: Number A(n,k) of tilings of a k X n rectangle using integer-sided square tiles reduced for symmetry; square array A(n,k), n >= 0, k >= 0, read by antidiagonals.

The programs for A227690, there is no canonical definition to state claims against.
-/

/-! ## A227690.P5056711670070122697

`gcd(A129533(2*n+1), A185977(A219924(n)))`
-/

namespace A227690.P5056711670070122697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129533 (2 * n + 1)) (A185977 (A219924 n).toNat)

end

end A227690.P5056711670070122697

/-! ## A227690.P13120967996839137706

`A185977(A219924(n)%A229173(2*(n+2)))`
-/

namespace A227690.P13120967996839137706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185977 (Int.tmod (A219924 n) (A229173 (2 * (n + 2)))).toNat

end

end A227690.P13120967996839137706

/-! ## A227690.P9747820687336300861

`A185977(A219924(n))%A185977(2*n+5)`
-/

namespace A227690.P9747820687336300861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185977 (A219924 n).toNat) (A185977 (2 * n + 5))

end

end A227690.P9747820687336300861

/-! ## A227690.P17538142952512326927

`A159800(A334549(n))`
-/

namespace A227690.P17538142952512326927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159800 (A334549 n).toNat

end

end A227690.P17538142952512326927

/-! ## A227690.P697263075991008736

`A331251(A220054(n)+1)`
-/

namespace A227690.P697263075991008736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331251 (A220054 n + 1).toNat

end

end A227690.P697263075991008736

/-!
# A227691: Winning positions in the Subtract-a-Prime game.

The programs for A227691, there is no canonical definition to state claims against.
-/

/-! ## A227691.P4189144667118655192

`comp[A025043(n+1)]`
-/

namespace A227691.P4189144667118655192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227691.P4189144667118655192

/-! ## A227691.P8191759497101944531

`comp[A072545(n)-1]`
-/

namespace A227691.P8191759497101944531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227691.P8191759497101944531

/-! ## A227691.P11804465620130532117

`comp[∑[A332941(n+1)]-A332941(n+1)]`
-/

namespace A227691.P11804465620130532117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A332941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227691.P11804465620130532117

/-! ## A227691.P1260858818363436390

`lt[0, A014589(n)]`
-/

namespace A227691.P1260858818363436390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227691.P1260858818363436390

/-! ## A227691.P13677504863114941959

`eq[0, A000007(A014589(n)²)]`
-/

namespace A227691.P13677504863114941959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A014589 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P13677504863114941959

/-! ## A227691.P245206837299521257

`eq[0, A000038(A014589(n)²)]`
-/

namespace A227691.P245206837299521257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A014589 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P245206837299521257

/-! ## A227691.P11519098926801326620

`eq[1, A057427(A014589(n)²)]`
-/

namespace A227691.P11519098926801326620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A014589 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P11519098926801326620

/-! ## A227691.P8802738811631946189

`eq[2, A000122(A014589(n)²)]`
-/

namespace A227691.P8802738811631946189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A014589 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P8802738811631946189

/-! ## A227691.P2362039673290490777

`eq[0, A181500(A014589(n)+1)]`
-/

namespace A227691.P2362039673290490777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181500 (A014589 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P2362039673290490777

/-! ## A227691.P16312346895445216762

`eq[1, A178334(2*A014589(n))]`
-/

namespace A227691.P16312346895445216762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * A014589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P16312346895445216762

/-! ## A227691.P18065351313285785269

`eq[1, A014963(A235954(A014589(n)+1))]`
-/

namespace A227691.P18065351313285785269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A235954 (A014589 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P18065351313285785269

/-! ## A227691.P11494202881656985356

`eq[1, A014963(A235301(A014589(n)+1)-8)]`
-/

namespace A227691.P11494202881656985356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A235301 (A014589 n + 1).toNat - 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227691.P11494202881656985356

/-! ## A227691.P14822199473660400354

`eq[A000007(n+1), A000007(A014589(n))]`
-/

namespace A227691.P14822199473660400354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A014589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227691.P14822199473660400354

/-!
# A227692: Smaller of two consecutive squares which are anagrams (permutations) of each other.

The programs for A227692, there is no canonical definition to state claims against.
-/

/-! ## A227692.P13486994515336518360

`A072841(n+1)²`
-/

namespace A227692.P13486994515336518360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (n + 1) ^ 2

end

end A227692.P13486994515336518360

/-! ## A227692.P10015498001737603047

`record[A072841(A324344(n))²]`
-/

namespace A227692.P10015498001737603047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A324344 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227692.P10015498001737603047

/-! ## A227692.P18287235152969114335

`record[A072841(A324347(n))²]`
-/

namespace A227692.P18287235152969114335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227692.P18287235152969114335

/-! ## A227692.P9658562277181237682

`record[A072841(A324344(n))]*A072841(n+1)`
-/

namespace A227692.P9658562277181237682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A324344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A072841 (n + 1)

end

end A227692.P9658562277181237682

/-! ## A227692.P11220300152995144052

`record[A072841(A324347(n))]*A072841(n+1)`
-/

namespace A227692.P11220300152995144052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A072841 (n + 1)

end

end A227692.P11220300152995144052

/-! ## A227692.P2293934117888375369

`record[A072841(A133310(n))²]`
-/

namespace A227692.P2293934117888375369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227692.P2293934117888375369

/-! ## A227692.P7077956580204115834

`record[A072841(A133310(n))]*A072841(n+1)`
-/

namespace A227692.P7077956580204115834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A072841 (n + 1)

end

end A227692.P7077956580204115834

/-! ## A227692.P15855540621927305187

`record[A072841(A193592(n))²]`
-/

namespace A227692.P15855540621927305187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227692.P15855540621927305187

/-! ## A227692.P7519015095531025523

`record[A072841(A193592(n))]*A072841(n+1)`
-/

namespace A227692.P7519015095531025523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A072841 (n + 1)

end

end A227692.P7519015095531025523

/-!
# A227693: Integer nearest to (F[2n+1](S(n)))^2, where F[2n+1](x) are Fibonacci polynomials of odd indices [2n+1] and S(n) = Sum_{i=0..2} (C(i)*(log(log(A*(B+n^2))))^(2i)) (see coefficients A, B, C(i) in comments).

The programs for A227693, there is no canonical definition to state claims against.
-/

/-! ## A227693.P14514687873164236645

`∑[A228115(n+1)]+1`
-/

namespace A227693.P14514687873164236645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227693.P14514687873164236645

/-! ## A227693.P2527815518459470352

`A006880(n+1)-A227694(n+1)`
-/

namespace A227693.P2527815518459470352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A227694 (n + 1)

end

end A227693.P2527815518459470352

/-! ## A227693.P11253971705487932669

`∑[Δ[A006880(n)]-A228116(n+1)]+1`
-/

namespace A227693.P11253971705487932669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A228116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227693.P11253971705487932669

/-! ## A227693.P752972651634027932

`A122121(A005843(n+1))-A227694(n+1)`
-/

namespace A227693.P752972651634027932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A005843 (n + 1)).toNat - A227694 (n + 1)

end

end A227693.P752972651634027932

/-! ## A227693.P17021263526446938594

`A057793(n+1)-(A227694(n+1)+A057794(n+1))`
-/

namespace A227693.P17021263526446938594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057793 (n + 1) - (A227694 (n + 1) + A057794 (n + 1))

end

end A227693.P17021263526446938594

/-!
# A227694: Difference between pi(10^n) and nearest integer to (F[2n+1](S(n)))^2 where pi(10^n) = number of primes <= 10^n (A006880), F[2n+1](x) are Fibonacci polynomials of odd indices [2n+1] and S(n) = Sum_{i=0..2} (C(i)*(log(log(A*(B+n^2))))^(2i)) (see A227693).

The programs for A227694, there is no canonical definition to state claims against.
-/

/-! ## A227694.P12869679821078821654

`A006880(n+1)-A227693(n+1)`
-/

namespace A227694.P12869679821078821654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A227693 (n + 1)

end

end A227694.P12869679821078821654

/-! ## A227694.P7674191487559718708

`∑[A228116(n+1)]-1`
-/

namespace A227694.P7674191487559718708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A227694.P7674191487559718708

/-! ## A227694.P3377349986415064997

`∑[A057427(n)*A228116(n+1)]`
-/

namespace A227694.P3377349986415064997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A228116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227694.P3377349986415064997

/-! ## A227694.P15239047314919521091

`∑[A157928(n)*A228116(n+1)]`
-/

namespace A227694.P15239047314919521091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A228116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227694.P15239047314919521091

/-! ## A227694.P5649347737943619395

`∑[A228116(n+1)%A003953(n)]`
-/

namespace A227694.P5649347737943619395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228116 (n + 1)) (A003953 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227694.P5649347737943619395

/-!
# A227695: Expansion of psi(x)^2 * phi(-x)^6 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A227695, there is no canonical definition to state claims against.
-/

/-! ## A227695.P979215052675162283

`A228072(2*n)`
-/

namespace A227695.P979215052675162283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228072 (2 * n)

end

end A227695.P979215052675162283

/-! ## A227695.P16766942893184160582

`A228072(record[A014681(n)])%A017450(n)`
-/

namespace A227695.P16766942893184160582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A017450 n)

end

end A227695.P16766942893184160582

/-! ## A227695.P18378030636454336356

`A228072(record[A014681(n)])+A016825(n)%2`
-/

namespace A227695.P18378030636454336356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + Int.tmod (A016825 n) 2

end

end A227695.P18378030636454336356

/-! ## A227695.P9834105738106250114

`A228072(record[A014681(n)])+A033487(n)%2`
-/

namespace A227695.P9834105738106250114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + Int.tmod (A033487 n) 2

end

end A227695.P9834105738106250114

/-! ## A227695.P17453976544417723049

`A228072(record[A014681(n)])+2%A253607(n)`
-/

namespace A227695.P17453976544417723049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + Int.tmod 2 (A253607 n)

end

end A227695.P17453976544417723049

/-! ## A227695.P6651620121881909255

`A228072(record[A014681(n)])+A008587(n)%5`
-/

namespace A227695.P6651620121881909255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + Int.tmod (A008587 n) 5

end

end A227695.P6651620121881909255

/-! ## A227695.P4293056912467920674

`A228072(n+n)+A007920(A064270(n+1))`
-/

namespace A227695.P4293056912467920674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228072 (n + n) + A007920 (A064270 (n + 1)).toNat

end

end A227695.P4293056912467920674

/-!
# A227696: Expansion of f(x^3)^3 / f(x) in powers of x where f() is a Ramanujan theta function.

The programs for A227696, the canonical program `A227696.P2497490565356281867` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227696 has offset 0).

The definition of A227696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227696.P2497490565356281867

`(-1)^n*A033687(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227696

/-- `(-1)^n*A033687(n)` -/
def P2497490565356281867.Spec : Prop :=
  ∀ n, P2497490565356281867.a n = A227696 n

theorem P2497490565356281867.correct : P2497490565356281867.Spec := by
  intro n
  simp only [A227696]

end A227696

/-! ## A227696.P5589338824921372606

`A033687(n)*A033999(n)`
-/

namespace A227696.P5589338824921372606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A033999 n

end

end A227696.P5589338824921372606

namespace A227696

/-- `A033687(n)*A033999(n)` -/
def P5589338824921372606.Spec : Prop :=
  ∀ n, P5589338824921372606.a n = A227696 n

theorem P5589338824921372606.correct : P5589338824921372606.Spec := by
  intro n
  simp only [A227696, Nat.add_sub_cancel, A227696.P5589338824921372606.a, A227696.P2497490565356281867.a, A033687, A033687.P2538927358754509175.a, A033999, A033999.P17703899380244199787.a, A002324, A002324.P17421748272452344756.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A227696

/-! ## A227696.P1561117117669222342

`A122861(n)/A010684(n)`
-/

namespace A227696.P1561117117669222342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A010684 n : ℚ)

end

end A227696.P1561117117669222342

namespace A227696

/-- `A122861(n)/A010684(n)` -/
def P1561117117669222342.Spec : Prop :=
  ∀ n, P1561117117669222342.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P6177280227051974261

`A122861(n)/A053381(n)`
-/

namespace A227696.P6177280227051974261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A053381 n : ℚ)

end

end A227696.P6177280227051974261

namespace A227696

/-- `A122861(n)/A053381(n)` -/
def P6177280227051974261.Spec : Prop :=
  ∀ n, P6177280227051974261.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P15287884630458279138

`A122861(n)/A056753(n)`
-/

namespace A227696.P15287884630458279138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A056753 n : ℚ)

end

end A227696.P15287884630458279138

namespace A227696

/-- `A122861(n)/A056753(n)` -/
def P15287884630458279138.Spec : Prop :=
  ∀ n, P15287884630458279138.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P11846782669971462140

`A005882(n)/A174971(n)`
-/

namespace A227696.P11846782669971462140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005882 n : ℚ) / (A174971 n : ℚ)

end

end A227696.P11846782669971462140

namespace A227696

/-- `A005882(n)/A174971(n)` -/
def P11846782669971462140.Spec : Prop :=
  ∀ n, P11846782669971462140.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P15507610790193880757

`A129576(n)/A176563(n)`
-/

namespace A227696.P15507610790193880757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A176563 n : ℚ)

end

end A227696.P15507610790193880757

namespace A227696

/-- `A129576(n)/A176563(n)` -/
def P15507610790193880757.Spec : Prop :=
  ∀ n, P15507610790193880757.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P17186020430208046562

`A033687(n)*A309873(n+1)`
-/

namespace A227696.P17186020430208046562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A309873 (n + 1)

end

end A227696.P17186020430208046562

namespace A227696

/-- `A033687(n)*A309873(n+1)` -/
def P17186020430208046562.Spec : Prop :=
  ∀ n, P17186020430208046562.a n = A227696 n

end A227696

/-! ## A227696.P16851992126592695959

`A122861(n)/A037227(n+1)`
-/

namespace A227696.P16851992126592695959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A037227 (n + 1) : ℚ)

end

end A227696.P16851992126592695959

namespace A227696

/-- `A122861(n)/A037227(n+1)` -/
def P16851992126592695959.Spec : Prop :=
  ∀ n, P16851992126592695959.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P15749643439694431037

`A122861(n)/A038712(n+1)`
-/

namespace A227696.P15749643439694431037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A038712 (n + 1) : ℚ)

end

end A227696.P15749643439694431037

namespace A227696

/-- `A122861(n)/A038712(n+1)` -/
def P15749643439694431037.Spec : Prop :=
  ∀ n, P15749643439694431037.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P2607409965699273026

`A122861(n)/A090740(n+1)`
-/

namespace A227696.P2607409965699273026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A090740 (n + 1) : ℚ)

end

end A227696.P2607409965699273026

namespace A227696

/-- `A122861(n)/A090740(n+1)` -/
def P2607409965699273026.Spec : Prop :=
  ∀ n, P2607409965699273026.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P16861896461262116441

`A122861(n)/A094603(n+1)`
-/

namespace A227696.P16861896461262116441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A094603 (n + 1) : ℚ)

end

end A227696.P16861896461262116441

namespace A227696

/-- `A122861(n)/A094603(n+1)` -/
def P16861896461262116441.Spec : Prop :=
  ∀ n, P16861896461262116441.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P6711874419810534872

`A122861(n)/A112132(n+1)`
-/

namespace A227696.P6711874419810534872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A112132 (n + 1) : ℚ)

end

end A227696.P6711874419810534872

namespace A227696

/-- `A122861(n)/A112132(n+1)` -/
def P6711874419810534872.Spec : Prop :=
  ∀ n, P6711874419810534872.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P99817892462576995

`A122861(n)/A115364(n+1)`
-/

namespace A227696.P99817892462576995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A115364 (n + 1) : ℚ)

end

end A227696.P99817892462576995

namespace A227696

/-- `A122861(n)/A115364(n+1)` -/
def P99817892462576995.Spec : Prop :=
  ∀ n, P99817892462576995.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P8102074038379146146

`A122861(n)/A233267(n+1)`
-/

namespace A227696.P8102074038379146146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A233267 (n + 1) : ℚ)

end

end A227696.P8102074038379146146

namespace A227696

/-- `A122861(n)/A233267(n+1)` -/
def P8102074038379146146.Spec : Prop :=
  ∀ n, P8102074038379146146.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P16556993645801851962

`A122861(n)/A233269(n+1)`
-/

namespace A227696.P16556993645801851962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A233269 (n + 1) : ℚ)

end

end A227696.P16556993645801851962

namespace A227696

/-- `A122861(n)/A233269(n+1)` -/
def P16556993645801851962.Spec : Prop :=
  ∀ n, P16556993645801851962.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P13345632588760355667

`A122861(n)/A276391(n+1)`
-/

namespace A227696.P13345632588760355667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A276391 (n + 1) : ℚ)

end

end A227696.P13345632588760355667

namespace A227696

/-- `A122861(n)/A276391(n+1)` -/
def P13345632588760355667.Spec : Prop :=
  ∀ n, P13345632588760355667.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P14581557595506370771

`A122861(n)/A385047(n+1)`
-/

namespace A227696.P14581557595506370771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A385047 (n + 1) : ℚ)

end

end A227696.P14581557595506370771

namespace A227696

/-- `A122861(n)/A385047(n+1)` -/
def P14581557595506370771.Spec : Prop :=
  ∀ n, P14581557595506370771.a n = (A227696 n : ℚ)

end A227696

/-! ## A227696.P12222277875104215952

`2*A033687(n)-A129576(n)`
-/

namespace A227696.P12222277875104215952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033687 n - A129576 n

end

end A227696.P12222277875104215952

namespace A227696

/-- `2*A033687(n)-A129576(n)` -/
def P12222277875104215952.Spec : Prop :=
  ∀ n, P12222277875104215952.a n = A227696 n

end A227696

/-! ## A227696.P12085274184935252624

`A122861(n)/(2-A033999(n))`
-/

namespace A227696.P12085274184935252624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (2 - A033999 n : ℚ)

end

end A227696.P12085274184935252624

namespace A227696

/-- `A122861(n)/(2-A033999(n))` -/
def P12085274184935252624.Spec : Prop :=
  ∀ n, P12085274184935252624.a n = (A227696 n : ℚ)

end A227696

/-!
# A227697: Numbers of the form ((p^2 + q^2)/2 - 1)/4, where p and q are odd primes.

The programs for A227697, there is no canonical definition to state claims against.
-/

/-! ## A227697.P17267057832819534160

`(A143850(n+1)-1)/4`
-/

namespace A227697.P17267057832819534160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143850 (n + 1) - 1 : ℚ) / 4

end

end A227697.P17267057832819534160

/-! ## A227697.P14318457662460775445

`floor(A143850(n+1)/4)`
-/

namespace A227697.P14318457662460775445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143850 (n + 1) : ℚ) / 4⌋

end

end A227697.P14318457662460775445

/-! ## A227697.P11378821483988766201

`floor(A357439(n+1)/8)`
-/

namespace A227697.P11378821483988766201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A357439 (n + 1) : ℚ) / 8⌋

end

end A227697.P11378821483988766201

/-! ## A227697.P9687468834486597174

`round(A143850(C(n+1, n))/4)`
-/

namespace A227697.P9687468834486597174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143850 (Nat.choose (n + 1) n) : ℚ) / 4)

end

end A227697.P9687468834486597174

/-! ## A227697.P601420831902177475

`round(A143850(Δ[n²]-n)/4)`
-/

namespace A227697.P601420831902177475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143850 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 4)

end

end A227697.P601420831902177475

/-! ## A227697.P15533971093239495940

`A002265(A143850(n+1))`
-/

namespace A227697.P15533971093239495940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A143850 (n + 1)).toNat

end

end A227697.P15533971093239495940

/-! ## A227697.P13600771522918493120

`A110962(A357439(n+1))`
-/

namespace A227697.P13600771522918493120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A357439 (n + 1)).toNat

end

end A227697.P13600771522918493120

/-! ## A227697.P2059303725776176978

`A000027(round(A143850(n+1)/4))`
-/

namespace A227697.P2059303725776176978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A143850 (n + 1) : ℚ) / 4)).toNat

end

end A227697.P2059303725776176978

/-! ## A227697.P18297991382897820660

`A007318(∑[n])*round(A143850(n+1)/4)`
-/

namespace A227697.P18297991382897820660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A143850 (n + 1) : ℚ) / 4)

end

end A227697.P18297991382897820660

/-!
# A227698: a(n) is the number of ways to form the integer n as (p^2 + q^2 - 2)/24, where p and q are primes > 3 (excluding swaps of p and q).

The programs for A227698, there is no canonical definition to state claims against.
-/

/-! ## A227698.P14200455283578173237

`A045698(24*(n+1)+2)`
-/

namespace A227698.P14200455283578173237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (24 * (n + 1) + 2)

end

end A227698.P14200455283578173237

/-! ## A227698.P14249219310186983868

`A389639(A017581(n+1))`
-/

namespace A227698.P14249219310186983868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389639 (A017581 (n + 1)).toNat

end

end A227698.P14249219310186983868

/-! ## A227698.P5519092728015625597

`A389639(A017641(n+1))`
-/

namespace A227698.P5519092728015625597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389639 (A017641 (n + 1)).toNat

end

end A227698.P5519092728015625597

/-! ## A227698.P2618513860494230287

`A024316(A008574(n)-A351831(n+1))`
-/

namespace A227698.P2618513860494230287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (A008574 n - A351831 (n + 1)).toNat

end

end A227698.P2618513860494230287

/-! ## A227698.P7814044364652183266

`A052344(3*n+3)+A000007(A017984(n))`
-/

namespace A227698.P7814044364652183266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (3 * n + 3) + A000007 (A017984 n).toNat

end

end A227698.P7814044364652183266

