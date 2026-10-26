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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A041000: If decimal expansion of n-th prime is x1 x2 ... xk, sort the xi into nonincreasing order, y1 y2 ... yk; then a(n) = |y1-y2-y3...-yk|.

The programs for A041000, there is no canonical definition to state claims against.
-/

/-! ## A041000.P4819965828695357097

`A040997(A028906(n+1))`
-/

namespace A041000.P4819965828695357097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A028906 (n + 1)).toNat

end

end A041000.P4819965828695357097

/-! ## A041000.P5568625499435257581

`A040997(A004186(p?[A344180(n)]))`
-/

namespace A041000.P5568625499435257581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A004186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A041000.P5568625499435257581

/-! ## A041000.P8676667147746635526

`A040997(A004186(A008578(n+2)))`
-/

namespace A041000.P8676667147746635526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A004186 (A008578 (n + 2)).toNat).toNat

end

end A041000.P8676667147746635526

/-! ## A041000.P10000615091340178281

`A040997(A004186(p?[A003968(n+1)]))`
-/

namespace A041000.P10000615091340178281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A004186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A041000.P10000615091340178281

/-! ## A041000.P10963128946980082455

`A040997(A004186(p?[A238463(n+1)]))`
-/

namespace A041000.P10963128946980082455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A004186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A041000.P10963128946980082455

/-! ## A041000.P16562043076397550947

`A040997(A004186(p?[A166711(n)]))`
-/

namespace A041000.P16562043076397550947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A004186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A041000.P16562043076397550947

/-! ## A041000.P6049941463825770535

`A040997(A004186(p?[A242419(n+1)]))`
-/

namespace A041000.P6049941463825770535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A004186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A041000.P6049941463825770535

/-!
# A041001: Convolution of A000108(n+1), n >= 0, (Catalan numbers) with A038845 (3-fold convolution of powers of 4).

The programs for A041001, the canonical program `A041001.P7868168025577261724` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041001 has offset 0).

The definition of A041001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041001.P7868168025577261724

`A042941(n+1)-A038845(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A041001

/-- `A042941(n+1)-A038845(n+1)` -/
def P7868168025577261724.Spec : Prop :=
  ∀ n, P7868168025577261724.a n = A041001 n

theorem P7868168025577261724.correct : P7868168025577261724.Spec := by
  intro n
  simp only [A041001]

end A041001

/-! ## A041001.P13031798540383154529

`A042941(A158388(n+1)+n)%A038845(n+1)`
-/

namespace A041001.P13031798540383154529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042941 (A158388 (n + 1) + (n : ℤ)).toNat) (A038845 (n + 1))

end

end A041001.P13031798540383154529

namespace A041001

/-- `A042941(A158388(n+1)+n)%A038845(n+1)` -/
def P13031798540383154529.Spec : Prop :=
  ∀ n, P13031798540383154529.a n = A041001 n

end A041001

/-! ## A041001.P8886886962290317590

`A042941(A059841(2*(n+2))+n)%A038845(n+1)`
-/

namespace A041001.P8886886962290317590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042941 (A059841 (2 * (n + 2)) + (n : ℤ)).toNat) (A038845 (n + 1))

end

end A041001.P8886886962290317590

namespace A041001

/-- `A042941(A059841(2*(n+2))+n)%A038845(n+1)` -/
def P8886886962290317590.Spec : Prop :=
  ∀ n, P8886886962290317590.a n = A041001 n

end A041001

/-! ## A041001.P1934610858781361616

`A042941(n+1)%(A038845(n+1)/A009001(2*n))`
-/

namespace A041001.P1934610858781361616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042941 (n + 1)) (SequenceMachineLib.roundAway ((A038845 (n + 1) : ℚ) / (A009001 (2 * n) : ℚ)))

end

end A041001.P1934610858781361616

namespace A041001

/-- `A042941(n+1)%(A038845(n+1)/A009001(2*n))` -/
def P1934610858781361616.Spec : Prop :=
  ∀ n, P1934610858781361616.a n = A041001 n

end A041001

/-! ## A041001.P16091273078125113614

`A042941(A000040(n+1)%2+n)%A038845(n+1)`
-/

namespace A041001.P16091273078125113614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042941 (Int.tmod (A000040 (n + 1)) 2 + (n : ℤ)).toNat) (A038845 (n + 1))

end

end A041001.P16091273078125113614

namespace A041001

/-- `A042941(A000040(n+1)%2+n)%A038845(n+1)` -/
def P16091273078125113614.Spec : Prop :=
  ∀ n, P16091273078125113614.a n = A041001 n

end A041001

/-!
# A041002: The sequence d, given that c is a left shift by one place of b.

The programs for A041002, there is no canonical definition to state claims against.
-/

/-! ## A041002.P10715836872388465637

`eq[ceil(acot(n)), A041004(n)]`
-/

namespace A041002.P10715836872388465637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P10715836872388465637

/-! ## A041002.P7645651659457349909

`eq[1, A041004(n+1)]+1`
-/

namespace A041002.P7645651659457349909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A041002.P7645651659457349909

/-! ## A041002.P11978690990043096955

`eq[A041003(n+1)%2, n²%(n+1)]`
-/

namespace A041002.P11978690990043096955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041003 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A041002.P11978690990043096955

/-! ## A041002.P2162914055752009418

`record[(n+1)*A041004((n+1)%(n+1)²)]`
-/

namespace A041002.P2162914055752009418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A041004 ((n + 1) % (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041002.P2162914055752009418

/-! ## A041002.P12902874281104135366

`eq[A041004(n), A054977(n)]`
-/

namespace A041002.P12902874281104135366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P12902874281104135366

/-! ## A041002.P14189709164141116569

`eq[A041004(n), A057427(n)]`
-/

namespace A041002.P14189709164141116569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P14189709164141116569

/-! ## A041002.P6450713323602203508

`eq[A041004(n), A158388(n)]`
-/

namespace A041002.P6450713323602203508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P6450713323602203508

/-! ## A041002.P2127426006325786408

`eq[A041004(n), A294619(n)]`
-/

namespace A041002.P2127426006325786408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P2127426006325786408

/-! ## A041002.P1222966200298743828

`lt[2, A040986(n+1)*A041004(n)]`
-/

namespace A041002.P1222966200298743828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1) * A041004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A041002.P1222966200298743828

/-! ## A041002.P16284287740802642265

`eq[A041004(n), A178334(A178334(2*n))]`
-/

namespace A041002.P16284287740802642265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P16284287740802642265

/-! ## A041002.P2157188465071948804

`eq[A000035(A004273(n)), A041004(n)]`
-/

namespace A041002.P2157188465071948804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004273 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P2157188465071948804

/-! ## A041002.P14252741352505151730

`eq[ceil(2/A271305(n)), A041004(n)]`
-/

namespace A041002.P14252741352505151730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A271305 n : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041002.P14252741352505151730

/-!
# A041003: The sequence e, given that c is a left shift by one place of b.

The programs for A041003, there is no canonical definition to state claims against.
-/

/-! ## A041003.P2770473706328872456

`A003105(lt[1, A171243(2*(n+2))])`
-/

namespace A041003.P2770473706328872456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171243 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A041003.P2770473706328872456

/-!
# A041004: The sequence b, given that c is a left shift by one place of b.

The programs for A041004, there is no canonical definition to state claims against.
-/

/-! ## A041004.P12455030015939803739

`A041003(n+1)%2`
-/

namespace A041004.P12455030015939803739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041003 (n + 1)) 2

end

end A041004.P12455030015939803739

/-! ## A041004.P16964662826282053475

`and(1, A041003(2*n+1-n))`
-/

namespace A041004.P16964662826282053475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A041003 (2 * n + 1 - n))

end

end A041004.P16964662826282053475

/-! ## A041004.P18336159503565523862

`A000007(val(A041003(n+1), 2))`
-/

namespace A041004.P18336159503565523862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A041003 (n + 1)).toNat 2)

end

end A041004.P18336159503565523862

/-! ## A041004.P1476857688022393060

`A054238(and(1, 2-A041003(n+1)))`
-/

namespace A041004.P1476857688022393060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (Int.land 1 (2 - A041003 (n + 1))).toNat

end

end A041004.P1476857688022393060

/-! ## A041004.P13736172250860467095

`and(1, A041003(n+1)*A066169(n+1))`
-/

namespace A041004.P13736172250860467095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A041003 (n + 1) * A066169 (n + 1))

end

end A041004.P13736172250860467095

/-! ## A041004.P1495462999862873215

`and(A041003(n+1), A256908(A139391(n+1)))`
-/

namespace A041004.P1495462999862873215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041003 (n + 1)) (A256908 (A139391 (n + 1)).toNat)

end

end A041004.P1495462999862873215

/-! ## A041004.P16392813397982406151

`char[n*char[A041002(n)]]`
-/

namespace A041004.P16392813397982406151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A041004.P16392813397982406151

/-! ## A041004.P5184048138128885415

`and(A041003(n+1), A256911(A256910(n)))`
-/

namespace A041004.P5184048138128885415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041003 (n + 1)) (A256911 (A256910 n).toNat)

end

end A041004.P5184048138128885415

/-! ## A041004.P7484908598087597718

`A142150(A040982(n+1))+char[A041002(n)]`
-/

namespace A041004.P7484908598087597718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041002 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A040982 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A041004.P7484908598087597718

/-! ## A041004.P10267890743441636189

`A142150(A040988(n+1))+char[A041002(n)]`
-/

namespace A041004.P10267890743441636189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041002 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A040988 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A041004.P10267890743441636189

/-! ## A041004.P4705429465444101183

`and(A041003(n+1), A256908(A084821(n+1)))`
-/

namespace A041004.P4705429465444101183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041003 (n + 1)) (A256908 (A084821 (n + 1)).toNat)

end

end A041004.P4705429465444101183

/-!
# A041005: Convolution of Catalan numbers A000108(n+1), n >= 0, with A020918.

The programs for A041005, the canonical program `A041005.P3272956553974811885` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041005 has offset 0).

The definition of A041005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041005.P3272956553974811885

`C(n+7, 3)*C(2*(n+4), n+2)/20-(n+4)*(n+3)*4^(n+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041005

/-- `C(n+7, 3)*C(2*(n+4), n+2)/20-(n+4)*(n+3)*4^(n+1)` -/
def P3272956553974811885.Spec : Prop :=
  ∀ n, P3272956553974811885.a n = (A041005 n : ℚ)

end A041005

/-! ## A041005.P1067801707216124384

`A020918(n+1)-A042941(n+1)`
-/

namespace A041005.P1067801707216124384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020918 (n + 1) - A042941 (n + 1)

end

end A041005.P1067801707216124384

namespace A041005

/-- `A020918(n+1)-A042941(n+1)` -/
def P1067801707216124384.Spec : Prop :=
  ∀ n, P1067801707216124384.a n = A041005 n

end A041005

/-! ## A041005.P11819252196441408917

`A045724(n+1)-A020918(n+1)`
-/

namespace A041005.P11819252196441408917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045724 (n + 1) - A020918 (n + 1)

end

end A041005.P11819252196441408917

namespace A041005

/-- `A045724(n+1)-A020918(n+1)` -/
def P11819252196441408917.Spec : Prop :=
  ∀ n, P11819252196441408917.a n = A041005 n

end A041005

/-! ## A041005.P13851777018059953404

`A045724(gcd(n, n+1)+n)%A020918(n+1)`
-/

namespace A041005.P13851777018059953404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045724 (Nat.gcd n (n + 1) + n)) (A020918 (n + 1))

end

end A041005.P13851777018059953404

namespace A041005

/-- `A045724(gcd(n, n+1)+n)%A020918(n+1)` -/
def P13851777018059953404.Spec : Prop :=
  ∀ n, P13851777018059953404.a n = A041005 n

end A041005

/-! ## A041005.P760302691763800483

`A045724(A057427(n)+n)%A020918(n+1)`
-/

namespace A041005.P760302691763800483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045724 (A057427 n + (n : ℤ)).toNat) (A020918 (n + 1))

end

end A041005.P760302691763800483

namespace A041005

/-- `A045724(A057427(n)+n)%A020918(n+1)` -/
def P760302691763800483.Spec : Prop :=
  ∀ n, P760302691763800483.a n = A041005 n

end A041005

/-! ## A041005.P17399364571299418357

`A045724(A010892(78*(n+1)+1)+n)%A020918(n+1)`
-/

namespace A041005.P17399364571299418357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045724 (A010892 (78 * (n + 1) + 1) + (n : ℤ)).toNat) (A020918 (n + 1))

end

end A041005.P17399364571299418357

namespace A041005

/-- `A045724(A010892(78*(n+1)+1)+n)%A020918(n+1)` -/
def P17399364571299418357.Spec : Prop :=
  ∀ n, P17399364571299418357.a n = A041005 n

end A041005

/-!
# A041006: Numerators of continued fraction convergents to sqrt(6).

The programs for A041006, the canonical program `A041006.P10851957046175188140` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041006 has offset 0).

The definition of A041006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041006.P10851957046175188140

`((2+sqrt(6))^(n+1)+(2-sqrt(6))^(n+1))/2^(ceil(n/2)+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041006

/-- `((2+sqrt(6))^(n+1)+(2-sqrt(6))^(n+1))/2^(ceil(n/2)+1)` -/
def P10851957046175188140.Spec : Prop :=
  ∀ n, P10851957046175188140.a n = (A041006 n : ℝ)

end A041006

/-! ## A041006.P4624395055134051529

`a(n-2)+lcm(4, a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A041006.P4624395055134051529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A041006.P4624395055134051529

namespace A041006

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P4624395055134051529.Spec : Prop :=
  ∀ n, (P4624395055134051529.a n : ℤ) = A041006 n

end A041006

/-! ## A041006.P1915248857005949754

`a(n-2)+2*gcd(2, n)*a(n-1)` with `a(0)=2, a(1)=5`
-/

namespace A041006.P1915248857005949754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + 2 * (Nat.gcd 2 n * a (n - 1))

end

end A041006.P1915248857005949754

namespace A041006

/-- `a(n-2)+2*gcd(2, n)*a(n-1)` -/
def P1915248857005949754.Spec : Prop :=
  ∀ n, (P1915248857005949754.a n : ℤ) = A041006 n

end A041006

/-! ## A041006.P18350208662152075889

`a(n-2)+2*a(n-1)*a(n-2)%4` with `a(0)=2, a(1)=5`
-/

namespace A041006.P18350208662152075889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + 2 * a (n - 1) * (a (n - 2) % 4)

end

end A041006.P18350208662152075889

namespace A041006

/-- `a(n-2)+2*a(n-1)*a(n-2)%4` -/
def P18350208662152075889.Spec : Prop :=
  ∀ n, (P18350208662152075889.a n : ℤ) = A041006 n

end A041006

/-! ## A041006.P8749039716017215825

`round(sqrt(6)*A041007(n))`
-/

namespace A041006.P8749039716017215825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 : ℝ) * (A041007 n : ℝ))

end

end A041006.P8749039716017215825

namespace A041006

/-- `round(sqrt(6)*A041007(n))` -/
def P8749039716017215825.Spec : Prop :=
  ∀ n, P8749039716017215825.a n = A041006 n

end A041006

/-! ## A041006.P9207278154815696172

`A259595(n)-a(n-1)` with `a(0)=2`
-/

namespace A041006.P9207278154815696172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A259595 n - a (n - 1)

end

end A041006.P9207278154815696172

namespace A041006

/-- `A259595(n)-a(n-1)` -/
def P9207278154815696172.Spec : Prop :=
  ∀ n, P9207278154815696172.a n = A041006 n

end A041006

/-! ## A041006.P7172893502384852316

`lcm(A142238(n), A228826(n))`
-/

namespace A041006.P7172893502384852316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A142238 n) (A228826 n)

end

end A041006.P7172893502384852316

namespace A041006

/-- `lcm(A142238(n), A228826(n))` -/
def P7172893502384852316.Spec : Prop :=
  ∀ n, (P7172893502384852316.a n : ℤ) = A041006 n

end A041006

/-! ## A041006.P855782702740399144

`A142239(n+1)-2*A041007(n)`
-/

namespace A041006.P855782702740399144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (n + 1) - 2 * A041007 n

end

end A041006.P855782702740399144

namespace A041006

/-- `A142239(n+1)-2*A041007(n)` -/
def P855782702740399144.Spec : Prop :=
  ∀ n, P855782702740399144.a n = A041006 n

end A041006

/-! ## A041006.P3854401958449609866

`A142239(n+1)/A041007(n+1)*A142238(n)`
-/

namespace A041006.P3854401958449609866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142239 (n + 1) : ℚ) / (A041007 (n + 1) : ℚ) * (A142238 n : ℚ)

end

end A041006.P3854401958449609866

namespace A041006

/-- `A142239(n+1)/A041007(n+1)*A142238(n)` -/
def P3854401958449609866.Spec : Prop :=
  ∀ n, P3854401958449609866.a n = (A041006 n : ℚ)

end A041006

/-! ## A041006.P12851980554540658806

`round(sqrt(A041172(2*n+1)/2))`
-/

namespace A041006.P12851980554540658806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A041172 (2 * n + 1) : ℚ) / 2 : ℝ))

end

end A041006.P12851980554540658806

namespace A041006

/-- `round(sqrt(A041172(2*n+1)/2))` -/
def P12851980554540658806.Spec : Prop :=
  ∀ n, P12851980554540658806.a n = A041006 n

end A041006

/-!
# A041007: Denominators of continued fraction convergents to sqrt(6).

The programs for A041007, the canonical program `A041007.P14816643367733725803` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041007 has offset 0).

The definition of A041007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041007.P14816643367733725803

`(3+(-1)^n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041007

/-- `(3+(-1)^n)*a(n-1)+a(n-2)` -/
def P14816643367733725803.Spec : Prop :=
  ∀ n, P14816643367733725803.a n = A041007 n

theorem P14816643367733725803.correct : P14816643367733725803.Spec := by
  intro n
  simp only [A041007]

end A041007

/-! ## A041007.P10507690974771645413

`((2+sqrt(6))^(n+1)-(2-sqrt(6))^(n+1))/(sqrt(6)*2^(ceil(n/2)+1))`
-/

namespace A041007.P10507690974771645413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (6 : ℝ)) ^ (n + 1) - (2 - Real.sqrt (6 : ℝ)) ^ (n + 1)) / (Real.sqrt (6 : ℝ) * ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ + 1 : ℤ) : ℝ))

end

end A041007.P10507690974771645413

namespace A041007

/-- `((2+sqrt(6))^(n+1)-(2-sqrt(6))^(n+1))/(sqrt(6)*2^(ceil(n/2)+1))` -/
def P10507690974771645413.Spec : Prop :=
  ∀ n, P10507690974771645413.a n = (A041007 n : ℝ)

end A041007

/-! ## A041007.P405461754286501001

`a(n-2)+2*gcd(2, n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A041007.P405461754286501001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * (Nat.gcd 2 n * a (n - 1))

end

end A041007.P405461754286501001

namespace A041007

/-- `a(n-2)+2*gcd(2, n)*a(n-1)` -/
def P405461754286501001.Spec : Prop :=
  ∀ n, (P405461754286501001.a n : ℤ) = A041007 n

end A041007

/-! ## A041007.P15966794941994888262

`a(n-2)+2*a(n-1)*a(a(n-2)%2)` with `a(0)=1, a(1)=2`
-/

namespace A041007.P15966794941994888262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * (a (n - 1) * a (a (n - 2) % 2))

end

end A041007.P15966794941994888262

namespace A041007

/-- `a(n-2)+2*a(n-1)*a(a(n-2)%2)` -/
def P15966794941994888262.Spec : Prop :=
  ∀ n, (P15966794941994888262.a n : ℤ) = A041007 n

end A041007

/-! ## A041007.P1420359155988117770

`lcm(2^val(n+1, 2), A041039(n))`
-/

namespace A041007.P1420359155988117770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A041039 n)

end

end A041007.P1420359155988117770

namespace A041007

/-- `lcm(2^val(n+1, 2), A041039(n))` -/
def P1420359155988117770.Spec : Prop :=
  ∀ n, (P1420359155988117770.a n : ℤ) = A041007 n

end A041007

/-! ## A041007.P11702892444945593991

`A000034(n)*A041039(n)`
-/

namespace A041007.P11702892444945593991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041039 n

end

end A041007.P11702892444945593991

namespace A041007

/-- `A000034(n)*A041039(n)` -/
def P11702892444945593991.Spec : Prop :=
  ∀ n, P11702892444945593991.a n = A041007 n

end A041007

/-! ## A041007.P5025922871531134371

`A040001(n+1)*A041039(n)`
-/

namespace A041007.P5025922871531134371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041039 n

end

end A041007.P5025922871531134371

namespace A041007

/-- `A040001(n+1)*A041039(n)` -/
def P5025922871531134371.Spec : Prop :=
  ∀ n, P5025922871531134371.a n = A041007 n

end A041007

/-! ## A041007.P9865352771631950958

`A041039(n)*A134451(n+1)`
-/

namespace A041007.P9865352771631950958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 n * A134451 (n + 1)

end

end A041007.P9865352771631950958

namespace A041007

/-- `A041039(n)*A134451(n+1)` -/
def P9865352771631950958.Spec : Prop :=
  ∀ n, P9865352771631950958.a n = A041007 n

end A041007

/-! ## A041007.P3120317540591578093

`lcm(A006519(n+1), A041039(n))`
-/

namespace A041007.P3120317540591578093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A041039 n)

end

end A041007.P3120317540591578093

namespace A041007

/-- `lcm(A006519(n+1), A041039(n))` -/
def P3120317540591578093.Spec : Prop :=
  ∀ n, (P3120317540591578093.a n : ℤ) = A041007 n

end A041007

/-! ## A041007.P2598694595827764183

`A080873(n+1)+A080872(n)-A080874(n)`
-/

namespace A041007.P2598694595827764183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 1) + (A080872 n - A080874 n)

end

end A041007.P2598694595827764183

namespace A041007

/-- `A080873(n+1)+A080872(n)-A080874(n)` -/
def P2598694595827764183.Spec : Prop :=
  ∀ n, P2598694595827764183.a n = A041007 n

end A041007

/-! ## A041007.P9214640501955442109

`A259594(n)-a(n-1)` with `a(0)=1`
-/

namespace A041007.P9214640501955442109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259594 n - a (n - 1)

end

end A041007.P9214640501955442109

namespace A041007

/-- `A259594(n)-a(n-1)` -/
def P9214640501955442109.Spec : Prop :=
  ∀ n, P9214640501955442109.a n = A041007 n

end A041007

/-! ## A041007.P16678635388710732179

`A085376(n+1)+A080872(n)-A080873(n+1)`
-/

namespace A041007.P16678635388710732179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085376 (n + 1) + (A080872 n - A080873 (n + 1))

end

end A041007.P16678635388710732179

namespace A041007

/-- `A085376(n+1)+A080872(n)-A080873(n+1)` -/
def P16678635388710732179.Spec : Prop :=
  ∀ n, P16678635388710732179.a n = A041007 n

end A041007

/-! ## A041007.P17300510557220886132

`∑[A080806(n+1)]+A080872(n)-A080806(n+1)`
-/

namespace A041007.P17300510557220886132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A080872 n - A080806 (n + 1))

end

end A041007.P17300510557220886132

namespace A041007

/-- `∑[A080806(n+1)]+A080872(n)-A080806(n+1)` -/
def P17300510557220886132.Spec : Prop :=
  ∀ n, P17300510557220886132.a n = A041007 n

end A041007

/-! ## A041007.P9903966674041299423

`A142238(n+1)-A142239(n+1)`
-/

namespace A041007.P9903966674041299423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (n + 1) - A142239 (n + 1)

end

end A041007.P9903966674041299423

namespace A041007

/-- `A142238(n+1)-A142239(n+1)` -/
def P9903966674041299423.Spec : Prop :=
  ∀ n, P9903966674041299423.a n = A041007 n

end A041007

/-! ## A041007.P6632457745641722169

`A041006(n+1)/A142238(n+1)*A041039(n)`
-/

namespace A041007.P6632457745641722169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 (n + 1) : ℚ) / (A142238 (n + 1) : ℚ) * (A041039 n : ℚ)

end

end A041007.P6632457745641722169

namespace A041007

/-- `A041006(n+1)/A142238(n+1)*A041039(n)` -/
def P6632457745641722169.Spec : Prop :=
  ∀ n, P6632457745641722169.a n = (A041007 n : ℚ)

end A041007

/-! ## A041007.P4190879652797457975

`A142238(n+1)/A041006(n+1)*A142239(n)`
-/

namespace A041007.P4190879652797457975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142238 (n + 1) : ℚ) / (A041006 (n + 1) : ℚ) * (A142239 n : ℚ)

end

end A041007.P4190879652797457975

namespace A041007

/-- `A142238(n+1)/A041006(n+1)*A142239(n)` -/
def P4190879652797457975.Spec : Prop :=
  ∀ n, P4190879652797457975.a n = (A041007 n : ℚ)

end A041007

/-! ## A041007.P4433571201393744352

`A041038(n+1)/A041006(n+1)*A041039(n)`
-/

namespace A041007.P4433571201393744352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041038 (n + 1) : ℚ) / (A041006 (n + 1) : ℚ) * (A041039 n : ℚ)

end

end A041007.P4433571201393744352

namespace A041007

/-- `A041038(n+1)/A041006(n+1)*A041039(n)` -/
def P4433571201393744352.Spec : Prop :=
  ∀ n, P4433571201393744352.a n = (A041007 n : ℚ)

end A041007

/-! ## A041007.P609632336716014363

`A041039(n)/A042011(n)*A041241(n)`
-/

namespace A041007.P609632336716014363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041039 n : ℚ) / (A042011 n : ℚ) * (A041241 n : ℚ)

end

end A041007.P609632336716014363

namespace A041007

/-- `A041039(n)/A042011(n)*A041241(n)` -/
def P609632336716014363.Spec : Prop :=
  ∀ n, P609632336716014363.a n = (A041007 n : ℚ)

end A041007

/-!
# A041008: Numerators of continued fraction convergents to sqrt(7).

The programs for A041008, the canonical program `A041008.P10522338977269855037` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041008 has offset 0).

The definition of A041008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041008.P10522338977269855037

`A259597(n)-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041008

/-- `A259597(n)-a(n-1)` -/
def P10522338977269855037.Spec : Prop :=
  ∀ n, P10522338977269855037.a n = A041008 n

theorem P10522338977269855037.correct : P10522338977269855037.Spec := by
  intro n
  simp only [A041008]

end A041008

/-! ## A041008.P5598967704970418646

`round(sqrt(7)*A259596(n))-a(n-1)` with `a(0)=2`
-/

namespace A041008.P5598967704970418646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (7 : ℝ) * (A259596 n : ℝ)) - a (n - 1)

end

end A041008.P5598967704970418646

namespace A041008

/-- `round(sqrt(7)*A259596(n))-a(n-1)` -/
def P5598967704970418646.Spec : Prop :=
  ∀ n, P5598967704970418646.a n = A041008 n

end A041008

/-! ## A041008.P11666564645432967070

`A259597(xor(1, n))%A259597(n)`
-/

namespace A041008.P11666564645432967070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259597 (Nat.xor 1 n)) (A259597 n)

end

end A041008.P11666564645432967070

namespace A041008

/-- `A259597(xor(1, n))%A259597(n)` -/
def P11666564645432967070.Spec : Prop :=
  ∀ n, P11666564645432967070.a n = A041008 n

end A041008

/-! ## A041008.P2350398059628290681

`A259597(A004442(n))%A259597(n)`
-/

namespace A041008.P2350398059628290681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259597 (A004442 n).toNat) (A259597 n)

end

end A041008.P2350398059628290681

namespace A041008

/-- `A259597(A004442(n))%A259597(n)` -/
def P2350398059628290681.Spec : Prop :=
  ∀ n, P2350398059628290681.a n = A041008 n

end A041008

/-! ## A041008.P4994534342637814785

`(A259597(n+1)-A259597(n))/A010121(n+1)`
-/

namespace A041008.P4994534342637814785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259597 (n + 1) - A259597 n : ℚ) / (A010121 (n + 1) : ℚ)

end

end A041008.P4994534342637814785

namespace A041008

/-- `(A259597(n+1)-A259597(n))/A010121(n+1)` -/
def P4994534342637814785.Spec : Prop :=
  ∀ n, P4994534342637814785.a n = (A041008 n : ℚ)

end A041008

/-!
# A041009: Denominators of continued fraction convergents to sqrt(7).

The programs for A041009, the canonical program `A041009.P10505190960444366976` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041009 has offset 0).

The definition of A041009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041009.P10505190960444366976

`A259596(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041009

/-- `A259596(n)-a(n-1)` -/
def P10505190960444366976.Spec : Prop :=
  ∀ n, P10505190960444366976.a n = A041009 n

theorem P10505190960444366976.correct : P10505190960444366976.Spec := by
  intro n
  simp only [A041009]

end A041009

/-! ## A041009.P15400379107198873914

`(A259596(n+1)-A259596(n))/A010121(n+1)`
-/

namespace A041009.P15400379107198873914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259596 (n + 1) - A259596 n : ℚ) / (A010121 (n + 1) : ℚ)

end

end A041009.P15400379107198873914

namespace A041009

/-- `(A259596(n+1)-A259596(n))/A010121(n+1)` -/
def P15400379107198873914.Spec : Prop :=
  ∀ n, P15400379107198873914.a n = (A041009 n : ℚ)

end A041009

/-! ## A041009.P16800595925711436745

`A042367(n)%A285190(A000040(n+1))`
-/

namespace A041009.P16800595925711436745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042367 n) (A285190 (A000040 (n + 1)).toNat)

end

end A041009.P16800595925711436745

namespace A041009

/-- `A042367(n)%A285190(A000040(n+1))` -/
def P16800595925711436745.Spec : Prop :=
  ∀ n, P16800595925711436745.a n = A041009 n

end A041009

/-!
# A041010: Numerators of continued fraction convergents to sqrt(8).

The programs for A041010, the canonical program `A041010.P2487610298239819987` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041010 has offset 0).

