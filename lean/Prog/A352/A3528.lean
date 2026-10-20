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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A352800: Numbers k such that 2*k^2 + 29 is prime.

The programs for A352800, there is no canonical definition to state claims against.
-/

/-! ## A352800.P3370657566029008644

`eq[char[A007642(n+1)], A007814(2*n+1)]`
-/

namespace A352800.P3370657566029008644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007642 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A352800.P3370657566029008644

/-! ## A352800.P6517636571673803237

`eq[2, A305973(A241750(n))]`
-/

namespace A352800.P6517636571673803237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A241750 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352800.P6517636571673803237

/-! ## A352800.P9567080153415530923

`eq[1, 2-A001222(2*n²+29)]`
-/

namespace A352800.P9567080153415530923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (2 * n ^ 2 + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352800.P9567080153415530923

/-! ## A352800.P18386630284205150311

`eq[1, A101264(A114962(n))]`
-/

namespace A352800.P18386630284205150311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A114962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352800.P18386630284205150311

/-! ## A352800.P2318323167263781286

`comp[A353004(n+1)]%A344857(n+5)`
-/

namespace A352800.P2318323167263781286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353004 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A344857 (n + 5))

end

end A352800.P2318323167263781286

/-! ## A352800.P10107340869892890278

`eq[2, A212595(A189834(n))]`
-/

namespace A352800.P10107340869892890278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212595 ((A189834 n).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352800.P10107340869892890278

/-!
# A352801: Number of symmetric n X n 01-matrices with maximum number of 1s and no 2 X 2 all-1 submatrix.

The programs for A352801, there is no canonical definition to state claims against.
-/

/-! ## A352801.P17365011094406294101

`A350189(eq[A057427(n), A350189(n+1)])`
-/

namespace A352801.P17365011094406294101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350189 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352801.P17365011094406294101

/-! ## A352801.P12549132706544248752

`A350189(eq[A060576(n), A350189(n+1)])`
-/

namespace A352801.P12549132706544248752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350189 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352801.P12549132706544248752

/-!
# A352802: Expansion of Sum_{k>=0} x^k * Product_{j=0..k-1} (j + 3 * x).

The programs for A352802, there is no canonical definition to state claims against.
-/

/-! ## A352802.P17880864151250069433

`xor(A110657(n), A318919(A000988(n)))`
-/

namespace A352802.P17880864151250069433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110657 n) (A318919 (A000988 n).toNat)

end

end A352802.P17880864151250069433

/-! ## A352802.P11300240801225578896

`A300651(A066535(n))-A300646(2*n+3)`
-/

namespace A352802.P11300240801225578896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300651 (A066535 n).toNat - A300646 (2 * n + 3)

end

end A352802.P11300240801225578896

/-!
# A352804: a(n) = A028876(n)/2; numbers k such that 4*k^2 - 5 is prime.

The programs for A352804, there is no canonical definition to state claims against.
-/

/-! ## A352804.P5650316195368421074

`A028876(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352804.P5650316195368421074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028876 (n + 1) : ℚ) / 2

end

end A352804.P5650316195368421074

/-! ## A352804.P9225647777972043161

`ceil(sqrt(A028877(n+1))/2)`
-/

namespace A352804.P9225647777972043161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028877 (n + 1) : ℝ) / 2⌉

end

end A352804.P9225647777972043161

/-! ## A352804.P978399282573097571

`A014682(A028876(n+1))`
-/

namespace A352804.P978399282573097571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028876 (n + 1)).toNat

end

end A352804.P978399282573097571

/-! ## A352804.P2242845978234780203

`A004526(A028876(n+1)+1)`
-/

namespace A352804.P2242845978234780203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028876 (n + 1) + 1).toNat

end

end A352804.P2242845978234780203

/-! ## A352804.P17270788562549764753

`A152271(A028876(n+1)-1)`
-/

namespace A352804.P17270788562549764753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A028876 (n + 1) - 1).toNat

end

end A352804.P17270788562549764753

/-! ## A352804.P8327446511662037169

`A026741(sqrt(A028877(n+1)+5))`
-/

namespace A352804.P8327446511662037169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway (Real.sqrt (A028877 (n + 1) + 5 : ℝ))).toNat

end

end A352804.P8327446511662037169

/-! ## A352804.P13401963551619725689

`A052938(sqrt(A028877(n+1)+5))-1`
-/

namespace A352804.P13401963551619725689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (SequenceMachineLib.roundAway (Real.sqrt (A028877 (n + 1) + 5 : ℝ))).toNat - 1

end

end A352804.P13401963551619725689

/-! ## A352804.P1404682323784350486

`A004526(xor(1, sqrt(A028877(n+1)+5)))`
-/

namespace A352804.P1404682323784350486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor 1 (SequenceMachineLib.roundAway (Real.sqrt (A028877 (n + 1) + 5 : ℝ)))).toNat

end

end A352804.P1404682323784350486

/-! ## A352804.P10937373121811252859

`ceil(sqrt(p?[n²-5]))/2`
-/

namespace A352804.P10937373121811252859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉ : ℚ) / 2

end

end A352804.P10937373121811252859

/-!
# A352805: a(n) = A296507(n+1)/6; numbers k such that 36*k^2 - 13 is prime.

The programs for A352805, there is no canonical definition to state claims against.
-/

/-! ## A352805.P11806056652752379608

`A296507(n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352805.P11806056652752379608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296507 (n + 2) : ℚ) / 6

end

end A352805.P11806056652752379608

/-! ## A352805.P325212263972262617

`a(n-1)*ratio[A296507(n+1)]` with `a(0)=1`
-/

namespace A352805.P325212263972262617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296507 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A352805.P325212263972262617

/-! ## A352805.P14231189867576783314

`∑[A060789(Δ[A296507(n+1)])]`
-/

namespace A352805.P14231189867576783314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296507 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352805.P14231189867576783314

/-! ## A352805.P11062252531020361921

`A008615(A296507(n+2))`
-/

namespace A352805.P11062252531020361921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A296507 (n + 2)).toNat

end

end A352805.P11062252531020361921

/-! ## A352805.P12020613596153472276

`A103221(A296507(n+2)+1)`
-/

namespace A352805.P12020613596153472276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A296507 (n + 2) + 1).toNat

end

end A352805.P12020613596153472276

/-!
# A352806: Orders of the finite groups PSL_2(K) when K is a finite field with q = A246655(n) elements.

The programs for A352806, there is no canonical definition to state claims against.
-/

/-! ## A352806.P15649149890466114694

`sqrt(A003848(n+1))`
-/

namespace A352806.P15649149890466114694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003848 (n + 1) : ℝ)

end

end A352806.P15649149890466114694

/-! ## A352806.P4725034725671487147

`root(A003848(n+1), A133265(2*n))`
-/

namespace A352806.P4725034725671487147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003848 (n + 1) : ℝ) ^ (1 / (A133265 (2 * n) : ℝ))

end

end A352806.P4725034725671487147

/-! ## A352806.P12716487551690787933

`A033931(A181062(n+2))`
-/

namespace A352806.P12716487551690787933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (A181062 (n + 2)).toNat

end

end A352806.P12716487551690787933

/-! ## A352806.P5623343558965107672

`A033931(∑[A057820(n+1)])`
-/

namespace A352806.P5623343558965107672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352806.P5623343558965107672

/-! ## A352806.P16109163466724517002

`A033931(record[A047994(n+1)])`
-/

namespace A352806.P16109163466724517002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352806.P16109163466724517002

/-! ## A352806.P6060198102618317573

`A033931(A000961(n+2)-1)`
-/

namespace A352806.P6060198102618317573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (A000961 (n + 2) - 1).toNat

end

end A352806.P6060198102618317573

/-! ## A352806.P7618949324142552119

`A033931(eq[1, A001221(n+1)])`
-/

namespace A352806.P7618949324142552119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352806.P7618949324142552119

/-! ## A352806.P1499347200143497228

`A033931(eq[n, A047994(n+1)])`
-/

namespace A352806.P1499347200143497228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352806.P1499347200143497228

/-! ## A352806.P6817772965850672555

`A033931(eq[n, A344005(n+1)])`
-/

namespace A352806.P6817772965850672555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352806.P6817772965850672555

/-! ## A352806.P5700320827507195513

`A033931(eq[n, A344006(n+1)])`
-/

namespace A352806.P5700320827507195513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352806.P5700320827507195513

/-!
# A352807: Orders of the finite groups PGammaL_2(K) when K is a finite field with q = A246655(n) elements.

The programs for A352807, the canonical program `A352807.P8223926634270256880` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352807 has offset 1).

The definition of A352807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352807.P8223926634270256880

`A001222(A246655(n+1))*A329119(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A352807

/-- `A001222(A246655(n+1))*A329119(n+1)` -/
def P8223926634270256880.Spec : Prop :=
  ∀ n, P8223926634270256880.a n = A352807 (n + 1)

theorem P8223926634270256880.correct : P8223926634270256880.Spec := by
  intro n
  simp only [A352807, Nat.add_sub_cancel]

end A352807

/-! ## A352807.P17015762638310883227

`A001222(A000961(n+2))*A329119(n+1)`
-/

namespace A352807.P17015762638310883227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (n + 2)).toNat * A329119 (n + 1)

end

end A352807.P17015762638310883227

namespace A352807

/-- `A001222(A000961(n+2))*A329119(n+1)` -/
def P17015762638310883227.Spec : Prop :=
  ∀ n, P17015762638310883227.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P11763947934071067533

`sqrt(A003841(n+1))*A001222(A246655(n+1))`
-/

namespace A352807.P11763947934071067533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003841 (n + 1) : ℝ) * (A001222 (A246655 (n + 1)).toNat : ℝ)

end

end A352807.P11763947934071067533

namespace A352807

/-- `sqrt(A003841(n+1))*A001222(A246655(n+1))` -/
def P11763947934071067533.Spec : Prop :=
  ∀ n, P11763947934071067533.a n = (A352807 (n + 1) : ℝ)

end A352807

/-! ## A352807.P8873444768484700728

`A001222(Δ[A024918(n+1)])*A329119(n+1)`
-/

namespace A352807.P8873444768484700728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat * A329119 (n + 1)

end

end A352807.P8873444768484700728

namespace A352807

/-- `A001222(Δ[A024918(n+1)])*A329119(n+1)` -/
def P8873444768484700728.Spec : Prop :=
  ∀ n, P8873444768484700728.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P14309647694599357418

`(A056798(n+2)-1)*A000961(n+2)*A001222(A246655(n+1))`
-/

namespace A352807.P14309647694599357418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056798 (n + 2) - 1) * A000961 (n + 2) * A001222 (A246655 (n + 1)).toNat

end

end A352807.P14309647694599357418

namespace A352807

/-- `(A056798(n+2)-1)*A000961(n+2)*A001222(A246655(n+1))` -/
def P14309647694599357418.Spec : Prop :=
  ∀ n, P14309647694599357418.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P14515482228187355246

`(A056798(n+2)-1)*A000961(n+2)*A001222(A138929(n+2)/2)`
-/

namespace A352807.P14515482228187355246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056798 (n + 2) - 1) * A000961 (n + 2) * A001222 (SequenceMachineLib.roundAway ((A138929 (n + 2) : ℚ) / 2)).toNat

end

end A352807.P14515482228187355246

namespace A352807

/-- `(A056798(n+2)-1)*A000961(n+2)*A001222(A138929(n+2)/2)` -/
def P14515482228187355246.Spec : Prop :=
  ∀ n, P14515482228187355246.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P3921972741901667835

`A001222(eq[1, A001221(n+1)]+1)*A329119(n+1)`
-/

namespace A352807.P3921972741901667835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) * A329119 (n + 1)

end

end A352807.P3921972741901667835

namespace A352807

/-- `A001222(eq[1, A001221(n+1)]+1)*A329119(n+1)` -/
def P3921972741901667835.Spec : Prop :=
  ∀ n, P3921972741901667835.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P3953958461486986609

`A001222(lt[A001221(n+2), 2]+2)*A329119(n+1)`
-/

namespace A352807.P3953958461486986609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) * A329119 (n + 1)

end

end A352807.P3953958461486986609

namespace A352807

/-- `A001222(lt[A001221(n+2), 2]+2)*A329119(n+1)` -/
def P3953958461486986609.Spec : Prop :=
  ∀ n, P3953958461486986609.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P1449436189070119574

`A001222(record[A354933(n+2)])*A329119(n+1)`
-/

namespace A352807.P1449436189070119574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A329119 (n + 1)

end

end A352807.P1449436189070119574

namespace A352807

/-- `A001222(record[A354933(n+2)])*A329119(n+1)` -/
def P1449436189070119574.Spec : Prop :=
  ∀ n, P1449436189070119574.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P6106755290422738505

`A001222(record[A336564(n+1)+1])*A329119(n+1)`
-/

namespace A352807.P6106755290422738505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A329119 (n + 1)

end

end A352807.P6106755290422738505

namespace A352807

/-- `A001222(record[A336564(n+1)+1])*A329119(n+1)` -/
def P6106755290422738505.Spec : Prop :=
  ∀ n, P6106755290422738505.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P11007164121299055906

`A001222(record[A345998(n+1)+1])*A329119(n+1)`
-/

namespace A352807.P11007164121299055906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345998 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A329119 (n + 1)

end

end A352807.P11007164121299055906

namespace A352807

/-- `A001222(record[A345998(n+1)+1])*A329119(n+1)` -/
def P11007164121299055906.Spec : Prop :=
  ∀ n, P11007164121299055906.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P2307642499485419410

`A001222(record[1-A129468(n+1)])*A329119(n+1)`
-/

namespace A352807.P2307642499485419410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A129468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A329119 (n + 1)

end

end A352807.P2307642499485419410

namespace A352807

/-- `A001222(record[1-A129468(n+1)])*A329119(n+1)` -/
def P2307642499485419410.Spec : Prop :=
  ∀ n, P2307642499485419410.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P17619753187024063823

`A001222(lt[1, A014963(n+1)]+1)*A329119(n+1)`
-/

namespace A352807.P17619753187024063823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) * A329119 (n + 1)

end

end A352807.P17619753187024063823

namespace A352807

/-- `A001222(lt[1, A014963(n+1)]+1)*A329119(n+1)` -/
def P17619753187024063823.Spec : Prop :=
  ∀ n, P17619753187024063823.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P8934735053108686132

`A001222(A246655(n+1))*A007531(A246655(n+1)+1)`
-/

namespace A352807.P8934735053108686132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246655 (n + 1)).toNat * A007531 (A246655 (n + 1) + 1).toNat

end

end A352807.P8934735053108686132

namespace A352807

/-- `A001222(A246655(n+1))*A007531(A246655(n+1)+1)` -/
def P8934735053108686132.Spec : Prop :=
  ∀ n, P8934735053108686132.a n = A352807 (n + 1)

end A352807

/-! ## A352807.P14246934053019938184

`A001222(A138929(n+2)/2)*A007531(A000961(n+2)+1)`
-/

namespace A352807.P14246934053019938184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A138929 (n + 2) : ℚ) / 2)).toNat * A007531 (A000961 (n + 2) + 1).toNat

end

end A352807.P14246934053019938184

namespace A352807

/-- `A001222(A138929(n+2)/2)*A007531(A000961(n+2)+1)` -/
def P14246934053019938184.Spec : Prop :=
  ∀ n, P14246934053019938184.a n = A352807 (n + 1)

end A352807

/-!
# A352810: Values taken both by sigma (A000203) and by antisigma (A024816), where sigma is the sum of divisors function and antisigma is the sum of the non-divisors of n less than n function.

The programs for A352810, there is no canonical definition to state claims against.
-/

/-! ## A352810.P13742718053523097670

`filter[A231368(n+2), A175192(#)]`
-/

namespace A352810.P13742718053523097670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A352810.P13742718053523097670

/-! ## A352810.P3138771144634556940

`filter[A231365(n+3), A175192(#)]`
-/

namespace A352810.P3138771144634556940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A352810.P3138771144634556940

/-! ## A352810.P9681365759094441699

`∩[A002191(n+1), A231368(n+1)]`
-/

namespace A352810.P9681365759094441699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352810.P9681365759094441699

/-! ## A352810.P9139136394224366576

`A352811(3*n+1)`
-/

namespace A352810.P9139136394224366576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352811 (3 * n + 1)

end

end A352810.P9139136394224366576

/-! ## A352810.P1411010196595664912

`record[A352811(n+1)-round((lcm(3, n)-n)/6)]`
-/

namespace A352810.P1411010196595664912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352811 (n + 1) - SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352810.P1411010196595664912

/-!
# A352812: Lexicographically earliest sequence of distinct nonnegative integers such that for any n and k coprime the binary expansions of a(n) and a(k) have no common 1's.

The programs for A352812, there is no canonical definition to state claims against.
-/

/-! ## A352812.P5824028008730500334

`A052331(n+1)%A016825(A002445(n))`
-/

namespace A352812.P5824028008730500334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052331 (n + 1)) (A016825 (A002445 n).toNat)

end

end A352812.P5824028008730500334

/-!
# A352813: Minimum difference |product(A) - product(B)| where A and B are a partition of {1,2,3,...,2*n} and |A| = |B| = n.

The programs for A352813, there is no canonical definition to state claims against.
-/

/-! ## A352813.P7364911517176919188

`A038667(2*n)`
-/

namespace A352813.P7364911517176919188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038667 (2 * n)

end

end A352813.P7364911517176919188

/-! ## A352813.P232253355056747062

`lcm(A000120(n), A038667(A004277(n)))`
-/

namespace A352813.P232253355056747062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 n) (A038667 (A004277 n).toNat)