The definition of A041010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041010.P2487610298239819987

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=14, a(3)=17`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041010

/-- `6*a(n-2)-a(n-4)` -/
def P2487610298239819987.Spec : Prop :=
  ∀ n, P2487610298239819987.a n = A041010 n

theorem P2487610298239819987.correct : P2487610298239819987.Spec := by
  intro n
  simp only [A041010]

end A041010

/-! ## A041010.P11591616941371994258

`A001333(n+1)*A000034(n+1)`
-/

namespace A041010.P11591616941371994258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A000034 (n + 1)

end

end A041010.P11591616941371994258

namespace A041010

/-- `A001333(n+1)*A000034(n+1)` -/
def P11591616941371994258.Spec : Prop :=
  ∀ n, P11591616941371994258.a n = A041010 n

end A041010

/-! ## A041010.P9723836216921728857

`gcd(2, n)*A078057(n)`
-/

namespace A041010.P9723836216921728857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A078057 n

end

end A041010.P9723836216921728857

namespace A041010

/-- `gcd(2, n)*A078057(n)` -/
def P9723836216921728857.Spec : Prop :=
  ∀ n, P9723836216921728857.a n = A041010 n

end A041010

/-! ## A041010.P3874595048239021369

`lcm(A078057(n), A228826(n))`
-/

namespace A041010.P3874595048239021369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078057 n) (A228826 n)

end

end A041010.P3874595048239021369

namespace A041010

/-- `lcm(A078057(n), A228826(n))` -/
def P3874595048239021369.Spec : Prop :=
  ∀ n, (P3874595048239021369.a n : ℤ) = A041010 n

end A041010

/-! ## A041010.P9143620943401045380

`Δ[A007494(n)]*A078057(n)`
-/

namespace A041010.P9143620943401045380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078057 n

end

end A041010.P9143620943401045380

namespace A041010

/-- `Δ[A007494(n)]*A078057(n)` -/
def P9143620943401045380.Spec : Prop :=
  ∀ n, P9143620943401045380.a n = A041010 n

end A041010

/-! ## A041010.P1801127345846877503

`A000034(n+1)*A078057(n)`
-/

namespace A041010.P1801127345846877503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A078057 n

end

end A041010.P1801127345846877503

namespace A041010

/-- `A000034(n+1)*A078057(n)` -/
def P1801127345846877503.Spec : Prop :=
  ∀ n, P1801127345846877503.a n = A041010 n

end A041010

/-! ## A041010.P216900138658094320

`(A059841(n)+1)*A078057(n)`
-/

namespace A041010.P216900138658094320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A078057 n

end

end A041010.P216900138658094320

namespace A041010

/-- `(A059841(n)+1)*A078057(n)` -/
def P216900138658094320.Spec : Prop :=
  ∀ n, P216900138658094320.a n = A041010 n

end A041010

/-! ## A041010.P16861882848729874873

`A089499(n)+2*A041011(n)`
-/

namespace A041010.P16861882848729874873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 n + 2 * A041011 n

end

end A041010.P16861882848729874873

namespace A041010

/-- `A089499(n)+2*A041011(n)` -/
def P16861882848729874873.Spec : Prop :=
  ∀ n, P16861882848729874873.a n = A041010 n

end A041010

/-! ## A041010.P6881290121616373088

`(2-A000035(n))*A078057(n)`
-/

namespace A041010.P6881290121616373088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A078057 n

end

end A041010.P6881290121616373088

namespace A041010

/-- `(2-A000035(n))*A078057(n)` -/
def P6881290121616373088.Spec : Prop :=
  ∀ n, P6881290121616373088.a n = A041010 n

end A041010

/-! ## A041010.P6675170406495565225

`2/A000034(n)*A078057(n)`
-/

namespace A041010.P6675170406495565225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A078057 n : ℚ)

end

end A041010.P6675170406495565225

namespace A041010

/-- `2/A000034(n)*A078057(n)` -/
def P6675170406495565225.Spec : Prop :=
  ∀ n, P6675170406495565225.a n = (A041010 n : ℚ)

end A041010

/-! ## A041010.P16554468285921513728

`A000034(n+1)*∑[A052542(n)]`
-/

namespace A041010.P16554468285921513728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A041010.P16554468285921513728

namespace A041010

/-- `A000034(n+1)*∑[A052542(n)]` -/
def P16554468285921513728.Spec : Prop :=
  ∀ n, P16554468285921513728.a n = A041010 n

end A041010

/-! ## A041010.P10568838259430543317

`(2-Δ[A004526(n)])*A078057(n)`
-/

namespace A041010.P10568838259430543317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A078057 n

end

end A041010.P10568838259430543317

namespace A041010

/-- `(2-Δ[A004526(n)])*A078057(n)` -/
def P10568838259430543317.Spec : Prop :=
  ∀ n, P10568838259430543317.a n = A041010 n

end A041010

/-! ## A041010.P12199372654754350454

`(2-Δ[A008619(n)])*A078057(n)`
-/

namespace A041010.P12199372654754350454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A078057 n

end

end A041010.P12199372654754350454

namespace A041010

/-- `(2-Δ[A008619(n)])*A078057(n)` -/
def P12199372654754350454.Spec : Prop :=
  ∀ n, P12199372654754350454.a n = A041010 n

end A041010

/-! ## A041010.P17400250384483676203

`2/A000034(n)*∑[A052542(n)]`
-/

namespace A041010.P17400250384483676203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A041010.P17400250384483676203

namespace A041010

/-- `2/A000034(n)*∑[A052542(n)]` -/
def P17400250384483676203.Spec : Prop :=
  ∀ n, P17400250384483676203.a n = (A041010 n : ℚ)

end A041010

/-! ## A041010.P6671386143666857489

`A001333(n+1)*A040001(n+2)`
-/

namespace A041010.P6671386143666857489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A040001 (n + 2)

end

end A041010.P6671386143666857489

namespace A041010

/-- `A001333(n+1)*A040001(n+2)` -/
def P6671386143666857489.Spec : Prop :=
  ∀ n, P6671386143666857489.a n = A041010 n

end A041010

/-! ## A041010.P7546699628241043289

`(2-A000035(n))*A001333(n+1)`
-/

namespace A041010.P7546699628241043289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A001333 (n + 1)

end

end A041010.P7546699628241043289

namespace A041010

/-- `(2-A000035(n))*A001333(n+1)` -/
def P7546699628241043289.Spec : Prop :=
  ∀ n, P7546699628241043289.a n = A041010 n

end A041010

/-! ## A041010.P2317836445515895101

`(A000035(n+1)+1)*A001333(n+1)`
-/

namespace A041010.P2317836445515895101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) + 1) * A001333 (n + 1)

end

end A041010.P2317836445515895101

namespace A041010

/-- `(A000035(n+1)+1)*A001333(n+1)` -/
def P2317836445515895101.Spec : Prop :=
  ∀ n, P2317836445515895101.a n = A041010 n

end A041010

/-! ## A041010.P16095627150483988956

`2*A001333(n+1)/A134451(n+1)`
-/

namespace A041010.P16095627150483988956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001333 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ))

end

end A041010.P16095627150483988956

namespace A041010

/-- `2*A001333(n+1)/A134451(n+1)` -/
def P16095627150483988956.Spec : Prop :=
  ∀ n, P16095627150483988956.a n = (A041010 n : ℚ)

end A041010

/-! ## A041010.P8021203261315523499

`A000129(Δ[ceil(n²/2)]+1)+A000129(n)`
-/

namespace A041010.P8021203261315523499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (f1 (n + 1) - f1 n + 1).toNat + A000129 n

end

end A041010.P8021203261315523499

namespace A041010

/-- `A000129(Δ[ceil(n²/2)]+1)+A000129(n)` -/
def P8021203261315523499.Spec : Prop :=
  ∀ n, P8021203261315523499.a n = A041010 n

end A041010

/-! ## A041010.P12835117498794202026

`A014695(2*n+1)*A155046(2*n+1)`
-/

namespace A041010.P12835117498794202026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (2 * n + 1) * A155046 (2 * n + 1)

end

end A041010.P12835117498794202026

namespace A041010

/-- `A014695(2*n+1)*A155046(2*n+1)` -/
def P12835117498794202026.Spec : Prop :=
  ∀ n, P12835117498794202026.a n = A041010 n

end A041010

/-!
# A041011: Denominators of continued fraction convergents to sqrt(8).

The programs for A041011, the canonical program `A041011.P18331514441097382032` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041011 has offset 0).

The definition of A041011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041011.P18331514441097382032

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041011

/-- `6*a(n-2)-a(n-4)` -/
def P18331514441097382032.Spec : Prop :=
  ∀ n, P18331514441097382032.a n = A041011 n

theorem P18331514441097382032.correct : P18331514441097382032.Spec := by
  intro n
  simp only [A041011]

end A041011

/-! ## A041011.P15318745421967228171

`ogf((1+x-x^2)/(1-6x^2+x^4))`
-/

namespace A041011.P15318745421967228171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -6, 0, 1] n

end

end A041011.P15318745421967228171

namespace A041011

/-- `ogf((1+x-x^2)/(1-6x^2+x^4))` -/
def P15318745421967228171.Spec : Prop :=
  ∀ n, P15318745421967228171.a n = A041011 n

end A041011

/-! ## A041011.P17038316400845348317

`A152118(n+1)`
-/

namespace A041011.P17038316400845348317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152118 (n + 1)

end

end A041011.P17038316400845348317

namespace A041011

/-- `A152118(n+1)` -/
def P17038316400845348317.Spec : Prop :=
  ∀ n, P17038316400845348317.a n = A041011 n

end A041011

/-! ## A041011.P14580009733888067697

`lcm(2, A077985(n))/2`
-/

namespace A041011.P14580009733888067697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A077985 n) : ℚ) / 2

end

end A041011.P14580009733888067697

namespace A041011

/-- `lcm(2, A077985(n))/2` -/
def P14580009733888067697.Spec : Prop :=
  ∀ n, P14580009733888067697.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P10453731983048429871

`A089499(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A041011.P10453731983048429871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A089499 n + a (n - 2)

end

end A041011.P10453731983048429871

namespace A041011

/-- `A089499(n)+a(n-2)` -/
def P10453731983048429871.Spec : Prop :=
  ∀ n, P10453731983048429871.a n = A041011 n

end A041011

/-! ## A041011.P2671256496804994833

`A000129(n+1)/gcd(2, n+1)`
-/

namespace A041011.P2671256496804994833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A041011.P2671256496804994833

namespace A041011

/-- `A000129(n+1)/gcd(2, n+1)` -/
def P2671256496804994833.Spec : Prop :=
  ∀ n, P2671256496804994833.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P15242355369541823763

`∑[A001333(n)]/A000034(n)`
-/

namespace A041011.P15242355369541823763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A041011.P15242355369541823763

namespace A041011

/-- `∑[A001333(n)]/A000034(n)` -/
def P15242355369541823763.Spec : Prop :=
  ∀ n, P15242355369541823763.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P6998369462909960095

`A143609(n+1)-A117719(n)`
-/

namespace A041011.P6998369462909960095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1) - A117719 n

end

end A041011.P6998369462909960095

namespace A041011

/-- `A143609(n+1)-A117719(n)` -/
def P6998369462909960095.Spec : Prop :=
  ∀ n, P6998369462909960095.a n = A041011 n

end A041011

/-! ## A041011.P5356998320815115020

`A000129(n+1)/A000034(n)`
-/

namespace A041011.P5356998320815115020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041011.P5356998320815115020

namespace A041011

/-- `A000129(n+1)/A000034(n)` -/
def P5356998320815115020.Spec : Prop :=
  ∀ n, P5356998320815115020.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P17356753340466502953

`A077985(n)/A327767(n+1)`
-/

namespace A041011.P17356753340466502953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077985 n : ℚ) / (A327767 (n + 1) : ℚ)

end

end A041011.P17356753340466502953

namespace A041011

/-- `A077985(n)/A327767(n+1)` -/
def P17356753340466502953.Spec : Prop :=
  ∀ n, P17356753340466502953.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P9137636540294616397

`(A041010(n)-A089499(n))/2`
-/

namespace A041011.P9137636540294616397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041010 n - A089499 n : ℚ) / 2

end

end A041011.P9137636540294616397

namespace A041011

/-- `(A041010(n)-A089499(n))/2` -/
def P9137636540294616397.Spec : Prop :=
  ∀ n, P9137636540294616397.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P5218783016960761193

`∑[A119016(2*n)]/A000034(n)`
-/

namespace A041011.P5218783016960761193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A041011.P5218783016960761193

namespace A041011

/-- `∑[A119016(2*n)]/A000034(n)` -/
def P5218783016960761193.Spec : Prop :=
  ∀ n, P5218783016960761193.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P7658578247120102069

`A249576(A047230(n+1)+2)/2`
-/

namespace A041011.P7658578247120102069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249576 (A047230 (n + 1) + 2).toNat : ℚ) / 2

end

end A041011.P7658578247120102069

namespace A041011

/-- `A249576(A047230(n+1)+2)/2` -/
def P7658578247120102069.Spec : Prop :=
  ∀ n, P7658578247120102069.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P15189398692196629390

`A000129(n+1)/(A000035(n)+1)`
-/

namespace A041011.P15189398692196629390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A041011.P15189398692196629390

namespace A041011

/-- `A000129(n+1)/(A000035(n)+1)` -/
def P15189398692196629390.Spec : Prop :=
  ∀ n, P15189398692196629390.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P2623179159498099301

`A000129(n+1)/A040001(n+1)`
-/

namespace A041011.P2623179159498099301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041011.P2623179159498099301

namespace A041011

/-- `A000129(n+1)/A040001(n+1)` -/
def P2623179159498099301.Spec : Prop :=
  ∀ n, P2623179159498099301.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P8396860111546551051

`A000129(n+1)/A134451(n+1)`
-/

namespace A041011.P8396860111546551051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041011.P8396860111546551051

namespace A041011

/-- `A000129(n+1)/A134451(n+1)` -/
def P8396860111546551051.Spec : Prop :=
  ∀ n, P8396860111546551051.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P660274694392295438

`A215928(n+1)/A040001(n+1)`
-/

namespace A041011.P660274694392295438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041011.P660274694392295438

namespace A041011

/-- `A215928(n+1)/A040001(n+1)` -/
def P660274694392295438.Spec : Prop :=
  ∀ n, P660274694392295438.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P14691397178335055544

`A215928(n+1)/A134451(n+1)`
-/

namespace A041011.P14691397178335055544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041011.P14691397178335055544

namespace A041011

/-- `A215928(n+1)/A134451(n+1)` -/
def P14691397178335055544.Spec : Prop :=
  ∀ n, P14691397178335055544.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P1427961798638873129

`A000129(n+1)/(2-A059841(n))`
-/

namespace A041011.P1427961798638873129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

end

end A041011.P1427961798638873129

namespace A041011

/-- `A000129(n+1)/(2-A059841(n))` -/
def P1427961798638873129.Spec : Prop :=
  ∀ n, P1427961798638873129.a n = (A041011 n : ℚ)

end A041011

/-! ## A041011.P14214919961938015415

`A000129(n+1)/A143025(2*n)`
-/

namespace A041011.P14214919961938015415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A143025 (2 * n) : ℚ)

end

end A041011.P14214919961938015415

namespace A041011

/-- `A000129(n+1)/A143025(2*n)` -/
def P14214919961938015415.Spec : Prop :=
  ∀ n, P14214919961938015415.a n = (A041011 n : ℚ)

end A041011

/-!
# A041014: Numerators of continued fraction convergents to sqrt(11).

The programs for A041014, the canonical program `A041014.P4734597588293575210` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041014 has offset 0).

The definition of A041014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041014.P4734597588293575210

`20*a(n-2)-a(n-4)` with `a(0)=3, a(1)=10, a(2)=63, a(3)=199`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041014

/-- `20*a(n-2)-a(n-4)` -/
def P4734597588293575210.Spec : Prop :=
  ∀ n, P4734597588293575210.a n = A041014 n

theorem P4734597588293575210.correct : P4734597588293575210.Spec := by
  intro n
  simp only [A041014]

end A041014

/-! ## A041014.P9391568755278869652

`A041178(n)/Δ[A014601(n)]`
-/

namespace A041014.P9391568755278869652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041178 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041014.P9391568755278869652

namespace A041014

/-- `A041178(n)/Δ[A014601(n)]` -/
def P9391568755278869652.Spec : Prop :=
  ∀ n, P9391568755278869652.a n = (A041014 n : ℚ)

end A041014

/-! ## A041014.P1583933294706683324

`A041178(n)/A010684(n+1)`
-/

namespace A041014.P1583933294706683324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041178 n : ℚ) / (A010684 (n + 1) : ℚ)

end

end A041014.P1583933294706683324

namespace A041014

/-- `A041178(n)/A010684(n+1)` -/
def P1583933294706683324.Spec : Prop :=
  ∀ n, P1583933294706683324.a n = (A041014 n : ℚ)

end A041014

/-! ## A041014.P17000462197881552515

`A041178(n)/A000265(Δ[A146951(n)])`
-/

namespace A041014.P17000462197881552515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041178 n : ℚ) / (A000265 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041014.P17000462197881552515

namespace A041014

/-- `A041178(n)/A000265(Δ[A146951(n)])` -/
def P17000462197881552515.Spec : Prop :=
  ∀ n, P17000462197881552515.a n = (A041014 n : ℚ)

end A041014

/-!
# A041015: Denominators of continued fraction convergents to sqrt(11).

The programs for A041015, the canonical program `A041015.P3107087788480570332` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041015 has offset 0).

The definition of A041015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041015.P3107087788480570332

`a(n-2)+3*gcd(2, n)*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041015

/-- `a(n-2)+3*gcd(2, n)*a(n-1)` -/
def P3107087788480570332.Spec : Prop :=
  ∀ n, (P3107087788480570332.a n : ℤ) = A041015 n

theorem P3107087788480570332.correct : P3107087788480570332.Spec := by
  intro n
  simp only [A041015]

end A041015

/-! ## A041015.P7815151502984654450

`a(n-2)+(2-and(1, n))*3*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A041015.P7815151502984654450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (2 - (Nat.land 1 n : ℤ)) * (3 * a (n - 1))

end

end A041015.P7815151502984654450

namespace A041015

/-- `a(n-2)+(2-and(1, n))*3*a(n-1)` -/
def P7815151502984654450.Spec : Prop :=
  ∀ n, P7815151502984654450.a n = A041015 n

end A041015

/-! ## A041015.P4846162505658820220

`a(n-2)-(and(1, n)-2)*3*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A041015.P4846162505658820220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - ((Nat.land 1 n : ℤ) - 2) * (3 * a (n - 1))

end

end A041015.P4846162505658820220

namespace A041015

/-- `a(n-2)-(and(1, n)-2)*3*a(n-1)` -/
def P4846162505658820220.Spec : Prop :=
  ∀ n, P4846162505658820220.a n = A041015 n

end A041015

/-! ## A041015.P8583110983766400324

`a(n-2)+a(n-1)*A010704(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A041015.P8583110983766400324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A010704 (n + 1)

end

end A041015.P8583110983766400324

namespace A041015

/-- `a(n-2)+a(n-1)*A010704(n+1)` -/
def P8583110983766400324.Spec : Prop :=
  ∀ n, P8583110983766400324.a n = A041015 n

end A041015

/-! ## A041015.P6781825483150543844

`A010684(n)*A041179(n)`
-/

namespace A041015.P6781825483150543844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A041179 n

end

end A041015.P6781825483150543844

namespace A041015

/-- `A010684(n)*A041179(n)` -/
def P6781825483150543844.Spec : Prop :=
  ∀ n, P6781825483150543844.a n = A041015 n

end A041015

/-! ## A041015.P5177983877314160873

`(A221763(n+1)+A221762(n+1))/2`
-/

namespace A041015.P5177983877314160873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221763 (n + 1) + A221762 (n + 1) : ℚ) / 2

end

end A041015.P5177983877314160873

namespace A041015

/-- `(A221763(n+1)+A221762(n+1))/2` -/
def P5177983877314160873.Spec : Prop :=
  ∀ n, P5177983877314160873.a n = (A041015 n : ℚ)

theorem P5177983877314160873.correct : P5177983877314160873.Spec := by
  intro n
  simp only [A041015, Nat.add_sub_cancel, A041015.P5177983877314160873.a, A041015.P3107087788480570332.a, A221762, A221762.P6060710751891883182.a, A221763, A221763.P1213117035241420343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A041015

/-! ## A041015.P2973241333664083747

`A135030(n+1)/A060546(n)`
-/

namespace A041015.P2973241333664083747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135030 (n + 1) : ℚ) / (A060546 n : ℚ)

end

end A041015.P2973241333664083747

namespace A041015

/-- `A135030(n+1)/A060546(n)` -/
def P2973241333664083747.Spec : Prop :=
  ∀ n, P2973241333664083747.a n = (A041015 n : ℚ)

end A041015

/-! ## A041015.P12520176158905422636

`A135030(n+1)/A016116(n+1)`
-/

namespace A041015.P12520176158905422636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135030 (n + 1) : ℚ) / (A016116 (n + 1) : ℚ)

end

end A041015.P12520176158905422636

namespace A041015

/-- `A135030(n+1)/A016116(n+1)` -/
def P12520176158905422636.Spec : Prop :=
  ∀ n, P12520176158905422636.a n = (A041015 n : ℚ)

end A041015

/-!
# A041016: Numerators of continued fraction convergents to sqrt(12).

The programs for A041016, the canonical program `A041016.P12733509508903654080` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041016 has offset 0).

The definition of A041016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041016.P12733509508903654080

`a(n-2)+lcm(6, a(n-1))` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041016

/-- `a(n-2)+lcm(6, a(n-1))` -/
def P12733509508903654080.Spec : Prop :=
  ∀ n, (P12733509508903654080.a n : ℤ) = A041016 n

theorem P12733509508903654080.correct : P12733509508903654080.Spec := by
  intro n
  simp only [A041016]

end A041016

/-! ## A041016.P1666869923703294840

`A259593(or(1, n)+n)`
-/

namespace A041016.P1666869923703294840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (Nat.lor 1 n + n)

end

end A041016.P1666869923703294840

namespace A041016

/-- `A259593(or(1, n)+n)` -/
def P1666869923703294840.Spec : Prop :=
  ∀ n, P1666869923703294840.a n = A041016 n

end A041016

/-! ## A041016.P16486531980524594463

`A143642(A047270(n+1))`
-/

namespace A041016.P16486531980524594463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A047270 (n + 1)).toNat

end

end A041016.P16486531980524594463

namespace A041016

/-- `A143642(A047270(n+1))` -/
def P16486531980524594463.Spec : Prop :=
  ∀ n, P16486531980524594463.a n = A041016 n

end A041016

/-! ## A041016.P18326438396615598823

`A259593(A042963(n+1))`
-/

namespace A041016.P18326438396615598823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A042963 (n + 1)).toNat

end

end A041016.P18326438396615598823

namespace A041016

/-- `A259593(A042963(n+1))` -/
def P18326438396615598823.Spec : Prop :=
  ∀ n, P18326438396615598823.a n = A041016 n

end A041016

/-! ## A041016.P15940804366560465045

`A249578(A007310(n+2))`
-/

namespace A041016.P15940804366560465045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (A007310 (n + 2)).toNat

end

end A041016.P15940804366560465045

namespace A041016

/-- `A249578(A007310(n+2))` -/
def P15940804366560465045.Spec : Prop :=
  ∀ n, P15940804366560465045.a n = A041016 n

end A041016

/-! ## A041016.P11665940269259904277

`A143642(or(1, A016789(n)))`
-/

namespace A041016.P11665940269259904277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (Int.lor 1 (A016789 n)).toNat

end

end A041016.P11665940269259904277

namespace A041016

/-- `A143642(or(1, A016789(n)))` -/
def P11665940269259904277.Spec : Prop :=
  ∀ n, P11665940269259904277.a n = A041016 n

end A041016

/-! ## A041016.P277364220770116175

`Δ[A140827(2*A007494(n))]`
-/

namespace A041016.P277364220770116175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140827 (2 * A007494 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041016.P277364220770116175

namespace A041016

/-- `Δ[A140827(2*A007494(n))]` -/
def P277364220770116175.Spec : Prop :=
  ∀ n, P277364220770116175.a n = A041016 n

end A041016

/-! ## A041016.P7715553569788791854

`A259593(Δ[A000982(n)]+n)`
-/

namespace A041016.P7715553569788791854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A041016.P7715553569788791854

namespace A041016

/-- `A259593(Δ[A000982(n)]+n)` -/
def P7715553569788791854.Spec : Prop :=
  ∀ n, P7715553569788791854.a n = A041016 n

end A041016

/-! ## A041016.P15445181018846170971

`A143642(A047235(n+1)+1)`
-/

namespace A041016.P15445181018846170971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A047235 (n + 1) + 1).toNat

end

end A041016.P15445181018846170971

namespace A041016

/-- `A143642(A047235(n+1)+1)` -/
def P15445181018846170971.Spec : Prop :=
  ∀ n, P15445181018846170971.a n = A041016 n

end A041016

/-! ## A041016.P7185484805166784033

`A106257(n+1)-A003500(n)`
-/

namespace A041016.P7185484805166784033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106257 (n + 1) - A003500 n

end

end A041016.P7185484805166784033

namespace A041016

/-- `A106257(n+1)-A003500(n)` -/
def P7185484805166784033.Spec : Prop :=
  ∀ n, P7185484805166784033.a n = A041016 n

end A041016

/-! ## A041016.P115466615214645892

`A041082(n)/A040001(n+2)`
-/

namespace A041016.P115466615214645892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041082 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041016.P115466615214645892

namespace A041016

/-- `A041082(n)/A040001(n+2)` -/
def P115466615214645892.Spec : Prop :=
  ∀ n, P115466615214645892.a n = (A041016 n : ℚ)

end A041016

/-! ## A041016.P5594790048423977881

`A259593(or(2*n, A000034(n)))`
-/

namespace A041016.P5594790048423977881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (Int.lor (2 * n : ℤ) (A000034 n)).toNat

end

end A041016.P5594790048423977881

namespace A041016

/-- `A259593(or(2*n, A000034(n)))` -/
def P5594790048423977881.Spec : Prop :=
  ∀ n, P5594790048423977881.a n = A041016 n

end A041016

/-! ## A041016.P12195755076488812549

`A143642(2*A001651(n+1)+1)`
-/

namespace A041016.P12195755076488812549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (2 * A001651 (n + 1) + 1).toNat

end

end A041016.P12195755076488812549

namespace A041016

/-- `A143642(2*A001651(n+1)+1)` -/
def P12195755076488812549.Spec : Prop :=
  ∀ n, P12195755076488812549.a n = A041016 n

end A041016

/-! ## A041016.P6618037902386802667

`A259593(A047235(n+1)-(n+1))`
-/

namespace A041016.P6618037902386802667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A047235 (n + 1) - (n + 1 : ℤ)).toNat

end

end A041016.P6618037902386802667

namespace A041016

/-- `A259593(A047235(n+1)-(n+1))` -/
def P6618037902386802667.Spec : Prop :=
  ∀ n, P6618037902386802667.a n = A041016 n

end A041016

/-! ## A041016.P5899176179213789958

`A259593(A047270(n+1)-(n+2))`
-/

namespace A041016.P5899176179213789958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A047270 (n + 1) - (n + 2 : ℤ)).toNat

end

end A041016.P5899176179213789958

namespace A041016

/-- `A259593(A047270(n+1)-(n+2))` -/
def P5899176179213789958.Spec : Prop :=
  ∀ n, P5899176179213789958.a n = A041016 n

end A041016

/-! ## A041016.P2352654819982451556

`Δ[A140827(A005843(A007494(n)))]`
-/

namespace A041016.P2352654819982451556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140827 (A005843 (A007494 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041016.P2352654819982451556

namespace A041016

/-- `Δ[A140827(A005843(A007494(n)))]` -/
def P2352654819982451556.Spec : Prop :=
  ∀ n, P2352654819982451556.a n = A041016 n

end A041016

/-! ## A041016.P2446832522072193284

`A001834(n)+A001075(A109613(n))`
-/

namespace A041016.P2446832522072193284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + A001075 (A109613 n).toNat

end

end A041016.P2446832522072193284

namespace A041016

/-- `A001834(n)+A001075(A109613(n))` -/
def P2446832522072193284.Spec : Prop :=
  ∀ n, P2446832522072193284.a n = A041016 n

end A041016

/-! ## A041016.P16442604569772488556

`A143642(A032766(n+2)+A032766(n))`
-/

namespace A041016.P16442604569772488556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A032766 (n + 2) + A032766 n).toNat

end

end A041016.P16442604569772488556

namespace A041016

/-- `A143642(A032766(n+2)+A032766(n))` -/
def P16442604569772488556.Spec : Prop :=
  ∀ n, P16442604569772488556.a n = A041016 n

end A041016

/-! ## A041016.P8280299216831579441

`A041082(n)/A000045(A020639(3*(n+1)))`
-/

namespace A041016.P8280299216831579441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041082 n : ℚ) / (A000045 (A020639 (3 * (n + 1))).toNat : ℚ)

end

end A041016.P8280299216831579441

namespace A041016

/-- `A041082(n)/A000045(A020639(3*(n+1)))` -/
def P8280299216831579441.Spec : Prop :=
  ∀ n, P8280299216831579441.a n = (A041016 n : ℚ)

end A041016

/-! ## A041016.P11026975089986585759

`A143642(A001651(n+1)+A001651(n+1)+1)`
-/

namespace A041016.P11026975089986585759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A001651 (n + 1) + (A001651 (n + 1) + 1)).toNat

end

end A041016.P11026975089986585759

namespace A041016

/-- `A143642(A001651(n+1)+A001651(n+1)+1)` -/
def P11026975089986585759.Spec : Prop :=
  ∀ n, P11026975089986585759.a n = A041016 n

end A041016

/-!
# A041017: Denominators of continued fraction convergents to sqrt(12).

The programs for A041017, the canonical program `A041017.P5765616743395702866` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041017 has offset 0).

The definition of A041017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041017.P5765616743395702866

`∑[A002530(xor((n+1)%2, 2*n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041017

/-- `∑[A002530(xor((n+1)%2, 2*n))]` -/
def P5765616743395702866.Spec : Prop :=
  ∀ n, P5765616743395702866.a n = A041017 n

theorem P5765616743395702866.correct : P5765616743395702866.Spec := by
  intro n
  simp only [A041017]

end A041017

/-! ## A041017.P12431151716695875464

`∑[A002530(xor(1-n%2, 2*n))]`
-/

namespace A041017.P12431151716695875464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (Int.xor (1 - ((n % 2 : ℕ) : ℤ)) (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041017.P12431151716695875464

namespace A041017

/-- `∑[A002530(xor(1-n%2, 2*n))]` -/
def P12431151716695875464.Spec : Prop :=
  ∀ n, P12431151716695875464.a n = A041017 n

end A041017

/-! ## A041017.P11730692999895155436

`a(n-2)+a(n-1)*A010696(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A041017.P11730692999895155436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A010696 (n + 1)

end

end A041017.P11730692999895155436

namespace A041017

/-- `a(n-2)+a(n-1)*A010696(n+1)` -/
def P11730692999895155436.Spec : Prop :=
  ∀ n, P11730692999895155436.a n = A041017 n

end A041017

/-! ## A041017.P15465334894227467896

`A144536(n)+A144535(n)`
-/

namespace A041017.P15465334894227467896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144536 n + A144535 n

end

end A041017.P15465334894227467896

namespace A041017

/-- `A144536(n)+A144535(n)` -/
def P15465334894227467896.Spec : Prop :=
  ∀ n, P15465334894227467896.a n = A041017 n

end A041017

/-! ## A041017.P11486472246971696537

`A000034(n)*A041083(n)`
-/

namespace A041017.P11486472246971696537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041083 n

end

end A041017.P11486472246971696537

namespace A041017

/-- `A000034(n)*A041083(n)` -/
def P11486472246971696537.Spec : Prop :=
  ∀ n, P11486472246971696537.a n = A041017 n

end A041017

/-! ## A041017.P3131364698501023143

`∑[A002530(Δ[A014848(n)])]`
-/

namespace A041017.P3131364698501023143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041017.P3131364698501023143

namespace A041017

/-- `∑[A002530(Δ[A014848(n)])]` -/
def P3131364698501023143.Spec : Prop :=
  ∀ n, P3131364698501023143.a n = A041017 n

end A041017

/-! ## A041017.P14553831743265378667

`∑[A002530(A042963(n+1))]`
-/

namespace A041017.P14553831743265378667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A042963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041017.P14553831743265378667

namespace A041017

/-- `∑[A002530(A042963(n+1))]` -/
def P14553831743265378667.Spec : Prop :=
  ∀ n, P14553831743265378667.a n = A041017 n

end A041017

/-! ## A041017.P12149266768953983208

`A040001(n+1)*A041083(n)`
-/

namespace A041017.P12149266768953983208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041083 n

end

end A041017.P12149266768953983208

namespace A041017

/-- `A040001(n+1)*A041083(n)` -/
def P12149266768953983208.Spec : Prop :=
  ∀ n, P12149266768953983208.a n = A041017 n

end A041017

/-! ## A041017.P4233060977648474131

`lcm(A006519(n+1), A041083(n))`
-/

namespace A041017.P4233060977648474131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A041083 n)

end

end A041017.P4233060977648474131

namespace A041017

/-- `lcm(A006519(n+1), A041083(n))` -/
def P4233060977648474131.Spec : Prop :=
  ∀ n, (P4233060977648474131.a n : ℤ) = A041017 n

end A041017

/-! ## A041017.P12911030971629646684

`A000079(n)%3*A041083(n)`
-/

namespace A041017.P12911030971629646684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 3 * A041083 n

end

end A041017.P12911030971629646684

namespace A041017

/-- `A000079(n)%3*A041083(n)` -/
def P12911030971629646684.Spec : Prop :=
  ∀ n, P12911030971629646684.a n = A041017 n

end A041017

/-! ## A041017.P17045723560223258876

`A048788(n+1)/A002530(n+1)*A041083(n)`
-/

namespace A041017.P17045723560223258876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 (n + 1) : ℚ) / (A002530 (n + 1) : ℚ) * (A041083 n : ℚ)

end

end A041017.P17045723560223258876

namespace A041017

/-- `A048788(n+1)/A002530(n+1)*A041083(n)` -/
def P17045723560223258876.Spec : Prop :=
  ∀ n, P17045723560223258876.a n = (A041017 n : ℚ)

end A041017

/-! ## A041017.P18116281966240192583

`2*A249578(2*(comp[3*n]+1))/4`
-/

namespace A041017.P18116281966240192583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A249578 (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)) : ℚ) / 4)

end

end A041017.P18116281966240192583

namespace A041017

/-- `2*A249578(2*(comp[3*n]+1))/4` -/
def P18116281966240192583.Spec : Prop :=
  ∀ n, P18116281966240192583.a n = (A041017 n : ℚ)

end A041017

/-! ## A041017.P7849206794851772144

`A106707(n)+A106256(n+1)`
-/

namespace A041017.P7849206794851772144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + A106256 (n + 1)

end

end A041017.P7849206794851772144

namespace A041017

/-- `A106707(n)+A106256(n+1)` -/
def P7849206794851772144.Spec : Prop :=
  ∀ n, P7849206794851772144.a n = A041017 n

end A041017

/-! ## A041017.P8832409755885251718

`A106256(n+1)-A001353(n)`
-/

namespace A041017.P8832409755885251718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106256 (n + 1) - A001353 n

end

end A041017.P8832409755885251718

namespace A041017

/-- `A106256(n+1)-A001353(n)` -/
def P8832409755885251718.Spec : Prop :=
  ∀ n, P8832409755885251718.a n = A041017 n

end A041017

/-! ## A041017.P17396267255887662980

`A140827(2*A001651(n+1))/2`
-/

namespace A041017.P17396267255887662980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140827 (2 * A001651 (n + 1)).toNat : ℚ) / 2

end

end A041017.P17396267255887662980

namespace A041017

/-- `A140827(2*A001651(n+1))/2` -/
def P17396267255887662980.Spec : Prop :=
  ∀ n, P17396267255887662980.a n = (A041017 n : ℚ)

end A041017

/-! ## A041017.P6847338445668825985

`A259592(n)*A259593(n)-A001353(n+1)`
-/

namespace A041017.P6847338445668825985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 n * A259593 n - A001353 (n + 1)

end

end A041017.P6847338445668825985

namespace A041017

/-- `A259592(n)*A259593(n)-A001353(n+1)` -/
def P6847338445668825985.Spec : Prop :=
  ∀ n, P6847338445668825985.a n = A041017 n

end A041017

/-! ## A041017.P10193871857698807302

`(A144535(n+1)+A144535(n+1))/A010696(n)`
-/

namespace A041017.P10193871857698807302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144535 (n + 1) + A144535 (n + 1) : ℚ) / (A010696 n : ℚ)

end

end A041017.P10193871857698807302

namespace A041017

/-- `(A144535(n+1)+A144535(n+1))/A010696(n)` -/
def P10193871857698807302.Spec : Prop :=
  ∀ n, P10193871857698807302.a n = (A041017 n : ℚ)

end A041017

/-! ## A041017.P9219032418724737043

`∪[A001075(2*n+1), A010905(2*n)]/2`
-/

namespace A041017.P9219032418724737043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A041017.P9219032418724737043

namespace A041017

/-- `∪[A001075(2*n+1), A010905(2*n)]/2` -/
def P9219032418724737043.Spec : Prop :=
  ∀ n, P9219032418724737043.a n = (A041017 n : ℚ)

end A041017

/-! ## A041017.P651377647653958194

`A041083(n)/A042011(n)*A041241(n)`
-/

namespace A041017.P651377647653958194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041083 n : ℚ) / (A042011 n : ℚ) * (A041241 n : ℚ)

end

end A041017.P651377647653958194

namespace A041017

/-- `A041083(n)/A042011(n)*A041241(n)` -/
def P651377647653958194.Spec : Prop :=
  ∀ n, P651377647653958194.a n = (A041017 n : ℚ)

end A041017

/-!
# A041018: Numerators of continued fraction convergents to sqrt(13).

The programs for A041018, there is no canonical definition to state claims against.
-/

/-! ## A041018.P15379099605251002018

`A010122(n)*a(n-1)+a(n-2)` with `a(0)=3, a(1)=4`
-/

namespace A041018.P15379099605251002018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A010122 n * a (n - 1) + a (n - 2)

end

end A041018.P15379099605251002018

/-! ## A041018.P12091185089205504633

`A008615(A041976(n)-A041019(n))`
-/

namespace A041018.P12091185089205504633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A041976 n - A041019 n).toNat

end

end A041018.P12091185089205504633

/-!
# A041019: Denominators of continued fraction convergents to sqrt(13).

The programs for A041019, there is no canonical definition to state claims against.
-/

/-! ## A041019.P2988674215364256813

`A010122(n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A041019.P2988674215364256813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A010122 n * a (n - 1) + a (n - 2)

end

end A041019.P2988674215364256813

/-! ## A041019.P17947783571658303502

`round(A041018(n)/sqrt(13))`
-/

namespace A041019.P17947783571658303502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041018 n : ℝ) / Real.sqrt (13 : ℝ))

end

end A041019.P17947783571658303502

/-! ## A041019.P11628027482265104635

`A076885(A041018(n))`
-/

namespace A041019.P11628027482265104635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A041018 n).toNat

end

end A041019.P11628027482265104635

/-!
# A041020: Numerators of continued fraction convergents to sqrt(14).

The programs for A041020, the canonical program `A041020.P15898672771561040029` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041020 has offset 0).

The definition of A041020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041020.P15898672771561040029

`30*a(n-4)-a(n-8)` with `a(0)=3, a(1)=4, a(2)=11, a(3)=15, a(4)=101, a(5)=116, a(6)=333, a(7)=449`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041020

/-- `30*a(n-4)-a(n-8)` -/
def P15898672771561040029.Spec : Prop :=
  ∀ n, P15898672771561040029.a n = A041020 n

theorem P15898672771561040029.correct : P15898672771561040029.Spec := by
  intro n
  simp only [A041020]

end A041020

/-! ## A041020.P586843627238297368

`round(sqrt(A040042(n))*A041021(n))`
-/

namespace A041020.P586843627238297368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A040042 n : ℝ) * (A041021 n : ℝ))

end

end A041020.P586843627238297368

namespace A041020

/-- `round(sqrt(A040042(n))*A041021(n))` -/
def P586843627238297368.Spec : Prop :=
  ∀ n, P586843627238297368.a n = A041020 n

end A041020

/-! ## A041020.P15277031961482102218

`(4*A295336(n+2))%A295337(n+2)`
-/

namespace A041020.P15277031961482102218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A295336 (n + 2)) (A295337 (n + 2))

end

end A041020.P15277031961482102218

namespace A041020

/-- `(4*A295336(n+2))%A295337(n+2)` -/
def P15277031961482102218.Spec : Prop :=
  ∀ n, P15277031961482102218.a n = A041020 n

end A041020

/-!
# A041021: Denominators of continued fraction convergents to sqrt(14).

The programs for A041021, the canonical program `A041021.P4839143169326198142` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041021 has offset 0).

The definition of A041021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041021.P4839143169326198142

`2*A295337(n+2)-A295336(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041021

/-- `2*A295337(n+2)-A295336(n+2)` -/
def P4839143169326198142.Spec : Prop :=
  ∀ n, P4839143169326198142.a n = A041021 n

theorem P4839143169326198142.correct : P4839143169326198142.Spec := by
  intro n
  simp only [A041021]

end A041021

/-! ## A041021.P9001009068377539372

`A004277(A041351(n))-A042081(n)`
-/

namespace A041021.P9001009068377539372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041351 n).toNat - A042081 n

end

end A041021.P9001009068377539372

namespace A041021

/-- `A004277(A041351(n))-A042081(n)` -/
def P9001009068377539372.Spec : Prop :=
  ∀ n, P9001009068377539372.a n = A041021 n

end A041021

/-!
# A041022: Numerators of continued fraction convergents to sqrt(15).

The programs for A041022, the canonical program `A041022.P3746905806019384102` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041022 has offset 0).

The definition of A041022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041022.P3746905806019384102

`gcd(3, n%2)*A145543(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041022

/-- `gcd(3, n%2)*A145543(n+1)` -/
def P3746905806019384102.Spec : Prop :=
  ∀ n, P3746905806019384102.a n = A041022 n

theorem P3746905806019384102.correct : P3746905806019384102.Spec := by
  intro n
  simp only [A041022]

end A041022

/-! ## A041022.P17221935292433060909

`A145543(n+1)*A176040(n)`
-/

namespace A041022.P17221935292433060909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145543 (n + 1) * A176040 n

end

end A041022.P17221935292433060909

namespace A041022

/-- `A145543(n+1)*A176040(n)` -/
def P17221935292433060909.Spec : Prop :=
  ∀ n, P17221935292433060909.a n = A041022 n

end A041022

/-! ## A041022.P11672700286047340804

`(A033999(n)+2)*A145543(n+1)`
-/

namespace A041022.P11672700286047340804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) * A145543 (n + 1)

end

end A041022.P11672700286047340804

namespace A041022

/-- `(A033999(n)+2)*A145543(n+1)` -/
def P11672700286047340804.Spec : Prop :=
  ∀ n, P11672700286047340804.a n = A041022 n

end A041022

/-! ## A041022.P14666839445498579589

`A041023(n+2)-4*A041023(n)`
-/

namespace A041022.P14666839445498579589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (n + 2) - 4 * A041023 n

end

end A041022.P14666839445498579589

namespace A041022

/-- `A041023(n+2)-4*A041023(n)` -/
def P14666839445498579589.Spec : Prop :=
  ∀ n, P14666839445498579589.a n = A041022 n

end A041022

/-! ## A041022.P17888034315995289946

`A145543(n+1)/A041023(n+1)*A145542(n+2)`
-/

namespace A041022.P17888034315995289946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145543 (n + 1) : ℚ) / (A041023 (n + 1) : ℚ) * (A145542 (n + 2) : ℚ)

end

end A041022.P17888034315995289946

namespace A041022

/-- `A145543(n+1)/A041023(n+1)*A145542(n+2)` -/
def P17888034315995289946.Spec : Prop :=
  ∀ n, P17888034315995289946.a n = (A041022 n : ℚ)

end A041022

/-! ## A041022.P6053947429222712484

`∪[A001091(n+1), Δ[A001091(n)]]`
-/

namespace A041022.P6053947429222712484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041022.P6053947429222712484

namespace A041022

/-- `∪[A001091(n+1), Δ[A001091(n)]]` -/
def P6053947429222712484.Spec : Prop :=
  ∀ n, (P6053947429222712484.a n : ℤ) = A041022 n

end A041022

/-!
# A041023: Denominators of continued fraction convergents to sqrt(15).

The programs for A041023, the canonical program `A041023.P7842398452088913562` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041023 has offset 0).

The definition of A041023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041023.P7842398452088913562

`8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=8`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041023

/-- `8*a(n-2)-a(n-4)` -/
def P7842398452088913562.Spec : Prop :=
  ∀ n, P7842398452088913562.a n = A041023 n

theorem P7842398452088913562.correct : P7842398452088913562.Spec := by
  intro n
  simp only [A041023]

end A041023

/-! ## A041023.P9944084403800165959

`A145542(n+1)/A010684(n)`
-/

namespace A041023.P9944084403800165959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145542 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A041023.P9944084403800165959

namespace A041023

/-- `A145542(n+1)/A010684(n)` -/
def P9944084403800165959.Spec : Prop :=
  ∀ n, P9944084403800165959.a n = (A041023 n : ℚ)

end A041023

/-! ## A041023.P783960837476352438

`abs(a(n-1)-(A077248(n)-A199336(n+1)))` with `a(0)=1`
-/

namespace A041023.P783960837476352438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - (A077248 n - A199336 (n + 1))|

end

end A041023.P783960837476352438

namespace A041023

/-- `abs(a(n-1)-(A077248(n)-A199336(n+1)))` -/
def P783960837476352438.Spec : Prop :=
  ∀ n, P783960837476352438.a n = A041023 n

end A041023

/-! ## A041023.P8969558519736293658

`∑[A237262(n+1)%A070997(A028242(n))]`
-/

namespace A041023.P8969558519736293658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237262 (n + 1)) (A070997 (A028242 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041023.P8969558519736293658

namespace A041023

/-- `∑[A237262(n+1)%A070997(A028242(n))]` -/
def P8969558519736293658.Spec : Prop :=
  ∀ n, P8969558519736293658.a n = A041023 n

end A041023

/-! ## A041023.P4015276963303384288

`A057089(n)/6^ceil(n/2)`
-/

namespace A041023.P4015276963303384288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057089 n : ℚ) / (6 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A041023.P4015276963303384288

namespace A041023

/-- `A057089(n)/6^ceil(n/2)` -/
def P4015276963303384288.Spec : Prop :=
  ∀ n, P4015276963303384288.a n = (A041023 n : ℚ)

end A041023

/-! ## A041023.P444528891643169269

`ceil(A057089(n)/A056452(n))`
-/

namespace A041023.P444528891643169269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057089 n : ℚ) / (A056452 n : ℚ)⌉

end

end A041023.P444528891643169269

namespace A041023

/-- `ceil(A057089(n)/A056452(n))` -/
def P444528891643169269.Spec : Prop :=
  ∀ n, P444528891643169269.a n = A041023 n

end A041023

/-! ## A041023.P5841298536432881791

`ceil(A221461(n+2)/6)/A056452(n)`
-/

namespace A041023.P5841298536432881791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A221461 (n + 2) : ℚ) / 6⌉ : ℚ) / (A056452 n : ℚ)

end

end A041023.P5841298536432881791

namespace A041023

/-- `ceil(A221461(n+2)/6)/A056452(n)` -/
def P5841298536432881791.Spec : Prop :=
  ∀ n, P5841298536432881791.a n = (A041023 n : ℚ)

end A041023

/-! ## A041023.P4196789818268858155

`gcd(∑[A098306(n)], A098306(n+1))`
-/

namespace A041023.P4196789818268858155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A098306 (n + 1))

end

end A041023.P4196789818268858155

namespace A041023

/-- `gcd(∑[A098306(n)], A098306(n+1))` -/
def P4196789818268858155.Spec : Prop :=
  ∀ n, (P4196789818268858155.a n : ℤ) = A041023 n

end A041023

/-!
# A041024: Numerators of continued fraction convergents to sqrt(17).

The programs for A041024, the canonical program `A041024.P8495876778643117956` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041024 has offset 0).

The definition of A041024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041024.P8495876778643117956

`8*a(n-1)+a(n-2)` with `a(0)=4, a(1)=33`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041024

/-- `8*a(n-1)+a(n-2)` -/
def P8495876778643117956.Spec : Prop :=
  ∀ n, (P8495876778643117956.a n : ℤ) = A041024 n

theorem P8495876778643117956.correct : P8495876778643117956.Spec := by
  intro n
  simp only [A041024]

end A041024

/-! ## A041024.P14365420348243101223

`ogf((4+x)/(1-8x-x^2))`
-/

namespace A041024.P14365420348243101223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -8, -1] n

end

end A041024.P14365420348243101223

namespace A041024

/-- `ogf((4+x)/(1-8x-x^2))` -/
def P14365420348243101223.Spec : Prop :=
  ∀ n, P14365420348243101223.a n = A041024 n

end A041024

/-! ## A041024.P11782993563452487855

`A088317(n+1)`
-/

namespace A041024.P11782993563452487855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088317 (n + 1)

end

end A041024.P11782993563452487855

namespace A041024

/-- `A088317(n+1)` -/
def P11782993563452487855.Spec : Prop :=
  ∀ n, P11782993563452487855.a n = A041024 n

end A041024

/-! ## A041024.P5297590683145304201

`record[A088317(abs(1-n))]`
-/

namespace A041024.P5297590683145304201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088317 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041024.P5297590683145304201

namespace A041024

/-- `record[A088317(abs(1-n))]` -/
def P5297590683145304201.Spec : Prop :=
  ∀ n, P5297590683145304201.a n = A041024 n

end A041024

/-! ## A041024.P2619853534652764197

`A041118(n)/Δ[A007494(n)]`
-/

namespace A041024.P2619853534652764197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041118 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041024.P2619853534652764197

namespace A041024

/-- `A041118(n)/Δ[A007494(n)]` -/
def P2619853534652764197.Spec : Prop :=
  ∀ n, P2619853534652764197.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P17828930449006899921

`A041118(n)/A000034(n+1)`
-/

namespace A041024.P17828930449006899921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041118 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041024.P17828930449006899921

namespace A041024

/-- `A041118(n)/A000034(n+1)` -/
def P17828930449006899921.Spec : Prop :=
  ∀ n, P17828930449006899921.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P915348677491050216

`A041118(n)/A040001(n+2)`
-/

namespace A041024.P915348677491050216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041118 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041024.P915348677491050216

namespace A041024

/-- `A041118(n)/A040001(n+2)` -/
def P915348677491050216.Spec : Prop :=
  ∀ n, P915348677491050216.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P11271115015813177864

`A000034(n)/2*A041118(n)`
-/

namespace A041024.P11271115015813177864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041118 n : ℚ)

end

end A041024.P11271115015813177864

namespace A041024

/-- `A000034(n)/2*A041118(n)` -/
def P11271115015813177864.Spec : Prop :=
  ∀ n, P11271115015813177864.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P12083737492931410755

`A041510(n)/A000034(n+1)²`
-/

namespace A041024.P12083737492931410755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041510 n : ℚ) / (A000034 (n + 1) ^ 2 : ℚ)

end

end A041024.P12083737492931410755

namespace A041024

/-- `A041510(n)/A000034(n+1)²` -/
def P12083737492931410755.Spec : Prop :=
  ∀ n, P12083737492931410755.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P9371367279192502778

`(A000034(n)/2)²*A041510(n)`
-/

namespace A041024.P9371367279192502778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000034 n : ℚ) / 2) ^ 2 * (A041510 n : ℚ)

end

end A041024.P9371367279192502778

namespace A041024

/-- `(A000034(n)/2)²*A041510(n)` -/
def P9371367279192502778.Spec : Prop :=
  ∀ n, P9371367279192502778.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P12271500040979097782

`A086594(n+1)/2`
-/

namespace A041024.P12271500040979097782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086594 (n + 1) : ℚ) / 2

end

end A041024.P12271500040979097782

namespace A041024

/-- `A086594(n+1)/2` -/
def P12271500040979097782.Spec : Prop :=
  ∀ n, P12271500040979097782.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P8748263166588654218

`Δ[∑[A086594(n)]/2]`
-/

namespace A041024.P8748263166588654218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086594 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041024.P8748263166588654218

namespace A041024

/-- `Δ[∑[A086594(n)]/2]` -/
def P8748263166588654218.Spec : Prop :=
  ∀ n, P8748263166588654218.a n = (A041024 n : ℚ)

end A041024

/-! ## A041024.P15899855422261376590

`A041025(n+1)-4*A041025(n)`
-/

namespace A041024.P15899855422261376590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 (n + 1) - 4 * A041025 n

end

end A041024.P15899855422261376590

namespace A041024

/-- `A041025(n+1)-4*A041025(n)` -/
def P15899855422261376590.Spec : Prop :=
  ∀ n, P15899855422261376590.a n = A041024 n

end A041024

/-!
# A041025: Denominators of continued fraction convergents to sqrt(17).

The programs for A041025, the canonical program `A041025.P14007617877981341001` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041025 has offset 0).

The definition of A041025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041025.P14007617877981341001

`8*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041025

/-- `8*a(n-1)+a(n-2)` -/
def P14007617877981341001.Spec : Prop :=
  ∀ n, (P14007617877981341001.a n : ℤ) = A041025 n

theorem P14007617877981341001.correct : P14007617877981341001.Spec := by
  intro n
  simp only [A041025]

end A041025

/-! ## A041025.P13269976738545727259

`ogf(1/(1-8x-x^2))`
-/

namespace A041025.P13269976738545727259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, -1] n

end

end A041025.P13269976738545727259

namespace A041025

/-- `ogf(1/(1-8x-x^2))` -/
def P13269976738545727259.Spec : Prop :=
  ∀ n, P13269976738545727259.a n = A041025 n

end A041025

/-! ## A041025.P11425436574276709617

`3*3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A041025.P11425436574276709617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  3 * (3 * a (n - 1)) - (a (n - 1) - a (n - 2))

end

end A041025.P11425436574276709617

namespace A041025

/-- `3*3*a(n-1)-(a(n-1)-a(n-2))` -/
def P11425436574276709617.Spec : Prop :=
  ∀ n, P11425436574276709617.a n = A041025 n

end A041025

/-! ## A041025.P6905908677272606010

`A155197(n+1)/7`
-/

namespace A041025.P6905908677272606010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155197 (n + 1) : ℚ) / 7

end

end A041025.P6905908677272606010

namespace A041025

/-- `A155197(n+1)/7` -/
def P6905908677272606010.Spec : Prop :=
  ∀ n, P6905908677272606010.a n = (A041025 n : ℚ)

end A041025

/-! ## A041025.P16318504446061879349

`4^(n%2)*A041511(n)`
-/

namespace A041025.P16318504446061879349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n % 2) : ℤ) * A041511 n

end

end A041025.P16318504446061879349

namespace A041025

/-- `4^(n%2)*A041511(n)` -/
def P16318504446061879349.Spec : Prop :=
  ∀ n, P16318504446061879349.a n = A041025 n

end A041025

/-! ## A041025.P11082657867843865087

`A015454(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A041025.P11082657867843865087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015454 (n + 1) - a (n - 1)

end

end A041025.P11082657867843865087

namespace A041025

/-- `A015454(n+1)-a(n-1)` -/
def P11082657867843865087.Spec : Prop :=
  ∀ n, P11082657867843865087.a n = A041025 n

end A041025

/-! ## A041025.P16922710761862694697

`A088317(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A041025.P16922710761862694697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088317 n + 4 * a (n - 1)

end

end A041025.P16922710761862694697

namespace A041025

/-- `A088317(n)+4*a(n-1)` -/
def P16922710761862694697.Spec : Prop :=
  ∀ n, P16922710761862694697.a n = A041025 n

end A041025

/-! ## A041025.P186314931150641776

`A000034(n)*A041119(n)`
-/

namespace A041025.P186314931150641776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041119 n

end

end A041025.P186314931150641776

namespace A041025

/-- `A000034(n)*A041119(n)` -/
def P186314931150641776.Spec : Prop :=
  ∀ n, P186314931150641776.a n = A041025 n

end A041025

/-! ## A041025.P10268915621117783112

`A000034(n)²*A041511(n)`
-/

namespace A041025.P10268915621117783112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A041511 n

end

end A041025.P10268915621117783112

namespace A041025

/-- `A000034(n)²*A041511(n)` -/
def P10268915621117783112.Spec : Prop :=
  ∀ n, P10268915621117783112.a n = A041025 n

end A041025

/-! ## A041025.P4197963744700048886

`A000010(Δ[A042948(n)])*A041119(n)`
-/

namespace A041025.P4197963744700048886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A041119 n

end

end A041025.P4197963744700048886

namespace A041025

/-- `A000010(Δ[A042948(n)])*A041119(n)` -/
def P4197963744700048886.Spec : Prop :=
  ∀ n, P4197963744700048886.a n = A041025 n

end A041025

/-! ## A041025.P2760488056831534237

`A039730(Δ[A042948(n)])*A041119(n)`
-/

namespace A041025.P2760488056831534237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039730 (f1 (n + 1) - f1 n).toNat * A041119 n

end

end A041025.P2760488056831534237

namespace A041025

/-- `A039730(Δ[A042948(n)])*A041119(n)` -/
def P2760488056831534237.Spec : Prop :=
  ∀ n, P2760488056831534237.a n = A041025 n

end A041025

/-! ## A041025.P17163986430490801649

`A041119(n)*A114095(Δ[A042948(n)])`
-/

namespace A041025.P17163986430490801649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041119 n * A114095 (f1 (n + 1) - f1 n).toNat

end

end A041025.P17163986430490801649

namespace A041025

/-- `A041119(n)*A114095(Δ[A042948(n)])` -/
def P17163986430490801649.Spec : Prop :=
  ∀ n, P17163986430490801649.a n = A041025 n

end A041025

/-!
# A041026: Numerators of continued fraction convergents to sqrt(18).

The programs for A041026, the canonical program `A041026.P2213078579449708458` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041026 has offset 0).

The definition of A041026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041026.P12943501406672398121

`A041126(n)/gcd(2, n)`
-/

namespace A041026.P12943501406672398121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041126 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041026.P12943501406672398121

namespace A041026

/-- `A041126(n)/gcd(2, n)` -/
def P12943501406672398121.Spec : Prop :=
  ∀ n, P12943501406672398121.a n = (A041026 n : ℚ)

end A041026

/-! ## A041026.P2213078579449708458

`A143607(A047398(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041026

/-- `A143607(A047398(n+1))` -/
def P2213078579449708458.Spec : Prop :=
  ∀ n, P2213078579449708458.a n = A041026 n

theorem P2213078579449708458.correct : P2213078579449708458.Spec := by
  intro n
  simp only [A041026]

end A041026

/-! ## A041026.P1467145349217799614

`A331115(A047270(n+1))`
-/

namespace A041026.P1467145349217799614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331115 (A047270 (n + 1)).toNat

end

end A041026.P1467145349217799614

namespace A041026

/-- `A331115(A047270(n+1))` -/
def P1467145349217799614.Spec : Prop :=
  ∀ n, P1467145349217799614.a n = A041026 n

end A041026

/-! ## A041026.P1940824130322380790

`A082766(A047615(n+2))`
-/

namespace A041026.P1940824130322380790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A047615 (n + 2)).toNat

end

end A041026.P1940824130322380790

namespace A041026

/-- `A082766(A047615(n+2))` -/
def P1940824130322380790.Spec : Prop :=
  ∀ n, P1940824130322380790.a n = A041026 n

end A041026

/-! ## A041026.P17299110607408044086

`A331115(or(1, A016789(n)))`
-/

namespace A041026.P17299110607408044086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331115 (Int.lor 1 (A016789 n)).toNat

end

end A041026.P17299110607408044086

namespace A041026

/-- `A331115(or(1, A016789(n)))` -/
def P17299110607408044086.Spec : Prop :=
  ∀ n, P17299110607408044086.a n = A041026 n

end A041026

/-! ## A041026.P4257079638903273973

`A041126(n)/Δ[A007494(n)]`
-/

namespace A041026.P4257079638903273973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041126 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041026.P4257079638903273973

namespace A041026

/-- `A041126(n)/Δ[A007494(n)]` -/
def P4257079638903273973.Spec : Prop :=
  ∀ n, P4257079638903273973.a n = (A041026 n : ℚ)

end A041026

/-! ## A041026.P14129987671811872610

`A331115(A047235(n+1)+1)`
-/

namespace A041026.P14129987671811872610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331115 (A047235 (n + 1) + 1).toNat

end

end A041026.P14129987671811872610

namespace A041026

/-- `A331115(A047235(n+1)+1)` -/
def P14129987671811872610.Spec : Prop :=
  ∀ n, P14129987671811872610.a n = A041026 n

end A041026

/-! ## A041026.P3381307849982491903

`A082766(A007310(n+2)+n)`
-/

namespace A041026.P3381307849982491903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A007310 (n + 2) + (n : ℤ)).toNat

end

end A041026.P3381307849982491903

namespace A041026

/-- `A082766(A007310(n+2)+n)` -/
def P3381307849982491903.Spec : Prop :=
  ∀ n, P3381307849982491903.a n = A041026 n

end A041026

/-! ## A041026.P7546120936948928126

`A041126(n)/A000034(n+1)`
-/

namespace A041026.P7546120936948928126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041126 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041026.P7546120936948928126

namespace A041026

/-- `A041126(n)/A000034(n+1)` -/
def P7546120936948928126.Spec : Prop :=
  ∀ n, P7546120936948928126.a n = (A041026 n : ℚ)

end A041026

/-! ## A041026.P12867023395547944706

`A000034(n)/2*A041126(n)`
-/

namespace A041026.P12867023395547944706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041126 n : ℚ)

end

end A041026.P12867023395547944706

namespace A041026

/-- `A000034(n)/2*A041126(n)` -/
def P12867023395547944706.Spec : Prop :=
  ∀ n, P12867023395547944706.a n = (A041026 n : ℚ)

end A041026

/-! ## A041026.P14512344112947455624

`A041542(n)/A000034(n+1)²`
-/

namespace A041026.P14512344112947455624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041542 n : ℚ) / (A000034 (n + 1) ^ 2 : ℚ)

end

end A041026.P14512344112947455624

namespace A041026

/-- `A041542(n)/A000034(n+1)²` -/
def P14512344112947455624.Spec : Prop :=
  ∀ n, P14512344112947455624.a n = (A041026 n : ℚ)

end A041026

/-! ## A041026.P5966479071991906292

`(A000034(n)/2)²*A041542(n)`
-/

namespace A041026.P5966479071991906292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000034 n : ℚ) / 2) ^ 2 * (A041542 n : ℚ)

end

end A041026.P5966479071991906292

namespace A041026

/-- `(A000034(n)/2)²*A041542(n)` -/
def P5966479071991906292.Spec : Prop :=
  ∀ n, P5966479071991906292.a n = (A041026 n : ℚ)

end A041026

/-! ## A041026.P16431992474496604997

`A143607(A059841(n)+A016825(n))`
-/

namespace A041026.P16431992474496604997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (A059841 n + A016825 n).toNat

end

end A041026.P16431992474496604997

namespace A041026

/-- `A143607(A059841(n)+A016825(n))` -/
def P16431992474496604997.Spec : Prop :=
  ∀ n, P16431992474496604997.a n = A041026 n

end A041026

/-! ## A041026.P5782897143027626843

`A331115(A059841(n)+A016789(n))`
-/

namespace A041026.P5782897143027626843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331115 (A059841 n + A016789 n).toNat

end

end A041026.P5782897143027626843

namespace A041026

/-- `A331115(A059841(n)+A016789(n))` -/
def P5782897143027626843.Spec : Prop :=
  ∀ n, P5782897143027626843.a n = A041026 n

end A041026

/-! ## A041026.P1088670448111005424

`A143607(A004767(n)-A000035(n))`
-/

namespace A041026.P1088670448111005424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (A004767 n - A000035 n).toNat

end

end A041026.P1088670448111005424

namespace A041026

/-- `A143607(A004767(n)-A000035(n))` -/
def P1088670448111005424.Spec : Prop :=
  ∀ n, P1088670448111005424.a n = A041026 n

end A041026

/-! ## A041026.P10234713193361829449

`A143607(or(A016825(n), A059841(n)))`
-/

namespace A041026.P10234713193361829449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (Int.lor (A016825 n) (A059841 n)).toNat

end

end A041026.P10234713193361829449

namespace A041026

/-- `A143607(or(A016825(n), A059841(n)))` -/
def P10234713193361829449.Spec : Prop :=
  ∀ n, P10234713193361829449.a n = A041026 n

end A041026

/-! ## A041026.P12687921936537985596

`A143607(xor(A000035(n), A004767(n)))`
-/

namespace A041026.P12687921936537985596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (Int.xor (A000035 n) (A004767 n)).toNat

end

end A041026.P12687921936537985596

namespace A041026

/-- `A143607(xor(A000035(n), A004767(n)))` -/
def P12687921936537985596.Spec : Prop :=
  ∀ n, P12687921936537985596.a n = A041026 n

end A041026

/-! ## A041026.P1337971325982085467

`A119016(A047550(n+1)+A000035(n))`
-/

namespace A041026.P1337971325982085467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A047550 (n + 1) + A000035 n).toNat

end

end A041026.P1337971325982085467

namespace A041026

/-- `A119016(A047550(n+1)+A000035(n))` -/
def P1337971325982085467.Spec : Prop :=
  ∀ n, P1337971325982085467.a n = A041026 n

end A041026

/-! ## A041026.P16367431436294830804

`A000034(n+1)*A126354(A338062(n+2))`
-/

namespace A041026.P16367431436294830804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A126354 (A338062 (n + 2)).toNat

end

end A041026.P16367431436294830804

namespace A041026