end

end A352813.P232253355056747062

/-! ## A352813.P8537979925253076951

`A038667(A005843(n))^dr(A008836(n+1))`
-/

namespace A352813.P8537979925253076951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038667 (A005843 n).toNat ^ SequenceMachineLib.digitalRoot (A008836 (n + 1))

end

end A352813.P8537979925253076951

/-! ## A352813.P14416631394707896963

`A038667(A005843(n))+floor(A000038(n)^n/5)`
-/

namespace A352813.P14416631394707896963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038667 (A005843 n).toNat + ⌊(A000038 n ^ n : ℚ) / 5⌋

end

end A352813.P14416631394707896963

/-! ## A352813.P9521180075339749139

`A038667(A005843(n))+and(n+1, A035327(n+1))`
-/

namespace A352813.P9521180075339749139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038667 (A005843 n).toNat + Int.land (n + 1 : ℤ) (A035327 (n + 1))

end

end A352813.P9521180075339749139

/-! ## A352813.P687257282428087324

`A038667(A005843(n))+floor((A000040(n+1)%2)^n/5)`
-/

namespace A352813.P687257282428087324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038667 (A005843 n).toNat + ⌊(Int.tmod (A000040 (n + 1)) 2 ^ n : ℚ) / 5⌋

end

end A352813.P687257282428087324

/-! ## A352813.P7242732718157215129

`A200744(A028310(2*n))-A200743(A028310(2*n))`
-/

namespace A352813.P7242732718157215129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200744 (A028310 (2 * n)).toNat - A200743 (A028310 (2 * n)).toNat

end

end A352813.P7242732718157215129

/-! ## A352813.P17017987572664876742

`A038667(A004277(n))^A178334(A228202(n+1))`
-/

namespace A352813.P17017987572664876742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038667 (A004277 n).toNat : ℚ) ^ (A178334 (A228202 (n + 1)).toNat : ℤ)

end

end A352813.P17017987572664876742

/-!
# A352815: G.f. A(x) satisfies: 1 + x = Sum_{n>=0} (-1)^n * (x^n + A(x))^(n+1).

The programs for A352815, there is no canonical definition to state claims against.
-/

/-! ## A352815.P6024778320042877191

`A065033(A164549(n)+A003485(n))`
-/

namespace A352815.P6024778320042877191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A164549 n + A003485 n).toNat

end

end A352815.P6024778320042877191

/-! ## A352815.P14628176308451381086

`A332502(n)+A051274(A164033(n))`
-/

namespace A352815.P14628176308451381086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 n + A051274 (A164033 n).toNat

end

end A352815.P14628176308451381086

/-!
# A352816: G.f. A(x) satisfies: 1 - x = Sum_{n>=0} x^n * (x^n + (-1)^n*A(x))^n.

The programs for A352816, there is no canonical definition to state claims against.
-/

/-! ## A352816.P10382886818911395998

`∑[A265370(∑[A010373(n+1)])]`
-/

namespace A352816.P10382886818911395998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010373 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352816.P10382886818911395998

/-! ## A352816.P2940354012273666158

`A048766(A001791(n))+A005773(n)`
-/

namespace A352816.P2940354012273666158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A001791 n).toNat + A005773 n

end

end A352816.P2940354012273666158

/-! ## A352816.P1751762183828509981

`A189912(n)-A054404(A113682(n))`
-/

namespace A352816.P1751762183828509981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189912 n - A054404 (A113682 n).toNat

end

end A352816.P1751762183828509981

/-! ## A352816.P5887644556047009402

`A038567(A300660(2*n)+A006749(n+1))`
-/

namespace A352816.P5887644556047009402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A300660 (2 * n) + A006749 (n + 1)).toNat

end

end A352816.P5887644556047009402

/-!
# A352817: G.f. A(x) satisfies: 1 - x = Sum_{n>=0} x^n * (x^(2*n) + (-1)^n*A(x))^n.

The programs for A352817, there is no canonical definition to state claims against.
-/

/-! ## A352817.P9949893699851166097

`A257639(or(A042950(n), A206947(n)))`
-/

namespace A352817.P9949893699851166097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (A042950 n) (A206947 n)).toNat

end

end A352817.P9949893699851166097

/-! ## A352817.P10371643685322972429

`A257212(A340334(n))`
-/

namespace A352817.P10371643685322972429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A340334 n).toNat

end

end A352817.P10371643685322972429

/-! ## A352817.P16349100478618716311

`A308622(A032290(n+1))`
-/

namespace A352817.P16349100478618716311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308622 (A032290 (n + 1)).toNat

end

end A352817.P16349100478618716311

/-! ## A352817.P17110751920696481308

`A238369(A194079(n+1))`
-/

namespace A352817.P17110751920696481308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238369 (A194079 (n + 1)).toNat

end

end A352817.P17110751920696481308

/-! ## A352817.P7444307828346745252

`A175948(A364595(n+1))`
-/

namespace A352817.P7444307828346745252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A364595 (n + 1)).toNat

end

end A352817.P7444307828346745252

/-!
# A352818: G.f. A(x) satisfies: 1 - x = Sum_{n>=0} (x^(2*n) + (-1)^n*A(x))^n.

The programs for A352818, there is no canonical definition to state claims against.
-/

/-! ## A352818.P10749811522710150955

`floor(ratio[A089197(A001906(n))])`
-/

namespace A352818.P10749811522710150955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089197 (A001906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A352818.P10749811522710150955

/-! ## A352818.P17982214690434061865

`∑[A105223(A193621(n))]`
-/

namespace A352818.P17982214690434061865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A193621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352818.P17982214690434061865

/-! ## A352818.P1870626542932640300

`∑[A103128(A000598(n)²)]`
-/

namespace A352818.P1870626542932640300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A000598 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352818.P1870626542932640300

/-! ## A352818.P6113717305095664354

`∑[A103128(A036376(n)²)]`
-/

namespace A352818.P6113717305095664354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A036376 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352818.P6113717305095664354

/-!
# A352819: G.f. A(x) satisfies: 1 - x = Sum_{n>=0} (x^(3*n) + (-1)^n*A(x))^n.

The programs for A352819, there is no canonical definition to state claims against.
-/

/-! ## A352819.P7397370969610239036

`A026834(A054668(n+1))`
-/

namespace A352819.P7397370969610239036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A054668 (n + 1)).toNat

end

end A352819.P7397370969610239036

/-! ## A352819.P12984337875547523070

`A257639(∑[A120589(n)])`
-/

namespace A352819.P12984337875547523070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352819.P12984337875547523070

/-! ## A352819.P12318712092942669720

`A086597(n+1)+A003056(A337721(n))`
-/

namespace A352819.P12318712092942669720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1) + A003056 (A337721 n).toNat

end

end A352819.P12318712092942669720

/-! ## A352819.P10847154513057348658

`A003059(A148292(n))`
-/

namespace A352819.P10847154513057348658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A148292 n).toNat

end

end A352819.P10847154513057348658

/-! ## A352819.P8462888292262504449

`A083277(A394411(n))`
-/

namespace A352819.P8462888292262504449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A394411 n).toNat

end

end A352819.P8462888292262504449

/-!
# A352820: G.f. A(x) satisfies: 1 - x = Sum_{n>=0} (x^(4*n) + (-1)^n*A(x))^n.

The programs for A352820, there is no canonical definition to state claims against.
-/

/-! ## A352820.P10095154423013618153

`A156262(A008302(n+1)+A000045(n))`
-/

namespace A352820.P10095154423013618153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A008302 (n + 1) + A000045 n).toNat

end

end A352820.P10095154423013618153

/-! ## A352820.P1555053980173102735

`A012265(A227300(n+1)+A004525(n))`
-/

namespace A352820.P1555053980173102735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A227300 (n + 1) + A004525 n).toNat

end

end A352820.P1555053980173102735

/-! ## A352820.P928085481588119705

`A156262(A152736(n+1)+A105471(n))`
-/

namespace A352820.P928085481588119705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A152736 (n + 1) + A105471 n).toNat

end

end A352820.P928085481588119705

/-! ## A352820.P8474021945451654259

`A204551(A004798(n+1)*A173925(n))`
-/

namespace A352820.P8474021945451654259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A004798 (n + 1) * A173925 n).toNat

end

end A352820.P8474021945451654259

/-!
# A352821: G.f. A(x) satisfies: 1 - x = Sum_{n>=0} (x^(5*n) + (-1)^n*A(x))^n.

The programs for A352821, there is no canonical definition to state claims against.
-/

/-! ## A352821.P16685809814578674684

`A318736(A098131(n)%A078228(n+1))`
-/

namespace A352821.P16685809814578674684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318736 (Int.tmod (A098131 n) (A078228 (n + 1))).toNat

end

end A352821.P16685809814578674684

/-!
# A352822: Number of fixed points y(i) = i, where y is the weakly increasing sequence of prime indices of n.

The programs for A352822, there is no canonical definition to state claims against.
-/

/-! ## A352822.P14150072161624113138

`A001222(n+1)-A352823(n+1)`
-/

namespace A352822.P14150072161624113138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A352823 (n + 1)

end

end A352822.P14150072161624113138

/-! ## A352822.P5147796135460988653

`Δ[A022559(n)]-A352823(n+1)`
-/

namespace A352822.P5147796135460988653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A352823 (n + 1)

end

end A352822.P5147796135460988653

/-! ## A352822.P9343628638686193528

`log2(A061142(n+1))-A352823(n+1)`
-/

namespace A352822.P9343628638686193528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A352823 (n + 1) : ℝ)

end

end A352822.P9343628638686193528

/-! ## A352822.P16794869868376403541

`A073093(n+1)-(A352823(n+1)+1)`
-/

namespace A352822.P16794869868376403541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - (A352823 (n + 1) + 1)

end

end A352822.P16794869868376403541

/-! ## A352822.P16403590992886505983

`val(A165825(n+1), 4)-A352823(n+1)`
-/

namespace A352822.P16403590992886505983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ) - A352823 (n + 1)

end

end A352822.P16403590992886505983

/-! ## A352822.P14866969734747892449

`A000030(log2(∏{e}[n+1, 2^#])-A352823(n+1))`
-/

namespace A352822.P14866969734747892449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) - (A352823 (n + 1) : ℝ))).toNat

end

end A352822.P14866969734747892449

/-! ## A352822.P824573644561001460

`A222250(log2(∏{e}[n+1, 2^#])-A352823(n+1))`
-/

namespace A352822.P824573644561001460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (SequenceMachineLib.roundAway (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) - (A352823 (n + 1) : ℝ))).toNat

end

end A352822.P824573644561001460

/-! ## A352822.P10159804386527552348

`A001221(A086568(n+1))-A352823(n+1)`
-/

namespace A352822.P10159804386527552348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086568 (n + 1)).toNat - A352823 (n + 1)

end

end A352822.P10159804386527552348

/-! ## A352822.P16976028271305134552

`A056239(A181819(n+1))-A352823(n+1)`
-/

namespace A352822.P16976028271305134552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1)).toNat - A352823 (n + 1)

end

end A352822.P16976028271305134552

/-! ## A352822.P14809650941281868121

`A302037(A302025(n+1))-A352823(n+1)`
-/

namespace A352822.P14809650941281868121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302025 (n + 1)).toNat - A352823 (n + 1)

end

end A352822.P14809650941281868121

/-! ## A352822.P13512974732108685198

`A000005(A068794(n+1))-(A352823(n+1)+1)`
-/

namespace A352822.P13512974732108685198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068794 (n + 1)).toNat - (A352823 (n + 1) + 1)

end

end A352822.P13512974732108685198

/-! ## A352822.P10782343622595278990

`A004086(val(A061142(n+1), 2)-A352823(n+1))`
-/

namespace A352822.P10782343622595278990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((SequenceMachineLib.valuation (A061142 (n + 1)).toNat 2 : ℤ) - A352823 (n + 1)).toNat

end

end A352822.P10782343622595278990

/-!
# A352823: Number of nonfixed points y(i) != i, where y is the weakly increasing sequence of prime indices of n.

The programs for A352823, there is no canonical definition to state claims against.
-/

/-! ## A352823.P2259853481350909380

`A001222(n+1)-A352822(n+1)`
-/

namespace A352823.P2259853481350909380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A352822 (n + 1)

end

end A352823.P2259853481350909380

/-! ## A352823.P6968323087334073368

`Δ[A022559(n)]-A352822(n+1)`
-/

namespace A352823.P6968323087334073368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A352822 (n + 1)

end

end A352823.P6968323087334073368

/-! ## A352823.P8397006670640563356

`log2(A061142(n+1))-A352822(n+1)`
-/

namespace A352823.P8397006670640563356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A352822 (n + 1) : ℝ)

end

end A352823.P8397006670640563356

/-! ## A352823.P3338374236094597783

`A073093(n+1)-(A352822(n+1)+1)`
-/

namespace A352823.P3338374236094597783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - (A352822 (n + 1) + 1)

end

end A352823.P3338374236094597783

/-! ## A352823.P13172607005381269238

`val(A124508(n+1), 2)-A352822(n+1)`
-/

namespace A352823.P13172607005381269238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2 : ℤ) - A352822 (n + 1)

end

end A352823.P13172607005381269238

/-! ## A352823.P8148644163596061655

`val(A165827(n+1), 2)-A352822(n+1)`
-/

namespace A352823.P8148644163596061655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 : ℤ) - A352822 (n + 1)

end

end A352823.P8148644163596061655

/-! ## A352823.P1618828414769635757

`val(A165825(n+1), 4)-A352822(n+1)`
-/

namespace A352823.P1618828414769635757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ) - A352822 (n + 1)

end

end A352823.P1618828414769635757

/-! ## A352823.P6990796929205630609

`A000005(∏{e}[n+1, 2^#])-1-A352822(n+1)`
-/

namespace A352823.P6990796929205630609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1 - A352822 (n + 1)

end

end A352823.P6990796929205630609

/-! ## A352823.P14611623292576081666

`A001221(A086568(n+1))-A352822(n+1)`
-/

namespace A352823.P14611623292576081666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086568 (n + 1)).toNat - A352822 (n + 1)

end

end A352823.P14611623292576081666

/-! ## A352823.P6902620055096707582

`A023443(A073093(n+1)-A352822(n+1))`
-/

namespace A352823.P6902620055096707582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073093 (n + 1) - A352822 (n + 1)).toNat

end

end A352823.P6902620055096707582

/-! ## A352823.P5276593530074293142

`A269388(A073093(n+1)-A352822(n+1))`
-/

namespace A352823.P5276593530074293142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A073093 (n + 1) - A352822 (n + 1)).toNat

end

end A352823.P5276593530074293142

/-! ## A352823.P8958703642356535085

`A302037(A302025(n+1))-A352822(n+1)`
-/

namespace A352823.P8958703642356535085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302025 (n + 1)).toNat - A352822 (n + 1)

end

end A352823.P8958703642356535085

/-! ## A352823.P972307203575120904

`A000005(A068794(n+1))-(A352822(n+1)+1)`
-/

namespace A352823.P972307203575120904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068794 (n + 1)).toNat - (A352822 (n + 1) + 1)

end

end A352823.P972307203575120904

/-! ## A352823.P38489767700714846

`A022559(n+1)-(A352822(n+1)+A022559(n))`
-/

namespace A352823.P38489767700714846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - (A352822 (n + 1) + A022559 n)

end

end A352823.P38489767700714846

/-!
# A352824: Number of fixed points y(i) = i, where y is the integer partition with Heinz number n.

The programs for A352824, the canonical program `A352824.P9497561774546337623` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352824 has offset 1).

The definition of A352824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352824.P566869565699552527

`A001222(n+1)-A352825(n+1)`
-/

namespace A352824.P566869565699552527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A352825 (n + 1)

end

end A352824.P566869565699552527

namespace A352824

/-- `A001222(n+1)-A352825(n+1)` -/
def P566869565699552527.Spec : Prop :=
  ∀ n, P566869565699552527.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P12248567643401110833

`char[A352827(n+1)-1]`
-/

namespace A352824.P12248567643401110833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352827 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A352824.P12248567643401110833

namespace A352824

/-- `char[A352827(n+1)-1]` -/
def P12248567643401110833.Spec : Prop :=
  ∀ n, (P12248567643401110833.a n : ℤ) = A352824 (n + 1)

end A352824

/-! ## A352824.P3510503711185856615

`A322865(6*(n+1))²%3`
-/

namespace A352824.P3510503711185856615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322865 (6 * (n + 1)) ^ 2) 3

end

end A352824.P3510503711185856615

namespace A352824

/-- `A322865(6*(n+1))²%3` -/
def P3510503711185856615.Spec : Prop :=
  ∀ n, P3510503711185856615.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P1282797837420220658

`A322865(3*(n+1)/2^val(n+1, 2))%(ceil(atan(n))+1)`
-/

namespace A352824.P1282797837420220658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322865 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat) (⌈Real.arctan (n : ℝ)⌉ + 1)

end

end A352824.P1282797837420220658

namespace A352824

/-- `A322865(3*(n+1)/2^val(n+1, 2))%(ceil(atan(n))+1)` -/
def P1282797837420220658.Spec : Prop :=
  ∀ n, P1282797837420220658.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P7594366914596039119

`char[A023443(A352827(n+1))]`
-/

namespace A352824.P7594366914596039119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352827 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A352824.P7594366914596039119

namespace A352824

/-- `char[A023443(A352827(n+1))]` -/
def P7594366914596039119.Spec : Prop :=
  ∀ n, (P7594366914596039119.a n : ℤ) = A352824 (n + 1)

end A352824

/-! ## A352824.P2052177998198061489

`A323903(A008486(2*(n+1)))%2`
-/

namespace A352824.P2052177998198061489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323903 (A008486 (2 * (n + 1))).toNat) 2

end

end A352824.P2052177998198061489

namespace A352824

/-- `A323903(A008486(2*(n+1)))%2` -/
def P2052177998198061489.Spec : Prop :=
  ∀ n, P2052177998198061489.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P17164650982952907606

`A323903(A058992(3*n+5))%2`
-/

namespace A352824.P17164650982952907606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323903 (A058992 (3 * n + 5)).toNat) 2

end

end A352824.P17164650982952907606

namespace A352824

/-- `A323903(A058992(3*n+5))%2` -/
def P17164650982952907606.Spec : Prop :=
  ∀ n, P17164650982952907606.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P14979832951954649436

`A151622(val(A322865(6*(n+1)), 3))`
-/

namespace A352824.P14979832951954649436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (SequenceMachineLib.valuation (A322865 (6 * (n + 1))).toNat 3)

end

end A352824.P14979832951954649436

namespace A352824

/-- `A151622(val(A322865(6*(n+1)), 3))` -/
def P14979832951954649436.Spec : Prop :=
  ∀ n, P14979832951954649436.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P6860088734318727733

`A331748(val(A322865(6*(n+1)), 3))`
-/

namespace A352824.P6860088734318727733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331748 (SequenceMachineLib.valuation (A322865 (6 * (n + 1))).toNat 3)

end

end A352824.P6860088734318727733

namespace A352824

/-- `A331748(val(A322865(6*(n+1)), 3))` -/
def P6860088734318727733.Spec : Prop :=
  ∀ n, P6860088734318727733.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P14742887921647109581

`C(A257990(n+1), A257990(5*(n+1)))`
-/

namespace A352824.P14742887921647109581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257990 (n + 1)).toNat (A257990 (5 * (n + 1))).toNat

end

end A352824.P14742887921647109581

namespace A352824

/-- `C(A257990(n+1), A257990(5*(n+1)))` -/
def P14742887921647109581.Spec : Prop :=
  ∀ n, (P14742887921647109581.a n : ℤ) = A352824 (n + 1)

end A352824

/-! ## A352824.P10849539494063725142

`val(A332462(2*(n+1)), 2*A105560(2*(n+1)))`
-/

namespace A352824.P10849539494063725142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332462 (2 * (n + 1))).toNat (2 * A105560 (2 * (n + 1))).toNat

end

end A352824.P10849539494063725142

namespace A352824

/-- `val(A332462(2*(n+1)), 2*A105560(2*(n+1)))` -/
def P10849539494063725142.Spec : Prop :=
  ∀ n, (P10849539494063725142.a n : ℤ) = A352824 (n + 1)

end A352824

/-! ## A352824.P13592994664415054000

`A007949(A087039(n+1))^A087116(n)`
-/

namespace A352824.P13592994664415054000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007949 (A087039 (n + 1)).toNat : ℚ) ^ (A087116 n : ℤ)

end

end A352824.P13592994664415054000

namespace A352824

/-- `A007949(A087039(n+1))^A087116(n)` -/
def P13592994664415054000.Spec : Prop :=
  ∀ n, P13592994664415054000.a n = (A352824 (n + 1) : ℚ)

end A352824

/-! ## A352824.P10635680535035622979

`A114448(A087039(n+1))^A023416(n)`
-/

namespace A352824.P10635680535035622979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114448 (A087039 (n + 1)).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A352824.P10635680535035622979

namespace A352824

/-- `A114448(A087039(n+1))^A023416(n)` -/
def P10635680535035622979.Spec : Prop :=
  ∀ n, P10635680535035622979.a n = (A352824 (n + 1) : ℚ)

end A352824

/-! ## A352824.P12854120639870910954

`A060398(A329888(n+1))^A035327(n)`
-/

namespace A352824.P12854120639870910954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060398 (A329888 (n + 1)).toNat : ℚ) ^ (A035327 n : ℤ)

end

end A352824.P12854120639870910954

namespace A352824

/-- `A060398(A329888(n+1))^A035327(n)` -/
def P12854120639870910954.Spec : Prop :=
  ∀ n, P12854120639870910954.a n = (A352824 (n + 1) : ℚ)

end A352824

/-! ## A352824.P9497561774546337623

`A001222(gcd(A087436(n+1), A130727(n)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A352824

/-- `A001222(gcd(A087436(n+1), A130727(n)))` -/
def P9497561774546337623.Spec : Prop :=
  ∀ n, P9497561774546337623.a n = A352824 (n + 1)

theorem P9497561774546337623.correct : P9497561774546337623.Spec := by
  intro n
  simp only [A352824, Nat.add_sub_cancel]

end A352824

/-! ## A352824.P16447177727857670430

`A257990(n+1)-A257990(A064989(n+1))`
-/

namespace A352824.P16447177727857670430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1) - A257990 (A064989 (n + 1)).toNat

end

end A352824.P16447177727857670430

namespace A352824

/-- `A257990(n+1)-A257990(A064989(n+1))` -/
def P16447177727857670430.Spec : Prop :=
  ∀ n, P16447177727857670430.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P4580953199658754819

`A001222(gcd(A105560(n+1), A332462(n+1)))`
-/

namespace A352824.P4580953199658754819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A105560 (n + 1)) (A332462 (n + 1)))

end

end A352824.P4580953199658754819

namespace A352824

/-- `A001222(gcd(A105560(n+1), A332462(n+1)))` -/
def P4580953199658754819.Spec : Prop :=
  ∀ n, P4580953199658754819.a n = A352824 (n + 1)

end A352824

/-! ## A352824.P15736306903442138472

`val(A332462(n+1), A000040(A086436(n+1)))`
-/

namespace A352824.P15736306903442138472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332462 (n + 1)).toNat (A000040 (A086436 (n + 1)).toNat).toNat

end

end A352824.P15736306903442138472

namespace A352824

/-- `val(A332462(n+1), A000040(A086436(n+1)))` -/
def P15736306903442138472.Spec : Prop :=
  ∀ n, (P15736306903442138472.a n : ℤ) = A352824 (n + 1)

end A352824

/-! ## A352824.P7480813176196802314

`val(A332462(n+1), A105560(A045965(n+1)))`
-/

namespace A352824.P7480813176196802314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332462 (n + 1)).toNat (A105560 (A045965 (n + 1)).toNat).toNat

end

end A352824.P7480813176196802314

namespace A352824

/-- `val(A332462(n+1), A105560(A045965(n+1)))` -/
def P7480813176196802314.Spec : Prop :=
  ∀ n, (P7480813176196802314.a n : ℤ) = A352824 (n + 1)

end A352824

/-! ## A352824.P1609509674721217564

`log2(A061142(n+1))-A352825(n+1)`
-/

namespace A352824.P1609509674721217564
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A352825 (n + 1) : ℝ)

end

end A352824.P1609509674721217564

namespace A352824

/-- `log2(A061142(n+1))-A352825(n+1)` -/
def P1609509674721217564.Spec : Prop :=
  ∀ n, P1609509674721217564.a n = (A352824 (n + 1) : ℝ)

end A352824

/-!
# A352825: Number of nonfixed points y(i) != i, where y is the integer partition with Heinz number n.

The programs for A352825, the canonical program `A352825.P16191883043105001800` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352825 has offset 1).

The definition of A352825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A352824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352825.P16191883043105001800

`A001222(n+1)-A352824(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A352825

/-- `A001222(n+1)-A352824(n+1)` -/
def P16191883043105001800.Spec : Prop :=
  ∀ n, P16191883043105001800.a n = A352825 (n + 1)

theorem P16191883043105001800.correct : P16191883043105001800.Spec := by
  intro n
  simp only [A352825, Nat.add_sub_cancel]

end A352825

/-! ## A352825.P6849124234776677812

`log2(A061142(n+1))-A352824(n+1)`
-/

namespace A352825.P6849124234776677812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A352824 (n + 1) : ℝ)

end

end A352825.P6849124234776677812

namespace A352825

/-- `log2(A061142(n+1))-A352824(n+1)` -/
def P6849124234776677812.Spec : Prop :=
  ∀ n, P6849124234776677812.a n = (A352825 (n + 1) : ℝ)

end A352825

/-! ## A352825.P5961861440414409980

`dr(A054841(n+1)-A352824(n+1))`
-/

namespace A352825.P5961861440414409980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A054841 (n + 1) - A352824 (n + 1))

end

end A352825.P5961861440414409980

namespace A352825

/-- `dr(A054841(n+1)-A352824(n+1))` -/
def P5961861440414409980.Spec : Prop :=
  ∀ n, (P5961861440414409980.a n : ℤ) = A352825 (n + 1)

end A352825

/-! ## A352825.P13016428111796463917

`A001222(n+1)-char[A352827(n+1)-1]`
-/

namespace A352825.P13016428111796463917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352827 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A352825.P13016428111796463917

namespace A352825

/-- `A001222(n+1)-char[A352827(n+1)-1]` -/
def P13016428111796463917.Spec : Prop :=
  ∀ n, P13016428111796463917.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P10719360691224386407

`A000005(∏{e}[n+1, 2^#])-1-A352824(n+1)`
-/

namespace A352825.P10719360691224386407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1 - A352824 (n + 1)

end

end A352825.P10719360691224386407

namespace A352825

/-- `A000005(∏{e}[n+1, 2^#])-1-A352824(n+1)` -/
def P10719360691224386407.Spec : Prop :=
  ∀ n, P10719360691224386407.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P18047593221341190737

`A353670(n+1)+A064415(A052126(n+1))`
-/

namespace A352825.P18047593221341190737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1) + A064415 (A052126 (n + 1)).toNat

end

end A352825.P18047593221341190737

namespace A352825

/-- `A353670(n+1)+A064415(A052126(n+1))` -/
def P18047593221341190737.Spec : Prop :=
  ∀ n, P18047593221341190737.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P7171695077928477485

`A001221(A086568(n+1))-A352824(n+1)`
-/

namespace A352825.P7171695077928477485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086568 (n + 1)).toNat - A352824 (n + 1)

end

end A352825.P7171695077928477485

namespace A352825

/-- `A001221(A086568(n+1))-A352824(n+1)` -/
def P7171695077928477485.Spec : Prop :=
  ∀ n, P7171695077928477485.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P13914013432253891971

`A056239(A181819(n+1))-A352824(n+1)`
-/

namespace A352825.P13914013432253891971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1)).toNat - A352824 (n + 1)

end

end A352825.P13914013432253891971

namespace A352825

/-- `A056239(A181819(n+1))-A352824(n+1)` -/
def P13914013432253891971.Spec : Prop :=
  ∀ n, P13914013432253891971.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P5666563192285408360

`A326190(A046523(n+1))-A352824(n+1)`
-/

namespace A352825.P5666563192285408360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326190 (A046523 (n + 1)).toNat - A352824 (n + 1)

end

end A352825.P5666563192285408360

namespace A352825

/-- `A326190(A046523(n+1))-A352824(n+1)` -/
def P5666563192285408360.Spec : Prop :=
  ∀ n, P5666563192285408360.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P7414209731966610722

`A302037(A302025(n+1))-A352824(n+1)`
-/

namespace A352825.P7414209731966610722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302025 (n + 1)).toNat - A352824 (n + 1)

end

end A352825.P7414209731966610722

namespace A352825

/-- `A302037(A302025(n+1))-A352824(n+1)` -/
def P7414209731966610722.Spec : Prop :=
  ∀ n, P7414209731966610722.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P10411778531875292267

`A000005(A068794(n+1))-(A352824(n+1)+1)`
-/

namespace A352825.P10411778531875292267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068794 (n + 1)).toNat - (A352824 (n + 1) + 1)

end

end A352825.P10411778531875292267

namespace A352825

/-- `A000005(A068794(n+1))-(A352824(n+1)+1)` -/
def P10411778531875292267.Spec : Prop :=
  ∀ n, P10411778531875292267.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P7211531828316023050

`A001221(A086568(n+1)/(A352824(n+1)+1))`
-/

namespace A352825.P7211531828316023050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A086568 (n + 1) : ℚ) / (A352824 (n + 1) + 1 : ℚ))).toNat

end

end A352825.P7211531828316023050

namespace A352825

/-- `A001221(A086568(n+1)/(A352824(n+1)+1))` -/
def P7211531828316023050.Spec : Prop :=
  ∀ n, P7211531828316023050.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P11137503918921050114

`A326190(A046523(n+1)/(A352824(n+1)+1))`
-/

namespace A352825.P11137503918921050114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326190 (SequenceMachineLib.roundAway ((A046523 (n + 1) : ℚ) / (A352824 (n + 1) + 1 : ℚ))).toNat