/-- `A000034(n+1)*A126354(A338062(n+2))` -/
def P16367431436294830804.Spec : Prop :=
  ∀ n, P16367431436294830804.a n = A041026 n

end A041026

/-! ## A041026.P5919677280741792665

`A075870(n+1)+A000034(n+1)*A002315(n)`
-/

namespace A041026.P5919677280741792665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075870 (n + 1) + A000034 (n + 1) * A002315 n

end

end A041026.P5919677280741792665

namespace A041026

/-- `A075870(n+1)+A000034(n+1)*A002315(n)` -/
def P5919677280741792665.Spec : Prop :=
  ∀ n, P5919677280741792665.a n = A041026 n

end A041026

/-!
# A041027: Denominators of continued fraction convergents to sqrt(18).

The programs for A041027, the canonical program `A041027.P10585639747971698650` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041027 has offset 0).

The definition of A041027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041027.P10585639747971698650

`a(n-2)+4*gcd(2, n)*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041027

/-- `a(n-2)+4*gcd(2, n)*a(n-1)` -/
def P10585639747971698650.Spec : Prop :=
  ∀ n, (P10585639747971698650.a n : ℤ) = A041027 n

theorem P10585639747971698650.correct : P10585639747971698650.Spec := by
  intro n
  simp only [A041027]

end A041027

/-! ## A041027.P13513660553912915524

`(n%2+1)*A041127(n)`
-/

namespace A041027.P13513660553912915524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A041127 n

end

end A041027.P13513660553912915524

namespace A041027

/-- `(n%2+1)*A041127(n)` -/
def P13513660553912915524.Spec : Prop :=
  ∀ n, P13513660553912915524.a n = A041027 n

end A041027

/-! ## A041027.P17858082237049590553

`A000034(n)*A041127(n)`
-/

namespace A041027.P17858082237049590553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041127 n

end

end A041027.P17858082237049590553

namespace A041027

/-- `A000034(n)*A041127(n)` -/
def P17858082237049590553.Spec : Prop :=
  ∀ n, P17858082237049590553.a n = A041027 n

end A041027

/-! ## A041027.P6644079042678198264

`A000034(n)²*A041543(n)`
-/

namespace A041027.P6644079042678198264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A041543 n

end

end A041027.P6644079042678198264

namespace A041027

/-- `A000034(n)²*A041543(n)` -/
def P6644079042678198264.Spec : Prop :=
  ∀ n, P6644079042678198264.a n = A041027 n

end A041027

/-! ## A041027.P16058968931323443286

`Δ[A032766(n)]*A041127(n)`
-/

namespace A041027.P16058968931323443286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041127 n

end

end A041027.P16058968931323443286

namespace A041027

/-- `Δ[A032766(n)]*A041127(n)` -/
def P16058968931323443286.Spec : Prop :=
  ∀ n, P16058968931323443286.a n = A041027 n

end A041027

/-! ## A041027.P15643730267441649903

`ratio[A016116(n)]*A041127(n)`
-/

namespace A041027.P15643730267441649903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041127 n : ℚ)

end

end A041027.P15643730267441649903

namespace A041027

/-- `ratio[A016116(n)]*A041127(n)` -/
def P15643730267441649903.Spec : Prop :=
  ∀ n, P15643730267441649903.a n = (A041027 n : ℚ)

end A041027

/-! ## A041027.P15169352426900094651

`A040001(n+1)*A041127(n)`
-/

namespace A041027.P15169352426900094651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041127 n

end

end A041027.P15169352426900094651

namespace A041027

/-- `A040001(n+1)*A041127(n)` -/
def P15169352426900094651.Spec : Prop :=
  ∀ n, P15169352426900094651.a n = A041027 n

end A041027

/-! ## A041027.P17276229995339362433

`(A000035(n)+1)²*A041543(n)`
-/

namespace A041027.P17276229995339362433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) ^ 2 * A041543 n

end

end A041027.P17276229995339362433

namespace A041027

/-- `(A000035(n)+1)²*A041543(n)` -/
def P17276229995339362433.Spec : Prop :=
  ∀ n, P17276229995339362433.a n = A041027 n

end A041027

/-! ## A041027.P6751863476161029339

`A134451(n+1)²*A041543(n)`
-/

namespace A041027.P6751863476161029339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) ^ 2 * A041543 n

end

end A041027.P6751863476161029339

namespace A041027

/-- `A134451(n+1)²*A041543(n)` -/
def P6751863476161029339.Spec : Prop :=
  ∀ n, P6751863476161029339.a n = A041027 n

end A041027

/-! ## A041027.P17577469169653548288

`A041127(n)/A041543(n)*A041127(n)`
-/

namespace A041027.P17577469169653548288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041127 n : ℚ) / (A041543 n : ℚ) * (A041127 n : ℚ)

end

end A041027.P17577469169653548288

namespace A041027

/-- `A041127(n)/A041543(n)*A041127(n)` -/
def P17577469169653548288.Spec : Prop :=
  ∀ n, P17577469169653548288.a n = (A041027 n : ℚ)

end A041027

/-! ## A041027.P4309941105453427700

`A000079(Δ[A004526(n)])²*A041543(n)`
-/

namespace A041027.P4309941105453427700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat ^ 2 * A041543 n

end

end A041027.P4309941105453427700

namespace A041027

/-- `A000079(Δ[A004526(n)])²*A041543(n)` -/
def P4309941105453427700.Spec : Prop :=
  ∀ n, P4309941105453427700.a n = A041027 n

end A041027

/-! ## A041027.P17227824616582733505

`A014963(A006519(n+1))²*A041543(n)`
-/

namespace A041027.P17227824616582733505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat ^ 2 * A041543 n

end

end A041027.P17227824616582733505

namespace A041027

/-- `A014963(A006519(n+1))²*A041543(n)` -/
def P17227824616582733505.Spec : Prop :=
  ∀ n, P17227824616582733505.a n = A041027 n

end A041027

/-! ## A041027.P11080433961212631335

`A040001(n+1)*A040001(n+1)*A041543(n)`
-/

namespace A041027.P11080433961212631335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A040001 (n + 1) * A041543 n

end

end A041027.P11080433961212631335

namespace A041027

/-- `A040001(n+1)*A040001(n+1)*A041543(n)` -/
def P11080433961212631335.Spec : Prop :=
  ∀ n, P11080433961212631335.a n = A041027 n

end A041027

/-! ## A041027.P3433240900215187547

`A006519(n²+3)*A041543(n)`
-/

namespace A041027.P3433240900215187547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 3) * A041543 n

end

end A041027.P3433240900215187547

namespace A041027

/-- `A006519(n²+3)*A041543(n)` -/
def P3433240900215187547.Spec : Prop :=
  ∀ n, P3433240900215187547.a n = A041027 n

end A041027

/-!
# A041028: Numerators of continued fraction convergents to sqrt(19).

The programs for A041028, there is no canonical definition to state claims against.
-/

/-! ## A041028.P837039952472693071

`A028899(A041192(n))`
-/

namespace A041028.P837039952472693071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A041192 n).toNat

end

end A041028.P837039952472693071

/-!
# A041029: Denominators of continued fraction convergents to sqrt(19).

The programs for A041029, there is no canonical definition to state claims against.
-/

/-! ## A041029.P16950356391566445578

`round(A041028(n)/sqrt(19))`
-/

namespace A041029.P16950356391566445578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041028 n : ℝ) / Real.sqrt (19 : ℝ))

end

end A041029.P16950356391566445578

/-!
# A041030: Numerators of continued fraction convergents to sqrt(20).

The programs for A041030, the canonical program `A041030.P10176548047865930669` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041030 has offset 0).

The definition of A041030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041030.P10176548047865930669

`a(n-2)+lcm(8, a(n-1))` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041030

/-- `a(n-2)+lcm(8, a(n-1))` -/
def P10176548047865930669.Spec : Prop :=
  ∀ n, (P10176548047865930669.a n : ℤ) = A041030 n

theorem P10176548047865930669.correct : P10176548047865930669.Spec := by
  intro n
  simp only [A041030]

end A041030

/-! ## A041030.P10719945547340414527

`lcm(2, A041142(n))/2`
-/

namespace A041030.P10719945547340414527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041142 n) : ℚ) / 2

end

end A041030.P10719945547340414527

namespace A041030

/-- `lcm(2, A041142(n))/2` -/
def P10719945547340414527.Spec : Prop :=
  ∀ n, P10719945547340414527.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P1401242576220432419

`gcd(2, n)*A001077(n+1)`
-/

namespace A041030.P1401242576220432419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A001077 (n + 1)

end

end A041030.P1401242576220432419

namespace A041030

/-- `gcd(2, n)*A001077(n+1)` -/
def P1401242576220432419.Spec : Prop :=
  ∀ n, P1401242576220432419.a n = A041030 n

end A041030

/-! ## A041030.P16798598533670582110

`A000032(2*n+n+3)/(and(1, n)+1)`
-/

namespace A041030.P16798598533670582110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + (n + 3)) : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A041030.P16798598533670582110

namespace A041030

/-- `A000032(2*n+n+3)/(and(1, n)+1)` -/
def P16798598533670582110.Spec : Prop :=
  ∀ n, P16798598533670582110.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P15158945295056331558

`abs(A041142(n)/A228826(n))`
-/

namespace A041030.P15158945295056331558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A041142 n : ℚ) / (A228826 n : ℚ)|

end

end A041030.P15158945295056331558

namespace A041030

/-- `abs(A041142(n)/A228826(n))` -/
def P15158945295056331558.Spec : Prop :=
  ∀ n, P15158945295056331558.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P10048388013388570253

`A014448(n+1)/A000034(n)`
-/

namespace A041030.P10048388013388570253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014448 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041030.P10048388013388570253

namespace A041030

/-- `A014448(n+1)/A000034(n)` -/
def P10048388013388570253.Spec : Prop :=
  ∀ n, P10048388013388570253.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P14604425032036134804

`A041142(n)/A000034(n+1)`
-/

namespace A041030.P14604425032036134804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041142 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041030.P14604425032036134804

namespace A041030

/-- `A041142(n)/A000034(n+1)` -/
def P14604425032036134804.Spec : Prop :=
  ∀ n, P14604425032036134804.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P4849649986863838578

`A041142(n)/A040001(n+2)`
-/

namespace A041030.P4849649986863838578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041142 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041030.P4849649986863838578

namespace A041030

/-- `A041142(n)/A040001(n+2)` -/
def P4849649986863838578.Spec : Prop :=
  ∀ n, P4849649986863838578.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P11773327485484444805

`A000034(n)/2*A041142(n)`
-/

namespace A041030.P11773327485484444805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041142 n : ℚ)

end

end A041030.P11773327485484444805

namespace A041030

/-- `A000034(n)/2*A041142(n)` -/
def P11773327485484444805.Spec : Prop :=
  ∀ n, P11773327485484444805.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P339770650128527318

`abs(A001077(n+1)*A228826(n))`
-/

namespace A041030.P339770650128527318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001077 (n + 1) * A228826 n|

end

end A041030.P339770650128527318

namespace A041030

/-- `abs(A001077(n+1)*A228826(n))` -/
def P339770650128527318.Spec : Prop :=
  ∀ n, P339770650128527318.a n = A041030 n

end A041030

/-! ## A041030.P13020357345836261439

`A000034(n+1)*A001077(n+1)`
-/

namespace A041030.P13020357345836261439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A001077 (n + 1)

end

end A041030.P13020357345836261439

namespace A041030

/-- `A000034(n+1)*A001077(n+1)` -/
def P13020357345836261439.Spec : Prop :=
  ∀ n, P13020357345836261439.a n = A041030 n

end A041030

/-! ## A041030.P14880027170241304545

`(A059841(n)+1)*A001077(n+1)`
-/

namespace A041030.P14880027170241304545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A001077 (n + 1)

end

end A041030.P14880027170241304545

namespace A041030

/-- `(A059841(n)+1)*A001077(n+1)` -/
def P14880027170241304545.Spec : Prop :=
  ∀ n, P14880027170241304545.a n = A041030 n

end A041030

/-! ## A041030.P11305975982684073463

`A001077(n+1)*A134451(n+2)`
-/

namespace A041030.P11305975982684073463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) * A134451 (n + 2)

end

end A041030.P11305975982684073463

namespace A041030

/-- `A001077(n+1)*A134451(n+2)` -/
def P11305975982684073463.Spec : Prop :=
  ∀ n, P11305975982684073463.a n = A041030 n

end A041030

/-! ## A041030.P10568354321179147302

`A014448(n+1)/A134451(n+1)`
-/

namespace A041030.P10568354321179147302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014448 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041030.P10568354321179147302

namespace A041030

/-- `A014448(n+1)/A134451(n+1)` -/
def P10568354321179147302.Spec : Prop :=
  ∀ n, P10568354321179147302.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P7782953339104359601

`A000032(3*(n+1))/A000034(n)`
-/

namespace A041030.P7782953339104359601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1)) : ℚ) / (A000034 n : ℚ)

end

end A041030.P7782953339104359601

namespace A041030

/-- `A000032(3*(n+1))/A000034(n)` -/
def P7782953339104359601.Spec : Prop :=
  ∀ n, P7782953339104359601.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P8813466813986422853

`A000032(3*(n+1))/A040001(n+1)`
-/

namespace A041030.P8813466813986422853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1)) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041030.P8813466813986422853

namespace A041030

/-- `A000032(3*(n+1))/A040001(n+1)` -/
def P8813466813986422853.Spec : Prop :=
  ∀ n, P8813466813986422853.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P3272419893306733147

`A000032(3*(n+1))/A176895(2*n)`
-/

namespace A041030.P3272419893306733147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1)) : ℚ) / (A176895 (2 * n) : ℚ)

end

end A041030.P3272419893306733147

namespace A041030

/-- `A000032(3*(n+1))/A176895(2*n)` -/
def P3272419893306733147.Spec : Prop :=
  ∀ n, P3272419893306733147.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P15324732246992848571

`A000032(3*(n+1))/Δ[A001651(n+1)]`
-/

namespace A041030.P15324732246992848571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1)) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041030.P15324732246992848571

namespace A041030

/-- `A000032(3*(n+1))/Δ[A001651(n+1)]` -/
def P15324732246992848571.Spec : Prop :=
  ∀ n, P15324732246992848571.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P11208407407958619896

`A001077(n+1)/A001333(n+1)*A041010(n)`
-/

namespace A041030.P11208407407958619896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) / (A001333 (n + 1) : ℚ) * (A041010 n : ℚ)

end

end A041030.P11208407407958619896

namespace A041030

/-- `A001077(n+1)/A001333(n+1)*A041010(n)` -/
def P11208407407958619896.Spec : Prop :=
  ∀ n, P11208407407958619896.a n = (A041030 n : ℚ)

end A041030

/-! ## A041030.P15377142984020326925

`A000032(3*(n+1))/A001511(A006519(n+2)+1)`
-/

namespace A041030.P15377142984020326925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1)) : ℚ) / (A001511 (A006519 (n + 2) + 1).toNat : ℚ)

end

end A041030.P15377142984020326925

namespace A041030

/-- `A000032(3*(n+1))/A001511(A006519(n+2)+1)` -/
def P15377142984020326925.Spec : Prop :=
  ∀ n, P15377142984020326925.a n = (A041030 n : ℚ)

end A041030

/-!
# A041031: Denominators of continued fraction convergents to sqrt(20).

The programs for A041031, the canonical program `A041031.P13616757305061398685` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041031 has offset 0).

The definition of A041031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041031.P17437775663100850624

`lcm(2, A001076(n+1))/2`
-/

namespace A041031.P17437775663100850624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001076 (n + 1)) : ℚ) / 2

end

end A041031.P17437775663100850624

namespace A041031

/-- `lcm(2, A001076(n+1))/2` -/
def P17437775663100850624.Spec : Prop :=
  ∀ n, P17437775663100850624.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P11682959344099752593

`lcm(4, A000045(3*(n+1)))/4`
-/

namespace A041031.P11682959344099752593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A000045 (3 * (n + 1))) : ℚ) / 4

end

end A041031.P11682959344099752593

namespace A041031

/-- `lcm(4, A000045(3*(n+1)))/4` -/
def P11682959344099752593.Spec : Prop :=
  ∀ n, P11682959344099752593.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P11298488967215186786

`∑[A000045(2*n+1+n)]/gcd(2, n+1)`
-/

namespace A041031.P11298488967215186786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A041031.P11298488967215186786

namespace A041031

/-- `∑[A000045(2*n+1+n)]/gcd(2, n+1)` -/
def P11298488967215186786.Spec : Prop :=
  ∀ n, P11298488967215186786.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P13616757305061398685

`A000034(n)*A041143(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041031

/-- `A000034(n)*A041143(n)` -/
def P13616757305061398685.Spec : Prop :=
  ∀ n, P13616757305061398685.a n = A041031 n

theorem P13616757305061398685.correct : P13616757305061398685.Spec := by
  intro n
  simp only [A041031]

end A041031

/-! ## A041031.P3181568361300104450

`A153315(n)/A010685(n)`
-/

namespace A041031.P3181568361300104450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153315 n : ℚ) / (A010685 n : ℚ)

end

end A041031.P3181568361300104450

namespace A041031

/-- `A153315(n)/A010685(n)` -/
def P3181568361300104450.Spec : Prop :=
  ∀ n, P3181568361300104450.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P15168417852506682247

`∑[A033887(n)]/A000034(n)`
-/

namespace A041031.P15168417852506682247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A041031.P15168417852506682247

namespace A041031

/-- `∑[A033887(n)]/A000034(n)` -/
def P15168417852506682247.Spec : Prop :=
  ∀ n, P15168417852506682247.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P8541027915660110367

`Δ[A049652(n)]/A000034(n)`
-/

namespace A041031.P8541027915660110367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 n : ℚ)

end

end A041031.P8541027915660110367

namespace A041031

/-- `Δ[A049652(n)]/A000034(n)` -/
def P8541027915660110367.Spec : Prop :=
  ∀ n, P8541027915660110367.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P2298521539784351748

`A001076(n+1)/A000034(n)`
-/

namespace A041031.P2298521539784351748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041031.P2298521539784351748

namespace A041031

/-- `A001076(n+1)/A000034(n)` -/
def P2298521539784351748.Spec : Prop :=
  ∀ n, P2298521539784351748.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P15863701340936913238

`lcm(A006519(n+1), A041143(n))`
-/

namespace A041031.P15863701340936913238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A041143 n)

end

end A041031.P15863701340936913238

namespace A041031

/-- `lcm(A006519(n+1), A041143(n))` -/
def P15863701340936913238.Spec : Prop :=
  ∀ n, (P15863701340936913238.a n : ℤ) = A041031 n

end A041031

/-! ## A041031.P9371209946500919632

`A153315(n)/Δ[A008851(n+1)]`
-/

namespace A041031.P9371209946500919632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153315 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041031.P9371209946500919632

namespace A041031

/-- `A153315(n)/Δ[A008851(n+1)]` -/
def P9371209946500919632.Spec : Prop :=
  ∀ n, P9371209946500919632.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P3468014385638368122

`record[A275858(n)/gcd(2, A275858(n))]`
-/

namespace A041031.P3468014385638368122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275858 n : ℚ) / (Int.gcd 2 (A275858 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041031.P3468014385638368122

namespace A041031

/-- `record[A275858(n)/gcd(2, A275858(n))]` -/
def P3468014385638368122.Spec : Prop :=
  ∀ n, P3468014385638368122.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P9494144364953403710

`A001076(n+1)/(A000035(n)+1)`
-/

namespace A041031.P9494144364953403710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A041031.P9494144364953403710

namespace A041031

/-- `A001076(n+1)/(A000035(n)+1)` -/
def P9494144364953403710.Spec : Prop :=
  ∀ n, P9494144364953403710.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P4916198377835604776

`A001076(n+1)/A134451(n+1)`
-/

namespace A041031.P4916198377835604776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041031.P4916198377835604776

namespace A041031

/-- `A001076(n+1)/A134451(n+1)` -/
def P4916198377835604776.Spec : Prop :=
  ∀ n, P4916198377835604776.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P9315733992481097337

`A001076(n+1)/(2-A059841(n))`
-/

namespace A041031.P9315733992481097337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

end

end A041031.P9315733992481097337

namespace A041031

/-- `A001076(n+1)/(2-A059841(n))` -/
def P9315733992481097337.Spec : Prop :=
  ∀ n, P9315733992481097337.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P16381854202300747132

`∑[A167808(3*n+1)]/A000034(n)`
-/

namespace A041031.P16381854202300747132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A041031.P16381854202300747132

namespace A041031

/-- `∑[A167808(3*n+1)]/A000034(n)` -/
def P16381854202300747132.Spec : Prop :=
  ∀ n, P16381854202300747132.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P2519149408569076360

`A001076(n+1)/(A059841(n+1)+1)`
-/

namespace A041031.P2519149408569076360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A059841 (n + 1) + 1 : ℚ)

end

end A041031.P2519149408569076360

namespace A041031

/-- `A001076(n+1)/(A059841(n+1)+1)` -/
def P2519149408569076360.Spec : Prop :=
  ∀ n, P2519149408569076360.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P10766610524805864986

`A014445(n+1)/(2*A134451(n+1))`
-/

namespace A041031.P10766610524805864986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (2 * A134451 (n + 1) : ℚ)

end

end A041031.P10766610524805864986

namespace A041031

/-- `A014445(n+1)/(2*A134451(n+1))` -/
def P10766610524805864986.Spec : Prop :=
  ∀ n, P10766610524805864986.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P11664973832977425795

`A014445(n+1)/(2*A176895(2*n))`
-/

namespace A041031.P11664973832977425795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (2 * A176895 (2 * n) : ℚ)

end

end A041031.P11664973832977425795

namespace A041031

/-- `A014445(n+1)/(2*A176895(2*n))` -/
def P11664973832977425795.Spec : Prop :=
  ∀ n, P11664973832977425795.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P12940836748876283245

`A024490(A016789(n))/A000034(n)`
-/

namespace A041031.P12940836748876283245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024490 (A016789 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A041031.P12940836748876283245

namespace A041031

/-- `A024490(A016789(n))/A000034(n)` -/
def P12940836748876283245.Spec : Prop :=
  ∀ n, P12940836748876283245.a n = (A041031 n : ℚ)

end A041031

/-! ## A041031.P314097201909555224

`A059973(A103517(n))/A000034(n)`
-/

namespace A041031.P314097201909555224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059973 (A103517 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A041031.P314097201909555224

namespace A041031

/-- `A059973(A103517(n))/A000034(n)` -/
def P314097201909555224.Spec : Prop :=
  ∀ n, P314097201909555224.a n = (A041031 n : ℚ)

end A041031

/-!
# A041033: Denominators of continued fraction convergents to sqrt(21).

The programs for A041033, there is no canonical definition to state claims against.
-/

/-! ## A041033.P8594238831589453255

`A042577(n)%A306371(2^(comp[∑[n]]-n))`
-/

namespace A041033.P8594238831589453255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042577 n) (A306371 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat)

end

end A041033.P8594238831589453255

/-! ## A041033.P778186423826491126

`A134472(n)%A333383(A019402(n+1))`
-/

namespace A041033.P778186423826491126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134472 (n + 13)) (A333383 (A019402 (n + 1)).toNat)

end

end A041033.P778186423826491126

/-!
# A041034: Numerators of continued fraction convergents to sqrt(22).

The programs for A041034, there is no canonical definition to state claims against.
-/

/-! ## A041034.P17776187873315936529

`A041857(∑[(n-5)*n*((n-1-(2-n)²)²-1)+1])`
-/

namespace A041034.P17776187873315936529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041857 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041034.P17776187873315936529

/-!
# A041035: Denominators of continued fraction convergents to sqrt(22).

The programs for A041035, there is no canonical definition to state claims against.
-/

/-! ## A041035.P17192199806211713057

`round(A041034(n)/sqrt(22))`
-/

namespace A041035.P17192199806211713057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041034 n : ℝ) / Real.sqrt (22 : ℝ))

end

end A041035.P17192199806211713057

/-! ## A041035.P11055620274645334264

`A042269(n)%A083652(A064708(n+1))`
-/

namespace A041035.P11055620274645334264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042269 n) (A083652 (A064708 (n + 1)).toNat)

end

end A041035.P11055620274645334264

/-!
# A041037: Denominators of continued fraction convergents to sqrt(23).

The programs for A041037, there is no canonical definition to state claims against.
-/

/-! ## A041037.P13795970410741756305

`round(A041036(n)/sqrt(23))`
-/

namespace A041037.P13795970410741756305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041036 n : ℝ) / Real.sqrt (23 : ℝ))

end

end A041037.P13795970410741756305

/-!
# A041038: Numerators of continued fraction convergents to sqrt(24).

The programs for A041038, the canonical program `A041038.P15275115683617874886` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041038 has offset 0).

The definition of A041038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041038.P15275115683617874886

`a(n-2)+gcd(2, n)^3*a(n-1)` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041038

/-- `a(n-2)+gcd(2, n)^3*a(n-1)` -/
def P15275115683617874886.Spec : Prop :=
  ∀ n, (P15275115683617874886.a n : ℤ) = A041038 n

theorem P15275115683617874886.correct : P15275115683617874886.Spec := by
  intro n
  simp only [A041038]

end A041038

/-! ## A041038.P9046501630263312331

`gcd(2, n)*A041006(n)`
-/

namespace A041038.P9046501630263312331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041006 n

end

end A041038.P9046501630263312331

namespace A041038

/-- `gcd(2, n)*A041006(n)` -/
def P9046501630263312331.Spec : Prop :=
  ∀ n, P9046501630263312331.a n = A041038 n

end A041038

/-! ## A041038.P15750184460860099470

`Δ[A259595(n)]/4^(n%2)`
-/

namespace A041038.P15750184460860099470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259595 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (4 ^ (n % 2) : ℚ)

end

end A041038.P15750184460860099470

namespace A041038

/-- `Δ[A259595(n)]/4^(n%2)` -/
def P15750184460860099470.Spec : Prop :=
  ∀ n, P15750184460860099470.a n = (A041038 n : ℚ)

end A041038

/-! ## A041038.P8394506627232545553

`A228826(n)²*A142238(n)`
-/

namespace A041038.P8394506627232545553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n ^ 2 * A142238 n

end

end A041038.P8394506627232545553

namespace A041038

/-- `A228826(n)²*A142238(n)` -/
def P8394506627232545553.Spec : Prop :=
  ∀ n, P8394506627232545553.a n = A041038 n

end A041038

/-! ## A041038.P17211577908982133971

`Δ[A007494(n)]*A041006(n)`
-/

namespace A041038.P17211577908982133971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041006 n

end

end A041038.P17211577908982133971

namespace A041038

/-- `Δ[A007494(n)]*A041006(n)` -/
def P17211577908982133971.Spec : Prop :=
  ∀ n, P17211577908982133971.a n = A041038 n

end A041038

/-! ## A041038.P16136981891341902589

`A000034(n+1)*A041006(n)`
-/

namespace A041038.P16136981891341902589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041006 n

end

end A041038.P16136981891341902589

namespace A041038

/-- `A000034(n+1)*A041006(n)` -/
def P16136981891341902589.Spec : Prop :=
  ∀ n, P16136981891341902589.a n = A041038 n

end A041038

/-! ## A041038.P11589205755245653229

`A040001(n+2)*A041006(n)`
-/

namespace A041038.P11589205755245653229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041006 n

end

end A041038.P11589205755245653229

namespace A041038

/-- `A040001(n+2)*A041006(n)` -/
def P11589205755245653229.Spec : Prop :=
  ∀ n, P11589205755245653229.a n = A041038 n

end A041038

/-! ## A041038.P4217719253432395879

`(2-A000035(n))*A041006(n)`
-/

namespace A041038.P4217719253432395879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A041006 n

end

end A041038.P4217719253432395879

namespace A041038

/-- `(2-A000035(n))*A041006(n)` -/
def P4217719253432395879.Spec : Prop :=
  ∀ n, P4217719253432395879.a n = A041038 n

end A041038

/-! ## A041038.P209063064854368786

`(3-A000034(n))*A041006(n)`
-/

namespace A041038.P209063064854368786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041006 n

end

end A041038.P209063064854368786

namespace A041038

/-- `(3-A000034(n))*A041006(n)` -/
def P209063064854368786.Spec : Prop :=
  ∀ n, P209063064854368786.a n = A041038 n

end A041038

/-! ## A041038.P8431235924583336992

`A041006(n)*A266303(A266303(n))`
-/

namespace A041038.P8431235924583336992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n * A266303 (A266303 n).toNat

end

end A041038.P8431235924583336992

namespace A041038

/-- `A041006(n)*A266303(A266303(n))` -/
def P8431235924583336992.Spec : Prop :=
  ∀ n, P8431235924583336992.a n = A041038 n

end A041038

/-! ## A041038.P5926945813077644033

`A041006(n)/A142238(n)*A041006(n)`
-/

namespace A041038.P5926945813077644033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (A142238 n : ℚ) * (A041006 n : ℚ)

end

end A041038.P5926945813077644033

namespace A041038

/-- `A041006(n)/A142238(n)*A041006(n)` -/
def P5926945813077644033.Spec : Prop :=
  ∀ n, P5926945813077644033.a n = (A041038 n : ℚ)

end A041038

/-! ## A041038.P14977771551869877267

`A041006(n)/A001333(n+1)*A041010(n)`
-/

namespace A041038.P14977771551869877267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (A001333 (n + 1) : ℚ) * (A041010 n : ℚ)

end

end A041038.P14977771551869877267

namespace A041038

/-- `A041006(n)/A001333(n+1)*A041010(n)` -/
def P14977771551869877267.Spec : Prop :=
  ∀ n, P14977771551869877267.a n = (A041038 n : ℚ)

end A041038

/-! ## A041038.P14705034885696384489

`A142239(n+1)/A041007(n+1)*A041006(n)`
-/

namespace A041038.P14705034885696384489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142239 (n + 1) : ℚ) / (A041007 (n + 1) : ℚ) * (A041006 n : ℚ)

end

end A041038.P14705034885696384489

namespace A041038

/-- `A142239(n+1)/A041007(n+1)*A041006(n)` -/
def P14705034885696384489.Spec : Prop :=
  ∀ n, P14705034885696384489.a n = (A041038 n : ℚ)

end A041038

/-! ## A041038.P2230282451474849872

`(A001077(n)%2+1)*A041006(n)`
-/

namespace A041038.P2230282451474849872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A001077 n) 2 + 1) * A041006 n

end

end A041038.P2230282451474849872

namespace A041038

/-- `(A001077(n)%2+1)*A041006(n)` -/
def P2230282451474849872.Spec : Prop :=
  ∀ n, P2230282451474849872.a n = A041038 n

end A041038

/-! ## A041038.P17648966262832908330

`A001222(A116570(n))*A041006(n)`
-/

namespace A041038.P17648966262832908330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116570 n).toNat * A041006 n

end

end A041038.P17648966262832908330

namespace A041038

/-- `A001222(A116570(n))*A041006(n)` -/
def P17648966262832908330.Spec : Prop :=
  ∀ n, P17648966262832908330.a n = A041038 n

end A041038

/-! ## A041038.P14781572090682506480

`A041006(n)²/A142238(n)`
-/

namespace A041038.P14781572090682506480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n ^ 2 : ℚ) / (A142238 n : ℚ)

end

end A041038.P14781572090682506480

namespace A041038

/-- `A041006(n)²/A142238(n)` -/
def P14781572090682506480.Spec : Prop :=
  ∀ n, P14781572090682506480.a n = (A041038 n : ℚ)

end A041038

/-!
# A041039: Denominators of continued fraction convergents to sqrt(24).

The programs for A041039, the canonical program `A041039.P12162617650731648202` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041039 has offset 0).

The definition of A041039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041039.P12162617650731648202

`a(n-2)+gcd(2, n)^3*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041039

/-- `a(n-2)+gcd(2, n)^3*a(n-1)` -/
def P12162617650731648202.Spec : Prop :=
  ∀ n, (P12162617650731648202.a n : ℤ) = A041039 n

theorem P12162617650731648202.correct : P12162617650731648202.Spec := by
  intro n
  simp only [A041039]

end A041039

/-! ## A041039.P8434071539708903086

`lcm(2, A041007(n))/2`
-/

namespace A041039.P8434071539708903086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041007 n) : ℚ) / 2

end

end A041039.P8434071539708903086

namespace A041039

/-- `lcm(2, A041007(n))/2` -/
def P8434071539708903086.Spec : Prop :=
  ∀ n, P8434071539708903086.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P8090836033606624928

`a(n-2)+a(n-1)*A040019(n)` with `a(0)=1, a(1)=1`
-/

namespace A041039.P8090836033606624928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040019 n

end

end A041039.P8090836033606624928

namespace A041039

/-- `a(n-2)+a(n-1)*A040019(n)` -/
def P8090836033606624928.Spec : Prop :=
  ∀ n, P8090836033606624928.a n = A041039 n

end A041039

/-! ## A041039.P7519967573470345565

`A041007(n)/A000034(n)`
-/

namespace A041039.P7519967573470345565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A000034 n : ℚ)

end

end A041039.P7519967573470345565

namespace A041039

/-- `A041007(n)/A000034(n)` -/
def P7519967573470345565.Spec : Prop :=
  ∀ n, P7519967573470345565.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P2469270286975486824

`A041007(n)/Δ[A032766(n)]`
-/

namespace A041039.P2469270286975486824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041039.P2469270286975486824

namespace A041039

/-- `A041007(n)/Δ[A032766(n)]` -/
def P2469270286975486824.Spec : Prop :=
  ∀ n, P2469270286975486824.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P17601876554903122687

`A041007(n)/(A000035(n)+1)`
-/

namespace A041039.P17601876554903122687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041039.P17601876554903122687

namespace A041039

/-- `A041007(n)/(A000035(n)+1)` -/
def P17601876554903122687.Spec : Prop :=
  ∀ n, P17601876554903122687.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P14409963238840967496

`A041007(n)/A040001(n+1)`
-/

namespace A041039.P14409963238840967496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041039.P14409963238840967496

namespace A041039

/-- `A041007(n)/A040001(n+1)` -/
def P14409963238840967496.Spec : Prop :=
  ∀ n, P14409963238840967496.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P9234190500368865747

`A041007(n)/(2-A059841(n))`
-/

namespace A041039.P9234190500368865747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (2 - A059841 n : ℚ)

end

end A041039.P9234190500368865747

namespace A041039

/-- `A041007(n)/(2-A059841(n))` -/
def P9234190500368865747.Spec : Prop :=
  ∀ n, P9234190500368865747.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P15741356661626756159

`A041007(n)/(A188510(n)²+1)`
-/

namespace A041039.P15741356661626756159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A188510 n ^ 2 + 1 : ℚ)

end

end A041039.P15741356661626756159

namespace A041039

/-- `A041007(n)/(A188510(n)²+1)` -/
def P15741356661626756159.Spec : Prop :=
  ∀ n, P15741356661626756159.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P1990177147056871705

`A041007(n)/A041007(n-A052928(n))`
-/

namespace A041039.P1990177147056871705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A041007 ((n : ℤ) - A052928 n).toNat : ℚ)

end

end A041039.P1990177147056871705

namespace A041039

/-- `A041007(n)/A041007(n-A052928(n))` -/
def P1990177147056871705.Spec : Prop :=
  ∀ n, P1990177147056871705.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P11100509990026430703

`A016116(n)/A016116(n+1)*A041007(n)`
-/

namespace A041039.P11100509990026430703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A016116 (n + 1) : ℚ) * (A041007 n : ℚ)

end

end A041039.P11100509990026430703

namespace A041039

/-- `A016116(n)/A016116(n+1)*A041007(n)` -/
def P11100509990026430703.Spec : Prop :=
  ∀ n, P11100509990026430703.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P3402680539307726217

`A297402(n+1)/A297402(A297402(n+1))*A041007(n)`
-/

namespace A041039.P3402680539307726217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297402 (n + 1) : ℚ) / (A297402 (A297402 (n + 1)).toNat : ℚ) * (A041007 n : ℚ)

end

end A041039.P3402680539307726217

namespace A041039

/-- `A297402(n+1)/A297402(A297402(n+1))*A041007(n)` -/
def P3402680539307726217.Spec : Prop :=
  ∀ n, P3402680539307726217.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P12255112179746596893

`A142239(n)/A010685(n)`
-/

namespace A041039.P12255112179746596893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142239 n : ℚ) / (A010685 n : ℚ)

end

end A041039.P12255112179746596893

namespace A041039

/-- `A142239(n)/A010685(n)` -/
def P12255112179746596893.Spec : Prop :=
  ∀ n, P12255112179746596893.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P17592152724513656960

`A142239(n)/A000034(n)²`
-/

namespace A041039.P17592152724513656960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142239 n : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A041039.P17592152724513656960

namespace A041039

/-- `A142239(n)/A000034(n)²` -/
def P17592152724513656960.Spec : Prop :=
  ∀ n, P17592152724513656960.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P17293472230213937868

`A142239(n)/gcd(2, A092486(n))²`
-/

namespace A041039.P17293472230213937868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142239 n : ℚ) / (Int.gcd 2 (A092486 n) ^ 2 : ℚ)

end

end A041039.P17293472230213937868

namespace A041039

/-- `A142239(n)/gcd(2, A092486(n))²` -/
def P17293472230213937868.Spec : Prop :=
  ∀ n, P17293472230213937868.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P5084812288825465274

`A041007(n)/(A041006(n)%2+1)`
-/

namespace A041039.P5084812288825465274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (Int.tmod (A041006 n) 2 + 1 : ℚ)

end

end A041039.P5084812288825465274

namespace A041039

/-- `A041007(n)/(A041006(n)%2+1)` -/
def P5084812288825465274.Spec : Prop :=
  ∀ n, P5084812288825465274.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P8570581303610958755

`A041007(n)/A142239(n)*A041007(n)`
-/

namespace A041039.P8570581303610958755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A142239 n : ℚ) * (A041007 n : ℚ)

end

end A041039.P8570581303610958755

namespace A041039

/-- `A041007(n)/A142239(n)*A041007(n)` -/
def P8570581303610958755.Spec : Prop :=
  ∀ n, P8570581303610958755.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P13222646427116517744

`A142239(n)/A142239(and(n, A000051(n)))`
-/

namespace A041039.P13222646427116517744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142239 n : ℚ) / (A142239 (Int.land (n : ℤ) (A000051 n)).toNat : ℚ)

end

end A041039.P13222646427116517744

namespace A041039

/-- `A142239(n)/A142239(and(n, A000051(n)))` -/
def P13222646427116517744.Spec : Prop :=
  ∀ n, P13222646427116517744.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P18046742620817534113

`A142239(n)/A001222(A129767(n+1))²`
-/

namespace A041039.P18046742620817534113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142239 n : ℚ) / (A001222 (A129767 (n + 1)).toNat ^ 2 : ℚ)

end

end A041039.P18046742620817534113

namespace A041039

/-- `A142239(n)/A001222(A129767(n+1))²` -/
def P18046742620817534113.Spec : Prop :=
  ∀ n, P18046742620817534113.a n = (A041039 n : ℚ)

end A041039

/-! ## A041039.P2305631469704202660

`A041007(n)/A000129(A142239(n)/A041007(n))`
-/

namespace A041039.P2305631469704202660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A000129 (SequenceMachineLib.roundAway ((A142239 n : ℚ) / (A041007 n : ℚ))).toNat : ℚ)

end

end A041039.P2305631469704202660

namespace A041039

/-- `A041007(n)/A000129(A142239(n)/A041007(n))` -/
def P2305631469704202660.Spec : Prop :=
  ∀ n, P2305631469704202660.a n = (A041039 n : ℚ)

end A041039

/-!
# A041040: Numerators of continued fraction convergents to sqrt(26).

The programs for A041040, the canonical program `A041040.P14067790208061608995` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041040 has offset 0).

The definition of A041040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041040.P14067790208061608995

`10*a(n-1)+a(n-2)` with `a(0)=5, a(1)=51`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041040

/-- `10*a(n-1)+a(n-2)` -/
def P14067790208061608995.Spec : Prop :=
  ∀ n, (P14067790208061608995.a n : ℤ) = A041040 n

theorem P14067790208061608995.correct : P14067790208061608995.Spec := by
  intro n
  simp only [A041040]

end A041040

/-! ## A041040.P234324129512973279

`ogf((5+x)/(1-10x-x^2))`
-/

namespace A041040.P234324129512973279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1] [1, -10, -1] n

end

end A041040.P234324129512973279

namespace A041040

/-- `ogf((5+x)/(1-10x-x^2))` -/
def P234324129512973279.Spec : Prop :=
  ∀ n, P234324129512973279.a n = A041040 n

end A041040

/-! ## A041040.P3177363841298769124

`A088320(n+1)`
-/

namespace A041040.P3177363841298769124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088320 (n + 1)

end

end A041040.P3177363841298769124

namespace A041040

/-- `A088320(n+1)` -/
def P3177363841298769124.Spec : Prop :=
  ∀ n, P3177363841298769124.a n = A041040 n

end A041040

/-! ## A041040.P7635228962703121563

`A086927(n+1)/2`
-/

namespace A041040.P7635228962703121563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086927 (n + 1) : ℚ) / 2

end

end A041040.P7635228962703121563

namespace A041040

/-- `A086927(n+1)/2` -/
def P7635228962703121563.Spec : Prop :=
  ∀ n, P7635228962703121563.a n = (A041040 n : ℚ)

end A041040

/-! ## A041040.P4010340298741558464

`lcm(2, A041186(n))/2`
-/

namespace A041040.P4010340298741558464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041186 n) : ℚ) / 2

end

end A041040.P4010340298741558464

namespace A041040

/-- `lcm(2, A041186(n))/2` -/
def P4010340298741558464.Spec : Prop :=
  ∀ n, P4010340298741558464.a n = (A041040 n : ℚ)

end A041040

/-! ## A041040.P7126776635076040380

`record[A088320(abs(1-n))]`
-/

namespace A041040.P7126776635076040380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088320 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041040.P7126776635076040380

namespace A041040

/-- `record[A088320(abs(1-n))]` -/
def P7126776635076040380.Spec : Prop :=
  ∀ n, P7126776635076040380.a n = A041040 n

end A041040

/-! ## A041040.P11228038660919126577

`A041186(n)/Δ[A007494(n)]`
-/

namespace A041040.P11228038660919126577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041186 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041040.P11228038660919126577

namespace A041040

/-- `A041186(n)/Δ[A007494(n)]` -/
def P11228038660919126577.Spec : Prop :=
  ∀ n, P11228038660919126577.a n = (A041040 n : ℚ)

end A041040

/-! ## A041040.P8556385891690684230

`A041186(n)/A000034(n+1)`
-/

namespace A041040.P8556385891690684230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041186 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041040.P8556385891690684230

namespace A041040

/-- `A041186(n)/A000034(n+1)` -/
def P8556385891690684230.Spec : Prop :=
  ∀ n, P8556385891690684230.a n = (A041040 n : ℚ)

end A041040

/-! ## A041040.P5077079791265003959

`A000034(n)/2*A041186(n)`
-/

namespace A041040.P5077079791265003959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041186 n : ℚ)

end

end A041040.P5077079791265003959

namespace A041040

/-- `A000034(n)/2*A041186(n)` -/
def P5077079791265003959.Spec : Prop :=
  ∀ n, P5077079791265003959.a n = (A041040 n : ℚ)

end A041040

/-! ## A041040.P17201948783704962602

`(A109108(n+1)+A015456(n+1))/2`
-/

namespace A041040.P17201948783704962602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109108 (n + 1) + A015456 (n + 1) : ℚ) / 2

end

end A041040.P17201948783704962602

namespace A041040

/-- `(A109108(n+1)+A015456(n+1))/2` -/
def P17201948783704962602.Spec : Prop :=
  ∀ n, P17201948783704962602.a n = (A041040 n : ℚ)

end A041040

/-!
# A041041: Denominators of continued fraction convergents to sqrt(26).

The programs for A041041, the canonical program `A041041.P520631316830593483` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041041 has offset 0).

The definition of A041041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041041.P520631316830593483

`10*a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041041

/-- `10*a(n-1)+a(n-2)` -/
def P520631316830593483.Spec : Prop :=
  ∀ n, (P520631316830593483.a n : ℤ) = A041041 n

theorem P520631316830593483.correct : P520631316830593483.Spec := by
  intro n
  simp only [A041041]

end A041041

/-! ## A041041.P8012012442584366283

`ogf(1/(1-10x-x^2))`
-/

namespace A041041.P8012012442584366283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, -1] n

end

end A041041.P8012012442584366283

namespace A041041

/-- `ogf(1/(1-10x-x^2))` -/
def P8012012442584366283.Spec : Prop :=
  ∀ n, P8012012442584366283.a n = A041041 n

end A041041

/-! ## A041041.P656150947337659785

`∑[A109108(n)]`
-/

namespace A041041.P656150947337659785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041041.P656150947337659785

namespace A041041

/-- `∑[A109108(n)]` -/
def P656150947337659785.Spec : Prop :=
  ∀ n, P656150947337659785.a n = A041041 n

end A041041

/-! ## A041041.P17674047807202922075

`A109107(n)/2`
-/

namespace A041041.P17674047807202922075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109107 n : ℚ) / 2

end

end A041041.P17674047807202922075

namespace A041041

/-- `A109107(n)/2` -/
def P17674047807202922075.Spec : Prop :=
  ∀ n, P17674047807202922075.a n = (A041041 n : ℚ)

end A041041

/-! ## A041041.P10849114046182242386

`A015456(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A041041.P10849114046182242386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015456 (n + 1) - a (n - 1)

end

end A041041.P10849114046182242386

namespace A041041

/-- `A015456(n+1)-a(n-1)` -/
def P10849114046182242386.Spec : Prop :=
  ∀ n, P10849114046182242386.a n = A041041 n

end A041041

/-! ## A041041.P12950813019948133905

`A088320(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A041041.P12950813019948133905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088320 n + 5 * a (n - 1)

end

end A041041.P12950813019948133905

namespace A041041

/-- `A088320(n)+5*a(n-1)` -/
def P12950813019948133905.Spec : Prop :=
  ∀ n, P12950813019948133905.a n = A041041 n

end A041041

/-! ## A041041.P12627310093091965684

`A000034(n)*A041187(n)`
-/

namespace A041041.P12627310093091965684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041187 n

end

end A041041.P12627310093091965684

namespace A041041

/-- `A000034(n)*A041187(n)` -/
def P12627310093091965684.Spec : Prop :=
  ∀ n, P12627310093091965684.a n = A041041 n

end A041041

/-! ## A041041.P10256354310103679231

`∑[A086927(n)-A015456(n)]`
-/

namespace A041041.P10256354310103679231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086927 n - A015456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041041.P10256354310103679231

namespace A041041

/-- `∑[A086927(n)-A015456(n)]` -/
def P10256354310103679231.Spec : Prop :=
  ∀ n, P10256354310103679231.a n = A041041 n

end A041041

/-! ## A041041.P16437860553822120504

`A040029(n+1)*A162671(n+1)`
-/

namespace A041041.P16437860553822120504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 (n + 1) * A162671 (n + 1)

end

end A041041.P16437860553822120504

namespace A041041

/-- `A040029(n+1)*A162671(n+1)` -/
def P16437860553822120504.Spec : Prop :=
  ∀ n, P16437860553822120504.a n = A041041 n

end A041041

/-! ## A041041.P4903453496559038519

`2*A015456(n+1)-A171510(n+2)`
-/

namespace A041041.P4903453496559038519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015456 (n + 1) - A171510 (n + 2)

end

end A041041.P4903453496559038519

namespace A041041

/-- `2*A015456(n+1)-A171510(n+2)` -/
def P4903453496559038519.Spec : Prop :=
  ∀ n, P4903453496559038519.a n = A041041 n

end A041041

/-!
# A041042: Numerators of continued fraction convergents to sqrt(27).

The programs for A041042, the canonical program `A041042.P13525226962710428538` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041042 has offset 0).

The definition of A041042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041042.P13525226962710428538

`A002531(3*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041042

/-- `A002531(3*(n+1))` -/
def P13525226962710428538.Spec : Prop :=
  ∀ n, P13525226962710428538.a n = A041042 n

theorem P13525226962710428538.correct : P13525226962710428538.Spec := by
  intro n
  simp only [A041042]

end A041042

/-! ## A041042.P13206241872004168106

`record[A002531(3*A106249(n))]`
-/

namespace A041042.P13206241872004168106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (3 * A106249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041042.P13206241872004168106

namespace A041042

/-- `record[A002531(3*A106249(n))]` -/
def P13206241872004168106.Spec : Prop :=
  ∀ n, P13206241872004168106.a n = A041042 n

end A041042

/-! ## A041042.P15331092390443162230

`record[A002531(A008486(abs(1-n)))]`
-/

namespace A041042.P15331092390443162230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (A008486 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041042.P15331092390443162230

namespace A041042

/-- `record[A002531(A008486(abs(1-n)))]` -/
def P15331092390443162230.Spec : Prop :=
  ∀ n, P15331092390443162230.a n = A041042 n

end A041042

/-! ## A041042.P7954080878462076579

`record[A002531(A008585(abs(1-n)))]`
-/

namespace A041042.P7954080878462076579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (A008585 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041042.P7954080878462076579

namespace A041042

/-- `record[A002531(A008585(abs(1-n)))]` -/
def P7954080878462076579.Spec : Prop :=
  ∀ n, P7954080878462076579.a n = A041042 n

end A041042

/-! ## A041042.P7660642426057943664

`A143642(A001651(2*(n+1)+n+1))`
-/

namespace A041042.P7660642426057943664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A001651 (2 * (n + 1) + (n + 1))).toNat

end

end A041042.P7660642426057943664

namespace A041042

/-- `A143642(A001651(2*(n+1)+n+1))` -/
def P7660642426057943664.Spec : Prop :=
  ∀ n, P7660642426057943664.a n = A041042 n

end A041042

/-! ## A041042.P7887522747669095867

`A143642(3*n+2+A007494(n+1))`
-/

namespace A041042.P7887522747669095867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 ((3 * n + 2 : ℤ) + A007494 (n + 1)).toNat

end

end A041042.P7887522747669095867

namespace A041042

/-- `A143642(3*n+2+A007494(n+1))` -/
def P7887522747669095867.Spec : Prop :=
  ∀ n, P7887522747669095867.a n = A041042 n

end A041042

/-! ## A041042.P18196037891306458029

`A143642(3*n+2+A294732(n+3))`
-/

namespace A041042.P18196037891306458029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 ((3 * n + 2 : ℤ) + A294732 (n + 3)).toNat

end

end A041042.P18196037891306458029

namespace A041042

/-- `A143642(3*n+2+A294732(n+3))` -/
def P18196037891306458029.Spec : Prop :=
  ∀ n, P18196037891306458029.a n = A041042 n

end A041042

/-! ## A041042.P13352846771571537724

`A002531(A008585(n+1))+A000007((n+7)²)`
-/

namespace A041042.P13352846771571537724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (A008585 (n + 1)).toNat + A000007 ((n + 7) ^ 2)

end

end A041042.P13352846771571537724

namespace A041042

/-- `A002531(A008585(n+1))+A000007((n+7)²)` -/
def P13352846771571537724.Spec : Prop :=
  ∀ n, P13352846771571537724.a n = A041042 n

end A041042

/-!
# A041043: Denominators of continued fraction convergents to sqrt(27).

The programs for A041043, the canonical program `A041043.P17196250796943046244` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041043 has offset 0).

The definition of A041043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041043.P17196250796943046244

`52*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=51, a(3)=260`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041043

/-- `52*a(n-2)-a(n-4)` -/
def P17196250796943046244.Spec : Prop :=
  ∀ n, P17196250796943046244.a n = A041043 n

theorem P17196250796943046244.correct : P17196250796943046244.Spec := by
  intro n
  simp only [A041043]

end A041043

/-! ## A041043.P4521679039004151217

`A002530(3*(n+1))/3`
-/

namespace A041043.P4521679039004151217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002530 (3 * (n + 1)) : ℚ) / 3

end

end A041043.P4521679039004151217

namespace A041043

/-- `A002530(3*(n+1))/3` -/
def P4521679039004151217.Spec : Prop :=
  ∀ n, P4521679039004151217.a n = (A041043 n : ℚ)

end A041043

/-! ## A041043.P15984698966431705069

`A002530(n+1)*A120893(n+1)`
-/

namespace A041043.P15984698966431705069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) * A120893 (n + 1)

end

end A041043.P15984698966431705069

namespace A041043

/-- `A002530(n+1)*A120893(n+1)` -/
def P15984698966431705069.Spec : Prop :=
  ∀ n, P15984698966431705069.a n = A041043 n

end A041043

/-! ## A041043.P13995722534850407496

`A042299(n)*A108412(ratio[A016116(n)])`
-/

namespace A041043.P13995722534850407496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042299 n * A108412 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A041043.P13995722534850407496

namespace A041043

/-- `A042299(n)*A108412(ratio[A016116(n)])` -/
def P13995722534850407496.Spec : Prop :=
  ∀ n, P13995722534850407496.a n = A041043 n

end A041043

/-! ## A041043.P6776169850604991189

`(A105968(n)+A001353(n))*A002530(n+1)`
-/

namespace A041043.P6776169850604991189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105968 n + A001353 n) * A002530 (n + 1)

end

end A041043.P6776169850604991189

namespace A041043

/-- `(A105968(n)+A001353(n))*A002530(n+1)` -/
def P6776169850604991189.Spec : Prop :=
  ∀ n, P6776169850604991189.a n = A041043 n

end A041043

/-! ## A041043.P14291604556636081590

`(A006253(n+1)-A001353(n+1))*A002530(n+1)`
-/

namespace A041043.P14291604556636081590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006253 (n + 1) - A001353 (n + 1)) * A002530 (n + 1)

end

end A041043.P14291604556636081590

namespace A041043

/-- `(A006253(n+1)-A001353(n+1))*A002530(n+1)` -/
def P14291604556636081590.Spec : Prop :=
  ∀ n, P14291604556636081590.a n = A041043 n

end A041043

/-! ## A041043.P16592667505620820389

`A042299(n)*A132400(n²)`
-/

namespace A041043.P16592667505620820389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042299 n * A132400 (n ^ 2)

end

end A041043.P16592667505620820389

namespace A041043

/-- `A042299(n)*A132400(n²)` -/
def P16592667505620820389.Spec : Prop :=
  ∀ n, P16592667505620820389.a n = A041043 n

end A041043

/-!
# A041044: Numerators of continued fraction convergents to sqrt(28).

The programs for A041044, there is no canonical definition to state claims against.
-/

/-! ## A041044.P2287732706486287557

`A041472(n)/A176040(n)`
-/

namespace A041044.P2287732706486287557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041472 n : ℚ) / (A176040 n : ℚ)

end

end A041044.P2287732706486287557

/-! ## A041044.P16997451305591038536

`A041472(n)/Δ[A014601(n)]`
-/

namespace A041044.P16997451305591038536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041472 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041044.P16997451305591038536

/-! ## A041044.P6119947935563675585

`A041472(n)/gcd(3, A040236(n))`
-/

namespace A041044.P6119947935563675585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041472 n : ℚ) / (Int.gcd 3 (A040236 n) : ℚ)

end

end A041044.P6119947935563675585

/-! ## A041044.P16191937264047153096

`A041472(n)/A008486(Δ[A110654(n)])`
-/

namespace A041044.P16191937264047153096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041472 n : ℚ) / (A008486 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041044.P16191937264047153096

/-! ## A041044.P14544671505988323214

`A041472(n)/A278536(A006519(n+1))`
-/

namespace A041044.P14544671505988323214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041472 n : ℚ) / (A278536 (A006519 (n + 1)).toNat : ℚ)

end

end A041044.P14544671505988323214

/-! ## A041044.P13465840990880795384

`A041472(n)/A278536(n²+1)`
-/

namespace A041044.P13465840990880795384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041472 n : ℚ) / (A278536 (n ^ 2 + 1) : ℚ)

end

end A041044.P13465840990880795384

/-!
# A041045: Denominators of continued fraction convergents to sqrt(28).

The programs for A041045, there is no canonical definition to state claims against.
-/

/-! ## A041045.P15980581921688919594

`A010684(n)*A041473(n)`
-/

namespace A041045.P15980581921688919594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A041473 n

end

end A041045.P15980581921688919594

/-! ## A041045.P1435701693505399933

`Δ[A042948(n)]*A041473(n)`
-/

namespace A041045.P1435701693505399933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041473 n

end

end A041045.P1435701693505399933

/-! ## A041045.P10028100468162215249

`(Δ[A109613(n)]+1)*A041473(n)`
-/

namespace A041045.P10028100468162215249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041473 n

end

end A041045.P10028100468162215249

/-! ## A041045.P6073376756538476560

`A041473(n)*A099545(2*n+1)`
-/

namespace A041045.P6073376756538476560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 n * A099545 (2 * n + 1)

end

end A041045.P6073376756538476560

/-! ## A041045.P16566110535546303737

`A041473(n)*A101822(Δ[A109613(n)])`
-/

namespace A041045.P16566110535546303737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 n * A101822 (f1 (n + 1) - f1 n).toNat

end

end A041045.P16566110535546303737

/-! ## A041045.P7101822541235183486

`A041473(n)*A109613(Δ[A109613(n)])`
-/

namespace A041045.P7101822541235183486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 n * A109613 (f1 (n + 1) - f1 n).toNat

end

end A041045.P7101822541235183486

/-! ## A041045.P4185037111344407488

`A041473(n)*A285948(Δ[A008619(n)])`
-/

namespace A041045.P4185037111344407488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 n * A285948 (f1 (n + 1) - f1 n).toNat

end

end A041045.P4185037111344407488

/-! ## A041045.P4960421034405729259

`A041473(n)*A286521(Δ[A008619(n)])`
-/

namespace A041045.P4960421034405729259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 n * A286521 (f1 (n + 1) - f1 n).toNat

end

end A041045.P4960421034405729259

/-! ## A041045.P432651298863771784

`A041473(n)*A056811(Δ[A248474(n+1)])`
-/

namespace A041045.P432651298863771784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 n * A056811 (f1 (n + 1) - f1 n).toNat

end

end A041045.P432651298863771784

/-!
# A041046: Numerators of continued fraction convergents to sqrt(29).

The programs for A041046, there is no canonical definition to state claims against.
-/

/-! ## A041046.P17897157967314797452

`round(sqrt(29)*A041047(n))`
-/

namespace A041046.P17897157967314797452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (29 : ℝ) * (A041047 n : ℝ))

end

end A041046.P17897157967314797452

/-!
# A041047: Denominators of continued fraction convergents to sqrt(29).

The programs for A041047, there is no canonical definition to state claims against.
-/

/-! ## A041047.P15490693802015091304

`round(A041046(n)/sqrt(29))`
-/

namespace A041047.P15490693802015091304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041046 n : ℝ) / Real.sqrt (29 : ℝ))

end

end A041047.P15490693802015091304

/-!
# A041048: Numerators of continued fraction convergents to sqrt(30).

The programs for A041048, the canonical program `A041048.P5499091687835252052` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041048 has offset 0).

The definition of A041048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041048.P5499091687835252052

`22*a(n-2)-a(n-4)` with `a(0)=5, a(1)=11, a(2)=115, a(3)=241`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041048

/-- `22*a(n-2)-a(n-4)` -/
def P5499091687835252052.Spec : Prop :=
  ∀ n, P5499091687835252052.a n = A041048 n

theorem P5499091687835252052.correct : P5499091687835252052.Spec := by
  intro n
  simp only [A041048]

end A041048

/-! ## A041048.P11672095101509332000

`A041218(n)/gcd(2, n)`
-/

namespace A041048.P11672095101509332000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041218 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041048.P11672095101509332000

namespace A041048

/-- `A041218(n)/gcd(2, n)` -/
def P11672095101509332000.Spec : Prop :=
  ∀ n, P11672095101509332000.a n = (A041048 n : ℚ)

end A041048

/-! ## A041048.P14201911790274283127

`A041218(n)/A000034(n+1)`
-/

namespace A041048.P14201911790274283127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041218 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041048.P14201911790274283127

namespace A041048

/-- `A041218(n)/A000034(n+1)` -/
def P14201911790274283127.Spec : Prop :=
  ∀ n, P14201911790274283127.a n = (A041048 n : ℚ)

end A041048

/-! ## A041048.P15922026615557979675

`A000034(n)/2*A041218(n)`
-/

namespace A041048.P15922026615557979675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041218 n : ℚ)

end

end A041048.P15922026615557979675

namespace A041048

/-- `A000034(n)/2*A041218(n)` -/
def P15922026615557979675.Spec : Prop :=
  ∀ n, P15922026615557979675.a n = (A041048 n : ℚ)

end A041048

/-! ## A041048.P12713731692393748016

`A041218(n)/A000041((-1)^n+1)`
-/

namespace A041048.P12713731692393748016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041218 n : ℚ) / (A000041 ((-1) ^ n + 1).toNat : ℚ)

end

end A041048.P12713731692393748016

namespace A041048

/-- `A041218(n)/A000041((-1)^n+1)` -/
def P12713731692393748016.Spec : Prop :=
  ∀ n, P12713731692393748016.a n = (A041048 n : ℚ)

end A041048

/-! ## A041048.P15303631920179484683

`A041218(n)/A266303(A266303(n))`
-/

namespace A041048.P15303631920179484683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041218 n : ℚ) / (A266303 (A266303 n).toNat : ℚ)

end

end A041048.P15303631920179484683

namespace A041048

/-- `A041218(n)/A266303(A266303(n))` -/
def P15303631920179484683.Spec : Prop :=
  ∀ n, P15303631920179484683.a n = (A041048 n : ℚ)

end A041048

/-! ## A041048.P9841017483184424201

`A041218(n)/A000032(Δ[A004526(n)])`
-/

namespace A041048.P9841017483184424201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041218 n : ℚ) / (A000032 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041048.P9841017483184424201

namespace A041048

/-- `A041218(n)/A000032(Δ[A004526(n)])` -/
def P9841017483184424201.Spec : Prop :=
  ∀ n, P9841017483184424201.a n = (A041048 n : ℚ)

end A041048

/-! ## A041048.P11871461371673743428

`floor(A254782(n+2)/A041049(n+1))`
-/

namespace A041048.P11871461371673743428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254782 (n + 2) : ℚ) / (A041049 (n + 1) : ℚ)⌋

end

end A041048.P11871461371673743428

namespace A041048

/-- `floor(A254782(n+2)/A041049(n+1))` -/
def P11871461371673743428.Spec : Prop :=
  ∀ n, P11871461371673743428.a n = A041048 n

end A041048

/-!
# A041049: Denominators of continued fraction convergents to sqrt(30).

The programs for A041049, the canonical program `A041049.P11645687911740521102` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041049 has offset 0).

The definition of A041049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041049.P11645687911740521102

`A000034(n)*A041219(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041049

/-- `A000034(n)*A041219(n)` -/
def P11645687911740521102.Spec : Prop :=
  ∀ n, P11645687911740521102.a n = A041049 n

theorem P11645687911740521102.correct : P11645687911740521102.Spec := by
  intro n
  simp only [A041049]

end A041049

/-! ## A041049.P9077210827910452954

`A041219(n)*A134451(n+1)`
-/

namespace A041049.P9077210827910452954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 n * A134451 (n + 1)

end

end A041049.P9077210827910452954

namespace A041049

/-- `A041219(n)*A134451(n+1)` -/
def P9077210827910452954.Spec : Prop :=
  ∀ n, P9077210827910452954.a n = A041049 n

end A041049

/-! ## A041049.P811570088453040242

`lcm(A006519(n+1), A041219(n))`
-/

namespace A041049.P811570088453040242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A041219 n)

end

end A041049.P811570088453040242

namespace A041049

/-- `lcm(A006519(n+1), A041219(n))` -/
def P811570088453040242.Spec : Prop :=
  ∀ n, (P811570088453040242.a n : ℤ) = A041049 n

end A041049

/-! ## A041049.P4387709316394803891

`A001075(n)%3*A041219(n)`
-/

namespace A041049.P4387709316394803891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001075 n) 3 * A041219 n

end

end A041049.P4387709316394803891

namespace A041049