end

end A352825.P11137503918921050114

namespace A352825

/-- `A326190(A046523(n+1)/(A352824(n+1)+1))` -/
def P11137503918921050114.Spec : Prop :=
  ∀ n, P11137503918921050114.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P1295137760770832661

`A004086(val(A061142(n+1), 2)-A352824(n+1))`
-/

namespace A352825.P1295137760770832661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((SequenceMachineLib.valuation (A061142 (n + 1)).toNat 2 : ℤ) - A352824 (n + 1)).toNat

end

end A352825.P1295137760770832661

namespace A352825

/-- `A004086(val(A061142(n+1), 2)-A352824(n+1))` -/
def P1295137760770832661.Spec : Prop :=
  ∀ n, P1295137760770832661.a n = A352825 (n + 1)

end A352825

/-! ## A352825.P7680167205290792575

`A022559(n+1)-(A352824(n+1)+A022559(n))`
-/

namespace A352825.P7680167205290792575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - (A352824 (n + 1) + A022559 n)

end

end A352825.P7680167205290792575

namespace A352825

/-- `A022559(n+1)-(A352824(n+1)+A022559(n))` -/
def P7680167205290792575.Spec : Prop :=
  ∀ n, P7680167205290792575.a n = A352825 (n + 1)

end A352825

/-!
# A352826: Heinz numbers of integer partitions y without a fixed point y(i) = i. Such a fixed point is unique if it exists.

The programs for A352826, there is no canonical definition to state claims against.
-/

/-! ## A352826.P10301953561856128441

`eq[0, A352824(n+1)]+1`
-/

namespace A352826.P10301953561856128441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352826.P10301953561856128441

/-! ## A352826.P17162888961644383810

`comp[A352827(n+1)-1]+1`
-/

namespace A352826.P17162888961644383810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352827 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352826.P17162888961644383810

/-! ## A352826.P16900754159434417273

`lt[A352824(abs(1-n)+1), 1]`
-/

namespace A352826.P16900754159434417273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352826.P16900754159434417273

/-! ## A352826.P1725032914572844250

`eq[3, gcd(6, A322865(6*(n+1))²)]+1`
-/

namespace A352826.P1725032914572844250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A322865 (6 * (n + 1)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A352826.P1725032914572844250

/-! ## A352826.P16833667074058833109

`comp[A023443(A352827(n+1))]+1`
-/

namespace A352826.P16833667074058833109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352827 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352826.P16833667074058833109

/-! ## A352826.P17020790162723828164

`eq[A000007(n), A352824(A028310(n))]`
-/

namespace A352826.P17020790162723828164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352826.P17020790162723828164

/-! ## A352826.P15349233071330302153

`eq[A000038(n), A352824(A028310(n))]`
-/

namespace A352826.P15349233071330302153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352826.P15349233071330302153

/-! ## A352826.P3869670998431659866

`eq[A151933(n), A352824(A028310(n))]`
-/

namespace A352826.P3869670998431659866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352826.P3869670998431659866

/-!
# A352827: Heinz numbers of integer partitions y with a fixed point y(i) = i. Such a fixed point is unique if it exists.

The programs for A352827, there is no canonical definition to state claims against.
-/

/-! ## A352827.P3912230396723297967

`eq[1, gcd(6, A322865(6*(n+1))²)]+1`
-/

namespace A352827.P3912230396723297967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A322865 (6 * (n + 1)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A352827.P3912230396723297967

/-! ## A352827.P3692835430027319855

`∪[A353316(n+1), A353317(n+1)]`
-/

namespace A352827.P3692835430027319855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352827.P3692835430027319855

/-! ## A352827.P4441155413190039914

`filter[n+1, A352824(#)]`
-/

namespace A352827.P4441155413190039914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A352824 (f1 j) = 1) n)

end

end A352827.P4441155413190039914

/-! ## A352827.P1491932037202593385

`lt[0, A352824(n+1)]+1`
-/

namespace A352827.P1491932037202593385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352827.P1491932037202593385

/-! ## A352827.P16585924741985787963

`eq[1, A352824(n+2)]+2`
-/

namespace A352827.P16585924741985787963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A352827.P16585924741985787963

/-!
# A352828: Number of strict integer partitions y of n with no fixed points y(i) = i.

The programs for A352828, there is no canonical definition to state claims against.
-/

/-! ## A352828.P6413900849753594744

`A000009(n)-A352829(n)`
-/

namespace A352828.P6413900849753594744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A352829 n

end

end A352828.P6413900849753594744

/-! ## A352828.P2513020810993968449

`abs(A081360(n))-A352829(n)`
-/

namespace A352828.P2513020810993968449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A352829 n

end

end A352828.P2513020810993968449

/-! ## A352828.P9429178855394639716

`∑[A087897(n)]-A352829(n)`
-/

namespace A352828.P9429178855394639716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352829 n

end

end A352828.P9429178855394639716

/-! ## A352828.P15122951324508017672

`A111133(n)+1-A352829(n)`
-/

namespace A352828.P15122951324508017672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A352829 n)

end

end A352828.P15122951324508017672

/-! ## A352828.P339415254120237926

`A219347(2*n²)-A352829(n)`
-/

namespace A352828.P339415254120237926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (2 * n ^ 2) - A352829 n

end

end A352828.P339415254120237926

/-! ## A352828.P4069502382914471200

`A015716(A001844(n))-A352829(n)`
-/

namespace A352828.P4069502382914471200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A001844 n).toNat - A352829 n

end

end A352828.P4069502382914471200

/-! ## A352828.P9101935856398311587

`A111133(n)-A023443(A352829(n))`
-/

namespace A352828.P9101935856398311587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n - A023443 (A352829 n).toNat

end

end A352828.P9101935856398311587

/-! ## A352828.P14667019735153999153

`A025147(n)+A096765(n)-A352829(n)`
-/

namespace A352828.P14667019735153999153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A352829 n)

end

end A352828.P14667019735153999153

/-! ## A352828.P3916920155295742504

`A067659(n)+A067661(n)-A352829(n)`
-/

namespace A352828.P3916920155295742504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A067661 n - A352829 n)

end

end A352828.P3916920155295742504

/-! ## A352828.P4492408662062389526

`∑{d}[A081360(n), A000010(#)]-A352829(n)`
-/

namespace A352828.P4492408662062389526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d - A352829 n

end

end A352828.P4492408662062389526

/-!
# A352829: Number of strict integer partitions y of n with a fixed point y(i) = i.

The programs for A352829, there is no canonical definition to state claims against.
-/

/-! ## A352829.P8431404695092136024

`A000009(n)-A352828(n)`
-/

namespace A352829.P8431404695092136024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A352828 n

end

end A352829.P8431404695092136024

/-! ## A352829.P12732097308977967754

`abs(A081360(n))-A352828(n)`
-/

namespace A352829.P12732097308977967754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A352828 n

end

end A352829.P12732097308977967754

/-! ## A352829.P13694358899351581504

`∑[A087897(n)]-A352828(n)`
-/

namespace A352829.P13694358899351581504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352828 n

end

end A352829.P13694358899351581504

/-! ## A352829.P7713475958151380356

`A111133(n)+1-A352828(n)`
-/

namespace A352829.P7713475958151380356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A352828 n)

end

end A352829.P7713475958151380356

/-! ## A352829.P5607971095898953107

`A219347(2*n²)-A352828(n)`
-/

namespace A352829.P5607971095898953107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (2 * n ^ 2) - A352828 n

end

end A352829.P5607971095898953107

/-! ## A352829.P3660599949384770483

`A111133(n)-A023443(A352828(n))`
-/

namespace A352829.P3660599949384770483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n - A023443 (A352828 n).toNat

end

end A352829.P3660599949384770483

/-! ## A352829.P13906401912399487604

`A000041(n)-(A352828(n)+A047967(n))`
-/

namespace A352829.P13906401912399487604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A352828 n + A047967 n)

end

end A352829.P13906401912399487604

/-! ## A352829.P13567977531941449723

`A067659(n)+A067661(n)-A352828(n)`
-/

namespace A352829.P13567977531941449723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A067661 n - A352828 n)

end

end A352829.P13567977531941449723

/-! ## A352829.P10533747449255275758

`A000700(n)+A331848(n)-A352828(n)`
-/

namespace A352829.P10533747449255275758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A331848 n - A352828 n)

end

end A352829.P10533747449255275758

/-! ## A352829.P8944655160039929609

`∑{d}[A081360(n), A000010(#)]-A352828(n)`
-/

namespace A352829.P8944655160039929609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d - A352828 n

end

end A352829.P8944655160039929609

/-!
# A352830: Numbers whose weakly increasing prime indices y have no fixed points y(i) = i.

The programs for A352830, there is no canonical definition to state claims against.
-/

/-! ## A352830.P10115409119942538976

`eq[1, gcd(n, A256750(n²))]`
-/

namespace A352830.P10115409119942538976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A256750 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352830.P10115409119942538976

/-! ## A352830.P1197621113359924557

`eq[0, A352822(abs(xor(n, -2)))]`
-/

namespace A352830.P1197621113359924557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352830.P1197621113359924557

/-! ## A352830.P11792717372256519850

`eq[0, A352822(n+1)]+1`
-/

namespace A352830.P11792717372256519850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352830.P11792717372256519850

/-! ## A352830.P11447833246653485301

`∪[12*n+1, A056911(n+1)]`
-/

namespace A352830.P11447833246653485301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352830.P11447833246653485301

/-! ## A352830.P3011188998400503418

`eq[0, n²%A253139(n+1)]+1`
-/

namespace A352830.P3011188998400503418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A253139 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352830.P3011188998400503418

/-! ## A352830.P8762714256037947009

`eq[n%2, A348948(xor(1, 3*n)+1)]`
-/

namespace A352830.P8762714256037947009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348948 (Nat.xor 1 (3 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352830.P8762714256037947009

/-! ## A352830.P3001604499989655515

`∪[6*n, eq[1, A323239(n+1)]]+1`
-/

namespace A352830.P3001604499989655515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + 1

end

end A352830.P3001604499989655515

/-! ## A352830.P11274341413073369183

`∪[p?[2*n+5]², A334420(n+1)]`
-/

namespace A352830.P11274341413073369183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A352830.P11274341413073369183

/-! ## A352830.P1736714192421618041

`lt[A300251(n+1), (n+1)/sqrt(5)]+1`
-/

namespace A352830.P1736714192421618041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (5 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A352830.P1736714192421618041

/-!
# A352831: Numbers whose weakly increasing prime indices y have exactly one fixed point y(i) = i.

The programs for A352831, there is no canonical definition to state claims against.
-/

/-! ## A352831.P11638064275737432846

`eq[1, A352822(n+1)]+1`
-/

namespace A352831.P11638064275737432846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352831.P11638064275737432846

/-! ## A352831.P9317661077213328107

`eq[1, A352822(A028310(n))]`
-/

namespace A352831.P9317661077213328107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352831.P9317661077213328107

/-! ## A352831.P7253527417053018159

`A020725(eq[1, A352822(n+1)])`
-/

namespace A352831.P7253527417053018159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352831.P7253527417053018159

/-! ## A352831.P17709427773537051740

`record[A352872(n+1)/A352822(A352872(n+1))]`
-/

namespace A352831.P17709427773537051740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352872 (n + 1) : ℚ) / (A352822 (A352872 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352831.P17709427773537051740

/-! ## A352831.P6399488066217222624

`eq[1, log2(A061142(n+1))-A352823(n+1)]+1`
-/

namespace A352831.P6399488066217222624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A352823 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A352831.P6399488066217222624

/-!
# A352833: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with k fixed points, k = 0, 1.

The programs for A352833, there is no canonical definition to state claims against.
-/

/-! ## A352833.P16868726642108587513

`A003106(n)-A085252(A005578(n))`
-/

namespace A352833.P16868726642108587513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A085252 (A005578 n).toNat

end

end A352833.P16868726642108587513

/-! ## A352833.P11107906376298282881

`A324244(A319432(2*(n+2)))+A008484(n)`
-/

namespace A352833.P11107906376298282881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324244 (A319432 (2 * (n + 2))).toNat + A008484 n

end

end A352833.P11107906376298282881

/-! ## A352833.P110029690580276818

`A003106(n)-A294936(A220931(2*n+3))`
-/

namespace A352833.P110029690580276818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A294936 (A220931 (2 * n + 3)).toNat

end

end A352833.P110029690580276818

/-! ## A352833.P18349163722488916671

`A239209(A130377(n)+A047998(n+2))`
-/

namespace A352833.P18349163722488916671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239209 (A130377 n + A047998 (n + 2)).toNat

end

end A352833.P18349163722488916671

/-! ## A352833.P14400307468971772180

`A025840(lt[A025815(n+1), A025826(n)])`
-/

namespace A352833.P14400307468971772180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352833.P14400307468971772180

/-!
# A352834: Least k > 0 such that denominator( d(k*n)/(k*n) ) = n, or 0 if no such k exists, where d = A000005 is the number-of-divisors function.

The programs for A352834, there is no canonical definition to state claims against.
-/

/-! ## A352834.P16340574785131310620

`A091895(n+1)/(n+1)`
-/

namespace A352834.P16340574785131310620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091895 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A352834.P16340574785131310620

/-! ## A352834.P2938135162113901939

`A009191(A091895(n+1)%A118756(n+1))`
-/

namespace A352834.P2938135162113901939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (Int.tmod (A091895 (n + 1)) (A118756 (n + 1))).toNat

end

end A352834.P2938135162113901939

/-!
# A352835: Lexicographically earliest sequence of nonnegative integers such that the binary expansions of two consecutive terms have no common 1's and for any distinct m and n, {a(m), a(m+1)} <> {a(n), a(n+1)}.

The programs for A352835, there is no canonical definition to state claims against.
-/

/-! ## A352835.P13666836572617219555

`A072731(A182554(n+1))%A245134(n+1)`
-/

namespace A352835.P13666836572617219555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072731 (A182554 (n + 1)).toNat) (A245134 (n + 1))

end

end A352835.P13666836572617219555

/-! ## A352835.P489545888626844395

`A081844(A233556(n+1))%A247911(n+1)`
-/

namespace A352835.P489545888626844395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081844 (A233556 (n + 1)).toNat) (A247911 (n + 1))

end

end A352835.P489545888626844395

/-! ## A352835.P13567757344515919764

`∑{e}[A227737(n+1)+A056273(n), #]-1`
-/

namespace A352835.P13567757344515919764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (n + 1) + A056273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A352835.P13567757344515919764

/-! ## A352835.P6671329511978528462

`and(A004396(n), A196199(A006138(n)))`
-/

namespace A352835.P6671329511978528462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004396 n) (A196199 (A006138 n).toNat)

end

end A352835.P6671329511978528462

/-! ## A352835.P2780888258869477403

`and(A101803(n), A112798(A096698(n+1)))`
-/

namespace A352835.P2780888258869477403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101803 n) (A112798 (A096698 (n + 1)).toNat)

end

end A352835.P2780888258869477403

/-!
# A352838: Irregular triangle read by rows: T(n, k) is the number of 2n-step closed walks on the square lattice having algebraic area k; n >= 0, 0 <= k <= floor(n^2/4).

The programs for A352838, there is no canonical definition to state claims against.
-/

/-! ## A352838.P1450648267243357827

`A220876(a(n-1))` with `a(0)=1, a(1)=4, a(2)=28, a(3)=4`
-/

namespace A352838.P1450648267243357827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 28, 4] fun n a =>
  A220876 (a (n - 1)).toNat

end

end A352838.P1450648267243357827

/-!
# A352839: Expansion of g.f. 1/(1 - Sum_{k>=1} sigma_k(k) * x^k).

The programs for A352839, there is no canonical definition to state claims against.
-/

/-! ## A352839.P1447533734873142823

`A325132(n*(∑[n+1]+1))`
-/

namespace A352839.P1447533734873142823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325132 (n * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A352839.P1447533734873142823

/-!
# A352840: a(1) = 0; a(2) = 1; thereafter a(n) = a(n-1)/2 if a(n-1) is even, otherwise a(n) = a(n-1) + a((n-1)-a(n-1)).

The programs for A352840, there is no canonical definition to state claims against.
-/

/-! ## A352840.P11386353706379616335

`A308967(n+1)+A051907(A270929(n+2))`
-/

namespace A352840.P11386353706379616335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (n + 1) + A051907 (A270929 (n + 2)).toNat

end

end A352840.P11386353706379616335

/-!
# A352841: Expansion of e.g.f. 1/(1 - Sum_{k>=1} sigma_k(k) * x^k/k!).

The programs for A352841, there is no canonical definition to state claims against.
-/

/-! ## A352841.P9881371240384484642

`xor(2, A310677(n*a(n-1))-n)` with `a(0)=1, a(1)=1`
-/

namespace A352841.P9881371240384484642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 2 (A310677 ((n : ℤ) * a (n - 1)).toNat - (n : ℤ))

end

end A352841.P9881371240384484642

/-!
# A352842: Expansion of e.g.f. exp(Sum_{k>=1} sigma_k(k) * x^k).

The programs for A352842, there is no canonical definition to state claims against.
-/

/-! ## A352842.P10539239521280281919

`A080903(A374761(n²))`
-/

namespace A352842.P10539239521280281919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (A374761 (n ^ 2)).toNat

end

end A352842.P10539239521280281919

/-!
# A352843: Expansion of e.g.f. exp(Sum_{k>=1} sigma_k(k) * x^k/k!).

The programs for A352843, there is no canonical definition to state claims against.
-/

/-! ## A352843.P10651531065862271275

`A118301(∑[∑[n²%3+n]+n]+1)`
-/

namespace A352843.P10651531065862271275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118301 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A352843.P10651531065862271275

/-!
# A352847: Number of copies of the star graph S(2,1,1) contained within the n-dimensional hypercube graph.

The programs for A352847, the canonical program `A352847.P13827146680008513960` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352847 has offset 1).

The definition of A352847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352847.P13827146680008513960

`2^(n+1)*C(n+1, 2)*n*(n-1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352847

/-- `2^(n+1)*C(n+1, 2)*n*(n-1)` -/
def P13827146680008513960.Spec : Prop :=
  ∀ n, P13827146680008513960.a n = A352847 (n + 1)

theorem P13827146680008513960.correct : P13827146680008513960.Spec := by
  intro n
  simp only [A352847, Nat.add_sub_cancel]

end A352847

/-! ## A352847.P9934193974319692028

`2^(n+1)*C(n², 2)`
-/

namespace A352847.P9934193974319692028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * Nat.choose (n ^ 2) 2

end

end A352847.P9934193974319692028

namespace A352847

/-- `2^(n+1)*C(n², 2)` -/
def P9934193974319692028.Spec : Prop :=
  ∀ n, (P9934193974319692028.a n : ℤ) = A352847 (n + 1)

end A352847

/-! ## A352847.P1145237350203591584

`2*2^n*C(n², 2)`
-/

namespace A352847.P1145237350203591584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 ^ n * Nat.choose (n ^ 2) 2)

end

end A352847.P1145237350203591584

namespace A352847

/-- `2*2^n*C(n², 2)` -/
def P1145237350203591584.Spec : Prop :=
  ∀ n, (P1145237350203591584.a n : ℤ) = A352847 (n + 1)

end A352847

/-! ## A352847.P4067070145958329918

`(n^4-n²)*2^n`
-/

namespace A352847.P4067070145958329918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (n ^ 2 : ℤ)) * (2 ^ n : ℤ)

end

end A352847.P4067070145958329918

namespace A352847

/-- `(n^4-n²)*2^n` -/
def P4067070145958329918.Spec : Prop :=
  ∀ n, P4067070145958329918.a n = A352847 (n + 1)

end A352847

/-! ## A352847.P17654380972994882871

`C(n², 2)/2^-(n+1)`
-/

namespace A352847.P17654380972994882871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / (2 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A352847.P17654380972994882871

namespace A352847

/-- `C(n², 2)/2^-(n+1)` -/
def P17654380972994882871.Spec : Prop :=
  ∀ n, P17654380972994882871.a n = (A352847 (n + 1) : ℚ)

end A352847

/-! ## A352847.P14256799183167784654

`lcm(2, 2^n*C(n, 2)*∑[4*n])`
-/

namespace A352847.P14256799183167784654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 ^ n * Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A352847.P14256799183167784654

namespace A352847

/-- `lcm(2, 2^n*C(n, 2)*∑[4*n])` -/
def P14256799183167784654.Spec : Prop :=
  ∀ n, (P14256799183167784654.a n : ℤ) = A352847 (n + 1)

end A352847

/-! ## A352847.P1223156363100595546

`n*A128789(n)-A007758(n)`
-/

namespace A352847.P1223156363100595546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128789 n - A007758 n

end

end A352847.P1223156363100595546

namespace A352847

/-- `n*A128789(n)-A007758(n)` -/
def P1223156363100595546.Spec : Prop :=
  ∀ n, P1223156363100595546.a n = A352847 (n + 1)

end A352847

/-! ## A352847.P704779094857036855

`A002061(n+1)*A128796(n)-A128796(n)`
-/

namespace A352847.P704779094857036855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A128796 n - A128796 n

end

end A352847.P704779094857036855

namespace A352847

/-- `A002061(n+1)*A128796(n)-A128796(n)` -/
def P704779094857036855.Spec : Prop :=
  ∀ n, P704779094857036855.a n = A352847 (n + 1)

end A352847

/-! ## A352847.P1634208225858664195

`A007758(n)²/A000079(n)-A007758(n)`
-/

namespace A352847.P1634208225858664195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 n ^ 2 : ℚ) / (A000079 n : ℚ) - (A007758 n : ℚ)

end

end A352847.P1634208225858664195

namespace A352847

/-- `A007758(n)²/A000079(n)-A007758(n)` -/
def P1634208225858664195.Spec : Prop :=
  ∀ n, P1634208225858664195.a n = (A352847 (n + 1) : ℚ)

end A352847

/-! ## A352847.P16647415965165954022

`A128796(n+1)*A128796(n)/A000079(n+1)`
-/

namespace A352847.P16647415965165954022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128796 (n + 1) * A128796 n : ℚ) / (A000079 (n + 1) : ℚ)

end

end A352847.P16647415965165954022

namespace A352847

/-- `A128796(n+1)*A128796(n)/A000079(n+1)` -/
def P16647415965165954022.Spec : Prop :=
  ∀ n, P16647415965165954022.a n = (A352847 (n + 1) : ℚ)

end A352847

/-! ## A352847.P17735232994508753983

`A007531(n+1)*A036289(2*n)/A000079(n+1)`
-/

namespace A352847.P17735232994508753983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (n + 1) * A036289 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A352847.P17735232994508753983

namespace A352847

/-- `A007531(n+1)*A036289(2*n)/A000079(n+1)` -/
def P17735232994508753983.Spec : Prop :=
  ∀ n, P17735232994508753983.a n = (A352847 (n + 1) : ℚ)

end A352847

/-! ## A352847.P8315945043891783802

`A116138(n)*A128796(n)/A000244(n)`
-/

namespace A352847.P8315945043891783802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 n * A128796 n : ℚ) / (A000244 n : ℚ)

end

end A352847.P8315945043891783802

namespace A352847

/-- `A116138(n)*A128796(n)/A000244(n)` -/
def P8315945043891783802.Spec : Prop :=
  ∀ n, P8315945043891783802.a n = (A352847 (n + 1) : ℚ)

end A352847

/-!
# A352850: E.g.f. A(x) satisfies: [x^k] A(x)^n = 0 for k = n*(n-1)/2 + 1 through n*(n+1)/2, for n > 1.

The programs for A352850, there is no canonical definition to state claims against.
-/

/-! ## A352850.P14089274019808468445

`A129501(A107104(n))-A107095(n)`
-/

namespace A352850.P14089274019808468445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129501 (A107104 n).toNat - A107095 n

end

end A352850.P14089274019808468445

/-! ## A352850.P13232895275708962294

`A317079(n)-A053489(A028310(n))`
-/

namespace A352850.P13232895275708962294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317079 n - A053489 (A028310 n).toNat

end

end A352850.P13232895275708962294

/-!
# A352851: a(n) = prime(n)^2 + prime(n+1).

The programs for A352851, the canonical program `A352851.P861774503886080343` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352851 has offset 1).

The definition of A352851 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352851.P861774503886080343

`A001248(n+1)+A000040(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A352851

/-- `A001248(n+1)+A000040(n+2)` -/
def P861774503886080343.Spec : Prop :=
  ∀ n, P861774503886080343.a n = A352851 (n + 1)

theorem P861774503886080343.correct : P861774503886080343.Spec := by
  intro n
  simp only [A352851, Nat.add_sub_cancel]

end A352851

/-! ## A352851.P14292435461233091112

`A001043(n+1)+A036689(n+1)`
-/

namespace A352851.P14292435461233091112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A036689 (n + 1)

end

end A352851.P14292435461233091112

namespace A352851

/-- `A001043(n+1)+A036689(n+1)` -/
def P14292435461233091112.Spec : Prop :=
  ∀ n, P14292435461233091112.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P370227816622980095

`A036690(n+1)+A001223(n+1)`
-/

namespace A352851.P370227816622980095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + A001223 (n + 1)

end

end A352851.P370227816622980095

namespace A352851

/-- `A036690(n+1)+A001223(n+1)` -/
def P370227816622980095.Spec : Prop :=
  ∀ n, P370227816622980095.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P5618866443581452810

`A065091(n+1)+A001248(n+1)`
-/

namespace A352851.P5618866443581452810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A001248 (n + 1)

end

end A352851.P5618866443581452810

namespace A352851

/-- `A065091(n+1)+A001248(n+1)` -/
def P5618866443581452810.Spec : Prop :=
  ∀ n, P5618866443581452810.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P12283134751906831098

`A049001(n+1)+A048974(n+1)`
-/

namespace A352851.P12283134751906831098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + A048974 (n + 1)

end

end A352851.P12283134751906831098

namespace A352851

/-- `A049001(n+1)+A048974(n+1)` -/
def P12283134751906831098.Spec : Prop :=
  ∀ n, P12283134751906831098.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P8622079066372624326

`A060800(n+1)+A046933(n+1)`
-/

namespace A352851.P8622079066372624326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) + A046933 (n + 1)

end

end A352851.P8622079066372624326

namespace A352851

/-- `A060800(n+1)+A046933(n+1)` -/
def P8622079066372624326.Spec : Prop :=
  ∀ n, P8622079066372624326.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P13874329817918638417

`A182174(n+1)+A014690(n+1)`
-/

namespace A352851.P13874329817918638417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + A014690 (n + 1)

end

end A352851.P13874329817918638417

namespace A352851

/-- `A182174(n+1)+A014690(n+1)` -/
def P13874329817918638417.Spec : Prop :=
  ∀ n, P13874329817918638417.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P10920374682704034660

`A306190(n+1)+A092949(n+1)`
-/

namespace A352851.P10920374682704034660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + A092949 (n + 1)

end

end A352851.P10920374682704034660

namespace A352851

/-- `A306190(n+1)+A092949(n+1)` -/
def P10920374682704034660.Spec : Prop :=
  ∀ n, P10920374682704034660.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P13486594534501154246

`A298252(n+1)+A182200(n+1)`
-/

namespace A352851.P13486594534501154246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) + A182200 (n + 1)

end

end A352851.P13486594534501154246

namespace A352851

/-- `A298252(n+1)+A182200(n+1)` -/
def P13486594534501154246.Spec : Prop :=
  ∀ n, P13486594534501154246.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P14341527608399084323

`A084920(n+1)+A055670(n+2)`
-/

namespace A352851.P14341527608399084323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A055670 (n + 2)

end

end A352851.P14341527608399084323

namespace A352851

/-- `A084920(n+1)+A055670(n+2)` -/
def P14341527608399084323.Spec : Prop :=
  ∀ n, P14341527608399084323.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P18036593796096972539

`A079704(n+1)-A062235(n+1)`
-/

namespace A352851.P18036593796096972539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A062235 (n + 1)

end

end A352851.P18036593796096972539

namespace A352851

/-- `A079704(n+1)-A062235(n+1)` -/
def P18036593796096972539.Spec : Prop :=
  ∀ n, P18036593796096972539.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P9478423346884343582

`A345727(n+1)-A291463(n+1)`
-/

namespace A352851.P9478423346884343582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) - A291463 (n + 1)

end

end A352851.P9478423346884343582

namespace A352851

/-- `A345727(n+1)-A291463(n+1)` -/
def P9478423346884343582.Spec : Prop :=
  ∀ n, P9478423346884343582.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P3552238400270922346

`A065091(n+1)+Δ[A007504(n)]²`
-/

namespace A352851.P3552238400270922346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A352851.P3552238400270922346

namespace A352851

/-- `A065091(n+1)+Δ[A007504(n)]²` -/
def P3552238400270922346.Spec : Prop :=
  ∀ n, P3552238400270922346.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P12544860673636685526

`A065091(n+1)+Δ[A008348(n)]²`
-/

namespace A352851.P12544860673636685526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A352851.P12544860673636685526

namespace A352851

/-- `A065091(n+1)+Δ[A008348(n)]²` -/
def P12544860673636685526.Spec : Prop :=
  ∀ n, P12544860673636685526.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P14272190998992490721

`A065091(n+1)+Δ[A022837(n)]²`
-/

namespace A352851.P14272190998992490721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A352851.P14272190998992490721

namespace A352851

/-- `A065091(n+1)+Δ[A022837(n)]²` -/
def P14272190998992490721.Spec : Prop :=
  ∀ n, P14272190998992490721.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P9110830636577900646

`A065091(n+1)+Δ[A064365(n)]²`
-/

namespace A352851.P9110830636577900646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A352851.P9110830636577900646

namespace A352851

/-- `A065091(n+1)+Δ[A064365(n)]²` -/
def P9110830636577900646.Spec : Prop :=
  ∀ n, P9110830636577900646.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P8462630216676020904

`A065091(n+1)+A000040(n+1)²`
-/

namespace A352851.P8462630216676020904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A000040 (n + 1) ^ 2

end

end A352851.P8462630216676020904

namespace A352851

/-- `A065091(n+1)+A000040(n+1)²` -/
def P8462630216676020904.Spec : Prop :=
  ∀ n, P8462630216676020904.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P380237922423309312

`A065091(n+1)+A273960(n+1)²`
-/

namespace A352851.P380237922423309312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A273960 (n + 1) ^ 2

end

end A352851.P380237922423309312

namespace A352851

/-- `A065091(n+1)+A273960(n+1)²` -/
def P380237922423309312.Spec : Prop :=
  ∀ n, P380237922423309312.a n = A352851 (n + 1)

end A352851

/-! ## A352851.P3322235054893735288

`A065091(n+1)+sqrt(A030514(n+1))`
-/

namespace A352851.P3322235054893735288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℝ) + Real.sqrt (A030514 (n + 1) : ℝ)

end

end A352851.P3322235054893735288

namespace A352851

/-- `A065091(n+1)+sqrt(A030514(n+1))` -/
def P3322235054893735288.Spec : Prop :=
  ∀ n, P3322235054893735288.a n = (A352851 (n + 1) : ℝ)

end A352851

/-! ## A352851.P16728502834866404146

`A001248(n+1)+A006254(n+1)+A005097(n+1)`
-/

namespace A352851.P16728502834866404146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A006254 (n + 1) + A005097 (n + 1))

end

end A352851.P16728502834866404146

namespace A352851

/-- `A001248(n+1)+A006254(n+1)+A005097(n+1)` -/
def P16728502834866404146.Spec : Prop :=
  ∀ n, P16728502834866404146.a n = A352851 (n + 1)