/-- `A001075(n)%3*A041219(n)` -/
def P4387709316394803891.Spec : Prop :=
  ∀ n, P4387709316394803891.a n = A041049 n

end A041049

/-! ## A041049.P9172261160564033603

`A001834(n)%3*A041219(n)`
-/

namespace A041049.P9172261160564033603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001834 n) 3 * A041219 n

end

end A041049.P9172261160564033603

namespace A041049

/-- `A001834(n)%3*A041219(n)` -/
def P9172261160564033603.Spec : Prop :=
  ∀ n, P9172261160564033603.a n = A041049 n

end A041049

/-! ## A041049.P2285570889969329734

`A041219(n)*A247004(n²+1)`
-/

namespace A041049.P2285570889969329734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 n * A247004 (n ^ 2 + 1)

end

end A041049.P2285570889969329734

namespace A041049

/-- `A041219(n)*A247004(n²+1)` -/
def P2285570889969329734.Spec : Prop :=
  ∀ n, P2285570889969329734.a n = A041049 n

end A041049

/-! ## A041049.P16217923993883362758

`(Δ[A004526(n)]+1)*A041219(n)`
-/

namespace A041049.P16217923993883362758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041219 n

end

end A041049.P16217923993883362758

namespace A041049

/-- `(Δ[A004526(n)]+1)*A041219(n)` -/
def P16217923993883362758.Spec : Prop :=
  ∀ n, P16217923993883362758.a n = A041049 n

end A041049

/-! ## A041049.P16614991209524769851

`A020639(A266303(n))*A041219(n)`
-/

namespace A041049.P16614991209524769851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A266303 n).toNat * A041219 n

end

end A041049.P16614991209524769851

namespace A041049

/-- `A020639(A266303(n))*A041219(n)` -/
def P16614991209524769851.Spec : Prop :=
  ∀ n, P16614991209524769851.a n = A041049 n

end A041049

/-! ## A041049.P18087200087179372172

`A041219(n)*A266303(A266303(n+1))`
-/

namespace A041049.P18087200087179372172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 n * A266303 (A266303 (n + 1)).toNat

end

end A041049.P18087200087179372172

namespace A041049

/-- `A041219(n)*A266303(A266303(n+1))` -/
def P18087200087179372172.Spec : Prop :=
  ∀ n, P18087200087179372172.a n = A041049 n

end A041049

/-! ## A041049.P18337034341256057903

`A020639(A000005((2*n+1)^(n%2)))*A041219(n)`
-/

namespace A041049.P18337034341256057903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 ((2 * n + 1) ^ (n % 2))).toNat * A041219 n

end

end A041049.P18337034341256057903

namespace A041049

/-- `A020639(A000005((2*n+1)^(n%2)))*A041219(n)` -/
def P18337034341256057903.Spec : Prop :=
  ∀ n, P18337034341256057903.a n = A041049 n

end A041049

/-! ## A041049.P3022258849202229371

`A153318(n+1)-A153317(n+1)`
-/

namespace A041049.P3022258849202229371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153318 (n + 1) - A153317 (n + 1)

end

end A041049.P3022258849202229371

namespace A041049

/-- `A153318(n+1)-A153317(n+1)` -/
def P3022258849202229371.Spec : Prop :=
  ∀ n, P3022258849202229371.a n = A041049 n

end A041049

/-! ## A041049.P12909493260215430102

`A006519(n²+1)*A041219(n)`
-/

namespace A041049.P12909493260215430102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041219 n

end

end A041049.P12909493260215430102

namespace A041049

/-- `A006519(n²+1)*A041219(n)` -/
def P12909493260215430102.Spec : Prop :=
  ∀ n, P12909493260215430102.a n = A041049 n

end A041049

/-!
# A041053: Denominators of continued fraction convergents to sqrt(32).

The programs for A041053, the canonical program `A041053.P12123195284201886834` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041053 has offset 0).

The definition of A041053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041053.P12123195284201886834

`34*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=32, a(5)=35, a(6)=67, a(7)=102`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041053

/-- `34*a(n-4)-a(n-8)` -/
def P12123195284201886834.Spec : Prop :=
  ∀ n, P12123195284201886834.a n = A041053 n

theorem P12123195284201886834.correct : P12123195284201886834.Spec := by
  intro n
  simp only [A041053]

end A041053

/-! ## A041053.P906159890564663280

`round(A041052(n)/sqrt(32))`
-/

namespace A041053.P906159890564663280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041052 n : ℝ) / Real.sqrt (32 : ℝ))

end

end A041053.P906159890564663280

namespace A041053

/-- `round(A041052(n)/sqrt(32))` -/
def P906159890564663280.Spec : Prop :=
  ∀ n, P906159890564663280.a n = A041053 n

end A041053

/-! ## A041053.P6488605928404557264

`A004277(A041589(n))-A042701(n)`
-/

namespace A041053.P6488605928404557264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041589 n).toNat - A042701 n

end

end A041053.P6488605928404557264

namespace A041053

/-- `A004277(A041589(n))-A042701(n)` -/
def P6488605928404557264.Spec : Prop :=
  ∀ n, P6488605928404557264.a n = A041053 n

end A041053

/-!
# A041054: Numerators of continued fraction convergents to sqrt(33).

The programs for A041054, there is no canonical definition to state claims against.
-/

/-! ## A041054.P8317121950606217898

`a(n-2)+a(n-1)*A010131(n)` with `a(0)=5, a(1)=6`
-/

namespace A041054.P8317121950606217898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 2) + a (n - 1) * A010131 n

end

end A041054.P8317121950606217898

/-!
# A041055: Denominators of continued fraction convergents to sqrt(33).

The programs for A041055, the canonical program `A041055.P5469019340177865612` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041055 has offset 0).

The definition of A041055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041055.P5469019340177865612

`46*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=43, a(5)=47, a(6)=137, a(7)=184`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041055

/-- `46*a(n-4)-a(n-8)` -/
def P5469019340177865612.Spec : Prop :=
  ∀ n, P5469019340177865612.a n = A041055 n

theorem P5469019340177865612.correct : P5469019340177865612.Spec := by
  intro n
  simp only [A041055]

end A041055

/-! ## A041055.P1732364808867060336

`a(n-2)+a(n-1)*A010131(n)` with `a(0)=1, a(1)=1`
-/

namespace A041055.P1732364808867060336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A010131 n

end

end A041055.P1732364808867060336

namespace A041055

/-- `a(n-2)+a(n-1)*A010131(n)` -/
def P1732364808867060336.Spec : Prop :=
  ∀ n, P1732364808867060336.a n = A041055 n

end A041055

/-! ## A041055.P9462665484788194502

`round(A041054(n)/sqrt(33))`
-/

namespace A041055.P9462665484788194502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041054 n : ℝ) / Real.sqrt (33 : ℝ))

end

end A041055.P9462665484788194502

namespace A041055

/-- `round(A041054(n)/sqrt(33))` -/
def P9462665484788194502.Spec : Prop :=
  ∀ n, P9462665484788194502.a n = A041055 n

end A041055

/-!
# A041056: Numerators of continued fraction convergents to sqrt(34).

The programs for A041056, there is no canonical definition to state claims against.
-/

/-! ## A041056.P255703769009610514

`a(n-2)+a(n-1)*A010132(n)` with `a(0)=5, a(1)=6`
-/

namespace A041056.P255703769009610514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 2) + a (n - 1) * A010132 n

end

end A041056.P255703769009610514

/-!
# A041057: Denominators of continued fraction convergents to sqrt(34).

The programs for A041057, the canonical program `A041057.P10209537555003920649` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041057 has offset 0).

The definition of A041057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041057.P10209537555003920649

`70*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6, a(4)=65, a(5)=71, a(6)=349, a(7)=420`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041057

/-- `70*a(n-4)-a(n-8)` -/
def P10209537555003920649.Spec : Prop :=
  ∀ n, P10209537555003920649.a n = A041057 n

theorem P10209537555003920649.correct : P10209537555003920649.Spec := by
  intro n
  simp only [A041057]

end A041057

/-! ## A041057.P13128394781606514931

`a(n-2)+a(n-1)*A010132(n)` with `a(0)=1, a(1)=1`
-/

namespace A041057.P13128394781606514931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A010132 n

end

end A041057.P13128394781606514931

namespace A041057

/-- `a(n-2)+a(n-1)*A010132(n)` -/
def P13128394781606514931.Spec : Prop :=
  ∀ n, P13128394781606514931.a n = A041057 n

end A041057

/-! ## A041057.P14834017759797813661

`round(A041056(n)/sqrt(34))`
-/

namespace A041057.P14834017759797813661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041056 n : ℝ) / Real.sqrt (34 : ℝ))

end

end A041057.P14834017759797813661

namespace A041057

/-- `round(A041056(n)/sqrt(34))` -/
def P14834017759797813661.Spec : Prop :=
  ∀ n, P14834017759797813661.a n = A041057 n

end A041057

/-!
# A041058: Numerators of continued fraction convergents to sqrt(35).

The programs for A041058, the canonical program `A041058.P5739414859851063256` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041058 has offset 0).

The definition of A041058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041058.P5739414859851063256

`12*a(n-2)-a(n-4)` with `a(0)=5, a(1)=6, a(2)=65, a(3)=71`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041058

/-- `12*a(n-2)-a(n-4)` -/
def P5739414859851063256.Spec : Prop :=
  ∀ n, P5739414859851063256.a n = A041058 n

theorem P5739414859851063256.correct : P5739414859851063256.Spec := by
  intro n
  simp only [A041058]

end A041058

/-! ## A041058.P17100984039374853354

`7*A041059(n)-A164826(n+1)`
-/

namespace A041058.P17100984039374853354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A041059 n - A164826 (n + 1)

end

end A041058.P17100984039374853354

namespace A041058

/-- `7*A041059(n)-A164826(n+1)` -/
def P17100984039374853354.Spec : Prop :=
  ∀ n, P17100984039374853354.a n = A041058 n

end A041058

/-! ## A041058.P16401138654143761043

`∪[A023038(n+1), Δ[A023038(n)]]`
-/

namespace A041058.P16401138654143761043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041058.P16401138654143761043

namespace A041058

/-- `∪[A023038(n+1), Δ[A023038(n)]]` -/
def P16401138654143761043.Spec : Prop :=
  ∀ n, (P16401138654143761043.a n : ℤ) = A041058 n

end A041058

/-! ## A041058.P238326988311617667

`∪[A023038(n+1)-A080875(2*n), A023038(n+1)]`
-/

namespace A041058.P238326988311617667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 (n + 1) - A080875 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041058.P238326988311617667

namespace A041058

/-- `∪[A023038(n+1)-A080875(2*n), A023038(n+1)]` -/
def P238326988311617667.Spec : Prop :=
  ∀ n, (P238326988311617667.a n : ℤ) = A041058 n

end A041058

/-!
# A041059: Denominators of continued fraction convergents to sqrt(35).

The programs for A041059, the canonical program `A041059.P14786905109323415709` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041059 has offset 0).

The definition of A041059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041059.P10035454542527284705

`round(A041058(n)/sqrt(35))`
-/

namespace A041059.P10035454542527284705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041058 n : ℝ) / Real.sqrt (35 : ℝ))

end

end A041059.P10035454542527284705

namespace A041059

/-- `round(A041058(n)/sqrt(35))` -/
def P10035454542527284705.Spec : Prop :=
  ∀ n, P10035454542527284705.a n = A041059 n

end A041059

/-! ## A041059.P14786905109323415709

`abs(a(n-2)-A164826(n+1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041059

/-- `abs(a(n-2)-A164826(n+1))` -/
def P14786905109323415709.Spec : Prop :=
  ∀ n, P14786905109323415709.a n = A041059 n

theorem P14786905109323415709.correct : P14786905109323415709.Spec := by
  intro n
  simp only [A041059]

end A041059

/-! ## A041059.P8029053387498957867

`(A164826(n+1)+A041058(n))/7`
-/

namespace A041059.P8029053387498957867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164826 (n + 1) + A041058 n : ℚ) / 7

end

end A041059.P8029053387498957867

namespace A041059

/-- `(A164826(n+1)+A041058(n))/7` -/
def P8029053387498957867.Spec : Prop :=
  ∀ n, P8029053387498957867.a n = (A041059 n : ℚ)

end A041059

/-! ## A041059.P12732779389078832736

`A057093(n)/A286508(n)`
-/

namespace A041059.P12732779389078832736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057093 n : ℚ) / (A286508 n : ℚ)

end

end A041059.P12732779389078832736

namespace A041059

/-- `A057093(n)/A286508(n)` -/
def P12732779389078832736.Spec : Prop :=
  ∀ n, P12732779389078832736.a n = (A041059 n : ℚ)

end A041059

/-! ## A041059.P17100930198881429285

`gcd(A164826(n+1)+A041058(n), A057093(n))`
-/

namespace A041059.P17100930198881429285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164826 (n + 1) + A041058 n) (A057093 n)

end

end A041059.P17100930198881429285

namespace A041059

/-- `gcd(A164826(n+1)+A041058(n), A057093(n))` -/
def P17100930198881429285.Spec : Prop :=
  ∀ n, (P17100930198881429285.a n : ℤ) = A041059 n

end A041059

/-! ## A041059.P6010173432370140179

`gcd(∑[A098309(n)], A004191(n))`
-/

namespace A041059.P6010173432370140179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A004191 n)

end

end A041059.P6010173432370140179

namespace A041059

/-- `gcd(∑[A098309(n)], A004191(n))` -/
def P6010173432370140179.Spec : Prop :=
  ∀ n, (P6010173432370140179.a n : ℤ) = A041059 n

end A041059

/-! ## A041059.P7321740190411306704

`A004191(n)/A164826(n+2)`
-/

namespace A041059.P7321740190411306704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004191 n : ℚ) / (A164826 (n + 2) : ℚ)

end

end A041059.P7321740190411306704

namespace A041059

/-- `A004191(n)/A164826(n+2)` -/
def P7321740190411306704.Spec : Prop :=
  ∀ n, P7321740190411306704.a n = (A041059 n : ℚ)

end A041059

/-! ## A041059.P15429383008887002373

`gcd(∑[A098309(n+1)], A098309(n+1))`
-/

namespace A041059.P15429383008887002373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A098309 (n + 1))

end

end A041059.P15429383008887002373

namespace A041059

/-- `gcd(∑[A098309(n+1)], A098309(n+1))` -/
def P15429383008887002373.Spec : Prop :=
  ∀ n, (P15429383008887002373.a n : ℤ) = A041059 n

end A041059

/-!
# A041060: Numerators of continued fraction convergents to sqrt(37).

The programs for A041060, the canonical program `A041060.P17135726797736334604` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041060 has offset 0).

The definition of A041060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041060.P17135726797736334604

`12*a(n-1)+a(n-2)` with `a(0)=6, a(1)=73`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041060

/-- `12*a(n-1)+a(n-2)` -/
def P17135726797736334604.Spec : Prop :=
  ∀ n, (P17135726797736334604.a n : ℤ) = A041060 n

theorem P17135726797736334604.correct : P17135726797736334604.Spec := by
  intro n
  simp only [A041060]

end A041060

/-! ## A041060.P317850751576805768

`ogf((6+x)/(1-12x-x^2))`
-/

namespace A041060.P317850751576805768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 1] [1, -12, -1] n

end

end A041060.P317850751576805768

namespace A041060

/-- `ogf((6+x)/(1-12x-x^2))` -/
def P317850751576805768.Spec : Prop :=
  ∀ n, P317850751576805768.a n = A041060 n

end A041060

/-! ## A041060.P1018008881024497964

`A089926(n+1)`
-/

namespace A041060.P1018008881024497964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089926 (n + 1)

end

end A041060.P1018008881024497964

namespace A041060

/-- `A089926(n+1)` -/
def P1018008881024497964.Spec : Prop :=
  ∀ n, P1018008881024497964.a n = A041060 n

end A041060

/-! ## A041060.P14021413499281723407

`A086928(n+1)/2`
-/

namespace A041060.P14021413499281723407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086928 (n + 1) : ℚ) / 2

end

end A041060.P14021413499281723407

namespace A041060

/-- `A086928(n+1)/2` -/
def P14021413499281723407.Spec : Prop :=
  ∀ n, P14021413499281723407.a n = (A041060 n : ℚ)

end A041060

/-! ## A041060.P7924350726754081194

`lcm(2, A041270(n))/2`
-/

namespace A041060.P7924350726754081194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041270 n) : ℚ) / 2

end

end A041060.P7924350726754081194

namespace A041060

/-- `lcm(2, A041270(n))/2` -/
def P7924350726754081194.Spec : Prop :=
  ∀ n, P7924350726754081194.a n = (A041060 n : ℚ)

end A041060

/-! ## A041060.P5932950550040151740

`record[A089926(abs(1-n))]`
-/

namespace A041060.P5932950550040151740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089926 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041060.P5932950550040151740

namespace A041060

/-- `record[A089926(abs(1-n))]` -/
def P5932950550040151740.Spec : Prop :=
  ∀ n, P5932950550040151740.a n = A041060 n

end A041060

/-! ## A041060.P17632953215080257397

`A042134(n)/gcd(2, n)²`
-/

namespace A041060.P17632953215080257397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042134 n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A041060.P17632953215080257397

namespace A041060

/-- `A042134(n)/gcd(2, n)²` -/
def P17632953215080257397.Spec : Prop :=
  ∀ n, P17632953215080257397.a n = (A041060 n : ℚ)

end A041060

/-! ## A041060.P13043775216480542157

`gcd(A041628(n), A042134(n))`
-/

namespace A041060.P13043775216480542157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041628 n) (A042134 n)

end

end A041060.P13043775216480542157

namespace A041060

/-- `gcd(A041628(n), A042134(n))` -/
def P13043775216480542157.Spec : Prop :=
  ∀ n, (P13043775216480542157.a n : ℤ) = A041060 n

end A041060

/-! ## A041060.P17117814968670795873

`A041270(n)/Δ[A007494(n)]`
-/

namespace A041060.P17117814968670795873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041270 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041060.P17117814968670795873

namespace A041060

/-- `A041270(n)/Δ[A007494(n)]` -/
def P17117814968670795873.Spec : Prop :=
  ∀ n, P17117814968670795873.a n = (A041060 n : ℚ)

end A041060

/-! ## A041060.P8230031347757996172

`ratio[A086928(n)]*A089926(n)`
-/

namespace A041060.P8230031347757996172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086928 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A089926 n : ℚ)

end

end A041060.P8230031347757996172

namespace A041060

/-- `ratio[A086928(n)]*A089926(n)` -/
def P8230031347757996172.Spec : Prop :=
  ∀ n, P8230031347757996172.a n = (A041060 n : ℚ)

end A041060

/-!
# A041061: Denominators of continued fraction convergents to sqrt(37).

The programs for A041061, the canonical program `A041061.P6792001639751871967` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041061 has offset 0).

The definition of A041061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041061.P6792001639751871967

`12*a(n-1)+a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041061

/-- `12*a(n-1)+a(n-2)` -/
def P6792001639751871967.Spec : Prop :=
  ∀ n, (P6792001639751871967.a n : ℤ) = A041061 n

theorem P6792001639751871967.correct : P6792001639751871967.Spec := by
  intro n
  simp only [A041061]

end A041061

/-! ## A041061.P12491874396161050562

`((6+sqrt(37))^(n+1)-(6-sqrt(37))^(n+1))/(2*sqrt(37))`
-/

namespace A041061.P12491874396161050562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (37 : ℝ)) ^ (n + 1) - (6 - Real.sqrt (37 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (37 : ℝ))

end

end A041061.P12491874396161050562

namespace A041061

/-- `((6+sqrt(37))^(n+1)-(6-sqrt(37))^(n+1))/(2*sqrt(37))` -/
def P12491874396161050562.Spec : Prop :=
  ∀ n, P12491874396161050562.a n = (A041061 n : ℝ)

theorem P12491874396161050562.correct : P12491874396161050562.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A041061, Nat.add_sub_cancel, A041061.P12491874396161050562.a, A041061.P6792001639751871967.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A041061, Nat.add_sub_cancel, A041061.P12491874396161050562.a, A041061.P6792001639751871967.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A041061

/-! ## A041061.P4909502038523208508

`ogf(1/(1-12x-x^2))`
-/

namespace A041061.P4909502038523208508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, -1] n

end

end A041061.P4909502038523208508

namespace A041061

/-- `ogf(1/(1-12x-x^2))` -/
def P4909502038523208508.Spec : Prop :=
  ∀ n, P4909502038523208508.a n = A041061 n

end A041061

/-! ## A041061.P1456131837750721569

`A089926(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A041061.P1456131837750721569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089926 n + 6 * a (n - 1)

end

end A041061.P1456131837750721569

namespace A041061

/-- `A089926(n)+6*a(n-1)` -/
def P1456131837750721569.Spec : Prop :=
  ∀ n, P1456131837750721569.a n = A041061 n

end A041061

/-! ## A041061.P18411671859427128658

`A000034(n)*A041271(n)`
-/

namespace A041061.P18411671859427128658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041271 n

end

end A041061.P18411671859427128658

namespace A041061

/-- `A000034(n)*A041271(n)` -/
def P18411671859427128658.Spec : Prop :=
  ∀ n, P18411671859427128658.a n = A041061 n

end A041061

/-! ## A041061.P17752209890465211534

`A000034(n)²*A042135(n)`
-/

namespace A041061.P17752209890465211534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A042135 n

end

end A041061.P17752209890465211534

namespace A041061

/-- `A000034(n)²*A042135(n)` -/
def P17752209890465211534.Spec : Prop :=
  ∀ n, P17752209890465211534.a n = A041061 n

end A041061

/-! ## A041061.P13812653502562704609

`Δ[A042948(n)]*A041629(n)`
-/

namespace A041061.P13812653502562704609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041629 n

end

end A041061.P13812653502562704609

namespace A041061

/-- `Δ[A042948(n)]*A041629(n)` -/
def P13812653502562704609.Spec : Prop :=
  ∀ n, P13812653502562704609.a n = A041061 n

end A041061

/-! ## A041061.P1694278858138547896

`(A000035(n)+1)*A041271(n)`
-/

namespace A041061.P1694278858138547896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041271 n

end

end A041061.P1694278858138547896

namespace A041061

/-- `(A000035(n)+1)*A041271(n)` -/
def P1694278858138547896.Spec : Prop :=
  ∀ n, P1694278858138547896.a n = A041061 n

end A041061

/-! ## A041061.P11320721561802046402

`gcd(2, A016777(n))*A041271(n)`
-/

namespace A041061.P11320721561802046402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A016777 n) : ℤ) * A041271 n

end

end A041061.P11320721561802046402

namespace A041061

/-- `gcd(2, A016777(n))*A041271(n)` -/
def P11320721561802046402.Spec : Prop :=
  ∀ n, P11320721561802046402.a n = A041061 n

end A041061

/-! ## A041061.P4099297838886962078

`(Δ[A008619(n)]+1)*A041271(n)`
-/

namespace A041061.P4099297838886962078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041271 n

end

end A041061.P4099297838886962078

namespace A041061

/-- `(Δ[A008619(n)]+1)*A041271(n)` -/
def P4099297838886962078.Spec : Prop :=
  ∀ n, P4099297838886962078.a n = A041061 n

end A041061

/-!
# A041062: Numerators of continued fraction convergents to sqrt(38).

The programs for A041062, there is no canonical definition to state claims against.
-/

/-! ## A041062.P15483695269731466282

`lcm(2, A041278(n))/2`
-/

namespace A041062.P15483695269731466282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041278 n) : ℚ) / 2

end

end A041062.P15483695269731466282

/-! ## A041062.P9377268119732976662

`A041646(n)/Δ[A014601(n)]`
-/

namespace A041062.P9377268119732976662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041646 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041062.P9377268119732976662

/-! ## A041062.P15080567779719120135

`A041278(n)/A000034(n+1)`
-/

namespace A041062.P15080567779719120135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041278 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041062.P15080567779719120135

/-! ## A041062.P2483525499451978672

`A041278(n)/A084642(n+3)`
-/

namespace A041062.P2483525499451978672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041278 n : ℚ) / (A084642 (n + 3) : ℚ)

end

end A041062.P2483525499451978672

/-! ## A041062.P871693181529782644

`A000034(n)/2*A041278(n)`
-/

namespace A041062.P871693181529782644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041278 n : ℚ)

end

end A041062.P871693181529782644

/-! ## A041062.P1747572108990561812

`A041278(n)/A010144(A016789(n))`
-/

namespace A041062.P1747572108990561812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041278 n : ℚ) / (A010144 (A016789 n).toNat : ℚ)

end

end A041062.P1747572108990561812

/-!
# A041063: Denominators of continued fraction convergents to sqrt(38).

The programs for A041063, the canonical program `A041063.P8465138005355590023` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041063 has offset 0).

The definition of A041063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041063.P8465138005355590023

`74*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=73, a(3)=444`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041063

/-- `74*a(n-2)-a(n-4)` -/
def P8465138005355590023.Spec : Prop :=
  ∀ n, P8465138005355590023.a n = A041063 n

theorem P8465138005355590023.correct : P8465138005355590023.Spec := by
  intro n
  simp only [A041063]

end A041063

/-! ## A041063.P9600380200623347475

`A000034(n)*A041279(n)`
-/

namespace A041063.P9600380200623347475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041279 n

end

end A041063.P9600380200623347475

namespace A041063

/-- `A000034(n)*A041279(n)` -/
def P9600380200623347475.Spec : Prop :=
  ∀ n, P9600380200623347475.a n = A041063 n

end A041063

/-! ## A041063.P4652573713990187417

`Δ[A032766(n)]*A041279(n)`
-/

namespace A041063.P4652573713990187417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041279 n

end

end A041063.P4652573713990187417

namespace A041063

/-- `Δ[A032766(n)]*A041279(n)` -/
def P4652573713990187417.Spec : Prop :=
  ∀ n, P4652573713990187417.a n = A041063 n

end A041063

/-! ## A041063.P16608707788101086279

`A001511(A007947(n+1))*A041279(n)`
-/

namespace A041063.P16608707788101086279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A007947 (n + 1)).toNat * A041279 n

end

end A041063.P16608707788101086279

namespace A041063

/-- `A001511(A007947(n+1))*A041279(n)` -/
def P16608707788101086279.Spec : Prop :=
  ∀ n, P16608707788101086279.a n = A041063 n

end A041063

/-! ## A041063.P11866703298680603572

`A007947(A006519(n+1))*A041279(n)`
-/

namespace A041063.P11866703298680603572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A006519 (n + 1)).toNat * A041279 n

end

end A041063.P11866703298680603572

namespace A041063

/-- `A007947(A006519(n+1))*A041279(n)` -/
def P11866703298680603572.Spec : Prop :=
  ∀ n, P11866703298680603572.a n = A041063 n

end A041063

/-! ## A041063.P12281113568220724744

`A001511(n²+1)*A041279(n)`
-/

namespace A041063.P12281113568220724744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 1) * A041279 n

end

end A041063.P12281113568220724744

namespace A041063

/-- `A001511(n²+1)*A041279(n)` -/
def P12281113568220724744.Spec : Prop :=
  ∀ n, P12281113568220724744.a n = A041063 n

end A041063

/-! ## A041063.P12092687871407821609

`A006519(n²+1)*A041279(n)`
-/

namespace A041063.P12092687871407821609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041279 n

end

end A041063.P12092687871407821609

namespace A041063

/-- `A006519(n²+1)*A041279(n)` -/
def P12092687871407821609.Spec : Prop :=
  ∀ n, P12092687871407821609.a n = A041063 n

end A041063

/-!
# A041064: Numerators of continued fraction convergents to sqrt(39).

The programs for A041064, there is no canonical definition to state claims against.
-/

/-! ## A041064.P4768191706096798262

`A041286(n)/gcd(2, n)`
-/

namespace A041064.P4768191706096798262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041286 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041064.P4768191706096798262

/-! ## A041064.P12041774024976410335

`A041286(n)/Δ[A007494(n)]`
-/

namespace A041064.P12041774024976410335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041286 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041064.P12041774024976410335

/-! ## A041064.P16138510953567515315

`A041286(n)/A000034(n+1)`
-/

namespace A041064.P16138510953567515315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041286 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041064.P16138510953567515315

/-! ## A041064.P17846130697573790279

`A041286(n)/A134451(n+2)`
-/

namespace A041064.P17846130697573790279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041286 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041064.P17846130697573790279

/-! ## A041064.P4032270689795392646

`A000034(n)/2*A041286(n)`
-/

namespace A041064.P4032270689795392646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041286 n : ℚ)

end

end A041064.P4032270689795392646

/-! ## A041064.P12185865056967392361

`A041286(n)/A014710(2*n)`
-/

namespace A041064.P12185865056967392361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041286 n : ℚ) / (A014710 (2 * n) : ℚ)

end

end A041064.P12185865056967392361

/-! ## A041064.P15618676431522375083

`A042198(n)/Δ[A007494(n)]²`
-/

namespace A041064.P15618676431522375083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042198 n : ℚ) / ((f1 (n + 1) - f1 n) ^ 2 : ℚ)

end

end A041064.P15618676431522375083

/-! ## A041064.P11188152529999676167

`1/A134451(A144619(n))*A041286(n)`
-/

namespace A041064.P11188152529999676167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A134451 (A144619 n).toNat : ℚ) * (A041286 n : ℚ)

end

end A041064.P11188152529999676167

/-!
# A041065: Denominators of continued fraction convergents to sqrt(39).

The programs for A041065, the canonical program `A041065.P13304649898035522845` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041065 has offset 0).

The definition of A041065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041065.P13304649898035522845

`50*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=49, a(3)=200`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041065

/-- `50*a(n-2)-a(n-4)` -/
def P13304649898035522845.Spec : Prop :=
  ∀ n, P13304649898035522845.a n = A041065 n

theorem P13304649898035522845.correct : P13304649898035522845.Spec := by
  intro n
  simp only [A041065]

end A041065

/-! ## A041065.P7414609514578672134

`A000034(n)*A041287(n)`
-/

namespace A041065.P7414609514578672134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041287 n

end

end A041065.P7414609514578672134

namespace A041065

/-- `A000034(n)*A041287(n)` -/
def P7414609514578672134.Spec : Prop :=
  ∀ n, P7414609514578672134.a n = A041065 n

end A041065

/-! ## A041065.P3086127722345040374

`A000034(n)²*A042199(n)`
-/

namespace A041065.P3086127722345040374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A042199 n

end

end A041065.P3086127722345040374

namespace A041065

/-- `A000034(n)²*A042199(n)` -/
def P3086127722345040374.Spec : Prop :=
  ∀ n, P3086127722345040374.a n = A041065 n

end A041065

/-! ## A041065.P8671825055242763038

`(A000035(n)+1)*A041287(n)`
-/

namespace A041065.P8671825055242763038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041287 n

end

end A041065.P8671825055242763038

namespace A041065

/-- `(A000035(n)+1)*A041287(n)` -/
def P8671825055242763038.Spec : Prop :=
  ∀ n, P8671825055242763038.a n = A041065 n

end A041065

/-! ## A041065.P4789850960434073833

`A041287(n)*A134451(n+1)`
-/

namespace A041065.P4789850960434073833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041287 n * A134451 (n + 1)

end

end A041065.P4789850960434073833

namespace A041065

/-- `A041287(n)*A134451(n+1)` -/
def P4789850960434073833.Spec : Prop :=
  ∀ n, P4789850960434073833.a n = A041065 n

end A041065

/-! ## A041065.P17104725160293926259

`A134451(n+1)²*A042199(n)`
-/

namespace A041065.P17104725160293926259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) ^ 2 * A042199 n

end

end A041065.P17104725160293926259

namespace A041065

/-- `A134451(n+1)²*A042199(n)` -/
def P17104725160293926259.Spec : Prop :=
  ∀ n, P17104725160293926259.a n = A041065 n

end A041065

/-! ## A041065.P17477726323915715292

`A318454(n²+1)*A041287(n)`
-/

namespace A041065.P17477726323915715292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318454 (n ^ 2 + 1) * A041287 n

end

end A041065.P17477726323915715292

namespace A041065

/-- `A318454(n²+1)*A041287(n)` -/
def P17477726323915715292.Spec : Prop :=
  ∀ n, P17477726323915715292.a n = A041065 n

end A041065

/-! ## A041065.P18160222199239830774

`A014710(2*(n+1))*A041287(n)`
-/

namespace A041065.P18160222199239830774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (2 * (n + 1)) * A041287 n

end

end A041065.P18160222199239830774

namespace A041065

/-- `A014710(2*(n+1))*A041287(n)` -/
def P18160222199239830774.Spec : Prop :=
  ∀ n, P18160222199239830774.a n = A041065 n

end A041065

/-! ## A041065.P17944269430883992025

`A034444(A006519(n+1))*A041287(n)`
-/

namespace A041065.P17944269430883992025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A006519 (n + 1)).toNat * A041287 n

end

end A041065.P17944269430883992025

namespace A041065

/-- `A034444(A006519(n+1))*A041287(n)` -/
def P17944269430883992025.Spec : Prop :=
  ∀ n, P17944269430883992025.a n = A041065 n

end A041065

/-! ## A041065.P10138498457589971902

`A034444(A318454(n+1))*A041287(n)`
-/

namespace A041065.P10138498457589971902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A318454 (n + 1)).toNat * A041287 n

end

end A041065.P10138498457589971902

namespace A041065

/-- `A034444(A318454(n+1))*A041287(n)` -/
def P10138498457589971902.Spec : Prop :=
  ∀ n, P10138498457589971902.a n = A041065 n

end A041065

/-! ## A041065.P14179342763277073528

`A150928(Δ[A008619(n)])²*A042199(n)`
-/

namespace A041065.P14179342763277073528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150928 (f1 (n + 1) - f1 n).toNat ^ 2 * A042199 n

end

end A041065.P14179342763277073528

namespace A041065

/-- `A150928(Δ[A008619(n)])²*A042199(n)` -/
def P14179342763277073528.Spec : Prop :=
  ∀ n, P14179342763277073528.a n = A041065 n

end A041065

/-! ## A041065.P4754898500369445276

`A005811(A006519(n+1))²*A042199(n)`
-/

namespace A041065.P4754898500369445276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006519 (n + 1)).toNat ^ 2 * A042199 n

end

end A041065.P4754898500369445276

namespace A041065

/-- `A005811(A006519(n+1))²*A042199(n)` -/
def P4754898500369445276.Spec : Prop :=
  ∀ n, P4754898500369445276.a n = A041065 n

end A041065

/-! ## A041065.P11572847889653738741

`A040001(n+1)*A040001(n+1)*A042199(n)`
-/

namespace A041065.P11572847889653738741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A040001 (n + 1) * A042199 n

end

end A041065.P11572847889653738741

namespace A041065

/-- `A040001(n+1)*A040001(n+1)*A042199(n)` -/
def P11572847889653738741.Spec : Prop :=
  ∀ n, P11572847889653738741.a n = A041065 n

end A041065

/-! ## A041065.P8684611367740404071

`A006519(n²+1)*A041287(n)`
-/

namespace A041065.P8684611367740404071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041287 n

end

end A041065.P8684611367740404071

namespace A041065

/-- `A006519(n²+1)*A041287(n)` -/
def P8684611367740404071.Spec : Prop :=
  ∀ n, P8684611367740404071.a n = A041065 n

end A041065

/-! ## A041065.P15914762035670548479

`A006519(n²+3)*A042199(n)`
-/

namespace A041065.P15914762035670548479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 3) * A042199 n

end

end A041065.P15914762035670548479

namespace A041065

/-- `A006519(n²+3)*A042199(n)` -/
def P15914762035670548479.Spec : Prop :=
  ∀ n, P15914762035670548479.a n = A041065 n

end A041065

/-!
# A041066: Numerators of continued fraction convergents to sqrt(40).

The programs for A041066, the canonical program `A041066.P3038756905313364917` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041066 has offset 0).

The definition of A041066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041066.P5418148243599542794

`lcm(3, A041682(n))/3`
-/

namespace A041066.P5418148243599542794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A041682 n) : ℚ) / 3

end

end A041066.P5418148243599542794

namespace A041066

/-- `lcm(3, A041682(n))/3` -/
def P5418148243599542794.Spec : Prop :=
  ∀ n, P5418148243599542794.a n = (A041066 n : ℚ)

end A041066

/-! ## A041066.P3038756905313364917

`gcd(2, n)*A005667(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041066

/-- `gcd(2, n)*A005667(n+1)` -/
def P3038756905313364917.Spec : Prop :=
  ∀ n, P3038756905313364917.a n = A041066 n

theorem P3038756905313364917.correct : P3038756905313364917.Spec := by
  intro n
  simp only [A041066]

end A041066

/-! ## A041066.P12736294243358090175

`A085447(n+1)/A000034(n)`
-/

namespace A041066.P12736294243358090175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085447 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041066.P12736294243358090175

namespace A041066

/-- `A085447(n+1)/A000034(n)` -/
def P12736294243358090175.Spec : Prop :=
  ∀ n, P12736294243358090175.a n = (A041066 n : ℚ)

end A041066

/-! ## A041066.P323793276096306226

`A041682(n)/A276391(n²+2)`
-/

namespace A041066.P323793276096306226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041682 n : ℚ) / (A276391 (n ^ 2 + 2) : ℚ)

end

end A041066.P323793276096306226

namespace A041066

/-- `A041682(n)/A276391(n²+2)` -/
def P323793276096306226.Spec : Prop :=
  ∀ n, P323793276096306226.a n = (A041066 n : ℚ)

end A041066

/-! ## A041066.P11713496353502436719

`A000034(n+1)*A005667(n+1)`
-/

namespace A041066.P11713496353502436719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A005667 (n + 1)

end

end A041066.P11713496353502436719

namespace A041066

/-- `A000034(n+1)*A005667(n+1)` -/
def P11713496353502436719.Spec : Prop :=
  ∀ n, P11713496353502436719.a n = A041066 n

end A041066

/-! ## A041066.P8064061320031545348

`A040001(n+2)*A228471(2*n)`
-/

namespace A041066.P8064061320031545348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A228471 (2 * n)

end

end A041066.P8064061320031545348

namespace A041066

/-- `A040001(n+2)*A228471(2*n)` -/
def P8064061320031545348.Spec : Prop :=
  ∀ n, P8064061320031545348.a n = A041066 n

end A041066

/-! ## A041066.P12890047995997796057

`A041682(n)/gcd(3, A041067(n+1))`
-/

namespace A041066.P12890047995997796057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041682 n : ℚ) / (Int.gcd 3 (A041067 (n + 1)) : ℚ)

end

end A041066.P12890047995997796057

namespace A041066

/-- `A041682(n)/gcd(3, A041067(n+1))` -/
def P12890047995997796057.Spec : Prop :=
  ∀ n, P12890047995997796057.a n = (A041066 n : ℚ)

end A041066

/-! ## A041066.P8368714443769742783

`A005667(n+1)/A142238(n)*A041006(n)`
-/

namespace A041066.P8368714443769742783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005667 (n + 1) : ℚ) / (A142238 n : ℚ) * (A041006 n : ℚ)

end

end A041066.P8368714443769742783

namespace A041066

/-- `A005667(n+1)/A142238(n)*A041006(n)` -/
def P8368714443769742783.Spec : Prop :=
  ∀ n, P8368714443769742783.a n = (A041066 n : ℚ)

end A041066

/-! ## A041066.P5354401588729727311

`(A005667(n+1)+A005667(n+1))/A000034(n)`
-/

namespace A041066.P5354401588729727311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005667 (n + 1) + A005667 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041066.P5354401588729727311

namespace A041066

/-- `(A005667(n+1)+A005667(n+1))/A000034(n)` -/
def P5354401588729727311.Spec : Prop :=
  ∀ n, P5354401588729727311.a n = (A041066 n : ℚ)

end A041066

/-! ## A041066.P5577034614044288294

`A005667(n+1)/A001333(n+1)*A041010(n)`
-/

namespace A041066.P5577034614044288294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005667 (n + 1) : ℚ) / (A001333 (n + 1) : ℚ) * (A041010 n : ℚ)

end

end A041066.P5577034614044288294

namespace A041066

/-- `A005667(n+1)/A001333(n+1)*A041010(n)` -/
def P5577034614044288294.Spec : Prop :=
  ∀ n, P5577034614044288294.a n = (A041066 n : ℚ)

end A041066

/-! ## A041066.P4696231417971147629

`A005667(n+1)+A000035(n+1)*A005667(n+1)`
-/

namespace A041066.P4696231417971147629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005667 (n + 1) + A000035 (n + 1) * A005667 (n + 1)

end

end A041066.P4696231417971147629

namespace A041066

/-- `A005667(n+1)+A000035(n+1)*A005667(n+1)` -/
def P4696231417971147629.Spec : Prop :=
  ∀ n, P4696231417971147629.a n = A041066 n

end A041066

/-!
# A041067: Denominators of continued fraction convergents to sqrt(40).

The programs for A041067, the canonical program `A041067.P12079072612470164182` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041067 has offset 0).

The definition of A041067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041067.P12079072612470164182

`38*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=37, a(3)=114`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041067

/-- `38*a(n-2)-a(n-4)` -/
def P12079072612470164182.Spec : Prop :=
  ∀ n, P12079072612470164182.a n = A041067 n

theorem P12079072612470164182.correct : P12079072612470164182.Spec := by
  intro n
  simp only [A041067]

end A041067

/-! ## A041067.P17996348545386421572

`Δ[A042948(n)]*A041683(n)`
-/

namespace A041067.P17996348545386421572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041683 n

end

end A041067.P17996348545386421572

namespace A041067

/-- `Δ[A042948(n)]*A041683(n)` -/
def P17996348545386421572.Spec : Prop :=
  ∀ n, P17996348545386421572.a n = A041067 n

end A041067

/-! ## A041067.P2211157160218801958

`A041683(n)*A192909(Δ[or(1, n)])`
-/

namespace A041067.P2211157160218801958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041683 n * A192909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A041067.P2211157160218801958

namespace A041067

/-- `A041683(n)*A192909(Δ[or(1, n)])` -/
def P2211157160218801958.Spec : Prop :=
  ∀ n, P2211157160218801958.a n = A041067 n

end A041067

/-! ## A041067.P2165361479246980462

`A041683(n)*A276391(A002522(n))`
-/

namespace A041067.P2165361479246980462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041683 n * A276391 (A002522 n).toNat

end

end A041067.P2165361479246980462

namespace A041067

/-- `A041683(n)*A276391(A002522(n))` -/
def P2165361479246980462.Spec : Prop :=
  ∀ n, P2165361479246980462.a n = A041067 n

end A041067

/-! ## A041067.P4818451311216908063

`A041161(n)+A041161(n)-A041683(n)`
-/

namespace A041067.P4818451311216908063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041161 n + (A041161 n - A041683 n)

end

end A041067.P4818451311216908063

namespace A041067

/-- `A041161(n)+A041161(n)-A041683(n)` -/
def P4818451311216908063.Spec : Prop :=
  ∀ n, P4818451311216908063.a n = A041067 n

end A041067

/-! ## A041067.P13364733047297947091

`(A041683(n)+A041161(n))/A040001(n+2)`
-/

namespace A041067.P13364733047297947091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041683 n + A041161 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041067.P13364733047297947091

namespace A041067

/-- `(A041683(n)+A041161(n))/A040001(n+2)` -/
def P13364733047297947091.Spec : Prop :=
  ∀ n, P13364733047297947091.a n = (A041067 n : ℚ)

end A041067

/-! ## A041067.P6811959422922110526

`A005668(n+1)/A000034(n)`
-/

namespace A041067.P6811959422922110526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041067.P6811959422922110526

namespace A041067

/-- `A005668(n+1)/A000034(n)` -/
def P6811959422922110526.Spec : Prop :=
  ∀ n, P6811959422922110526.a n = (A041067 n : ℚ)

end A041067

/-! ## A041067.P10737414825637138402

`2*A041161(n)-A041683(n)`
-/

namespace A041067.P10737414825637138402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041161 n - A041683 n

end

end A041067.P10737414825637138402

namespace A041067

/-- `2*A041161(n)-A041683(n)` -/
def P10737414825637138402.Spec : Prop :=
  ∀ n, P10737414825637138402.a n = A041067 n

end A041067

/-! ## A041067.P10373957980183635984

`A005668(n+1)/(A109613(n+1)-n)`
-/

namespace A041067.P10373957980183635984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 (n + 1) : ℚ) / (A109613 (n + 1) - (n : ℤ) : ℚ)

end

end A041067.P10373957980183635984

namespace A041067

/-- `A005668(n+1)/(A109613(n+1)-n)` -/
def P10373957980183635984.Spec : Prop :=
  ∀ n, P10373957980183635984.a n = (A041067 n : ℚ)

end A041067

/-! ## A041067.P1763060655176046802

`A005668(n+1)/A006519(A266303(n))`
-/

namespace A041067.P1763060655176046802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 (n + 1) : ℚ) / (A006519 (A266303 n).toNat : ℚ)

end

end A041067.P1763060655176046802

namespace A041067

/-- `A005668(n+1)/A006519(A266303(n))` -/
def P1763060655176046802.Spec : Prop :=
  ∀ n, P1763060655176046802.a n = (A041067 n : ℚ)

end A041067

/-! ## A041067.P11633134936474094465

`A005668(n+1)/A266303(A266303(n+1))`
-/

namespace A041067.P11633134936474094465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 (n + 1) : ℚ) / (A266303 (A266303 (n + 1)).toNat : ℚ)

end

end A041067.P11633134936474094465

namespace A041067

/-- `A005668(n+1)/A266303(A266303(n+1))` -/
def P11633134936474094465.Spec : Prop :=
  ∀ n, P11633134936474094465.a n = (A041067 n : ℚ)

end A041067

/-! ## A041067.P11305007246597392923

`gcd(3, 1-A041682(n))*A041683(n)`
-/

namespace A041067.P11305007246597392923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (1 - A041682 n) : ℤ) * A041683 n

end

end A041067.P11305007246597392923

namespace A041067

/-- `gcd(3, 1-A041682(n))*A041683(n)` -/
def P11305007246597392923.Spec : Prop :=
  ∀ n, P11305007246597392923.a n = A041067 n

end A041067

/-!
# A041068: Numerators of continued fraction convergents to sqrt(41).

The programs for A041068, there is no canonical definition to state claims against.
-/

/-! ## A041068.P17113979199782230144

`A041302(n)/gcd(2, n)`
-/

namespace A041068.P17113979199782230144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041068.P17113979199782230144

/-! ## A041068.P3393597249744900217

`A041302(n)/Δ[A007494(n)]`
-/

namespace A041068.P3393597249744900217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041068.P3393597249744900217

/-! ## A041068.P12724171584399521997

`A041302(n)/A000034(n+1)`
-/

namespace A041068.P12724171584399521997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041068.P12724171584399521997

/-! ## A041068.P12367079641364094559

`A000034(n)/2*A041302(n)`
-/

namespace A041068.P12367079641364094559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041302 n : ℚ)

end

end A041068.P12367079641364094559

/-! ## A041068.P3500653257477428406

`A041302(n)/A035214(A019432(n))`
-/

namespace A041068.P3500653257477428406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (A035214 (A019432 n).toNat : ℚ)

end

end A041068.P3500653257477428406

/-! ## A041068.P16070446374716045870

`A041302(n)/A230850(A327832(n+1))`
-/

namespace A041068.P16070446374716045870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (A230850 (A327832 (n + 1)).toNat : ℚ)

end

end A041068.P16070446374716045870

/-! ## A041068.P10274530038535355139

`A041302(n)/A327832(A327832(n+1)+1)`
-/

namespace A041068.P10274530038535355139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (A327832 (A327832 (n + 1) + 1).toNat : ℚ)

end

end A041068.P10274530038535355139

/-! ## A041068.P1601003133519208615

`A041302(n)/A155997(A000096(n))`
-/

namespace A041068.P1601003133519208615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (A155997 (A000096 n).toNat : ℚ)

end

end A041068.P1601003133519208615

/-! ## A041068.P1137338724990926106

`A041302(n)/A327832(n²+10)`
-/

namespace A041068.P1137338724990926106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041302 n : ℚ) / (A327832 (n ^ 2 + 10) : ℚ)

end

end A041068.P1137338724990926106

/-!
# A041069: Denominators of continued fraction convergents to sqrt(41).

The programs for A041069, the canonical program `A041069.P4475804458947785772` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041069 has offset 0).

The definition of A041069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041069.P4475804458947785772

`64*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=62, a(4)=129, a(5)=320`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041069

/-- `64*a(n-3)+a(n-6)` -/
def P4475804458947785772.Spec : Prop :=
  ∀ n, (P4475804458947785772.a n : ℤ) = A041069 n

theorem P4475804458947785772.correct : P4475804458947785772.Spec := by
  intro n
  simp only [A041069]

end A041069

/-! ## A041069.P13956367397269939722

`A000034(n)*A041303(n)`
-/

namespace A041069.P13956367397269939722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041303 n

end

end A041069.P13956367397269939722

namespace A041069

/-- `A000034(n)*A041303(n)` -/
def P13956367397269939722.Spec : Prop :=
  ∀ n, P13956367397269939722.a n = A041069 n

end A041069

/-! ## A041069.P15193060707043062633

`A040001(n+1)*A041303(n)`
-/

namespace A041069.P15193060707043062633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041303 n

end

end A041069.P15193060707043062633

namespace A041069

/-- `A040001(n+1)*A041303(n)` -/
def P15193060707043062633.Spec : Prop :=
  ∀ n, P15193060707043062633.a n = A041069 n

end A041069

/-! ## A041069.P7349246780432965650

`Δ[A001651(n+1)]*A041303(n)`
-/

namespace A041069.P7349246780432965650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041303 n

end

end A041069.P7349246780432965650

namespace A041069

/-- `Δ[A001651(n+1)]*A041303(n)` -/
def P7349246780432965650.Spec : Prop :=
  ∀ n, P7349246780432965650.a n = A041069 n

end A041069

/-! ## A041069.P14358323355511098610

`A041303(n)*A329900(A002522(n))`
-/

namespace A041069.P14358323355511098610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041303 n * A329900 (A002522 n).toNat

end

end A041069.P14358323355511098610

namespace A041069

/-- `A041303(n)*A329900(A002522(n))` -/
def P14358323355511098610.Spec : Prop :=
  ∀ n, P14358323355511098610.a n = A041069 n

end A041069

/-! ## A041069.P422475104044306407

`A006530(A006519(n+1))*A041303(n)`
-/

namespace A041069.P422475104044306407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006519 (n + 1)).toNat * A041303 n

end

end A041069.P422475104044306407

namespace A041069

/-- `A006530(A006519(n+1))*A041303(n)` -/
def P422475104044306407.Spec : Prop :=
  ∀ n, P422475104044306407.a n = A041069 n

end A041069

/-! ## A041069.P9281784710085440043

`(A052938(n)-A110654(n))*A041303(n)`
-/

namespace A041069.P9281784710085440043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052938 n - A110654 n) * A041303 n

end

end A041069.P9281784710085440043

namespace A041069

/-- `(A052938(n)-A110654(n))*A041303(n)` -/
def P9281784710085440043.Spec : Prop :=
  ∀ n, P9281784710085440043.a n = A041069 n

end A041069

/-! ## A041069.P9891323160585184030

`A006519(n²+1)*A041303(n)`
-/

namespace A041069.P9891323160585184030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041303 n

end

end A041069.P9891323160585184030

namespace A041069

/-- `A006519(n²+1)*A041303(n)` -/
def P9891323160585184030.Spec : Prop :=
  ∀ n, P9891323160585184030.a n = A041069 n

end A041069

/-!
# A041070: Numerators of continued fraction convergents to sqrt(42).

The programs for A041070, there is no canonical definition to state claims against.
-/

/-! ## A041070.P9776013935867038398

`A041310(n)/gcd(2, n)`
-/

namespace A041070.P9776013935867038398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041070.P9776013935867038398

/-! ## A041070.P6781759376570030780

`A041310(n)/A000034(n+1)`
-/

namespace A041070.P6781759376570030780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041070.P6781759376570030780

/-! ## A041070.P10335752169039300527

`A041310(n)/A040001(n+2)`
-/

namespace A041070.P10335752169039300527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041070.P10335752169039300527

/-! ## A041070.P16415164401892499967

`A041310(n)/A134451(n+2)`
-/

namespace A041070.P16415164401892499967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041070.P16415164401892499967

/-! ## A041070.P1821021252748494275

`A000034(n)/2*A041310(n)`
-/

namespace A041070.P1821021252748494275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041310 n : ℚ)

end

end A041070.P1821021252748494275

/-! ## A041070.P5389783111432325660

`A041310(n)/A014710(2*n)`
-/

namespace A041070.P5389783111432325660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A014710 (2 * n) : ℚ)

end

end A041070.P5389783111432325660

/-! ## A041070.P2370624331724661489

`A041310(n)/A131718(A016789(n))`
-/

namespace A041070.P2370624331724661489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A131718 (A016789 n).toNat : ℚ)

end

end A041070.P2370624331724661489

/-! ## A041070.P7047527793912962969

`A041310(n)/A014963(A006519(n+2))`
-/

namespace A041070.P7047527793912962969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A014963 (A006519 (n + 2)).toNat : ℚ)

end

end A041070.P7047527793912962969

/-! ## A041070.P15143740178803878042

`A041310(n)/A006519(A006519(n+1)+1)`
-/

namespace A041070.P15143740178803878042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A006519 (A006519 (n + 1) + 1).toNat : ℚ)

end

end A041070.P15143740178803878042

/-! ## A041070.P1392453811526205868

`A041310(n)/A006519(n²+2)`
-/

namespace A041070.P1392453811526205868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041310 n : ℚ) / (A006519 (n ^ 2 + 2) : ℚ)

end

end A041070.P1392453811526205868

/-!
# A041071: Denominators of continued fraction convergents to sqrt(42).

The programs for A041071, the canonical program `A041071.P12381320668189739814` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041071 has offset 0).

The definition of A041071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041071.P12381320668189739814

`26*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=25, a(3)=52`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041071

/-- `26*a(n-2)-a(n-4)` -/
def P12381320668189739814.Spec : Prop :=
  ∀ n, P12381320668189739814.a n = A041071 n

theorem P12381320668189739814.correct : P12381320668189739814.Spec := by
  intro n
  simp only [A041071]

end A041071

/-! ## A041071.P3664990396436358804

`gcd(2, n+1)*A041311(n)`
-/

namespace A041071.P3664990396436358804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A041311 n

end

end A041071.P3664990396436358804

namespace A041071

/-- `gcd(2, n+1)*A041311(n)` -/
def P3664990396436358804.Spec : Prop :=
  ∀ n, P3664990396436358804.a n = A041071 n

end A041071

/-! ## A041071.P4129508636083064249

`A000034(n)*A041311(n)`
-/

namespace A041071.P4129508636083064249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041311 n

end

end A041071.P4129508636083064249

namespace A041071

/-- `A000034(n)*A041311(n)` -/
def P4129508636083064249.Spec : Prop :=
  ∀ n, P4129508636083064249.a n = A041071 n

end A041071

/-! ## A041071.P7022786004953945156

`(A000035(n)+1)*A041311(n)`
-/

namespace A041071.P7022786004953945156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041311 n

end

end A041071.P7022786004953945156

namespace A041071

/-- `(A000035(n)+1)*A041311(n)` -/
def P7022786004953945156.Spec : Prop :=
  ∀ n, P7022786004953945156.a n = A041071 n

end A041071

/-! ## A041071.P7073036972989903915

`A040001(n+1)*A041311(n)`
-/

namespace A041071.P7073036972989903915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041311 n

end

end A041071.P7073036972989903915

namespace A041071

/-- `A040001(n+1)*A041311(n)` -/
def P7073036972989903915.Spec : Prop :=
  ∀ n, P7073036972989903915.a n = A041071 n

end A041071

/-! ## A041071.P14853162562377542050

`A041311(n)*A134451(n+1)`
-/

namespace A041071.P14853162562377542050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 n * A134451 (n + 1)

end

end A041071.P14853162562377542050

namespace A041071

/-- `A041311(n)*A134451(n+1)` -/
def P14853162562377542050.Spec : Prop :=
  ∀ n, P14853162562377542050.a n = A041071 n

end A041071

/-! ## A041071.P1190649017383120424

`A041311(n)*A084642(n+2)`
-/

namespace A041071.P1190649017383120424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 n * A084642 (n + 2)

end

end A041071.P1190649017383120424

namespace A041071

/-- `A041311(n)*A084642(n+2)` -/
def P1190649017383120424.Spec : Prop :=
  ∀ n, P1190649017383120424.a n = A041071 n

end A041071

/-! ## A041071.P8572443666508296488

`(Δ[A008619(n)]+1)*A041311(n)`
-/

namespace A041071.P8572443666508296488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041311 n

end

end A041071.P8572443666508296488

namespace A041071

/-- `(Δ[A008619(n)]+1)*A041311(n)` -/
def P8572443666508296488.Spec : Prop :=
  ∀ n, P8572443666508296488.a n = A041071 n

end A041071

/-! ## A041071.P2537545092960751931

`A014710(2*(n+1))*A041311(n)`
-/

namespace A041071.P2537545092960751931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (2 * (n + 1)) * A041311 n

end

end A041071.P2537545092960751931

namespace A041071

/-- `A014710(2*(n+1))*A041311(n)` -/
def P2537545092960751931.Spec : Prop :=
  ∀ n, P2537545092960751931.a n = A041071 n

end A041071

/-! ## A041071.P11879427459224092196

`A041311(n)*A041329(Δ[A008619(n)])`
-/

namespace A041071.P11879427459224092196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 n * A041329 (f1 (n + 1) - f1 n).toNat

end

end A041071.P11879427459224092196

namespace A041071

/-- `A041311(n)*A041329(Δ[A008619(n)])` -/
def P11879427459224092196.Spec : Prop :=
  ∀ n, P11879427459224092196.a n = A041071 n

end A041071

/-! ## A041071.P3360538862786237032

`A041311(n)*A041331(Δ[A008619(n)])`
-/

namespace A041071.P3360538862786237032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 n * A041331 (f1 (n + 1) - f1 n).toNat

end

end A041071.P3360538862786237032

namespace A041071

/-- `A041311(n)*A041331(Δ[A008619(n)])` -/
def P3360538862786237032.Spec : Prop :=
  ∀ n, P3360538862786237032.a n = A041071 n

end A041071

/-! ## A041071.P3493109899500890628

`A041311(n)*A332013(A034856(n+1))`
-/

namespace A041071.P3493109899500890628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 n * A332013 (A034856 (n + 1)).toNat

end

end A041071.P3493109899500890628

namespace A041071

/-- `A041311(n)*A332013(A034856(n+1))` -/
def P3493109899500890628.Spec : Prop :=
  ∀ n, P3493109899500890628.a n = A041071 n

end A041071

/-!
# A041073: Denominators of continued fraction convergents to sqrt(43).

The programs for A041073, there is no canonical definition to state claims against.
-/

/-! ## A041073.P6908113822789250282

`round(A041072(n)/sqrt(43))`
-/

namespace A041073.P6908113822789250282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041072 n : ℝ) / Real.sqrt (43 : ℝ))

end

end A041073.P6908113822789250282

/-! ## A041073.P1677328389684955095

`A005843(A041453(n))-A042157(n)`
-/

namespace A041073.P1677328389684955095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A041453 n).toNat - A042157 n

end

end A041073.P1677328389684955095

/-!
# A041075: Denominators of continued fraction convergents to sqrt(44).

The programs for A041075, there is no canonical definition to state claims against.
-/

/-! ## A041075.P14695684216275151994

`round(A041074(n)/sqrt(44))`
-/

namespace A041075.P14695684216275151994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041074 n : ℝ) / Real.sqrt (44 : ℝ))

end

end A041075.P14695684216275151994

/-!
# A041076: Numerators of continued fraction convergents to sqrt(45).

The programs for A041076, there is no canonical definition to state claims against.
-/

/-! ## A041076.P5984940530057619367

`filter[A078980(n), A105565(#)]`
-/

namespace A041076.P5984940530057619367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105565 (f1 j).toNat = 1) n)

end

end A041076.P5984940530057619367

/-!
# A041077: Denominators of continued fraction convergents to sqrt(45).

The programs for A041077, there is no canonical definition to state claims against.
-/

/-! ## A041077.P5795474497439757053

`A041663(n)%A173711(A042832(n))`
-/

namespace A041077.P5795474497439757053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041663 n) (A173711 (A042832 n).toNat)

end

end A041077.P5795474497439757053

/-! ## A041077.P6605508972397366504

`A042825(n)%A173711(A042832(n))`
-/

namespace A041077.P6605508972397366504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042825 n) (A173711 (A042832 n).toNat)

end

end A041077.P6605508972397366504

/-!
# A041079: Denominators of continued fraction convergents to sqrt(46).

The programs for A041079, there is no canonical definition to state claims against.
-/

/-! ## A041079.P3563289454195512022