end A352851

/-!
# A352853: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-x)^n * A(x)^n * A(x*A(x)^n).

The programs for A352853, there is no canonical definition to state claims against.
-/

/-! ## A352853.P12625071654901788514

`∑[A033183(floor(4^n/3))]`
-/

namespace A352853.P12625071654901788514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 ⌊(4 ^ n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352853.P12625071654901788514

/-! ## A352853.P13673166084690833530

`A008618(A116673(n+2))`
-/

namespace A352853.P13673166084690833530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A116673 (n + 2)).toNat

end

end A352853.P13673166084690833530

/-! ## A352853.P2484040513613783750

`A055679(A098746(n)+2)`
-/

namespace A352853.P2484040513613783750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A098746 n + 2).toNat

end

end A352853.P2484040513613783750

/-! ## A352853.P10659846643270593444

`A014643(5*A320800(n))`
-/

namespace A352853.P10659846643270593444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014643 (5 * A320800 n).toNat

end

end A352853.P10659846643270593444

/-!
# A352854: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-x)^n * A(x)^(2*n) * A(x*A(x)^n).

The programs for A352854, there is no canonical definition to state claims against.
-/

/-! ## A352854.P14469826461088679665

`A263778(n)+A004198(A110447(n))`
-/

namespace A352854.P14469826461088679665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263778 n + A004198 (A110447 n).toNat

end

end A352854.P14469826461088679665

/-! ## A352854.P5296576818059509668

`A263778(n)+A007031(2*(n+2))%3`
-/

namespace A352854.P5296576818059509668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263778 n + Int.tmod (A007031 (2 * (n + 2))) 3

end

end A352854.P5296576818059509668

/-! ## A352854.P12008970970792214433

`A022564(A001611(n))+A022558(n)`
-/

namespace A352854.P12008970970792214433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022564 (A001611 n).toNat + A022558 n

end

end A352854.P12008970970792214433

/-!
# A352855: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-x)^n * A(x)^(3*n) * A(x*A(x)^n).

The programs for A352855, there is no canonical definition to state claims against.
-/

/-! ## A352855.P13204954822097041405

`A001826((n-1)^n+n)+(n+1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A352855.P13204954822097041405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A001826 (((n : ℤ) - 1) ^ n + (n : ℤ)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A352855.P13204954822097041405

/-! ## A352855.P15360408223594154597

`A232527(A309105(n))`
-/

namespace A352855.P15360408223594154597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232527 (A309105 n).toNat

end

end A352855.P15360408223594154597

/-!
# A352856: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-x)^n * A(x)^n * A(x*A(x)^(2*n)).

The programs for A352856, there is no canonical definition to state claims against.
-/

/-! ## A352856.P1251544687391137722

`A114162(∑[ceil(n²/2)])`
-/

namespace A352856.P1251544687391137722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114162 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352856.P1251544687391137722

/-! ## A352856.P7759000349766852595

`A035026(ceil(10^(n-2)/3)+1)`
-/

namespace A352856.P7759000349766852595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (⌈(10 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / 3⌉ + 1).toNat

end

end A352856.P7759000349766852595

/-! ## A352856.P14727834773957226344

`A001462(A030019(n))`
-/

namespace A352856.P14727834773957226344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A030019 n).toNat

end

end A352856.P14727834773957226344

/-!
# A352859: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k+1) * 2^k * a(k).

The programs for A352859, there is no canonical definition to state claims against.
-/

/-! ## A352859.P7307762988033396542

`A159787(n!)+1`
-/

namespace A352859.P7307762988033396542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159787 (Nat.factorial n) + 1

end

end A352859.P7307762988033396542

/-!
# A352860: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k) * 2^k * a(k).

The programs for A352860, there is no canonical definition to state claims against.
-/

/-! ## A352860.P13468602218301714730

`A303234(A052894(n))`
-/

namespace A352860.P13468602218301714730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303234 (A052894 n).toNat

end

end A352860.P13468602218301714730

/-!
# A352861: a(n) = 1 + Sum_{k=0..n-1} binomial(n+2,k+3) * a(k).

The programs for A352861, there is no canonical definition to state claims against.
-/

/-! ## A352861.P8593159808856977715

`A032346(n+2)-A045501(n+2)`
-/

namespace A352861.P8593159808856977715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032346 (n + 2) - A045501 (n + 2)

end

end A352861.P8593159808856977715

/-! ## A352861.P7252414384194508022

`A143927(n)-A319995(A101220(n+1))`
-/

namespace A352861.P7252414384194508022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143927 n - A319995 (A101220 (n + 1)).toNat

end

end A352861.P7252414384194508022

/-!
# A352862: a(n) = 1 + Sum_{k=0..n-1} binomial(n+3,k+4) * a(k).

The programs for A352862, there is no canonical definition to state claims against.
-/

/-! ## A352862.P8292438522106127509

`A352861(n+1)-A045499(n+1)`
-/

namespace A352862.P8292438522106127509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352861 (n + 1) - A045499 (n + 1)

end

end A352862.P8292438522106127509

/-! ## A352862.P6728605788555597364

`A003991(A001147(n))+A003463(n)`
-/

namespace A352862.P6728605788555597364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A001147 n).toNat + A003463 n

end

end A352862.P6728605788555597364

/-!
# A352863: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n+3,k+3) * a(k).

The programs for A352863, there is no canonical definition to state claims against.
-/

/-! ## A352863.P8943953538404725134

`A000292(n+1)*A000670(n)`
-/

namespace A352863.P8943953538404725134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000670 n

end

end A352863.P8943953538404725134

/-! ## A352863.P16260148847380368555

`∑[∑[n+1]]*A122101(∑[n])`
-/

namespace A352863.P16260148847380368555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A122101 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A352863.P16260148847380368555

/-! ## A352863.P17488507002817282501

`A076726(n)/2*C(n+3, 3)`
-/

namespace A352863.P17488507002817282501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 * (Nat.choose (n + 3) 3 : ℚ)

end

end A352863.P17488507002817282501

/-! ## A352863.P5321297600914529829

`(A052875(n)+1)*∑[∑[n+1]]`
-/

namespace A352863.P5321297600914529829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052875 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A352863.P5321297600914529829

/-! ## A352863.P4066154160812093040

`∑[A000217(n+1)]*A000670(n)`
-/

namespace A352863.P4066154160812093040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000670 n

end

end A352863.P4066154160812093040

/-! ## A352863.P14494897630576567219

`∑[∑[A000027(n+1)]]*A000670(n)`
-/

namespace A352863.P14494897630576567219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000670 n

end

end A352863.P14494897630576567219

/-! ## A352863.P3013715115645161594

`A154921(∑[n+3]+6)`
-/

namespace A352863.P3013715115645161594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A352863.P3013715115645161594

/-!
# A352864: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n-k,k) * a(n-2*k-1).

The programs for A352864, there is no canonical definition to state claims against.
-/

/-! ## A352864.P321292675904506155

`A048865(A222955(n+1)+A000108(n))`
-/

namespace A352864.P321292675904506155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A222955 (n + 1) + A000108 n).toNat

end

end A352864.P321292675904506155

/-! ## A352864.P15467966571855978042

`A036250(n)-A358846(n!-1)`
-/

namespace A352864.P15467966571855978042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 n - A358846 (Nat.factorial n - 1)

end

end A352864.P15467966571855978042

/-! ## A352864.P9501992285926443211

`A036250(n)-A230093(A242194(n+1))`
-/

namespace A352864.P9501992285926443211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 n - A230093 (A242194 (n + 1)).toNat

end

end A352864.P9501992285926443211

/-! ## A352864.P9400320617885553691

`xor(A011861(n), A351660(A032555(n+1)))`
-/

namespace A352864.P9400320617885553691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011861 n) (A351660 (A032555 (n + 1)).toNat)

end

end A352864.P9400320617885553691

/-!
# A352866: Irregular table read by rows: T(n,k) is the number of regions formed after k diagonals, with k>=0, are drawn between vertices of a regular n-gon, with n>=3, when each vertex in turn is connected to the vertex two to its left, then three to its left, then four... until all vertices are connected by diagonals.

The programs for A352866, there is no canonical definition to state claims against.
-/

/-! ## A352866.P6783593263113772885

`A352883(n+3)-A048982(A213003(n))`
-/

namespace A352866.P6783593263113772885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352883 (n + 3) - A048982 (A213003 n).toNat

end

end A352866.P6783593263113772885

/-! ## A352866.P235121024747193308

`A352883(n+3)-A185284(A352870(n+1))`
-/

namespace A352866.P235121024747193308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352883 (n + 3) - A185284 (A352870 (n + 1)).toNat

end

end A352866.P235121024747193308

/-! ## A352866.P6642286146393968608

`A352883(n+3)-A010054(A070215(3*n+4))`
-/

namespace A352866.P6642286146393968608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352883 (n + 3) - A010054 (A070215 (3 * n + 4)).toNat

end

end A352866.P6642286146393968608

/-! ## A352866.P14846785590143396322

`A352883(A043320(n+1)+2)`
-/

namespace A352866.P14846785590143396322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352883 (A043320 (n + 1) + 2).toNat

end

end A352866.P14846785590143396322

/-! ## A352866.P17315786506434201133

`A352883(A044917(n+1)+2)`
-/

namespace A352866.P17315786506434201133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352883 (A044917 (n + 1) + 2).toNat

end

end A352866.P17315786506434201133

/-!
# A352867: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not appeared that shares a factor with a(n-1), a(n-2), and a(n-1)+a(n-2).

The programs for A352867, there is no canonical definition to state claims against.
-/

/-! ## A352867.P5400353210047669782

`n*a(1-A216284(A236537(n+1)))` with `a(0)=1, a(1)=2, a(2)=6, a(3)=4`
-/

namespace A352867.P5400353210047669782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 4] fun n a =>
  n * a (1 - A216284 (A236537 (n + 1)).toNat).toNat

end

end A352867.P5400353210047669782

/-! ## A352867.P4257679034587816401

`abs(C(A010673(A351291(n+1))+2, n)-n)+n`
-/

namespace A352867.P4257679034587816401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A010673 (A351291 (n + 1)).toNat + 2).toNat n : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A352867.P4257679034587816401

/-! ## A352867.P16782802595722526096

`A040005(A347787(n))+A004271(n)`
-/

namespace A352867.P16782802595722526096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (A347787 n).toNat + A004271 n

end

end A352867.P16782802595722526096

/-! ## A352867.P14842166573674655274

`xor(A004277(n), A136521(A272543(n)))`
-/

namespace A352867.P14842166573674655274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004277 n) (A136521 (A272543 n).toNat)

end

end A352867.P14842166573674655274

/-! ## A352867.P14016498056788424907

`A257213(A082041(n)%A016754(n))`
-/

namespace A352867.P14016498056788424907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 (Int.tmod (A082041 n) (A016754 n)).toNat

end

end A352867.P14016498056788424907

/-!
# A352870: Ratios of consecutive terms of A347064, or 0 if ratio is not an integer.

The programs for A352870, there is no canonical definition to state claims against.
-/

/-! ## A352870.P1735752978533616924

`∪[A050376(n+1), A332973(n+1)]%A344754(3*(n+1))`
-/

namespace A352870.P1735752978533616924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332973 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A344754 (3 * (n + 1)))

end

end A352870.P1735752978533616924

/-! ## A352870.P14782572558002356633

`∪[A000040(n+1), A050376(n+1)-A185284(2*n+3)]`
-/

namespace A352870.P14782572558002356633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - A185284 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352870.P14782572558002356633

/-! ## A352870.P17861706419908418915

`∪[A050376(n+1), A084400(n+2)-A185284(2*n+3)]`
-/

namespace A352870.P17861706419908418915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) - A185284 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352870.P17861706419908418915

/-!
# A352871: a(n) is the number of iterations, starting with x = n, which can be made of x -> x/sumdigits(x) with x remaining an integer, or -1 if x remains an integer through infinitely many iterations.

The programs for A352871, there is no canonical definition to state claims against.
-/

/-! ## A352871.P2242523802654869722

`-floor(acot((n+1)%∑{digits}[n+1, #]))`
-/

namespace A352871.P2242523802654869722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊SequenceMachineLib.acot (((n + 1) % ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ)⌋

end

end A352871.P2242523802654869722

/-! ## A352871.P9204785924570899655

`-floor((n+1)/lcm(n+1, ∑{digits}[n+1, #]))`
-/

namespace A352871.P9204785924570899655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(n + 1 : ℚ) / (Nat.lcm (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ)⌋

end

end A352871.P9204785924570899655

/-! ## A352871.P1031885799065797586

`-A188641(n+1)`
-/

namespace A352871.P1031885799065797586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A188641 (n + 1)

end

end A352871.P1031885799065797586

/-! ## A352871.P17417208617411157647

`A080462(n+1)-2`
-/

namespace A352871.P17417208617411157647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080462 (n + 1) - 2

end

end A352871.P17417208617411157647

/-! ## A352871.P9235686013748962761

`-1%A144262(n+1)`
-/

namespace A352871.P9235686013748962761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-1) (A144262 (n + 1))

end

end A352871.P9235686013748962761

/-! ## A352871.P921447962462162559

`-floor(acot(A070635(n+1)))`
-/

namespace A352871.P921447962462162559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊SequenceMachineLib.acot (A070635 (n + 1) : ℝ)⌋

end

end A352871.P921447962462162559

/-! ## A352871.P12670359867184393460

`ceil(atan(A065518(n+1)))-2`
-/

namespace A352871.P12670359867184393460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A065518 (n + 1) : ℝ)⌉ - 2

end

end A352871.P12670359867184393460

/-! ## A352871.P18190729199039772373

`ceil(atan(A144261(n+1)))-2`
-/

namespace A352871.P18190729199039772373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A144261 (n + 1) : ℝ)⌉ - 2

end

end A352871.P18190729199039772373

/-! ## A352871.P16734275341591696969

`A014026(A065518(n+1))`
-/

namespace A352871.P16734275341591696969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014026 (A065518 (n + 1)).toNat

end

end A352871.P16734275341591696969

/-! ## A352871.P13873177724162149397

`A014038(A137424(n+1))`
-/

namespace A352871.P13873177724162149397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014038 (A137424 (n + 1)).toNat

end

end A352871.P13873177724162149397

/-!
# A352872: Numbers whose weakly increasing prime indices y have a fixed point y(i) = i.

The programs for A352872, there is no canonical definition to state claims against.
-/

/-! ## A352872.P15470716799644622468

`lt[4, ∏{e}[12*n, #!]]`
-/

namespace A352872.P15470716799644622468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352872.P15470716799644622468

/-! ## A352872.P4029439032552831881

`comp[C(A082725(n+1), n)]`
-/

namespace A352872.P4029439032552831881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A082725 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A352872.P4029439032552831881

/-! ## A352872.P14298227867549056956

`lt[1, gcd(n, A256750(n²))]`
-/

namespace A352872.P14298227867549056956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A256750 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352872.P14298227867549056956

/-! ## A352872.P10971706123158849436

`lt[0, A352822(n+1)]+1`
-/

namespace A352872.P10971706123158849436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352872.P10971706123158849436

/-! ## A352872.P6980110699536511582

`lt[1, A100762(n+1)]+1`
-/

namespace A352872.P6980110699536511582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352872.P6980110699536511582

/-! ## A352872.P6847284040517343523

`lt[1, A138012(n+1)]+1`
-/

namespace A352872.P6847284040517343523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352872.P6847284040517343523

/-! ## A352872.P1807956795452128462

`lt[1, A334664(n+1)]+1`
-/

namespace A352872.P1807956795452128462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352872.P1807956795452128462

/-! ## A352872.P13917438228373771446

`lt[A082725(round(acot(n)+n)), n]`
-/

namespace A352872.P13917438228373771446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352872.P13917438228373771446

/-! ## A352872.P15895356384266163591

`comp[A352830(n+1)-1]+1`
-/

namespace A352872.P15895356384266163591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352872.P15895356384266163591

/-! ## A352872.P8475055293219366477

`comp[A082725(n+3)%(n²+1)]`
-/

namespace A352872.P8475055293219366477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082725 (n + 3)) (n ^ 2 + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352872.P8475055293219366477

/-!
# A352873: Heinz numbers of integer partitions with nonnegative crank, counted by A064428.

The programs for A352873, there is no canonical definition to state claims against.
-/

/-! ## A352873.P15430026095755742762

`lt[n+2, lcm(4, n)]`
-/

namespace A352873.P15430026095755742762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352873.P15430026095755742762

/-! ## A352873.P12515692576050304708

`ceil(∑[cosh(atan(n%3))])`
-/

namespace A352873.P12515692576050304708
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.arctan ((n % 3 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A352873.P12515692576050304708

/-! ## A352873.P15961191582634857773

`comp[abs(or(3, -n))-1]`
-/

namespace A352873.P15961191582634857773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 3 (-(n : ℤ))| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352873.P15961191582634857773

/-! ## A352873.P4108554859106721588

`comp[gcd(n, or(3, n))]+1`
-/

namespace A352873.P4108554859106721588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A352873.P4108554859106721588

/-! ## A352873.P13411620903957845286

`comp[and(n, and(3, n)-1)]`
-/

namespace A352873.P13411620903957845286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land 3 n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352873.P13411620903957845286

/-! ## A352873.P8097252252140502295

`∑[((char[1]+n)%3)!]`
-/

namespace A352873.P8097252252140502295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (((if ∃ j, f2 j = n then 1 else 0) + n) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352873.P8097252252140502295

/-! ## A352873.P17850058137143636422

`comp[a(n-1)+4]` with `a(0)=2, a(1)=0`
-/

namespace A352873.P17850058137143636422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A352873.P17850058137143636422

/-!
# A352874: Heinz numbers of integer partitions with positive crank, counted by A001522.

The programs for A352874, there is no canonical definition to state claims against.
-/

/-! ## A352874.P4865522401281183453

`lt[0, A257989(n+2)]+2`
-/

namespace A352874.P4865522401281183453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A352874.P4865522401281183453

/-! ## A352874.P10807752050248209534

`lt[A180107(n), (lcm(16, n)/16)²]`
-/

namespace A352874.P10807752050248209534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 16 n : ℚ) / 16) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A352874.P10807752050248209534

/-! ## A352874.P17473857738180255695

`lt[1, A348952(2*(n+1))]+1`
-/

namespace A352874.P17473857738180255695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348952 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352874.P17473857738180255695

/-! ## A352874.P13806477191029100980

`lt[n+1, A336475(n+1)]+1`
-/

namespace A352874.P13806477191029100980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352874.P13806477191029100980

/-! ## A352874.P6087983172576634902

`lt[gcd(4, n+1)², A000005(n+1)]+1`
-/

namespace A352874.P6087983172576634902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352874.P6087983172576634902

/-! ## A352874.P8546886645512605410

`lt[xor(n, n+1), A001222(n+1)+1]+1`
-/

namespace A352874.P8546886645512605410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352874.P8546886645512605410

/-! ## A352874.P14545256138333135925

`lt[gcd(64, (n+1)²), A001222((n+1)²)]+1`
-/

namespace A352874.P14545256138333135925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 64 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352874.P14545256138333135925

/-! ## A352874.P2329774069686896821

`lt[and(n, -(n+2)), A001222((n+1)/2^val(n+1, 2))]+1`
-/

namespace A352874.P2329774069686896821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A352874.P2329774069686896821

/-! ## A352874.P1314855129339735673

`lt[2^val(n+1, 2), A000005((n+1)/2^val(n+1, 2))]+1`
-/

namespace A352874.P1314855129339735673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352874.P1314855129339735673

/-!
# A352875: Number of integer compositions y of n with a fixed point y(i) = i.

The programs for A352875, there is no canonical definition to state claims against.
-/

/-! ## A352875.P15971712735889982117

`ceil(2^(n-1))-A238351(n)`
-/

namespace A352875.P15971712735889982117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A238351 n

end

end A352875.P15971712735889982117

/-! ## A352875.P1445866188678228557

`abs(A011782(n)-A238351(n))`
-/

namespace A352875.P1445866188678228557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A238351 n|

end

end A352875.P1445866188678228557

/-! ## A352875.P7739841100490489708

`abs(A000032(C(3, n²))^(n-1)-A238351(n))`
-/

namespace A352875.P7739841100490489708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000032 (Nat.choose 3 (n ^ 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A238351 n : ℚ)|

end

end A352875.P7739841100490489708

/-! ## A352875.P3569483041355221784

`abs(A020639(A000010(n+1))^(n-1)-A238351(n))`
-/

namespace A352875.P3569483041355221784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A020639 (A000010 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A238351 n : ℚ)|

end

end A352875.P3569483041355221784

/-! ## A352875.P8120937658764171055

`ceil(2^(n-1))-A238349(∑[n])`
-/

namespace A352875.P8120937658764171055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A238349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352875.P8120937658764171055

/-!
# A352878: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * (A(x) - x^n)^n.

The programs for A352878, there is no canonical definition to state claims against.
-/

/-! ## A352878.P17661508848695629204

`A108954(A200377(n)+A005246(2*n))`
-/

namespace A352878.P17661508848695629204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A200377 n + A005246 (2 * n)).toNat

end

end A352878.P17661508848695629204

/-! ## A352878.P4959907864719150608

`A087842(A332870(n)+A213226(n))`
-/

namespace A352878.P4959907864719150608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087842 (A332870 n + A213226 n).toNat

end

end A352878.P4959907864719150608

/-! ## A352878.P17386608731963207221

`A233347(n)-A341523(A352855(n))`
-/

namespace A352878.P17386608731963207221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233347 n - A341523 (A352855 n).toNat

end

end A352878.P17386608731963207221

/-! ## A352878.P13064448813926273114

`A113215(A038119(n+1))+A002264(n)`
-/

namespace A352878.P13064448813926273114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A038119 (n + 1)).toNat + A002264 n

end

end A352878.P13064448813926273114

/-!
# A352879: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/3)} binomial(n,3*k+1) * a(k).

The programs for A352879, there is no canonical definition to state claims against.
-/

/-! ## A352879.P6297524911563920573

`A261104(A001590(2*n)+2)`
-/

namespace A352879.P6297524911563920573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A001590 (2 * n) + 2).toNat

end

end A352879.P6297524911563920573

/-! ## A352879.P8346255653710858339

`A203019(n+2)+A123580(A203019(n))`
-/

namespace A352879.P8346255653710858339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 2) + A123580 (A203019 n).toNat