`A182801(A000010(3*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A041079.P3563289454195512022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A182801 (A000010 (3 * a (n - 1)).toNat).toNat

end

end A041079.P3563289454195512022

/-! ## A041079.P3410678731764777222

`A238690(or(A087727(n), A375827(n)))`
-/

namespace A041079.P3410678731764777222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (Int.lor (A087727 n) (A375827 n)).toNat

end

end A041079.P3410678731764777222

/-!
# A041081: Denominators of continued fraction convergents to sqrt(47).

The programs for A041081, the canonical program `A041081.P6621287335465192009` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041081 has offset 0).

The definition of A041081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041081.P6621287335465192009

`96*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=7, a(4)=90, a(5)=97, a(6)=575, a(7)=672`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041081

/-- `96*a(n-4)-a(n-8)` -/
def P6621287335465192009.Spec : Prop :=
  ∀ n, P6621287335465192009.a n = A041081 n

theorem P6621287335465192009.correct : P6621287335465192009.Spec := by
  intro n
  simp only [A041081]

end A041081

/-! ## A041081.P4205188447832432829

`round(A041080(n)/sqrt(47))`
-/

namespace A041081.P4205188447832432829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041080 n : ℝ) / Real.sqrt (47 : ℝ))

end

end A041081.P4205188447832432829

namespace A041081

/-- `round(A041080(n)/sqrt(47))` -/
def P4205188447832432829.Spec : Prop :=
  ∀ n, P4205188447832432829.a n = A041081 n

end A041081

/-!
# A041082: Numerators of continued fraction convergents to sqrt(48).

The programs for A041082, the canonical program `A041082.P1671270518900589276` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041082 has offset 0).

The definition of A041082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041082.P1671270518900589276

`14*a(n-2)-a(n-4)` with `a(0)=6, a(1)=7, a(2)=90, a(3)=97`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041082

/-- `14*a(n-2)-a(n-4)` -/
def P1671270518900589276.Spec : Prop :=
  ∀ n, P1671270518900589276.a n = A041082 n

theorem P1671270518900589276.correct : P1671270518900589276.Spec := by
  intro n
  simp only [A041082]

end A041082

/-! ## A041082.P250490736279781431

`gcd(2, n)*A041016(n)`
-/

namespace A041082.P250490736279781431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041016 n

end

end A041082.P250490736279781431

namespace A041082

/-- `gcd(2, n)*A041016(n)` -/
def P250490736279781431.Spec : Prop :=
  ∀ n, P250490736279781431.a n = A041082 n

end A041082

/-! ## A041082.P13464694018084147624

`lcm(A041016(n), A176355(n))`
-/

namespace A041082.P13464694018084147624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041016 n) (A176355 n)

end

end A041082.P13464694018084147624

namespace A041082

/-- `lcm(A041016(n), A176355(n))` -/
def P13464694018084147624.Spec : Prop :=
  ∀ n, (P13464694018084147624.a n : ℤ) = A041082 n

end A041082

/-! ## A041082.P17209005197349095230

`A000034(n+1)*A041016(n)`
-/

namespace A041082.P17209005197349095230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041016 n

end

end A041082.P17209005197349095230

namespace A041082

/-- `A000034(n+1)*A041016(n)` -/
def P17209005197349095230.Spec : Prop :=
  ∀ n, P17209005197349095230.a n = A041082 n

end A041082

/-! ## A041082.P5144437603489473200

`A040001(n+2)*A041016(n)`
-/

namespace A041082.P5144437603489473200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041016 n

end

end A041082.P5144437603489473200

namespace A041082

/-- `A040001(n+2)*A041016(n)` -/
def P5144437603489473200.Spec : Prop :=
  ∀ n, P5144437603489473200.a n = A041082 n

end A041082

/-! ## A041082.P16699021860162967166

`(2-A000035(n))*A041016(n)`
-/

namespace A041082.P16699021860162967166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A041016 n

end

end A041082.P16699021860162967166

namespace A041082

/-- `(2-A000035(n))*A041016(n)` -/
def P16699021860162967166.Spec : Prop :=
  ∀ n, P16699021860162967166.a n = A041082 n

end A041082

/-! ## A041082.P13804149085098890104

`(3-A000034(n))*A041016(n)`
-/

namespace A041082.P13804149085098890104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041016 n

end

end A041082.P13804149085098890104

namespace A041082

/-- `(3-A000034(n))*A041016(n)` -/
def P13804149085098890104.Spec : Prop :=
  ∀ n, P13804149085098890104.a n = A041082 n

end A041082

/-!
# A041083: Denominators of continued fraction convergents to sqrt(48).

The programs for A041083, the canonical program `A041083.P14395245751364629949` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041083 has offset 0).

The definition of A041083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041083.P14395245751364629949

`14*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=13, a(3)=14`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041083

/-- `14*a(n-2)-a(n-4)` -/
def P14395245751364629949.Spec : Prop :=
  ∀ n, P14395245751364629949.a n = A041083 n

theorem P14395245751364629949.correct : P14395245751364629949.Spec := by
  intro n
  simp only [A041083]

end A041083

/-! ## A041083.P13121375160733791140

`A041017(n)/(n%2+1)`
-/

namespace A041083.P13121375160733791140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041017 n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A041083.P13121375160733791140

namespace A041083

/-- `A041017(n)/(n%2+1)` -/
def P13121375160733791140.Spec : Prop :=
  ∀ n, P13121375160733791140.a n = (A041083 n : ℚ)

end A041083

/-! ## A041083.P18013095946712881036

`A041017(n)/A000034(n)`
-/

namespace A041083.P18013095946712881036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041017 n : ℚ) / (A000034 n : ℚ)

end

end A041083.P18013095946712881036

namespace A041083

/-- `A041017(n)/A000034(n)` -/
def P18013095946712881036.Spec : Prop :=
  ∀ n, P18013095946712881036.a n = (A041083 n : ℚ)

end A041083

/-! ## A041083.P17714697636108867985

`A041017(n)/A040001(n+1)`
-/

namespace A041083.P17714697636108867985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041017 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041083.P17714697636108867985

namespace A041083

/-- `A041017(n)/A040001(n+1)` -/
def P17714697636108867985.Spec : Prop :=
  ∀ n, P17714697636108867985.a n = (A041083 n : ℚ)

end A041083

/-! ## A041083.P15501764944714759097

`A041017(n)/Δ[A001651(n+1)]`
-/

namespace A041083.P15501764944714759097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041017 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041083.P15501764944714759097

namespace A041083

/-- `A041017(n)/Δ[A001651(n+1)]` -/
def P15501764944714759097.Spec : Prop :=
  ∀ n, P15501764944714759097.a n = (A041083 n : ℚ)

end A041083

/-! ## A041083.P10277924049027338638

`ceil(A002531(n+1)/2*A108412(n))`
-/

namespace A041083.P10277924049027338638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002531 (n + 1) : ℚ) / 2 * (A108412 n : ℚ)⌉

end

end A041083.P10277924049027338638

namespace A041083

/-- `ceil(A002531(n+1)/2*A108412(n))` -/
def P10277924049027338638.Spec : Prop :=
  ∀ n, P10277924049027338638.a n = A041083 n

end A041083

/-! ## A041083.P15462461684004084735

`A041017(n)/A229339(A003961(n+1))`
-/

namespace A041083.P15462461684004084735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041017 n : ℚ) / (A229339 (A003961 (n + 1)).toNat : ℚ)

end

end A041083.P15462461684004084735

namespace A041083

/-- `A041017(n)/A229339(A003961(n+1))` -/
def P15462461684004084735.Spec : Prop :=
  ∀ n, P15462461684004084735.a n = (A041083 n : ℚ)

end A041083

/-!
# A041084: Numerators of continued fraction convergents to sqrt(50).

The programs for A041084, the canonical program `A041084.P2744222060995009141` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041084 has offset 0).

The definition of A041084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041084.P2744222060995009141

`14*a(n-1)+a(n-2)` with `a(0)=7, a(1)=99`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041084

/-- `14*a(n-1)+a(n-2)` -/
def P2744222060995009141.Spec : Prop :=
  ∀ n, (P2744222060995009141.a n : ℤ) = A041084 n

theorem P2744222060995009141.correct : P2744222060995009141.Spec := by
  intro n
  simp only [A041084]

end A041084

/-! ## A041084.P7728094085216235320

`ogf((7+x)/(1-14x-x^2))`
-/

namespace A041084.P7728094085216235320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1] [1, -14, -1] n

end

end A041084.P7728094085216235320

namespace A041084

/-- `ogf((7+x)/(1-14x-x^2))` -/
def P7728094085216235320.Spec : Prop :=
  ∀ n, P7728094085216235320.a n = A041084 n

end A041084

/-! ## A041084.P3714422404782066730

`Δ[A322496(3*n)]`
-/

namespace A041084.P3714422404782066730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322496 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041084.P3714422404782066730

namespace A041084

/-- `Δ[A322496(3*n)]` -/
def P3714422404782066730.Spec : Prop :=
  ∀ n, P3714422404782066730.a n = A041084 n

end A041084

/-! ## A041084.P11653520840835255102

`A001333(3*(n+1))`
-/

namespace A041084.P11653520840835255102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (3 * (n + 1))

end

end A041084.P11653520840835255102

namespace A041084

/-- `A001333(3*(n+1))` -/
def P11653520840835255102.Spec : Prop :=
  ∀ n, P11653520840835255102.a n = A041084 n

end A041084

/-! ## A041084.P570993357897389046

`A090300(n+1)/2`
-/

namespace A041084.P570993357897389046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090300 (n + 1) : ℚ) / 2

end

end A041084.P570993357897389046

namespace A041084

/-- `A090300(n+1)/2` -/
def P570993357897389046.Spec : Prop :=
  ∀ n, P570993357897389046.a n = (A041084 n : ℚ)

end A041084

/-! ## A041084.P6932376080090904997

`A078057(3*n+2)`
-/

namespace A041084.P6932376080090904997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (3 * n + 2)

end

end A041084.P6932376080090904997

namespace A041084

/-- `A078057(3*n+2)` -/
def P6932376080090904997.Spec : Prop :=
  ∀ n, P6932376080090904997.a n = A041084 n

end A041084

/-! ## A041084.P13680083642385999695

`A082766(6*(n+1))`
-/

namespace A041084.P13680083642385999695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (6 * (n + 1))

end

end A041084.P13680083642385999695

namespace A041084

/-- `A082766(6*(n+1))` -/
def P13680083642385999695.Spec : Prop :=
  ∀ n, P13680083642385999695.a n = A041084 n

end A041084

/-! ## A041084.P16996953374735787357

`A119016(6*(n+1))`
-/

namespace A041084.P16996953374735787357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (6 * (n + 1))

end

end A041084.P16996953374735787357

namespace A041084

/-- `A119016(6*(n+1))` -/
def P16996953374735787357.Spec : Prop :=
  ∀ n, P16996953374735787357.a n = A041084 n

end A041084

/-! ## A041084.P13626835357025282612

`A152113(6*(n+1))`
-/

namespace A041084.P13626835357025282612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (6 * (n + 1))

end

end A041084.P13626835357025282612

namespace A041084

/-- `A152113(6*(n+1))` -/
def P13626835357025282612.Spec : Prop :=
  ∀ n, P13626835357025282612.a n = A041084 n

end A041084

/-! ## A041084.P17188530331391880881

`A189050(6*(n+1))`
-/

namespace A041084.P17188530331391880881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189050 (6 * (n + 1))

end

end A041084.P17188530331391880881

namespace A041084

/-- `A189050(6*(n+1))` -/
def P17188530331391880881.Spec : Prop :=
  ∀ n, P17188530331391880881.a n = A041084 n

end A041084

/-!
# A041085: Denominators of continued fraction convergents to sqrt(50).

The programs for A041085, the canonical program `A041085.P15273050580975401867` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041085 has offset 0).

The definition of A041085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041085.P10329280776188178014

`round((7+5*sqrt(2))*a(n-1))` with `a(0)=1`
-/

namespace A041085.P10329280776188178014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((7 + 5 * Real.sqrt (2 : ℝ)) * (a (n - 1) : ℝ))

end

end A041085.P10329280776188178014

namespace A041085

/-- `round((7+5*sqrt(2))*a(n-1))` -/
def P10329280776188178014.Spec : Prop :=
  ∀ n, P10329280776188178014.a n = A041085 n

end A041085

/-! ## A041085.P15273050580975401867

`14*a(n-1)+a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041085

/-- `14*a(n-1)+a(n-2)` -/
def P15273050580975401867.Spec : Prop :=
  ∀ n, (P15273050580975401867.a n : ℤ) = A041085 n

theorem P15273050580975401867.correct : P15273050580975401867.Spec := by
  intro n
  simp only [A041085]

end A041085

/-! ## A041085.P6437704719942838233

`((7+5*sqrt(2))^(n+1)-(7-5*sqrt(2))^(n+1))/(10*sqrt(2))`
-/

namespace A041085.P6437704719942838233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 5 * Real.sqrt (2 : ℝ)) ^ (n + 1) - (7 - 5 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / (10 * Real.sqrt (2 : ℝ))

end

end A041085.P6437704719942838233

namespace A041085

/-- `((7+5*sqrt(2))^(n+1)-(7-5*sqrt(2))^(n+1))/(10*sqrt(2))` -/
def P6437704719942838233.Spec : Prop :=
  ∀ n, P6437704719942838233.a n = (A041085 n : ℝ)

theorem P6437704719942838233.correct : P6437704719942838233.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A041085, Nat.add_sub_cancel, A041085.P6437704719942838233.a, A041085.P15273050580975401867.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A041085, Nat.add_sub_cancel, A041085.P6437704719942838233.a, A041085.P15273050580975401867.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A041085

/-! ## A041085.P14172452927629025494

`ogf(1/(1-14x-x^2))`
-/

namespace A041085.P14172452927629025494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -14, -1] n

end

end A041085.P14172452927629025494

namespace A041085

/-- `ogf(1/(1-14x-x^2))` -/
def P14172452927629025494.Spec : Prop :=
  ∀ n, P14172452927629025494.a n = A041085 n

end A041085

/-! ## A041085.P1986419301854426119

`a(n-1)+A187361(n)+a(n-1)` with `a(0)=1`
-/

namespace A041085.P1986419301854426119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A187361 n + a (n - 1))

end

end A041085.P1986419301854426119

namespace A041085

/-- `a(n-1)+A187361(n)+a(n-1)` -/
def P1986419301854426119.Spec : Prop :=
  ∀ n, P1986419301854426119.a n = A041085 n

end A041085

/-! ## A041085.P3996207148865830002

`A000034(n)*A041371(n)`
-/

namespace A041085.P3996207148865830002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041371 n

end

end A041085.P3996207148865830002

namespace A041085

/-- `A000034(n)*A041371(n)` -/
def P3996207148865830002.Spec : Prop :=
  ∀ n, P3996207148865830002.a n = A041085 n

end A041085

/-! ## A041085.P5271303031133916676

`A108300(n)%3*A041371(n)`
-/

namespace A041085.P5271303031133916676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108300 n) 3 * A041371 n

end

end A041085.P5271303031133916676

namespace A041085

/-- `A108300(n)%3*A041371(n)` -/
def P5271303031133916676.Spec : Prop :=
  ∀ n, P5271303031133916676.a n = A041085 n

end A041085

/-!
# A041087: Denominators of continued fraction convergents to sqrt(51).

The programs for A041087, the canonical program `A041087.P11831749048113918695` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041087 has offset 0).

The definition of A041087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041087.P11831749048113918695

`100*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=99, a(3)=700`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041087

/-- `100*a(n-2)-a(n-4)` -/
def P11831749048113918695.Spec : Prop :=
  ∀ n, P11831749048113918695.a n = A041087 n

theorem P11831749048113918695.correct : P11831749048113918695.Spec := by
  intro n
  simp only [A041087]

end A041087

/-!
# A041088: Numerators of continued fraction convergents to sqrt(52).

The programs for A041088, there is no canonical definition to state claims against.
-/

/-! ## A041088.P8074166034162166122

`A041386(n)/gcd(2, n)`
-/

namespace A041088.P8074166034162166122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041386 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041088.P8074166034162166122

/-! ## A041088.P16579775202147016285

`A041386(n)/Δ[A007494(n)]`
-/

namespace A041088.P16579775202147016285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041386 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041088.P16579775202147016285

/-! ## A041088.P10058010327598636732

`A041386(n)/A000034(n+1)`
-/

namespace A041088.P10058010327598636732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041386 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041088.P10058010327598636732

/-! ## A041088.P17846604511723000907

`A000034(n)/2*A041386(n)`
-/

namespace A041088.P17846604511723000907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041386 n : ℚ)

end

end A041088.P17846604511723000907

/-! ## A041088.P8480575494129547780

`A041386(n)/A281490(A006519(n+1))`
-/

namespace A041088.P8480575494129547780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041386 n : ℚ) / (A281490 (A006519 (n + 1)).toNat : ℚ)

end

end A041088.P8480575494129547780

/-! ## A041088.P17902555620936907288

`A041386(n)/A006519(A006519(n+1)+1)`
-/

namespace A041088.P17902555620936907288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041386 n : ℚ) / (A006519 (A006519 (n + 1) + 1).toNat : ℚ)

end

end A041088.P17902555620936907288

/-! ## A041088.P8527690227185444280

`A041386(n)/A006519(n²+2)`
-/

namespace A041088.P8527690227185444280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041386 n : ℚ) / (A006519 (n ^ 2 + 2) : ℚ)

end

end A041088.P8527690227185444280

/-!
# A041089: Denominators of continued fraction convergents to sqrt(52).

The programs for A041089, there is no canonical definition to state claims against.
-/

/-! ## A041089.P179582094188906701

`A000034(n)*A041387(n)`
-/

namespace A041089.P179582094188906701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041387 n

end

end A041089.P179582094188906701

/-! ## A041089.P14959451428958205013

`Δ[A032766(n)]*A041387(n)`
-/

namespace A041089.P14959451428958205013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041387 n

end

end A041089.P14959451428958205013

/-! ## A041089.P3865783376008188481

`A000079(n)%3*A041387(n)`
-/

namespace A041089.P3865783376008188481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 3 * A041387 n

end

end A041089.P3865783376008188481

/-! ## A041089.P13699026121955825438

`gcd(2, A052947(n))*A041387(n)`
-/

namespace A041089.P13699026121955825438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A052947 n) : ℤ) * A041387 n

end

end A041089.P13699026121955825438

/-! ## A041089.P13349877312456214194

`Δ[A001651(n+1)]*A041387(n)`
-/

namespace A041089.P13349877312456214194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041387 n

end

end A041089.P13349877312456214194

/-! ## A041089.P6279106935060421978

`(Δ[A008619(n)]+1)*A041387(n)`
-/

namespace A041089.P6279106935060421978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041387 n

end

end A041089.P6279106935060421978

/-! ## A041089.P9788336295767859695

`A006318(Δ[A008619(n)])*A041387(n)`
-/

namespace A041089.P9788336295767859695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (f1 (n + 1) - f1 n).toNat * A041387 n

end

end A041089.P9788336295767859695

/-! ## A041089.P1322803594866834892

`A041387(Δ[A008619(n)])*A041387(n)`
-/

namespace A041089.P1322803594866834892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041387 (f1 (n + 1) - f1 n).toNat * A041387 n

end

end A041089.P1322803594866834892

/-!
# A041091: Denominators of continued fraction convergents to sqrt(53).

The programs for A041091, there is no canonical definition to state claims against.
-/

/-! ## A041091.P12333718315532626782

`A046925(xor(n, A156129(n)))`
-/

namespace A041091.P12333718315532626782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046925 (Int.xor (n : ℤ) (A156129 n)).toNat

end

end A041091.P12333718315532626782

/-!
# A041092: Numerators of continued fraction convergents to sqrt(54).

The programs for A041092, there is no canonical definition to state claims against.
-/

/-! ## A041092.P11193800960849594023

`A041402(n)/gcd(2, n)`
-/

namespace A041092.P11193800960849594023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041402 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041092.P11193800960849594023

/-! ## A041092.P4308213190274544030

`A041402(n)/A000034(n+1)`
-/

namespace A041092.P4308213190274544030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041402 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041092.P4308213190274544030

/-! ## A041092.P478607817824720911

`A000034(n)/2*A041402(n)`
-/

namespace A041092.P478607817824720911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041402 n : ℚ)

end

end A041092.P478607817824720911

/-! ## A041092.P1475006747731796465

`A041402(n)/A266303(A266303(n))`
-/

namespace A041092.P1475006747731796465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041402 n : ℚ) / (A266303 (A266303 n).toNat : ℚ)

end

end A041092.P1475006747731796465

/-! ## A041092.P3926897723862918297

`A041402(n)/A001222(A116570(n))`
-/

namespace A041092.P3926897723862918297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041402 n : ℚ) / (A001222 (A116570 n).toNat : ℚ)

end

end A041092.P3926897723862918297

/-! ## A041092.P6426231140787026465

`A041402(n)/A040201(n²+4)`
-/

namespace A041092.P6426231140787026465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041402 n : ℚ) / (A040201 (n ^ 2 + 4) : ℚ)

end

end A041092.P6426231140787026465

/-!
# A041093: Denominators of continued fraction convergents to sqrt(54).

The programs for A041093, there is no canonical definition to state claims against.
-/

/-! ## A041093.P11263258062227394241

`A000034(n)*A041403(n)`
-/

namespace A041093.P11263258062227394241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041403 n

end

end A041093.P11263258062227394241

/-! ## A041093.P11386333480492443693

`Δ[A032766(n)]*A041403(n)`
-/

namespace A041093.P11386333480492443693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041403 n

end

end A041093.P11386333480492443693

/-! ## A041093.P16637258547179728182

`lcm(Δ[A003188(n)], A041403(n))`
-/

namespace A041093.P16637258547179728182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041403 n)

end

end A041093.P16637258547179728182

/-! ## A041093.P5519297484717185300

`(A000035(n)+1)*A041403(n)`
-/

namespace A041093.P5519297484717185300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041403 n

end

end A041093.P5519297484717185300

/-! ## A041093.P15663286513510619442

`gcd(2, A056109(n))*A041403(n)`
-/

namespace A041093.P15663286513510619442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A056109 n) : ℤ) * A041403 n

end

end A041093.P15663286513510619442

/-! ## A041093.P10333683785241511691

`A000120(A071044(n))*A041403(n)`
-/

namespace A041093.P10333683785241511691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A071044 n).toNat * A041403 n

end

end A041093.P10333683785241511691

/-! ## A041093.P8461358081497113821

`A041403(n)*A087230(∑[A038712(n+1)])`
-/

namespace A041093.P8461358081497113821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041403 n * A087230 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041093.P8461358081497113821

/-! ## A041093.P15825596249872379961

`A040201(n²+1)*A041403(n)`
-/

namespace A041093.P15825596249872379961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040201 (n ^ 2 + 1) * A041403 n

end

end A041093.P15825596249872379961

/-! ## A041093.P2112586520846553872

`A041403(n)*A087230((n+1)²)`
-/

namespace A041093.P2112586520846553872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041403 n * A087230 ((n + 1) ^ 2)

end

end A041093.P2112586520846553872

/-! ## A041093.P17229091313174126429

`A001511(A081346(n))*A041403(n)`
-/

namespace A041093.P17229091313174126429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A081346 n).toNat * A041403 n

end

end A041093.P17229091313174126429

/-!
# A041094: Numerators of continued fraction convergents to sqrt(55).

The programs for A041094, there is no canonical definition to state claims against.
-/

/-! ## A041094.P14553324009569109771

`lcm(2, A041410(n))/2`
-/

namespace A041094.P14553324009569109771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041410 n) : ℚ) / 2

end

end A041094.P14553324009569109771

/-! ## A041094.P15069822464660914423

`A041410(n)/Δ[A007494(n)]`
-/

namespace A041094.P15069822464660914423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041410 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041094.P15069822464660914423

/-! ## A041094.P4541586412231175152

`A041410(n)/A000034(n+1)`
-/

namespace A041094.P4541586412231175152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041410 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041094.P4541586412231175152

/-! ## A041094.P6468629743555225729

`A000034(n)/2*A041410(n)`
-/

namespace A041094.P6468629743555225729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041410 n : ℚ)

end

end A041094.P6468629743555225729

/-! ## A041094.P3149062733183347863

`A041410(n)/A010872(A004442(3*(n+1)))`
-/

namespace A041094.P3149062733183347863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041410 n : ℚ) / (A010872 (A004442 (3 * (n + 1))).toNat : ℚ)

end

end A041094.P3149062733183347863

/-!
# A041095: Denominators of continued fraction convergents to sqrt(55).

The programs for A041095, there is no canonical definition to state claims against.
-/

/-! ## A041095.P4028371268893203861

`gcd(2, n+1)*A041411(n)`
-/

namespace A041095.P4028371268893203861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A041411 n

end

end A041095.P4028371268893203861

/-! ## A041095.P17829926019285385590

`A000034(n)*A041411(n)`
-/

namespace A041095.P17829926019285385590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041411 n

end

end A041095.P17829926019285385590

/-! ## A041095.P10619711140155475468

`Δ[A032766(n)]*A041411(n)`
-/

namespace A041095.P10619711140155475468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041411 n

end

end A041095.P10619711140155475468

/-! ## A041095.P12372459170694302650

`ratio[A016116(n)]*A041411(n)`
-/

namespace A041095.P12372459170694302650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041411 n : ℚ)

end

end A041095.P12372459170694302650

/-! ## A041095.P6383190734311614719

`lcm(ratio[A060818(n)], A041411(n))`
-/

namespace A041095.P6383190734311614719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) (A041411 n)

end

end A041095.P6383190734311614719

/-! ## A041095.P16260465058932131048

`(A000035(n)+1)*A041411(n)`
-/

namespace A041095.P16260465058932131048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041411 n

end

end A041095.P16260465058932131048

/-! ## A041095.P16192741876585355053

`A040001(n+1)*A041411(n)`
-/

namespace A041095.P16192741876585355053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041411 n

end

end A041095.P16192741876585355053

/-! ## A041095.P11206763503956018224

`(Δ[A004526(n)]+1)*A041411(n)`
-/

namespace A041095.P11206763503956018224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041411 n

end

end A041095.P11206763503956018224

/-! ## A041095.P6448136862621870507

`A006519(A141310(n))*A041411(n)`
-/

namespace A041095.P6448136862621870507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A141310 n).toNat * A041411 n

end

end A041095.P6448136862621870507

/-! ## A041095.P6412492104370413483

`A020639(A266303(n))*A041411(n)`
-/

namespace A041095.P6412492104370413483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A266303 n).toNat * A041411 n

end

end A041095.P6412492104370413483

/-! ## A041095.P7511436913339914413

`A041411(n)*A073387(Δ[A004526(n)])`
-/

namespace A041095.P7511436913339914413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041411 n * A073387 (f1 (n + 1) - f1 n).toNat

end

end A041095.P7511436913339914413

/-! ## A041095.P4907517021878479180

`A041411(n)*A141310(Δ[A004526(n)])`
-/

namespace A041095.P4907517021878479180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041411 n * A141310 (f1 (n + 1) - f1 n).toNat

end

end A041095.P4907517021878479180

/-! ## A041095.P9682151224936269559

`A041411(n)*A164156(Δ[A004526(n)])`
-/

namespace A041095.P9682151224936269559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041411 n * A164156 (f1 (n + 1) - f1 n).toNat

end

end A041095.P9682151224936269559

/-! ## A041095.P8770835217295022685

`A041411(n)*A278162(Δ[A109613(n)])`
-/

namespace A041095.P8770835217295022685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041411 n * A278162 (f1 (n + 1) - f1 n).toNat

end

end A041095.P8770835217295022685

/-! ## A041095.P13359050500210060736

`A041411(n)*A078461(A007947(n+1))`
-/

namespace A041095.P13359050500210060736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041411 n * A078461 (A007947 (n + 1)).toNat

end

end A041095.P13359050500210060736

/-! ## A041095.P1531755253704795279

`A041411(n)*A266303(A266303(n+1))`
-/

namespace A041095.P1531755253704795279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041411 n * A266303 (A266303 (n + 1)).toNat

end

end A041095.P1531755253704795279

/-!
# A041096: Numerators of continued fraction convergents to sqrt(56).

The programs for A041096, there is no canonical definition to state claims against.
-/

/-! ## A041096.P7502150136211386942

`A041418(n)/A000034(n+1)`
-/

namespace A041096.P7502150136211386942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041418 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041096.P7502150136211386942

/-! ## A041096.P1832391416003987378

`A041418(n)/A040001(n+2)`
-/

namespace A041096.P1832391416003987378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041418 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041096.P1832391416003987378

/-! ## A041096.P1503164064329260054

`A041418(n)/A134451(n+2)`
-/

namespace A041096.P1503164064329260054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041418 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041096.P1503164064329260054

/-! ## A041096.P14954768881234426748

`A000034(n)/2*A041418(n)`
-/

namespace A041096.P14954768881234426748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041418 n : ℚ)

end

end A041096.P14954768881234426748

/-! ## A041096.P10657617518475754496

`A041418(n)/A001511(A341522(n))`
-/

namespace A041096.P10657617518475754496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041418 n : ℚ) / (A001511 (A341522 n).toNat : ℚ)

end

end A041096.P10657617518475754496

/-! ## A041096.P15897693649627653477

`A041418(n)/A000720(A020639(3*(n+1)))`
-/

namespace A041096.P15897693649627653477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041418 n : ℚ) / (A000720 (A020639 (3 * (n + 1))).toNat : ℚ)

end

end A041096.P15897693649627653477

/-! ## A041096.P8776829188526623234

`A041418(n)/and(3, A041390(n))`
-/

namespace A041096.P8776829188526623234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041418 n : ℚ) / (Int.land 3 (A041390 n) : ℚ)

end

end A041096.P8776829188526623234

/-!
# A041097: Denominators of continued fraction convergents to sqrt(56).

The programs for A041097, the canonical program `A041097.P13276312548577984626` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041097 has offset 0).

The definition of A041097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041097.P13276312548577984626

`30*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=29, a(3)=60`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041097

/-- `30*a(n-2)-a(n-4)` -/
def P13276312548577984626.Spec : Prop :=
  ∀ n, P13276312548577984626.a n = A041097 n

theorem P13276312548577984626.correct : P13276312548577984626.Spec := by
  intro n
  simp only [A041097]

end A041097

/-! ## A041097.P6527219782748611025

`∑[A041021(A042948(n))]`
-/

namespace A041097.P6527219782748611025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041021 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041097.P6527219782748611025

namespace A041097

/-- `∑[A041021(A042948(n))]` -/
def P6527219782748611025.Spec : Prop :=
  ∀ n, P6527219782748611025.a n = A041097 n

end A041097

/-! ## A041097.P16492042256714203141

`A000034(n)*A041419(n)`
-/

namespace A041097.P16492042256714203141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041419 n

end

end A041097.P16492042256714203141

namespace A041097

/-- `A000034(n)*A041419(n)` -/
def P16492042256714203141.Spec : Prop :=
  ∀ n, P16492042256714203141.a n = A041097 n

end A041097

/-! ## A041097.P979795916527613864

`(A000035(n)+1)*A041419(n)`
-/

namespace A041097.P979795916527613864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041419 n

end

end A041097.P979795916527613864

namespace A041097

/-- `(A000035(n)+1)*A041419(n)` -/
def P979795916527613864.Spec : Prop :=
  ∀ n, P979795916527613864.a n = A041097 n

end A041097

/-! ## A041097.P3903708838685024247

`A040001(n+1)*A041419(n)`
-/

namespace A041097.P3903708838685024247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041419 n

end

end A041097.P3903708838685024247

namespace A041097

/-- `A040001(n+1)*A041419(n)` -/
def P3903708838685024247.Spec : Prop :=
  ∀ n, P3903708838685024247.a n = A041097 n

end A041097

/-! ## A041097.P6925929793070902335

`A041419(n)*A134451(n+1)`
-/

namespace A041097.P6925929793070902335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 n * A134451 (n + 1)

end

end A041097.P6925929793070902335

namespace A041097

/-- `A041419(n)*A134451(n+1)` -/
def P6925929793070902335.Spec : Prop :=
  ∀ n, P6925929793070902335.a n = A041097 n

end A041097

/-! ## A041097.P9192948785319664584

`A014709(2*n)*A041419(n)`
-/

namespace A041097.P9192948785319664584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (2 * n) * A041419 n

end

end A041097.P9192948785319664584

namespace A041097

/-- `A014709(2*n)*A041419(n)` -/
def P9192948785319664584.Spec : Prop :=
  ∀ n, P9192948785319664584.a n = A041097 n

end A041097

/-! ## A041097.P6665662112468427810

`A041419(n)*A079868(A006519(n+1))`
-/

namespace A041097.P6665662112468427810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 n * A079868 (A006519 (n + 1)).toNat

end

end A041097.P6665662112468427810

namespace A041097

/-- `A041419(n)*A079868(A006519(n+1))` -/
def P6665662112468427810.Spec : Prop :=
  ∀ n, P6665662112468427810.a n = A041097 n

end A041097

/-! ## A041097.P15075869673286675317

`A041049(n)/A041219(n)*A041419(n)`
-/

namespace A041097.P15075869673286675317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A041219 n : ℚ) * (A041419 n : ℚ)

end

end A041097.P15075869673286675317

namespace A041097

/-- `A041049(n)/A041219(n)*A041419(n)` -/
def P15075869673286675317.Spec : Prop :=
  ∀ n, P15075869673286675317.a n = (A041097 n : ℚ)

end A041097

/-! ## A041097.P12103430769613639014

`A041419(or(1, n+1))-Δ[A041419(n)]`
-/

namespace A041097.P12103430769613639014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 (Nat.lor 1 (n + 1)) - (f1 (n + 1) - f1 n)

end

end A041097.P12103430769613639014

namespace A041097

/-- `A041419(or(1, n+1))-Δ[A041419(n)]` -/
def P12103430769613639014.Spec : Prop :=
  ∀ n, P12103430769613639014.a n = A041097 n

end A041097

/-! ## A041097.P14701107663970758040

`A041419(n)*A006519(n²+1)`
-/

namespace A041097.P14701107663970758040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 n * A006519 (n ^ 2 + 1)

end

end A041097.P14701107663970758040

namespace A041097

/-- `A041419(n)*A006519(n²+1)` -/
def P14701107663970758040.Spec : Prop :=
  ∀ n, P14701107663970758040.a n = A041097 n

end A041097

/-!
# A041098: Numerators of continued fraction convergents to sqrt(57).

The programs for A041098, there is no canonical definition to state claims against.
-/

/-! ## A041098.P1216795247215505922

`A315516(A042462(n))%A042462(n)`
-/

namespace A041098.P1216795247215505922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315516 (A042462 n).toNat) (A042462 n)

end

end A041098.P1216795247215505922

/-!
# A041099: Denominators of continued fraction convergents to sqrt(57).

The programs for A041099, there is no canonical definition to state claims against.
-/

/-! ## A041099.P14545015629600700273

`round(A041098(n)/sqrt(57))`
-/

namespace A041099.P14545015629600700273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041098 n : ℝ) / Real.sqrt (57 : ℝ))

end

end A041099.P14545015629600700273

/-! ## A041099.P17659518846640653343

`A042463(n)%A028310(A042466(n))`
-/

namespace A041099.P17659518846640653343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042463 n) (A028310 (A042466 n).toNat)

end

end A041099.P17659518846640653343