end

end A352879.P8346255653710858339

/-! ## A352879.P9877258540289543649

`A261104(A316500(n+1)+A152880(n+1))`
-/

namespace A352879.P9877258540289543649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A316500 (n + 1) + A152880 (n + 1)).toNat

end

end A352879.P9877258540289543649

/-! ## A352879.P5580565995067541546

`A003056(floor(log2(n+2)^(n-1))+1)`
-/

namespace A352879.P5580565995067541546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌊Real.logb 2 (n + 2 : ℝ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

end

end A352879.P5580565995067541546

/-! ## A352879.P4329627233436191027

`∑[floor(exp(n+1)/(2*(n+1)²))%A317718(2*n+3)]`
-/

namespace A352879.P4329627233436191027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp (n + 1 : ℝ) / (2 * (n + 1) ^ 2 : ℝ)⌋ (A317718 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352879.P4329627233436191027

/-!
# A352881: a(n) is the minimal number z having the largest number of solutions to the Diophantine equation 1/z = 1/x + 1/y such that 1 <= x <= y <= 10^n.

The programs for A352881, there is no canonical definition to state claims against.
-/

/-! ## A352881.P17697631850384700348

`2*A278253(A029767(n+1))`
-/

namespace A352881.P17697631850384700348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278253 (A029767 (n + 1)).toNat

end

end A352881.P17697631850384700348

/-! ## A352881.P13809065909375349465

`A278246(A121941(n)+A016127(n))`
-/

namespace A352881.P13809065909375349465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278246 (A121941 n + A016127 n).toNat

end

end A352881.P13809065909375349465

/-!
# A352882: a(n) is the number of plane corner cuts of size n.

The programs for A352882, there is no canonical definition to state claims against.
-/

/-! ## A352882.P14143942521225930875

`A130535(A304710(n)+A000219(n))`
-/

namespace A352882.P14143942521225930875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130535 (A304710 n + A000219 n).toNat

end

end A352882.P14143942521225930875

/-!
# A352883: Irregular table read by rows: T(n,k) is the number of regions formed after k diagonals, with k>=0, are drawn between vertices of a regular n-gon, with n>=3, when each vertex in turn is connected to the vertex floor(n/2) vertices to its left, then floor(n/2)-1 vertices to its left, then floor(n/2)-2 vertices ... until all vertices are connected by diagonals.

The programs for A352883, there is no canonical definition to state claims against.
-/

/-! ## A352883.P8115410921888406421

`A352866(n+3)+A048982(A213003(n))`
-/

namespace A352883.P8115410921888406421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352866 (n + 3) + A048982 (A213003 n).toNat

end

end A352883.P8115410921888406421

/-! ## A352883.P13045571925844569521

`or(A039966(A295947(n)), A352866(n+3))`
-/

namespace A352883.P13045571925844569521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039966 (A295947 n).toNat) (A352866 (n + 3))

end

end A352883.P13045571925844569521

/-! ## A352883.P16823614332205537056

`A352866(n+3)+A185284(A352870(n+1))`
-/

namespace A352883.P16823614332205537056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352866 (n + 3) + A185284 (A352870 (n + 1)).toNat

end

end A352883.P16823614332205537056

/-! ## A352883.P1473523197184490745

`A083741(A048103(n+3)%A316888(2*n+5))`
-/

namespace A352883.P1473523197184490745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 (Int.tmod (A048103 (n + 3)) (A316888 (2 * n + 5))).toNat

end

end A352883.P1473523197184490745

/-!
# A352884: Binary weight of A109812(n).

The programs for A352884, there is no canonical definition to state claims against.
-/

/-! ## A352884.P4344165597582309269

`A000120(A351965(n+1))`
-/

namespace A352884.P4344165597582309269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A351965 (n + 1)).toNat

end

end A352884.P4344165597582309269

/-! ## A352884.P1598622432566881549

`A000120(A109812(n+1))`
-/

namespace A352884.P1598622432566881549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A109812 (n + 1)).toNat

end

end A352884.P1598622432566881549

/-! ## A352884.P3713874539928549643

`∑{digits}[A352575(n+1), #]`
-/

namespace A352884.P3713874539928549643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A352884.P3713874539928549643

/-! ## A352884.P14444782271037802777

`A000120(A352708(n+1))`
-/

namespace A352884.P14444782271037802777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A352708 (n + 1)).toNat

end

end A352884.P14444782271037802777

/-! ## A352884.P7993438499534218757

`A000120(A352794(n+1)+1+n)`
-/

namespace A352884.P7993438499534218757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A352794 (n + 1) + 1 + (n : ℤ)).toNat

end

end A352884.P7993438499534218757

/-! ## A352884.P15613146803885372159

`A048881(2*A351965(n+1))`
-/

namespace A352884.P15613146803885372159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A351965 (n + 1)).toNat

end

end A352884.P15613146803885372159

/-! ## A352884.P3662097646782512450

`∑{e}[A353954(n+1), #]`
-/

namespace A352884.P3662097646782512450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352884.P3662097646782512450

/-! ## A352884.P4816324858103067732

`A001221(A353954(n+1))`
-/

namespace A352884.P4816324858103067732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A353954 (n + 1)).toNat

end

end A352884.P4816324858103067732

/-! ## A352884.P15186145127868684829

`A352578(or(1, n)+n+2)`
-/

namespace A352884.P15186145127868684829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352578 (Nat.lor 1 n + (n + 2))

end

end A352884.P15186145127868684829

/-! ## A352884.P2254415113696322900

`A352578(A014601(n+1))`
-/

namespace A352884.P2254415113696322900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352578 (A014601 (n + 1)).toNat

end

end A352884.P2254415113696322900

/-!
# A352886: Number of B-periodic numbers of bit pseudo-length n.

The programs for A352886, there is no canonical definition to state claims against.
-/

/-! ## A352886.P16816997116691961548

`A178472(n+4)-1`
-/

namespace A352886.P16816997116691961548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (n + 4) - 1

end

end A352886.P16816997116691961548

/-! ## A352886.P11408853450953455560

`Δ[A109511(n+3)]-1`
-/

namespace A352886.P11408853450953455560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109511 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A352886.P11408853450953455560

/-! ## A352886.P7819839584125145112

`A152061(n+4)/2-1`
-/

namespace A352886.P7819839584125145112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152061 (n + 4) : ℚ) / 2 - 1

end

end A352886.P7819839584125145112

/-! ## A352886.P10109949228956139319

`∑[Δ[A152061(n+3)]/2]`
-/

namespace A352886.P10109949228956139319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352886.P10109949228956139319

/-! ## A352886.P3430877850519928451

`2^(n+3)-(A000740(n+4)+1)`
-/

namespace A352886.P3430877850519928451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - (A000740 (n + 4) + 1)

end

end A352886.P3430877850519928451

/-! ## A352886.P1686723581603750251

`A126646(n+2)-A056278(n+4)`
-/

namespace A352886.P1686723581603750251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 2) - A056278 (n + 4)

end

end A352886.P1686723581603750251

/-! ## A352886.P4647913945255184127

`A000225(n+3)-A000740(n+4)`
-/

namespace A352886.P4647913945255184127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 3) - A000740 (n + 4)

end

end A352886.P4647913945255184127

/-! ## A352886.P16413505051470714909

`A000225(n+3)-A056278(n+4)`
-/

namespace A352886.P16413505051470714909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 3) - A056278 (n + 4)

end

end A352886.P16413505051470714909

/-! ## A352886.P2401142542613396432

`Δ[A109511(n+3)+A001478(n+1)]`
-/

namespace A352886.P2401142542613396432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109511 (n + 3) + A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352886.P2401142542613396432

/-! ## A352886.P7626792530230047636

`A126646(n+2)%Δ[A085945(n+3)]`
-/

namespace A352886.P7626792530230047636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085945 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 (n + 2)) (f1 (n + 1) - f1 n)

end

end A352886.P7626792530230047636

/-!
# A352887: Expansion of e.g.f. 1/(1 - Sum_{k>=1} phi(k)*x^k/k!), where phi is the Euler totient function A000010.

The programs for A352887, there is no canonical definition to state claims against.
-/

/-! ## A352887.P8544026718125079333

`A264749(3*A120733(n))`
-/

namespace A352887.P8544026718125079333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (3 * A120733 n).toNat

end

end A352887.P8544026718125079333

/-! ## A352887.P5518258324324538199

`A062108(A347021(n)+n)`
-/

namespace A352887.P5518258324324538199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A347021 n + (n : ℤ)).toNat

end

end A352887.P5518258324324538199

/-!
# A352888: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278219(A109812(i)) = A278219(A109812(j)), for all i, j >= 1.

The programs for A352888, there is no canonical definition to state claims against.
-/

/-! ## A352888.P14510413176023192678

`A109129(A203990(n+1)+2^n-1)`
-/

namespace A352888.P14510413176023192678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A203990 (n + 1) + ((2 ^ n : ℤ) - 1)).toNat

end

end A352888.P14510413176023192678

/-!
# A352889: Number of runs in the binary expansion of A109812(n).

The programs for A352889, there is no canonical definition to state claims against.
-/

/-! ## A352889.P2710837183681542127

`A005811(A109812(n+1))`
-/

namespace A352889.P2710837183681542127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A109812 (n + 1)).toNat

end

end A352889.P2710837183681542127

/-! ## A352889.P7443942991752370483

`A088748(A352794(n+1)+1+n)-1`
-/

namespace A352889.P7443942991752370483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A352794 (n + 1) + 1 + (n : ℤ)).toNat - 1

end

end A352889.P7443942991752370483

/-! ## A352889.P11125012371654488892

`A088748(A305371(2*(n+1))/2)-1`
-/

namespace A352889.P11125012371654488892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (SequenceMachineLib.roundAway ((A305371 (2 * (n + 1)) : ℚ) / 2)).toNat - 1

end

end A352889.P11125012371654488892

/-! ## A352889.P6569552218618650034

`A005811(A305371(2*(n+1))/2)`
-/

namespace A352889.P6569552218618650034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A305371 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A352889.P6569552218618650034

/-! ## A352889.P4242383184503183898

`∑{digits}[A014550(A109812(ϕ²-(ϕ-n))), #]`
-/

namespace A352889.P4242383184503183898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A109812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A352889.P4242383184503183898

/-! ## A352889.P12340357098289252678

`∑{e}[A243353(A109812(n+1)), A351578(#)]`
-/

namespace A352889.P12340357098289252678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A109812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A351578 (Nat.factorization (f1 n).natAbs p)

end

end A352889.P12340357098289252678

/-!
# A352890: Number of iterations of map x -> A341515(x) needed to reach x <= 2 when starting from x=n, or -1 if such number is never reached. Here A341515 is the Collatz or 3x+1 map (A006370) conjugated by unary-binary-encoding (A156552).

The programs for A352890, there is no canonical definition to state claims against.
-/

/-! ## A352890.P8400469882102867854

`A006577(floor(A156552(n+1)+acot(n)))`
-/

namespace A352890.P8400469882102867854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 ⌊(A156552 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A352890.P8400469882102867854

/-! ## A352890.P3890925878963730040

`A006577(A156552(n+1)+floor(1/(n+1)))`
-/

namespace A352890.P3890925878963730040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A156552 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A352890.P3890925878963730040

/-! ## A352890.P12663737556892598224

`A006577(or(char[2^n-1], A156552(n+1)))`
-/

namespace A352890.P12663737556892598224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A156552 (n + 1))).toNat

end

end A352890.P12663737556892598224

/-!
# A352892: Next even term in the trajectory of map x -> A341515(x), when starting from x=n; a(1) = 1. Here A341515 is the Collatz or 3x+1 map (A006370) conjugated by unary-binary-encoding (A156552).

The programs for A352892, the canonical program `A352892.P8028281838156911806` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352892 has offset 1).

The definition of A352892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341515, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352892.P8028281838156911806

`A348717(A341515(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A352892

/-- `A348717(A341515(n+1))` -/
def P8028281838156911806.Spec : Prop :=
  ∀ n, P8028281838156911806.a n = A352892 (n + 1)

theorem P8028281838156911806.correct : P8028281838156911806.Spec := by
  intro n
  simp only [A352892, Nat.add_sub_cancel]

end A352892

/-! ## A352892.P16363613309308191659

`A348717(A341516(n+1))`
-/

namespace A352892.P16363613309308191659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A341516 (n + 1)).toNat

end

end A352892.P16363613309308191659

namespace A352892

/-- `A348717(A341516(n+1))` -/
def P16363613309308191659.Spec : Prop :=
  ∀ n, P16363613309308191659.a n = A352892 (n + 1)

end A352892

/-! ## A352892.P4439229135748921424

`∑{d}[A341516(n+1), A354185(#)]`
-/

namespace A352892.P4439229135748921424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A354185 d

end

end A352892.P4439229135748921424

namespace A352892

/-- `∑{d}[A341516(n+1), A354185(#)]` -/
def P4439229135748921424.Spec : Prop :=
  ∀ n, P4439229135748921424.a n = A352892 (n + 1)

end A352892

/-! ## A352892.P9845907168602692161

`∑{d}[A341515(n+1), A354185(#)]`
-/

namespace A352892.P9845907168602692161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A354185 d

end

end A352892.P9845907168602692161

namespace A352892

/-- `∑{d}[A341515(n+1), A354185(#)]` -/
def P9845907168602692161.Spec : Prop :=
  ∀ n, P9845907168602692161.a n = A352892 (n + 1)

end A352892

/-! ## A352892.P4454139922392328057

`A348717(∑{d}[n+1, A347115(#)])`
-/

namespace A352892.P4454139922392328057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (∑ d ∈ Nat.divisors (f1 n), A347115 d).toNat

end

end A352892.P4454139922392328057

namespace A352892

/-- `A348717(∑{d}[n+1, A347115(#)])` -/
def P4454139922392328057.Spec : Prop :=
  ∀ n, P4454139922392328057.a n = A352892 (n + 1)

end A352892

/-!
# A352893: Number of iterations of map x -> A352892(x) needed to reach x <= 2 when starting from x=n, or -1 if such number is never reached. Here A352892 is the next odd term in the Collatz or 3x+1 map (A139391) conjugated by unary-binary-encoding (A156552).

The programs for A352893, there is no canonical definition to state claims against.
-/

/-! ## A352893.P8964403777671494127

`A286380(floor(A156552(n+1)+acot(n)))`
-/

namespace A352893.P8964403777671494127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 ⌊(A156552 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A352893.P8964403777671494127

/-! ## A352893.P10676372259254172435

`A286380(or(char[n^6], A156552(n+1)))`
-/

namespace A352893.P10676372259254172435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A156552 (n + 1))).toNat

end

end A352893.P10676372259254172435

/-! ## A352893.P7683654158833631341

`A286380(A156552(n+1)^ceil(sin(n)²))`
-/

namespace A352893.P7683654158833631341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (SequenceMachineLib.roundAway ((A156552 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A352893.P7683654158833631341

/-! ## A352893.P3952651530436212992

`A286380(A156552(n+1)+A000007(n))`
-/

namespace A352893.P3952651530436212992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A156552 (n + 1) + A000007 n).toNat

end

end A352893.P3952651530436212992

/-! ## A352893.P1203704022932612268

`A286380(A156552(n+1)+A151878(n))`
-/

namespace A352893.P1203704022932612268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A156552 (n + 1) + A151878 n).toNat

end

end A352893.P1203704022932612268

/-!
# A352894: Number of iterations of map x -> A352892(x) needed to reach x < n when starting from x=n, or 0 if such number is never reached. Here A352892 is the next odd term in the Collatz or 3x+1 map (A139391) conjugated by unary-binary-encoding (A156552).

The programs for A352894, there is no canonical definition to state claims against.
-/

/-! ## A352894.P1479210237949650926

`A001222(gcd(A108520(n), A279986(n)))`
-/

namespace A352894.P1479210237949650926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A108520 n) (A279986 n))

end

end A352894.P1479210237949650926

/-! ## A352894.P17256562734249168823

`A000188(A287525(n))%A028310(n)`
-/

namespace A352894.P17256562734249168823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A287525 n).toNat) (A028310 n)

end

end A352894.P17256562734249168823

/-! ## A352894.P2337155198539014403

`A049046(A008713(n))%(n+1)`
-/

namespace A352894.P2337155198539014403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049046 (A008713 n).toNat) (n + 1 : ℤ)

end

end A352894.P2337155198539014403

/-! ## A352894.P13914459956215344033

`A307598(A054753(n+1))^(n%2)^n`
-/

namespace A352894.P13914459956215344033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A054753 (n + 1)).toNat ^ (n % 2) ^ n

end

end A352894.P13914459956215344033

/-! ## A352894.P16568083382818305193

`A181819(A318773(n))%A181819(n+1)`
-/

namespace A352894.P16568083382818305193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A318773 n).toNat) (A181819 (n + 1))

end

end A352894.P16568083382818305193

/-!
# A352895: The maximum binary weight of those elements of the Collatz orbit of n that follow after the term n itself, when iterated down to 1, or -1 if 1 is never reached.

The programs for A352895, there is no canonical definition to state claims against.
-/

/-! ## A352895.P15450493586754927505

`A333860(A014682(n+1))`
-/

namespace A352895.P15450493586754927505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333860 (A014682 (n + 1)).toNat

end

end A352895.P15450493586754927505

/-! ## A352895.P17270380969085895940

`A333860(A139391(n+1))`
-/

namespace A352895.P17270380969085895940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333860 (A139391 (n + 1)).toNat

end

end A352895.P17270380969085895940

/-! ## A352895.P15121856346765400855

`A333860(A006370(n+1))`
-/

namespace A352895.P15121856346765400855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333860 (A006370 (n + 1)).toNat

end

end A352895.P15121856346765400855

/-! ## A352895.P9380552969421357059

`A333860(A187012(n+2))`
-/

namespace A352895.P9380552969421357059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333860 (A187012 (n + 2)).toNat

end

end A352895.P9380552969421357059

/-! ## A352895.P1949401216702203687

`A333860(A306546(n+1))`
-/

namespace A352895.P1949401216702203687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333860 (A306546 (n + 1)).toNat

end

end A352895.P1949401216702203687

/-! ## A352895.P17826037135584963710

`A352896(A005940(n+2))`
-/

namespace A352895.P17826037135584963710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (A005940 (n + 2)).toNat

end

end A352895.P17826037135584963710

/-!
# A352896: Maximum value of bigomega (A001222) computed for the terms x after the initial n, when map x -> A352892(x) is iterated starting from x=n down to the first x <= 2, or -1 if such number is never reached. Here A352892 is the next odd term in the Collatz or 3x+1 map (A139391) conjugated by unary-binary-encoding (A156552).

The programs for A352896, there is no canonical definition to state claims against.
-/

/-! ## A352896.P3660039996143914456

`A352897(A352892(n+1))`
-/

namespace A352896.P3660039996143914456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352897 (A352892 (n + 1)).toNat

end

end A352896.P3660039996143914456

/-! ## A352896.P15374849101606277704

`A352897(A341515(n+1))`
-/

namespace A352896.P15374849101606277704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352897 (A341515 (n + 1)).toNat

end

end A352896.P15374849101606277704

/-! ## A352896.P15478131148416207553

`A352897(A341516(n+1))`
-/

namespace A352896.P15478131148416207553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352897 (A341516 (n + 1)).toNat

end

end A352896.P15478131148416207553

/-! ## A352896.P1692520975314271291

`A352897(∑{d}[n+1, A347115(#)])`
-/

namespace A352896.P1692520975314271291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352897 (∑ d ∈ Nat.divisors (f1 n), A347115 d).toNat

end

end A352896.P1692520975314271291

/-! ## A352896.P3048218665666721901

`gcd(A004233(A352892(n+1)), A227433(n+1))`
-/

namespace A352896.P3048218665666721901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004233 (A352892 (n + 1)).toNat) (A227433 (n + 1))

end

end A352896.P3048218665666721901

/-!
# A352897: Maximum value of bigomega (A001222) computed for all the terms x (including the starting term x=n), when map x -> A352892(x) is iterated down to the first x <= 2, or -1 if such number is never reached. Here A352892 is the next odd term in the Collatz or 3x+1 map (A139391) conjugated by unary-binary-encoding (A156552).

The programs for A352897, there is no canonical definition to state claims against.
-/

/-! ## A352897.P11442932394877047163

`A352896(A003961(n+1))`
-/

namespace A352897.P11442932394877047163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (A003961 (n + 1)).toNat

end

end A352897.P11442932394877047163

/-! ## A352897.P16175616833280303870

`A352896(A253885(n)+1)`
-/

namespace A352897.P16175616833280303870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (A253885 n + 1).toNat

end

end A352897.P16175616833280303870

/-! ## A352897.P2262531391616932446

`A352896(or(1, A253885(n)))`
-/

namespace A352897.P2262531391616932446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (Int.lor 1 (A253885 n)).toNat

end

end A352897.P2262531391616932446

/-! ## A352897.P6806863623685176649

`A352896(A249734(n+1)/3)`
-/

namespace A352897.P6806863623685176649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (SequenceMachineLib.roundAway ((A249734 (n + 1) : ℚ) / 3)).toNat

end

end A352897.P6806863623685176649

/-! ## A352897.P6897925648067480652

`A352896(∑{d}[n+1, A003972(#)])`
-/

namespace A352897.P6897925648067480652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (∑ d ∈ Nat.divisors (f1 n), A003972 d).toNat

end

end A352897.P6897925648067480652

/-! ## A352897.P14156826678663517965

`A352896(A357852(n+1))`
-/

namespace A352897.P14156826678663517965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (A357852 (n + 1)).toNat

end

end A352897.P14156826678663517965

/-! ## A352897.P11105351002039459341

`A352896(A045966(n+1))%(n+1)`
-/

namespace A352897.P11105351002039459341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352896 (A045966 (n + 1)).toNat) (n + 1 : ℤ)

end

end A352897.P11105351002039459341

/-! ## A352897.P103832202602090237

`A352896(A045966(n+1))-A000007(n)`
-/

namespace A352897.P103832202602090237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (A045966 (n + 1)).toNat - A000007 n

end

end A352897.P103832202602090237

/-! ## A352897.P7604060647541940588

`A057427(n)*A352896(A045966(n+1))`
-/

namespace A352897.P7604060647541940588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A352896 (A045966 (n + 1)).toNat

end

end A352897.P7604060647541940588

/-! ## A352897.P4557979623835328320

`A178334(n)*A352896(A045966(n+1))`
-/

namespace A352897.P4557979623835328320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A352896 (A045966 (n + 1)).toNat

end

end A352897.P4557979623835328320

/-!
# A352898: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A046523(n), A352892(n)], except f(n) = -n when <= 2.

The programs for A352898, there is no canonical definition to state claims against.
-/

/-! ## A352898.P2961979218999779730

`A318500(n+1)%A093514(n+1)`
-/

namespace A352898.P2961979218999779730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318500 (n + 1)) (A093514 (n + 1))

end

end A352898.P2961979218999779730

/-! ## A352898.P10958838685251807702

`A318500(n+1)%A003335(A151728(n))`
-/

namespace A352898.P10958838685251807702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318500 (n + 1)) (A003335 (A151728 n).toNat)

end

end A352898.P10958838685251807702

/-! ## A352898.P13921132389169238705

`A355432(A379682(n+1))+A318500(n+1)`
-/

namespace A352898.P13921132389169238705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A379682 (n + 1)).toNat + A318500 (n + 1)

end

end A352898.P13921132389169238705

/-! ## A352898.P8377798946669984053

`A318500(n+1)+A000007(A342947(n+2))`
-/

namespace A352898.P8377798946669984053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1) + A000007 (A342947 (n + 2)).toNat

end

end A352898.P8377798946669984053

/-! ## A352898.P11809898610921911412

`A318500(n+1)+A318455(A318443(2*(n+2)))`
-/

namespace A352898.P11809898610921911412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1) + A318455 (A318443 (2 * (n + 2))).toNat

end

end A352898.P11809898610921911412

/-! ## A352898.P3761883444500801834

`A318500(n+1)+A008683(A039936(2*n+5))`
-/

namespace A352898.P3761883444500801834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1) + A008683 (A039936 (2 * n + 5)).toNat

end

end A352898.P3761883444500801834

/-! ## A352898.P11486094746318246042

`A054977(A159693(n+1))*A318500(n+1)`
-/

namespace A352898.P11486094746318246042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A159693 (n + 1)).toNat * A318500 (n + 1)

end

end A352898.P11486094746318246042

/-! ## A352898.P10289440409110102818

`A057427(A327099(n+1))*A318500(n+1)`
-/

namespace A352898.P10289440409110102818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A327099 (n + 1)).toNat * A318500 (n + 1)

end

end A352898.P10289440409110102818

/-! ## A352898.P12769027068604737477

`A318500(n+1)+A063524(A177713(n+5))`
-/

namespace A352898.P12769027068604737477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1) + A063524 (A177713 (n + 5)).toNat

end

end A352898.P12769027068604737477

/-! ## A352898.P12189344391332855487

`lcm(A128016(A118679(n+1)), A318500(n+1))`
-/

namespace A352898.P12189344391332855487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128016 (A118679 (n + 1)).toNat) (A318500 (n + 1))

end

end A352898.P12189344391332855487

